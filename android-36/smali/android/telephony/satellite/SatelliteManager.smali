.class public final Landroid/telephony/satellite/SatelliteManager;
.super Ljava/lang/Object;
.source "SatelliteManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/satellite/SatelliteManager$SatelliteException;,
        Landroid/telephony/satellite/SatelliteManager$SatelliteDisallowedReason;,
        Landroid/telephony/satellite/SatelliteManager$SatelliteCommunicationRestrictionReason;,
        Landroid/telephony/satellite/SatelliteManager$DatagramType;,
        Landroid/telephony/satellite/SatelliteManager$SatelliteModemState;,
        Landroid/telephony/satellite/SatelliteManager$SatelliteDatagramTransferState;,
        Landroid/telephony/satellite/SatelliteManager$SatelliteDataSupportMode;,
        Landroid/telephony/satellite/SatelliteManager$DisplayMode;,
        Landroid/telephony/satellite/SatelliteManager$DeviceHoldPosition;,
        Landroid/telephony/satellite/SatelliteManager$NTRadioTechnology;,
        Landroid/telephony/satellite/SatelliteManager$SatelliteResult;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_SATELLITE_START_NON_EMERGENCY_SESSION:Ljava/lang/String; = "android.telephony.satellite.action.SATELLITE_START_NON_EMERGENCY_SESSION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ACTION_SATELLITE_SUBSCRIBER_ID_LIST_CHANGED:Ljava/lang/String; = "android.telephony.satellite.action.SATELLITE_SUBSCRIBER_ID_LIST_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist DATAGRAM_TYPE_CHECK_PENDING_INCOMING_SMS:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist DATAGRAM_TYPE_KEEP_ALIVE:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist DATAGRAM_TYPE_LAST_SOS_MESSAGE_NO_HELP_NEEDED:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist DATAGRAM_TYPE_LAST_SOS_MESSAGE_STILL_NEED_HELP:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DATAGRAM_TYPE_LOCATION_SHARING:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist DATAGRAM_TYPE_SMS:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DATAGRAM_TYPE_SOS_MESSAGE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DATAGRAM_TYPE_UNKNOWN:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DEVICE_HOLD_POSITION_LANDSCAPE_LEFT:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DEVICE_HOLD_POSITION_LANDSCAPE_RIGHT:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DEVICE_HOLD_POSITION_PORTRAIT:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DEVICE_HOLD_POSITION_UNKNOWN:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DISPLAY_MODE_CLOSED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DISPLAY_MODE_FIXED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DISPLAY_MODE_OPENED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DISPLAY_MODE_UNKNOWN:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EMERGENCY_CALL_TO_SATELLITE_HANDOVER_TYPE_SOS:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EMERGENCY_CALL_TO_SATELLITE_HANDOVER_TYPE_T911:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist KEY_DEMO_MODE_ENABLED:Ljava/lang/String; = "demo_mode_enabled"

.field public static final blacklist KEY_DEPROVISION_SATELLITE_TOKENS:Ljava/lang/String; = "deprovision_satellite"

.field public static final blacklist KEY_EMERGENCY_MODE_ENABLED:Ljava/lang/String; = "emergency_mode_enabled"

.field public static final blacklist KEY_NTN_SIGNAL_STRENGTH:Ljava/lang/String; = "ntn_signal_strength"

.field public static final blacklist KEY_PROVISION_SATELLITE_TOKENS:Ljava/lang/String; = "provision_satellite"

.field public static final blacklist KEY_REQUEST_PROVISION_SUBSCRIBER_ID_TOKEN:Ljava/lang/String; = "request_provision_subscriber_id"

.field public static final blacklist KEY_SATELLITE_ACCESS_CONFIGURATION:Ljava/lang/String; = "satellite_access_configuration"

.field public static final blacklist KEY_SATELLITE_CAPABILITIES:Ljava/lang/String; = "satellite_capabilities"

.field public static final blacklist KEY_SATELLITE_COMMUNICATION_ALLOWED:Ljava/lang/String; = "satellite_communication_allowed"

.field public static final blacklist KEY_SATELLITE_DISPLAY_NAME:Ljava/lang/String; = "satellite_display_name"

.field public static final blacklist KEY_SATELLITE_ENABLED:Ljava/lang/String; = "satellite_enabled"

.field public static final blacklist KEY_SATELLITE_NEXT_VISIBILITY:Ljava/lang/String; = "satellite_next_visibility"

.field public static final blacklist KEY_SATELLITE_PROVISIONED:Ljava/lang/String; = "satellite_provisioned"

.field public static final blacklist KEY_SATELLITE_SUPPORTED:Ljava/lang/String; = "satellite_supported"

.field public static final blacklist KEY_SELECTED_NB_IOT_SATELLITE_SUBSCRIPTION_ID:Ljava/lang/String; = "selected_nb_iot_satellite_subscription_id"

.field public static final blacklist KEY_SESSION_STATS:Ljava/lang/String; = "session_stats"

.field public static final blacklist KEY_SESSION_STATS_V2:Ljava/lang/String; = "session_stats_v2"

.field public static final blacklist METADATA_SATELLITE_MANUAL_CONNECT_P2P_SUPPORT:Ljava/lang/String; = "android.telephony.METADATA_SATELLITE_MANUAL_CONNECT_P2P_SUPPORT"

.field public static final whitelist NT_RADIO_TECHNOLOGY_EMTC_NTN:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NT_RADIO_TECHNOLOGY_NB_IOT_NTN:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NT_RADIO_TECHNOLOGY_NR_NTN:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NT_RADIO_TECHNOLOGY_PROPRIETARY:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NT_RADIO_TECHNOLOGY_UNKNOWN:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist PROPERTY_SATELLITE_DATA_OPTIMIZED:Ljava/lang/String; = "android.telephony.PROPERTY_SATELLITE_DATA_OPTIMIZED"

.field public static final blacklist PROPERTY_SATELLITE_MANUAL_CONNECT_P2P_SUPPORT:Ljava/lang/String; = "android.telephony.satellite.PROPERTY_SATELLITE_MANUAL_CONNECT_P2P_SUPPORT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_COMMUNICATION_RESTRICTION_REASON_ENTITLEMENT:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_COMMUNICATION_RESTRICTION_REASON_GEOLOCATION:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SATELLITE_COMMUNICATION_RESTRICTION_REASON_USER:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_DATAGRAM_TRANSFER_STATE_IDLE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_DATAGRAM_TRANSFER_STATE_RECEIVE_FAILED:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_DATAGRAM_TRANSFER_STATE_RECEIVE_NONE:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_DATAGRAM_TRANSFER_STATE_RECEIVE_SUCCESS:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_DATAGRAM_TRANSFER_STATE_RECEIVING:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_DATAGRAM_TRANSFER_STATE_SENDING:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_DATAGRAM_TRANSFER_STATE_SEND_FAILED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_DATAGRAM_TRANSFER_STATE_SEND_SUCCESS:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_DATAGRAM_TRANSFER_STATE_UNKNOWN:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_DATAGRAM_TRANSFER_STATE_WAITING_TO_CONNECT:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SATELLITE_DATA_SUPPORT_CONSTRAINED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SATELLITE_DATA_SUPPORT_RESTRICTED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SATELLITE_DATA_SUPPORT_UNCONSTRAINED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SATELLITE_DATA_SUPPORT_UNKNOWN:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SATELLITE_DISALLOWED_REASON_LOCATION_DISABLED:I = 0x4

.field public static final blacklist SATELLITE_DISALLOWED_REASON_NOT_IN_ALLOWED_REGION:I = 0x2

.field public static final blacklist SATELLITE_DISALLOWED_REASON_NOT_PROVISIONED:I = 0x1

.field public static final blacklist SATELLITE_DISALLOWED_REASON_NOT_SUPPORTED:I = 0x0

.field public static final blacklist SATELLITE_DISALLOWED_REASON_UNSUPPORTED_DEFAULT_MSG_APP:I = 0x3

.field public static final whitelist SATELLITE_MODEM_STATE_CONNECTED:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_MODEM_STATE_DATAGRAM_RETRYING:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_MODEM_STATE_DATAGRAM_TRANSFERRING:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SATELLITE_MODEM_STATE_DISABLING_SATELLITE:I = 0x9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SATELLITE_MODEM_STATE_ENABLING_SATELLITE:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_MODEM_STATE_IDLE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_MODEM_STATE_LISTENING:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_MODEM_STATE_NOT_CONNECTED:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_MODEM_STATE_OFF:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_MODEM_STATE_UNAVAILABLE:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_MODEM_STATE_UNKNOWN:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_ACCESS_BARRED:I = 0x10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SATELLITE_RESULT_DISABLE_IN_PROGRESS:I = 0x1c
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SATELLITE_RESULT_EMERGENCY_CALL_IN_PROGRESS:I = 0x1b
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SATELLITE_RESULT_ENABLE_IN_PROGRESS:I = 0x1d
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_ERROR:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_ILLEGAL_STATE:I = 0x17
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_INVALID_ARGUMENTS:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_INVALID_MODEM_STATE:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_INVALID_TELEPHONY_STATE:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SATELLITE_RESULT_LOCATION_DISABLED:I = 0x19
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SATELLITE_RESULT_LOCATION_NOT_AVAILABLE:I = 0x1a
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_MODEM_BUSY:I = 0x16
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_MODEM_ERROR:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_MODEM_TIMEOUT:I = 0x18
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_NETWORK_ERROR:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_NETWORK_TIMEOUT:I = 0x11
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_NOT_AUTHORIZED:I = 0x13
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_NOT_REACHABLE:I = 0x12
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_NOT_SUPPORTED:I = 0x14
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_NO_RESOURCES:I = 0xc
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SATELLITE_RESULT_NO_VALID_SATELLITE_SUBSCRIPTION:I = 0x1e
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_RADIO_NOT_AVAILABLE:I = 0xa
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_REQUEST_ABORTED:I = 0xf
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_REQUEST_FAILED:I = 0x9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_REQUEST_IN_PROGRESS:I = 0x15
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_REQUEST_NOT_SUPPORTED:I = 0xb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_SERVER_ERROR:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_SERVICE_ERROR:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_SERVICE_NOT_PROVISIONED:I = 0xd
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_SERVICE_PROVISION_IN_PROGRESS:I = 0xe
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_RESULT_SUCCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "SatelliteManager"

