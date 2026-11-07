.class public Landroid/net/ConnectivityManager;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ConnectivityManager$LegacyRequest;,
        Landroid/net/ConnectivityManager$NetworkCallback;,
        Landroid/net/ConnectivityManager$CallbackHandler;,
        Landroid/net/ConnectivityManager$PacketKeepalive;,
        Landroid/net/ConnectivityManager$PacketKeepaliveCallback;,
        Landroid/net/ConnectivityManager$OnNetworkActiveListener;,
        Landroid/net/ConnectivityManager$OnStartTetheringCallback;,
        Landroid/net/ConnectivityManager$OnTetheringEventCallback;,
        Landroid/net/ConnectivityManager$OnTetheringEntitlementResultListener;,
        Landroid/net/ConnectivityManager$TooManyRequestsException;,
        Landroid/net/ConnectivityManager$NetworkCallbackMethodsHolder;,
        Landroid/net/ConnectivityManager$NetworkCallbackMethod;,
        Landroid/net/ConnectivityManager$RestrictBackgroundStatus;,
        Landroid/net/ConnectivityManager$MultipathPreference;,
        Landroid/net/ConnectivityManager$Errors;,
        Landroid/net/ConnectivityManager$EntitlementResultCode;,
        Landroid/net/ConnectivityManager$ProfileNetworkPreferencePolicy;,
        Landroid/net/ConnectivityManager$MockHelpers;,
        Landroid/net/ConnectivityManager$ConnectivityManagerFeature;,
        Landroid/net/ConnectivityManager$FirewallRule;,
        Landroid/net/ConnectivityManager$FirewallChain;,
        Landroid/net/ConnectivityManager$BlockedReason;,
        Landroid/net/ConnectivityManager$LegacyNetworkType;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_BACKGROUND_DATA_SETTING_CHANGED:Ljava/lang/String; = "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_CAPTIVE_PORTAL_SIGN_IN:Ljava/lang/String; = "android.net.conn.CAPTIVE_PORTAL"

.field public static final greylist-max-o ACTION_CAPTIVE_PORTAL_TEST_COMPLETED:Ljava/lang/String; = "android.net.conn.CAPTIVE_PORTAL_TEST_COMPLETED"

.field public static final blacklist ACTION_CLEAR_DNS_CACHE:Ljava/lang/String; = "android.net.action.CLEAR_DNS_CACHE"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist-max-o ACTION_DATA_ACTIVITY_CHANGE:Ljava/lang/String; = "android.net.conn.DATA_ACTIVITY_CHANGE"

.field public static final greylist-max-o ACTION_PROMPT_LOST_VALIDATION:Ljava/lang/String; = "android.net.action.PROMPT_LOST_VALIDATION"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist ACTION_PROMPT_PARTIAL_CONNECTIVITY:Ljava/lang/String; = "android.net.action.PROMPT_PARTIAL_CONNECTIVITY"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist-max-o ACTION_PROMPT_UNVALIDATED:Ljava/lang/String; = "android.net.action.PROMPT_UNVALIDATED"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist ACTION_RESTRICT_BACKGROUND_CHANGED:Ljava/lang/String; = "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

.field public static final greylist-max-r ACTION_TETHER_STATE_CHANGED:Ljava/lang/String; = "android.net.conn.TETHER_STATE_CHANGED"

.field private static final greylist-max-o ALREADY_UNREGISTERED:Landroid/net/NetworkRequest;

.field public static final blacklist BLOCKED_METERED_REASON_ADMIN_DISABLED:I = 0x40000
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist BLOCKED_METERED_REASON_DATA_SAVER:I = 0x10000
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist BLOCKED_METERED_REASON_MASK:I = -0x10000
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist BLOCKED_METERED_REASON_USER_RESTRICTED:I = 0x20000
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist BLOCKED_REASON_APP_BACKGROUND:I = 0x40
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist BLOCKED_REASON_APP_STANDBY:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist BLOCKED_REASON_BATTERY_SAVER:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist BLOCKED_REASON_DOZE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist BLOCKED_REASON_LOCKDOWN_VPN:I = 0x10
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist BLOCKED_REASON_LOW_POWER_STANDBY:I = 0x20
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist BLOCKED_REASON_NETWORK_RESTRICTED:I = 0x100
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist BLOCKED_REASON_NONE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist BLOCKED_REASON_OEM_DENY:I = 0x80
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist BLOCKED_REASON_RESTRICTED_MODE:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist-max-o CALLBACK_AVAILABLE:I = 0x2

.field public static final blacklist CALLBACK_BLK_CHANGED:I = 0xb

.field public static final greylist-max-o CALLBACK_CAP_CHANGED:I = 0x6

.field public static final greylist-max-o CALLBACK_IP_CHANGED:I = 0x7

.field public static final blacklist CALLBACK_LOCAL_NETWORK_INFO_CHANGED:I = 0xc

.field public static final greylist-max-o CALLBACK_LOSING:I = 0x3

.field public static final greylist-max-o CALLBACK_LOST:I = 0x4

.field public static final greylist-max-o CALLBACK_PRECHECK:I = 0x1

.field public static final blacklist CALLBACK_RESERVED:I = 0xd

.field public static final greylist-max-o CALLBACK_RESUMED:I = 0xa

.field public static final greylist-max-o CALLBACK_SUSPENDED:I = 0x9

.field private static final blacklist CALLBACK_TRANSITIVE_CALLS_ONLY:I = 0x0

.field public static final greylist-max-o CALLBACK_UNAVAIL:I = 0x5

.field public static final whitelist CONNECTIVITY_ACTION:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final blacklist DEBUG:Z

.field public static final whitelist DEFAULT_NETWORK_PREFERENCE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final blacklist DEPRECATED_PHONE_CONSTANT_APN_ALREADY_ACTIVE:I = 0x0

.field private static final blacklist DEPRECATED_PHONE_CONSTANT_APN_REQUEST_FAILED:I = 0x3

.field private static final blacklist DEPRECATED_PHONE_CONSTANT_APN_REQUEST_STARTED:I = 0x1

.field private static final greylist-max-o EXPIRE_LEGACY_REQUEST:I = 0x8

.field public static final greylist-max-o EXTRA_ACTIVE_LOCAL_ONLY:Ljava/lang/String; = "android.net.extra.ACTIVE_LOCAL_ONLY"

.field public static final greylist-max-r EXTRA_ACTIVE_TETHER:Ljava/lang/String; = "tetherArray"

.field public static final greylist-max-o EXTRA_ADD_TETHER_TYPE:Ljava/lang/String; = "extraAddTetherType"

.field public static final greylist-max-r EXTRA_AVAILABLE_TETHER:Ljava/lang/String; = "availableArray"

.field public static final whitelist EXTRA_CAPTIVE_PORTAL:Ljava/lang/String; = "android.net.extra.CAPTIVE_PORTAL"

.field public static final whitelist EXTRA_CAPTIVE_PORTAL_PROBE_SPEC:Ljava/lang/String; = "android.net.extra.CAPTIVE_PORTAL_PROBE_SPEC"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_CAPTIVE_PORTAL_URL:Ljava/lang/String; = "android.net.extra.CAPTIVE_PORTAL_URL"

.field public static final whitelist EXTRA_CAPTIVE_PORTAL_USER_AGENT:Ljava/lang/String; = "android.net.extra.CAPTIVE_PORTAL_USER_AGENT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_DEVICE_TYPE:Ljava/lang/String; = "deviceType"

.field public static final greylist-max-r EXTRA_ERRORED_TETHER:Ljava/lang/String; = "erroredArray"

.field public static final whitelist EXTRA_EXTRA_INFO:Ljava/lang/String; = "extraInfo"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_INET_CONDITION:Ljava/lang/String; = "inetCondition"

.field public static final greylist-max-o EXTRA_IS_ACTIVE:Ljava/lang/String; = "isActive"

.field public static final greylist-max-o EXTRA_IS_CAPTIVE_PORTAL:Ljava/lang/String; = "captivePortal"

.field public static final whitelist EXTRA_IS_FAILOVER:Ljava/lang/String; = "isFailover"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_NETWORK:Ljava/lang/String; = "android.net.extra.NETWORK"

.field public static final whitelist EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_NETWORK_REQUEST:Ljava/lang/String; = "android.net.extra.NETWORK_REQUEST"

.field public static final whitelist EXTRA_NETWORK_TYPE:Ljava/lang/String; = "networkType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_NO_CONNECTIVITY:Ljava/lang/String; = "noConnectivity"

.field public static final whitelist EXTRA_OTHER_NETWORK_INFO:Ljava/lang/String; = "otherNetwork"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_PROVISION_CALLBACK:Ljava/lang/String; = "extraProvisionCallback"

.field public static final greylist-max-o EXTRA_REALTIME_NS:Ljava/lang/String; = "tsNanos"

.field public static final whitelist EXTRA_REASON:Ljava/lang/String; = "reason"

.field public static final greylist-max-o EXTRA_REM_TETHER_TYPE:Ljava/lang/String; = "extraRemTetherType"

.field public static final greylist-max-o EXTRA_RUN_PROVISION:Ljava/lang/String; = "extraRunProvision"

.field public static final greylist-max-o EXTRA_SET_ALARM:Ljava/lang/String; = "extraSetAlarm"

.field public static final blacklist FEATURE_QUEUE_NETWORK_AGENT_EVENTS_IN_SYSTEM_SERVER:J = 0x2L

.field public static final blacklist FEATURE_USE_DECLARED_METHODS_FOR_CALLBACKS:J = 0x1L

.field public static final blacklist FIREWALL_CHAIN_BACKGROUND:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist FIREWALL_CHAIN_DOZABLE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist FIREWALL_CHAIN_LOW_POWER_STANDBY:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist FIREWALL_CHAIN_METERED_ALLOW:I = 0xa
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist FIREWALL_CHAIN_METERED_DENY_ADMIN:I = 0xc
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist FIREWALL_CHAIN_METERED_DENY_USER:I = 0xb
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist FIREWALL_CHAIN_OEM_DENY_1:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist FIREWALL_CHAIN_OEM_DENY_2:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist FIREWALL_CHAIN_OEM_DENY_3:I = 0x9
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist FIREWALL_CHAIN_POWERSAVE:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist FIREWALL_CHAIN_RESTRICTED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist FIREWALL_CHAIN_STANDBY:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist FIREWALL_RULE_ALLOW:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist FIREWALL_RULE_DEFAULT:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist FIREWALL_RULE_DENY:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist INET_CONDITION_ACTION:Ljava/lang/String; = "android.net.conn.INET_CONDITION_ACTION"

.field public static final greylist-max-o MAX_NETWORK_TYPE:I = 0x12

.field public static final greylist-max-o MAX_RADIO_TYPE:I = 0x12

.field private static final greylist-max-o MIN_NETWORK_TYPE:I = 0x0

.field public static final whitelist MULTIPATH_PREFERENCE_HANDOVER:I = 0x1

.field public static final whitelist MULTIPATH_PREFERENCE_PERFORMANCE:I = 0x4

.field public static final whitelist MULTIPATH_PREFERENCE_RELIABILITY:I = 0x2

.field public static final greylist-max-o MULTIPATH_PREFERENCE_UNMETERED:I = 0x7

.field public static final greylist-max-o NETID_UNSET:I = 0x0

.field public static final blacklist PROFILE_NETWORK_PREFERENCE_DEFAULT:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist PROFILE_NETWORK_PREFERENCE_ENTERPRISE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist PROFILE_NETWORK_PREFERENCE_ENTERPRISE_BLOCKING:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist PROFILE_NETWORK_PREFERENCE_ENTERPRISE_NO_FALLBACK:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist-max-o REQUEST_ID_UNSET:I = 0x0

.field public static final whitelist RESTRICT_BACKGROUND_STATUS_DISABLED:I = 0x1

.field public static final whitelist RESTRICT_BACKGROUND_STATUS_ENABLED:I = 0x3

.field public static final whitelist RESTRICT_BACKGROUND_STATUS_WHITELISTED:I = 0x2

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ConnectivityManager"

.field public static final whitelist TETHERING_BLUETOOTH:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o TETHERING_INVALID:I = -0x1

.field public static final whitelist TETHERING_USB:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TETHERING_WIFI:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist TETHERING_WIFI_P2P:I = 0x3

.field public static final blacklist TETHER_ERROR_DHCPSERVER_ERROR:I = 0xc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o TETHER_ERROR_DISABLE_NAT_ERROR:I = 0x9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o TETHER_ERROR_ENABLE_NAT_ERROR:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TETHER_ERROR_ENTITLEMENT_UNKONWN:I = 0xd
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o TETHER_ERROR_IFACE_CFG_ERROR:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o TETHER_ERROR_MASTER_ERROR:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TETHER_ERROR_NO_ERROR:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TETHER_ERROR_PROVISION_FAILED:I = 0xb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o TETHER_ERROR_SERVICE_UNAVAIL:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o TETHER_ERROR_TETHER_IFACE_ERROR:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o TETHER_ERROR_UNAVAIL_IFACE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o TETHER_ERROR_UNKNOWN_IFACE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o TETHER_ERROR_UNSUPPORTED:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o TETHER_ERROR_UNTETHER_IFACE_ERROR:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final blacklist TUN_INTF_NETID_RANGE:I = 0x400

.field private static final blacklist TUN_INTF_NETID_START:I = 0xfc00

.field public static final whitelist TYPE_BLUETOOTH:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TYPE_DUMMY:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TYPE_ETHERNET:I = 0x9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TYPE_MOBILE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-p TYPE_MOBILE_CBS:I = 0xc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TYPE_MOBILE_DUN:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-p TYPE_MOBILE_EMERGENCY:I = 0xf
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-p TYPE_MOBILE_FOTA:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TYPE_MOBILE_HIPRI:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist TYPE_MOBILE_IA:I = 0xe
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist TYPE_MOBILE_IMS:I = 0xb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TYPE_MOBILE_MMS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TYPE_MOBILE_SUPL:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TYPE_NONE:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TYPE_PROXY:I = 0x10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TYPE_TEST:I = 0x12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TYPE_VPN:I = 0x11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TYPE_WIFI:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TYPE_WIFI_P2P:I = 0xd
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TYPE_WIMAX:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static greylist-max-o sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

.field private static final greylist-max-o sCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/NetworkRequest;",
            "Landroid/net/ConnectivityManager$NetworkCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist-max-o sInstance:Landroid/net/ConnectivityManager;

.field private static final greylist-max-r sLegacyRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/NetworkCapabilities;",
            "Landroid/net/ConnectivityManager$LegacyRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sLegacyTypeToCapability:Landroid/util/SparseIntArray;

.field private static final greylist-max-o sLegacyTypeToTransport:Landroid/util/SparseIntArray;

.field private static final blacklist sMethodFlagsCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/net/ConnectivityManager$NetworkCallback;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private blacklist mEnabledConnectivityManagerFeatures:Ljava/lang/Long;

.field private final blacklist mEnabledConnectivityManagerFeaturesLock:Ljava/lang/Object;

.field private final greylist-max-o mNetworkActivityListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/net/ConnectivityManager$OnNetworkActiveListener;",
            "Landroid/net/connectivity/android/net/INetworkActivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mQosCallbackConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/connectivity/android/net/QosCallbackConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-p mService:Landroid/net/IConnectivityManager;

.field private final blacklist mTetheringEventCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/net/ConnectivityManager$OnTetheringEventCallback;",
            "Landroid/net/TetheringManager$TetheringEventCallback;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTetheringManager:Landroid/net/TetheringManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/net/ConnectivityManager;)Landroid/net/IConnectivityManager;
    .registers 1

    iget-object p0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mexpireRequest(Landroid/net/ConnectivityManager;Landroid/net/NetworkCapabilities;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/ConnectivityManager;->expireRequest(Landroid/net/NetworkCapabilities;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetALREADY_UNREGISTERED()Landroid/net/NetworkRequest;
    .registers 1

    sget-object v0, Landroid/net/ConnectivityManager;->ALREADY_UNREGISTERED:Landroid/net/NetworkRequest;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsCallbacks()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Landroid/net/ConnectivityManager;->sCallbacks:Ljava/util/HashMap;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsInstance()Landroid/net/ConnectivityManager;
    .registers 1

    sget-object v0, Landroid/net/ConnectivityManager;->sInstance:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 12

    .line 128
    const-string v0, "ConnectivityManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/net/ConnectivityManager;->DEBUG:Z

    .line 825
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 826
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    sput-object v0, Landroid/net/ConnectivityManager;->ALREADY_UNREGISTERED:Landroid/net/NetworkRequest;

    .line 1237
    new-instance v0, Landroid/util/LruCache;

    const/16 v2, 0x64

    invoke-direct {v0, v2}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Landroid/net/ConnectivityManager;->sMethodFlagsCache:Landroid/util/LruCache;

    .line 2269
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    .line 2339
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToTransport:Landroid/util/SparseIntArray;

    .line 2341
    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToTransport:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2342
    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToTransport:Landroid/util/SparseIntArray;

    const/16 v3, 0xc

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2343
    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToTransport:Landroid/util/SparseIntArray;

    const/4 v4, 0x4

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2344
    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToTransport:Landroid/util/SparseIntArray;

    const/16 v5, 0xa

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2345
    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToTransport:Landroid/util/SparseIntArray;

    const/4 v6, 0x5

    invoke-virtual {v0, v6, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2346
    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToTransport:Landroid/util/SparseIntArray;

    const/16 v7, 0xb

    invoke-virtual {v0, v7, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2347
    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToTransport:Landroid/util/SparseIntArray;

    const/4 v8, 0x2

    invoke-virtual {v0, v8, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2348
    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToTransport:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2349
    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToTransport:Landroid/util/SparseIntArray;

    const/4 v9, 0x1

    invoke-virtual {v0, v9, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2350
    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToTransport:Landroid/util/SparseIntArray;

    const/16 v10, 0xd

    invoke-virtual {v0, v10, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2351
    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToTransport:Landroid/util/SparseIntArray;

    const/4 v11, 0x7

    invoke-virtual {v0, v11, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2352
    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToTransport:Landroid/util/SparseIntArray;

    const/16 v11, 0x9

    invoke-virtual {v0, v11, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2355
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToCapability:Landroid/util/SparseIntArray;

    .line 2357
    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToCapability:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2358
    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToCapability:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2359
    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToCapability:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2360
    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToCapability:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v7, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2361
    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToCapability:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v8, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2362
    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToCapability:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2363
    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToCapability:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v10, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 4730
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/net/ConnectivityManager;->sCallbacks:Ljava/util/HashMap;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/net/IConnectivityManager;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/IConnectivityManager;

    .line 2935
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/net/ConnectivityManager;-><init>(Landroid/content/Context;Landroid/net/IConnectivityManager;Z)V

    .line 2936
    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Landroid/net/IConnectivityManager;Z)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/IConnectivityManager;
    .param p3, "newStatic"    # Z

    .line 2938
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1240
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/ConnectivityManager;->mEnabledConnectivityManagerFeaturesLock:Ljava/lang/Object;

    .line 1244
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/ConnectivityManager;->mEnabledConnectivityManagerFeatures:Ljava/lang/Long;

    .line 2860
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/net/ConnectivityManager;->mNetworkActivityListeners:Landroid/util/ArrayMap;

    .line 3290
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/net/ConnectivityManager;->mTetheringEventCallbacks:Landroid/util/ArrayMap;

    .line 6167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/ConnectivityManager;->mQosCallbackConnections:Ljava/util/List;

    .line 2939
    const-string v0, "missing context"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/net/ConnectivityManager;->mContext:Landroid/content/Context;

    .line 2940
    const-string v0, "missing IConnectivityManager"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IConnectivityManager;

    iput-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    .line 2943
    sget-object v0, Landroid/net/ConnectivityManager;->sInstance:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_4f

    if-eqz p3, :cond_4f

    .line 2944
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2950
    .local v0, "appContext":Landroid/content/Context;
    new-instance v1, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_48

    move-object v2, v0

    goto :goto_49

    :cond_48
    move-object v2, p1

    :goto_49
    const/4 v3, 0x0

    invoke-direct {v1, v2, p2, v3}, Landroid/net/ConnectivityManager;-><init>(Landroid/content/Context;Landroid/net/IConnectivityManager;Z)V

    sput-object v1, Landroid/net/ConnectivityManager;->sInstance:Landroid/net/ConnectivityManager;

    .line 2953
    .end local v0    # "appContext":Landroid/content/Context;
    :cond_4f
    return-void
.end method

.method private static blacklist checkAndNoteWriteSettingsOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingAttributionTag"    # Ljava/lang/String;
    .param p4, "throwException"    # Z

    .line 2981
    invoke-static {p0, p1, p2, p3, p4}, Landroid/provider/Settings;->checkAndNoteWriteSettingsOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static greylist-max-o checkCallbackNotNull(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .registers 2
    .param p0, "callback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .line 5258
    const-string v0, "null NetworkCallback"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5259
    return-void
.end method

.method private greylist-max-o checkLegacyRoutingApiAccess()V
    .registers 2

    .line 5984
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Landroid/net/ConnectivityManager;->unsupportedStartingFrom(I)V

    .line 5985
    return-void
.end method

.method private static greylist-max-o checkPendingIntentNotNull(Landroid/app/PendingIntent;)V
    .registers 2
    .param p0, "intent"    # Landroid/app/PendingIntent;

    .line 5254
    const-string v0, "PendingIntent cannot be null."

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5255
    return-void
.end method

.method private static greylist-max-o checkTimeout(I)V
    .registers 3
    .param p0, "timeoutMs"    # I

    .line 5262
    if-lez p0, :cond_3

    .line 5265
    return-void

    .line 5263
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeoutMs must be strictly positive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o convertServiceException(Landroid/os/ServiceSpecificException;)Ljava/lang/RuntimeException;
    .registers 3
    .param p0, "e"    # Landroid/os/ServiceSpecificException;

    .line 4493
    iget v0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch v0, :pswitch_data_2c

    .line 4497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown service error code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectivityManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4498
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    .line 4495
    :pswitch_25
    new-instance v0, Landroid/net/ConnectivityManager$TooManyRequestsException;

    invoke-direct {v0}, Landroid/net/ConnectivityManager$TooManyRequestsException;-><init>()V

    return-object v0

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_25
    .end packed-switch
.end method

.method private blacklist createInvalidFd()Landroid/os/ParcelFileDescriptor;
    .registers 3

    .line 2590
    const/4 v0, -0x1

    .line 2591
    .local v0, "invalidFd":I
    const/4 v1, -0x1

    invoke-static {v1}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o expireRequest(Landroid/net/NetworkCapabilities;I)V
    .registers 7
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;
    .param p2, "sequenceNum"    # I

    .line 2287
    const/4 v0, -0x1

    .line 2288
    .local v0, "ourSeqNum":I
    sget-object v1, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    monitor-enter v1

    .line 2289
    :try_start_4
    sget-object v2, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager$LegacyRequest;

    .line 2290
    .local v2, "l":Landroid/net/ConnectivityManager$LegacyRequest;
    if-nez v2, :cond_10

    monitor-exit v1

    return-void

    .line 2291
    :cond_10
    iget v3, v2, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    move v0, v3

    .line 2292
    iget v3, v2, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    if-ne v3, p2, :cond_1a

    invoke-direct {p0, p1}, Landroid/net/ConnectivityManager;->removeRequestForFeature(Landroid/net/NetworkCapabilities;)Z

    .line 2293
    .end local v2    # "l":Landroid/net/ConnectivityManager$LegacyRequest;
    :cond_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_3e

    .line 2294
    const-string v1, "ConnectivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expireRequest with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2295
    return-void

    .line 2293
    :catchall_3e
    move-exception v2

    :try_start_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v2
.end method

.method private greylist-max-o findRequestForFeature(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkRequest;
    .registers 5
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;

    .line 2273
    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    monitor-enter v0

    .line 2274
    :try_start_3
    sget-object v1, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager$LegacyRequest;

    .line 2275
    .local v1, "l":Landroid/net/ConnectivityManager$LegacyRequest;
    if-eqz v1, :cond_11

    iget-object v2, v1, Landroid/net/ConnectivityManager$LegacyRequest;->networkRequest:Landroid/net/NetworkRequest;

    monitor-exit v0

    return-object v2

    .line 2276
    .end local v1    # "l":Landroid/net/ConnectivityManager$LegacyRequest;
    :cond_11
    monitor-exit v0

    .line 2277
    const/4 v0, 0x0

    return-object v0

    .line 2276
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public static greylist from(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 2958
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private static blacklist getCallbackIdsCallingThisMethod(Ljava/lang/reflect/Method;)I
    .registers 8
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 4864
    sget-object v0, Landroid/net/ConnectivityManager$NetworkCallbackMethodsHolder;->NETWORK_CB_METHODS:[Landroid/net/ConnectivityManager$NetworkCallbackMethod;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_28

    aget-object v4, v0, v3

    .line 4865
    .local v4, "baseMethod":Landroid/net/ConnectivityManager$NetworkCallbackMethod;
    iget-object v5, v4, Landroid/net/ConnectivityManager$NetworkCallbackMethod;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 4866
    goto :goto_25

    .line 4868
    :cond_16
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 4880
    .local v5, "methodParams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v6, v4, Landroid/net/ConnectivityManager$NetworkCallbackMethod;->mParameterTypes:[Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 4881
    iget v0, v4, Landroid/net/ConnectivityManager$NetworkCallbackMethod;->mCallbacksCallingThisMethod:I

    return v0

    .line 4864
    .end local v4    # "baseMethod":Landroid/net/ConnectivityManager$NetworkCallbackMethod;
    .end local v5    # "methodParams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_25
    :goto_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 4884
    :cond_28
    return v2
.end method

.method public static greylist-max-o getCallbackName(I)Ljava/lang/String;
    .registers 2
    .param p0, "whichCallback"    # I

    .line 4534
    packed-switch p0, :pswitch_data_32

    .line 4550
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4548
    :pswitch_8
    const-string v0, "CALLBACK_RESERVED"

    return-object v0

    .line 4547
    :pswitch_b
    const-string v0, "CALLBACK_LOCAL_NETWORK_INFO_CHANGED"

    return-object v0

    .line 4546
    :pswitch_e
    const-string v0, "CALLBACK_BLK_CHANGED"

    return-object v0

    .line 4545
    :pswitch_11
    const-string v0, "CALLBACK_RESUMED"

    return-object v0

    .line 4544
    :pswitch_14
    const-string v0, "CALLBACK_SUSPENDED"

    return-object v0

    .line 4543
    :pswitch_17
    const-string v0, "EXPIRE_LEGACY_REQUEST"

    return-object v0

    .line 4542
    :pswitch_1a
    const-string v0, "CALLBACK_IP_CHANGED"

    return-object v0

    .line 4541
    :pswitch_1d
    const-string v0, "CALLBACK_CAP_CHANGED"

    return-object v0

    .line 4540
    :pswitch_20
    const-string v0, "CALLBACK_UNAVAIL"

    return-object v0

    .line 4539
    :pswitch_23
    const-string v0, "CALLBACK_LOST"

    return-object v0

    .line 4538
    :pswitch_26
    const-string v0, "CALLBACK_LOSING"

    return-object v0

    .line 4537
    :pswitch_29
    const-string v0, "CALLBACK_AVAILABLE"

    return-object v0

    .line 4536
    :pswitch_2c
    const-string v0, "CALLBACK_PRECHECK"

    return-object v0

    .line 4535
    :pswitch_2f
    const-string v0, "CALLBACK_TRANSITIVE_CALLS_ONLY"

    return-object v0

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private static blacklist getDeclaredMethodsFlag(Ljava/lang/Class;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/net/ConnectivityManager$NetworkCallback;",
            ">;)I"
        }
    .end annotation

    .line 4812
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/net/ConnectivityManager$NetworkCallback;>;"
    sget-object v0, Landroid/net/ConnectivityManager;->sMethodFlagsCache:Landroid/util/LruCache;

    invoke-virtual {v0, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 4815
    .local v0, "cachedFlags":Ljava/lang/Integer;
    if-eqz v0, :cond_f

    .line 4816
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 4819
    :cond_f
    const/4 v1, 0x0

    .line 4822
    .local v1, "flag":I
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v3, :cond_30

    aget-object v5, v2, v4

    .line 4823
    .local v5, "classMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    .line 4824
    .local v6, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v7, Landroid/net/ConnectivityManager$NetworkCallback;

    if-ne v6, v7, :cond_23

    .line 4826
    goto :goto_2d

    .line 4828
    :cond_23
    const-class v7, Ljava/lang/Object;

    if-ne v6, v7, :cond_28

    .line 4830
    goto :goto_2d

    .line 4832
    :cond_28
    invoke-static {v5}, Landroid/net/ConnectivityManager;->getCallbackIdsCallingThisMethod(Ljava/lang/reflect/Method;)I

    move-result v7

    or-int/2addr v1, v7

    .line 4822
    .end local v5    # "classMethod":Ljava/lang/reflect/Method;
    .end local v6    # "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 4835
    :cond_30
    if-nez v1, :cond_33

    .line 4851
    const/4 v1, -0x1

    .line 4853
    :cond_33
    sget-object v2, Landroid/net/ConnectivityManager;->sMethodFlagsCache:Landroid/util/LruCache;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4854
    return v1
.end method

.method private greylist-max-o getDefaultHandler()Landroid/net/ConnectivityManager$CallbackHandler;
    .registers 4

    .line 4722
    sget-object v0, Landroid/net/ConnectivityManager;->sCallbacks:Ljava/util/HashMap;

    monitor-enter v0

    .line 4723
    :try_start_3
    sget-object v1, Landroid/net/ConnectivityManager;->sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

    if-nez v1, :cond_12

    .line 4724
    new-instance v1, Landroid/net/ConnectivityManager$CallbackHandler;

    invoke-static {}, Landroid/net/ConnectivityThread;->getInstanceLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/ConnectivityManager$CallbackHandler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Landroid/net/ConnectivityManager;->sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

    .line 4726
    :cond_12
    sget-object v1, Landroid/net/ConnectivityManager;->sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

    monitor-exit v0

    return-object v1

    .line 4727
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private static greylist getInstance()Landroid/net/ConnectivityManager;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3003
    invoke-static {}, Landroid/net/ConnectivityManager;->getInstanceOrNull()Landroid/net/ConnectivityManager;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 3006
    invoke-static {}, Landroid/net/ConnectivityManager;->getInstanceOrNull()Landroid/net/ConnectivityManager;

    move-result-object v0

    return-object v0

    .line 3004
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No ConnectivityManager yet constructed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static greylist-max-o getInstanceOrNull()Landroid/net/ConnectivityManager;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2992
    sget-object v0, Landroid/net/ConnectivityManager;->sInstance:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public static blacklist getIpSecNetIdRange()Landroid/util/Range;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 6515
    new-instance v0, Landroid/util/Range;

    const v1, 0xfc00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0xffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public static greylist-max-r getNetworkTypeName(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1301
    packed-switch p0, :pswitch_data_44

    .line 1343
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1341
    :pswitch_8
    const-string v0, "TEST"

    return-object v0

    .line 1339
    :pswitch_b
    const-string v0, "VPN"

    return-object v0

    .line 1337
    :pswitch_e
    const-string v0, "PROXY"

    return-object v0

    .line 1335
    :pswitch_11
    const-string v0, "MOBILE_EMERGENCY"

    return-object v0

    .line 1333
    :pswitch_14
    const-string v0, "MOBILE_IA"

    return-object v0

    .line 1331
    :pswitch_17
    const-string v0, "WIFI_P2P"

    return-object v0

    .line 1329
    :pswitch_1a
    const-string v0, "MOBILE_CBS"

    return-object v0

    .line 1327
    :pswitch_1d
    const-string v0, "MOBILE_IMS"

    return-object v0

    .line 1325
    :pswitch_20
    const-string v0, "MOBILE_FOTA"

    return-object v0

    .line 1323
    :pswitch_23
    const-string v0, "ETHERNET"

    return-object v0

    .line 1321
    :pswitch_26
    const-string v0, "DUMMY"

    return-object v0

    .line 1319
    :pswitch_29
    const-string v0, "BLUETOOTH"

    return-object v0

    .line 1317
    :pswitch_2c
    const-string v0, "WIMAX"

    return-object v0

    .line 1315
    :pswitch_2f
    const-string v0, "MOBILE_HIPRI"

    return-object v0

    .line 1313
    :pswitch_32
    const-string v0, "MOBILE_DUN"

    return-object v0

    .line 1311
    :pswitch_35
    const-string v0, "MOBILE_SUPL"

    return-object v0

    .line 1309
    :pswitch_38
    const-string v0, "MOBILE_MMS"

    return-object v0

    .line 1307
    :pswitch_3b
    const-string v0, "WIFI"

    return-object v0

    .line 1305
    :pswitch_3e
    const-string v0, "MOBILE"

    return-object v0

    .line 1303
    :pswitch_41
    const-string v0, "NONE"

    return-object v0

    :pswitch_data_44
    .packed-switch -0x1
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static whitelist getProcessDefaultNetwork()Landroid/net/Network;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5958
    invoke-static {}, Landroid/net/NetworkUtils;->getBoundNetworkForProcess()I

    move-result v0

    .line 5959
    .local v0, "netId":I
    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    .line 5960
    :cond_8
    new-instance v1, Landroid/net/Network;

    invoke-direct {v1, v0}, Landroid/net/Network;-><init>(I)V

    return-object v1
.end method

.method private blacklist getQosCallbackConnection(Landroid/net/QosCallback;)Landroid/net/connectivity/android/net/QosCallbackConnection;
    .registers 5
    .param p1, "callback"    # Landroid/net/QosCallback;

    .line 6272
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mQosCallbackConnections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/android/net/QosCallbackConnection;

    .line 6274
    .local v1, "connection":Landroid/net/connectivity/android/net/QosCallbackConnection;
    invoke-virtual {v1}, Landroid/net/connectivity/android/net/QosCallbackConnection;->getCallback()Landroid/net/QosCallback;

    move-result-object v2

    if-ne v2, p1, :cond_19

    .line 6275
    return-object v1

    .line 6277
    .end local v1    # "connection":Landroid/net/connectivity/android/net/QosCallbackConnection;
    :cond_19
    goto :goto_6

    .line 6278
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getTetheringManager()Landroid/net/TetheringManager;
    .registers 4

    .line 1269
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mTetheringEventCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1270
    :try_start_3
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mTetheringManager:Landroid/net/TetheringManager;

    if-nez v1, :cond_13

    .line 1271
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mContext:Landroid/content/Context;

    const-class v2, Landroid/net/TetheringManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/TetheringManager;

    iput-object v1, p0, Landroid/net/ConnectivityManager;->mTetheringManager:Landroid/net/TetheringManager;

    .line 1273
    :cond_13
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mTetheringManager:Landroid/net/TetheringManager;

    monitor-exit v0

    return-object v1

    .line 1274
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private static blacklist getUidRangeArray(Ljava/util/Collection;)[Landroid/net/UidRange;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;)[",
            "Landroid/net/UidRange;"
        }
    .end annotation

    .line 1577
    .local p0, "ranges":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1578
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Landroid/net/UidRange;

    .line 1579
    .local v0, "rangesArray":[Landroid/net/UidRange;
    const/4 v1, 0x0

    .line 1580
    .local v1, "index":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Range;

    .line 1581
    .local v3, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "index":I
    .local v4, "index":I
    new-instance v5, Landroid/net/UidRange;

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/net/UidRange;-><init>(II)V

    aput-object v5, v0, v1

    .line 1582
    .end local v3    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    move v1, v4

    goto :goto_e

    .line 1584
    .end local v4    # "index":I
    .restart local v1    # "index":I
    :cond_39
    return-object v0
.end method

.method public static greylist-max-p isNetworkTypeMobile(I)Z
    .registers 2
    .param p0, "networkType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1370
    packed-switch p0, :pswitch_data_8

    .line 1383
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 1381
    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static whitelist isNetworkTypeValid(I)Z
    .registers 2
    .param p0, "networkType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1286
    if-ltz p0, :cond_8

    const/16 v0, 0x12

    if-gt p0, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static greylist-max-o isNetworkTypeWifi(I)Z
    .registers 2
    .param p0, "networkType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1395
    sparse-switch p0, :sswitch_data_8

    .line 1400
    const/4 v0, 0x0

    return v0

    .line 1398
    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x1 -> :sswitch_5
        0xd -> :sswitch_5
    .end sparse-switch
.end method

.method private greylist-max-o legacyTypeForNetworkCapabilities(Landroid/net/NetworkCapabilities;)I
    .registers 9
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;

    .line 2211
    const/4 v0, -0x1

    if-nez p1, :cond_4

    return v0

    .line 2212
    :cond_4
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    const/16 v3, 0xc

    if-eqz v2, :cond_e

    .line 2213
    return v3

    .line 2215
    :cond_e
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 2216
    const/16 v0, 0xb

    return v0

    .line 2218
    :cond_18
    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 2219
    const/16 v0, 0xa

    return v0

    .line 2221
    :cond_22
    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 2222
    return v2

    .line 2224
    :cond_2a
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 2225
    return v4

    .line 2227
    :cond_32
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 2228
    return v5

    .line 2230
    :cond_3a
    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 2231
    return v1

    .line 2233
    :cond_41
    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 2234
    const/16 v0, 0xd

    return v0

    .line 2236
    :cond_4b
    return v0
.end method

.method private greylist-max-r networkCapabilitiesForFeature(ILjava/lang/String;)Landroid/net/NetworkCapabilities;
    .registers 10
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;

    .line 2184
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_8d

    .line 2185
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x5

    const/4 v6, 0x4

    sparse-switch v2, :sswitch_data_a0

    :cond_f
    goto :goto_5f

    :sswitch_10
    const-string v1, "enableDUNAlways"

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    move v1, v4

    goto :goto_60

    :sswitch_1a
    const-string v1, "enableSUPL"

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x7

    goto :goto_60

    :sswitch_24
    const-string v1, "enableFOTA"

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    move v1, v3

    goto :goto_60

    :sswitch_2e
    const-string v1, "enableMMS"

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x6

    goto :goto_60

    :sswitch_38
    const-string v1, "enableIMS"

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    move v1, v5

    goto :goto_60

    :sswitch_42
    const-string v2, "enableDUN"

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_60

    :sswitch_4b
    const-string v1, "enableCBS"

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    goto :goto_60

    :sswitch_55
    const-string v1, "enableHIPRI"

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    move v1, v6

    goto :goto_60

    :goto_5f
    const/4 v1, -0x1

    :goto_60
    packed-switch v1, :pswitch_data_c2

    .line 2202
    return-object v0

    .line 2200
    :pswitch_64
    invoke-static {v3}, Landroid/net/ConnectivityManager;->networkCapabilitiesForType(I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0

    .line 2198
    :pswitch_69
    invoke-static {v4}, Landroid/net/ConnectivityManager;->networkCapabilitiesForType(I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0

    .line 2196
    :pswitch_6e
    const/16 v0, 0xb

    invoke-static {v0}, Landroid/net/ConnectivityManager;->networkCapabilitiesForType(I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0

    .line 2194
    :pswitch_75
    invoke-static {v5}, Landroid/net/ConnectivityManager;->networkCapabilitiesForType(I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0

    .line 2192
    :pswitch_7a
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/net/ConnectivityManager;->networkCapabilitiesForType(I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0

    .line 2190
    :pswitch_81
    invoke-static {v6}, Landroid/net/ConnectivityManager;->networkCapabilitiesForType(I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0

    .line 2187
    :pswitch_86
    const/16 v0, 0xc

    invoke-static {v0}, Landroid/net/ConnectivityManager;->networkCapabilitiesForType(I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0

    .line 2204
    :cond_8d
    if-ne p1, v1, :cond_9e

    const-string v1, "p2p"

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 2205
    const/16 v0, 0xd

    invoke-static {v0}, Landroid/net/ConnectivityManager;->networkCapabilitiesForType(I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0

    .line 2207
    :cond_9e
    return-object v0

    nop

    :sswitch_data_a0
    .sparse-switch
        -0x568229bd -> :sswitch_55
        -0x25a6b48f -> :sswitch_4b
        -0x25a6ae86 -> :sswitch_42
        -0x25a69cb4 -> :sswitch_38
        -0x25a68db0 -> :sswitch_2e
        0x70d1b0f9 -> :sswitch_24
        0x70d7afe1 -> :sswitch_1a
        0x77254c29 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_86
        :pswitch_81
        :pswitch_81
        :pswitch_7a
        :pswitch_75
        :pswitch_6e
        :pswitch_69
        :pswitch_64
    .end packed-switch
.end method

.method public static greylist-max-o networkCapabilitiesForType(I)Landroid/net/NetworkCapabilities;
    .registers 7
    .param p0, "type"    # I

    .line 2377
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 2380
    .local v0, "nc":Landroid/net/NetworkCapabilities;
    const/4 v1, -0x1

    .line 2381
    .local v1, "NOT_FOUND":I
    sget-object v2, Landroid/net/ConnectivityManager;->sLegacyTypeToTransport:Landroid/util/SparseIntArray;

    const/4 v3, -0x1

    invoke-virtual {v2, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 2382
    .local v2, "transport":I
    if-eq v2, v3, :cond_21

    .line 2385
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 2388
    sget-object v3, Landroid/net/ConnectivityManager;->sLegacyTypeToCapability:Landroid/util/SparseIntArray;

    const/16 v4, 0xc

    invoke-virtual {v3, p0, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 2390
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->maybeMarkCapabilitiesRestricted()V

    .line 2391
    return-object v0

    .line 2383
    :cond_21
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown legacy type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private blacklist printStackTrace()V
    .registers 7

    .line 6107
    sget-boolean v0, Landroid/net/ConnectivityManager;->DEBUG:Z

    if-eqz v0, :cond_54

    .line 6108
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 6109
    .local v0, "callStack":[Ljava/lang/StackTraceElement;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 6110
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x3

    .local v2, "i":I
    :goto_12
    array-length v3, v0

    if-ge v2, v3, :cond_38

    .line 6111
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6112
    .local v3, "stackTrace":Ljava/lang/String;
    if-eqz v3, :cond_38

    const-string v4, "android.os"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 6113
    goto :goto_38

    .line 6115
    :cond_26
    const-string v4, " ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6110
    .end local v3    # "stackTrace":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 6117
    .end local v2    # "i":I
    :cond_38
    :goto_38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StackLog:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ConnectivityManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6119
    .end local v0    # "callStack":[Ljava/lang/StackTraceElement;
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    :cond_54
    return-void
.end method

.method private greylist-max-r removeRequestForFeature(Landroid/net/NetworkCapabilities;)Z
    .registers 4
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;

    .line 2330
    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    monitor-enter v0

    .line 2331
    :try_start_3
    sget-object v1, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager$LegacyRequest;

    .line 2332
    .local v1, "l":Landroid/net/ConnectivityManager$LegacyRequest;
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1a

    .line 2333
    if-nez v1, :cond_10

    const/4 v0, 0x0

    return v0

    .line 2334
    :cond_10
    iget-object v0, v1, Landroid/net/ConnectivityManager$LegacyRequest;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 2335
    invoke-static {v1}, Landroid/net/ConnectivityManager$LegacyRequest;->-$$Nest$mclearDnsBinding(Landroid/net/ConnectivityManager$LegacyRequest;)V

    .line 2336
    const/4 v0, 0x1

    return v0

    .line 2332
    .end local v1    # "l":Landroid/net/ConnectivityManager$LegacyRequest;
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method private greylist-max-o renewRequestLocked(Landroid/net/ConnectivityManager$LegacyRequest;)V
    .registers 5
    .param p1, "l"    # Landroid/net/ConnectivityManager$LegacyRequest;

    .line 2281
    iget v0, p1, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    .line 2282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "renewing request to seqNum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectivityManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    iget-object v0, p1, Landroid/net/ConnectivityManager$LegacyRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget v1, p1, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    iget v2, p1, Landroid/net/ConnectivityManager$LegacyRequest;->delay:I

    invoke-direct {p0, v0, v1, v2}, Landroid/net/ConnectivityManager;->sendExpireMsgForFeature(Landroid/net/NetworkCapabilities;II)V

    .line 2284
    return-void
.end method

.method private greylist-max-r requestNetworkForFeatureLocked(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkRequest;
    .registers 12
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;

    .line 2299
    const/4 v1, -0x1

    .line 2300
    .local v1, "delay":I
    invoke-direct {p0, p1}, Landroid/net/ConnectivityManager;->legacyTypeForNetworkCapabilities(Landroid/net/NetworkCapabilities;)I

    move-result v7

    .line 2302
    .local v7, "type":I
    :try_start_5
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, v7}, Landroid/net/IConnectivityManager;->getRestoreDefaultNetworkDelay(I)I

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_3c

    .line 2305
    .end local v1    # "delay":I
    .local v0, "delay":I
    nop

    .line 2306
    new-instance v1, Landroid/net/ConnectivityManager$LegacyRequest;

    const/4 v9, 0x0

    invoke-direct {v1, v9}, Landroid/net/ConnectivityManager$LegacyRequest;-><init>(Landroid/net/ConnectivityManager-IA;)V

    .line 2307
    .local v1, "l":Landroid/net/ConnectivityManager$LegacyRequest;
    iput-object p1, v1, Landroid/net/ConnectivityManager$LegacyRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 2308
    iput v0, v1, Landroid/net/ConnectivityManager$LegacyRequest;->delay:I

    .line 2309
    const/4 v2, 0x0

    iput v2, v1, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    .line 2310
    iget-object v4, v1, Landroid/net/ConnectivityManager$LegacyRequest;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    sget-object v6, Landroid/net/NetworkRequest$Type;->REQUEST:Landroid/net/NetworkRequest$Type;

    .line 2311
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getDefaultHandler()Landroid/net/ConnectivityManager$CallbackHandler;

    move-result-object v8

    .line 2310
    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    .end local p1    # "netCap":Landroid/net/NetworkCapabilities;
    .local v3, "netCap":Landroid/net/NetworkCapabilities;
    invoke-direct/range {v2 .. v8}, Landroid/net/ConnectivityManager;->sendRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/net/ConnectivityManager$NetworkCallback;ILandroid/net/NetworkRequest$Type;ILandroid/net/ConnectivityManager$CallbackHandler;)Landroid/net/NetworkRequest;

    move-result-object p1

    iput-object p1, v1, Landroid/net/ConnectivityManager$LegacyRequest;->networkRequest:Landroid/net/NetworkRequest;

    .line 2312
    iget-object p1, v1, Landroid/net/ConnectivityManager$LegacyRequest;->networkRequest:Landroid/net/NetworkRequest;

    if-nez p1, :cond_2f

    return-object v9

    .line 2313
    :cond_2f
    sget-object p1, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    invoke-virtual {p1, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2314
    iget p1, v1, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    invoke-direct {p0, v3, p1, v0}, Landroid/net/ConnectivityManager;->sendExpireMsgForFeature(Landroid/net/NetworkCapabilities;II)V

    .line 2315
    iget-object p1, v1, Landroid/net/ConnectivityManager$LegacyRequest;->networkRequest:Landroid/net/NetworkRequest;

    return-object p1

    .line 2303
    .end local v0    # "delay":I
    .end local v3    # "netCap":Landroid/net/NetworkCapabilities;
    .local v1, "delay":I
    .restart local p1    # "netCap":Landroid/net/NetworkCapabilities;
    :catch_3c
    move-exception v0

    move-object v2, p0

    move-object v3, p1

    move-object p1, v0

    .line 2304
    .restart local v3    # "netCap":Landroid/net/NetworkCapabilities;
    .local p1, "e":Landroid/os/RemoteException;
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private greylist-max-o sendExpireMsgForFeature(Landroid/net/NetworkCapabilities;II)V
    .registers 8
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;
    .param p2, "seqNum"    # I
    .param p3, "delay"    # I

    .line 2319
    if-ltz p3, :cond_33

    .line 2320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sending expire msg with seqNum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and delay "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectivityManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getDefaultHandler()Landroid/net/ConnectivityManager$CallbackHandler;

    move-result-object v0

    .line 2322
    .local v0, "handler":Landroid/net/ConnectivityManager$CallbackHandler;
    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/net/ConnectivityManager$CallbackHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2323
    .local v1, "msg":Landroid/os/Message;
    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/ConnectivityManager$CallbackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2325
    .end local v0    # "handler":Landroid/net/ConnectivityManager$CallbackHandler;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_33
    return-void
.end method

.method private blacklist sendRequestForNetwork(ILandroid/net/NetworkCapabilities;Landroid/net/ConnectivityManager$NetworkCallback;ILandroid/net/NetworkRequest$Type;ILandroid/net/ConnectivityManager$CallbackHandler;)Landroid/net/NetworkRequest;
    .registers 26
    .param p1, "asUid"    # I
    .param p2, "need"    # Landroid/net/NetworkCapabilities;
    .param p3, "callback"    # Landroid/net/ConnectivityManager$NetworkCallback;
    .param p4, "timeoutMs"    # I
    .param p5, "reqType"    # Landroid/net/NetworkRequest$Type;
    .param p6, "legacyType"    # I
    .param p7, "handler"    # Landroid/net/ConnectivityManager$CallbackHandler;

    .line 4736
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    invoke-direct {v1}, Landroid/net/ConnectivityManager;->printStackTrace()V

    .line 4737
    invoke-static {v2}, Landroid/net/ConnectivityManager;->checkCallbackNotNull(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 4738
    sget-object v0, Landroid/net/NetworkRequest$Type;->TRACK_DEFAULT:Landroid/net/NetworkRequest$Type;

    if-eq v3, v0, :cond_1f

    sget-object v0, Landroid/net/NetworkRequest$Type;->TRACK_SYSTEM_DEFAULT:Landroid/net/NetworkRequest$Type;

    if-eq v3, v0, :cond_1f

    if-eqz p2, :cond_17

    goto :goto_1f

    .line 4739
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "null NetworkCapabilities"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4743
    :cond_1f
    :goto_1f
    const-wide/16 v4, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/net/ConnectivityManager;->isFeatureEnabled(J)Z

    move-result v4

    .line 4746
    .local v4, "useDeclaredMethods":Z
    if-eqz v4, :cond_2c

    .line 4747
    invoke-direct {v1, v2}, Landroid/net/ConnectivityManager;->tryGetDeclaredMethodsFlag(Landroid/net/ConnectivityManager$NetworkCallback;)I

    move-result v0

    goto :goto_2d

    .line 4748
    :cond_2c
    const/4 v0, -0x1

    :goto_2d
    move v12, v0

    .line 4750
    .local v12, "declaredMethodsFlag":I
    iget-object v0, v1, Landroid/net/ConnectivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v10

    .line 4752
    .local v10, "callingPackageName":Ljava/lang/String;
    :try_start_34
    sget-object v17, Landroid/net/ConnectivityManager;->sCallbacks:Ljava/util/HashMap;

    monitor-enter v17
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_37} :catch_af
    .catch Landroid/os/ServiceSpecificException; {:try_start_34 .. :try_end_37} :catch_a9

    .line 4753
    :try_start_37
    invoke-static {v2}, Landroid/net/ConnectivityManager$NetworkCallback;->-$$Nest$fgetnetworkRequest(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    move-result-object v0

    if-eqz v0, :cond_4c

    invoke-static {v2}, Landroid/net/ConnectivityManager$NetworkCallback;->-$$Nest$fgetnetworkRequest(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    move-result-object v0

    sget-object v5, Landroid/net/ConnectivityManager;->ALREADY_UNREGISTERED:Landroid/net/NetworkRequest;

    if-eq v0, v5, :cond_4c

    .line 4757
    const-string v0, "ConnectivityManager"

    const-string v5, "NetworkCallback was already registered"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4759
    :cond_4c
    new-instance v9, Landroid/os/Messenger;

    move-object/from16 v13, p7

    invoke-direct {v9, v13}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 4760
    .local v9, "messenger":Landroid/os/Messenger;
    new-instance v8, Landroid/os/Binder;

    invoke-direct {v8}, Landroid/os/Binder;-><init>()V

    .line 4761
    .local v8, "binder":Landroid/os/Binder;
    invoke-static {v2}, Landroid/net/ConnectivityManager$NetworkCallback;->-$$Nest$fgetmFlags(Landroid/net/ConnectivityManager$NetworkCallback;)I

    move-result v0

    .line 4762
    .local v0, "callbackFlags":I
    sget-object v5, Landroid/net/NetworkRequest$Type;->LISTEN:Landroid/net/NetworkRequest$Type;

    if-ne v3, v5, :cond_73

    .line 4763
    iget-object v5, v1, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    iget-object v6, v1, Landroid/net/ConnectivityManager;->mContext:Landroid/content/Context;

    .line 4765
    invoke-virtual {v6}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v11

    .line 4763
    move-object/from16 v6, p2

    move-object v7, v9

    move v9, v0

    .end local v0    # "callbackFlags":I
    .local v7, "messenger":Landroid/os/Messenger;
    .local v9, "callbackFlags":I
    invoke-interface/range {v5 .. v12}, Landroid/net/IConnectivityManager;->listenForNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)Landroid/net/NetworkRequest;

    move-result-object v0

    move v13, v9

    move-object v9, v7

    .end local v7    # "messenger":Landroid/os/Messenger;
    .local v0, "request":Landroid/net/NetworkRequest;
    .local v9, "messenger":Landroid/os/Messenger;
    .local v13, "callbackFlags":I
    goto :goto_94

    .line 4767
    .end local v13    # "callbackFlags":I
    .local v0, "callbackFlags":I
    :cond_73
    move v13, v0

    .end local v0    # "callbackFlags":I
    .restart local v13    # "callbackFlags":I
    iget-object v5, v1, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    .line 4768
    move-object v11, v8

    .end local v8    # "binder":Landroid/os/Binder;
    .local v11, "binder":Landroid/os/Binder;
    invoke-virtual {v3}, Landroid/net/NetworkRequest$Type;->ordinal()I

    move-result v8

    iget-object v0, v1, Landroid/net/ConnectivityManager;->mContext:Landroid/content/Context;

    .line 4770
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v15
    :try_end_81
    .catchall {:try_start_37 .. :try_end_81} :catchall_a6

    .line 4767
    move/from16 v6, p1

    move-object/from16 v7, p2

    move-object v14, v10

    move/from16 v16, v12

    move/from16 v10, p4

    move/from16 v12, p6

    .end local v10    # "callingPackageName":Ljava/lang/String;
    .end local v12    # "declaredMethodsFlag":I
    .local v14, "callingPackageName":Ljava/lang/String;
    .local v16, "declaredMethodsFlag":I
    :try_start_8c
    invoke-interface/range {v5 .. v16}, Landroid/net/IConnectivityManager;->requestNetwork(ILandroid/net/NetworkCapabilities;ILandroid/os/Messenger;ILandroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)Landroid/net/NetworkRequest;

    move-result-object v0
    :try_end_90
    .catchall {:try_start_8c .. :try_end_90} :catchall_a1

    move-object v8, v11

    move-object v10, v14

    move/from16 v12, v16

    .line 4772
    .end local v11    # "binder":Landroid/os/Binder;
    .end local v14    # "callingPackageName":Ljava/lang/String;
    .end local v16    # "declaredMethodsFlag":I
    .local v0, "request":Landroid/net/NetworkRequest;
    .restart local v8    # "binder":Landroid/os/Binder;
    .restart local v10    # "callingPackageName":Ljava/lang/String;
    .restart local v12    # "declaredMethodsFlag":I
    :goto_94
    if-eqz v0, :cond_9b

    .line 4773
    :try_start_96
    sget-object v5, Landroid/net/ConnectivityManager;->sCallbacks:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4775
    :cond_9b
    invoke-static {v2, v0}, Landroid/net/ConnectivityManager$NetworkCallback;->-$$Nest$fputnetworkRequest(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/net/NetworkRequest;)V

    .line 4776
    .end local v8    # "binder":Landroid/os/Binder;
    .end local v9    # "messenger":Landroid/os/Messenger;
    .end local v13    # "callbackFlags":I
    monitor-exit v17

    .line 4781
    nop

    .line 4782
    return-object v0

    .line 4776
    .end local v0    # "request":Landroid/net/NetworkRequest;
    .end local v10    # "callingPackageName":Ljava/lang/String;
    .end local v12    # "declaredMethodsFlag":I
    .restart local v14    # "callingPackageName":Ljava/lang/String;
    .restart local v16    # "declaredMethodsFlag":I
    :catchall_a1
    move-exception v0

    move-object v10, v14

    move/from16 v12, v16

    .end local v14    # "callingPackageName":Ljava/lang/String;
    .end local v16    # "declaredMethodsFlag":I
    .restart local v10    # "callingPackageName":Ljava/lang/String;
    .restart local v12    # "declaredMethodsFlag":I
    goto :goto_a7

    :catchall_a6
    move-exception v0

    :goto_a7
    monitor-exit v17
    :try_end_a8
    .catchall {:try_start_96 .. :try_end_a8} :catchall_a6

    .end local v4    # "useDeclaredMethods":Z
    .end local v10    # "callingPackageName":Ljava/lang/String;
    .end local v12    # "declaredMethodsFlag":I
    .end local p0    # "this":Landroid/net/ConnectivityManager;
    .end local p1    # "asUid":I
    .end local p2    # "need":Landroid/net/NetworkCapabilities;
    .end local p3    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    .end local p4    # "timeoutMs":I
    .end local p5    # "reqType":Landroid/net/NetworkRequest$Type;
    .end local p6    # "legacyType":I
    .end local p7    # "handler":Landroid/net/ConnectivityManager$CallbackHandler;
    :try_start_a8
    throw v0
    :try_end_a9
    .catch Landroid/os/RemoteException; {:try_start_a8 .. :try_end_a9} :catch_af
    .catch Landroid/os/ServiceSpecificException; {:try_start_a8 .. :try_end_a9} :catch_a9

    .line 4779
    .restart local v4    # "useDeclaredMethods":Z
    .restart local v10    # "callingPackageName":Ljava/lang/String;
    .restart local v12    # "declaredMethodsFlag":I
    .restart local p0    # "this":Landroid/net/ConnectivityManager;
    .restart local p1    # "asUid":I
    .restart local p2    # "need":Landroid/net/NetworkCapabilities;
    .restart local p3    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    .restart local p4    # "timeoutMs":I
    .restart local p5    # "reqType":Landroid/net/NetworkRequest$Type;
    .restart local p6    # "legacyType":I
    .restart local p7    # "handler":Landroid/net/ConnectivityManager$CallbackHandler;
    :catch_a9
    move-exception v0

    .line 4780
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/net/ConnectivityManager;->convertServiceException(Landroid/os/ServiceSpecificException;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 4777
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_af
    move-exception v0

    .line 4778
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
.end method

.method private blacklist sendRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/net/ConnectivityManager$NetworkCallback;ILandroid/net/NetworkRequest$Type;ILandroid/net/ConnectivityManager$CallbackHandler;)Landroid/net/NetworkRequest;
    .registers 15
    .param p1, "need"    # Landroid/net/NetworkCapabilities;
    .param p2, "callback"    # Landroid/net/ConnectivityManager$NetworkCallback;
    .param p3, "timeoutMs"    # I
    .param p4, "reqType"    # Landroid/net/NetworkRequest$Type;
    .param p5, "legacyType"    # I
    .param p6, "handler"    # Landroid/net/ConnectivityManager$CallbackHandler;

    .line 4904
    const/4 v1, -0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    .end local p1    # "need":Landroid/net/NetworkCapabilities;
    .end local p2    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    .end local p3    # "timeoutMs":I
    .end local p4    # "reqType":Landroid/net/NetworkRequest$Type;
    .end local p5    # "legacyType":I
    .end local p6    # "handler":Landroid/net/ConnectivityManager$CallbackHandler;
    .local v2, "need":Landroid/net/NetworkCapabilities;
    .local v3, "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    .local v4, "timeoutMs":I
    .local v5, "reqType":Landroid/net/NetworkRequest$Type;
    .local v6, "legacyType":I
    .local v7, "handler":Landroid/net/ConnectivityManager$CallbackHandler;
    invoke-direct/range {v0 .. v7}, Landroid/net/ConnectivityManager;->sendRequestForNetwork(ILandroid/net/NetworkCapabilities;Landroid/net/ConnectivityManager$NetworkCallback;ILandroid/net/NetworkRequest$Type;ILandroid/net/ConnectivityManager$CallbackHandler;)Landroid/net/NetworkRequest;

    move-result-object p1

    return-object p1
.end method

.method public static whitelist setProcessDefaultNetwork(Landroid/net/Network;)Z
    .registers 7
    .param p0, "network"    # Landroid/net/Network;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5903
    const/4 v0, 0x0

    if-nez p0, :cond_5

    move v1, v0

    goto :goto_7

    :cond_5
    iget v1, p0, Landroid/net/Network;->netId:I

    .line 5904
    .local v1, "netId":I
    :goto_7
    invoke-static {}, Landroid/net/NetworkUtils;->getBoundNetworkForProcess()I

    move-result v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_10

    move v2, v3

    goto :goto_11

    :cond_10
    move v2, v0

    .line 5906
    .local v2, "isSameNetId":Z
    :goto_11
    if-eqz v1, :cond_17

    .line 5907
    invoke-virtual {p0}, Landroid/net/Network;->getNetIdForResolv()I

    move-result v1

    .line 5910
    :cond_17
    invoke-static {v1}, Landroid/net/NetworkUtils;->bindProcessToNetwork(I)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 5911
    return v0

    .line 5914
    :cond_1e
    if-nez v2, :cond_3e

    .line 5918
    :try_start_20
    invoke-static {}, Landroid/net/ConnectivityManager;->getInstance()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getDefaultProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Proxy;->setHttpProxyConfiguration(Landroid/net/ProxyInfo;)V
    :try_end_2b
    .catch Ljava/lang/SecurityException; {:try_start_20 .. :try_end_2b} :catch_2c

    .line 5922
    goto :goto_34

    .line 5919
    :catch_2c
    move-exception v0

    .line 5921
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v4, "ConnectivityManager"

    const-string v5, "Can\'t set proxy properties"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5924
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_34
    invoke-static {}, Ljava/net/InetAddress;->clearDnsCache()V

    .line 5927
    invoke-static {}, Llibcore/net/event/NetworkEventDispatcher;->getInstance()Llibcore/net/event/NetworkEventDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/net/event/NetworkEventDispatcher;->dispatchNetworkConfigurationChange()V

    .line 5930
    :cond_3e
    return v3
.end method

.method public static greylist-max-r setProcessDefaultNetworkForHostResolution(Landroid/net/Network;)Z
    .registers 2
    .param p0, "network"    # Landroid/net/Network;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6001
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p0}, Landroid/net/Network;->getNetIdForResolv()I

    move-result v0

    .line 6000
    :goto_8
    invoke-static {v0}, Landroid/net/NetworkUtils;->bindProcessToNetworkForHostResolution(I)Z

    move-result v0

    return v0
.end method

.method private blacklist tryGetDeclaredMethodsFlag(Landroid/net/ConnectivityManager$NetworkCallback;)I
    .registers 6
    .param p1, "cb"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .line 4786
    const-string v0, "ConnectivityManager"

    invoke-static {p1}, Landroid/net/ConnectivityManager$NetworkCallback;->-$$Nest$fgetmConstructorWasCalled(Landroid/net/ConnectivityManager$NetworkCallback;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_a

    .line 4792
    return v2

    .line 4795
    :cond_a
    :try_start_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Landroid/net/ConnectivityManager;->getDeclaredMethodsFlag(Ljava/lang/Class;)I

    move-result v0
    :try_end_12
    .catch Ljava/lang/LinkageError; {:try_start_a .. :try_end_12} :catch_1a
    .catchall {:try_start_a .. :try_end_12} :catchall_13

    return v0

    .line 4801
    :catchall_13
    move-exception v1

    .line 4805
    .local v1, "e":Ljava/lang/Throwable;
    const-string v3, "Unexpected error while getting methods from NetworkCallback class"

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    .line 4796
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v1

    .line 4799
    .local v1, "e":Ljava/lang/LinkageError;
    const-string v3, "Could not get methods from NetworkCallback class"

    invoke-static {v0, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4807
    .end local v1    # "e":Ljava/lang/LinkageError;
    nop

    .line 4808
    :goto_21
    return v2
.end method

.method private greylist-max-o unsupportedStartingFrom(I)V
    .registers 5
    .param p1, "version"    # I

    .line 5964
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_9

    .line 5968
    return-void

    .line 5971
    :cond_9
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v0, p1, :cond_14

    .line 5975
    return-void

    .line 5972
    :cond_14
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This method is not supported in target SDK version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and above"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist addDefaultNetworkActiveListener(Landroid/net/ConnectivityManager$OnNetworkActiveListener;)V
    .registers 6
    .param p1, "l"    # Landroid/net/ConnectivityManager$OnNetworkActiveListener;

    .line 2877
    new-instance v0, Landroid/net/ConnectivityManager$1;

    invoke-direct {v0, p0, p1}, Landroid/net/ConnectivityManager$1;-><init>(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$OnNetworkActiveListener;)V

    .line 2884
    .local v0, "rl":Landroid/net/connectivity/android/net/INetworkActivityListener;
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mNetworkActivityListeners:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 2886
    :try_start_8
    iget-object v2, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v2, v0}, Landroid/net/IConnectivityManager;->registerNetworkActivityListener(Landroid/net/connectivity/android/net/INetworkActivityListener;)V

    .line 2887
    iget-object v2, p0, Landroid/net/ConnectivityManager;->mNetworkActivityListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_17
    .catchall {:try_start_8 .. :try_end_12} :catchall_15

    .line 2890
    nop

    .line 2891
    :try_start_13
    monitor-exit v1

    .line 2892
    return-void

    .line 2891
    :catchall_15
    move-exception v2

    goto :goto_1d

    .line 2888
    :catch_17
    move-exception v2

    .line 2889
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local v0    # "rl":Landroid/net/connectivity/android/net/INetworkActivityListener;
    .end local p0    # "this":Landroid/net/ConnectivityManager;
    .end local p1    # "l":Landroid/net/ConnectivityManager$OnNetworkActiveListener;
    throw v3

    .line 2891
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "rl":Landroid/net/connectivity/android/net/INetworkActivityListener;
    .restart local p0    # "this":Landroid/net/ConnectivityManager;
    .restart local p1    # "l":Landroid/net/ConnectivityManager$OnNetworkActiveListener;
    :goto_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_15

    throw v2
.end method

.method public blacklist addUidToMeteredNetworkAllowList(I)V
    .registers 5
    .param p1, "uid"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 6563
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Landroid/net/IConnectivityManager;->setUidFirewallRule(III)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    .line 6566
    nop

    .line 6567
    return-void

    .line 6564
    :catch_a
    move-exception v0

    .line 6565
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist addUidToMeteredNetworkDenyList(I)V
    .registers 5
    .param p1, "uid"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 6615
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    const/16 v1, 0xb

    const/4 v2, 0x2

    invoke-interface {v0, v1, p1, v2}, Landroid/net/IConnectivityManager;->setUidFirewallRule(III)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    .line 6618
    nop

    .line 6619
    return-void

    .line 6616
    :catch_a
    move-exception v0

    .line 6617
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist bindProcessToNetwork(Landroid/net/Network;)Z
    .registers 3
    .param p1, "network"    # Landroid/net/Network;

    .line 5877
    invoke-static {p1}, Landroid/net/ConnectivityManager;->setProcessDefaultNetwork(Landroid/net/Network;)Z

    move-result v0

    return v0
.end method

.method public blacklist createDiagnosticsManager()Landroid/net/ConnectivityDiagnosticsManager;
    .registers 4

    .line 6135
    new-instance v0, Landroid/net/ConnectivityDiagnosticsManager;

    iget-object v1, p0, Landroid/net/ConnectivityManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-direct {v0, v1, v2}, Landroid/net/ConnectivityDiagnosticsManager;-><init>(Landroid/content/Context;Landroid/net/IConnectivityManager;)V

    return-object v0
.end method

.method public whitelist createNattKeepalive(Landroid/net/Network;Landroid/os/ParcelFileDescriptor;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/util/concurrent/Executor;Landroid/net/SocketKeepalive$Callback;)Landroid/net/SocketKeepalive;
    .registers 18
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "source"    # Ljava/net/InetAddress;
    .param p4, "destination"    # Ljava/net/InetAddress;
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .param p6, "callback"    # Landroid/net/SocketKeepalive$Callback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2662
    :try_start_0
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_6

    .line 2667
    .local v0, "dup":Landroid/os/ParcelFileDescriptor;
    move-object v5, v0

    goto :goto_c

    .line 2663
    .end local v0    # "dup":Landroid/os/ParcelFileDescriptor;
    :catch_6
    move-exception v0

    .line 2666
    .local v0, "ignored":Ljava/io/IOException;
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->createInvalidFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    move-object v5, v1

    .line 2668
    .end local v0    # "ignored":Ljava/io/IOException;
    .local v5, "dup":Landroid/os/ParcelFileDescriptor;
    :goto_c
    new-instance v2, Landroid/net/connectivity/android/net/NattSocketKeepalive;

    iget-object v3, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    const/4 v6, -0x1

    move-object v4, p1

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v2 .. v10}, Landroid/net/connectivity/android/net/NattSocketKeepalive;-><init>(Landroid/net/IConnectivityManager;Landroid/net/Network;Landroid/os/ParcelFileDescriptor;ILjava/net/InetAddress;Ljava/net/InetAddress;Ljava/util/concurrent/Executor;Landroid/net/SocketKeepalive$Callback;)V

    return-object v2
.end method

.method public whitelist createSocketKeepalive(Landroid/net/Network;Landroid/net/IpSecManager$UdpEncapsulationSocket;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/util/concurrent/Executor;Landroid/net/SocketKeepalive$Callback;)Landroid/net/SocketKeepalive;
    .registers 18
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "socket"    # Landroid/net/IpSecManager$UdpEncapsulationSocket;
    .param p3, "source"    # Ljava/net/InetAddress;
    .param p4, "destination"    # Ljava/net/InetAddress;
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .param p6, "callback"    # Landroid/net/SocketKeepalive$Callback;

    .line 2620
    :try_start_0
    invoke-virtual {p2}, Landroid/net/IpSecManager$UdpEncapsulationSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_a

    .line 2625
    .local v0, "dup":Landroid/os/ParcelFileDescriptor;
    move-object v5, v0

    goto :goto_10

    .line 2621
    .end local v0    # "dup":Landroid/os/ParcelFileDescriptor;
    :catch_a
    move-exception v0

    .line 2624
    .local v0, "ignored":Ljava/io/IOException;
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->createInvalidFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    move-object v5, v1

    .line 2626
    .end local v0    # "ignored":Ljava/io/IOException;
    .local v5, "dup":Landroid/os/ParcelFileDescriptor;
    :goto_10
    new-instance v2, Landroid/net/connectivity/android/net/NattSocketKeepalive;

    iget-object v3, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-virtual {p2}, Landroid/net/IpSecManager$UdpEncapsulationSocket;->getResourceId()I

    move-result v6

    move-object v4, p1

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v2 .. v10}, Landroid/net/connectivity/android/net/NattSocketKeepalive;-><init>(Landroid/net/IConnectivityManager;Landroid/net/Network;Landroid/os/ParcelFileDescriptor;ILjava/net/InetAddress;Ljava/net/InetAddress;Ljava/util/concurrent/Executor;Landroid/net/SocketKeepalive$Callback;)V

    return-object v2
.end method

.method public whitelist createSocketKeepalive(Landroid/net/Network;Ljava/net/Socket;Ljava/util/concurrent/Executor;Landroid/net/SocketKeepalive$Callback;)Landroid/net/SocketKeepalive;
    .registers 13
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "socket"    # Ljava/net/Socket;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/net/SocketKeepalive$Callback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2698
    :try_start_0
    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->fromSocket(Ljava/net/Socket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/UncheckedIOException; {:try_start_0 .. :try_end_4} :catch_6

    .line 2703
    .local v0, "dup":Landroid/os/ParcelFileDescriptor;
    move-object v5, v0

    goto :goto_c

    .line 2699
    .end local v0    # "dup":Landroid/os/ParcelFileDescriptor;
    :catch_6
    move-exception v0

    .line 2702
    .local v0, "ignored":Ljava/io/UncheckedIOException;
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->createInvalidFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    move-object v5, v1

    .line 2704
    .end local v0    # "ignored":Ljava/io/UncheckedIOException;
    .local v5, "dup":Landroid/os/ParcelFileDescriptor;
    :goto_c
    new-instance v2, Landroid/net/connectivity/android/net/TcpSocketKeepalive;

    iget-object v3, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    move-object v4, p1

    move-object v6, p3

    move-object v7, p4

    .end local p1    # "network":Landroid/net/Network;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "callback":Landroid/net/SocketKeepalive$Callback;
    .local v4, "network":Landroid/net/Network;
    .local v6, "executor":Ljava/util/concurrent/Executor;
    .local v7, "callback":Landroid/net/SocketKeepalive$Callback;
    invoke-direct/range {v2 .. v7}, Landroid/net/connectivity/android/net/TcpSocketKeepalive;-><init>(Landroid/net/IConnectivityManager;Landroid/net/Network;Landroid/os/ParcelFileDescriptor;Ljava/util/concurrent/Executor;Landroid/net/SocketKeepalive$Callback;)V

    return-object v2
.end method

.method public blacklist declareNetworkRequestUnfulfillable(Landroid/net/NetworkRequest;)V
    .registers 4
    .param p1, "request"    # Landroid/net/NetworkRequest;

    .line 3964
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->declareNetworkRequestUnfulfillable(Landroid/net/NetworkRequest;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3967
    nop

    .line 3968
    return-void

    .line 3965
    :catch_7
    move-exception v0

    .line 3966
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o factoryReset()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 5849
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->factoryReset()V

    .line 5850
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getTetheringManager()Landroid/net/TetheringManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/TetheringManager;->stopAllTethering()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_e

    .line 5853
    nop

    .line 5854
    return-void

    .line 5851
    :catch_e
    move-exception v0

    .line 5852
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-p getActiveLinkProperties()Landroid/net/LinkProperties;
    .registers 3

    .line 1923
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1924
    :catch_7
    move-exception v0

    .line 1925
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getActiveNetwork()Landroid/net/Network;
    .registers 3

    .line 1543
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1544
    :catch_7
    move-exception v0

    .line 1545
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getActiveNetworkForUid(I)Landroid/net/Network;
    .registers 3
    .param p1, "uid"    # I

    .line 1564
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/ConnectivityManager;->getActiveNetworkForUid(IZ)Landroid/net/Network;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getActiveNetworkForUid(IZ)Landroid/net/Network;
    .registers 5
    .param p1, "uid"    # I
    .param p2, "ignoreBlocked"    # Z

    .line 1570
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->getActiveNetworkForUid(IZ)Landroid/net/Network;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1571
    :catch_7
    move-exception v0

    .line 1572
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1522
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1523
    :catch_7
    move-exception v0

    .line 1524
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-r getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;
    .registers 3
    .param p1, "uid"    # I

    .line 1742
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfoForUid(IZ)Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getActiveNetworkInfoForUid(IZ)Landroid/net/NetworkInfo;
    .registers 5
    .param p1, "uid"    # I
    .param p2, "ignoreBlocked"    # Z

    .line 1748
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->getActiveNetworkInfoForUid(IZ)Landroid/net/NetworkInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1749
    :catch_7
    move-exception v0

    .line 1750
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAllNetworkInfo()[Landroid/net/NetworkInfo;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1823
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1824
    :catch_7
    move-exception v0

    .line 1825
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getAllNetworkStateSnapshots()Ljava/util/List;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/NetworkStateSnapshot;",
            ">;"
        }
    .end annotation

    .line 1842
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getAllNetworkStateSnapshots()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1843
    :catch_7
    move-exception v0

    .line 1844
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAllNetworks()[Landroid/net/Network;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1885
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1886
    :catch_7
    move-exception v0

    .line 1887
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getBackgroundDataSetting()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2805
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getBoundNetworkForProcess()Landroid/net/Network;
    .registers 2

    .line 5943
    invoke-static {}, Landroid/net/ConnectivityManager;->getProcessDefaultNetwork()Landroid/net/Network;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCaptivePortalServerUrl()Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2080
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getCaptivePortalServerUrl()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 2081
    :catch_7
    move-exception v0

    .line 2082
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getCompanionDeviceManagerProxyService()Landroid/os/IBinder;
    .registers 3

    .line 6815
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getCompanionDeviceManagerProxyService()Landroid/os/IBinder;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 6816
    :catch_7
    move-exception v0

    .line 6817
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getConnectionOwnerUid(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)I
    .registers 7
    .param p1, "protocol"    # I
    .param p2, "local"    # Ljava/net/InetSocketAddress;
    .param p3, "remote"    # Ljava/net/InetSocketAddress;

    .line 6098
    new-instance v0, Landroid/net/connectivity/android/net/ConnectionInfo;

    invoke-direct {v0, p1, p2, p3}, Landroid/net/connectivity/android/net/ConnectionInfo;-><init>(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    .line 6100
    .local v0, "connectionInfo":Landroid/net/connectivity/android/net/ConnectionInfo;
    :try_start_5
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, v0}, Landroid/net/IConnectivityManager;->getConnectionOwnerUid(Landroid/net/connectivity/android/net/ConnectionInfo;)I

    move-result v1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_c

    return v1

    .line 6101
    :catch_c
    move-exception v1

    .line 6102
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist getDefaultNetworkCapabilitiesForUser(I)[Landroid/net/NetworkCapabilities;
    .registers 5
    .param p1, "userId"    # I

    .line 1899
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    iget-object v1, p0, Landroid/net/ConnectivityManager;->mContext:Landroid/content/Context;

    .line 1900
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ConnectivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1899
    invoke-interface {v0, p1, v1, v2}, Landroid/net/IConnectivityManager;->getDefaultNetworkCapabilitiesForUser(ILjava/lang/String;Ljava/lang/String;)[Landroid/net/NetworkCapabilities;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return-object v0

    .line 1901
    :catch_13
    move-exception v0

    .line 1902
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getDefaultProxy()Landroid/net/ProxyInfo;
    .registers 2

    .line 3772
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getBoundNetworkForProcess()Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDefaultRequest()Landroid/net/NetworkRequest;
    .registers 3

    .line 2965
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getDefaultRequest()Landroid/net/NetworkRequest;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 2966
    :catch_7
    move-exception v0

    .line 2967
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getFirewallChainEnabled(I)Z
    .registers 4
    .param p1, "chain"    # I

    .line 6744
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->getFirewallChainEnabled(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 6745
    :catch_7
    move-exception v0

    .line 6746
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getGlobalProxy()Landroid/net/ProxyInfo;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 3733
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getGlobalProxy()Landroid/net/ProxyInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 3734
    :catch_7
    move-exception v0

    .line 3735
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-r getLastTetherError(Ljava/lang/String;)I
    .registers 4
    .param p1, "iface"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3543
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getTetheringManager()Landroid/net/TetheringManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/TetheringManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v0

    .line 3544
    .local v0, "error":I
    const/16 v1, 0x10

    if-ne v0, v1, :cond_d

    .line 3548
    const/4 v0, 0x1

    .line 3550
    :cond_d
    return v0
.end method

.method public whitelist getLatestTetheringEntitlementResult(IZLjava/util/concurrent/Executor;Landroid/net/ConnectivityManager$OnTetheringEntitlementResultListener;)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "showEntitlementUi"    # Z
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroid/net/ConnectivityManager$OnTetheringEntitlementResultListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3610
    const-string v0, "TetheringEntitlementResultListener cannot be null."

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3611
    new-instance v0, Landroid/net/ConnectivityManager$5;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p3, p4}, Landroid/net/ConnectivityManager$5;-><init>(Landroid/net/ConnectivityManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/net/ConnectivityManager$OnTetheringEntitlementResultListener;)V

    .line 3625
    .local v0, "wrappedListener":Landroid/os/ResultReceiver;
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getTetheringManager()Landroid/net/TetheringManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Landroid/net/TetheringManager;->requestLatestTetheringEntitlementResult(ILandroid/os/ResultReceiver;Z)V

    .line 3627
    return-void
.end method

.method public greylist-max-p getLinkProperties(I)Landroid/net/LinkProperties;
    .registers 4
    .param p1, "networkType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1948
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->getLinkPropertiesForType(I)Landroid/net/LinkProperties;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1949
    :catch_7
    move-exception v0

    .line 1950
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;
    .registers 4
    .param p1, "network"    # Landroid/net/Network;

    .line 1965
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1966
    :catch_7
    move-exception v0

    .line 1967
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist getMobileDataEnabled()Z
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2831
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2832
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    const-string v1, "ConnectivityManager"

    if-eqz v0, :cond_51

    .line 2833
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    .line 2834
    .local v2, "subId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMobileDataEnabled()+ subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2835
    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v3

    .line 2836
    .local v3, "retVal":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMobileDataEnabled()- subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " retVal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2838
    return v3

    .line 2840
    .end local v2    # "subId":I
    .end local v3    # "retVal":Z
    :cond_51
    const-string v2, "getMobileDataEnabled()- remote exception retVal=false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2841
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getMultipathPreference(Landroid/net/Network;)I
    .registers 4
    .param p1, "network"    # Landroid/net/Network;

    .line 5833
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->getMultipathPreference(Landroid/net/Network;)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 5834
    :catch_7
    move-exception v0

    .line 5835
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;
    .registers 5
    .param p1, "network"    # Landroid/net/Network;

    .line 2019
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    iget-object v1, p0, Landroid/net/ConnectivityManager;->mContext:Landroid/content/Context;

    .line 2020
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ConnectivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 2019
    invoke-interface {v0, p1, v1, v2}, Landroid/net/IConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)Landroid/net/NetworkCapabilities;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return-object v0

    .line 2021
    :catch_13
    move-exception v0

    .line 2022
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist getNetworkForType(I)Landroid/net/Network;
    .registers 4
    .param p1, "networkType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1862
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->getNetworkForType(I)Landroid/net/Network;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1863
    :catch_7
    move-exception v0

    .line 1864
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getNetworkInfo(I)Landroid/net/NetworkInfo;
    .registers 4
    .param p1, "networkType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1776
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1777
    :catch_7
    move-exception v0

    .line 1778
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;
    .registers 4
    .param p1, "network"    # Landroid/net/Network;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1796
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfoForUid(Landroid/net/Network;IZ)Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getNetworkInfoForUid(Landroid/net/Network;IZ)Landroid/net/NetworkInfo;
    .registers 6
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "uid"    # I
    .param p3, "ignoreBlocked"    # Z

    .line 1802
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/IConnectivityManager;->getNetworkInfoForUid(Landroid/net/Network;IZ)Landroid/net/NetworkInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1803
    :catch_7
    move-exception v0

    .line 1804
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getNetworkPreference()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1499
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getNetworkWatchlistConfigHash()[B
    .registers 4

    .line 6075
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getNetworkWatchlistConfigHash()[B

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 6076
    :catch_7
    move-exception v0

    .line 6077
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ConnectivityManager"

    const-string v2, "Unable to get watchlist config hash"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6078
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;
    .registers 4
    .param p1, "network"    # Landroid/net/Network;

    .line 3755
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 3756
    :catch_7
    move-exception v0

    .line 3757
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getRedactedLinkPropertiesForPackage(Landroid/net/LinkProperties;ILjava/lang/String;)Landroid/net/LinkProperties;
    .registers 6
    .param p1, "lp"    # Landroid/net/LinkProperties;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 1993
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    iget-object v1, p0, Landroid/net/ConnectivityManager;->mContext:Landroid/content/Context;

    .line 1994
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    .line 1993
    invoke-interface {v0, p1, p2, p3, v1}, Landroid/net/IConnectivityManager;->getRedactedLinkPropertiesForPackage(Landroid/net/LinkProperties;ILjava/lang/String;Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 1995
    :catch_d
    move-exception v0

    .line 1996
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getRedactedNetworkCapabilitiesForPackage(Landroid/net/NetworkCapabilities;ILjava/lang/String;)Landroid/net/NetworkCapabilities;
    .registers 6
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 2053
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    iget-object v1, p0, Landroid/net/ConnectivityManager;->mContext:Landroid/content/Context;

    .line 2054
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    .line 2053
    invoke-interface {v0, p1, p2, p3, v1}, Landroid/net/IConnectivityManager;->getRedactedNetworkCapabilitiesForPackage(Landroid/net/NetworkCapabilities;ILjava/lang/String;Ljava/lang/String;)Landroid/net/NetworkCapabilities;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 2055
    :catch_d
    move-exception v0

    .line 2056
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getRestrictBackgroundStatus()I
    .registers 3

    .line 6059
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getRestrictBackgroundStatusByCaller()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 6060
    :catch_7
    move-exception v0

    .line 6061
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getRoutingCoordinatorService()Landroid/os/IBinder;
    .registers 3

    .line 6825
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getRoutingCoordinatorService()Landroid/os/IBinder;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 6826
    :catch_7
    move-exception v0

    .line 6827
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getSupportedKeepalives()[I
    .registers 3

    .line 2721
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getSupportedKeepalives()[I

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 2722
    :catch_7
    move-exception v0

    .line 2723
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist getTetherableBluetoothRegexs()[Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3403
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getTetheringManager()Landroid/net/TetheringManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/TetheringManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getTetherableIfaces()[Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3022
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getTetheringManager()Landroid/net/TetheringManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/TetheringManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getTetherableUsbRegexs()[Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3366
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getTetheringManager()Landroid/net/TetheringManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/TetheringManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getTetherableWifiRegexs()[Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3384
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getTetheringManager()Landroid/net/TetheringManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/TetheringManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getTetheredDhcpRanges()[Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3071
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getTetheredDhcpRanges is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist getTetheredIfaces()[Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3037
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getTetheringManager()Landroid/net/TetheringManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/TetheringManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getTetheringErroredIfaces()[Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3058
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getTetheringManager()Landroid/net/TetheringManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/TetheringManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUidFirewallRule(II)I
    .registers 5
    .param p1, "chain"    # I
    .param p2, "uid"    # I

    .line 6694
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->getUidFirewallRule(II)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 6695
    :catch_7
    move-exception v0

    .line 6696
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isActiveNetworkMetered()Z
    .registers 3

    .line 3812
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3813
    :catch_7
    move-exception v0

    .line 3814
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isConnectivityServiceFeatureEnabledForTesting(Ljava/lang/String;)Z
    .registers 4
    .param p1, "featureFlag"    # Ljava/lang/String;

    .line 6854
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->isConnectivityServiceFeatureEnabledForTesting(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 6855
    :catch_7
    move-exception v0

    .line 6856
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isDefaultNetworkActive()Z
    .registers 3

    .line 2925
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->isDefaultNetworkActive()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2926
    :catch_7
    move-exception v0

    .line 2927
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isFeatureEnabled(J)Z
    .registers 8
    .param p1, "connectivityManagerFeature"    # J

    .line 4889
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mEnabledConnectivityManagerFeaturesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4890
    :try_start_3
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mEnabledConnectivityManagerFeatures:Ljava/lang/Long;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2a

    if-nez v1, :cond_18

    .line 4892
    :try_start_7
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    .line 4893
    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getEnabledConnectivityManagerFeatures()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Landroid/net/ConnectivityManager;->mEnabledConnectivityManagerFeatures:Ljava/lang/Long;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_13} :catch_14
    .catchall {:try_start_7 .. :try_end_13} :catchall_2a

    .line 4896
    goto :goto_18

    .line 4894
    :catch_14
    move-exception v1

    .line 4895
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_15
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 4898
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_18
    :goto_18
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mEnabledConnectivityManagerFeatures:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    and-long/2addr v1, p1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_27

    const/4 v1, 0x1

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    :goto_28
    monitor-exit v0

    return v1

    .line 4899
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_15 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public greylist-max-p isNetworkSupported(I)Z
    .registers 4
    .param p1, "networkType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3792
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->isNetworkSupported(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3793
    :catch_7
    move-exception v0

    .line 3794
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isTetheringSupported()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3154
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getTetheringManager()Landroid/net/TetheringManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/TetheringManager;->isTetheringSupported()Z

    move-result v0

    return v0
.end method

.method public blacklist isUidNetworkingBlocked(IZ)Z
    .registers 5
    .param p1, "uid"    # I
    .param p2, "isNetworkMetered"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 6799
    invoke-static {}, Landroid/net/connectivity/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 6803
    invoke-static {}, Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps;->getInstance()Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps;

    move-result-object v0

    .line 6809
    .local v0, "reader":Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps;
    invoke-virtual {v0, p1, p2}, Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps;->isUidNetworkingBlocked(IZ)Z

    move-result v1

    return v1

    .line 6800
    .end local v0    # "reader":Landroid/net/connectivity/android/net/NetworkStackBpfNetMaps;
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "isUidNetworkingBlocked is not supported on pre-U devices"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist offerNetwork(ILandroid/net/NetworkScore;Landroid/net/NetworkCapabilities;Landroid/net/connectivity/android/net/INetworkOfferCallback;)V
    .registers 9
    .param p1, "providerId"    # I
    .param p2, "score"    # Landroid/net/NetworkScore;
    .param p3, "caps"    # Landroid/net/NetworkCapabilities;
    .param p4, "callback"    # Landroid/net/connectivity/android/net/INetworkOfferCallback;

    .line 3935
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    const-string v1, "null score"

    .line 3936
    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkScore;

    const-string v2, "null caps"

    .line 3937
    invoke-static {p3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkCapabilities;

    const-string v3, "null callback"

    .line 3938
    invoke-static {p4, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/connectivity/android/net/INetworkOfferCallback;

    .line 3935
    invoke-interface {v0, p1, v1, v2, v3}, Landroid/net/IConnectivityManager;->offerNetwork(ILandroid/net/NetworkScore;Landroid/net/NetworkCapabilities;Landroid/net/connectivity/android/net/INetworkOfferCallback;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1d} :catch_1f

    .line 3941
    nop

    .line 3942
    return-void

    .line 3939
    :catch_1f
    move-exception v0

    .line 3940
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist registerBestMatchingNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V
    .registers 11
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 5533
    iget-object v1, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 5534
    .local v1, "nc":Landroid/net/NetworkCapabilities;
    new-instance v6, Landroid/net/ConnectivityManager$CallbackHandler;

    invoke-direct {v6, p3}, Landroid/net/ConnectivityManager$CallbackHandler;-><init>(Landroid/os/Handler;)V

    .line 5535
    .local v6, "cbHandler":Landroid/net/ConnectivityManager$CallbackHandler;
    sget-object v4, Landroid/net/NetworkRequest$Type;->LISTEN_FOR_BEST:Landroid/net/NetworkRequest$Type;

    const/4 v5, -0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p2

    .end local p2    # "networkCallback":Landroid/net/ConnectivityManager$NetworkCallback;
    .local v2, "networkCallback":Landroid/net/ConnectivityManager$NetworkCallback;
    invoke-direct/range {v0 .. v6}, Landroid/net/ConnectivityManager;->sendRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/net/ConnectivityManager$NetworkCallback;ILandroid/net/NetworkRequest$Type;ILandroid/net/ConnectivityManager$CallbackHandler;)Landroid/net/NetworkRequest;

    .line 5536
    return-void
.end method

.method public whitelist registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .registers 3
    .param p1, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .line 5402
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getDefaultHandler()Landroid/net/ConnectivityManager$CallbackHandler;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 5403
    return-void
.end method

.method public whitelist registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V
    .registers 4
    .param p1, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 5428
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallbackForUid(ILandroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 5429
    return-void
.end method

.method public blacklist registerDefaultNetworkCallbackForUid(ILandroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 5460
    new-instance v0, Landroid/net/ConnectivityManager$CallbackHandler;

    invoke-direct {v0, p3}, Landroid/net/ConnectivityManager$CallbackHandler;-><init>(Landroid/os/Handler;)V

    move-object v8, v0

    .line 5461
    .local v8, "cbHandler":Landroid/net/ConnectivityManager$CallbackHandler;
    sget-object v6, Landroid/net/NetworkRequest$Type;->TRACK_DEFAULT:Landroid/net/NetworkRequest$Type;

    const/4 v7, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    .end local p1    # "uid":I
    .end local p2    # "networkCallback":Landroid/net/ConnectivityManager$NetworkCallback;
    .local v2, "uid":I
    .local v4, "networkCallback":Landroid/net/ConnectivityManager$NetworkCallback;
    invoke-direct/range {v1 .. v8}, Landroid/net/ConnectivityManager;->sendRequestForNetwork(ILandroid/net/NetworkCapabilities;Landroid/net/ConnectivityManager$NetworkCallback;ILandroid/net/NetworkRequest$Type;ILandroid/net/ConnectivityManager$CallbackHandler;)Landroid/net/NetworkRequest;

    .line 5463
    return-void
.end method

.method public blacklist registerNetworkAgent(Landroid/net/INetworkAgent;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;I)Landroid/net/connectivity/android/net/NetworkAndAgentRegistryParcelable;
    .registers 17
    .param p1, "na"    # Landroid/net/INetworkAgent;
    .param p2, "ni"    # Landroid/net/NetworkInfo;
    .param p3, "lp"    # Landroid/net/LinkProperties;
    .param p4, "nc"    # Landroid/net/NetworkCapabilities;
    .param p5, "score"    # Landroid/net/NetworkScore;
    .param p6, "config"    # Landroid/net/NetworkAgentConfig;
    .param p7, "providerId"    # I

    .line 3982
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/net/ConnectivityManager;->registerNetworkAgent(Landroid/net/INetworkAgent;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/connectivity/android/net/LocalNetworkConfig;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;I)Landroid/net/connectivity/android/net/NetworkAndAgentRegistryParcelable;

    move-result-object v5

    return-object v5
.end method

.method public blacklist registerNetworkAgent(Landroid/net/INetworkAgent;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/connectivity/android/net/LocalNetworkConfig;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;I)Landroid/net/connectivity/android/net/NetworkAndAgentRegistryParcelable;
    .registers 18
    .param p1, "na"    # Landroid/net/INetworkAgent;
    .param p2, "ni"    # Landroid/net/NetworkInfo;
    .param p3, "lp"    # Landroid/net/LinkProperties;
    .param p4, "nc"    # Landroid/net/NetworkCapabilities;
    .param p5, "localNetworkConfig"    # Landroid/net/connectivity/android/net/LocalNetworkConfig;
    .param p6, "score"    # Landroid/net/NetworkScore;
    .param p7, "config"    # Landroid/net/NetworkAgentConfig;
    .param p8, "providerId"    # I

    .line 4000
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v5, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Landroid/net/IConnectivityManager;->registerNetworkAgent(Landroid/net/INetworkAgent;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/NetworkScore;Landroid/net/connectivity/android/net/LocalNetworkConfig;Landroid/net/NetworkAgentConfig;I)Landroid/net/connectivity/android/net/NetworkAndAgentRegistryParcelable;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v0

    .line 4002
    :catch_11
    move-exception v0

    .line 4003
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/app/PendingIntent;)V
    .registers 7
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "operation"    # Landroid/app/PendingIntent;

    .line 5367
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->printStackTrace()V

    .line 5368
    invoke-static {p2}, Landroid/net/ConnectivityManager;->checkPendingIntentNotNull(Landroid/app/PendingIntent;)V

    .line 5370
    :try_start_6
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    iget-object v1, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v2, p0, Landroid/net/ConnectivityManager;->mContext:Landroid/content/Context;

    .line 5371
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/net/ConnectivityManager;->mContext:Landroid/content/Context;

    .line 5372
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 5370
    invoke-interface {v0, v1, p2, v2, v3}, Landroid/net/IConnectivityManager;->pendingListenForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_19} :catch_21
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_19} :catch_1b

    .line 5377
    nop

    .line 5378
    return-void

    .line 5375
    :catch_1b
    move-exception v0

    .line 5376
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/net/ConnectivityManager;->convertServiceException(Landroid/os/ServiceSpecificException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5373
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_21
    move-exception v0

    .line 5374
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .registers 4
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .line 5291
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getDefaultHandler()Landroid/net/ConnectivityManager$CallbackHandler;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 5292
    return-void
.end method

.method public whitelist registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V
    .registers 12
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 5319
    new-instance v0, Landroid/net/ConnectivityManager$CallbackHandler;

    invoke-direct {v0, p3}, Landroid/net/ConnectivityManager$CallbackHandler;-><init>(Landroid/os/Handler;)V

    move-object v7, v0

    .line 5320
    .local v7, "cbHandler":Landroid/net/ConnectivityManager$CallbackHandler;
    iget-object v2, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 5321
    .local v2, "nc":Landroid/net/NetworkCapabilities;
    sget-object v5, Landroid/net/NetworkRequest$Type;->LISTEN:Landroid/net/NetworkRequest$Type;

    const/4 v6, -0x1

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p2

    .end local p2    # "networkCallback":Landroid/net/ConnectivityManager$NetworkCallback;
    .local v3, "networkCallback":Landroid/net/ConnectivityManager$NetworkCallback;
    invoke-direct/range {v1 .. v7}, Landroid/net/ConnectivityManager;->sendRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/net/ConnectivityManager$NetworkCallback;ILandroid/net/NetworkRequest$Type;ILandroid/net/ConnectivityManager$CallbackHandler;)Landroid/net/NetworkRequest;

    .line 5322
    return-void
.end method

.method public whitelist registerNetworkProvider(Landroid/net/NetworkProvider;)I
    .registers 5
    .param p1, "provider"    # Landroid/net/NetworkProvider;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3870
    invoke-virtual {p1}, Landroid/net/NetworkProvider;->getProviderId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_24

    .line 3875
    :try_start_7
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-virtual {p1}, Landroid/net/NetworkProvider;->getMessenger()Landroid/os/Messenger;

    move-result-object v1

    .line 3876
    invoke-virtual {p1}, Landroid/net/NetworkProvider;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3875
    invoke-interface {v0, v1, v2}, Landroid/net/IConnectivityManager;->registerNetworkProvider(Landroid/os/Messenger;Ljava/lang/String;)I

    move-result v0

    .line 3877
    .local v0, "providerId":I
    invoke-virtual {p1, v0}, Landroid/net/NetworkProvider;->setProviderId(I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_18} :catch_1e

    .line 3880
    .end local v0    # "providerId":I
    nop

    .line 3881
    invoke-virtual {p1}, Landroid/net/NetworkProvider;->getProviderId()I

    move-result v0

    return v0

    .line 3878
    :catch_1e
    move-exception v0

    .line 3879
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3871
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "NetworkProviders can only be registered once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist registerQosCallback(Landroid/net/QosSocketInfo;Ljava/util/concurrent/Executor;Landroid/net/QosCallback;)V
    .registers 7
    .param p1, "socketInfo"    # Landroid/net/QosSocketInfo;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/net/QosCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6203
    const-string v0, "socketInfo must be non-null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6204
    const-string v0, "executor must be non-null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6205
    const-string v0, "callback must be non-null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6208
    :try_start_f
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mQosCallbackConnections:Ljava/util/List;

    monitor-enter v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_4a
    .catch Landroid/os/ServiceSpecificException; {:try_start_f .. :try_end_12} :catch_3a

    .line 6209
    :try_start_12
    invoke-direct {p0, p3}, Landroid/net/ConnectivityManager;->getQosCallbackConnection(Landroid/net/QosCallback;)Landroid/net/connectivity/android/net/QosCallbackConnection;

    move-result-object v1

    if-nez v1, :cond_2a

    .line 6210
    new-instance v1, Landroid/net/connectivity/android/net/QosCallbackConnection;

    invoke-direct {v1, p0, p3, p2}, Landroid/net/connectivity/android/net/QosCallbackConnection;-><init>(Landroid/net/ConnectivityManager;Landroid/net/QosCallback;Ljava/util/concurrent/Executor;)V

    .line 6212
    .local v1, "connection":Landroid/net/connectivity/android/net/QosCallbackConnection;
    iget-object v2, p0, Landroid/net/ConnectivityManager;->mQosCallbackConnections:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6213
    iget-object v2, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v2, p1, v1}, Landroid/net/IConnectivityManager;->registerQosSocketCallback(Landroid/net/QosSocketInfo;Landroid/net/connectivity/android/net/IQosCallback;)V

    .line 6214
    .end local v1    # "connection":Landroid/net/connectivity/android/net/QosCallbackConnection;
    nop

    .line 6218
    monitor-exit v0

    goto :goto_58

    .line 6215
    :cond_2a
    const-string v1, "ConnectivityManager"

    const-string v2, "registerQosCallback: Callback already registered"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6216
    new-instance v1, Landroid/net/QosCallback$QosCallbackRegistrationException;

    invoke-direct {v1}, Landroid/net/QosCallback$QosCallbackRegistrationException;-><init>()V

    .end local p0    # "this":Landroid/net/ConnectivityManager;
    .end local p1    # "socketInfo":Landroid/net/QosSocketInfo;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroid/net/QosCallback;
    throw v1

    .line 6218
    .restart local p0    # "this":Landroid/net/ConnectivityManager;
    .restart local p1    # "socketInfo":Landroid/net/QosSocketInfo;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Landroid/net/QosCallback;
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_12 .. :try_end_39} :catchall_37

    .end local p0    # "this":Landroid/net/ConnectivityManager;
    .end local p1    # "socketInfo":Landroid/net/QosSocketInfo;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroid/net/QosCallback;
    :try_start_39
    throw v1
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_3a} :catch_4a
    .catch Landroid/os/ServiceSpecificException; {:try_start_39 .. :try_end_3a} :catch_3a

    .line 6227
    .restart local p0    # "this":Landroid/net/ConnectivityManager;
    .restart local p1    # "socketInfo":Landroid/net/QosSocketInfo;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Landroid/net/QosCallback;
    :catch_3a
    move-exception v0

    .line 6228
    .local v0, "e":Landroid/os/ServiceSpecificException;
    const-string v1, "ConnectivityManager"

    const-string v2, "registerQosCallback: Error while registering "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6229
    invoke-virtual {p0, p3}, Landroid/net/ConnectivityManager;->unregisterQosCallback(Landroid/net/QosCallback;)V

    .line 6230
    invoke-static {v0}, Landroid/net/ConnectivityManager;->convertServiceException(Landroid/os/ServiceSpecificException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6219
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_4a
    move-exception v0

    .line 6220
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ConnectivityManager"

    const-string v2, "registerQosCallback: Error while registering "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6225
    invoke-virtual {p0, p3}, Landroid/net/ConnectivityManager;->unregisterQosCallback(Landroid/net/QosCallback;)V

    .line 6226
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 6231
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_58
    nop

    .line 6232
    return-void
.end method

.method public blacklist registerSystemDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V
    .registers 11
    .param p1, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 5503
    new-instance v0, Landroid/net/ConnectivityManager$CallbackHandler;

    invoke-direct {v0, p2}, Landroid/net/ConnectivityManager$CallbackHandler;-><init>(Landroid/os/Handler;)V

    move-object v7, v0

    .line 5504
    .local v7, "cbHandler":Landroid/net/ConnectivityManager$CallbackHandler;
    sget-object v5, Landroid/net/NetworkRequest$Type;->TRACK_SYSTEM_DEFAULT:Landroid/net/NetworkRequest$Type;

    const/4 v6, -0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    .end local p1    # "networkCallback":Landroid/net/ConnectivityManager$NetworkCallback;
    .local v3, "networkCallback":Landroid/net/ConnectivityManager$NetworkCallback;
    invoke-direct/range {v1 .. v7}, Landroid/net/ConnectivityManager;->sendRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/net/ConnectivityManager$NetworkCallback;ILandroid/net/NetworkRequest$Type;ILandroid/net/ConnectivityManager$CallbackHandler;)Landroid/net/NetworkRequest;

    .line 5506
    return-void
.end method

.method public whitelist registerTetheringEventCallback(Ljava/util/concurrent/Executor;Landroid/net/ConnectivityManager$OnTetheringEventCallback;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/net/ConnectivityManager$OnTetheringEventCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3312
    const-string v0, "OnTetheringEventCallback cannot be null."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3314
    new-instance v0, Landroid/net/ConnectivityManager$4;

    invoke-direct {v0, p0, p2}, Landroid/net/ConnectivityManager$4;-><init>(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$OnTetheringEventCallback;)V

    .line 3322
    .local v0, "tetherCallback":Landroid/net/TetheringManager$TetheringEventCallback;
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mTetheringEventCallbacks:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 3323
    :try_start_d
    iget-object v2, p0, Landroid/net/ConnectivityManager;->mTetheringEventCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3324
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getTetheringManager()Landroid/net/TetheringManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/net/TetheringManager;->registerTetheringEventCallback(Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$TetheringEventCallback;)V

    .line 3325
    monitor-exit v1

    .line 3326
    return-void

    .line 3325
    :catchall_1b
    move-exception v2

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_1b

    throw v2
.end method

.method public whitelist releaseNetworkRequest(Landroid/app/PendingIntent;)V
    .registers 4
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .line 5244
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->printStackTrace()V

    .line 5245
    invoke-static {p1}, Landroid/net/ConnectivityManager;->checkPendingIntentNotNull(Landroid/app/PendingIntent;)V

    .line 5247
    :try_start_6
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->releasePendingNetworkRequest(Landroid/app/PendingIntent;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    .line 5250
    nop

    .line 5251
    return-void

    .line 5248
    :catch_d
    move-exception v0

    .line 5249
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeDefaultNetworkActiveListener(Landroid/net/ConnectivityManager$OnNetworkActiveListener;)V
    .registers 6
    .param p1, "l"    # Landroid/net/ConnectivityManager$OnNetworkActiveListener;

    .line 2901
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mNetworkActivityListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2902
    :try_start_3
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mNetworkActivityListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/android/net/INetworkActivityListener;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_28

    .line 2903
    .local v1, "rl":Landroid/net/connectivity/android/net/INetworkActivityListener;
    if-eqz v1, :cond_20

    .line 2907
    :try_start_d
    iget-object v2, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v2, v1}, Landroid/net/IConnectivityManager;->unregisterNetworkActivityListener(Landroid/net/connectivity/android/net/INetworkActivityListener;)V

    .line 2908
    iget-object v2, p0, Landroid/net/ConnectivityManager;->mNetworkActivityListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_17} :catch_1a
    .catchall {:try_start_d .. :try_end_17} :catchall_28

    .line 2911
    nop

    .line 2912
    .end local v1    # "rl":Landroid/net/connectivity/android/net/INetworkActivityListener;
    :try_start_18
    monitor-exit v0

    .line 2913
    return-void

    .line 2909
    .restart local v1    # "rl":Landroid/net/connectivity/android/net/INetworkActivityListener;
    :catch_1a
    move-exception v2

    .line 2910
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/net/ConnectivityManager;
    .end local p1    # "l":Landroid/net/ConnectivityManager$OnNetworkActiveListener;
    throw v3

    .line 2904
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/net/ConnectivityManager;
    .restart local p1    # "l":Landroid/net/ConnectivityManager$OnNetworkActiveListener;
    :cond_20
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Listener was not registered."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/ConnectivityManager;
    .end local p1    # "l":Landroid/net/ConnectivityManager$OnNetworkActiveListener;
    throw v2

    .line 2912
    .end local v1    # "rl":Landroid/net/connectivity/android/net/INetworkActivityListener;
    .restart local p0    # "this":Landroid/net/ConnectivityManager;
    .restart local p1    # "l":Landroid/net/ConnectivityManager$OnNetworkActiveListener;
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_18 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public blacklist removeUidFromMeteredNetworkAllowList(I)V
    .registers 5
    .param p1, "uid"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 6586
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    const/16 v1, 0xa

    const/4 v2, 0x2

    invoke-interface {v0, v1, p1, v2}, Landroid/net/IConnectivityManager;->setUidFirewallRule(III)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    .line 6589
    nop

    .line 6590
    return-void

    .line 6587
    :catch_a
    move-exception v0

    .line 6588
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeUidFromMeteredNetworkDenyList(I)V
    .registers 5
    .param p1, "uid"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 6645
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    const/16 v1, 0xb

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Landroid/net/IConnectivityManager;->setUidFirewallRule(III)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    .line 6648
    nop

    .line 6649
    return-void

    .line 6646
    :catch_a
    move-exception v0

    .line 6647
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist replaceFirewallChain(I[I)V
    .registers 5
    .param p1, "chain"    # I
    .param p2, "uids"    # [I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 6766
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6768
    :try_start_3
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->replaceFirewallChain(I[I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_a

    .line 6771
    nop

    .line 6772
    return-void

    .line 6769
    :catch_a
    move-exception v0

    .line 6770
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist reportBadNetwork(Landroid/net/Network;)V
    .registers 4
    .param p1, "network"    # Landroid/net/Network;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3662
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->printStackTrace()V

    .line 3666
    :try_start_3
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/net/IConnectivityManager;->reportNetworkConnectivity(Landroid/net/Network;Z)V

    .line 3667
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/net/IConnectivityManager;->reportNetworkConnectivity(Landroid/net/Network;Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_f} :catch_11

    .line 3670
    nop

    .line 3671
    return-void

    .line 3668
    :catch_11
    move-exception v0

    .line 3669
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o reportInetCondition(II)V
    .registers 5
    .param p1, "networkType"    # I
    .param p2, "percentage"    # I

    .line 3641
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->printStackTrace()V

    .line 3643
    :try_start_3
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->reportInetCondition(II)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_a

    .line 3646
    nop

    .line 3647
    return-void

    .line 3644
    :catch_a
    move-exception v0

    .line 3645
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist reportNetworkConnectivity(Landroid/net/Network;Z)V
    .registers 5
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "hasConnectivity"    # Z

    .line 3685
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->printStackTrace()V

    .line 3687
    :try_start_3
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->reportNetworkConnectivity(Landroid/net/Network;Z)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_a

    .line 3690
    nop

    .line 3691
    return-void

    .line 3688
    :catch_a
    move-exception v0

    .line 3689
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist requestBackgroundNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V
    .registers 11
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 6365
    iget-object v1, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 6366
    .local v1, "nc":Landroid/net/NetworkCapabilities;
    sget-object v4, Landroid/net/NetworkRequest$Type;->BACKGROUND_REQUEST:Landroid/net/NetworkRequest$Type;

    new-instance v6, Landroid/net/ConnectivityManager$CallbackHandler;

    invoke-direct {v6, p3}, Landroid/net/ConnectivityManager$CallbackHandler;-><init>(Landroid/os/Handler;)V

    const/4 v3, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v2, p2

    .end local p2    # "networkCallback":Landroid/net/ConnectivityManager$NetworkCallback;
    .local v2, "networkCallback":Landroid/net/ConnectivityManager$NetworkCallback;
    invoke-direct/range {v0 .. v6}, Landroid/net/ConnectivityManager;->sendRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/net/ConnectivityManager$NetworkCallback;ILandroid/net/NetworkRequest$Type;ILandroid/net/ConnectivityManager$CallbackHandler;)Landroid/net/NetworkRequest;

    .line 6368
    return-void
.end method

.method public whitelist requestBandwidthUpdate(Landroid/net/Network;)Z
    .registers 4
    .param p1, "network"    # Landroid/net/Network;

    .line 5552
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->requestBandwidthUpdate(Landroid/net/Network;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 5553
    :catch_7
    move-exception v0

    .line 5554
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist requestNetwork(Landroid/net/NetworkRequest;IILandroid/os/Handler;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .registers 14
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "timeoutMs"    # I
    .param p3, "legacyType"    # I
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4931
    const/4 v0, -0x1

    if-eq p3, v0, :cond_15

    .line 4934
    new-instance v0, Landroid/net/ConnectivityManager$CallbackHandler;

    invoke-direct {v0, p4}, Landroid/net/ConnectivityManager$CallbackHandler;-><init>(Landroid/os/Handler;)V

    move-object v7, v0

    .line 4935
    .local v7, "cbHandler":Landroid/net/ConnectivityManager$CallbackHandler;
    iget-object v2, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 4936
    .local v2, "nc":Landroid/net/NetworkCapabilities;
    sget-object v5, Landroid/net/NetworkRequest$Type;->REQUEST:Landroid/net/NetworkRequest$Type;

    move-object v1, p0

    move v4, p2

    move v6, p3

    move-object v3, p5

    .end local p2    # "timeoutMs":I
    .end local p3    # "legacyType":I
    .end local p5    # "networkCallback":Landroid/net/ConnectivityManager$NetworkCallback;
    .local v3, "networkCallback":Landroid/net/ConnectivityManager$NetworkCallback;
    .local v4, "timeoutMs":I
    .local v6, "legacyType":I
    invoke-direct/range {v1 .. v7}, Landroid/net/ConnectivityManager;->sendRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/net/ConnectivityManager$NetworkCallback;ILandroid/net/NetworkRequest$Type;ILandroid/net/ConnectivityManager$CallbackHandler;)Landroid/net/NetworkRequest;

    .line 4937
    return-void

    .line 4932
    .end local v2    # "nc":Landroid/net/NetworkCapabilities;
    .end local v3    # "networkCallback":Landroid/net/ConnectivityManager$NetworkCallback;
    .end local v4    # "timeoutMs":I
    .end local v6    # "legacyType":I
    .end local v7    # "cbHandler":Landroid/net/ConnectivityManager$CallbackHandler;
    .restart local p2    # "timeoutMs":I
    .restart local p3    # "legacyType":I
    .restart local p5    # "networkCallback":Landroid/net/ConnectivityManager$NetworkCallback;
    :cond_15
    move v4, p2

    move v6, p3

    .end local p2    # "timeoutMs":I
    .end local p3    # "legacyType":I
    .restart local v4    # "timeoutMs":I
    .restart local v6    # "legacyType":I
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "TYPE_NONE is meaningless legacy type"

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public whitelist requestNetwork(Landroid/net/NetworkRequest;Landroid/app/PendingIntent;)V
    .registers 7
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "operation"    # Landroid/app/PendingIntent;

    .line 5218
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->printStackTrace()V

    .line 5219
    invoke-static {p2}, Landroid/net/ConnectivityManager;->checkPendingIntentNotNull(Landroid/app/PendingIntent;)V

    .line 5221
    :try_start_6
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    iget-object v1, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v2, p0, Landroid/net/ConnectivityManager;->mContext:Landroid/content/Context;

    .line 5222
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/net/ConnectivityManager;->mContext:Landroid/content/Context;

    .line 5223
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 5221
    invoke-interface {v0, v1, p2, v2, v3}, Landroid/net/IConnectivityManager;->pendingRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)Landroid/net/NetworkRequest;
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_19} :catch_21
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_19} :catch_1b

    .line 5228
    nop

    .line 5229
    return-void

    .line 5226
    :catch_1b
    move-exception v0

    .line 5227
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/net/ConnectivityManager;->convertServiceException(Landroid/os/ServiceSpecificException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5224
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_21
    move-exception v0

    .line 5225
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .registers 4
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .line 5020
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getDefaultHandler()Landroid/net/ConnectivityManager$CallbackHandler;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 5021
    return-void
.end method

.method public whitelist requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;I)V
    .registers 11
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;
    .param p3, "timeoutMs"    # I

    .line 5109
    invoke-static {p3}, Landroid/net/ConnectivityManager;->checkTimeout(I)V

    .line 5110
    iget-object v1, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 5111
    .local v1, "nc":Landroid/net/NetworkCapabilities;
    sget-object v4, Landroid/net/NetworkRequest$Type;->REQUEST:Landroid/net/NetworkRequest$Type;

    .line 5112
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getDefaultHandler()Landroid/net/ConnectivityManager$CallbackHandler;

    move-result-object v6

    .line 5111
    const/4 v5, -0x1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    .end local p2    # "networkCallback":Landroid/net/ConnectivityManager$NetworkCallback;
    .end local p3    # "timeoutMs":I
    .local v2, "networkCallback":Landroid/net/ConnectivityManager$NetworkCallback;
    .local v3, "timeoutMs":I
    invoke-direct/range {v0 .. v6}, Landroid/net/ConnectivityManager;->sendRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/net/ConnectivityManager$NetworkCallback;ILandroid/net/NetworkRequest$Type;ILandroid/net/ConnectivityManager$CallbackHandler;)Landroid/net/NetworkRequest;

    .line 5113
    return-void
.end method

.method public whitelist requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V
    .registers 12
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 5040
    new-instance v0, Landroid/net/ConnectivityManager$CallbackHandler;

    invoke-direct {v0, p3}, Landroid/net/ConnectivityManager$CallbackHandler;-><init>(Landroid/os/Handler;)V

    move-object v7, v0

    .line 5041
    .local v7, "cbHandler":Landroid/net/ConnectivityManager$CallbackHandler;
    iget-object v2, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 5042
    .local v2, "nc":Landroid/net/NetworkCapabilities;
    sget-object v5, Landroid/net/NetworkRequest$Type;->REQUEST:Landroid/net/NetworkRequest$Type;

    const/4 v6, -0x1

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p2

    .end local p2    # "networkCallback":Landroid/net/ConnectivityManager$NetworkCallback;
    .local v3, "networkCallback":Landroid/net/ConnectivityManager$NetworkCallback;
    invoke-direct/range {v1 .. v7}, Landroid/net/ConnectivityManager;->sendRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/net/ConnectivityManager$NetworkCallback;ILandroid/net/NetworkRequest$Type;ILandroid/net/ConnectivityManager$CallbackHandler;)Landroid/net/NetworkRequest;

    .line 5043
    return-void
.end method

.method public whitelist requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;I)V
    .registers 13
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "timeoutMs"    # I

    .line 5136
    invoke-static {p4}, Landroid/net/ConnectivityManager;->checkTimeout(I)V

    .line 5137
    new-instance v0, Landroid/net/ConnectivityManager$CallbackHandler;

    invoke-direct {v0, p3}, Landroid/net/ConnectivityManager$CallbackHandler;-><init>(Landroid/os/Handler;)V

    move-object v7, v0

    .line 5138
    .local v7, "cbHandler":Landroid/net/ConnectivityManager$CallbackHandler;
    iget-object v2, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 5139
    .local v2, "nc":Landroid/net/NetworkCapabilities;
    sget-object v5, Landroid/net/NetworkRequest$Type;->REQUEST:Landroid/net/NetworkRequest$Type;

    const/4 v6, -0x1

    move-object v1, p0

    move-object v3, p2

    move v4, p4

    .end local p2    # "networkCallback":Landroid/net/ConnectivityManager$NetworkCallback;
    .end local p4    # "timeoutMs":I
    .local v3, "networkCallback":Landroid/net/ConnectivityManager$NetworkCallback;
    .local v4, "timeoutMs":I
    invoke-direct/range {v1 .. v7}, Landroid/net/ConnectivityManager;->sendRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/net/ConnectivityManager$NetworkCallback;ILandroid/net/NetworkRequest$Type;ILandroid/net/ConnectivityManager$CallbackHandler;)Landroid/net/NetworkRequest;

    .line 5140
    return-void
.end method

.method public greylist requestRouteToHost(II)Z
    .registers 4
    .param p1, "networkType"    # I
    .param p2, "hostAddress"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2751
    invoke-static {p2}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method public greylist requestRouteToHostAddress(ILjava/net/InetAddress;)Z
    .registers 7
    .param p1, "networkType"    # I
    .param p2, "hostAddress"    # Ljava/net/InetAddress;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2776
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->checkLegacyRoutingApiAccess()V

    .line 2778
    :try_start_3
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    iget-object v2, p0, Landroid/net/ConnectivityManager;->mContext:Landroid/content/Context;

    .line 2779
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/net/ConnectivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 2778
    invoke-interface {v0, p1, v1, v2, v3}, Landroid/net/IConnectivityManager;->requestRouteToHostAddress(I[BLjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_19} :catch_1a

    return v0

    .line 2780
    :catch_1a
    move-exception v0

    .line 2781
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist reserveNetwork(Landroid/net/NetworkRequest;Landroid/os/Handler;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .registers 12
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .line 5075
    new-instance v0, Landroid/net/ConnectivityManager$CallbackHandler;

    invoke-direct {v0, p2}, Landroid/net/ConnectivityManager$CallbackHandler;-><init>(Landroid/os/Handler;)V

    move-object v7, v0

    .line 5076
    .local v7, "cbHandler":Landroid/net/ConnectivityManager$CallbackHandler;
    iget-object v2, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 5077
    .local v2, "nc":Landroid/net/NetworkCapabilities;
    sget-object v5, Landroid/net/NetworkRequest$Type;->RESERVATION:Landroid/net/NetworkRequest$Type;

    const/4 v6, -0x1

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p3

    .end local p3    # "networkCallback":Landroid/net/ConnectivityManager$NetworkCallback;
    .local v3, "networkCallback":Landroid/net/ConnectivityManager$NetworkCallback;
    invoke-direct/range {v1 .. v7}, Landroid/net/ConnectivityManager;->sendRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/net/ConnectivityManager$NetworkCallback;ILandroid/net/NetworkRequest$Type;ILandroid/net/ConnectivityManager$CallbackHandler;)Landroid/net/NetworkRequest;

    .line 5078
    return-void
.end method

.method public blacklist setAcceptPartialConnectivity(Landroid/net/Network;ZZ)V
    .registers 6
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "accept"    # Z
    .param p3, "always"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 5667
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/IConnectivityManager;->setAcceptPartialConnectivity(Landroid/net/Network;ZZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 5670
    nop

    .line 5671
    return-void

    .line 5668
    :catch_7
    move-exception v0

    .line 5669
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setAcceptUnvalidated(Landroid/net/Network;ZZ)V
    .registers 6
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "accept"    # Z
    .param p3, "always"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 5638
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/IConnectivityManager;->setAcceptUnvalidated(Landroid/net/Network;ZZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 5641
    nop

    .line 5642
    return-void

    .line 5639
    :catch_7
    move-exception v0

    .line 5640
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setAirplaneMode(Z)V
    .registers 4
    .param p1, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3849
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->setAirplaneMode(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3852
    nop

    .line 3853
    return-void

    .line 3850
    :catch_7
    move-exception v0

    .line 3851
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setAvoidUnvalidated(Landroid/net/Network;)V
    .registers 4
    .param p1, "network"    # Landroid/net/Network;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 5691
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->setAvoidUnvalidated(Landroid/net/Network;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 5694
    nop

    .line 5695
    return-void

    .line 5692
    :catch_7
    move-exception v0

    .line 5693
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist setBackgroundDataSetting(Z)V
    .registers 2
    .param p1, "allowBackgroundData"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2822
    return-void
.end method

.method public blacklist setDataSaverEnabled(Z)V
    .registers 4
    .param p1, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 6541
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->setDataSaverEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 6544
    nop

    .line 6545
    return-void

    .line 6542
    :catch_7
    move-exception v0

    .line 6543
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setFirewallChainEnabled(IZ)V
    .registers 5
    .param p1, "chain"    # I
    .param p2, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 6721
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->setFirewallChainEnabled(IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 6724
    nop

    .line 6725
    return-void

    .line 6722
    :catch_7
    move-exception v0

    .line 6723
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setGlobalProxy(Landroid/net/ProxyInfo;)V
    .registers 4
    .param p1, "p"    # Landroid/net/ProxyInfo;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 3716
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->setGlobalProxy(Landroid/net/ProxyInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3719
    nop

    .line 3720
    return-void

    .line 3717
    :catch_7
    move-exception v0

    .line 3718
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setLegacyLockdownVpnEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 1723
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->setLegacyLockdownVpnEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1726
    nop

    .line 1727
    return-void

    .line 1724
    :catch_7
    move-exception v0

    .line 1725
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setNetworkPreference(I)V
    .registers 2
    .param p1, "preference"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1484
    return-void
.end method

.method public whitelist setOemNetworkPreference(Landroid/net/OemNetworkPreferences;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .registers 8
    .param p1, "preference"    # Landroid/net/OemNetworkPreferences;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Ljava/lang/Runnable;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6393
    const-string v0, "OemNetworkPreferences must be non-null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6394
    if-eqz p3, :cond_c

    .line 6395
    const-string v0, "Executor must be non-null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6397
    :cond_c
    if-nez p3, :cond_10

    const/4 v0, 0x0

    goto :goto_15

    .line 6398
    :cond_10
    new-instance v0, Landroid/net/ConnectivityManager$6;

    invoke-direct {v0, p0, p2, p3}, Landroid/net/ConnectivityManager$6;-><init>(Landroid/net/ConnectivityManager;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    :goto_15
    nop

    .line 6406
    .local v0, "listenerInternal":Landroid/net/connectivity/android/net/IOnCompleteListener;
    :try_start_16
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, v0}, Landroid/net/IConnectivityManager;->setOemNetworkPreference(Landroid/net/OemNetworkPreferences;Landroid/net/connectivity/android/net/IOnCompleteListener;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_1d

    .line 6410
    nop

    .line 6411
    return-void

    .line 6407
    :catch_1d
    move-exception v1

    .line 6408
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOemNetworkPreference() failed for preference: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/OemNetworkPreferences;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ConnectivityManager"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6409
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist setProfileNetworkPreference(Landroid/os/UserHandle;ILjava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .registers 7
    .param p1, "profile"    # Landroid/os/UserHandle;
    .param p2, "preference"    # I
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Ljava/lang/Runnable;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6442
    new-instance v0, Landroid/net/ProfileNetworkPreference$Builder;

    invoke-direct {v0}, Landroid/net/ProfileNetworkPreference$Builder;-><init>()V

    .line 6444
    .local v0, "preferenceBuilder":Landroid/net/ProfileNetworkPreference$Builder;
    invoke-virtual {v0, p2}, Landroid/net/ProfileNetworkPreference$Builder;->setPreference(I)Landroid/net/ProfileNetworkPreference$Builder;

    .line 6445
    if-eqz p2, :cond_e

    .line 6446
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ProfileNetworkPreference$Builder;->setPreferenceEnterpriseId(I)Landroid/net/ProfileNetworkPreference$Builder;

    .line 6448
    :cond_e
    nop

    .line 6449
    invoke-virtual {v0}, Landroid/net/ProfileNetworkPreference$Builder;->build()Landroid/net/ProfileNetworkPreference;

    move-result-object v1

    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 6448
    invoke-virtual {p0, p1, v1, p3, p4}, Landroid/net/ConnectivityManager;->setProfileNetworkPreferences(Landroid/os/UserHandle;Ljava/util/List;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 6450
    return-void
.end method

.method public blacklist setProfileNetworkPreferences(Landroid/os/UserHandle;Ljava/util/List;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .registers 8
    .param p1, "profile"    # Landroid/os/UserHandle;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Ljava/lang/Runnable;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            "Ljava/util/List<",
            "Landroid/net/ProfileNetworkPreference;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 6480
    .local p2, "profileNetworkPreferences":Ljava/util/List;, "Ljava/util/List<Landroid/net/ProfileNetworkPreference;>;"
    if-eqz p4, :cond_7

    .line 6481
    const-string v0, "Pass a non-null executor, or a null listener"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6484
    :cond_7
    if-nez p4, :cond_b

    .line 6485
    const/4 v0, 0x0

    .local v0, "proxy":Landroid/net/connectivity/android/net/IOnCompleteListener;
    goto :goto_10

    .line 6487
    .end local v0    # "proxy":Landroid/net/connectivity/android/net/IOnCompleteListener;
    :cond_b
    new-instance v0, Landroid/net/ConnectivityManager$7;

    invoke-direct {v0, p0, p3, p4}, Landroid/net/ConnectivityManager$7;-><init>(Landroid/net/ConnectivityManager;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 6495
    .restart local v0    # "proxy":Landroid/net/connectivity/android/net/IOnCompleteListener;
    :goto_10
    :try_start_10
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2, v0}, Landroid/net/IConnectivityManager;->setProfileNetworkPreferences(Landroid/os/UserHandle;Ljava/util/List;Landroid/net/connectivity/android/net/IOnCompleteListener;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_17

    .line 6498
    nop

    .line 6499
    return-void

    .line 6496
    :catch_17
    move-exception v1

    .line 6497
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist-max-o setProvisioningNotificationVisible(ZILjava/lang/String;)V
    .registers 6
    .param p1, "visible"    # Z
    .param p2, "networkType"    # I
    .param p3, "action"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3828
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/IConnectivityManager;->setProvisioningNotificationVisible(ZILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3831
    nop

    .line 3832
    return-void

    .line 3829
    :catch_7
    move-exception v0

    .line 3830
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setRequireVpnForUids(ZLjava/util/Collection;)V
    .registers 6
    .param p1, "requireVpn"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 1626
    .local p2, "ranges":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1631
    invoke-static {p2}, Landroid/net/ConnectivityManager;->getUidRangeArray(Ljava/util/Collection;)[Landroid/net/UidRange;

    move-result-object v0

    .line 1633
    .local v0, "rangesArray":[Landroid/net/UidRange;
    :try_start_7
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, v0}, Landroid/net/IConnectivityManager;->setRequireVpnForUids(Z[Landroid/net/UidRange;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    .line 1636
    nop

    .line 1637
    return-void

    .line 1634
    :catch_e
    move-exception v1

    .line 1635
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist setTestAllowBadWifiUntil(J)V
    .registers 5
    .param p1, "timeMs"    # J

    .line 5707
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->setTestAllowBadWifiUntil(J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 5710
    nop

    .line 5711
    return-void

    .line 5708
    :catch_7
    move-exception v0

    .line 5709
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setTestLowTcpPollingTimerForKeepalive(J)V
    .registers 5
    .param p1, "timeMs"    # J

    .line 1684
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->setTestLowTcpPollingTimerForKeepalive(J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1687
    nop

    .line 1688
    return-void

    .line 1685
    :catch_7
    move-exception v0

    .line 1686
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setUidFirewallRule(III)V
    .registers 6
    .param p1, "chain"    # I
    .param p2, "uid"    # I
    .param p3, "rule"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 6670
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/IConnectivityManager;->setUidFirewallRule(III)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 6673
    nop

    .line 6674
    return-void

    .line 6671
    :catch_7
    move-exception v0

    .line 6672
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist setUsbTethering(Z)I
    .registers 3
    .param p1, "enable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3427
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getTetheringManager()Landroid/net/TetheringManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/TetheringManager;->setUsbTethering(Z)I

    move-result v0

    return v0
.end method

.method public blacklist setVpnDefaultForUids(Ljava/lang/String;Ljava/util/Collection;)V
    .registers 6
    .param p1, "session"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 1665
    .local p2, "ranges":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1666
    invoke-static {p2}, Landroid/net/ConnectivityManager;->getUidRangeArray(Ljava/util/Collection;)[Landroid/net/UidRange;

    move-result-object v0

    .line 1668
    .local v0, "rangesArray":[Landroid/net/UidRange;
    :try_start_7
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, v0}, Landroid/net/IConnectivityManager;->setVpnNetworkPreference(Ljava/lang/String;[Landroid/net/UidRange;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    .line 1671
    nop

    .line 1672
    return-void

    .line 1669
    :catch_e
    move-exception v1

    .line 1670
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist shouldAvoidBadWifi()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5766
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->shouldAvoidBadWifi()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 5767
    :catch_7
    move-exception v0

    .line 5768
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist simulateDataStall(IJLandroid/net/Network;Landroid/os/PersistableBundle;)V
    .registers 12
    .param p1, "detectionMethod"    # I
    .param p2, "timestampMillis"    # J
    .param p4, "network"    # Landroid/net/Network;
    .param p5, "extras"    # Landroid/os/PersistableBundle;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 6161
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2} :catch_d

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "detectionMethod":I
    .end local p2    # "timestampMillis":J
    .end local p4    # "network":Landroid/net/Network;
    .end local p5    # "extras":Landroid/os/PersistableBundle;
    .local v1, "detectionMethod":I
    .local v2, "timestampMillis":J
    .local v4, "network":Landroid/net/Network;
    .local v5, "extras":Landroid/os/PersistableBundle;
    :try_start_6
    invoke-interface/range {v0 .. v5}, Landroid/net/IConnectivityManager;->simulateDataStall(IJLandroid/net/Network;Landroid/os/PersistableBundle;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 6164
    goto :goto_16

    .line 6162
    :catch_a
    move-exception v0

    move-object p1, v0

    goto :goto_13

    .end local v1    # "detectionMethod":I
    .end local v2    # "timestampMillis":J
    .end local v4    # "network":Landroid/net/Network;
    .end local v5    # "extras":Landroid/os/PersistableBundle;
    .restart local p1    # "detectionMethod":I
    .restart local p2    # "timestampMillis":J
    .restart local p4    # "network":Landroid/net/Network;
    .restart local p5    # "extras":Landroid/os/PersistableBundle;
    :catch_d
    move-exception v0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object p1, v0

    .line 6163
    .end local p2    # "timestampMillis":J
    .end local p4    # "network":Landroid/net/Network;
    .end local p5    # "extras":Landroid/os/PersistableBundle;
    .restart local v1    # "detectionMethod":I
    .restart local v2    # "timestampMillis":J
    .restart local v4    # "network":Landroid/net/Network;
    .restart local v5    # "extras":Landroid/os/PersistableBundle;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_13
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 6165
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_16
    return-void
.end method

.method public greylist-max-o startCaptivePortalApp(Landroid/net/Network;)V
    .registers 4
    .param p1, "network"    # Landroid/net/Network;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 5731
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->startCaptivePortalApp(Landroid/net/Network;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 5734
    nop

    .line 5735
    return-void

    .line 5732
    :catch_7
    move-exception v0

    .line 5733
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist startCaptivePortalApp(Landroid/net/Network;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "appExtras"    # Landroid/os/Bundle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5750
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->startCaptivePortalAppInternal(Landroid/net/Network;Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 5753
    nop

    .line 5754
    return-void

    .line 5751
    :catch_7
    move-exception v0

    .line 5752
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-r startNattKeepalive(Landroid/net/Network;ILandroid/net/ConnectivityManager$PacketKeepaliveCallback;Ljava/net/InetAddress;ILjava/net/InetAddress;)Landroid/net/ConnectivityManager$PacketKeepalive;
    .registers 16
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "intervalSeconds"    # I
    .param p3, "callback"    # Landroid/net/ConnectivityManager$PacketKeepaliveCallback;
    .param p4, "srcAddr"    # Ljava/net/InetAddress;
    .param p5, "srcPort"    # I
    .param p6, "dstAddr"    # Ljava/net/InetAddress;

    .line 2577
    new-instance v0, Landroid/net/ConnectivityManager$PacketKeepalive;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p3, v1}, Landroid/net/ConnectivityManager$PacketKeepalive;-><init>(Landroid/net/ConnectivityManager;Landroid/net/Network;Landroid/net/ConnectivityManager$PacketKeepaliveCallback;Landroid/net/ConnectivityManager-IA;)V

    move-object v1, v0

    .line 2579
    .local v1, "k":Landroid/net/ConnectivityManager$PacketKeepalive;
    :try_start_7
    iget-object v2, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-static {v1}, Landroid/net/ConnectivityManager$PacketKeepalive;->-$$Nest$fgetmCallback(Landroid/net/ConnectivityManager$PacketKeepalive;)Landroid/net/connectivity/android/net/ISocketKeepaliveCallback;

    move-result-object v5

    .line 2580
    invoke-virtual {p4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_20

    .line 2579
    move-object v3, p1

    move v4, p2

    move v7, p5

    .end local p1    # "network":Landroid/net/Network;
    .end local p2    # "intervalSeconds":I
    .end local p5    # "srcPort":I
    .local v3, "network":Landroid/net/Network;
    .local v4, "intervalSeconds":I
    .local v7, "srcPort":I
    :try_start_18
    invoke-interface/range {v2 .. v8}, Landroid/net/IConnectivityManager;->startNattKeepalive(Landroid/net/Network;ILandroid/net/connectivity/android/net/ISocketKeepaliveCallback;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1d

    .line 2584
    nop

    .line 2585
    return-object v1

    .line 2581
    :catch_1d
    move-exception v0

    move-object p1, v0

    goto :goto_25

    .end local v3    # "network":Landroid/net/Network;
    .end local v4    # "intervalSeconds":I
    .end local v7    # "srcPort":I
    .restart local p1    # "network":Landroid/net/Network;
    .restart local p2    # "intervalSeconds":I
    .restart local p5    # "srcPort":I
    :catch_20
    move-exception v0

    move-object v3, p1

    move v4, p2

    move v7, p5

    move-object p1, v0

    .line 2582
    .end local p2    # "intervalSeconds":I
    .end local p5    # "srcPort":I
    .restart local v3    # "network":Landroid/net/Network;
    .restart local v4    # "intervalSeconds":I
    .restart local v7    # "srcPort":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_25
    const-string p2, "ConnectivityManager"

    const-string p5, "Error starting packet keepalive: "

    invoke-static {p2, p5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2583
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public blacklist startOrGetTestNetworkManager()Landroid/net/TestNetworkManager;
    .registers 4

    .line 6125
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->startOrGetTestNetworkService()Landroid/os/IBinder;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_11

    .line 6128
    .local v0, "tnBinder":Landroid/os/IBinder;
    nop

    .line 6130
    new-instance v1, Landroid/net/TestNetworkManager;

    invoke-static {v0}, Landroid/net/connectivity/android/net/ITestNetworkManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/ITestNetworkManager;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/TestNetworkManager;-><init>(Landroid/net/connectivity/android/net/ITestNetworkManager;)V

    return-object v1

    .line 6126
    .end local v0    # "tnBinder":Landroid/os/IBinder;
    :catch_11
    move-exception v0

    .line 6127
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "showProvisioningUi"    # Z
    .param p3, "callback"    # Landroid/net/ConnectivityManager$OnStartTetheringCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3190
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V

    .line 3191
    return-void
.end method

.method public whitelist startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V
    .registers 9
    .param p1, "type"    # I
    .param p2, "showProvisioningUi"    # Z
    .param p3, "callback"    # Landroid/net/ConnectivityManager$OnStartTetheringCallback;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3219
    const-string v0, "OnStartTetheringCallback cannot be null."

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3221
    new-instance v0, Landroid/net/ConnectivityManager$2;

    invoke-direct {v0, p0, p4}, Landroid/net/ConnectivityManager$2;-><init>(Landroid/net/ConnectivityManager;Landroid/os/Handler;)V

    .line 3232
    .local v0, "executor":Ljava/util/concurrent/Executor;
    new-instance v1, Landroid/net/ConnectivityManager$3;

    invoke-direct {v1, p0, p3}, Landroid/net/ConnectivityManager$3;-><init>(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    .line 3244
    .local v1, "tetheringCallback":Landroid/net/TetheringManager$StartTetheringCallback;
    new-instance v2, Landroid/net/TetheringManager$TetheringRequest$Builder;

    invoke-direct {v2, p1}, Landroid/net/TetheringManager$TetheringRequest$Builder;-><init>(I)V

    .line 3245
    invoke-virtual {v2, p2}, Landroid/net/TetheringManager$TetheringRequest$Builder;->setShouldShowEntitlementUi(Z)Landroid/net/TetheringManager$TetheringRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/TetheringManager$TetheringRequest$Builder;->build()Landroid/net/TetheringManager$TetheringRequest;

    move-result-object v2

    .line 3247
    .local v2, "request":Landroid/net/TetheringManager$TetheringRequest;
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getTetheringManager()Landroid/net/TetheringManager;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v1}, Landroid/net/TetheringManager;->startTethering(Landroid/net/TetheringManager$TetheringRequest;Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$StartTetheringCallback;)V

    .line 3248
    return-void
.end method

.method public greylist startUsingNetworkFeature(ILjava/lang/String;)I
    .registers 11
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2111
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->checkLegacyRoutingApiAccess()V

    .line 2112
    invoke-direct {p0, p1, p2}, Landroid/net/ConnectivityManager;->networkCapabilitiesForFeature(ILjava/lang/String;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 2113
    .local v0, "netCap":Landroid/net/NetworkCapabilities;
    const/4 v1, 0x3

    if-nez v0, :cond_2d

    .line 2114
    const-string v2, "ConnectivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t satisfy startUsingNetworkFeature for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    return v1

    .line 2119
    :cond_2d
    const/4 v2, 0x0

    .line 2120
    .local v2, "request":Landroid/net/NetworkRequest;
    sget-object v3, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    monitor-enter v3

    .line 2121
    :try_start_31
    sget-object v4, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager$LegacyRequest;

    .line 2122
    .local v4, "l":Landroid/net/ConnectivityManager$LegacyRequest;
    const/4 v5, 0x1

    if-eqz v4, :cond_62

    .line 2123
    const-string v1, "ConnectivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "renewing startUsingNetworkFeature request "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/net/ConnectivityManager$LegacyRequest;->networkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    invoke-direct {p0, v4}, Landroid/net/ConnectivityManager;->renewRequestLocked(Landroid/net/ConnectivityManager$LegacyRequest;)V

    .line 2125
    iget-object v1, v4, Landroid/net/ConnectivityManager$LegacyRequest;->currentNetwork:Landroid/net/Network;

    if-eqz v1, :cond_60

    .line 2126
    monitor-exit v3

    const/4 v1, 0x0

    return v1

    .line 2128
    :cond_60
    monitor-exit v3

    return v5

    .line 2132
    :cond_62
    invoke-direct {p0, v0}, Landroid/net/ConnectivityManager;->requestNetworkForFeatureLocked(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkRequest;

    move-result-object v6

    move-object v2, v6

    .line 2133
    .end local v4    # "l":Landroid/net/ConnectivityManager$LegacyRequest;
    monitor-exit v3
    :try_end_68
    .catchall {:try_start_31 .. :try_end_68} :catchall_8b

    .line 2134
    if-eqz v2, :cond_83

    .line 2135
    const-string v1, "ConnectivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "starting startUsingNetworkFeature for request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    return v5

    .line 2138
    :cond_83
    const-string v3, "ConnectivityManager"

    const-string v4, " request Failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    return v1

    .line 2133
    :catchall_8b
    move-exception v1

    :try_start_8c
    monitor-exit v3
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    throw v1
.end method

.method public whitelist stopTethering(I)V
    .registers 3
    .param p1, "type"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3266
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getTetheringManager()Landroid/net/TetheringManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/TetheringManager;->stopTethering(I)V

    .line 3267
    return-void
.end method

.method public greylist stopUsingNetworkFeature(ILjava/lang/String;)I
    .registers 8
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2168
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->checkLegacyRoutingApiAccess()V

    .line 2169
    invoke-direct {p0, p1, p2}, Landroid/net/ConnectivityManager;->networkCapabilitiesForFeature(ILjava/lang/String;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 2170
    .local v0, "netCap":Landroid/net/NetworkCapabilities;
    const-string v1, ", "

    const-string v2, "ConnectivityManager"

    if-nez v0, :cond_2d

    .line 2171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t satisfy stopUsingNetworkFeature for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2173
    const/4 v1, -0x1

    return v1

    .line 2176
    :cond_2d
    invoke-direct {p0, v0}, Landroid/net/ConnectivityManager;->removeRequestForFeature(Landroid/net/NetworkCapabilities;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 2177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopUsingNetworkFeature for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    :cond_51
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist systemReady()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 1353
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->systemReady()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1356
    nop

    .line 1357
    return-void

    .line 1354
    :catch_7
    move-exception v0

    .line 1355
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-r tether(Ljava/lang/String;)I
    .registers 3
    .param p1, "iface"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3103
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getTetheringManager()Landroid/net/TetheringManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/TetheringManager;->tether(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist unofferNetwork(Landroid/net/connectivity/android/net/INetworkOfferCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/net/connectivity/android/net/INetworkOfferCallback;

    .line 3953
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/android/net/INetworkOfferCallback;

    invoke-interface {v0, v1}, Landroid/net/IConnectivityManager;->unofferNetwork(Landroid/net/connectivity/android/net/INetworkOfferCallback;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 3956
    nop

    .line 3957
    return-void

    .line 3954
    :catch_d
    move-exception v0

    .line 3955
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unregisterNetworkCallback(Landroid/app/PendingIntent;)V
    .registers 2
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .line 5613
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->releaseNetworkRequest(Landroid/app/PendingIntent;)V

    .line 5614
    return-void
.end method

.method public whitelist unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .registers 7
    .param p1, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .line 5571
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->printStackTrace()V

    .line 5572
    invoke-static {p1}, Landroid/net/ConnectivityManager;->checkCallbackNotNull(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 5573
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5576
    .local v0, "reqs":Ljava/util/List;, "Ljava/util/List<Landroid/net/NetworkRequest;>;"
    sget-object v1, Landroid/net/ConnectivityManager;->sCallbacks:Ljava/util/HashMap;

    monitor-enter v1

    .line 5577
    :try_start_e
    invoke-static {p1}, Landroid/net/ConnectivityManager$NetworkCallback;->-$$Nest$fgetnetworkRequest(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    move-result-object v2

    if-eqz v2, :cond_75

    .line 5580
    invoke-static {p1}, Landroid/net/ConnectivityManager$NetworkCallback;->-$$Nest$fgetnetworkRequest(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    move-result-object v2

    sget-object v3, Landroid/net/ConnectivityManager;->ALREADY_UNREGISTERED:Landroid/net/NetworkRequest;

    if-ne v2, v3, :cond_25

    .line 5581
    const-string v2, "ConnectivityManager"

    const-string v3, "NetworkCallback was already unregistered"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5582
    monitor-exit v1

    return-void

    .line 5584
    :cond_25
    sget-object v2, Landroid/net/ConnectivityManager;->sCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 5585
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_4a

    .line 5586
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkRequest;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5588
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;>;"
    :cond_4a
    goto :goto_2f

    .line 5590
    :cond_4b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkRequest;
    :try_end_5b
    .catchall {:try_start_e .. :try_end_5b} :catchall_7d

    .line 5592
    .local v3, "r":Landroid/net/NetworkRequest;
    :try_start_5b
    iget-object v4, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v4, v3}, Landroid/net/IConnectivityManager;->releaseNetworkRequest(Landroid/net/NetworkRequest;)V
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_60} :catch_68
    .catchall {:try_start_5b .. :try_end_60} :catchall_7d

    .line 5595
    nop

    .line 5597
    :try_start_61
    sget-object v4, Landroid/net/ConnectivityManager;->sCallbacks:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5598
    nop

    .end local v3    # "r":Landroid/net/NetworkRequest;
    goto :goto_4f

    .line 5593
    .restart local v3    # "r":Landroid/net/NetworkRequest;
    :catch_68
    move-exception v2

    .line 5594
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "reqs":Ljava/util/List;, "Ljava/util/List<Landroid/net/NetworkRequest;>;"
    .end local p0    # "this":Landroid/net/ConnectivityManager;
    .end local p1    # "networkCallback":Landroid/net/ConnectivityManager$NetworkCallback;
    throw v4

    .line 5599
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "r":Landroid/net/NetworkRequest;
    .restart local v0    # "reqs":Ljava/util/List;, "Ljava/util/List<Landroid/net/NetworkRequest;>;"
    .restart local p0    # "this":Landroid/net/ConnectivityManager;
    .restart local p1    # "networkCallback":Landroid/net/ConnectivityManager$NetworkCallback;
    :cond_6e
    sget-object v2, Landroid/net/ConnectivityManager;->ALREADY_UNREGISTERED:Landroid/net/NetworkRequest;

    invoke-static {p1, v2}, Landroid/net/ConnectivityManager$NetworkCallback;->-$$Nest$fputnetworkRequest(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/net/NetworkRequest;)V

    .line 5600
    monitor-exit v1

    .line 5601
    return-void

    .line 5578
    :cond_75
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "NetworkCallback was not registered"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "reqs":Ljava/util/List;, "Ljava/util/List<Landroid/net/NetworkRequest;>;"
    .end local p0    # "this":Landroid/net/ConnectivityManager;
    .end local p1    # "networkCallback":Landroid/net/ConnectivityManager$NetworkCallback;
    throw v2

    .line 5600
    .restart local v0    # "reqs":Ljava/util/List;, "Ljava/util/List<Landroid/net/NetworkRequest;>;"
    .restart local p0    # "this":Landroid/net/ConnectivityManager;
    .restart local p1    # "networkCallback":Landroid/net/ConnectivityManager$NetworkCallback;
    :catchall_7d
    move-exception v2

    monitor-exit v1
    :try_end_7f
    .catchall {:try_start_61 .. :try_end_7f} :catchall_7d

    throw v2
.end method

.method public whitelist unregisterNetworkProvider(Landroid/net/NetworkProvider;)V
    .registers 4
    .param p1, "provider"    # Landroid/net/NetworkProvider;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3896
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-virtual {p1}, Landroid/net/NetworkProvider;->getMessenger()Landroid/os/Messenger;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/IConnectivityManager;->unregisterNetworkProvider(Landroid/os/Messenger;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_f

    .line 3899
    nop

    .line 3900
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/net/NetworkProvider;->setProviderId(I)V

    .line 3901
    return-void

    .line 3897
    :catch_f
    move-exception v0

    .line 3898
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unregisterQosCallback(Landroid/net/QosCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/net/QosCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6246
    const-string v0, "The callback must be non-null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6248
    :try_start_5
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mQosCallbackConnections:Ljava/util/List;

    monitor-enter v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_28

    .line 6249
    :try_start_8
    invoke-direct {p0, p1}, Landroid/net/ConnectivityManager;->getQosCallbackConnection(Landroid/net/QosCallback;)Landroid/net/connectivity/android/net/QosCallbackConnection;

    move-result-object v1

    .line 6250
    .local v1, "connection":Landroid/net/connectivity/android/net/QosCallbackConnection;
    if-eqz v1, :cond_1c

    .line 6251
    invoke-virtual {v1}, Landroid/net/connectivity/android/net/QosCallbackConnection;->stopReceivingMessages()V

    .line 6252
    iget-object v2, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v2, v1}, Landroid/net/IConnectivityManager;->unregisterQosCallback(Landroid/net/connectivity/android/net/IQosCallback;)V

    .line 6253
    iget-object v2, p0, Landroid/net/ConnectivityManager;->mQosCallbackConnections:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_23

    .line 6255
    :cond_1c
    const-string v2, "ConnectivityManager"

    const-string v3, "unregisterQosCallback: Callback not registered"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6257
    .end local v1    # "connection":Landroid/net/connectivity/android/net/QosCallbackConnection;
    :goto_23
    monitor-exit v0

    .line 6261
    goto :goto_33

    .line 6257
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_25

    .end local p0    # "this":Landroid/net/ConnectivityManager;
    .end local p1    # "callback":Landroid/net/QosCallback;
    :try_start_27
    throw v1
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_28} :catch_28

    .line 6258
    .restart local p0    # "this":Landroid/net/ConnectivityManager;
    .restart local p1    # "callback":Landroid/net/QosCallback;
    :catch_28
    move-exception v0

    .line 6259
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ConnectivityManager"

    const-string v2, "unregisterQosCallback: Error while unregistering "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6260
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 6262
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_33
    return-void
.end method

.method public whitelist unregisterTetheringEventCallback(Landroid/net/ConnectivityManager$OnTetheringEventCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/net/ConnectivityManager$OnTetheringEventCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3342
    const-string v0, "The callback must be non-null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3343
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mTetheringEventCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3344
    :try_start_8
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mTetheringEventCallbacks:Landroid/util/ArrayMap;

    .line 3345
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/TetheringManager$TetheringEventCallback;

    .line 3346
    .local v1, "tetherCallback":Landroid/net/TetheringManager$TetheringEventCallback;
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getTetheringManager()Landroid/net/TetheringManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/TetheringManager;->unregisterTetheringEventCallback(Landroid/net/TetheringManager$TetheringEventCallback;)V

    .line 3347
    .end local v1    # "tetherCallback":Landroid/net/TetheringManager$TetheringEventCallback;
    monitor-exit v0

    .line 3348
    return-void

    .line 3347
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public greylist untether(Ljava/lang/String;)I
    .registers 3
    .param p1, "iface"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3128
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getTetheringManager()Landroid/net/TetheringManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/TetheringManager;->untether(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