.field private static final blacklist sNtnSignalStrengthCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/telephony/satellite/NtnSignalStrengthCallback;",
            "Landroid/telephony/satellite/INtnSignalStrengthCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sSatelliteCapabilitiesCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/telephony/satellite/SatelliteCapabilitiesCallback;",
            "Landroid/telephony/satellite/ISatelliteCapabilitiesCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sSatelliteCommunicationAccessStateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;",
            "Landroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sSatelliteDatagramCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/telephony/satellite/SatelliteDatagramCallback;",
            "Landroid/telephony/satellite/ISatelliteDatagramCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sSatelliteDisallowedReasonsCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/telephony/satellite/SatelliteDisallowedReasonsCallback;",
            "Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sSatelliteModemStateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/telephony/satellite/SatelliteModemStateCallback;",
            "Landroid/telephony/satellite/ISatelliteModemStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sSatelliteProvisionStateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/telephony/satellite/SatelliteProvisionStateCallback;",
            "Landroid/telephony/satellite/ISatelliteProvisionStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sSatelliteSupportedStateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/internal/telephony/IBooleanConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sSatelliteTransmissionUpdateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;",
            "Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sSelectedNbIotSatelliteSubscriptionCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/telephony/satellite/SelectedNbIotSatelliteSubscriptionCallback;",
            "Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mSubId:I

.field private blacklist mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smlogd(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smloge(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 85
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteDatagramCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 87
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteProvisionStateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 91
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteModemStateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 93
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteTransmissionUpdateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 96
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SatelliteManager;->sNtnSignalStrengthCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 99
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteCapabilitiesCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 101
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteSupportedStateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 105
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteCommunicationAccessStateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 109
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteDisallowedReasonsCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 113
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SatelliteManager;->sSelectedNbIotSatelliteSubscriptionCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 132
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Landroid/telephony/satellite/SatelliteManager;-><init>(Landroid/content/Context;I)V

    .line 133
    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;I)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Landroid/telephony/satellite/SatelliteManager;->mContext:Landroid/content/Context;

    .line 143
    iput p2, p0, Landroid/telephony/satellite/SatelliteManager;->mSubId:I

    .line 144
    return-void
.end method

.method private static blacklist getITelephony()Lcom/android/internal/telephony/ITelephony;
    .registers 1

    .line 3877
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 3878
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getTelephonyServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 3879
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 3876
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3880
    .local v0, "binder":Lcom/android/internal/telephony/ITelephony;
    return-object v0
.end method

.method static synthetic blacklist lambda$addAttachRestrictionForCarrier$69(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "resultListener"    # Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2806
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$addAttachRestrictionForCarrier$70(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "resultListener"    # Ljava/util/function/Consumer;

    .line 2805
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda16;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$addAttachRestrictionForCarrier$71(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "resultListener"    # Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2811
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$addAttachRestrictionForCarrier$72(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "resultListener"    # Ljava/util/function/Consumer;

    .line 2810
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda30;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda30;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$deprovisionSatellite$100(Landroid/os/OutcomeReceiver;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 3773
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda5;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$deprovisionSatellite$97(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3768
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$deprovisionSatellite$98(Landroid/os/OutcomeReceiver;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 3768
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda58;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda58;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$deprovisionSatellite$99(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3773
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$deprovisionService$36(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "resultListener"    # Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1859
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$deprovisionService$37(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "resultListener"    # Ljava/util/function/Consumer;

    .line 1858
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda31;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$deprovisionService$38(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "resultListener"    # Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1864
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$deprovisionService$39(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "resultListener"    # Ljava/util/function/Consumer;

    .line 1863
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda49;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda49;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$pollPendingDatagrams$44(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "resultListener"    # Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2255
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$pollPendingDatagrams$45(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "resultListener"    # Ljava/util/function/Consumer;

    .line 2254
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda18;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$pollPendingDatagrams$46(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "resultListener"    # Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2260
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$pollPendingDatagrams$47(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "resultListener"    # Ljava/util/function/Consumer;

    .line 2259
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda90;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda90;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$provisionSatellite$93(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3707
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$provisionSatellite$94(Landroid/os/OutcomeReceiver;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 3707
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda32;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda32;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$provisionSatellite$95(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3712
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$provisionSatellite$96(Landroid/os/OutcomeReceiver;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 3712
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda54;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda54;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$provisionService$32(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "resultListener"    # Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1806
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$provisionService$33(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "resultListener"    # Ljava/util/function/Consumer;

    .line 1805
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda86;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda86;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$provisionService$34(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "resultListener"    # Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1811
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$provisionService$35(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "resultListener"    # Ljava/util/function/Consumer;

    .line 1810
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda4;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$removeAttachRestrictionForCarrier$73(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "resultListener"    # Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2853
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$removeAttachRestrictionForCarrier$74(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "resultListener"    # Ljava/util/function/Consumer;

    .line 2852
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda64;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda64;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$removeAttachRestrictionForCarrier$75(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "resultListener"    # Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2858
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$removeAttachRestrictionForCarrier$76(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "resultListener"    # Ljava/util/function/Consumer;

    .line 2857
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda57;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda57;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestCapabilities$18(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1246
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestCapabilities$19(Landroid/os/OutcomeReceiver;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 1246
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda65;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda65;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestCapabilities$20(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1251
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestCapabilities$21(Landroid/os/OutcomeReceiver;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 1251
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda20;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestEnabled$0(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "resultListener"    # Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 952
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestEnabled$1(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "resultListener"    # Ljava/util/function/Consumer;

    .line 951
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda17;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestEnabled$2(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "resultListener"    # Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 957
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestEnabled$3(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "resultListener"    # Ljava/util/function/Consumer;

    .line 956
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda70;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda70;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsAttachEnabledForCarrier$68(Landroid/os/OutcomeReceiver;Ljava/util/Set;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "restrictionReason"    # Ljava/util/Set;

    .line 2764
    nop

    .line 2765
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2764
    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsCommunicationAllowedForCurrentLocation$52(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2376
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsCommunicationAllowedForCurrentLocation$53(Landroid/os/OutcomeReceiver;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 2376
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda89;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda89;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsCommunicationAllowedForCurrentLocation$54(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2381
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsCommunicationAllowedForCurrentLocation$55(Landroid/os/OutcomeReceiver;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 2381
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda92;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda92;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsDemoModeEnabled$10(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1074
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsDemoModeEnabled$11(Landroid/os/OutcomeReceiver;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 1074
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda3;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsDemoModeEnabled$8(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1069
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsDemoModeEnabled$9(Landroid/os/OutcomeReceiver;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 1069
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda45;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda45;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsEmergencyModeEnabled$12(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1127
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsEmergencyModeEnabled$13(Landroid/os/OutcomeReceiver;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 1127
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda100;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda100;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsEnabled$4(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1010
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsEnabled$5(Landroid/os/OutcomeReceiver;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 1010
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda77;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda77;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsEnabled$6(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1015
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsEnabled$7(Landroid/os/OutcomeReceiver;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 1015
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda76;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda76;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsProvisioned$40(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2009
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsProvisioned$41(Landroid/os/OutcomeReceiver;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 2009
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda78;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda78;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsProvisioned$42(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2014
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsProvisioned$43(Landroid/os/OutcomeReceiver;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 2014
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsSupported$14(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1187
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsSupported$15(Landroid/os/OutcomeReceiver;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 1187
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda93;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda93;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsSupported$16(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1192
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestIsSupported$17(Landroid/os/OutcomeReceiver;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 1192
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda69;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda69;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestNtnSignalStrength$77(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3072
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestNtnSignalStrength$78(Landroid/os/OutcomeReceiver;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 3072
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda21;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestNtnSignalStrength$79(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3077
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestNtnSignalStrength$80(Landroid/os/OutcomeReceiver;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 3077
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda23;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSatelliteAccessConfigurationForCurrentLocation$56(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2438
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSatelliteAccessConfigurationForCurrentLocation$57(Landroid/os/OutcomeReceiver;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 2438
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda39;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda39;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSatelliteAccessConfigurationForCurrentLocation$58(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2444
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSatelliteAccessConfigurationForCurrentLocation$59(Landroid/os/OutcomeReceiver;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 2444
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda33;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda33;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSatelliteDisplayName$89(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3646
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSatelliteDisplayName$90(Landroid/os/OutcomeReceiver;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 3646
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda36;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda36;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSatelliteDisplayName$91(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3651
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSatelliteDisplayName$92(Landroid/os/OutcomeReceiver;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 3651
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda75;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda75;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSatelliteSubscriberProvisionStatus$85(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3587
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSatelliteSubscriberProvisionStatus$86(Landroid/os/OutcomeReceiver;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 3587
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda74;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda74;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSatelliteSubscriberProvisionStatus$87(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3592
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSatelliteSubscriberProvisionStatus$88(Landroid/os/OutcomeReceiver;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 3592
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda26;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSelectedNbIotSatelliteSubscriptionId$64(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2563
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSelectedNbIotSatelliteSubscriptionId$65(Landroid/os/OutcomeReceiver;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 2563
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda94;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda94;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSelectedNbIotSatelliteSubscriptionId$66(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2568
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSelectedNbIotSatelliteSubscriptionId$67(Landroid/os/OutcomeReceiver;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 2568
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda48;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda48;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSessionStats$81(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3522
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSessionStats$82(Landroid/os/OutcomeReceiver;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 3522
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda63;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda63;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSessionStats$83(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3527
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestSessionStats$84(Landroid/os/OutcomeReceiver;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 3527
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda47;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda47;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestTimeForNextSatelliteVisibility$60(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2499
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestTimeForNextSatelliteVisibility$61(Landroid/os/OutcomeReceiver;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 2499
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda19;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestTimeForNextSatelliteVisibility$62(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2504
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestTimeForNextSatelliteVisibility$63(Landroid/os/OutcomeReceiver;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 2504
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda29;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$sendDatagram$48(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "resultListener"    # Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2316
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$sendDatagram$49(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "resultListener"    # Ljava/util/function/Consumer;

    .line 2315
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda46;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda46;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$sendDatagram$50(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "resultListener"    # Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2321
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$sendDatagram$51(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "resultListener"    # Ljava/util/function/Consumer;

    .line 2320
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda99;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda99;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$startTransmissionUpdates$22(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "resultListener"    # Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1695
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$startTransmissionUpdates$23(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "resultListener"    # Ljava/util/function/Consumer;

    .line 1694
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda83;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda83;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$startTransmissionUpdates$24(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "resultListener"    # Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1700
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$startTransmissionUpdates$25(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "resultListener"    # Ljava/util/function/Consumer;

    .line 1699
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda91;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda91;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$stopTransmissionUpdates$26(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "resultListener"    # Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1748
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$stopTransmissionUpdates$27(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "resultListener"    # Ljava/util/function/Consumer;

    .line 1747
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda27;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$stopTransmissionUpdates$28(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "resultListener"    # Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1753
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$stopTransmissionUpdates$29(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "resultListener"    # Ljava/util/function/Consumer;

    .line 1752
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda68;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda68;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$stopTransmissionUpdates$30(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "resultListener"    # Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1758
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$stopTransmissionUpdates$31(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "resultListener"    # Ljava/util/function/Consumer;

    .line 1757
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda22;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .registers 2
    .param p0, "log"    # Ljava/lang/String;

    .line 3884
    const-string v0, "SatelliteManager"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3885
    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .registers 2
    .param p0, "log"    # Ljava/lang/String;

    .line 3888
    const-string v0, "SatelliteManager"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3889
    return-void
.end method


# virtual methods
.method public whitelist addAttachRestrictionForCarrier(IILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 8
    .param p1, "subId"    # I
    .param p2, "reason"    # I
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2788
    .local p4, "resultListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2793
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2794
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_15

    .line 2795
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$23;

    invoke-direct {v1, p0, p3, p4}, Landroid/telephony/satellite/SatelliteManager$23;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 2802
    .local v1, "errorCallback":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/ITelephony;->addAttachRestrictionForCarrier(IILcom/android/internal/telephony/IIntegerConsumer;)V

    .line 2803
    .end local v1    # "errorCallback":Lcom/android/internal/telephony/IIntegerConsumer;
    goto :goto_22

    .line 2804
    :cond_15
    const-string v1, "addAttachRestrictionForCarrier() invalid telephony"

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2805
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda50;

    invoke-direct {v1, p4}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda50;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p3, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_22} :catch_23

    .line 2812
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_22
    goto :goto_42

    .line 2808
    :catch_23
    move-exception v0

    .line 2809
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAttachRestrictionForCarrier() RemoteException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2810
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda51;

    invoke-direct {v1, p4}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda51;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p3, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2813
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_42
    return-void

    .line 2789
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid subscription ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist deprovisionSatellite(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 7
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/satellite/SatelliteSubscriberInfo;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    .line 3738
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/satellite/SatelliteSubscriberInfo;>;"
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Landroid/telephony/satellite/SatelliteManager$SatelliteException;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3739
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3742
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3743
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_16

    .line 3744
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$35;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p2, p3}, Landroid/telephony/satellite/SatelliteManager$35;-><init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 3765
    .local v1, "receiver":Landroid/os/ResultReceiver;
    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/ITelephony;->deprovisionSatellite(Ljava/util/List;Landroid/os/ResultReceiver;)V

    .line 3766
    .end local v1    # "receiver":Landroid/os/ResultReceiver;
    goto :goto_23

    .line 3767
    :cond_16
    const-string v1, "deprovisionSatellite() invalid telephony"

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3768
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda87;

    invoke-direct {v1, p3}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda87;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_23} :catch_24

    .line 3775
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_23
    goto :goto_43

    .line 3771
    :catch_24
    move-exception v0

    .line 3772
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deprovisionSatellite() RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3773
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda88;

    invoke-direct {v1, p3}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda88;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3776
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_43
    return-void
.end method

.method public whitelist deprovisionService(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1841
    .local p3, "resultListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1842
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1843
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1846
    :try_start_9
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1847
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_18

    .line 1848
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$11;

    invoke-direct {v1, p0, p2, p3}, Landroid/telephony/satellite/SatelliteManager$11;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 1855
    .local v1, "errorCallback":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/ITelephony;->deprovisionSatelliteService(Ljava/lang/String;Lcom/android/internal/telephony/IIntegerConsumer;)V

    .line 1856
    .end local v1    # "errorCallback":Lcom/android/internal/telephony/IIntegerConsumer;
    goto :goto_25

    .line 1857
    :cond_18
    const-string v1, "deprovisionService() invalid telephony"

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 1858
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda34;

    invoke-direct {v1, p3}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda34;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_25} :catch_26

    .line 1865
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_25
    goto :goto_45

    .line 1861
    :catch_26
    move-exception v0

    .line 1862
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deprovisionService() RemoteException ex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 1863
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda35;

    invoke-direct {v1, p3}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda35;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1866
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_45
    return-void
.end method

.method public whitelist getAttachRestrictionReasonsForCarrier(I)Ljava/util/Set;
    .registers 6
    .param p1, "subId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2879
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 2884
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2885
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_33

    .line 2886
    nop

    .line 2887
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getAttachRestrictionReasonsForCarrier(I)[I

    move-result-object v1

    .line 2888
    .local v1, "receivedArray":[I
    array-length v2, v1

    if-nez v2, :cond_20

    .line 2889
    const-string/jumbo v2, "receivedArray is empty, create empty set"

    invoke-static {v2}, Landroid/telephony/satellite/SatelliteManager;->logd(Ljava/lang/String;)V

    .line 2890
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    return-object v2

    .line 2892
    :cond_20
    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    return-object v2

    .line 2895
    .end local v1    # "receivedArray":[I
    :cond_33
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .end local p1    # "subId":I
    throw v1
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_3b} :catch_3b

    .line 2897
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .restart local p1    # "subId":I
    :catch_3b
    move-exception v0

    .line 2898
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAttachRestrictionReasonsForCarrier() RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2899
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 2901
    .end local v0    # "ex":Landroid/os/RemoteException;
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    .line 2880
    :cond_5b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid subscription ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getSatelliteDataOptimizedApps()Ljava/util/List;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3825
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3827
    .local v0, "appsNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_5
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3828
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_11

    .line 3829
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getSatelliteDataOptimizedApps()Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    .line 3836
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    goto :goto_34

    .line 3831
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_11
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "telephony service is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "appsNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    throw v2
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1a} :catch_1a

    .line 3833
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local v0    # "appsNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    :catch_1a
    move-exception v1

    .line 3834
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSatelliteDataOptimizedApps() RemoteException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3835
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 3838
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_34
    return-object v0
.end method

.method public blacklist getSatelliteDataSupportMode(I)I
    .registers 6
    .param p1, "subId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3857
    const/4 v0, -0x1

    .line 3860
    .local v0, "satelliteMode":I
    :try_start_1
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3861
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_d

    .line 3862
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getSatelliteDataSupportMode(I)I

    move-result v2

    move v0, v2

    .line 3869
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    goto :goto_30

    .line 3864
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_d
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "telephony service is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "satelliteMode":I
    .end local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .end local p1    # "subId":I
    throw v2
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_16} :catch_16

    .line 3866
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local v0    # "satelliteMode":I
    .restart local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .restart local p1    # "subId":I
    :catch_16
    move-exception v1

    .line 3867
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSatelliteDataSupportMode() RemoteException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3868
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 3871
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_30
    return v0
.end method

.method public blacklist getSatelliteDisallowedReasons()[I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2920
    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2921
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_b

    .line 2922
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->getSatelliteDisallowedReasons()[I

    move-result-object v1

    return-object v1

    .line 2924
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    throw v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_13

    .line 2926
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    :catch_13
    move-exception v0

    .line 2927
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSatelliteDisallowedReasons() RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2928
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 2930
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public whitelist getSatellitePlmnsForCarrier(I)Ljava/util/List;
    .registers 5
    .param p1, "subId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3272
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 3277
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3278
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_11

    .line 3279
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getSatellitePlmnsForCarrier(I)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 3281
    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .end local p1    # "subId":I
    throw v1
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_19} :catch_19

    .line 3283
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .restart local p1    # "subId":I
    :catch_19
    move-exception v0

    .line 3284
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSatellitePlmnsForCarrier() RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3285
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 3287
    .end local v0    # "ex":Landroid/os/RemoteException;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 3273
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid subscription ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist pollPendingDatagrams(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2238
    .local p2, "resultListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2239
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2242
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2243
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_15

    .line 2244
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$16;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/satellite/SatelliteManager$16;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 2251
    .local v1, "internalCallback":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->pollPendingDatagrams(Lcom/android/internal/telephony/IIntegerConsumer;)V

    .line 2252
    .end local v1    # "internalCallback":Lcom/android/internal/telephony/IIntegerConsumer;
    goto :goto_22

    .line 2253
    :cond_15
    const-string v1, "pollPendingDatagrams() invalid telephony"

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2254
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda84;

    invoke-direct {v1, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda84;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_22} :catch_23

    .line 2261
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_22
    goto :goto_42

    .line 2257
    :catch_23
    move-exception v0

    .line 2258
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pollPendingDatagrams() RemoteException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2259
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda85;

    invoke-direct {v1, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda85;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2262
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_42
    return-void
.end method

.method public blacklist provisionSatellite(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 7
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/satellite/SatelliteSubscriberInfo;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    .line 3677
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/satellite/SatelliteSubscriberInfo;>;"
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Landroid/telephony/satellite/SatelliteManager$SatelliteException;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3678
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3681
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3682
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_16

    .line 3683
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$34;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p2, p3}, Landroid/telephony/satellite/SatelliteManager$34;-><init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 3704
    .local v1, "receiver":Landroid/os/ResultReceiver;
    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/ITelephony;->provisionSatellite(Ljava/util/List;Landroid/os/ResultReceiver;)V

    .line 3705
    .end local v1    # "receiver":Landroid/os/ResultReceiver;
    goto :goto_23

    .line 3706
    :cond_16
    const-string v1, "provisionSatellite() invalid telephony"

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3707
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda79;

    invoke-direct {v1, p3}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda79;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_23} :catch_24

    .line 3714
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_23
    goto :goto_43

    .line 3710
    :catch_24
    move-exception v0

    .line 3711
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provisionSatellite() RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3712
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda80;

    invoke-direct {v1, p3}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda80;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3715
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_43
    return-void
.end method

.method public whitelist provisionService(Ljava/lang/String;[BLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 10
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "provisionData"    # [B
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1785
    .local p5, "resultListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1786
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1787
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1788
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1790
    const/4 v0, 0x0

    .line 1792
    .local v0, "cancelRemote":Landroid/os/ICancellationSignal;
    :try_start_d
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1793
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_1e

    .line 1794
    new-instance v2, Landroid/telephony/satellite/SatelliteManager$10;

    invoke-direct {v2, p0, p4, p5}, Landroid/telephony/satellite/SatelliteManager$10;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 1801
    .local v2, "errorCallback":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telephony/ITelephony;->provisionSatelliteService(Ljava/lang/String;[BLcom/android/internal/telephony/IIntegerConsumer;)Landroid/os/ICancellationSignal;

    move-result-object v3

    .line 1803
    .end local v0    # "cancelRemote":Landroid/os/ICancellationSignal;
    .end local v2    # "errorCallback":Lcom/android/internal/telephony/IIntegerConsumer;
    .local v3, "cancelRemote":Landroid/os/ICancellationSignal;
    move-object v0, v3

    goto :goto_2b

    .line 1804
    .end local v3    # "cancelRemote":Landroid/os/ICancellationSignal;
    .restart local v0    # "cancelRemote":Landroid/os/ICancellationSignal;
    :cond_1e
    const-string v2, "provisionService() invalid telephony"

    invoke-static {v2}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 1805
    new-instance v2, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda95;

    invoke-direct {v2, p5}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda95;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p4, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_2b} :catch_2c

    .line 1812
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_2b
    goto :goto_4b

    .line 1808
    :catch_2c
    move-exception v1

    .line 1809
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "provisionService() RemoteException="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 1810
    new-instance v2, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda96;

    invoke-direct {v2, p5}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda96;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p4, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1813
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_4b
    if-eqz p3, :cond_50

    .line 1814
    invoke-virtual {p3, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 1816
    :cond_50
    return-void
.end method

.method public whitelist registerForCapabilitiesChanged(Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteCapabilitiesCallback;)I
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/telephony/satellite/SatelliteCapabilitiesCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3194
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3195
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3198
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3199
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_1b

    .line 3200
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$28;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/satellite/SatelliteManager$28;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteCapabilitiesCallback;)V

    .line 3210
    .local v1, "internalCallback":Landroid/telephony/satellite/ISatelliteCapabilitiesCallback;
    sget-object v2, Landroid/telephony/satellite/SatelliteManager;->sSatelliteCapabilitiesCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3211
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->registerForCapabilitiesChanged(Landroid/telephony/satellite/ISatelliteCapabilitiesCallback;)I

    move-result v2

    return v2

    .line 3213
    .end local v1    # "internalCallback":Landroid/telephony/satellite/ISatelliteCapabilitiesCallback;
    :cond_1b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/telephony/satellite/SatelliteCapabilitiesCallback;
    throw v1
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_23} :catch_23

    .line 3215
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/telephony/satellite/SatelliteCapabilitiesCallback;
    :catch_23
    move-exception v0

    .line 3216
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerForCapabilitiesChanged() RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3217
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 3219
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/16 v0, 0x9

    return v0
.end method

.method public blacklist registerForCommunicationAccessStateChanged(Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;)I
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3386
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3387
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3390
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3391
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_1d

    .line 3392
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$30;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/satellite/SatelliteManager$30;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;)V

    .line 3411
    .local v1, "internalCallback":Landroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback;
    sget-object v2, Landroid/telephony/satellite/SatelliteManager;->sSatelliteCommunicationAccessStateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3412
    iget v2, p0, Landroid/telephony/satellite/SatelliteManager;->mSubId:I

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/ITelephony;->registerForCommunicationAccessStateChanged(ILandroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback;)I

    move-result v2

    return v2

    .line 3415
    .end local v1    # "internalCallback":Landroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback;
    :cond_1d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;
    throw v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_26} :catch_26

    .line 3417
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;
    :catch_26
    move-exception v0

    .line 3418
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerForCommunicationAccessStateChanged() RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3419
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 3421
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/16 v0, 0x9

    return v0
.end method

.method public whitelist registerForIncomingDatagram(Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteDatagramCallback;)I
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/telephony/satellite/SatelliteDatagramCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2141
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2142
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2145
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2146
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_1b

    .line 2147
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$15;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/satellite/SatelliteManager$15;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteDatagramCallback;)V

    .line 2170
    .local v1, "internalCallback":Landroid/telephony/satellite/ISatelliteDatagramCallback;
    sget-object v2, Landroid/telephony/satellite/SatelliteManager;->sSatelliteDatagramCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2171
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->registerForIncomingDatagram(Landroid/telephony/satellite/ISatelliteDatagramCallback;)I

    move-result v2

    return v2

    .line 2173
    .end local v1    # "internalCallback":Landroid/telephony/satellite/ISatelliteDatagramCallback;
    :cond_1b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/telephony/satellite/SatelliteDatagramCallback;
    throw v1
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_24} :catch_24

    .line 2175
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/telephony/satellite/SatelliteDatagramCallback;
    :catch_24
    move-exception v0

    .line 2176
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerForIncomingDatagram() RemoteException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2177
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 2179
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/16 v0, 0x9

    return v0
.end method

.method public whitelist registerForModemStateChanged(Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteModemStateCallback;)I
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/telephony/satellite/SatelliteModemStateCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2037
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2038
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2041
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2042
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_1b

    .line 2043
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$14;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/satellite/SatelliteManager$14;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteModemStateCallback;)V

    .line 2070
    .local v1, "internalCallback":Landroid/telephony/satellite/ISatelliteModemStateCallback;
    sget-object v2, Landroid/telephony/satellite/SatelliteManager;->sSatelliteModemStateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2071
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->registerForSatelliteModemStateChanged(Landroid/telephony/satellite/ISatelliteModemStateCallback;)I

    move-result v2

    return v2

    .line 2073
    .end local v1    # "internalCallback":Landroid/telephony/satellite/ISatelliteModemStateCallback;
    :cond_1b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/telephony/satellite/SatelliteModemStateCallback;
    throw v1
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_24} :catch_24

    .line 2075
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/telephony/satellite/SatelliteModemStateCallback;
    :catch_24
    move-exception v0

    .line 2076
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerForModemStateChanged() RemoteException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2077
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 2079
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/16 v0, 0x9

    return v0
.end method

.method public whitelist registerForNtnSignalStrengthChanged(Ljava/util/concurrent/Executor;Landroid/telephony/satellite/NtnSignalStrengthCallback;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/telephony/satellite/NtnSignalStrengthCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3106
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3107
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3110
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3111
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_1b

    .line 3112
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$27;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/satellite/SatelliteManager$27;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Landroid/telephony/satellite/NtnSignalStrengthCallback;)V

    .line 3122
    .local v1, "internalCallback":Landroid/telephony/satellite/INtnSignalStrengthCallback;
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->registerForNtnSignalStrengthChanged(Landroid/telephony/satellite/INtnSignalStrengthCallback;)V

    .line 3123
    sget-object v2, Landroid/telephony/satellite/SatelliteManager;->sNtnSignalStrengthCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3124
    nop

    .line 3130
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .end local v1    # "internalCallback":Landroid/telephony/satellite/INtnSignalStrengthCallback;
    goto :goto_3e

    .line 3125
    .restart local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_1b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/telephony/satellite/NtnSignalStrengthCallback;
    throw v1
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_23} :catch_23

    .line 3127
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/telephony/satellite/NtnSignalStrengthCallback;
    :catch_23
    move-exception v0

    .line 3128
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerForNtnSignalStrengthChanged() RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3129
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 3131
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_3e
    return-void
.end method

.method public whitelist registerForProvisionStateChanged(Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteProvisionStateCallback;)I
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/telephony/satellite/SatelliteProvisionStateCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1886
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1887
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1890
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1891
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_1b

    .line 1892
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$12;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/satellite/SatelliteManager$12;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteProvisionStateCallback;)V

    .line 1911
    .local v1, "internalCallback":Landroid/telephony/satellite/ISatelliteProvisionStateCallback;
    sget-object v2, Landroid/telephony/satellite/SatelliteManager;->sSatelliteProvisionStateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1912
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->registerForSatelliteProvisionStateChanged(Landroid/telephony/satellite/ISatelliteProvisionStateCallback;)I

    move-result v2

    return v2

    .line 1914
    .end local v1    # "internalCallback":Landroid/telephony/satellite/ISatelliteProvisionStateCallback;
    :cond_1b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/telephony/satellite/SatelliteProvisionStateCallback;
    throw v1
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_24} :catch_24

    .line 1916
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/telephony/satellite/SatelliteProvisionStateCallback;
    :catch_24
    move-exception v0

    .line 1917
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerForProvisionStateChanged() RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 1918
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 1920
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/16 v0, 0x9

    return v0
.end method

.method public blacklist registerForSatelliteDisallowedReasonsChanged(Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteDisallowedReasonsCallback;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/telephony/satellite/SatelliteDisallowedReasonsCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2949
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2950
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2953
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2954
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_1b

    .line 2955
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$25;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/satellite/SatelliteManager$25;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteDisallowedReasonsCallback;)V

    .line 2965
    .local v1, "internalCallback":Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback;
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->registerForSatelliteDisallowedReasonsChanged(Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback;)V

    .line 2966
    sget-object v2, Landroid/telephony/satellite/SatelliteManager;->sSatelliteDisallowedReasonsCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2967
    nop

    .line 2973
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .end local v1    # "internalCallback":Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback;
    goto :goto_3e

    .line 2968
    .restart local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_1b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/telephony/satellite/SatelliteDisallowedReasonsCallback;
    throw v1
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_23} :catch_23

    .line 2970
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/telephony/satellite/SatelliteDisallowedReasonsCallback;
    :catch_23
    move-exception v0

    .line 2971
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerForSatelliteDisallowedReasonsChanged() RemoteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2972
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 2974
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_3e
    return-void
.end method

.method public blacklist registerForSelectedNbIotSatelliteSubscriptionChanged(Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SelectedNbIotSatelliteSubscriptionCallback;)I
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/telephony/satellite/SelectedNbIotSatelliteSubscriptionCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2592
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2593
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2596
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2597
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_1b

    .line 2598
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$22;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/satellite/SatelliteManager$22;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SelectedNbIotSatelliteSubscriptionCallback;)V

    .line 2608
    .local v1, "internalCallback":Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback;
    sget-object v2, Landroid/telephony/satellite/SatelliteManager;->sSelectedNbIotSatelliteSubscriptionCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2609
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->registerForSelectedNbIotSatelliteSubscriptionChanged(Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback;)I

    move-result v2

    return v2

    .line 2612
    .end local v1    # "internalCallback":Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback;
    :cond_1b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/telephony/satellite/SelectedNbIotSatelliteSubscriptionCallback;
    throw v1
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_23} :catch_23

    .line 2614
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/telephony/satellite/SelectedNbIotSatelliteSubscriptionCallback;
    :catch_23
    move-exception v0

    .line 2615
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerForSelectedNbIotSatelliteSubscriptionChanged() RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2616
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2618
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/16 v0, 0x9

    return v0
.end method

.method public blacklist registerForSupportedStateChanged(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)I
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    .line 3307
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3308
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3311
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3312
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_1b

    .line 3313
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$29;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/satellite/SatelliteManager$29;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 3320
    .local v1, "internalCallback":Lcom/android/internal/telephony/IBooleanConsumer;
    sget-object v2, Landroid/telephony/satellite/SatelliteManager;->sSatelliteSupportedStateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3321
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->registerForSatelliteSupportedStateChanged(Lcom/android/internal/telephony/IBooleanConsumer;)I

    move-result v2

    return v2

    .line 3324
    .end local v1    # "internalCallback":Lcom/android/internal/telephony/IBooleanConsumer;
    :cond_1b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    throw v1
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_24} :catch_24

    .line 3326
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    :catch_24
    move-exception v0

    .line 3327
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerForSupportedStateChanged() RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3328
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 3330
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/16 v0, 0x9

    return v0
.end method

.method public whitelist registerStateChangeListener(Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteStateChangeListener;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/telephony/satellite/SatelliteStateChangeListener;

    .line 869
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_22

    .line 873
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyRegistryManager;

    iput-object v0, p0, Landroid/telephony/satellite/SatelliteManager;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    .line 874
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    if-eqz v0, :cond_1a

    .line 877
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->addSatelliteStateChangeListener(Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteStateChangeListener;)V

    .line 878
    return-void

    .line 875
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Telephony registry service is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 870
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Telephony service is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeAttachRestrictionForCarrier(IILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 8
    .param p1, "subId"    # I
    .param p2, "reason"    # I
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2835
    .local p4, "resultListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 2840
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2841
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_15

    .line 2842
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$24;

    invoke-direct {v1, p0, p3, p4}, Landroid/telephony/satellite/SatelliteManager$24;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 2849
    .local v1, "errorCallback":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/ITelephony;->removeAttachRestrictionForCarrier(IILcom/android/internal/telephony/IIntegerConsumer;)V

    .line 2850
    .end local v1    # "errorCallback":Lcom/android/internal/telephony/IIntegerConsumer;
    goto :goto_23

    .line 2851
    :cond_15
    const-string/jumbo v1, "removeAttachRestrictionForCarrier() invalid telephony"

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2852
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda12;

    invoke-direct {v1, p4}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda12;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p3, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_23} :catch_24

    .line 2859
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_23
    goto :goto_44

    .line 2855
    :catch_24
    move-exception v0

    .line 2856
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeAttachRestrictionForCarrier() RemoteException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2857
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda13;

    invoke-direct {v1, p4}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda13;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p3, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2860
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_44
    return-void

    .line 2836
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid subscription ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist requestAttachEnabledForCarrier(IZLjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .param p1, "subId"    # I
    .param p2, "enableSatellite"    # Z
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2724
    .local p4, "resultListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2725
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2727
    const/4 v0, 0x0

    if-eqz p2, :cond_d

    .line 2728
    invoke-virtual {p0, p1, v0, p3, p4}, Landroid/telephony/satellite/SatelliteManager;->removeAttachRestrictionForCarrier(IILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    goto :goto_10

    .line 2731
    :cond_d
    invoke-virtual {p0, p1, v0, p3, p4}, Landroid/telephony/satellite/SatelliteManager;->addAttachRestrictionForCarrier(IILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 2734
    :goto_10
    return-void
.end method

.method public whitelist requestCapabilities(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/telephony/satellite/SatelliteCapabilities;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    .line 1215
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/telephony/satellite/SatelliteCapabilities;Landroid/telephony/satellite/SatelliteManager$SatelliteException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1220
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_16

    .line 1221
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$6;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/telephony/satellite/SatelliteManager$6;-><init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 1243
    .local v1, "receiver":Landroid/os/ResultReceiver;
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->requestSatelliteCapabilities(Landroid/os/ResultReceiver;)V

    .line 1244
    .end local v1    # "receiver":Landroid/os/ResultReceiver;
    goto :goto_24

    .line 1245
    :cond_16
    const-string/jumbo v1, "requestCapabilities() invalid telephony"

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 1246
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda59;

    invoke-direct {v1, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda59;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_24} :catch_25

    .line 1253
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_24
    goto :goto_45

    .line 1249
    :catch_25
    move-exception v0

    .line 1250
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestCapabilities() RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 1251
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda60;

    invoke-direct {v1, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda60;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1254
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_45
    return-void
.end method

.method public whitelist requestEnabled(Landroid/telephony/satellite/EnableRequestAttributes;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 10
    .param p1, "attributes"    # Landroid/telephony/satellite/EnableRequestAttributes;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/satellite/EnableRequestAttributes;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 933
    .local p3, "resultListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    const-string v0, "SatelliteManager"

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    :try_start_b
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 939
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_26

    .line 940
    new-instance v2, Landroid/telephony/satellite/SatelliteManager$1;

    invoke-direct {v2, p0, p2, p3}, Landroid/telephony/satellite/SatelliteManager$1;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 947
    .local v2, "errorCallback":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p1}, Landroid/telephony/satellite/EnableRequestAttributes;->isEnabled()Z

    move-result v3

    .line 948
    invoke-virtual {p1}, Landroid/telephony/satellite/EnableRequestAttributes;->isDemoMode()Z

    move-result v4

    invoke-virtual {p1}, Landroid/telephony/satellite/EnableRequestAttributes;->isEmergencyMode()Z

    move-result v5

    .line 947
    invoke-interface {v1, v3, v4, v5, v2}, Lcom/android/internal/telephony/ITelephony;->requestSatelliteEnabled(ZZZLcom/android/internal/telephony/IIntegerConsumer;)V

    .line 949
    .end local v2    # "errorCallback":Lcom/android/internal/telephony/IIntegerConsumer;
    goto :goto_34

    .line 950
    :cond_26
    const-string/jumbo v2, "requestEnabled() invalid telephony"

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    new-instance v2, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda10;

    invoke-direct {v2, p3}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda10;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_34} :catch_35

    .line 958
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_34
    goto :goto_44

    .line 954
    :catch_35
    move-exception v1

    .line 955
    .local v1, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "requestEnabled() exception: "

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 956
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda11;

    invoke-direct {v0, p3}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda11;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 959
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_44
    return-void
.end method

.method public whitelist requestIsAttachEnabledForCarrier(ILjava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .param p1, "subId"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Boolean;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    .line 2760
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Boolean;Landroid/telephony/satellite/SatelliteManager$SatelliteException;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2761
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2763
    invoke-virtual {p0, p1}, Landroid/telephony/satellite/SatelliteManager;->getAttachRestrictionReasonsForCarrier(I)Ljava/util/Set;

    move-result-object v0

    .line 2764
    .local v0, "restrictionReason":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda71;

    invoke-direct {v1, p3, v0}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda71;-><init>(Landroid/os/OutcomeReceiver;Ljava/util/Set;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2766
    return-void
.end method

.method public whitelist requestIsCommunicationAllowedForCurrentLocation(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Boolean;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    .line 2346
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Boolean;Landroid/telephony/satellite/SatelliteManager$SatelliteException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2347
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2350
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2351
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_18

    .line 2352
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$18;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/telephony/satellite/SatelliteManager$18;-><init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 2373
    .local v1, "receiver":Landroid/os/ResultReceiver;
    iget v2, p0, Landroid/telephony/satellite/SatelliteManager;->mSubId:I

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/ITelephony;->requestIsCommunicationAllowedForCurrentLocation(ILandroid/os/ResultReceiver;)V

    .line 2374
    .end local v1    # "receiver":Landroid/os/ResultReceiver;
    goto :goto_26

    .line 2375
    :cond_18
    const-string/jumbo v1, "requestIsCommunicationAllowedForCurrentLocation() invalid telephony"

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2376
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda40;

    invoke-direct {v1, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda40;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_26} :catch_27

    .line 2383
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_26
    goto :goto_47

    .line 2379
    :catch_27
    move-exception v0

    .line 2380
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestIsCommunicationAllowedForCurrentLocation() RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2381
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda41;

    invoke-direct {v1, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda41;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2384
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_47
    return-void
.end method

.method public whitelist requestIsDemoModeEnabled(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Boolean;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    .line 1039
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Boolean;Landroid/telephony/satellite/SatelliteManager$SatelliteException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1044
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_16

    .line 1045
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/telephony/satellite/SatelliteManager$3;-><init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 1066
    .local v1, "receiver":Landroid/os/ResultReceiver;
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->requestIsDemoModeEnabled(Landroid/os/ResultReceiver;)V

    .line 1067
    .end local v1    # "receiver":Landroid/os/ResultReceiver;
    goto :goto_24

    .line 1068
    :cond_16
    const-string/jumbo v1, "requestIsDemoModeEnabled() invalid telephony"

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 1069
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda24;

    invoke-direct {v1, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda24;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_24} :catch_25

    .line 1076
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_24
    goto :goto_45

    .line 1072
    :catch_25
    move-exception v0

    .line 1073
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestIsDemoModeEnabled() RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 1074
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda25;

    invoke-direct {v1, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda25;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1077
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_45
    return-void
.end method

.method public whitelist requestIsEmergencyModeEnabled(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Boolean;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    .line 1098
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Boolean;Landroid/telephony/satellite/SatelliteManager$SatelliteException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1103
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_16

    .line 1104
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$4;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/telephony/satellite/SatelliteManager$4;-><init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 1125
    .local v1, "receiver":Landroid/os/ResultReceiver;
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->requestIsEmergencyModeEnabled(Landroid/os/ResultReceiver;)V

    .line 1126
    .end local v1    # "receiver":Landroid/os/ResultReceiver;
    goto :goto_1e

    .line 1127
    :cond_16
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda28;

    invoke-direct {v1, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda28;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1e} :catch_1f

    .line 1133
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_1e
    goto :goto_3a

    .line 1130
    :catch_1f
    move-exception v0

    .line 1131
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestIsEmergencyModeEnabled() RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 1132
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 1134
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_3a
    return-void
.end method

.method public whitelist requestIsEnabled(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Boolean;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    .line 980
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Boolean;Landroid/telephony/satellite/SatelliteManager$SatelliteException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 985
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_16

    .line 986
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/telephony/satellite/SatelliteManager$2;-><init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 1007
    .local v1, "receiver":Landroid/os/ResultReceiver;
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->requestIsSatelliteEnabled(Landroid/os/ResultReceiver;)V

    .line 1008
    .end local v1    # "receiver":Landroid/os/ResultReceiver;
    goto :goto_24

    .line 1009
    :cond_16
    const-string/jumbo v1, "requestIsEnabled() invalid telephony"

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 1010
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda97;

    invoke-direct {v1, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda97;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_24} :catch_25

    .line 1017
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_24
    goto :goto_45

    .line 1013
    :catch_25
    move-exception v0

    .line 1014
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestIsEnabled() RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 1015
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda98;

    invoke-direct {v1, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda98;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1018
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_45
    return-void
.end method

.method public whitelist requestIsProvisioned(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Boolean;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    .line 1979
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Boolean;Landroid/telephony/satellite/SatelliteManager$SatelliteException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1980
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1983
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1984
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_16

    .line 1985
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$13;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/telephony/satellite/SatelliteManager$13;-><init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 2006
    .local v1, "receiver":Landroid/os/ResultReceiver;
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->requestIsSatelliteProvisioned(Landroid/os/ResultReceiver;)V

    .line 2007
    .end local v1    # "receiver":Landroid/os/ResultReceiver;
    goto :goto_24

    .line 2008
    :cond_16
    const-string/jumbo v1, "requestIsProvisioned() invalid telephony"

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2009
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda61;

    invoke-direct {v1, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda61;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_24} :catch_25

    .line 2016
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_24
    goto :goto_45

    .line 2012
    :catch_25
    move-exception v0

    .line 2013
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestIsProvisioned() RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2014
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda62;

    invoke-direct {v1, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda62;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2017
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_45
    return-void
.end method

.method public whitelist requestIsSupported(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Boolean;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    .line 1157
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Boolean;Landroid/telephony/satellite/SatelliteManager$SatelliteException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1161
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1162
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_16

    .line 1163
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$5;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/telephony/satellite/SatelliteManager$5;-><init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 1184
    .local v1, "receiver":Landroid/os/ResultReceiver;
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->requestIsSatelliteSupported(Landroid/os/ResultReceiver;)V

    .line 1185
    .end local v1    # "receiver":Landroid/os/ResultReceiver;
    goto :goto_24

    .line 1186
    :cond_16
    const-string/jumbo v1, "requestIsSupported() invalid telephony"

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 1187
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda52;

    invoke-direct {v1, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda52;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_24} :catch_25

    .line 1194
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_24
    goto :goto_45

    .line 1190
    :catch_25
    move-exception v0

    .line 1191
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestIsSupported() RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 1192
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda53;

    invoke-direct {v1, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda53;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1195
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_45
    return-void
.end method

.method public whitelist requestNtnSignalStrength(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/telephony/satellite/NtnSignalStrength;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    .line 3041
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/telephony/satellite/NtnSignalStrength;Landroid/telephony/satellite/SatelliteManager$SatelliteException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3042
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3045
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3046
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_16

    .line 3047
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$26;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/telephony/satellite/SatelliteManager$26;-><init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 3069
    .local v1, "receiver":Landroid/os/ResultReceiver;
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->requestNtnSignalStrength(Landroid/os/ResultReceiver;)V

    .line 3070
    .end local v1    # "receiver":Landroid/os/ResultReceiver;
    goto :goto_24

    .line 3071
    :cond_16
    const-string/jumbo v1, "requestNtnSignalStrength() invalid telephony"

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3072
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda72;

    invoke-direct {v1, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda72;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_24} :catch_25

    .line 3079
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_24
    goto :goto_45

    .line 3075
    :catch_25
    move-exception v0

    .line 3076
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestNtnSignalStrength() RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3077
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda73;

    invoke-direct {v1, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda73;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3080
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_45
    return-void
.end method

.method public blacklist requestSatelliteAccessConfigurationForCurrentLocation(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/telephony/satellite/SatelliteAccessConfiguration;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    .line 2407
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/telephony/satellite/SatelliteAccessConfiguration;Landroid/telephony/satellite/SatelliteManager$SatelliteException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2408
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2411
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2412
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_16

    .line 2413
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$19;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/telephony/satellite/SatelliteManager$19;-><init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 2435
    .local v1, "receiver":Landroid/os/ResultReceiver;
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->requestSatelliteAccessConfigurationForCurrentLocation(Landroid/os/ResultReceiver;)V

    .line 2436
    .end local v1    # "receiver":Landroid/os/ResultReceiver;
    goto :goto_24

    .line 2437
    :cond_16
    const-string/jumbo v1, "requestSatelliteAccessConfigurationForCurrentLocation() invalid telephony"

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2438
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_24} :catch_25

    .line 2446
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_24
    goto :goto_45

    .line 2441
    :catch_25
    move-exception v0

    .line 2442
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestSatelliteAccessConfigurationForCurrentLocation() RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2444
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda2;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2447
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_45
    return-void
.end method

.method public blacklist requestSatelliteDisplayName(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/CharSequence;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    .line 3616
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/CharSequence;Landroid/telephony/satellite/SatelliteManager$SatelliteException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3617
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3620
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3621
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_16

    .line 3622
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$33;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/telephony/satellite/SatelliteManager$33;-><init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 3643
    .local v1, "receiver":Landroid/os/ResultReceiver;
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->requestSatelliteDisplayName(Landroid/os/ResultReceiver;)V

    .line 3644
    .end local v1    # "receiver":Landroid/os/ResultReceiver;
    goto :goto_24

    .line 3645
    :cond_16
    const-string/jumbo v1, "requestSatelliteDisplayName() invalid telephony"

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3646
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda66;

    invoke-direct {v1, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda66;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_24} :catch_25

    .line 3653
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_24
    goto :goto_45

    .line 3649
    :catch_25
    move-exception v0

    .line 3650
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestSatelliteDisplayName() RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3651
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda67;

    invoke-direct {v1, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda67;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3654
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_45
    return-void
.end method

.method public blacklist requestSatelliteSubscriberProvisionStatus(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/util/List<",
            "Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;",
            ">;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    .line 3555
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/util/List<Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;>;Landroid/telephony/satellite/SatelliteManager$SatelliteException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3556
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3559
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3560
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_16

    .line 3561
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$32;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/telephony/satellite/SatelliteManager$32;-><init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 3584
    .local v1, "receiver":Landroid/os/ResultReceiver;
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->requestSatelliteSubscriberProvisionStatus(Landroid/os/ResultReceiver;)V

    .line 3585
    .end local v1    # "receiver":Landroid/os/ResultReceiver;
    goto :goto_24

    .line 3586
    :cond_16
    const-string/jumbo v1, "requestSatelliteSubscriberProvisionStatus() invalid telephony"

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3587
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda37;

    invoke-direct {v1, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda37;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_24} :catch_25

    .line 3594
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_24
    goto :goto_45

    .line 3590
    :catch_25
    move-exception v0

    .line 3591
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestSatelliteSubscriberProvisionStatus() RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3592
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda38;

    invoke-direct {v1, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda38;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3595
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_45
    return-void
.end method

.method public blacklist requestSelectedNbIotSatelliteSubscriptionId(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    .line 2529
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Integer;Landroid/telephony/satellite/SatelliteManager$SatelliteException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2530
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2533
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2534
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_16

    .line 2535
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$21;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/telephony/satellite/SatelliteManager$21;-><init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 2560
    .local v1, "receiver":Landroid/os/ResultReceiver;
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->requestSelectedNbIotSatelliteSubscriptionId(Landroid/os/ResultReceiver;)V

    .line 2561
    .end local v1    # "receiver":Landroid/os/ResultReceiver;
    goto :goto_24

    .line 2562
    :cond_16
    const-string/jumbo v1, "requestSelectedNbIotSatelliteSubscriptionId() invalid telephony"

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2563
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda81;

    invoke-direct {v1, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda81;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_24} :catch_25

    .line 2570
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_24
    goto :goto_45

    .line 2566
    :catch_25
    move-exception v0

    .line 2567
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestSelectedNbIotSatelliteSubscriptionId() RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2568
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda82;

    invoke-direct {v1, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda82;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2571
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_45
    return-void
.end method

.method public blacklist requestSessionStats(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/telephony/satellite/SatelliteSessionStats;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    .line 3479
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/telephony/satellite/SatelliteSessionStats;Landroid/telephony/satellite/SatelliteManager$SatelliteException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3480
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3483
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3484
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_18

    .line 3485
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$31;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/telephony/satellite/SatelliteManager$31;-><init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 3519
    .local v1, "receiver":Landroid/os/ResultReceiver;
    iget v2, p0, Landroid/telephony/satellite/SatelliteManager;->mSubId:I

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/ITelephony;->requestSatelliteSessionStats(ILandroid/os/ResultReceiver;)V

    .line 3520
    .end local v1    # "receiver":Landroid/os/ResultReceiver;
    goto :goto_26

    .line 3521
    :cond_18
    const-string/jumbo v1, "requestSessionStats() invalid telephony"

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3522
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda14;

    invoke-direct {v1, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda14;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_26} :catch_27

    .line 3529
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_26
    goto :goto_47

    .line 3525
    :catch_27
    move-exception v0

    .line 3526
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestSessionStats() RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3527
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda15;

    invoke-direct {v1, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda15;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3530
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_47
    return-void
.end method

.method public whitelist requestTimeForNextSatelliteVisibility(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/time/Duration;",
            "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
            ">;)V"
        }
    .end annotation

    .line 2468
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/time/Duration;Landroid/telephony/satellite/SatelliteManager$SatelliteException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2469
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2472
    :try_start_6
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2473
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_16

    .line 2474
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$20;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/telephony/satellite/SatelliteManager$20;-><init>(Landroid/telephony/satellite/SatelliteManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 2496
    .local v1, "receiver":Landroid/os/ResultReceiver;
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->requestTimeForNextSatelliteVisibility(Landroid/os/ResultReceiver;)V

    .line 2497
    .end local v1    # "receiver":Landroid/os/ResultReceiver;
    goto :goto_24

    .line 2498
    :cond_16
    const-string/jumbo v1, "requestTimeForNextSatelliteVisibility() invalid telephony"

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2499
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda8;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_24} :catch_25

    .line 2506
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_24
    goto :goto_45

    .line 2502
    :catch_25
    move-exception v0

    .line 2503
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestTimeForNextSatelliteVisibility() RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2504
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda9;

    invoke-direct {v1, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda9;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2507
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_45
    return-void
.end method

.method public whitelist sendDatagram(ILandroid/telephony/satellite/SatelliteDatagram;ZLjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 9
    .param p1, "datagramType"    # I
    .param p2, "datagram"    # Landroid/telephony/satellite/SatelliteDatagram;
    .param p3, "needFullScreenPointingUI"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/telephony/satellite/SatelliteDatagram;",
            "Z",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2297
    .local p5, "resultListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2298
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2299
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2302
    :try_start_9
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2303
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_18

    .line 2304
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$17;

    invoke-direct {v1, p0, p4, p5}, Landroid/telephony/satellite/SatelliteManager$17;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 2311
    .local v1, "internalCallback":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-interface {v0, p1, p2, p3, v1}, Lcom/android/internal/telephony/ITelephony;->sendDatagram(ILandroid/telephony/satellite/SatelliteDatagram;ZLcom/android/internal/telephony/IIntegerConsumer;)V

    .line 2313
    .end local v1    # "internalCallback":Lcom/android/internal/telephony/IIntegerConsumer;
    goto :goto_26

    .line 2314
    :cond_18
    const-string/jumbo v1, "sendDatagram() invalid telephony"

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2315
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda55;

    invoke-direct {v1, p5}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda55;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p4, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_26} :catch_27

    .line 2322
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_26
    goto :goto_47

    .line 2318
    :catch_27
    move-exception v0

    .line 2319
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDatagram() RemoteException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2320
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda56;

    invoke-direct {v1, p5}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda56;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p4, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2323
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_47
    return-void
.end method

.method public whitelist setDeviceAlignedWithSatellite(Z)V
    .registers 5
    .param p1, "isAligned"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2681
    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2682
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_a

    .line 2683
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setDeviceAlignedWithSatellite(Z)V

    .line 2690
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    goto :goto_2e

    .line 2685
    .restart local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .end local p1    # "isAligned":Z
    throw v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_13

    .line 2687
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .restart local p1    # "isAligned":Z
    :catch_13
    move-exception v0

    .line 2688
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDeviceAlignedWithSatellite() RemoteException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2689
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 2691
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_2e
    return-void
.end method

.method public blacklist setNtnSmsSupported(Z)V
    .registers 5
    .param p1, "ntnSmsSupported"    # Z

    .line 3800
    :try_start_0
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3801
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_a

    .line 3802
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setNtnSmsSupported(Z)V

    .line 3809
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    goto :goto_2e

    .line 3804
    .restart local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .end local p1    # "ntnSmsSupported":Z
    throw v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_13

    .line 3806
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .restart local p1    # "ntnSmsSupported":Z
    :catch_13
    move-exception v0

    .line 3807
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNtnSmsSupported() RemoteException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3808
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 3810
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_2e
    return-void
.end method

.method public whitelist startTransmissionUpdates(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;)V
    .registers 8
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;",
            ")V"
        }
    .end annotation

    .line 1640
    .local p2, "resultListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1641
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1642
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1645
    :try_start_9
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1646
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_22

    .line 1647
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$7;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/satellite/SatelliteManager$7;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 1654
    .local v1, "errorCallback":Lcom/android/internal/telephony/IIntegerConsumer;
    new-instance v2, Landroid/telephony/satellite/SatelliteManager$8;

    invoke-direct {v2, p0, p1, p3}, Landroid/telephony/satellite/SatelliteManager$8;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;)V

    .line 1690
    .local v2, "internalCallback":Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;
    sget-object v3, Landroid/telephony/satellite/SatelliteManager;->sSatelliteTransmissionUpdateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1691
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->startSatelliteTransmissionUpdates(Lcom/android/internal/telephony/IIntegerConsumer;Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;)V

    .line 1692
    .end local v1    # "errorCallback":Lcom/android/internal/telephony/IIntegerConsumer;
    .end local v2    # "internalCallback":Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;
    goto :goto_30

    .line 1693
    :cond_22
    const-string/jumbo v1, "startTransmissionUpdates() invalid telephony"

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 1694
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda6;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_30} :catch_31

    .line 1701
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_30
    goto :goto_51

    .line 1697
    :catch_31
    move-exception v0

    .line 1698
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startTransmissionUpdates() RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 1699
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p2}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda7;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1702
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_51
    return-void
.end method

.method public whitelist stopTransmissionUpdates(Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 8
    .param p1, "callback"    # Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1725
    .local p3, "resultListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1726
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1727
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1729
    sget-object v0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteTransmissionUpdateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1730
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;

    .line 1733
    .local v0, "internalCallback":Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;
    :try_start_11
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1734
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_31

    .line 1735
    if-eqz v0, :cond_22

    .line 1736
    new-instance v2, Landroid/telephony/satellite/SatelliteManager$9;

    invoke-direct {v2, p0, p2, p3}, Landroid/telephony/satellite/SatelliteManager$9;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 1743
    .local v2, "errorCallback":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-interface {v1, v2, v0}, Lcom/android/internal/telephony/ITelephony;->stopSatelliteTransmissionUpdates(Lcom/android/internal/telephony/IIntegerConsumer;Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;)V

    .line 1745
    .end local v2    # "errorCallback":Lcom/android/internal/telephony/IIntegerConsumer;
    goto :goto_3f

    .line 1746
    :cond_22
    const-string/jumbo v2, "stopSatelliteTransmissionUpdates: No internal callback."

    invoke-static {v2}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 1747
    new-instance v2, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda42;

    invoke-direct {v2, p3}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda42;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3f

    .line 1751
    :cond_31
    const-string/jumbo v2, "stopTransmissionUpdates() invalid telephony"

    invoke-static {v2}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 1752
    new-instance v2, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda43;

    invoke-direct {v2, p3}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda43;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_3f} :catch_40

    .line 1759
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_3f
    goto :goto_60

    .line 1755
    :catch_40
    move-exception v1

    .line 1756
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopTransmissionUpdates() RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 1757
    new-instance v2, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda44;

    invoke-direct {v2, p3}, Landroid/telephony/satellite/SatelliteManager$$ExternalSyntheticLambda44;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1760
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_60
    return-void
.end method

.method public whitelist unregisterForCapabilitiesChanged(Landroid/telephony/satellite/SatelliteCapabilitiesCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/telephony/satellite/SatelliteCapabilitiesCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3238
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3239
    sget-object v0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteCapabilitiesCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3240
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/satellite/ISatelliteCapabilitiesCallback;

    .line 3243
    .local v0, "internalCallback":Landroid/telephony/satellite/ISatelliteCapabilitiesCallback;
    :try_start_b
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3244
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_1e

    .line 3245
    if-eqz v0, :cond_17

    .line 3246
    invoke-interface {v1, v0}, Lcom/android/internal/telephony/ITelephony;->unregisterForCapabilitiesChanged(Landroid/telephony/satellite/ISatelliteCapabilitiesCallback;)V

    goto :goto_1d

    .line 3248
    :cond_17
    const-string/jumbo v2, "unregisterForCapabilitiesChanged: No internal callback."

    invoke-static {v2}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3256
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_1d
    goto :goto_41

    .line 3251
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_1e
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Telephony service is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "internalCallback":Landroid/telephony/satellite/ISatelliteCapabilitiesCallback;
    .end local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .end local p1    # "callback":Landroid/telephony/satellite/SatelliteCapabilitiesCallback;
    throw v2
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_26} :catch_26

    .line 3253
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local v0    # "internalCallback":Landroid/telephony/satellite/ISatelliteCapabilitiesCallback;
    .restart local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .restart local p1    # "callback":Landroid/telephony/satellite/SatelliteCapabilitiesCallback;
    :catch_26
    move-exception v1

    .line 3254
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterForCapabilitiesChanged() RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3255
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 3257
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_41
    return-void
.end method

.method public blacklist unregisterForCommunicationAccessStateChanged(Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3440
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3441
    sget-object v0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteCommunicationAccessStateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3442
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback;

    .line 3445
    .local v0, "internalCallback":Landroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback;
    :try_start_b
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3446
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_20

    .line 3447
    if-eqz v0, :cond_19

    .line 3448
    iget v2, p0, Landroid/telephony/satellite/SatelliteManager;->mSubId:I

    invoke-interface {v1, v2, v0}, Lcom/android/internal/telephony/ITelephony;->unregisterForCommunicationAccessStateChanged(ILandroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback;)V

    goto :goto_1f

    .line 3451
    :cond_19
    const-string/jumbo v2, "unregisterForCommunicationAccessStateChanged: No internal callback."

    invoke-static {v2}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3459
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_1f
    goto :goto_44

    .line 3454
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_20
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "telephony service is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "internalCallback":Landroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback;
    .end local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .end local p1    # "callback":Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;
    throw v2
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_29} :catch_29

    .line 3456
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local v0    # "internalCallback":Landroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback;
    .restart local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .restart local p1    # "callback":Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;
    :catch_29
    move-exception v1

    .line 3457
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterForCommunicationAccessStateChanged() RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3458
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 3460
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_44
    return-void
.end method

.method public whitelist unregisterForIncomingDatagram(Landroid/telephony/satellite/SatelliteDatagramCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/telephony/satellite/SatelliteDatagramCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2197
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2198
    sget-object v0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteDatagramCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2199
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/satellite/ISatelliteDatagramCallback;

    .line 2202
    .local v0, "internalCallback":Landroid/telephony/satellite/ISatelliteDatagramCallback;
    :try_start_b
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2203
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_1e

    .line 2204
    if-eqz v0, :cond_17

    .line 2205
    invoke-interface {v1, v0}, Lcom/android/internal/telephony/ITelephony;->unregisterForIncomingDatagram(Landroid/telephony/satellite/ISatelliteDatagramCallback;)V

    goto :goto_1d

    .line 2207
    :cond_17
    const-string/jumbo v2, "unregisterForIncomingDatagram: No internal callback."

    invoke-static {v2}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2215
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_1d
    goto :goto_42

    .line 2210
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_1e
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "telephony service is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "internalCallback":Landroid/telephony/satellite/ISatelliteDatagramCallback;
    .end local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .end local p1    # "callback":Landroid/telephony/satellite/SatelliteDatagramCallback;
    throw v2
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_27} :catch_27

    .line 2212
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local v0    # "internalCallback":Landroid/telephony/satellite/ISatelliteDatagramCallback;
    .restart local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .restart local p1    # "callback":Landroid/telephony/satellite/SatelliteDatagramCallback;
    :catch_27
    move-exception v1

    .line 2213
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterForIncomingDatagram() RemoteException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2214
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 2216
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_42
    return-void
.end method

.method public whitelist unregisterForModemStateChanged(Landroid/telephony/satellite/SatelliteModemStateCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/telephony/satellite/SatelliteModemStateCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2098
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2099
    sget-object v0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteModemStateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/satellite/ISatelliteModemStateCallback;

    .line 2103
    .local v0, "internalCallback":Landroid/telephony/satellite/ISatelliteModemStateCallback;
    :try_start_b
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2104
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_1e

    .line 2105
    if-eqz v0, :cond_17

    .line 2106
    invoke-interface {v1, v0}, Lcom/android/internal/telephony/ITelephony;->unregisterForModemStateChanged(Landroid/telephony/satellite/ISatelliteModemStateCallback;)V

    goto :goto_1d

    .line 2108
    :cond_17
    const-string/jumbo v2, "unregisterForModemStateChanged: No internal callback."

    invoke-static {v2}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2116
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_1d
    goto :goto_42

    .line 2111
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_1e
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "telephony service is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "internalCallback":Landroid/telephony/satellite/ISatelliteModemStateCallback;
    .end local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .end local p1    # "callback":Landroid/telephony/satellite/SatelliteModemStateCallback;
    throw v2
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_27} :catch_27

    .line 2113
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local v0    # "internalCallback":Landroid/telephony/satellite/ISatelliteModemStateCallback;
    .restart local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .restart local p1    # "callback":Landroid/telephony/satellite/SatelliteModemStateCallback;
    :catch_27
    move-exception v1

    .line 2114
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterForModemStateChanged() RemoteException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2115
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 2117
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_42
    return-void
.end method

.method public whitelist unregisterForNtnSignalStrengthChanged(Landroid/telephony/satellite/NtnSignalStrengthCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/telephony/satellite/NtnSignalStrengthCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3156
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3157
    sget-object v0, Landroid/telephony/satellite/SatelliteManager;->sNtnSignalStrengthCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3158
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/satellite/INtnSignalStrengthCallback;

    .line 3161
    .local v0, "internalCallback":Landroid/telephony/satellite/INtnSignalStrengthCallback;
    :try_start_b
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3162
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_25

    .line 3163
    if-eqz v0, :cond_17

    .line 3164
    invoke-interface {v1, v0}, Lcom/android/internal/telephony/ITelephony;->unregisterForNtnSignalStrengthChanged(Landroid/telephony/satellite/INtnSignalStrengthCallback;)V

    .line 3175
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    goto :goto_48

    .line 3166
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_17
    const-string/jumbo v2, "unregisterForNtnSignalStrengthChanged: No internal callback."

    invoke-static {v2}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3167
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "callback is not valid"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "internalCallback":Landroid/telephony/satellite/INtnSignalStrengthCallback;
    .end local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .end local p1    # "callback":Landroid/telephony/satellite/NtnSignalStrengthCallback;
    throw v2

    .line 3170
    .restart local v0    # "internalCallback":Landroid/telephony/satellite/INtnSignalStrengthCallback;
    .restart local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .restart local p1    # "callback":Landroid/telephony/satellite/NtnSignalStrengthCallback;
    :cond_25
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Telephony service is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "internalCallback":Landroid/telephony/satellite/INtnSignalStrengthCallback;
    .end local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .end local p1    # "callback":Landroid/telephony/satellite/NtnSignalStrengthCallback;
    throw v2
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_2d} :catch_2d

    .line 3172
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local v0    # "internalCallback":Landroid/telephony/satellite/INtnSignalStrengthCallback;
    .restart local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .restart local p1    # "callback":Landroid/telephony/satellite/NtnSignalStrengthCallback;
    :catch_2d
    move-exception v1

    .line 3173
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterForNtnSignalStrengthChanged() RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3174
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 3176
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_48
    return-void
.end method

.method public whitelist unregisterForProvisionStateChanged(Landroid/telephony/satellite/SatelliteProvisionStateCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/telephony/satellite/SatelliteProvisionStateCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1939
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1940
    sget-object v0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteProvisionStateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1941
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/satellite/ISatelliteProvisionStateCallback;

    .line 1944
    .local v0, "internalCallback":Landroid/telephony/satellite/ISatelliteProvisionStateCallback;
    :try_start_b
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1945
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_1e

    .line 1946
    if-eqz v0, :cond_17

    .line 1947
    invoke-interface {v1, v0}, Lcom/android/internal/telephony/ITelephony;->unregisterForSatelliteProvisionStateChanged(Landroid/telephony/satellite/ISatelliteProvisionStateCallback;)V

    goto :goto_1d

    .line 1949
    :cond_17
    const-string/jumbo v2, "unregisterForProvisionStateChanged: No internal callback."

    invoke-static {v2}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 1957
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_1d
    goto :goto_42

    .line 1952
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_1e
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "telephony service is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "internalCallback":Landroid/telephony/satellite/ISatelliteProvisionStateCallback;
    .end local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .end local p1    # "callback":Landroid/telephony/satellite/SatelliteProvisionStateCallback;
    throw v2
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_27} :catch_27

    .line 1954
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local v0    # "internalCallback":Landroid/telephony/satellite/ISatelliteProvisionStateCallback;
    .restart local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .restart local p1    # "callback":Landroid/telephony/satellite/SatelliteProvisionStateCallback;
    :catch_27
    move-exception v1

    .line 1955
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterForProvisionStateChanged() RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 1956
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 1958
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_42
    return-void
.end method

.method public blacklist unregisterForSatelliteDisallowedReasonsChanged(Landroid/telephony/satellite/SatelliteDisallowedReasonsCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/telephony/satellite/SatelliteDisallowedReasonsCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2992
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2993
    sget-object v0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteDisallowedReasonsCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2994
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback;

    .line 2997
    .local v0, "internalCallback":Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback;
    :try_start_b
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2998
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_25

    .line 2999
    if-eqz v0, :cond_17

    .line 3000
    invoke-interface {v1, v0}, Lcom/android/internal/telephony/ITelephony;->unregisterForSatelliteDisallowedReasonsChanged(Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback;)V

    .line 3011
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    goto :goto_48

    .line 3002
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_17
    const-string/jumbo v2, "unregisterForSatelliteDisallowedReasonsChanged: No internal callback."

    invoke-static {v2}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3003
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "callback is not valid"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "internalCallback":Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback;
    .end local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .end local p1    # "callback":Landroid/telephony/satellite/SatelliteDisallowedReasonsCallback;
    throw v2

    .line 3006
    .restart local v0    # "internalCallback":Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback;
    .restart local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .restart local p1    # "callback":Landroid/telephony/satellite/SatelliteDisallowedReasonsCallback;
    :cond_25
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Telephony service is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "internalCallback":Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback;
    .end local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .end local p1    # "callback":Landroid/telephony/satellite/SatelliteDisallowedReasonsCallback;
    throw v2
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_2d} :catch_2d

    .line 3008
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local v0    # "internalCallback":Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback;
    .restart local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .restart local p1    # "callback":Landroid/telephony/satellite/SatelliteDisallowedReasonsCallback;
    :catch_2d
    move-exception v1

    .line 3009
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterForSatelliteDisallowedReasonsChanged() RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3010
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 3012
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_48
    return-void
.end method

.method public blacklist unregisterForSelectedNbIotSatelliteSubscriptionChanged(Landroid/telephony/satellite/SelectedNbIotSatelliteSubscriptionCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/telephony/satellite/SelectedNbIotSatelliteSubscriptionCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2638
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2639
    sget-object v0, Landroid/telephony/satellite/SatelliteManager;->sSelectedNbIotSatelliteSubscriptionCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2640
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback;

    .line 2643
    .local v0, "internalCallback":Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback;
    :try_start_b
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2644
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_1e

    .line 2645
    if-eqz v0, :cond_17

    .line 2646
    invoke-interface {v1, v0}, Lcom/android/internal/telephony/ITelephony;->unregisterForSelectedNbIotSatelliteSubscriptionChanged(Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback;)V

    goto :goto_1d

    .line 2649
    :cond_17
    const-string/jumbo v2, "unregisterForSelectedNbIotSatelliteSubscriptionChanged: No internal callback."

    invoke-static {v2}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2659
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_1d
    goto :goto_41

    .line 2653
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_1e
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Telephony service is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "internalCallback":Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback;
    .end local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .end local p1    # "callback":Landroid/telephony/satellite/SelectedNbIotSatelliteSubscriptionCallback;
    throw v2
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_26} :catch_26

    .line 2655
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local v0    # "internalCallback":Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback;
    .restart local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .restart local p1    # "callback":Landroid/telephony/satellite/SelectedNbIotSatelliteSubscriptionCallback;
    :catch_26
    move-exception v1

    .line 2656
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterForSelectedNbIotSatelliteSubscriptionChanged() RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 2658
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2660
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_41
    return-void
.end method

.method public blacklist unregisterForSupportedStateChanged(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 3348
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3349
    sget-object v0, Landroid/telephony/satellite/SatelliteManager;->sSatelliteSupportedStateCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3350
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IBooleanConsumer;

    .line 3353
    .local v0, "internalCallback":Lcom/android/internal/telephony/IBooleanConsumer;
    :try_start_b
    invoke-static {}, Landroid/telephony/satellite/SatelliteManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3354
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_1e

    .line 3355
    if-eqz v0, :cond_17

    .line 3356
    invoke-interface {v1, v0}, Lcom/android/internal/telephony/ITelephony;->unregisterForSatelliteSupportedStateChanged(Lcom/android/internal/telephony/IBooleanConsumer;)V

    goto :goto_1d

    .line 3358
    :cond_17
    const-string/jumbo v2, "unregisterForSupportedStateChanged: No internal callback."

    invoke-static {v2}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3366
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_1d
    goto :goto_42

    .line 3361
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_1e
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "telephony service is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "internalCallback":Lcom/android/internal/telephony/IBooleanConsumer;
    .end local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .end local p1    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    throw v2
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_27} :catch_27

    .line 3363
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local v0    # "internalCallback":Lcom/android/internal/telephony/IBooleanConsumer;
    .restart local p0    # "this":Landroid/telephony/satellite/SatelliteManager;
    .restart local p1    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    :catch_27
    move-exception v1

    .line 3364
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterForSupportedStateChanged() RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/satellite/SatelliteManager;->loge(Ljava/lang/String;)V

    .line 3365
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 3367
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_42
    return-void
.end method

.method public whitelist unregisterStateChangeListener(Landroid/telephony/satellite/SatelliteStateChangeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/telephony/satellite/SatelliteStateChangeListener;

    .line 897
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_22

    .line 901
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyRegistryManager;

    iput-object v0, p0, Landroid/telephony/satellite/SatelliteManager;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    .line 902
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    if-eqz v0, :cond_1a

    .line 905
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyRegistryManager;->removeSatelliteStateChangeListener(Landroid/telephony/satellite/SatelliteStateChangeListener;)V

    .line 906
    return-void

    .line 903
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Telephony registry service is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 898
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Telephony service is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
