.class public Landroid/net/wifi/WifiManager;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiManager$ScreenOnScanSchedule;,
        Landroid/net/wifi/WifiManager$AddNetworkResult;,
        Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;,
        Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;,
        Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoProxy;,
        Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoListener;,
        Landroid/net/wifi/WifiManager$OnDriverCountryCodeChangedProxy;,
        Landroid/net/wifi/WifiManager$ActiveCountryCodeChangedCallback;,
        Landroid/net/wifi/WifiManager$OnWifiNetworkStateChangedProxy;,
        Landroid/net/wifi/WifiManager$WifiNetworkStateChangedListener;,
        Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;,
        Landroid/net/wifi/WifiManager$WifiStateChangedListenerProxy;,
        Landroid/net/wifi/WifiManager$WifiStateChangedListener;,
        Landroid/net/wifi/WifiManager$CoexCallback;,
        Landroid/net/wifi/WifiManager$SoftApCallbackProxy;,
        Landroid/net/wifi/WifiManager$SoftApCallback;,
        Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;,
        Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;,
        Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;,
        Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserver;,
        Landroid/net/wifi/WifiManager$ActionListenerProxy;,
        Landroid/net/wifi/WifiManager$ActionListener;,
        Landroid/net/wifi/WifiManager$WpsCallback;,
        Landroid/net/wifi/WifiManager$WifiLock;,
        Landroid/net/wifi/WifiManager$OnWifiLowLatencyLockProxy;,
        Landroid/net/wifi/WifiManager$WifiLowLatencyLockListener;,
        Landroid/net/wifi/WifiManager$MulticastLock;,
        Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;,
        Landroid/net/wifi/WifiManager$TrafficStateCallbackProxy;,
        Landroid/net/wifi/WifiManager$TrafficStateCallback;,
        Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;,
        Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;,
        Landroid/net/wifi/WifiManager$ScanResultsCallback;,
        Landroid/net/wifi/WifiManager$WifiVerboseLoggingStatusChangedListener;,
        Landroid/net/wifi/WifiManager$SuggestionConnectionStatusListenerProxy;,
        Landroid/net/wifi/WifiManager$SuggestionConnectionStatusListener;,
        Landroid/net/wifi/WifiManager$LocalOnlyConnectionStatusListenerProxy;,
        Landroid/net/wifi/WifiManager$LocalOnlyConnectionFailureListener;,
        Landroid/net/wifi/WifiManager$PnoScanResultsCallbackProxy;,
        Landroid/net/wifi/WifiManager$PnoScanResultsCallback;,
        Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy;,
        Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorer;,
        Landroid/net/wifi/WifiManager$SuggestionUserApprovalStatusListenerProxy;,
        Landroid/net/wifi/WifiManager$SuggestionUserApprovalStatusListener;,
        Landroid/net/wifi/WifiManager$TwtCallbackProxy;,
        Landroid/net/wifi/WifiManager$TwtCapabilities;,
        Landroid/net/wifi/WifiManager$SendDhcpHostnameRestriction;,
        Landroid/net/wifi/WifiManager$InterfaceCreationImpact;,
        Landroid/net/wifi/WifiManager$WifiInterfaceType;,
        Landroid/net/wifi/WifiManager$DialogReply;,
        Landroid/net/wifi/WifiManager$DialogType;,
        Landroid/net/wifi/WifiManager$ScoreUpdateObserverProxy;,
        Landroid/net/wifi/WifiManager$ScoreUpdateObserver;,
        Landroid/net/wifi/WifiManager$VerboseLoggingLevel;,
        Landroid/net/wifi/WifiManager$EasyConnectCryptographyCurve;,
        Landroid/net/wifi/WifiManager$EasyConnectNetworkRole;,
        Landroid/net/wifi/WifiManager$DeviceMobilityState;,
        Landroid/net/wifi/WifiManager$LocalOnlyHotspotSubscription;,
        Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;,
        Landroid/net/wifi/WifiManager$ActionListenerFailureReason;,
        Landroid/net/wifi/WifiManager$CoexRestriction;,
        Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallbackProxy;,
        Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;,
        Landroid/net/wifi/WifiManager$RoamingMode;,
        Landroid/net/wifi/WifiManager$MloMode;,
        Landroid/net/wifi/WifiManager$QosRequestStatus;,
        Landroid/net/wifi/WifiManager$WifiMultiInternetMode;,
        Landroid/net/wifi/WifiManager$IfaceIpMode;,
        Landroid/net/wifi/WifiManager$SapClientBlockedReason;,
        Landroid/net/wifi/WifiManager$SapStartFailure;,
        Landroid/net/wifi/WifiManager$WifiApState;,
        Landroid/net/wifi/WifiManager$WifiState;,
        Landroid/net/wifi/WifiManager$ApiType;,
        Landroid/net/wifi/WifiManager$ActionAfterRemovingSuggestion;,
        Landroid/net/wifi/WifiManager$PnoScanState;,
        Landroid/net/wifi/WifiManager$SuggestionUserApprovalStatus;,
        Landroid/net/wifi/WifiManager$LocalOnlyConnectionStatusCode;,
        Landroid/net/wifi/WifiManager$SuggestionConnectionStatusCode;,
        Landroid/net/wifi/WifiManager$NetworkSuggestionsStatusCode;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_DISMISS_DIALOG:Ljava/lang/String; = "android.net.wifi.action.DISMISS_DIALOG"

.field public static final blacklist ACTION_LAUNCH_DIALOG:Ljava/lang/String; = "android.net.wifi.action.LAUNCH_DIALOG"

.field public static final whitelist ACTION_LINK_CONFIGURATION_CHANGED:Ljava/lang/String; = "android.net.wifi.LINK_CONFIGURATION_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_NETWORK_SETTINGS_RESET:Ljava/lang/String; = "android.net.wifi.action.NETWORK_SETTINGS_RESET"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o ACTION_PASSPOINT_DEAUTH_IMMINENT:Ljava/lang/String; = "android.net.wifi.action.PASSPOINT_DEAUTH_IMMINENT"

.field public static final greylist-max-o ACTION_PASSPOINT_ICON:Ljava/lang/String; = "android.net.wifi.action.PASSPOINT_ICON"

.field public static final whitelist ACTION_PASSPOINT_LAUNCH_OSU_VIEW:Ljava/lang/String; = "android.net.wifi.action.PASSPOINT_LAUNCH_OSU_VIEW"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o ACTION_PASSPOINT_OSU_PROVIDERS_LIST:Ljava/lang/String; = "android.net.wifi.action.PASSPOINT_OSU_PROVIDERS_LIST"

.field public static final greylist-max-o ACTION_PASSPOINT_SUBSCRIPTION_REMEDIATION:Ljava/lang/String; = "android.net.wifi.action.PASSPOINT_SUBSCRIPTION_REMEDIATION"

.field public static final whitelist ACTION_PICK_WIFI_NETWORK:Ljava/lang/String; = "android.net.wifi.PICK_WIFI_NETWORK"

.field public static final whitelist ACTION_REFRESH_USER_PROVISIONING:Ljava/lang/String; = "android.net.wifi.action.REFRESH_USER_PROVISIONING"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_REMOVE_SUGGESTION_DISCONNECT:I = 0x2

.field public static final whitelist ACTION_REMOVE_SUGGESTION_LINGER:I = 0x1

.field public static final whitelist ACTION_REQUEST_DISABLE:Ljava/lang/String; = "android.net.wifi.action.REQUEST_DISABLE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_REQUEST_ENABLE:Ljava/lang/String; = "android.net.wifi.action.REQUEST_ENABLE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_REQUEST_SCAN_ALWAYS_AVAILABLE:Ljava/lang/String; = "android.net.wifi.action.REQUEST_SCAN_ALWAYS_AVAILABLE"

.field public static final whitelist ACTION_WIFI_NETWORK_SUGGESTION_POST_CONNECTION:Ljava/lang/String; = "android.net.wifi.action.WIFI_NETWORK_SUGGESTION_POST_CONNECTION"

.field public static final whitelist ACTION_WIFI_SCAN_AVAILABILITY_CHANGED:Ljava/lang/String; = "android.net.wifi.action.WIFI_SCAN_AVAILABILITY_CHANGED"

.field public static final blacklist ALL_ZEROS_MAC_ADDRESS:Landroid/net/MacAddress;

.field public static final whitelist API_ADD_NETWORK:I = 0xa
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist API_ALLOW_AUTOJOIN:I = 0xc
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist API_AUTOJOIN_GLOBAL:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist API_CONNECT_CONFIG:I = 0xd
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist API_CONNECT_NETWORK_ID:I = 0xe
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist API_DISABLE_NETWORK:I = 0xf
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist API_ENABLE_NETWORK:I = 0x10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist API_FORGET:I = 0x11
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist API_MAX:I = 0x26

.field public static final whitelist API_P2P_CANCEL_CONNECT:I = 0x1a
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist API_P2P_CONNECT:I = 0x19
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist API_P2P_CREATE_GROUP:I = 0x1b
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist API_P2P_CREATE_GROUP_P2P_CONFIG:I = 0x1c
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist API_P2P_DISCOVER_PEERS:I = 0x15
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist API_P2P_DISCOVER_PEERS_ON_SOCIAL_CHANNELS:I = 0x16
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist API_P2P_DISCOVER_PEERS_ON_SPECIFIC_FREQUENCY:I = 0x17
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist API_P2P_DISCOVER_PEERS_WITH_CONFIG_PARAMS:I = 0x25
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist API_P2P_REMOVE_GROUP:I = 0x1d
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist API_P2P_SET_CHANNELS:I = 0x20
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist API_P2P_START_LISTENING:I = 0x1e
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist API_P2P_STOP_LISTENING:I = 0x1f
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist API_P2P_STOP_PEER_DISCOVERY:I = 0x18
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist API_SAVE:I = 0x12
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist API_SCANNING_ENABLED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist API_SET_NETWORK_SELECTION_CONFIG:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist API_SET_ONE_SHOT_SCREEN_ON_CONNECTIVITY_SCAN_DELAY:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist API_SET_PNO_SCAN_ENABLED:I = 0x24
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist API_SET_SCAN_SCHEDULE:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist API_SET_TDLS_ENABLED:I = 0x22
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist API_SET_TDLS_ENABLED_WITH_MAC_ADDRESS:I = 0x23
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist API_SET_THIRD_PARTY_APPS_ENABLING_WIFI_CONFIRMATION_DIALOG:I = 0x9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist API_SOFT_AP:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist API_START_LOCAL_ONLY_HOTSPOT:I = 0x14
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist API_START_SCAN:I = 0x13
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist API_TETHERED_HOTSPOT:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist API_UPDATE_NETWORK:I = 0xb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist API_WIFI_ENABLED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist API_WIFI_SCANNER_START_SCAN:I = 0x21
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o BATCHED_SCAN_RESULTS_AVAILABLE_ACTION:Ljava/lang/String; = "android.net.wifi.BATCHED_RESULTS"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CHANGE_REASON_ADDED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CHANGE_REASON_CONFIG_CHANGE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CHANGE_REASON_REMOVED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CHANNEL_DATA_KEY_FREQUENCY_MHZ:Ljava/lang/String; = "CHANNEL_DATA_KEY_FREQUENCY_MHZ"

.field public static final whitelist CHANNEL_DATA_KEY_NUM_AP:Ljava/lang/String; = "CHANNEL_DATA_KEY_NUM_AP"

.field public static final whitelist COEX_RESTRICTION_SOFTAP:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist COEX_RESTRICTION_WIFI_AWARE:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist COEX_RESTRICTION_WIFI_DIRECT:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CONFIGURED_NETWORKS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o DEFAULT_POOR_NETWORK_AVOIDANCE_ENABLED:Z = false

.field public static final whitelist DEVICE_MOBILITY_STATE_HIGH_MVMT:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DEVICE_MOBILITY_STATE_LOW_MVMT:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DEVICE_MOBILITY_STATE_STATIONARY:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DEVICE_MOBILITY_STATE_UNKNOWN:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist DIALOG_REPLY_CANCELLED:I = 0x3

.field public static final blacklist DIALOG_REPLY_NEGATIVE:I = 0x1

.field public static final blacklist DIALOG_REPLY_NEUTRAL:I = 0x2

.field public static final blacklist DIALOG_REPLY_POSITIVE:I = 0x0

.field public static final blacklist DIALOG_TYPE_P2P_INVITATION_RECEIVED:I = 0x3

.field public static final blacklist DIALOG_TYPE_P2P_INVITATION_SENT:I = 0x2

.field public static final blacklist DIALOG_TYPE_SIMPLE:I = 0x1

.field public static final blacklist DIALOG_TYPE_UNKNOWN:I = 0x0

.field public static final whitelist EASY_CONNECT_CRYPTOGRAPHY_CURVE_BRAINPOOLP256R1:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EASY_CONNECT_CRYPTOGRAPHY_CURVE_BRAINPOOLP384R1:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EASY_CONNECT_CRYPTOGRAPHY_CURVE_BRAINPOOLP512R1:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EASY_CONNECT_CRYPTOGRAPHY_CURVE_PRIME256V1:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EASY_CONNECT_CRYPTOGRAPHY_CURVE_SECP384R1:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EASY_CONNECT_CRYPTOGRAPHY_CURVE_SECP521R1:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist EASY_CONNECT_DEVICE_INFO_MAXIMUM_LENGTH:I = 0x28

.field public static final whitelist EASY_CONNECT_NETWORK_ROLE_AP:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EASY_CONNECT_NETWORK_ROLE_STA:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_AUTHENTICATING:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o ERROR_AUTH_FAILURE_EAP_FAILURE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o ERROR_AUTH_FAILURE_NONE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o ERROR_AUTH_FAILURE_TIMEOUT:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o ERROR_AUTH_FAILURE_WRONG_PSWD:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_ANQP_ELEMENT_DATA:Ljava/lang/String; = "android.net.wifi.extra.ANQP_ELEMENT_DATA"

.field public static final whitelist EXTRA_BSSID:Ljava/lang/String; = "bssid"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_BSSID_LONG:Ljava/lang/String; = "android.net.wifi.extra.BSSID_LONG"

.field public static final whitelist EXTRA_CHANGE_REASON:Ljava/lang/String; = "changeReason"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist EXTRA_CLOSE_SYSTEM_DIALOGS_EXCEPT_WIFI:Ljava/lang/String; = "android.net.wifi.extra.CLOSE_SYSTEM_DIALOGS_EXCEPT_WIFI"

.field public static final greylist-max-o EXTRA_DELAY:Ljava/lang/String; = "android.net.wifi.extra.DELAY"

.field public static final blacklist EXTRA_DIALOG_ID:Ljava/lang/String; = "android.net.wifi.extra.DIALOG_ID"

.field public static final blacklist EXTRA_DIALOG_MESSAGE:Ljava/lang/String; = "android.net.wifi.extra.DIALOG_MESSAGE"

.field public static final blacklist EXTRA_DIALOG_MESSAGE_URL:Ljava/lang/String; = "android.net.wifi.extra.DIALOG_MESSAGE_URL"

.field public static final blacklist EXTRA_DIALOG_MESSAGE_URL_END:Ljava/lang/String; = "android.net.wifi.extra.DIALOG_MESSAGE_URL_END"

.field public static final blacklist EXTRA_DIALOG_MESSAGE_URL_START:Ljava/lang/String; = "android.net.wifi.extra.DIALOG_MESSAGE_URL_START"

.field public static final blacklist EXTRA_DIALOG_NEGATIVE_BUTTON_TEXT:Ljava/lang/String; = "android.net.wifi.extra.DIALOG_NEGATIVE_BUTTON_TEXT"

.field public static final blacklist EXTRA_DIALOG_NEUTRAL_BUTTON_TEXT:Ljava/lang/String; = "android.net.wifi.extra.DIALOG_NEUTRAL_BUTTON_TEXT"

.field public static final blacklist EXTRA_DIALOG_POSITIVE_BUTTON_TEXT:Ljava/lang/String; = "android.net.wifi.extra.DIALOG_POSITIVE_BUTTON_TEXT"

.field public static final blacklist EXTRA_DIALOG_TIMEOUT_MS:Ljava/lang/String; = "android.net.wifi.extra.DIALOG_TIMEOUT_MS"

.field public static final blacklist EXTRA_DIALOG_TITLE:Ljava/lang/String; = "android.net.wifi.extra.DIALOG_TITLE"

.field public static final blacklist EXTRA_DIALOG_TYPE:Ljava/lang/String; = "android.net.wifi.extra.DIALOG_TYPE"

.field public static final greylist-max-o EXTRA_ESS:Ljava/lang/String; = "android.net.wifi.extra.ESS"

.field public static final greylist-max-o EXTRA_FILENAME:Ljava/lang/String; = "android.net.wifi.extra.FILENAME"

.field public static final greylist-max-o EXTRA_ICON:Ljava/lang/String; = "android.net.wifi.extra.ICON"

.field public static final whitelist EXTRA_LINK_PROPERTIES:Ljava/lang/String; = "android.net.wifi.extra.LINK_PROPERTIES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_MULTIPLE_NETWORKS_CHANGED:Ljava/lang/String; = "multipleChanges"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_NETWORK_CAPABILITIES:Ljava/lang/String; = "networkCapabilities"

.field public static final whitelist EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"

.field public static final whitelist EXTRA_NETWORK_SUGGESTION:Ljava/lang/String; = "android.net.wifi.extra.NETWORK_SUGGESTION"

.field public static final whitelist EXTRA_NEW_RSSI:Ljava/lang/String; = "newRssi"

.field public static final whitelist EXTRA_NEW_STATE:Ljava/lang/String; = "newState"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_OSU_NETWORK:Ljava/lang/String; = "android.net.wifi.extra.OSU_NETWORK"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist EXTRA_P2P_DEVICE_NAME:Ljava/lang/String; = "android.net.wifi.extra.P2P_DEVICE_NAME"

.field public static final blacklist EXTRA_P2P_DISPLAY_PIN:Ljava/lang/String; = "android.net.wifi.extra.P2P_DISPLAY_PIN"

.field public static final blacklist EXTRA_P2P_PIN_REQUESTED:Ljava/lang/String; = "android.net.wifi.extra.P2P_PIN_REQUESTED"

.field public static final blacklist EXTRA_PARAM_KEY_ATTRIBUTION_SOURCE:Ljava/lang/String; = "EXTRA_PARAM_KEY_ATTRIBUTION_SOURCE"

.field public static final whitelist EXTRA_PREVIOUS_WIFI_AP_STATE:Ljava/lang/String; = "previous_wifi_state"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_PREVIOUS_WIFI_STATE:Ljava/lang/String; = "previous_wifi_state"

.field public static final whitelist EXTRA_RESULTS_UPDATED:Ljava/lang/String; = "resultsUpdated"

.field public static final whitelist EXTRA_SCAN_AVAILABLE:Ljava/lang/String; = "android.net.wifi.extra.SCAN_AVAILABLE"

.field public static final greylist-max-o EXTRA_SUBSCRIPTION_REMEDIATION_METHOD:Ljava/lang/String; = "android.net.wifi.extra.SUBSCRIPTION_REMEDIATION_METHOD"

.field public static final whitelist EXTRA_SUPPLICANT_CONNECTED:Ljava/lang/String; = "connected"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_SUPPLICANT_ERROR:Ljava/lang/String; = "supplicantError"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_SUPPLICANT_ERROR_REASON:Ljava/lang/String; = "supplicantErrorReason"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_URL:Ljava/lang/String; = "android.net.wifi.extra.URL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_WIFI_AP_FAILURE_REASON:Ljava/lang/String; = "android.net.wifi.extra.WIFI_AP_FAILURE_REASON"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_WIFI_AP_INTERFACE_NAME:Ljava/lang/String; = "android.net.wifi.extra.WIFI_AP_INTERFACE_NAME"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_WIFI_AP_MODE:Ljava/lang/String; = "android.net.wifi.extra.WIFI_AP_MODE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_WIFI_AP_STATE:Ljava/lang/String; = "wifi_state"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_WIFI_CONFIGURATION:Ljava/lang/String; = "wifiConfiguration"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_WIFI_CREDENTIAL_EVENT_TYPE:Ljava/lang/String; = "et"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_WIFI_CREDENTIAL_SSID:Ljava/lang/String; = "ssid"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_WIFI_INFO:Ljava/lang/String; = "wifiInfo"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_WIFI_STATE:Ljava/lang/String; = "wifi_state"

.field public static final whitelist FLAG_SEND_DHCP_HOSTNAME_RESTRICTION_OPEN:I = 0x1

.field public static final whitelist FLAG_SEND_DHCP_HOSTNAME_RESTRICTION_SECURE:I = 0x2

.field public static final whitelist IFACE_IP_MODE_CONFIGURATION_ERROR:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist IFACE_IP_MODE_LOCAL_ONLY:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist IFACE_IP_MODE_TETHERED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist IFACE_IP_MODE_UNSPECIFIED:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist INVALID_DIALOG_ID:I = -0x1

.field public static final greylist-max-r LINK_CONFIGURATION_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.LINK_CONFIGURATION_CHANGED"

.field private static final greylist-max-o MAX_ACTIVE_LOCKS:I = 0x32

.field private static final blacklist MAX_POLICIES_PER_QOS_REQUEST:I = 0x10

.field private static final greylist MAX_RSSI:I = -0x37

.field private static final greylist MIN_RSSI:I = -0x64

.field public static final whitelist MLO_MODE_DEFAULT:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MLO_MODE_HIGH_THROUGHPUT:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MLO_MODE_LOW_LATENCY:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MLO_MODE_LOW_POWER:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NETWORK_IDS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.NETWORK_IDS_CHANGED"

.field public static final whitelist NETWORK_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.STATE_CHANGE"

.field public static final blacklist NETWORK_SUGGESTIONS_MAX_PER_APP_HIGH_RAM:I = 0x400

.field public static final blacklist NETWORK_SUGGESTIONS_MAX_PER_APP_LOW_RAM:I = 0x100

.field public static final blacklist NOT_OVERRIDE_EXISTING_NETWORKS_ON_RESTORE:J = 0xdfea96dL

.field public static final whitelist PASSPOINT_HOME_NETWORK:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PASSPOINT_ROAMING_NETWORK:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PNO_SCAN_STATE_DISABLED_UNTIL_REBOOT:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PNO_SCAN_STATE_DISABLED_UNTIL_WIFI_TOGGLE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PNO_SCAN_STATE_ENABLED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist QOS_REQUEST_STATUS_ALREADY_ACTIVE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist QOS_REQUEST_STATUS_FAILURE_UNKNOWN:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist QOS_REQUEST_STATUS_INSUFFICIENT_RESOURCES:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist QOS_REQUEST_STATUS_INVALID_PARAMETERS:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist QOS_REQUEST_STATUS_TRACKING:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ROAMING_MODE_AGGRESSIVE:I = 0x2

.field public static final whitelist ROAMING_MODE_NONE:I = 0x0

.field public static final whitelist ROAMING_MODE_NORMAL:I = 0x1

.field public static final whitelist RSSI_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.RSSI_CHANGED"

.field public static final greylist-max-r RSSI_LEVELS:I = 0x5

.field public static final whitelist SAP_CLIENT_BLOCK_REASON_CODE_BLOCKED_BY_USER:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SAP_CLIENT_BLOCK_REASON_CODE_NO_MORE_STAS:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SAP_CLIENT_DISCONNECT_REASON_CODE_UNSPECIFIED:I = 0x2

.field public static final whitelist SAP_START_FAILURE_GENERAL:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SAP_START_FAILURE_NO_CHANNEL:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SAP_START_FAILURE_UNSUPPORTED_CONFIGURATION:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SAP_START_FAILURE_USER_REJECTED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SCAN_RESULTS_AVAILABLE_ACTION:Ljava/lang/String; = "android.net.wifi.SCAN_RESULTS"

.field public static final whitelist STATUS_LOCAL_ONLY_CONNECTION_FAILURE_ASSOCIATION:I = 0x1

.field public static final whitelist STATUS_LOCAL_ONLY_CONNECTION_FAILURE_AUTHENTICATION:I = 0x2

.field public static final whitelist STATUS_LOCAL_ONLY_CONNECTION_FAILURE_IP_PROVISIONING:I = 0x3

.field public static final whitelist STATUS_LOCAL_ONLY_CONNECTION_FAILURE_NOT_FOUND:I = 0x4

.field public static final whitelist STATUS_LOCAL_ONLY_CONNECTION_FAILURE_NO_RESPONSE:I = 0x5

.field public static final whitelist STATUS_LOCAL_ONLY_CONNECTION_FAILURE_UNKNOWN:I = 0x0

.field public static final whitelist STATUS_LOCAL_ONLY_CONNECTION_FAILURE_USER_REJECT:I = 0x6

.field public static final whitelist STATUS_NETWORK_SUGGESTIONS_ERROR_ADD_DUPLICATE:I = 0x3

.field public static final whitelist STATUS_NETWORK_SUGGESTIONS_ERROR_ADD_EXCEEDS_MAX_PER_APP:I = 0x4

.field public static final whitelist STATUS_NETWORK_SUGGESTIONS_ERROR_ADD_INVALID:I = 0x7

.field public static final whitelist STATUS_NETWORK_SUGGESTIONS_ERROR_ADD_NOT_ALLOWED:I = 0x6

.field public static final whitelist STATUS_NETWORK_SUGGESTIONS_ERROR_APP_DISALLOWED:I = 0x2

.field public static final whitelist STATUS_NETWORK_SUGGESTIONS_ERROR_INTERNAL:I = 0x1

.field public static final whitelist STATUS_NETWORK_SUGGESTIONS_ERROR_REMOVE_INVALID:I = 0x5

.field public static final whitelist STATUS_NETWORK_SUGGESTIONS_ERROR_RESTRICTED_BY_ADMIN:I = 0x8

.field public static final whitelist STATUS_NETWORK_SUGGESTIONS_SUCCESS:I = 0x0

.field public static final whitelist STATUS_SUGGESTION_APPROVAL_APPROVED_BY_CARRIER_PRIVILEGE:I = 0x4

.field public static final whitelist STATUS_SUGGESTION_APPROVAL_APPROVED_BY_USER:I = 0x2

.field public static final whitelist STATUS_SUGGESTION_APPROVAL_PENDING:I = 0x1

.field public static final whitelist STATUS_SUGGESTION_APPROVAL_REJECTED_BY_USER:I = 0x3

.field public static final whitelist STATUS_SUGGESTION_APPROVAL_UNKNOWN:I = 0x0

.field public static final whitelist STATUS_SUGGESTION_CONNECTION_FAILURE_ASSOCIATION:I = 0x1

.field public static final whitelist STATUS_SUGGESTION_CONNECTION_FAILURE_AUTHENTICATION:I = 0x2

.field public static final whitelist STATUS_SUGGESTION_CONNECTION_FAILURE_IP_PROVISIONING:I = 0x3

.field public static final whitelist STATUS_SUGGESTION_CONNECTION_FAILURE_UNKNOWN:I = 0x0

.field public static final whitelist SUPPLICANT_CONNECTION_CHANGE_ACTION:Ljava/lang/String; = "android.net.wifi.supplicant.CONNECTION_CHANGE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SUPPLICANT_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.supplicant.STATE_CHANGE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "WifiManager"

.field public static final whitelist TWT_CAPABILITIES_KEY_BOOLEAN_TWT_REQUESTER:Ljava/lang/String; = "key_requester"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TWT_CAPABILITIES_KEY_INT_MAX_WAKE_DURATION_MICROS:Ljava/lang/String; = "key_max_wake_duration"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TWT_CAPABILITIES_KEY_INT_MIN_WAKE_DURATION_MICROS:Ljava/lang/String; = "key_min_wake_duration"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TWT_CAPABILITIES_KEY_LONG_MAX_WAKE_INTERVAL_MICROS:Ljava/lang/String; = "key_max_wake_interval"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TWT_CAPABILITIES_KEY_LONG_MIN_WAKE_INTERVAL_MICROS:Ljava/lang/String; = "key_min_wake_interval"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist UNKNOWN_SSID:Ljava/lang/String; = "<unknown ssid>"

.field public static final whitelist VERBOSE_LOGGING_LEVEL_DISABLED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist VERBOSE_LOGGING_LEVEL_ENABLED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist VERBOSE_LOGGING_LEVEL_ENABLED_SHOW_KEY:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist VERBOSE_LOGGING_LEVEL_WIFI_AWARE_ENABLED_ONLY:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist WIFI_AP_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_AP_STATE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist WIFI_AP_STATE_DISABLED:I = 0xb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist WIFI_AP_STATE_DISABLING:I = 0xa
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist WIFI_AP_STATE_ENABLED:I = 0xd
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist WIFI_AP_STATE_ENABLING:I = 0xc
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist WIFI_AP_STATE_FAILED:I = 0xe
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist WIFI_CREDENTIAL_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_CREDENTIAL_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist WIFI_CREDENTIAL_FORGOT:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist WIFI_CREDENTIAL_SAVED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist WIFI_FEATURE_ADDITIONAL_STA_LOCAL_ONLY:I = 0x2c

.field public static final blacklist WIFI_FEATURE_ADDITIONAL_STA_MBB:I = 0x2d

.field public static final blacklist WIFI_FEATURE_ADDITIONAL_STA_MULTI_INTERNET:I = 0x35

.field public static final blacklist WIFI_FEATURE_ADDITIONAL_STA_RESTRICTED:I = 0x2e

.field public static final blacklist WIFI_FEATURE_AGGRESSIVE_ROAMING_MODE_SUPPORT:I = 0x3d

.field public static final blacklist WIFI_FEATURE_AP_RAND_MAC:I = 0x22

.field public static final greylist-max-o WIFI_FEATURE_AP_STA:I = 0xf

.field public static final greylist-max-o WIFI_FEATURE_AWARE:I = 0x6

.field public static final blacklist WIFI_FEATURE_BRIDGED_AP:I = 0x2a

.field public static final greylist-max-o WIFI_FEATURE_CONFIG_NDO:I = 0x15

.field public static final blacklist WIFI_FEATURE_CONNECTED_RAND_MAC:I = 0x21

.field public static final greylist-max-o WIFI_FEATURE_CONTROL_ROAMING:I = 0x17

.field public static final greylist-max-o WIFI_FEATURE_D2AP_RTT:I = 0x8

.field public static final greylist-max-o WIFI_FEATURE_D2D_RTT:I = 0x7

.field public static final blacklist WIFI_FEATURE_D2D_WHEN_INFRA_STA_DISABLED:I = 0x3e

.field public static final blacklist WIFI_FEATURE_DECORATED_IDENTITY:I = 0x33

.field public static final blacklist WIFI_FEATURE_DPP:I = 0x1f

.field public static final blacklist WIFI_FEATURE_DPP_AKM:I = 0x36

.field public static final blacklist WIFI_FEATURE_DPP_ENROLLEE_RESPONDER:I = 0x2f

.field public static final blacklist WIFI_FEATURE_DUAL_BAND_SIMULTANEOUS:I = 0x39

.field public static final blacklist WIFI_FEATURE_FILS_SHA256:I = 0x26

.field public static final blacklist WIFI_FEATURE_FILS_SHA384:I = 0x27

.field public static final greylist-max-o WIFI_FEATURE_IE_WHITELIST:I = 0x18

.field public static final greylist-max-o WIFI_FEATURE_INFRA:I = 0x0

.field public static final blacklist WIFI_FEATURE_INFRA_60G:I = 0x2b

.field public static final greylist-max-o WIFI_FEATURE_LINK_LAYER_STATS:I = 0x10

.field public static final greylist-max-o WIFI_FEATURE_LOGGER:I = 0x11

.field public static final blacklist WIFI_FEATURE_LOW_LATENCY:I = 0x1e

.field public static final blacklist WIFI_FEATURE_MBO:I = 0x23

.field public static final greylist-max-o WIFI_FEATURE_MKEEP_ALIVE:I = 0x14

.field public static final greylist-max-o WIFI_FEATURE_MOBILE_HOTSPOT:I = 0x4

.field public static final blacklist WIFI_FEATURE_MULTIPLE_MLD_ON_SAP:I = 0x40

.field public static final blacklist WIFI_FEATURE_OCE:I = 0x24

.field public static final blacklist WIFI_FEATURE_OWE:I = 0x1d

.field public static final greylist-max-o WIFI_FEATURE_P2P:I = 0x3

.field public static final blacklist WIFI_FEATURE_P2P_RAND_MAC:I = 0x20

.field public static final greylist-max-o WIFI_FEATURE_PASSPOINT:I = 0x2

.field public static final blacklist WIFI_FEATURE_PASSPOINT_TERMS_AND_CONDITIONS:I = 0x30

.field public static final greylist-max-o WIFI_FEATURE_PNO:I = 0xa

.field public static final greylist-max-o WIFI_FEATURE_RSSI_MONITOR:I = 0x13

.field public static final blacklist WIFI_FEATURE_SAE_H2E:I = 0x31

.field public static final blacklist WIFI_FEATURE_SAE_PK:I = 0x28

.field public static final greylist-max-o WIFI_FEATURE_SCANNER:I = 0x5

.field public static final greylist-max-o WIFI_FEATURE_SCAN_RAND:I = 0x19

.field public static final blacklist WIFI_FEATURE_SET_TLS_MINIMUM_VERSION:I = 0x37

.field public static final blacklist WIFI_FEATURE_SOFTAP_MLO:I = 0x3f

.field public static final blacklist WIFI_FEATURE_STA_BRIDGED_AP:I = 0x29

.field public static final blacklist WIFI_FEATURE_T2LM_NEGOTIATION:I = 0x3a

.field public static final greylist-max-o WIFI_FEATURE_TDLS:I = 0xc

.field public static final greylist-max-o WIFI_FEATURE_TDLS_OFFCHANNEL:I = 0xd

.field public static final blacklist WIFI_FEATURE_TLS_V1_3:I = 0x38

.field public static final blacklist WIFI_FEATURE_TRUST_ON_FIRST_USE:I = 0x34

.field public static final greylist-max-o WIFI_FEATURE_TX_POWER_LIMIT:I = 0x1a

.field public static final blacklist WIFI_FEATURE_WAPI:I = 0x25

.field public static final blacklist WIFI_FEATURE_WEP:I = 0x3b

.field public static final blacklist WIFI_FEATURE_WFD_R2:I = 0x32

.field public static final blacklist WIFI_FEATURE_WPA3_SAE:I = 0x1b

.field public static final blacklist WIFI_FEATURE_WPA3_SUITE_B:I = 0x1c

.field public static final blacklist WIFI_FEATURE_WPA_PERSONAL:I = 0x3c

.field public static final greylist WIFI_FREQUENCY_BAND_2GHZ:I = 0x2

.field public static final greylist WIFI_FREQUENCY_BAND_5GHZ:I = 0x1

.field public static final greylist WIFI_FREQUENCY_BAND_AUTO:I = 0x0

.field public static final whitelist WIFI_INTERFACE_TYPE_AP:I = 0x1

.field public static final whitelist WIFI_INTERFACE_TYPE_AWARE:I = 0x2

.field public static final whitelist WIFI_INTERFACE_TYPE_DIRECT:I = 0x3

.field public static final whitelist WIFI_INTERFACE_TYPE_STA:I = 0x0

.field public static final whitelist WIFI_MODE_FULL:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_MODE_FULL_HIGH_PERF:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_MODE_FULL_LOW_LATENCY:I = 0x4

.field public static final greylist-max-o WIFI_MODE_NO_LOCKS_HELD:I = 0x0

.field public static final whitelist WIFI_MODE_SCAN_ONLY:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_MULTI_INTERNET_MODE_DBS_AP:I = 0x1

.field public static final whitelist WIFI_MULTI_INTERNET_MODE_DISABLED:I = 0x0

.field public static final whitelist WIFI_MULTI_INTERNET_MODE_MULTI_AP:I = 0x2

.field public static final whitelist WIFI_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_STATE_CHANGED"

.field public static final whitelist WIFI_STATE_DISABLED:I = 0x1

.field public static final whitelist WIFI_STATE_DISABLING:I = 0x0

.field public static final whitelist WIFI_STATE_ENABLED:I = 0x3

.field public static final whitelist WIFI_STATE_ENABLING:I = 0x2

.field public static final whitelist WIFI_STATE_UNKNOWN:I = 0x4

.field public static final whitelist WPS_AUTH_FAILURE:I = 0x6

.field public static final whitelist WPS_OVERLAP_ERROR:I = 0x3

.field public static final whitelist WPS_TIMED_OUT:I = 0x7

.field public static final whitelist WPS_TKIP_ONLY_PROHIBITED:I = 0x5

.field public static final whitelist WPS_WEP_PROHIBITED:I = 0x4

.field private static final blacklist sActiveCountryCodeChangedCallbackMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/net/wifi/IOnWifiDriverCountryCodeChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sLocalOnlyConnectionStatusListenerMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/net/wifi/ILocalOnlyConnectionStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sLocalOnlyHotspotSoftApCallbackMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/net/wifi/ISoftApCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sNetworkRequestMatchCallbackMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/net/wifi/INetworkRequestMatchCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sOnWifiNetworkStateChangedListenerMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/net/wifi/IWifiNetworkStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sOnWifiUsabilityStatsListenerMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/net/wifi/IOnWifiUsabilityStatsListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sSoftApCallbackMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/net/wifi/ISoftApCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sSuggestionConnectionStatusListenerMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/net/wifi/ISuggestionConnectionStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sSuggestionUserApprovalStatusListenerMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/net/wifi/ISuggestionUserApprovalStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sTrafficStateCallbackMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/net/wifi/ITrafficStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sWifiLowLatencyLockListenerMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/net/wifi/IWifiLowLatencyLockListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sWifiStateChangedListenerMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/net/wifi/IWifiStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sWifiVerboseLoggingStatusChangedListenerMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/net/wifi/IWifiVerboseLoggingStatusChangedListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist mActiveLockCount:I

.field private greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mLOHSCallbackProxy:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;

.field private greylist-max-o mLOHSObserverProxy:Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private greylist-max-o mLooper:Landroid/os/Looper;

.field greylist mService:Landroid/net/wifi/IWifiManager;

.field private final greylist-max-o mTargetSdkVersion:I

.field private blacklist mVerboseLoggingEnabled:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActiveLockCount(Landroid/net/wifi/WifiManager;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/net/wifi/WifiManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/net/wifi/WifiManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVerboseLoggingEnabled(Landroid/net/wifi/WifiManager;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/wifi/WifiManager;->mVerboseLoggingEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmActiveLockCount(Landroid/net/wifi/WifiManager;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstopLocalOnlyHotspot(Landroid/net/wifi/WifiManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->stopLocalOnlyHotspot()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1974
    nop

    .line 1975
    const-string v0, "00:00:00:00:00:00"

    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiManager;->ALL_ZEROS_MAC_ADDRESS:Landroid/net/MacAddress;

    .line 2104
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiManager;->sOnWifiUsabilityStatsListenerMap:Landroid/util/SparseArray;

    .line 2106
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiManager;->sSuggestionConnectionStatusListenerMap:Landroid/util/SparseArray;

    .line 2108
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiManager;->sSuggestionUserApprovalStatusListenerMap:Landroid/util/SparseArray;

    .line 2110
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiManager;->sWifiVerboseLoggingStatusChangedListenerMap:Landroid/util/SparseArray;

    .line 2112
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiManager;->sNetworkRequestMatchCallbackMap:Landroid/util/SparseArray;

    .line 2114
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiManager;->sTrafficStateCallbackMap:Landroid/util/SparseArray;

    .line 2115
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiManager;->sSoftApCallbackMap:Landroid/util/SparseArray;

    .line 2117
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiManager;->sActiveCountryCodeChangedCallbackMap:Landroid/util/SparseArray;

    .line 2119
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiManager;->sLocalOnlyHotspotSoftApCallbackMap:Landroid/util/SparseArray;

    .line 2121
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiManager;->sLocalOnlyConnectionStatusListenerMap:Landroid/util/SparseArray;

    .line 2123
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiManager;->sOnWifiNetworkStateChangedListenerMap:Landroid/util/SparseArray;

    .line 2125
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiManager;->sWifiLowLatencyLockListenerMap:Landroid/util/SparseArray;

    .line 2127
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiManager;->sWifiStateChangedListenerMap:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/net/wifi/IWifiManager;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/wifi/IWifiManager;

    .line 2224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2095
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiManager;->mVerboseLoggingEnabled:Z

    .line 2097
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiManager;->mLock:Ljava/lang/Object;

    .line 2225
    iput-object p1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 2226
    iput-object p2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    .line 2227
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Landroid/net/wifi/WifiManager;->mTargetSdkVersion:I

    .line 2228
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->updateVerboseLoggingEnabledFromService()V

    .line 2229
    return-void
.end method

.method private greylist-max-o addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .registers 5
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 3069
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3070
    .local v0, "extras":Landroid/os/Bundle;
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 3071
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 3072
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    .line 3071
    const-string v2, "EXTRA_PARAM_KEY_ATTRIBUTION_SOURCE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3076
    :cond_16
    :try_start_16
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2, v0}, Landroid/net/wifi/IWifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v1
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_22} :catch_23

    return v1

    .line 3077
    :catch_23
    move-exception v1

    .line 3078
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static whitelist calculateSignalLevel(II)I
    .registers 5
    .param p0, "rssi"    # I
    .param p1, "numLevels"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5521
    const/16 v0, -0x64

    if-gt p0, v0, :cond_6

    .line 5522
    const/4 v0, 0x0

    return v0

    .line 5523
    :cond_6
    const/16 v0, -0x37

    if-lt p0, v0, :cond_d

    .line 5524
    add-int/lit8 v0, p1, -0x1

    return v0

    .line 5526
    :cond_d
    const/high16 v0, 0x42340000    # 45.0f

    .line 5527
    .local v0, "inputRange":F
    add-int/lit8 v1, p1, -0x1

    int-to-float v1, v1

    .line 5528
    .local v1, "outputRange":F
    add-int/lit8 v2, p0, 0x64

    int-to-float v2, v2

    mul-float/2addr v2, v1

    div-float/2addr v2, v0

    float-to-int v2, v2

    return v2
.end method

.method public static whitelist compareSignalLevel(II)I
    .registers 3
    .param p0, "rssiA"    # I
    .param p1, "rssiB"    # I

    .line 5568
    sub-int v0, p0, p1

    return v0
.end method

.method private blacklist connectInternal(Landroid/net/wifi/WifiConfiguration;ILandroid/net/wifi/WifiManager$ActionListener;)V
    .registers 11
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "networkId"    # I
    .param p3, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;

    .line 7571
    const/4 v0, 0x0

    .line 7572
    .local v0, "listenerProxy":Landroid/net/wifi/WifiManager$ActionListenerProxy;
    if-eqz p3, :cond_13

    .line 7573
    new-instance v1, Landroid/net/wifi/WifiManager$ActionListenerProxy;

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const-string v3, "connect"

    invoke-direct {v1, p0, v3, v2, p3}, Landroid/net/wifi/WifiManager$ActionListenerProxy;-><init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;Landroid/os/Looper;Landroid/net/wifi/WifiManager$ActionListener;)V

    move-object v0, v1

    move-object v4, v0

    goto :goto_14

    .line 7572
    :cond_13
    move-object v4, v0

    .line 7576
    .end local v0    # "listenerProxy":Landroid/net/wifi/WifiManager$ActionListenerProxy;
    .local v4, "listenerProxy":Landroid/net/wifi/WifiManager$ActionListenerProxy;
    :goto_14
    :try_start_14
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 7577
    .local v6, "extras":Landroid/os/Bundle;
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1d} :catch_4f
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_1d} :catch_45

    if-eqz v0, :cond_33

    .line 7578
    :try_start_1f
    const-string v0, "EXTRA_PARAM_KEY_ATTRIBUTION_SOURCE"

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 7579
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    .line 7578
    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_2a} :catch_2f
    .catch Ljava/lang/SecurityException; {:try_start_1f .. :try_end_2a} :catch_2b

    goto :goto_33

    .line 7586
    .end local v6    # "extras":Landroid/os/Bundle;
    :catch_2b
    move-exception v0

    move-object v2, p1

    move v3, p2

    goto :goto_48

    .line 7582
    :catch_2f
    move-exception v0

    move-object v2, p1

    move v3, p2

    goto :goto_52

    .line 7581
    .restart local v6    # "extras":Landroid/os/Bundle;
    :cond_33
    :goto_33
    :try_start_33
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_3b} :catch_4f
    .catch Ljava/lang/SecurityException; {:try_start_33 .. :try_end_3b} :catch_45

    move-object v2, p1

    move v3, p2

    .end local p1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local p2    # "networkId":I
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    .local v3, "networkId":I
    :try_start_3d
    invoke-interface/range {v1 .. v6}, Landroid/net/wifi/IWifiManager;->connect(Landroid/net/wifi/WifiConfiguration;ILandroid/net/wifi/IActionListener;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_40} :catch_43
    .catch Ljava/lang/SecurityException; {:try_start_3d .. :try_end_40} :catch_41

    .end local v6    # "extras":Landroid/os/Bundle;
    goto :goto_58

    .line 7586
    :catch_41
    move-exception v0

    goto :goto_48

    .line 7582
    :catch_43
    move-exception v0

    goto :goto_52

    .line 7586
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "networkId":I
    .restart local p1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local p2    # "networkId":I
    :catch_45
    move-exception v0

    move-object v2, p1

    move v3, p2

    .line 7587
    .end local p1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local p2    # "networkId":I
    .local v0, "e":Ljava/lang/SecurityException;
    .restart local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v3    # "networkId":I
    :goto_48
    if-eqz v4, :cond_59

    .line 7588
    const/4 p1, 0x4

    invoke-virtual {v4, p1}, Landroid/net/wifi/WifiManager$ActionListenerProxy;->onFailure(I)V

    goto :goto_59

    .line 7582
    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "networkId":I
    .restart local p1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local p2    # "networkId":I
    :catch_4f
    move-exception v0

    move-object v2, p1

    move v3, p2

    .line 7583
    .end local p1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local p2    # "networkId":I
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v3    # "networkId":I
    :goto_52
    if-eqz v4, :cond_58

    .line 7584
    const/4 p1, 0x0

    invoke-virtual {v4, p1}, Landroid/net/wifi/WifiManager$ActionListenerProxy;->onFailure(I)V

    .line 7590
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_58
    :goto_58
    nop

    .line 7591
    :cond_59
    :goto_59
    return-void
.end method

.method public static whitelist getEasyConnectMaxAllowedResponderDeviceInfoLength()I
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9587
    const/16 v0, 0x28

    return v0
.end method

.method public static blacklist getMaxNumberOfNetworkSuggestionsPerApp(Z)I
    .registers 2
    .param p0, "isLowRamDevice"    # Z

    .line 3517
    if-eqz p0, :cond_5

    .line 3518
    const/16 v0, 0x100

    goto :goto_7

    .line 3519
    :cond_5
    const/16 v0, 0x400

    .line 3517
    :goto_7
    return v0
.end method

.method public static whitelist getMaxNumberOfPoliciesPerQosRequest()I
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2082
    const/16 v0, 0x10

    return v0
.end method

.method private greylist-max-o isFeatureSupported(I)Z
    .registers 4
    .param p1, "feature"    # I

    .line 4078
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->isFeatureSupported(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 4079
    :catch_7
    move-exception v0

    .line 4080
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist parseDppChannelList(Ljava/lang/String;)Landroid/util/SparseArray;
    .registers 12
    .param p0, "channelList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation

    .line 10282
    const-string v0, "Cannot parse DPP channel list"

    const-string v1, "WifiManager"

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 10284
    .local v2, "channelListArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 10285
    return-object v2

    .line 10287
    :cond_10
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v3, p0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10288
    .local v3, "str":Ljava/util/StringTokenizer;
    const/4 v4, 0x0

    .line 10289
    .local v4, "classStr":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 10292
    .local v5, "channelsInClass":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_1d
    :try_start_1d
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_8b

    .line 10293
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 10304
    .local v6, "cur":Ljava/lang/String;
    const/16 v7, 0x2f

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 10305
    .local v7, "classDelim":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_74

    .line 10306
    if-eqz v4, :cond_5b

    .line 10309
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [I

    .line 10310
    .local v8, "channelsArray":[I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_39
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_4e

    .line 10311
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v8, v9

    .line 10310
    add-int/lit8 v9, v9, 0x1

    goto :goto_39

    .line 10313
    .end local v9    # "i":I
    :cond_4e
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v9, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 10314
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v9

    .line 10318
    .end local v8    # "channelsArray":[I
    :cond_5b
    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 10319
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 10320
    .local v8, "channelStr":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10321
    nop

    .end local v8    # "channelStr":Ljava/lang/String;
    goto :goto_8a

    .line 10322
    :cond_74
    if-nez v4, :cond_7f

    .line 10324
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10325
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    return-object v8

    .line 10327
    :cond_7f
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10329
    .end local v6    # "cur":Ljava/lang/String;
    .end local v7    # "classDelim":I
    :goto_8a
    goto :goto_1d

    .line 10332
    :cond_8b
    if-eqz v4, :cond_b0

    .line 10333
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [I

    .line 10334
    .local v6, "channelsArray":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_94
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_a9

    .line 10335
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v6, v7

    .line 10334
    add-int/lit8 v7, v7, 0x1

    goto :goto_94

    .line 10337
    .end local v7    # "i":I
    :cond_a9
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v7, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_b0
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_b0} :catch_b1

    .line 10339
    .end local v6    # "channelsArray":[I
    :cond_b0
    return-object v2

    .line 10340
    :catch_b1
    move-exception v6

    .line 10341
    .local v6, "e":Ljava/lang/NumberFormatException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10342
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0
.end method

.method private blacklist startLocalOnlyHotspotInternal(Landroid/net/wifi/SoftApConfiguration;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;Z)V
    .registers 14
    .param p1, "config"    # Landroid/net/wifi/SoftApConfiguration;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;
    .param p4, "isCalledFromSystemApi"    # Z

    .line 6076
    if-nez p2, :cond_8

    .line 6077
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    .line 6079
    :cond_8
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6080
    :try_start_b
    new-instance v0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;

    invoke-direct {v0, p0, p2, p3}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;-><init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_5a

    move-object v3, v0

    .line 6083
    .local v3, "proxy":Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;
    :try_start_11
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 6084
    .local v4, "packageName":Ljava/lang/String;
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 6085
    .local v5, "featureId":Ljava/lang/String;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 6086
    .local v7, "extras":Landroid/os/Bundle;
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_26} :catch_52
    .catchall {:try_start_11 .. :try_end_26} :catchall_5a

    if-eqz v0, :cond_3c

    .line 6087
    :try_start_28
    const-string v0, "EXTRA_PARAM_KEY_ATTRIBUTION_SOURCE"

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 6088
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    .line 6087
    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_33} :catch_38
    .catchall {:try_start_28 .. :try_end_33} :catchall_34

    goto :goto_3c

    .line 6101
    .end local v3    # "proxy":Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "featureId":Ljava/lang/String;
    .end local v7    # "extras":Landroid/os/Bundle;
    :catchall_34
    move-exception v0

    move-object v6, p1

    move v8, p4

    goto :goto_5d

    .line 6098
    .restart local v3    # "proxy":Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;
    :catch_38
    move-exception v0

    move-object v6, p1

    move v8, p4

    goto :goto_55

    .line 6090
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "featureId":Ljava/lang/String;
    .restart local v7    # "extras":Landroid/os/Bundle;
    :cond_3c
    :goto_3c
    :try_start_3c
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_3e} :catch_52
    .catchall {:try_start_3c .. :try_end_3e} :catchall_5a

    move-object v6, p1

    move v8, p4

    .end local p1    # "config":Landroid/net/wifi/SoftApConfiguration;
    .end local p4    # "isCalledFromSystemApi":Z
    .local v6, "config":Landroid/net/wifi/SoftApConfiguration;
    .local v8, "isCalledFromSystemApi":Z
    :try_start_40
    invoke-interface/range {v2 .. v8}, Landroid/net/wifi/IWifiManager;->startLocalOnlyHotspot(Landroid/net/wifi/ILocalOnlyHotspotCallback;Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/SoftApConfiguration;Landroid/os/Bundle;Z)I

    move-result p1

    .line 6092
    .local p1, "returnCode":I
    if-eqz p1, :cond_4b

    .line 6094
    invoke-virtual {v3, p1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;->onHotspotFailed(I)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_49} :catch_50
    .catchall {:try_start_40 .. :try_end_49} :catchall_5f

    .line 6095
    :try_start_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_5f

    return-void

    .line 6097
    :cond_4b
    :try_start_4b
    iput-object v3, p0, Landroid/net/wifi/WifiManager;->mLOHSCallbackProxy:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_4d} :catch_50
    .catchall {:try_start_4b .. :try_end_4d} :catchall_5f

    .line 6100
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "featureId":Ljava/lang/String;
    .end local v7    # "extras":Landroid/os/Bundle;
    .end local p1    # "returnCode":I
    nop

    .line 6101
    .end local v3    # "proxy":Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;
    :try_start_4e
    monitor-exit v1

    .line 6102
    return-void

    .line 6098
    .restart local v3    # "proxy":Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;
    :catch_50
    move-exception v0

    goto :goto_55

    .end local v6    # "config":Landroid/net/wifi/SoftApConfiguration;
    .end local v8    # "isCalledFromSystemApi":Z
    .local p1, "config":Landroid/net/wifi/SoftApConfiguration;
    .restart local p4    # "isCalledFromSystemApi":Z
    :catch_52
    move-exception v0

    move-object v6, p1

    move v8, p4

    .line 6099
    .end local p1    # "config":Landroid/net/wifi/SoftApConfiguration;
    .end local p4    # "isCalledFromSystemApi":Z
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v6    # "config":Landroid/net/wifi/SoftApConfiguration;
    .restart local v8    # "isCalledFromSystemApi":Z
    :goto_55
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    .end local v6    # "config":Landroid/net/wifi/SoftApConfiguration;
    .end local v8    # "isCalledFromSystemApi":Z
    .end local p0    # "this":Landroid/net/wifi/WifiManager;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;
    throw p1

    .line 6101
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "proxy":Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;
    .restart local p0    # "this":Landroid/net/wifi/WifiManager;
    .restart local p1    # "config":Landroid/net/wifi/SoftApConfiguration;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;
    .restart local p4    # "isCalledFromSystemApi":Z
    :catchall_5a
    move-exception v0

    move-object v6, p1

    move v8, p4

    .end local p1    # "config":Landroid/net/wifi/SoftApConfiguration;
    .end local p4    # "isCalledFromSystemApi":Z
    .restart local v6    # "config":Landroid/net/wifi/SoftApConfiguration;
    .restart local v8    # "isCalledFromSystemApi":Z
    :goto_5d
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_4e .. :try_end_5e} :catchall_5f

    throw v0

    :catchall_5f
    move-exception v0

    goto :goto_5d
.end method

.method private greylist-max-o stopLocalOnlyHotspot()V
    .registers 4

    .line 6135
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6136
    :try_start_3
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mLOHSCallbackProxy:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;

    if-nez v1, :cond_9

    .line 6138
    monitor-exit v0

    return-void

    .line 6140
    :cond_9
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/wifi/WifiManager;->mLOHSCallbackProxy:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1a

    .line 6142
    :try_start_c
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->stopLocalOnlyHotspot()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_14
    .catchall {:try_start_c .. :try_end_11} :catchall_1a

    .line 6145
    nop

    .line 6146
    :try_start_12
    monitor-exit v0

    .line 6147
    return-void

    .line 6143
    :catch_14
    move-exception v1

    .line 6144
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/net/wifi/WifiManager;
    throw v2

    .line 6146
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/net/wifi/WifiManager;
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method private blacklist updateVerboseLoggingEnabledFromService()V
    .registers 2

    .line 9086
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isVerboseLoggingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/WifiManager;->mVerboseLoggingEnabled:Z

    .line 9087
    return-void
.end method


# virtual methods
.method public blacklist addCustomDhcpOptions(Landroid/net/wifi/WifiSsid;[BLjava/util/List;)V
    .registers 6
    .param p1, "ssid"    # Landroid/net/wifi/WifiSsid;
    .param p2, "oui"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiSsid;",
            "[B",
            "Ljava/util/List<",
            "Landroid/net/DhcpOption;",
            ">;)V"
        }
    .end annotation

    .line 11877
    .local p3, "options":Ljava/util/List;, "Ljava/util/List<Landroid/net/DhcpOption;>;"
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v1, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    invoke-direct {v1, p3}, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v0, p1, p2, v1}, Landroid/net/wifi/IWifiManager;->addCustomDhcpOptions(Landroid/net/wifi/WifiSsid;[BLcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    .line 11880
    nop

    .line 11881
    return-void

    .line 11878
    :catch_c
    move-exception v0

    .line 11879
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist addLocalOnlyConnectionFailureListener(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$LocalOnlyConnectionFailureListener;)V
    .registers 8
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$LocalOnlyConnectionFailureListener;

    .line 10225
    if-eqz p2, :cond_4f

    .line 10226
    if-eqz p1, :cond_47

    .line 10228
    :try_start_4
    sget-object v0, Landroid/net/wifi/WifiManager;->sLocalOnlyConnectionStatusListenerMap:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_41

    .line 10229
    :try_start_7
    sget-object v1, Landroid/net/wifi/WifiManager;->sLocalOnlyConnectionStatusListenerMap:Landroid/util/SparseArray;

    .line 10230
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 10231
    const-string v1, "WifiManager"

    const-string v2, "Same listener already registered"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10232
    monitor-exit v0

    return-void

    .line 10234
    :cond_1c
    new-instance v1, Landroid/net/wifi/WifiManager$LocalOnlyConnectionStatusListenerProxy;

    invoke-direct {v1, p1, p2}, Landroid/net/wifi/WifiManager$LocalOnlyConnectionStatusListenerProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$LocalOnlyConnectionFailureListener;)V

    .line 10236
    .local v1, "binderCallback":Landroid/net/wifi/ILocalOnlyConnectionStatusListener$Stub;
    sget-object v2, Landroid/net/wifi/WifiManager;->sLocalOnlyConnectionStatusListenerMap:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10238
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v3, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 10239
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 10238
    invoke-interface {v2, v1, v3, v4}, Landroid/net/wifi/IWifiManager;->addLocalOnlyConnectionStatusListener(Landroid/net/wifi/ILocalOnlyConnectionStatusListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 10240
    .end local v1    # "binderCallback":Landroid/net/wifi/ILocalOnlyConnectionStatusListener$Stub;
    monitor-exit v0

    .line 10243
    nop

    .line 10244
    return-void

    .line 10240
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_7 .. :try_end_40} :catchall_3e

    .end local p0    # "this":Landroid/net/wifi/WifiManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Landroid/net/wifi/WifiManager$LocalOnlyConnectionFailureListener;
    :try_start_40
    throw v1
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_41} :catch_41

    .line 10241
    .restart local p0    # "this":Landroid/net/wifi/WifiManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Landroid/net/wifi/WifiManager$LocalOnlyConnectionFailureListener;
    :catch_41
    move-exception v0

    .line 10242
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10226
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Executor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10225
    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .registers 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2866
    const/4 v0, -0x1

    if-nez p1, :cond_4

    .line 2867
    return v0

    .line 2869
    :cond_4
    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 2870
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method

.method public whitelist addNetworkPrivileged(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiManager$AddNetworkResult;
    .registers 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 2901
    if-eqz p1, :cond_31

    .line 2902
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->isSecurityType(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2903
    const/16 v0, 0x36

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_1b

    .line 2904
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dpp akm is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2906
    :cond_1b
    :goto_1b
    const/4 v0, -0x1

    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 2908
    :try_start_1e
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/net/wifi/IWifiManager;->addOrUpdateNetworkPrivileged(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiManager$AddNetworkResult;

    move-result-object v0
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_2a} :catch_2b

    return-object v0

    .line 2909
    :catch_2b
    move-exception v0

    .line 2910
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2901
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addNetworkSuggestions(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiNetworkSuggestion;",
            ">;)I"
        }
    .end annotation

    .line 3430
    .local p1, "networkSuggestions":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiNetworkSuggestion;>;"
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v1, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    invoke-direct {v1, p1}, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;-><init>(Ljava/util/List;)V

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 3431
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 3430
    invoke-interface {v0, v1, v2, v3}, Landroid/net/wifi/IWifiManager;->addNetworkSuggestions(Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_18

    return v0

    .line 3432
    :catch_18
    move-exception v0

    .line 3433
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist addOnWifiUsabilityStatsListener(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9736
    if-eqz p1, :cond_4a

    .line 9737
    if-eqz p2, :cond_42

    .line 9738
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_20

    .line 9739
    const-string v0, "WifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addOnWifiUsabilityStatsListener: listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9742
    :cond_20
    :try_start_20
    sget-object v0, Landroid/net/wifi/WifiManager;->sOnWifiUsabilityStatsListenerMap:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_23} :catch_3c

    .line 9743
    :try_start_23
    new-instance v1, Landroid/net/wifi/WifiManager$11;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/wifi/WifiManager$11;-><init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;)V

    .line 9757
    .local v1, "binderCallback":Landroid/net/wifi/IOnWifiUsabilityStatsListener$Stub;
    sget-object v2, Landroid/net/wifi/WifiManager;->sOnWifiUsabilityStatsListenerMap:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9759
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v2, v1}, Landroid/net/wifi/IWifiManager;->addOnWifiUsabilityStatsListener(Landroid/net/wifi/IOnWifiUsabilityStatsListener;)V

    .line 9760
    .end local v1    # "binderCallback":Landroid/net/wifi/IOnWifiUsabilityStatsListener$Stub;
    monitor-exit v0

    .line 9763
    nop

    .line 9764
    return-void

    .line 9760
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_23 .. :try_end_3b} :catchall_39

    .end local p0    # "this":Landroid/net/wifi/WifiManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;
    :try_start_3b
    throw v1
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_3c} :catch_3c

    .line 9761
    .restart local p0    # "this":Landroid/net/wifi/WifiManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;
    :catch_3c
    move-exception v0

    .line 9762
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9737
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9736
    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addOrUpdatePasspointConfiguration(Landroid/net/wifi/hotspot2/PasspointConfiguration;)V
    .registers 4
    .param p1, "config"    # Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 3553
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/net/wifi/IWifiManager;->addOrUpdatePasspointConfiguration(Landroid/net/wifi/hotspot2/PasspointConfiguration;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3558
    nop

    .line 3559
    return-void

    .line 3554
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .end local p0    # "this":Landroid/net/wifi/WifiManager;
    .end local p1    # "config":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    throw v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_16

    .line 3556
    .restart local p0    # "this":Landroid/net/wifi/WifiManager;
    .restart local p1    # "config":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    :catch_16
    move-exception v0

    .line 3557
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist addQosPolicies(Ljava/util/List;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 9
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/QosPolicyParams;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 12133
    .local p1, "policyParamsList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/QosPolicyParams;>;"
    .local p3, "resultsCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Ljava/lang/Integer;>;>;"
    const-string v0, "policyParamsList cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12134
    const-string v0, "executor cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12135
    const-string v0, "resultsCallback cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12137
    :try_start_f
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v1, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    invoke-direct {v1, p1}, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;-><init>(Ljava/util/List;)V

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iget-object v3, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 12138
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/net/wifi/WifiManager$17;

    invoke-direct {v4, p0, p2, p3}, Landroid/net/wifi/WifiManager$17;-><init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 12137
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/net/wifi/IWifiManager;->addQosPolicies(Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;Landroid/os/IBinder;Ljava/lang/String;Landroid/net/wifi/IListListener;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_29} :catch_2b

    .line 12150
    nop

    .line 12151
    return-void

    .line 12148
    :catch_2b
    move-exception v0

    .line 12149
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist addSuggestionConnectionStatusListener(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SuggestionConnectionStatusListener;)V
    .registers 8
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$SuggestionConnectionStatusListener;

    .line 10160
    if-eqz p2, :cond_5c

    .line 10161
    if-eqz p1, :cond_54

    .line 10162
    const-string v0, "WifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addSuggestionConnectionStatusListener listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", executor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10165
    :try_start_26
    sget-object v0, Landroid/net/wifi/WifiManager;->sSuggestionConnectionStatusListenerMap:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_29} :catch_4e

    .line 10166
    :try_start_29
    new-instance v1, Landroid/net/wifi/WifiManager$SuggestionConnectionStatusListenerProxy;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/wifi/WifiManager$SuggestionConnectionStatusListenerProxy;-><init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SuggestionConnectionStatusListener;)V

    .line 10168
    .local v1, "binderCallback":Landroid/net/wifi/ISuggestionConnectionStatusListener$Stub;
    sget-object v2, Landroid/net/wifi/WifiManager;->sSuggestionConnectionStatusListenerMap:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10170
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v3, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 10171
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 10170
    invoke-interface {v2, v1, v3, v4}, Landroid/net/wifi/IWifiManager;->registerSuggestionConnectionStatusListener(Landroid/net/wifi/ISuggestionConnectionStatusListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 10172
    .end local v1    # "binderCallback":Landroid/net/wifi/ISuggestionConnectionStatusListener$Stub;
    monitor-exit v0

    .line 10175
    nop

    .line 10177
    return-void

    .line 10172
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_29 .. :try_end_4d} :catchall_4b

    .end local p0    # "this":Landroid/net/wifi/WifiManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Landroid/net/wifi/WifiManager$SuggestionConnectionStatusListener;
    :try_start_4d
    throw v1
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_4e} :catch_4e

    .line 10173
    .restart local p0    # "this":Landroid/net/wifi/WifiManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Landroid/net/wifi/WifiManager$SuggestionConnectionStatusListener;
    :catch_4e
    move-exception v0

    .line 10174
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10161
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Executor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10160
    :cond_5c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addSuggestionUserApprovalStatusListener(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SuggestionUserApprovalStatusListener;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$SuggestionUserApprovalStatusListener;

    .line 11239
    if-eqz p2, :cond_56

    .line 11240
    if-eqz p1, :cond_4e

    .line 11241
    const-string v0, "WifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addSuggestionUserApprovalStatusListener listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", executor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11244
    :try_start_26
    sget-object v0, Landroid/net/wifi/WifiManager;->sSuggestionUserApprovalStatusListenerMap:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_29} :catch_48

    .line 11245
    :try_start_29
    new-instance v1, Landroid/net/wifi/WifiManager$SuggestionUserApprovalStatusListenerProxy;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/wifi/WifiManager$SuggestionUserApprovalStatusListenerProxy;-><init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SuggestionUserApprovalStatusListener;)V

    .line 11247
    .local v1, "binderCallback":Landroid/net/wifi/ISuggestionUserApprovalStatusListener$Stub;
    sget-object v2, Landroid/net/wifi/WifiManager;->sSuggestionUserApprovalStatusListenerMap:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11249
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v3, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 11250
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 11249
    invoke-interface {v2, v1, v3}, Landroid/net/wifi/IWifiManager;->addSuggestionUserApprovalStatusListener(Landroid/net/wifi/ISuggestionUserApprovalStatusListener;Ljava/lang/String;)V

    .line 11251
    .end local v1    # "binderCallback":Landroid/net/wifi/ISuggestionUserApprovalStatusListener$Stub;
    monitor-exit v0

    .line 11254
    nop

    .line 11256
    return-void

    .line 11251
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_29 .. :try_end_47} :catchall_45

    .end local p0    # "this":Landroid/net/wifi/WifiManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Landroid/net/wifi/WifiManager$SuggestionUserApprovalStatusListener;
    :try_start_47
    throw v1
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_48} :catch_48

    .line 11252
    .restart local p0    # "this":Landroid/net/wifi/WifiManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Landroid/net/wifi/WifiManager$SuggestionUserApprovalStatusListener;
    :catch_48
    move-exception v0

    .line 11253
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11240
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Executor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11239
    :cond_56
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addWifiLowLatencyLockListener(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$WifiLowLatencyLockListener;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$WifiLowLatencyLockListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8329
    if-eqz p1, :cond_59

    .line 8330
    if-eqz p2, :cond_51

    .line 8331
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_2a

    .line 8332
    const-string v0, "WifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addWifiLowLatencyLockListener: listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", executor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8335
    :cond_2a
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 8337
    .local v0, "listenerIdentifier":I
    :try_start_2e
    sget-object v1, Landroid/net/wifi/WifiManager;->sWifiLowLatencyLockListenerMap:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_31} :catch_46

    .line 8338
    :try_start_31
    new-instance v2, Landroid/net/wifi/WifiManager$OnWifiLowLatencyLockProxy;

    invoke-direct {v2, p1, p2}, Landroid/net/wifi/WifiManager$OnWifiLowLatencyLockProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$WifiLowLatencyLockListener;)V

    .line 8341
    .local v2, "listenerProxy":Landroid/net/wifi/IWifiLowLatencyLockListener$Stub;
    sget-object v3, Landroid/net/wifi/WifiManager;->sWifiLowLatencyLockListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8342
    iget-object v3, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v3, v2}, Landroid/net/wifi/IWifiManager;->addWifiLowLatencyLockListener(Landroid/net/wifi/IWifiLowLatencyLockListener;)V

    .line 8343
    .end local v2    # "listenerProxy":Landroid/net/wifi/IWifiLowLatencyLockListener$Stub;
    monitor-exit v1

    .line 8347
    nop

    .line 8348
    return-void

    .line 8343
    :catchall_43
    move-exception v2

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_31 .. :try_end_45} :catchall_43

    .end local v0    # "listenerIdentifier":I
    .end local p0    # "this":Landroid/net/wifi/WifiManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Landroid/net/wifi/WifiManager$WifiLowLatencyLockListener;
    :try_start_45
    throw v2
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_46} :catch_46

    .line 8344
    .restart local v0    # "listenerIdentifier":I
    .restart local p0    # "this":Landroid/net/wifi/WifiManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Landroid/net/wifi/WifiManager$WifiLowLatencyLockListener;
    :catch_46
    move-exception v1

    .line 8345
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/net/wifi/WifiManager;->sWifiLowLatencyLockListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 8346
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 8330
    .end local v0    # "listenerIdentifier":I
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8329
    :cond_59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addWifiNetworkStateChangedListener(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$WifiNetworkStateChangedListener;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$WifiNetworkStateChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5001
    if-eqz p1, :cond_5a

    .line 5002
    if-eqz p2, :cond_52

    .line 5003
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_2a

    .line 5004
    const-string v0, "WifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addWifiNetworkStateChangedListener: listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", executor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5007
    :cond_2a
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 5008
    .local v0, "listenerIdentifier":I
    sget-object v1, Landroid/net/wifi/WifiManager;->sOnWifiNetworkStateChangedListenerMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 5010
    :try_start_31
    new-instance v2, Landroid/net/wifi/WifiManager$OnWifiNetworkStateChangedProxy;

    invoke-direct {v2, p1, p2}, Landroid/net/wifi/WifiManager$OnWifiNetworkStateChangedProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$WifiNetworkStateChangedListener;)V

    .line 5012
    .local v2, "listenerProxy":Landroid/net/wifi/IWifiNetworkStateChangedListener$Stub;
    sget-object v3, Landroid/net/wifi/WifiManager;->sOnWifiNetworkStateChangedListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5014
    iget-object v3, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v3, v2}, Landroid/net/wifi/IWifiManager;->addWifiNetworkStateChangedListener(Landroid/net/wifi/IWifiNetworkStateChangedListener;)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_40} :catch_45
    .catchall {:try_start_31 .. :try_end_40} :catchall_43

    .line 5018
    .end local v2    # "listenerProxy":Landroid/net/wifi/IWifiNetworkStateChangedListener$Stub;
    nop

    .line 5019
    :try_start_41
    monitor-exit v1

    .line 5020
    return-void

    .line 5019
    :catchall_43
    move-exception v2

    goto :goto_50

    .line 5015
    :catch_45
    move-exception v2

    .line 5016
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/net/wifi/WifiManager;->sOnWifiNetworkStateChangedListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 5017
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local v0    # "listenerIdentifier":I
    .end local p0    # "this":Landroid/net/wifi/WifiManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Landroid/net/wifi/WifiManager$WifiNetworkStateChangedListener;
    throw v3

    .line 5019
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "listenerIdentifier":I
    .restart local p0    # "this":Landroid/net/wifi/WifiManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Landroid/net/wifi/WifiManager$WifiNetworkStateChangedListener;
    :goto_50
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_41 .. :try_end_51} :catchall_43

    throw v2

    .line 5002
    .end local v0    # "listenerIdentifier":I
    :cond_52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5001
    :cond_5a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addWifiStateChangedListener(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$WifiStateChangedListener;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$WifiStateChangedListener;

    .line 5420
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5421
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5422
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_2c

    .line 5423
    const-string v0, "WifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addWifiStateChangedListener: listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", executor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5426
    :cond_2c
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 5427
    .local v0, "listenerIdentifier":I
    sget-object v1, Landroid/net/wifi/WifiManager;->sWifiStateChangedListenerMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 5429
    :try_start_33
    sget-object v2, Landroid/net/wifi/WifiManager;->sWifiStateChangedListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 5430
    const-string v2, "WifiManager"

    const-string v3, "Same listener already registered"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_42} :catch_58
    .catchall {:try_start_33 .. :try_end_42} :catchall_56

    .line 5431
    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_56

    return-void

    .line 5433
    :cond_44
    :try_start_44
    new-instance v2, Landroid/net/wifi/WifiManager$WifiStateChangedListenerProxy;

    invoke-direct {v2, p1, p2}, Landroid/net/wifi/WifiManager$WifiStateChangedListenerProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$WifiStateChangedListener;)V

    .line 5435
    .local v2, "listenerProxy":Landroid/net/wifi/IWifiStateChangedListener$Stub;
    sget-object v3, Landroid/net/wifi/WifiManager;->sWifiStateChangedListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5436
    iget-object v3, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v3, v2}, Landroid/net/wifi/IWifiManager;->addWifiStateChangedListener(Landroid/net/wifi/IWifiStateChangedListener;)V
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_53} :catch_58
    .catchall {:try_start_44 .. :try_end_53} :catchall_56

    .line 5440
    .end local v2    # "listenerProxy":Landroid/net/wifi/IWifiStateChangedListener$Stub;
    nop

    .line 5441
    :try_start_54
    monitor-exit v1

    .line 5442
    return-void

    .line 5441
    :catchall_56
    move-exception v2

    goto :goto_63

    .line 5437
    :catch_58
    move-exception v2

    .line 5438
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/net/wifi/WifiManager;->sWifiStateChangedListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 5439
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local v0    # "listenerIdentifier":I
    .end local p0    # "this":Landroid/net/wifi/WifiManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Landroid/net/wifi/WifiManager$WifiStateChangedListener;
    throw v3

    .line 5441
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "listenerIdentifier":I
    .restart local p0    # "this":Landroid/net/wifi/WifiManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Landroid/net/wifi/WifiManager$WifiStateChangedListener;
    :goto_63
    monitor-exit v1
    :try_end_64
    .catchall {:try_start_54 .. :try_end_64} :catchall_56

    throw v2
.end method

.method public whitelist addWifiVerboseLoggingStatusChangedListener(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$WifiVerboseLoggingStatusChangedListener;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$WifiVerboseLoggingStatusChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10077
    if-eqz p2, :cond_54

    .line 10078
    if-eqz p1, :cond_4c

    .line 10079
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_2a

    .line 10080
    const-string v0, "WifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addWifiVerboseLoggingStatusChangedListener listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", executor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10084
    :cond_2a
    :try_start_2a
    sget-object v0, Landroid/net/wifi/WifiManager;->sWifiVerboseLoggingStatusChangedListenerMap:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2d} :catch_46

    .line 10085
    :try_start_2d
    new-instance v1, Landroid/net/wifi/WifiManager$13;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/wifi/WifiManager$13;-><init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$WifiVerboseLoggingStatusChangedListener;)V

    .line 10098
    .local v1, "binderCallback":Landroid/net/wifi/IWifiVerboseLoggingStatusChangedListener$Stub;
    sget-object v2, Landroid/net/wifi/WifiManager;->sWifiVerboseLoggingStatusChangedListenerMap:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10100
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v2, v1}, Landroid/net/wifi/IWifiManager;->addWifiVerboseLoggingStatusChangedListener(Landroid/net/wifi/IWifiVerboseLoggingStatusChangedListener;)V

    .line 10101
    .end local v1    # "binderCallback":Landroid/net/wifi/IWifiVerboseLoggingStatusChangedListener$Stub;
    monitor-exit v0

    .line 10104
    nop

    .line 10105
    return-void

    .line 10101
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_2d .. :try_end_45} :catchall_43

    .end local p0    # "this":Landroid/net/wifi/WifiManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Landroid/net/wifi/WifiManager$WifiVerboseLoggingStatusChangedListener;
    :try_start_45
    throw v1
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_46} :catch_46

    .line 10102
    .restart local p0    # "this":Landroid/net/wifi/WifiManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Landroid/net/wifi/WifiManager$WifiVerboseLoggingStatusChangedListener;
    :catch_46
    move-exception v0

    .line 10103
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10078
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Executor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10077
    :cond_54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist allowAutojoin(IZ)V
    .registers 5
    .param p1, "netId"    # I
    .param p2, "allowAutojoin"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7887
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IWifiManager;->allowAutojoin(IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 7890
    nop

    .line 7891
    return-void

    .line 7888
    :catch_7
    move-exception v0

    .line 7889
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist allowAutojoinGlobal(Z)V
    .registers 5
    .param p1, "allowAutojoin"    # Z

    .line 7828
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7829
    .local v0, "extras":Landroid/os/Bundle;
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 7830
    const-string v1, "EXTRA_PARAM_KEY_ATTRIBUTION_SOURCE"

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 7831
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    .line 7830
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 7833
    :cond_16
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2, v0}, Landroid/net/wifi/IWifiManager;->allowAutojoinGlobal(ZLjava/lang/String;Landroid/os/Bundle;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_21} :catch_23

    .line 7836
    .end local v0    # "extras":Landroid/os/Bundle;
    nop

    .line 7837
    return-void

    .line 7834
    :catch_23
    move-exception v0

    .line 7835
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist allowAutojoinPasspoint(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "fqdn"    # Ljava/lang/String;
    .param p2, "allowAutojoin"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7904
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IWifiManager;->allowAutojoinPasspoint(Ljava/lang/String;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 7907
    nop

    .line 7908
    return-void

    .line 7905
    :catch_7
    move-exception v0

    .line 7906
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist calculateSignalLevel(I)I
    .registers 4
    .param p1, "rssi"    # I

    .line 5543
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->calculateSignalLevel(I)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 5544
    :catch_7
    move-exception v0

    .line 5545
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist cancelLocalOnlyHotspotRequest()V
    .registers 3

    .line 6119
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6120
    :try_start_3
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->stopLocalOnlyHotspot()V

    .line 6121
    monitor-exit v0

    .line 6122
    return-void

    .line 6121
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public whitelist cancelWps(Landroid/net/wifi/WifiManager$WpsCallback;)V
    .registers 3
    .param p1, "listener"    # Landroid/net/wifi/WifiManager$WpsCallback;

    .line 7996
    if-eqz p1, :cond_6

    .line 7997
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager$WpsCallback;->onFailed(I)V

    .line 7999
    :cond_6
    return-void
.end method

.method public whitelist clearExternalPnoScanRequest()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10955
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->clearExternalPnoScanRequest()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 10958
    nop

    .line 10959
    return-void

    .line 10956
    :catch_7
    move-exception v0

    .line 10957
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist clearOverrideCountryCode()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5128
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->clearOverrideCountryCode()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 5131
    nop

    .line 5132
    return-void

    .line 5129
    :catch_7
    move-exception v0

    .line 5130
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist clearWifiConnectedNetworkScorer()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11042
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_b

    .line 11043
    const-string v0, "WifiManager"

    const-string v1, "clearWifiConnectedNetworkScorer"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11046
    :cond_b
    :try_start_b
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->clearWifiConnectedNetworkScorer()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    .line 11049
    nop

    .line 11050
    return-void

    .line 11047
    :catch_12
    move-exception v0

    .line 11048
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist connect(ILandroid/net/wifi/WifiManager$ActionListener;)V
    .registers 5
    .param p1, "networkId"    # I
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7642
    if-ltz p1, :cond_7

    .line 7643
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/net/wifi/WifiManager;->connectInternal(Landroid/net/wifi/WifiConfiguration;ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 7644
    return-void

    .line 7642
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Network id cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    .registers 5
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7615
    if-eqz p1, :cond_7

    .line 7616
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/net/wifi/WifiManager;->connectInternal(Landroid/net/wifi/WifiConfiguration;ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 7617
    return-void

    .line 7615
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;

    .line 8418
    new-instance v0, Landroid/net/wifi/WifiManager$MulticastLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/net/wifi/WifiManager$MulticastLock;-><init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;Landroid/net/wifi/WifiManager-IA;)V

    return-object v0
.end method

.method public whitelist createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    .registers 5
    .param p1, "lockType"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 8217
    new-instance v0, Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/net/wifi/WifiManager$WifiLock;-><init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;Landroid/net/wifi/WifiManager-IA;)V

    return-object v0
.end method

.method public whitelist createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8401
    new-instance v0, Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Landroid/net/wifi/WifiManager$WifiLock;-><init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;Landroid/net/wifi/WifiManager-IA;)V

    return-object v0
.end method

.method public whitelist disable(ILandroid/net/wifi/WifiManager$ActionListener;)V
    .registers 5
    .param p1, "netId"    # I
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7793
    if-ltz p1, :cond_13

    .line 7796
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    move-result v0

    .line 7797
    .local v0, "status":Z
    if-eqz p2, :cond_12

    .line 7798
    if-eqz v0, :cond_e

    .line 7799
    invoke-interface {p2}, Landroid/net/wifi/WifiManager$ActionListener;->onSuccess()V

    goto :goto_12

    .line 7801
    :cond_e
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Landroid/net/wifi/WifiManager$ActionListener;->onFailure(I)V

    .line 7804
    :cond_12
    :goto_12
    return-void

    .line 7793
    .end local v0    # "status":Z
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Network id cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist disableEphemeralNetwork(Ljava/lang/String;)V
    .registers 4
    .param p1, "network"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7962
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 7966
    :try_start_6
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/net/wifi/IWifiManager;->disableEphemeralNetwork(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_11} :catch_13

    .line 7969
    nop

    .line 7970
    return-void

    .line 7967
    :catch_13
    move-exception v0

    .line 7968
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7963
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SSID cannot be null or empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist disableMscs()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 12589
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->disableMscs()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 12592
    nop

    .line 12593
    return-void

    .line 12590
    :catch_7
    move-exception v0

    .line 12591
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist disableNetwork(I)Z
    .registers 4
    .param p1, "netId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3768
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/net/wifi/IWifiManager;->disableNetwork(ILjava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 3769
    :catch_d
    move-exception v0

    .line 3770
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist disallowCurrentSuggestedNetwork(Landroid/net/wifi/BlockingOption;)V
    .registers 4
    .param p1, "blockingOption"    # Landroid/net/wifi/BlockingOption;

    .line 13255
    const-string v0, "blockingOption cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13257
    :try_start_5
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/net/wifi/IWifiManager;->disallowCurrentSuggestedNetwork(Landroid/net/wifi/BlockingOption;Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_10} :catch_12

    .line 13260
    nop

    .line 13261
    return-void

    .line 13258
    :catch_12
    move-exception v0

    .line 13259
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist disconnect()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3797
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/wifi/IWifiManager;->disconnect(Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 3798
    :catch_d
    move-exception v0

    .line 3799
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist enableMscs(Landroid/net/wifi/MscsParams;)V
    .registers 4
    .param p1, "mscsParams"    # Landroid/net/wifi/MscsParams;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 12567
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12569
    :try_start_3
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->enableMscs(Landroid/net/wifi/MscsParams;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_a

    .line 12572
    nop

    .line 12573
    return-void

    .line 12570
    :catch_a
    move-exception v0

    .line 12571
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist enableNetwork(IZ)Z
    .registers 5
    .param p1, "netId"    # I
    .param p2, "attemptConnect"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3732
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Landroid/net/wifi/IWifiManager;->enableNetwork(IZLjava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 3733
    :catch_d
    move-exception v0

    .line 3734
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-q enableVerboseLogging(I)V
    .registers 4
    .param p1, "verbose"    # I

    .line 8657
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->enableVerboseLogging(I)V

    .line 8658
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_d

    if-ne p1, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :cond_d
    :goto_d
    iput-boolean v1, p0, Landroid/net/wifi/WifiManager;->mVerboseLoggingEnabled:Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    .line 8663
    nop

    .line 8664
    return-void

    .line 8661
    :catch_11
    move-exception v0

    .line 8662
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist factoryReset()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8713
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/wifi/IWifiManager;->factoryReset(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 8716
    nop

    .line 8717
    return-void

    .line 8714
    :catch_d
    move-exception v0

    .line 8715
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist flushPasspointAnqpCache()V
    .registers 3

    .line 11349
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/wifi/IWifiManager;->flushPasspointAnqpCache(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 11352
    nop

    .line 11353
    return-void

    .line 11350
    :catch_d
    move-exception v0

    .line 11351
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist forget(ILandroid/net/wifi/WifiManager$ActionListener;)V
    .registers 7
    .param p1, "netId"    # I
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7757
    if-ltz p1, :cond_2a

    .line 7758
    const/4 v0, 0x0

    .line 7759
    .local v0, "listenerProxy":Landroid/net/wifi/WifiManager$ActionListenerProxy;
    if-eqz p2, :cond_13

    .line 7760
    new-instance v1, Landroid/net/wifi/WifiManager$ActionListenerProxy;

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const-string v3, "forget"

    invoke-direct {v1, p0, v3, v2, p2}, Landroid/net/wifi/WifiManager$ActionListenerProxy;-><init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;Landroid/os/Looper;Landroid/net/wifi/WifiManager$ActionListener;)V

    move-object v0, v1

    .line 7763
    :cond_13
    :try_start_13
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, v0}, Landroid/net/wifi/IWifiManager;->forget(ILandroid/net/wifi/IActionListener;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_18} :catch_21
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_18} :catch_19

    .line 7772
    :cond_18
    :goto_18
    goto :goto_29

    .line 7768
    :catch_19
    move-exception v1

    .line 7769
    .local v1, "e":Ljava/lang/SecurityException;
    if-eqz v0, :cond_29

    .line 7770
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager$ActionListenerProxy;->onFailure(I)V

    goto :goto_29

    .line 7764
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_21
    move-exception v1

    .line 7765
    .local v1, "e":Landroid/os/RemoteException;
    if-eqz v0, :cond_18

    .line 7766
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager$ActionListenerProxy;->onFailure(I)V

    goto :goto_18

    .line 7773
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_29
    :goto_29
    return-void

    .line 7757
    .end local v0    # "listenerProxy":Landroid/net/wifi/WifiManager$ActionListenerProxy;
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Network id cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAllMatchingWifiConfigs(Ljava/util/List;)Ljava/util/List;
    .registers 9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/net/wifi/WifiConfiguration;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;>;>;>;"
        }
    .end annotation

    .line 2409
    .local p1, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2411
    .local v0, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/net/wifi/WifiConfiguration;Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/net/wifi/ScanResult;>;>;>;>;"
    :try_start_5
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v2, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    invoke-direct {v2, p1}, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 2412
    invoke-interface {v1, v2}, Landroid/net/wifi/IWifiManager;->getAllMatchingPasspointProfilesForScanResults(Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;)Ljava/util/Map;

    move-result-object v1

    .line 2414
    .local v1, "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/net/wifi/ScanResult;>;>;>;"
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2415
    return-object v0

    .line 2417
    :cond_17
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v3, Lcom/android/wifi/x/com/android/modules/utils/StringParceledListSlice;

    new-instance v4, Ljava/util/ArrayList;

    .line 2419
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v3, v4}, Lcom/android/wifi/x/com/android/modules/utils/StringParceledListSlice;-><init>(Ljava/util/List;)V

    .line 2418
    invoke-interface {v2, v3}, Landroid/net/wifi/IWifiManager;->getWifiConfigsForPasspointProfiles(Lcom/android/wifi/x/com/android/modules/utils/StringParceledListSlice;)Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    move-result-object v2

    .line 2420
    invoke-virtual {v2}, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    .line 2421
    .local v2, "wifiConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 2422
    .local v4, "configuration":Landroid/net/wifi/WifiConfiguration;
    nop

    .line 2423
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getProfileKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 2424
    .local v5, "scanResultsPerNetworkType":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/net/wifi/ScanResult;>;>;"
    if-eqz v5, :cond_53

    .line 2425
    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_53} :catch_56

    .line 2427
    .end local v4    # "configuration":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "scanResultsPerNetworkType":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/net/wifi/ScanResult;>;>;"
    :cond_53
    goto :goto_33

    .line 2430
    .end local v1    # "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/net/wifi/ScanResult;>;>;>;"
    .end local v2    # "wifiConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_54
    nop

    .line 2432
    return-object v0

    .line 2428
    :catch_56
    move-exception v1

    .line 2429
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getAllowedChannels(II)Ljava/util/List;
    .registers 10
    .param p1, "band"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiAvailableChannel;",
            ">;"
        }
    .end annotation

    .line 11392
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 11396
    :try_start_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v6, v0

    .line 11397
    .local v6, "extras":Landroid/os/Bundle;
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_34

    if-eqz v0, :cond_22

    .line 11398
    :try_start_12
    const-string v0, "EXTRA_PARAM_KEY_ATTRIBUTION_SOURCE"

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 11399
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    .line 11398
    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1d} :catch_1e

    goto :goto_22

    .line 11403
    .end local v6    # "extras":Landroid/os/Bundle;
    :catch_1e
    move-exception v0

    move v2, p1

    move v3, p2

    goto :goto_37

    .line 11401
    .restart local v6    # "extras":Landroid/os/Bundle;
    :cond_22
    :goto_22
    :try_start_22
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 11402
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2a} :catch_34

    .line 11401
    const/4 v4, 0x0

    move v2, p1

    move v3, p2

    .end local p1    # "band":I
    .end local p2    # "mode":I
    .local v2, "band":I
    .local v3, "mode":I
    :try_start_2d
    invoke-interface/range {v1 .. v6}, Landroid/net/wifi/IWifiManager;->getUsableChannels(IIILjava/lang/String;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p1
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_31} :catch_32

    return-object p1

    .line 11403
    .end local v6    # "extras":Landroid/os/Bundle;
    :catch_32
    move-exception v0

    goto :goto_37

    .end local v2    # "band":I
    .end local v3    # "mode":I
    .restart local p1    # "band":I
    .restart local p2    # "mode":I
    :catch_34
    move-exception v0

    move v2, p1

    move v3, p2

    .line 11404
    .end local p1    # "band":I
    .end local p2    # "mode":I
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v2    # "band":I
    .restart local v3    # "mode":I
    :goto_37
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 11393
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "band":I
    .end local v3    # "mode":I
    .restart local p1    # "band":I
    .restart local p2    # "mode":I
    :cond_3c
    move v2, p1

    .end local p1    # "band":I
    .restart local v2    # "band":I
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public whitelist getAutojoinDisallowedSecurityTypes(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "[I>;)V"
        }
    .end annotation

    .line 13182
    .local p2, "resultsCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<[I>;"
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 13185
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13186
    const-string v0, "resultsCallback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13188
    :try_start_10
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 13189
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "EXTRA_PARAM_KEY_ATTRIBUTION_SOURCE"

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 13190
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    .line 13189
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 13191
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v2, Landroid/net/wifi/WifiManager$30;

    invoke-direct {v2, p0, p1, p2}, Landroid/net/wifi/WifiManager$30;-><init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v1, v2, v0}, Landroid/net/wifi/IWifiManager;->getAutojoinDisallowedSecurityTypes(Landroid/net/wifi/IIntegerListener;Landroid/os/Bundle;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_2a} :catch_2c

    .line 13212
    .end local v0    # "extras":Landroid/os/Bundle;
    nop

    .line 13213
    return-void

    .line 13210
    :catch_2c
    move-exception v0

    .line 13211
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 13183
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_32
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist getAvailableAdvancedProtectionFeatures()Ljava/util/List;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/security/advancedprotection/AdvancedProtectionFeature;",
            ">;"
        }
    .end annotation

    .line 13231
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 13234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13235
    .local v0, "features":Ljava/util/List;, "Ljava/util/List<Landroid/security/advancedprotection/AdvancedProtectionFeature;>;"
    invoke-static {}, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->wepDisabledInApm()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-static {}, Lcom/android/wifi/x/android/security/Flags;->aapmApi()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 13236
    new-instance v1, Landroid/security/advancedprotection/AdvancedProtectionFeature;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/security/advancedprotection/AdvancedProtectionFeature;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13239
    :cond_20
    return-object v0

    .line 13232
    .end local v0    # "features":Ljava/util/List;, "Ljava/util/List<Landroid/security/advancedprotection/AdvancedProtectionFeature;>;"
    :cond_21
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist getBssidBlocklist(Ljava/util/List;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiSsid;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/net/MacAddress;",
            ">;>;)V"
        }
    .end annotation

    .line 9838
    .local p1, "ssids":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiSsid;>;"
    .local p3, "resultListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Landroid/net/MacAddress;>;>;"
    const-string v0, "ssids cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9839
    const-string v0, "executor cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9840
    const-string v0, "resultsCallback cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9842
    :try_start_f
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v1, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    invoke-direct {v1, p1}, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;-><init>(Ljava/util/List;)V

    new-instance v2, Landroid/net/wifi/WifiManager$12;

    invoke-direct {v2, p0, p2, p3}, Landroid/net/wifi/WifiManager$12;-><init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1, v2}, Landroid/net/wifi/IWifiManager;->getBssidBlocklist(Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;Landroid/net/wifi/IMacAddressListListener;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1e} :catch_20

    .line 9855
    nop

    .line 9856
    return-void

    .line 9853
    :catch_20
    move-exception v0

    .line 9854
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getCallerConfiguredNetworks()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 2298
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 2299
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 2300
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 2299
    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/net/wifi/IWifiManager;->getConfiguredNetworks(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    move-result-object v0

    .line 2301
    .local v0, "parceledList":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v0, :cond_1a

    .line 2302
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 2304
    :cond_1a
    invoke-virtual {v0}, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_1f

    return-object v1

    .line 2305
    .end local v0    # "parceledList":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/WifiConfiguration;>;"
    :catch_1f
    move-exception v0

    .line 2306
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getChannelData(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;>;)V"
        }
    .end annotation

    .line 4679
    .local p2, "resultsCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Landroid/os/Bundle;>;>;"
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4680
    const-string v0, "resultsCallback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4682
    :try_start_a
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4683
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "EXTRA_PARAM_KEY_ATTRIBUTION_SOURCE"

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 4684
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    .line 4683
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4685
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v2, Landroid/net/wifi/WifiManager$2;

    invoke-direct {v2, p0, p1, p2}, Landroid/net/wifi/WifiManager$2;-><init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    iget-object v3, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 4693
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 4685
    invoke-interface {v1, v2, v3, v0}, Landroid/net/wifi/IWifiManager;->getChannelData(Landroid/net/wifi/IListListener;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_2a} :catch_2c

    .line 4696
    .end local v0    # "extras":Landroid/os/Bundle;
    nop

    .line 4697
    return-void

    .line 4694
    :catch_2c
    move-exception v0

    .line 4695
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getConfiguredNetworks()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2273
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 2274
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 2275
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 2274
    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/net/wifi/IWifiManager;->getConfiguredNetworks(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    move-result-object v0

    .line 2276
    .local v0, "parceledList":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v0, :cond_1a

    .line 2277
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 2279
    :cond_1a
    invoke-virtual {v0}, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_1f

    return-object v1

    .line 2280
    .end local v0    # "parceledList":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/WifiConfiguration;>;"
    :catch_1f
    move-exception v0

    .line 2281
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4552
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 4553
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 4552
    invoke-interface {v0, v1, v2}, Landroid/net/wifi/IWifiManager;->getConnectionInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiInfo;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return-object v0

    .line 4554
    :catch_13
    move-exception v0

    .line 4555
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getCountryCode()Ljava/lang/String;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5090
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 5091
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 5090
    invoke-interface {v0, v1, v2}, Landroid/net/wifi/IWifiManager;->getCountryCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return-object v0

    .line 5092
    :catch_13
    move-exception v0

    .line 5093
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getCurrentNetwork()Landroid/net/Network;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8731
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 8732
    :catch_7
    move-exception v0

    .line 8733
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getCurrentNetworkWpsNfcConfigurationToken()Ljava/lang/String;
    .registers 2

    .line 4495
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDhcpInfo()Landroid/net/DhcpInfo;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5177
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/wifi/IWifiManager;->getDhcpInfo(Ljava/lang/String;)Landroid/net/DhcpInfo;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 5178
    :catch_d
    move-exception v0

    .line 5179
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getEnableAutoJoinWhenAssociated()Z
    .registers 2

    .line 8754
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getFactoryMacAddresses()[Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9261
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->getFactoryMacAddresses()[Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 9262
    :catch_7
    move-exception v0

    .line 9263
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getLastCallerInfoForApi(ILjava/util/concurrent/Executor;Ljava/util/function/BiConsumer;)V
    .registers 6
    .param p1, "apiType"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 10982
    .local p3, "resultsCallback":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz p2, :cond_1e

    .line 10985
    if-eqz p3, :cond_16

    .line 10989
    :try_start_4
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v1, Landroid/net/wifi/WifiManager$15;

    invoke-direct {v1, p0, p2, p3}, Landroid/net/wifi/WifiManager$15;-><init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Ljava/util/function/BiConsumer;)V

    invoke-interface {v0, p1, v1}, Landroid/net/wifi/IWifiManager;->getLastCallerInfoForApi(ILandroid/net/wifi/ILastCallerListener;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_10

    .line 11001
    nop

    .line 11002
    return-void

    .line 10999
    :catch_10
    move-exception v0

    .line 11000
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10986
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "resultsCallback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10983
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getLinkLayerStatsPollingInterval(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
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

    .line 12243
    .local p2, "resultsCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12244
    const-string v0, "resultsCallback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12246
    :try_start_a
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v1, Landroid/net/wifi/WifiManager$18;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/wifi/WifiManager$18;-><init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Landroid/net/wifi/IWifiManager;->getLinkLayerStatsPollingInterval(Landroid/net/wifi/IIntegerListener;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_16

    .line 12258
    nop

    .line 12259
    return-void

    .line 12256
    :catch_16
    move-exception v0

    .line 12257
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getMatchingOsuProviders(Ljava/util/List;)Ljava/util/Map;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/util/Map<",
            "Landroid/net/wifi/hotspot2/OsuProvider;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;>;"
        }
    .end annotation

    .line 2795
    .local p1, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-nez p1, :cond_8

    .line 2796
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0

    .line 2799
    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v1, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    invoke-direct {v1, p1}, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Landroid/net/wifi/IWifiManager;->getMatchingOsuProviders(Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;)Ljava/util/Map;

    move-result-object v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_13} :catch_14

    return-object v0

    .line 2800
    :catch_14
    move-exception v0

    .line 2801
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getMatchingPasspointConfigsForOsuProviders(Ljava/util/Set;)Ljava/util/Map;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/net/wifi/hotspot2/OsuProvider;",
            ">;)",
            "Ljava/util/Map<",
            "Landroid/net/wifi/hotspot2/OsuProvider;",
            "Landroid/net/wifi/hotspot2/PasspointConfiguration;",
            ">;"
        }
    .end annotation

    .line 2826
    .local p1, "osuProviders":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/wifi/hotspot2/OsuProvider;>;"
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v1, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v2}, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Landroid/net/wifi/IWifiManager;->getMatchingPasspointConfigsForOsuProviders(Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;)Ljava/util/Map;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v0

    .line 2828
    :catch_11
    move-exception v0

    .line 2829
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getMatchingScanResults(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiNetworkSuggestion;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/util/Map<",
            "Landroid/net/wifi/WifiNetworkSuggestion;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;>;"
        }
    .end annotation

    .line 4609
    .local p1, "networkSuggestionsToMatch":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiNetworkSuggestion;>;"
    .local p2, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz p1, :cond_25

    .line 4613
    :try_start_2
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v1, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    invoke-direct {v1, p1}, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;-><init>(Ljava/util/List;)V

    new-instance v2, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    invoke-direct {v2, p2}, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;-><init>(Ljava/util/List;)V

    iget-object v3, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 4616
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 4613
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/net/wifi/IWifiManager;->getMatchingScanResults(Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1e} :catch_1f

    return-object v0

    .line 4617
    :catch_1f
    move-exception v0

    .line 4618
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4610
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "networkSuggestions must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getMaxMloAssociationLinkCount(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
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

    .line 12366
    .local p2, "resultsCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12367
    const-string v0, "resultsCallback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12369
    :try_start_a
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 12370
    .local v0, "extras":Landroid/os/Bundle;
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 12371
    const-string v1, "EXTRA_PARAM_KEY_ATTRIBUTION_SOURCE"

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 12372
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    .line 12371
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 12374
    :cond_20
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v2, Landroid/net/wifi/WifiManager$21;

    invoke-direct {v2, p0, p1, p2}, Landroid/net/wifi/WifiManager$21;-><init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v1, v2, v0}, Landroid/net/wifi/IWifiManager;->getMaxMloAssociationLinkCount(Landroid/net/wifi/IIntegerListener;Landroid/os/Bundle;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_2a} :catch_2c

    .line 12385
    .end local v0    # "extras":Landroid/os/Bundle;
    nop

    .line 12386
    return-void

    .line 12383
    :catch_2c
    move-exception v0

    .line 12384
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getMaxMloStrLinkCount(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
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

    .line 12413
    .local p2, "resultsCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12414
    const-string v0, "resultsCallback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12416
    :try_start_a
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 12417
    .local v0, "extras":Landroid/os/Bundle;
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 12418
    const-string v1, "EXTRA_PARAM_KEY_ATTRIBUTION_SOURCE"

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 12419
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    .line 12418
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 12421
    :cond_20
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v2, Landroid/net/wifi/WifiManager$22;

    invoke-direct {v2, p0, p1, p2}, Landroid/net/wifi/WifiManager$22;-><init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v1, v2, v0}, Landroid/net/wifi/IWifiManager;->getMaxMloStrLinkCount(Landroid/net/wifi/IIntegerListener;Landroid/os/Bundle;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_2a} :catch_2c

    .line 12432
    .end local v0    # "extras":Landroid/os/Bundle;
    nop

    .line 12433
    return-void

    .line 12430
    :catch_2c
    move-exception v0

    .line 12431
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getMaxNumberOfChannelsPerNetworkSpecifierRequest()I
    .registers 3

    .line 12086
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->getMaxNumberOfChannelsPerRequest()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 12087
    :catch_7
    move-exception v0

    .line 12088
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getMaxNumberOfNetworkSuggestionsPerApp()I
    .registers 3

    .line 3511
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/ActivityManager;

    .line 3512
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    .line 3511
    invoke-static {v0}, Landroid/net/wifi/WifiManager;->getMaxNumberOfNetworkSuggestionsPerApp(Z)I

    move-result v0

    return v0
.end method

.method public whitelist getMaxSignalLevel()I
    .registers 2

    .line 5555
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(I)I

    move-result v0

    return v0
.end method

.method public whitelist getMaxSupportedConcurrentTdlsSessions(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 6639
    .local p2, "resultsCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6640
    const-string v0, "resultsCallback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6642
    :try_start_a
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v1, Landroid/net/wifi/WifiManager$7;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/wifi/WifiManager$7;-><init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Landroid/net/wifi/IWifiManager;->getMaxSupportedConcurrentTdlsSessions(Landroid/net/wifi/IIntegerListener;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_16

    .line 6654
    nop

    .line 6655
    return-void

    .line 6652
    :catch_16
    move-exception v0

    .line 6653
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getMloMode(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
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

    .line 12325
    .local p2, "resultsCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12326
    const-string v0, "resultsCallback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12328
    :try_start_a
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v1, Landroid/net/wifi/WifiManager$20;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/wifi/WifiManager$20;-><init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Landroid/net/wifi/IWifiManager;->getMloMode(Landroid/net/wifi/IIntegerListener;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_16

    .line 12339
    nop

    .line 12340
    return-void

    .line 12337
    :catch_16
    move-exception v0

    .line 12338
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getNetworkSelectionConfig(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/net/wifi/WifiNetworkSelectionConfig;",
            ">;)V"
        }
    .end annotation

    .line 2530
    .local p2, "resultsCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/wifi/WifiNetworkSelectionConfig;>;"
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2531
    const-string v0, "resultsCallback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2533
    :try_start_a
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v1, Landroid/net/wifi/WifiManager$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/wifi/WifiManager$1;-><init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Landroid/net/wifi/IWifiManager;->getNetworkSelectionConfig(Landroid/net/wifi/IWifiNetworkSelectionConfigListener;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_16

    .line 2545
    nop

    .line 2546
    return-void

    .line 2543
    :catch_16
    move-exception v0

    .line 2544
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getNetworkSuggestions()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiNetworkSuggestion;",
            ">;"
        }
    .end annotation

    .line 3499
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/wifi/IWifiManager;->getNetworkSuggestions(Ljava/lang/String;)Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v0

    .line 3500
    :catch_11
    move-exception v0

    .line 3501
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getNumberOfEnabledTdlsSessions(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 6674
    .local p2, "resultsCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6675
    const-string v0, "resultsCallback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6677
    :try_start_a
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v1, Landroid/net/wifi/WifiManager$8;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/wifi/WifiManager$8;-><init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Landroid/net/wifi/IWifiManager;->getNumberOfEnabledTdlsSessions(Landroid/net/wifi/IIntegerListener;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_16

    .line 6689
    nop

    .line 6690
    return-void

    .line 6687
    :catch_16
    move-exception v0

    .line 6688
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getOemPrivilegedWifiAdminPackages()Ljava/util/Set;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 11804
    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getOemPrivilegedWifiAdminPackages()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    .line 11805
    :catch_c
    move-exception v0

    .line 11806
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPasspointConfigurations()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/PasspointConfiguration;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3598
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/wifi/IWifiManager;->getPasspointConfigurations(Ljava/lang/String;)Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v0

    .line 3599
    :catch_11
    move-exception v0

    .line 3600
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPerSsidRoamingModes(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 12758
    .local p2, "resultsCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12759
    const-string v0, "resultsCallback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12761
    :try_start_a
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/net/wifi/WifiManager$26;

    invoke-direct {v2, p0, p1, p2}, Landroid/net/wifi/WifiManager$26;-><init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1, v2}, Landroid/net/wifi/IWifiManager;->getPerSsidRoamingModes(Ljava/lang/String;Landroid/net/wifi/IMapListener;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1a} :catch_1c

    .line 12772
    nop

    .line 12773
    return-void

    .line 12770
    :catch_1c
    move-exception v0

    .line 12771
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPrivilegedConfiguredNetworks()Ljava/util/List;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 2331
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2332
    .local v0, "extras":Landroid/os/Bundle;
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2333
    const-string v1, "EXTRA_PARAM_KEY_ATTRIBUTION_SOURCE"

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 2334
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    .line 2333
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2336
    :cond_16
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 2337
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 2338
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 2337
    invoke-interface {v1, v2, v3, v0}, Landroid/net/wifi/IWifiManager;->getPrivilegedConfiguredNetworks(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    move-result-object v1

    .line 2339
    .local v1, "parceledList":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v1, :cond_2f

    .line 2340
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 2342
    :cond_2f
    invoke-virtual {v1}, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_33} :catch_34

    return-object v2

    .line 2343
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "parceledList":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/WifiConfiguration;>;"
    :catch_34
    move-exception v0

    .line 2344
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPrivilegedConnectedNetwork()Landroid/net/wifi/WifiConfiguration;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2377
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2378
    .local v0, "extras":Landroid/os/Bundle;
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2379
    const-string v1, "EXTRA_PARAM_KEY_ATTRIBUTION_SOURCE"

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 2380
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    .line 2379
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2382
    :cond_16
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 2383
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 2382
    invoke-interface {v1, v2, v3, v0}, Landroid/net/wifi/IWifiManager;->getPrivilegedConnectedNetwork(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_28} :catch_29

    return-object v1

    .line 2384
    .end local v0    # "extras":Landroid/os/Bundle;
    :catch_29
    move-exception v0

    .line 2385
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getScanResults()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .line 4579
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 4580
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/net/wifi/IWifiManager;->getScanResults(Ljava/lang/String;Ljava/lang/String;)Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    move-result-object v0

    .line 4581
    .local v0, "parceledList":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/ScanResult;>;"
    if-nez v0, :cond_19

    .line 4582
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 4584
    :cond_19
    invoke-virtual {v0}, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1d} :catch_1e

    return-object v1

    .line 4585
    .end local v0    # "parceledList":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/ScanResult;>;"
    :catch_1e
    move-exception v0

    .line 4586
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6369
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 6370
    :catch_7
    move-exception v0

    .line 6371
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSsidsAllowlist()Ljava/util/Set;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/net/wifi/WifiSsid;",
            ">;"
        }
    .end annotation

    .line 2770
    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 2771
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/net/wifi/IWifiManager;->getSsidsAllowlist(Ljava/lang/String;)Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    .line 2770
    return-object v0

    .line 2772
    :catch_16
    move-exception v0

    .line 2773
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getStaConcurrencyForMultiInternetMode()I
    .registers 3

    .line 11520
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->getStaConcurrencyForMultiInternetMode()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 11521
    :catch_7
    move-exception v0

    .line 11522
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getStatsTwtSession(ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .param p1, "sessionId"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 12981
    .local p3, "resultCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/Bundle;>;"
    const-string v0, "executor cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12982
    const-string v0, "resultsCallback cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12983
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 12987
    :try_start_10
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 12988
    .local v0, "extras":Landroid/os/Bundle;
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 12989
    const-string v1, "EXTRA_PARAM_KEY_ATTRIBUTION_SOURCE"

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 12990
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    .line 12989
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 12992
    :cond_26
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v2, Landroid/net/wifi/WifiManager$28;

    invoke-direct {v2, p0, p2, p3}, Landroid/net/wifi/WifiManager$28;-><init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v1, p1, v2, v0}, Landroid/net/wifi/IWifiManager;->getStatsTwtSession(ILandroid/net/wifi/ITwtStatsListener;Landroid/os/Bundle;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_30} :catch_32

    .line 13004
    .end local v0    # "extras":Landroid/os/Bundle;
    nop

    .line 13005
    return-void

    .line 13002
    :catch_32
    move-exception v0

    .line 13003
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 12984
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_38
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist getSupportedSimultaneousBandCombinations(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "[I>;>;)V"
        }
    .end annotation

    .line 12457
    .local p2, "resultsCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<[I>;>;"
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12458
    const-string v0, "resultsCallback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12460
    :try_start_a
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 12461
    .local v0, "extras":Landroid/os/Bundle;
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 12462
    const-string v1, "EXTRA_PARAM_KEY_ATTRIBUTION_SOURCE"

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 12463
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    .line 12462
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 12465
    :cond_20
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v2, Landroid/net/wifi/WifiManager$23;

    invoke-direct {v2, p0, p1, p2}, Landroid/net/wifi/WifiManager$23;-><init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v1, v2, v0}, Landroid/net/wifi/IWifiManager;->getSupportedSimultaneousBandCombinations(Landroid/net/wifi/IWifiBandsListener;Landroid/os/Bundle;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_2a} :catch_2c

    .line 12480
    .end local v0    # "extras":Landroid/os/Bundle;
    nop

    .line 12481
    return-void

    .line 12478
    :catch_2c
    move-exception v0

    .line 12479
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getTwtCapabilities(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 12850
    .local p2, "resultCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/Bundle;>;"
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12851
    const-string v0, "resultCallback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12852
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 12856
    :try_start_10
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 12857
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "EXTRA_PARAM_KEY_ATTRIBUTION_SOURCE"

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 12858
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    .line 12857
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 12859
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v2, Landroid/net/wifi/WifiManager$27;

    invoke-direct {v2, p0, p1, p2}, Landroid/net/wifi/WifiManager$27;-><init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v1, v2, v0}, Landroid/net/wifi/IWifiManager;->getTwtCapabilities(Landroid/net/wifi/ITwtCapabilitiesListener;Landroid/os/Bundle;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_2a} :catch_2c

    .line 12871
    .end local v0    # "extras":Landroid/os/Bundle;
    nop

    .line 12872
    return-void

    .line 12869
    :catch_2c
    move-exception v0

    .line 12870
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 12853
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_32
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist getUsableChannels(II)Ljava/util/List;
    .registers 10
    .param p1, "band"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiAvailableChannel;",
            ">;"
        }
    .end annotation

    .line 11446
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 11450
    :try_start_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v6, v0

    .line 11451
    .local v6, "extras":Landroid/os/Bundle;
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_37

    if-eqz v0, :cond_22

    .line 11452
    :try_start_12
    const-string v0, "EXTRA_PARAM_KEY_ATTRIBUTION_SOURCE"

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 11453
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    .line 11452
    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1d} :catch_1e

    goto :goto_22

    .line 11457
    .end local v6    # "extras":Landroid/os/Bundle;
    :catch_1e
    move-exception v0

    move v2, p1

    move v3, p2

    goto :goto_3a

    .line 11455
    .restart local v6    # "extras":Landroid/os/Bundle;
    :cond_22
    :goto_22
    :try_start_22
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    .line 11456
    invoke-static {}, Landroid/net/wifi/WifiAvailableChannel;->getUsableFilter()I

    move-result v4

    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2e} :catch_37

    .line 11455
    move v2, p1

    move v3, p2

    .end local p1    # "band":I
    .end local p2    # "mode":I
    .local v2, "band":I
    .local v3, "mode":I
    :try_start_30
    invoke-interface/range {v1 .. v6}, Landroid/net/wifi/IWifiManager;->getUsableChannels(IIILjava/lang/String;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p1
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_34} :catch_35

    return-object p1

    .line 11457
    .end local v6    # "extras":Landroid/os/Bundle;
    :catch_35
    move-exception v0

    goto :goto_3a

    .end local v2    # "band":I
    .end local v3    # "mode":I
    .restart local p1    # "band":I
    .restart local p2    # "mode":I
    :catch_37
    move-exception v0

    move v2, p1

    move v3, p2

    .line 11458
    .end local p1    # "band":I
    .end local p2    # "mode":I
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v2    # "band":I
    .restart local v3    # "mode":I
    :goto_3a
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 11447
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "band":I
    .end local v3    # "mode":I
    .restart local p1    # "band":I
    .restart local p2    # "mode":I
    :cond_3f
    move v2, p1

    .end local p1    # "band":I
    .restart local v2    # "band":I
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public whitelist getVerboseLoggingLevel()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8697
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->getVerboseLoggingLevel()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 8698
    :catch_7
    move-exception v0

    .line 8699
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getWifiActivityEnergyInfoAsync(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoListener;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4437
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4438
    const-string v0, "listener cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4440
    :try_start_a
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v1, Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoProxy;

    invoke-direct {v1, p1, p2}, Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoListener;)V

    invoke-interface {v0, v1}, Landroid/net/wifi/IWifiManager;->getWifiActivityEnergyInfoAsync(Landroid/net/wifi/IOnWifiActivityEnergyInfoListener;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_16

    .line 4444
    nop

    .line 4445
    return-void

    .line 4442
    :catch_16
    move-exception v0

    .line 4443
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6349
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 6350
    :catch_7
    move-exception v0

    .line 6351
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getWifiApState()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6314
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->getWifiApEnabledState()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 6315
    :catch_7
    move-exception v0

    .line 6316
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getWifiConfigForMatchedNetworkSuggestionsSharedWithUser(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 2721
    .local p1, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v1, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    invoke-direct {v1, p1}, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Landroid/net/wifi/IWifiManager;->getWifiConfigForMatchedNetworkSuggestionsSharedWithUser(Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;)Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    move-result-object v0

    .line 2722
    invoke-virtual {v0}, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 2721
    return-object v0

    .line 2723
    :catch_10
    move-exception v0

    .line 2724
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getWifiState()I
    .registers 3

    .line 5392
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->getWifiEnabledState()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 5393
    :catch_7
    move-exception v0

    .line 5394
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist initializeMulticastFiltering()Z
    .registers 3

    .line 8604
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->initializeMulticastFiltering()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 8605
    const/4 v0, 0x1

    return v0

    .line 8606
    :catch_7
    move-exception v0

    .line 8607
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist is24GHzBandSupported()Z
    .registers 3

    .line 4282
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->is24GHzBandSupported()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 4283
    :catch_7
    move-exception v0

    .line 4284
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist is5GHzBandSupported()Z
    .registers 3

    .line 4294
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->is5GHzBandSupported()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 4295
    :catch_7
    move-exception v0

    .line 4296
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist is60GHzBandSupported()Z
    .registers 3

    .line 4308
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->is60GHzBandSupported()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 4309
    :catch_7
    move-exception v0

    .line 4310
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist is6GHzBandSupported()Z
    .registers 3

    .line 4320
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->is6GHzBandSupported()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 4321
    :catch_7
    move-exception v0

    .line 4322
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isAggressiveRoamingModeSupported()Z
    .registers 2

    .line 12679
    const/16 v0, 0x3d

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isApMacRandomizationSupported()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4263
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isAutoWakeupEnabled()Z
    .registers 3

    .line 11136
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->isAutoWakeupEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 11137
    :catch_7
    move-exception v0

    .line 11138
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isBridgedApConcurrencySupported()Z
    .registers 2

    .line 4359
    const/16 v0, 0x2a

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isCarrierNetworkOffloadEnabled(IZ)Z
    .registers 5
    .param p1, "subscriptionId"    # I
    .param p2, "merged"    # Z

    .line 11183
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IWifiManager;->isCarrierNetworkOffloadEnabled(IZ)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 11184
    :catch_7
    move-exception v0

    .line 11185
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isConnectedMacRandomizationSupported()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4254
    const/16 v0, 0x21

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isD2dSupportedWhenInfraStaDisabled()Z
    .registers 2

    .line 4368
    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isDecoratedIdentitySupported()Z
    .registers 2

    .line 9171
    const/16 v0, 0x33

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isDefaultCoexAlgorithmEnabled()Z
    .registers 3

    .line 5648
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->isDefaultCoexAlgorithmEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 5649
    :catch_7
    move-exception v0

    .line 5650
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isDeviceToApRttSupported()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4212
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isDeviceToDeviceRttSupported()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4201
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isDualBandSimultaneousSupported()Z
    .registers 2

    .line 9220
    const/16 v0, 0x39

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isEasyConnectDppAkmSupported()Z
    .registers 2

    .line 9191
    const/16 v0, 0x36

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isEasyConnectEnrolleeResponderModeSupported()Z
    .registers 2

    .line 9126
    const/16 v0, 0x2f

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isEasyConnectSupported()Z
    .registers 2

    .line 9119
    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isEnhancedOpenSupported()Z
    .registers 2

    .line 9107
    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isEnhancedPowerReportingSupported()Z
    .registers 2

    .line 4245
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isLowLatencyModeSupported()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4273
    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isMakeBeforeBreakWifiSwitchingSupported()Z
    .registers 2

    .line 4161
    const/16 v0, 0x2d

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isMulticastEnabled()Z
    .registers 3

    .line 8591
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->isMulticastEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 8592
    :catch_7
    move-exception v0

    .line 8593
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o isOffChannelTdlsSupported()Z
    .registers 2

    .line 4238
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isP2pSupported()Z
    .registers 3

    .line 4099
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.direct"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4100
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 4099
    :goto_18
    return v0
.end method

.method public greylist-max-o isPasspointSupported()Z
    .registers 3

    .line 4090
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.passpoint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4091
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 4090
    :goto_18
    return v0
.end method

.method public whitelist isPasspointTermsAndConditionsSupported()Z
    .registers 2

    .line 9150
    const/16 v0, 0x30

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isPortableHotspotSupported()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4109
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isPreferredNetworkOffloadSupported()Z
    .registers 3

    .line 4220
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->isPnoSupported()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 4221
    :catch_7
    move-exception v0

    .line 4222
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isScanAlwaysAvailable()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4655
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->isScanAlwaysAvailable()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 4656
    :catch_7
    move-exception v0

    .line 4657
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isScanThrottleEnabled()Z
    .registers 3

    .line 11090
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->isScanThrottleEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 11091
    :catch_7
    move-exception v0

    .line 11092
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isStaApConcurrencySupported()Z
    .registers 2

    .line 4137
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isStaBridgedApConcurrencySupported()Z
    .registers 2

    .line 4348
    const/16 v0, 0x29

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isStaConcurrencyForLocalOnlyConnectionsSupported()Z
    .registers 2

    .line 4148
    const/16 v0, 0x2c

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isStaConcurrencyForMultiInternetSupported()Z
    .registers 2

    .line 4173
    const/16 v0, 0x35

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isStaConcurrencyForRestrictedConnectionsSupported()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4187
    const/16 v0, 0x2e

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isTdlsOperationCurrentlyAvailable(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 6606
    .local p2, "resultsCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6607
    const-string v0, "resultsCallback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6609
    :try_start_a
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v1, Landroid/net/wifi/WifiManager$6;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/wifi/WifiManager$6;-><init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Landroid/net/wifi/IWifiManager;->isTdlsOperationCurrentlyAvailable(Landroid/net/wifi/IBooleanListener;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_16

    .line 6621
    nop

    .line 6622
    return-void

    .line 6619
    :catch_16
    move-exception v0

    .line 6620
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isTdlsSupported()Z
    .registers 2

    .line 4230
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isThirdPartyAppEnablingWifiConfirmationDialogEnabled()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2602
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->isThirdPartyAppEnablingWifiConfirmationDialogEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2603
    :catch_7
    move-exception v0

    .line 2604
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isTidToLinkMappingNegotiationSupported()Z
    .registers 2

    .line 9227
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isTlsMinimumVersionSupported()Z
    .registers 2

    .line 9202
    const/16 v0, 0x37

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isTlsV13Supported()Z
    .registers 2

    .line 9213
    const/16 v0, 0x38

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isTrustOnFirstUseSupported()Z
    .registers 2

    .line 9178
    const/16 v0, 0x34

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isUsdPublisherSupported()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 13299
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 13303
    :try_start_6
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->isUsdPublisherSupported()Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 13304
    :catch_d
    move-exception v0

    .line 13305
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 13300
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist isUsdSubscriberSupported()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 13272
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 13276
    :try_start_6
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->isUsdSubscriberSupported()Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 13277
    :catch_d
    move-exception v0

    .line 13278
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 13273
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist isVerboseLoggingEnabled()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8678
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getVerboseLoggingLevel()I

    move-result v0

    .line 8679
    .local v0, "verboseLoggingLevel":I
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_c

    if-ne v0, v2, :cond_b

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :cond_c
    :goto_c
    return v2
.end method

.method public whitelist isWapiSupported()Z
    .registers 2

    .line 9133
    const/16 v0, 0x25

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isWepSupported()Z
    .registers 2

    .line 9236
    const/16 v0, 0x3b

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isWifiApEnabled()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6330
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public greylist-max-o isWifiAwareSupported()Z
    .registers 3

    .line 4127
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.aware"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4128
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 4127
    :goto_18
    return v0
.end method

.method public whitelist isWifiDisplayR2Supported()Z
    .registers 2

    .line 9164
    const/16 v0, 0x32

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isWifiEnabled()Z
    .registers 3

    .line 5404
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist isWifiPasspointEnabled()Z
    .registers 3

    .line 11471
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->isWifiPasspointEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 11472
    :catch_7
    move-exception v0

    .line 11473
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isWifiScannerSupported()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4118
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isWifiStandardSupported(I)Z
    .registers 4
    .param p1, "standard"    # I

    .line 4334
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->isWifiStandardSupported(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 4335
    :catch_7
    move-exception v0

    .line 4336
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isWpa3SaeH2eSupported()Z
    .registers 2

    .line 9157
    const/16 v0, 0x31

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isWpa3SaePublicKeySupported()Z
    .registers 2

    .line 9143
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isWpa3SaeSupported()Z
    .registers 2

    .line 9093
    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isWpa3SuiteBSupported()Z
    .registers 2

    .line 9100
    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isWpaPersonalSupported()Z
    .registers 2

    .line 9247
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o matchProviderWithCurrentNetwork(Ljava/lang/String;)I
    .registers 4
    .param p1, "fqdn"    # Ljava/lang/String;

    .line 3632
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->matchProviderWithCurrentNetwork(Ljava/lang/String;)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3633
    :catch_7
    move-exception v0

    .line 3634
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist notifyMinimumRequiredWifiSecurityLevelChanged(I)V
    .registers 4
    .param p1, "level"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11537
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_b

    .line 11538
    const-string v0, "WifiManager"

    const-string v1, "notifyMinimumRequiredWifiSecurityLevelChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11541
    :cond_b
    :try_start_b
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->notifyMinimumRequiredWifiSecurityLevelChanged(I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    .line 11544
    nop

    .line 11545
    return-void

    .line 11542
    :catch_12
    move-exception v0

    .line 11543
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist notifyWifiSsidPolicyChanged(Landroid/app/admin/WifiSsidPolicy;)V
    .registers 7
    .param p1, "policy"    # Landroid/app/admin/WifiSsidPolicy;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11558
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_b

    .line 11559
    const-string v0, "WifiManager"

    const-string v1, "notifyWifiSsidPolicyChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11562
    :cond_b
    if-eqz p1, :cond_2b

    .line 11563
    :try_start_d
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-virtual {p1}, Landroid/app/admin/WifiSsidPolicy;->getPolicyType()I

    move-result v1

    new-instance v2, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    new-instance v3, Ljava/util/ArrayList;

    .line 11564
    invoke-virtual {p1}, Landroid/app/admin/WifiSsidPolicy;->getSsids()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, v3}, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 11563
    invoke-interface {v0, v1, v2}, Landroid/net/wifi/IWifiManager;->notifyWifiSsidPolicyChanged(ILcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_24} :catch_25

    goto :goto_2b

    .line 11566
    :catch_25
    move-exception v0

    .line 11567
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11568
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2b
    :goto_2b
    nop

    .line 11569
    return-void
.end method

.method public whitelist pingSupplicant()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3865
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    return v0
.end method

.method public whitelist queryAutojoinGlobal(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 7856
    .local p2, "resultsCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7857
    const-string v0, "resultsCallback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7859
    :try_start_a
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v1, Landroid/net/wifi/WifiManager$9;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/wifi/WifiManager$9;-><init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Landroid/net/wifi/IWifiManager;->queryAutojoinGlobal(Landroid/net/wifi/IBooleanListener;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_16

    .line 7871
    nop

    .line 7872
    return-void

    .line 7869
    :catch_16
    move-exception v0

    .line 7870
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist queryD2dAllowedWhenInfraStaDisabled(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 13081
    .local p2, "resultsCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13082
    const-string v0, "resultsCallback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13084
    :try_start_a
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v1, Landroid/net/wifi/WifiManager$29;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/wifi/WifiManager$29;-><init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Landroid/net/wifi/IWifiManager;->queryD2dAllowedWhenInfraStaDisabled(Landroid/net/wifi/IBooleanListener;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_16

    .line 13096
    nop

    .line 13097
    return-void

    .line 13094
    :catch_16
    move-exception v0

    .line 13095
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist queryLastConfiguredTetheredApPassphraseSinceBoot(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 6396
    .local p2, "resultCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/String;>;"
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6397
    const-string v0, "resultsCallback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6399
    :try_start_a
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v1, Landroid/net/wifi/WifiManager$3;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/wifi/WifiManager$3;-><init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Landroid/net/wifi/IWifiManager;->queryLastConfiguredTetheredApPassphraseSinceBoot(Landroid/net/wifi/IStringListener;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_16

    .line 6411
    nop

    .line 6412
    return-void

    .line 6409
    :catch_16
    move-exception v0

    .line 6410
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o queryPasspointIcon(JLjava/lang/String;)V
    .registers 6
    .param p1, "bssid"    # J
    .param p3, "fileName"    # Ljava/lang/String;

    .line 3618
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/wifi/IWifiManager;->queryPasspointIcon(JLjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3621
    nop

    .line 3622
    return-void

    .line 3619
    :catch_7
    move-exception v0

    .line 3620
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist querySendDhcpHostnameRestriction(Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "resultsCallback"    # Ljava/util/function/IntConsumer;

    .line 12655
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12656
    const-string v0, "resultsCallback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12658
    :try_start_a
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/net/wifi/WifiManager$25;

    invoke-direct {v2, p0, p1, p2}, Landroid/net/wifi/WifiManager$25;-><init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V

    invoke-interface {v0, v1, v2}, Landroid/net/wifi/IWifiManager;->querySendDhcpHostnameRestriction(Ljava/lang/String;Landroid/net/wifi/IIntegerListener;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1a} :catch_1c

    .line 12670
    nop

    .line 12671
    return-void

    .line 12668
    :catch_1c
    move-exception v0

    .line 12669
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist queryWepAllowed(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 12532
    .local p2, "resultsCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12533
    const-string v0, "resultsCallback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12535
    :try_start_a
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v1, Landroid/net/wifi/WifiManager$24;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/wifi/WifiManager$24;-><init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Landroid/net/wifi/IWifiManager;->queryWepAllowed(Landroid/net/wifi/IBooleanListener;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_16

    .line 12547
    nop

    .line 12548
    return-void

    .line 12545
    :catch_16
    move-exception v0

    .line 12546
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist reassociate()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3851
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/wifi/IWifiManager;->reassociate(Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 3852
    :catch_d
    move-exception v0

    .line 3853
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist reconnect()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3827
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/wifi/IWifiManager;->reconnect(Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 3828
    :catch_d
    move-exception v0

    .line 3829
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist registerActiveCountryCodeChangedCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$ActiveCountryCodeChangedCallback;)V
    .registers 9
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/net/wifi/WifiManager$ActiveCountryCodeChangedCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4799
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 4802
    if-eqz p1, :cond_6c

    .line 4803
    if-eqz p2, :cond_64

    .line 4804
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_30

    .line 4805
    const-string v0, "WifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerActiveCountryCodeChangedCallback: callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", executor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4808
    :cond_30
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 4809
    .local v0, "callbackIdentifier":I
    sget-object v1, Landroid/net/wifi/WifiManager;->sActiveCountryCodeChangedCallbackMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 4811
    :try_start_37
    new-instance v2, Landroid/net/wifi/WifiManager$OnDriverCountryCodeChangedProxy;

    invoke-direct {v2, p1, p2}, Landroid/net/wifi/WifiManager$OnDriverCountryCodeChangedProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$ActiveCountryCodeChangedCallback;)V

    .line 4813
    .local v2, "binderListener":Landroid/net/wifi/IOnWifiDriverCountryCodeChangedListener$Stub;
    sget-object v3, Landroid/net/wifi/WifiManager;->sActiveCountryCodeChangedCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4815
    iget-object v3, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v4, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 4816
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 4815
    invoke-interface {v3, v2, v4, v5}, Landroid/net/wifi/IWifiManager;->registerDriverCountryCodeChangedListener(Landroid/net/wifi/IOnWifiDriverCountryCodeChangedListener;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_52} :catch_57
    .catchall {:try_start_37 .. :try_end_52} :catchall_55

    .line 4820
    .end local v2    # "binderListener":Landroid/net/wifi/IOnWifiDriverCountryCodeChangedListener$Stub;
    nop

    .line 4821
    :try_start_53
    monitor-exit v1

    .line 4822
    return-void

    .line 4821
    :catchall_55
    move-exception v2

    goto :goto_62

    .line 4817
    :catch_57
    move-exception v2

    .line 4818
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/net/wifi/WifiManager;->sActiveCountryCodeChangedCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 4819
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local v0    # "callbackIdentifier":I
    .end local p0    # "this":Landroid/net/wifi/WifiManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/net/wifi/WifiManager$ActiveCountryCodeChangedCallback;
    throw v3

    .line 4821
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "callbackIdentifier":I
    .restart local p0    # "this":Landroid/net/wifi/WifiManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/net/wifi/WifiManager$ActiveCountryCodeChangedCallback;
    :goto_62
    monitor-exit v1
    :try_end_63
    .catchall {:try_start_53 .. :try_end_63} :catchall_55

    throw v2

    .line 4803
    .end local v0    # "callbackIdentifier":I
    :cond_64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4802
    :cond_6c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4800
    :cond_74
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist registerCoexCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$CoexCallback;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/net/wifi/WifiManager$CoexCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5698
    if-eqz p1, :cond_20

    .line 5699
    if-eqz p2, :cond_18

    .line 5700
    invoke-virtual {p2}, Landroid/net/wifi/WifiManager$CoexCallback;->getProxy()Landroid/net/wifi/WifiManager$CoexCallback$CoexCallbackProxy;

    move-result-object v0

    .line 5701
    .local v0, "proxy":Landroid/net/wifi/WifiManager$CoexCallback$CoexCallbackProxy;
    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiManager$CoexCallback$CoexCallbackProxy;->initProxy(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$CoexCallback;)V

    .line 5703
    :try_start_b
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, v0}, Landroid/net/wifi/IWifiManager;->registerCoexCallback(Landroid/net/wifi/ICoexCallback;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    .line 5706
    nop

    .line 5707
    return-void

    .line 5704
    :catch_12
    move-exception v1

    .line 5705
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 5699
    .end local v0    # "proxy":Landroid/net/wifi/WifiManager$CoexCallback$CoexCallbackProxy;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5698
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist registerLocalOnlyHotspotSoftApCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SoftApCallback;)V
    .registers 8
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/net/wifi/WifiManager$SoftApCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6184
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 6187
    if-eqz p1, :cond_67

    .line 6188
    if-eqz p2, :cond_5f

    .line 6189
    const-string v0, "WifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerLocalOnlyHotspotSoftApCallback: callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", executor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6192
    :try_start_2c
    sget-object v0, Landroid/net/wifi/WifiManager;->sLocalOnlyHotspotSoftApCallbackMap:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2f} :catch_59

    .line 6193
    :try_start_2f
    new-instance v1, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, p2, v2}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;-><init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SoftApCallback;I)V

    .line 6195
    .local v1, "binderCallback":Landroid/net/wifi/ISoftApCallback$Stub;
    sget-object v2, Landroid/net/wifi/WifiManager;->sLocalOnlyHotspotSoftApCallbackMap:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6197
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 6198
    .local v2, "extras":Landroid/os/Bundle;
    const-string v3, "EXTRA_PARAM_KEY_ATTRIBUTION_SOURCE"

    iget-object v4, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 6199
    invoke-virtual {v4}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    .line 6198
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 6200
    iget-object v3, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v3, v1, v2}, Landroid/net/wifi/IWifiManager;->registerLocalOnlyHotspotSoftApCallback(Landroid/net/wifi/ISoftApCallback;Landroid/os/Bundle;)V

    .line 6201
    .end local v1    # "binderCallback":Landroid/net/wifi/ISoftApCallback$Stub;
    .end local v2    # "extras":Landroid/os/Bundle;
    monitor-exit v0

    .line 6204
    nop

    .line 6205
    return-void

    .line 6201
    :catchall_56
    move-exception v1

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_2f .. :try_end_58} :catchall_56

    .end local p0    # "this":Landroid/net/wifi/WifiManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/net/wifi/WifiManager$SoftApCallback;
    :try_start_58
    throw v1
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_59} :catch_59

    .line 6202
    .restart local p0    # "this":Landroid/net/wifi/WifiManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/net/wifi/WifiManager$SoftApCallback;
    :catch_59
    move-exception v0

    .line 6203
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6188
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6187
    :cond_67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6185
    :cond_6f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist registerNetworkRequestMatchCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3306
    if-eqz p1, :cond_50

    .line 3307
    if-eqz p2, :cond_48

    .line 3308
    const-string v0, "WifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerNetworkRequestMatchCallback: callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", executor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3312
    :try_start_26
    sget-object v0, Landroid/net/wifi/WifiManager;->sNetworkRequestMatchCallbackMap:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_29} :catch_42

    .line 3313
    :try_start_29
    new-instance v1, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;-><init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;)V

    .line 3315
    .local v1, "binderCallback":Landroid/net/wifi/INetworkRequestMatchCallback$Stub;
    sget-object v2, Landroid/net/wifi/WifiManager;->sNetworkRequestMatchCallbackMap:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3317
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v2, v1}, Landroid/net/wifi/IWifiManager;->registerNetworkRequestMatchCallback(Landroid/net/wifi/INetworkRequestMatchCallback;)V

    .line 3318
    .end local v1    # "binderCallback":Landroid/net/wifi/INetworkRequestMatchCallback$Stub;
    monitor-exit v0

    .line 3321
    nop

    .line 3322
    return-void

    .line 3318
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_29 .. :try_end_41} :catchall_3f

    .end local p0    # "this":Landroid/net/wifi/WifiManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;
    :try_start_41
    throw v1
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_42} :catch_42

    .line 3319
    .restart local p0    # "this":Landroid/net/wifi/WifiManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;
    :catch_42
    move-exception v0

    .line 3320
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3307
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3306
    :cond_50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist registerScanResultsCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$ScanResultsCallback;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/net/wifi/WifiManager$ScanResultsCallback;

    .line 9942
    if-eqz p1, :cond_42

    .line 9943
    if-eqz p2, :cond_3a

    .line 9945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerScanResultsCallback: callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", executor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9947
    invoke-virtual {p2}, Landroid/net/wifi/WifiManager$ScanResultsCallback;->getProxy()Landroid/net/wifi/WifiManager$ScanResultsCallback$ScanResultsCallbackProxy;

    move-result-object v0

    .line 9948
    .local v0, "proxy":Landroid/net/wifi/WifiManager$ScanResultsCallback$ScanResultsCallbackProxy;
    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiManager$ScanResultsCallback$ScanResultsCallbackProxy;->initProxy(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$ScanResultsCallback;)V

    .line 9950
    :try_start_2d
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, v0}, Landroid/net/wifi/IWifiManager;->registerScanResultsCallback(Landroid/net/wifi/IScanResultsCallback;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_32} :catch_34

    .line 9953
    nop

    .line 9954
    return-void

    .line 9951
    :catch_34
    move-exception v1

    .line 9952
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 9943
    .end local v0    # "proxy":Landroid/net/wifi/WifiManager$ScanResultsCallback$ScanResultsCallbackProxy;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9942
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist registerSoftApCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SoftApCallback;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/net/wifi/WifiManager$SoftApCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7183
    if-eqz p1, :cond_51

    .line 7184
    if-eqz p2, :cond_49

    .line 7185
    const-string v0, "WifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerSoftApCallback: callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", executor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7188
    :try_start_26
    sget-object v0, Landroid/net/wifi/WifiManager;->sSoftApCallbackMap:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_29} :catch_43

    .line 7189
    :try_start_29
    new-instance v1, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, p2, v2}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;-><init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SoftApCallback;I)V

    .line 7191
    .local v1, "binderCallback":Landroid/net/wifi/ISoftApCallback$Stub;
    sget-object v2, Landroid/net/wifi/WifiManager;->sSoftApCallbackMap:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7192
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v2, v1}, Landroid/net/wifi/IWifiManager;->registerSoftApCallback(Landroid/net/wifi/ISoftApCallback;)V

    .line 7193
    .end local v1    # "binderCallback":Landroid/net/wifi/ISoftApCallback$Stub;
    monitor-exit v0

    .line 7196
    nop

    .line 7197
    return-void

    .line 7193
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_29 .. :try_end_42} :catchall_40

    .end local p0    # "this":Landroid/net/wifi/WifiManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/net/wifi/WifiManager$SoftApCallback;
    :try_start_42
    throw v1
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_43} :catch_43

    .line 7194
    .restart local p0    # "this":Landroid/net/wifi/WifiManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/net/wifi/WifiManager$SoftApCallback;
    :catch_43
    move-exception v0

    .line 7195
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7184
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7183
    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist registerSubsystemRestartTrackingCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;

    .line 5322
    if-eqz p1, :cond_23

    .line 5323
    if-eqz p2, :cond_1b

    .line 5324
    invoke-virtual {p2}, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;->getProxy()Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;

    move-result-object v0

    .line 5325
    .local v0, "proxy":Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;
    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;->initProxy(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;)V

    .line 5327
    :try_start_b
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, v0}, Landroid/net/wifi/IWifiManager;->registerSubsystemRestartCallback(Landroid/net/wifi/ISubsystemRestartCallback;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    .line 5331
    nop

    .line 5332
    return-void

    .line 5328
    :catch_12
    move-exception v1

    .line 5329
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;->cleanUpProxy()V

    .line 5330
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 5323
    .end local v0    # "proxy":Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5322
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist registerTrafficStateCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$TrafficStateCallback;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/net/wifi/WifiManager$TrafficStateCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9036
    if-eqz p1, :cond_50

    .line 9037
    if-eqz p2, :cond_48

    .line 9038
    const-string v0, "WifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerTrafficStateCallback: callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", executor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9041
    :try_start_26
    sget-object v0, Landroid/net/wifi/WifiManager;->sTrafficStateCallbackMap:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_29} :catch_42

    .line 9042
    :try_start_29
    new-instance v1, Landroid/net/wifi/WifiManager$TrafficStateCallbackProxy;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/wifi/WifiManager$TrafficStateCallbackProxy;-><init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$TrafficStateCallback;)V

    .line 9044
    .local v1, "binderCallback":Landroid/net/wifi/ITrafficStateCallback$Stub;
    sget-object v2, Landroid/net/wifi/WifiManager;->sTrafficStateCallbackMap:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9045
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v2, v1}, Landroid/net/wifi/IWifiManager;->registerTrafficStateCallback(Landroid/net/wifi/ITrafficStateCallback;)V

    .line 9046
    .end local v1    # "binderCallback":Landroid/net/wifi/ITrafficStateCallback$Stub;
    monitor-exit v0

    .line 9049
    nop

    .line 9050
    return-void

    .line 9046
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_29 .. :try_end_41} :catchall_3f

    .end local p0    # "this":Landroid/net/wifi/WifiManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/net/wifi/WifiManager$TrafficStateCallback;
    :try_start_41
    throw v1
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_42} :catch_42

    .line 9047
    .restart local p0    # "this":Landroid/net/wifi/WifiManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/net/wifi/WifiManager$TrafficStateCallback;
    :catch_42
    move-exception v0

    .line 9048
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9037
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9036
    :cond_50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeAllQosPolicies()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 12197
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/wifi/IWifiManager;->removeAllQosPolicies(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 12200
    nop

    .line 12201
    return-void

    .line 12198
    :catch_d
    move-exception v0

    .line 12199
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeAppState(ILjava/lang/String;)V
    .registers 5
    .param p1, "targetAppUid"    # I
    .param p2, "targetAppPackageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3375
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IWifiManager;->removeAppState(ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3378
    nop

    .line 3379
    return-void

    .line 3376
    :catch_7
    move-exception v0

    .line 3377
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeCustomDhcpOptions(Landroid/net/wifi/WifiSsid;[B)V
    .registers 5
    .param p1, "ssid"    # Landroid/net/wifi/WifiSsid;
    .param p2, "oui"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 11899
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IWifiManager;->removeCustomDhcpOptions(Landroid/net/wifi/WifiSsid;[B)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 11902
    nop

    .line 11903
    return-void

    .line 11900
    :catch_7
    move-exception v0

    .line 11901
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeLocalOnlyConnectionFailureListener(Landroid/net/wifi/WifiManager$LocalOnlyConnectionFailureListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/net/wifi/WifiManager$LocalOnlyConnectionFailureListener;

    .line 10255
    if-eqz p1, :cond_4f

    .line 10257
    :try_start_2
    sget-object v0, Landroid/net/wifi/WifiManager;->sLocalOnlyConnectionStatusListenerMap:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_49

    .line 10258
    :try_start_5
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 10259
    .local v1, "listenerIdentifier":I
    sget-object v2, Landroid/net/wifi/WifiManager;->sLocalOnlyConnectionStatusListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 10260
    const-string v2, "WifiManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown external callback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10261
    monitor-exit v0

    return-void

    .line 10263
    :cond_2b
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    sget-object v3, Landroid/net/wifi/WifiManager;->sLocalOnlyConnectionStatusListenerMap:Landroid/util/SparseArray;

    .line 10264
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ILocalOnlyConnectionStatusListener;

    iget-object v4, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 10265
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 10263
    invoke-interface {v2, v3, v4}, Landroid/net/wifi/IWifiManager;->removeLocalOnlyConnectionStatusListener(Landroid/net/wifi/ILocalOnlyConnectionStatusListener;Ljava/lang/String;)V

    .line 10266
    sget-object v2, Landroid/net/wifi/WifiManager;->sLocalOnlyConnectionStatusListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 10267
    .end local v1    # "listenerIdentifier":I
    monitor-exit v0

    .line 10270
    nop

    .line 10271
    return-void

    .line 10267
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_5 .. :try_end_48} :catchall_46

    .end local p0    # "this":Landroid/net/wifi/WifiManager;
    .end local p1    # "listener":Landroid/net/wifi/WifiManager$LocalOnlyConnectionFailureListener;
    :try_start_48
    throw v1
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_49} :catch_49

    .line 10268
    .restart local p0    # "this":Landroid/net/wifi/WifiManager;
    .restart local p1    # "listener":Landroid/net/wifi/WifiManager$LocalOnlyConnectionFailureListener;
    :catch_49
    move-exception v0

    .line 10269
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10255
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeNetwork(I)Z
    .registers 4
    .param p1, "netId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3668
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/net/wifi/IWifiManager;->removeNetwork(ILjava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 3669
    :catch_d
    move-exception v0

    .line 3670
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeNetworkSuggestions(Ljava/util/List;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiNetworkSuggestion;",
            ">;)I"
        }
    .end annotation

    .line 3459
    .local p1, "networkSuggestions":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiNetworkSuggestion;>;"
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/net/wifi/WifiManager;->removeNetworkSuggestions(Ljava/util/List;I)I

    move-result v0

    return v0
.end method

.method public whitelist removeNetworkSuggestions(Ljava/util/List;I)I
    .registers 6
    .param p2, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiNetworkSuggestion;",
            ">;I)I"
        }
    .end annotation

    .line 3483
    .local p1, "networkSuggestions":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiNetworkSuggestion;>;"
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v1, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    invoke-direct {v1, p1}, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;-><init>(Ljava/util/List;)V

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 3484
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3483
    invoke-interface {v0, v1, v2, p2}, Landroid/net/wifi/IWifiManager;->removeNetworkSuggestions(Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;Ljava/lang/String;I)I

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    return v0

    .line 3485
    :catch_12
    move-exception v0

    .line 3486
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeNonCallerConfiguredNetworks()Z
    .registers 3

    .line 3684
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/wifi/IWifiManager;->removeNonCallerConfiguredNetworks(Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 3685
    :catch_d
    move-exception v0

    .line 3686
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeOnWifiUsabilityStatsListener(Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9777
    if-eqz p1, :cond_65

    .line 9778
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_1e

    .line 9779
    const-string v0, "WifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeOnWifiUsabilityStatsListener: listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9782
    :cond_1e
    :try_start_1e
    sget-object v0, Landroid/net/wifi/WifiManager;->sOnWifiUsabilityStatsListenerMap:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_21} :catch_5f

    .line 9783
    :try_start_21
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 9784
    .local v1, "listenerIdentifier":I
    sget-object v2, Landroid/net/wifi/WifiManager;->sOnWifiUsabilityStatsListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_47

    .line 9785
    const-string v2, "WifiManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown external callback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9786
    monitor-exit v0

    return-void

    .line 9788
    :cond_47
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    sget-object v3, Landroid/net/wifi/WifiManager;->sOnWifiUsabilityStatsListenerMap:Landroid/util/SparseArray;

    .line 9789
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/IOnWifiUsabilityStatsListener;

    .line 9788
    invoke-interface {v2, v3}, Landroid/net/wifi/IWifiManager;->removeOnWifiUsabilityStatsListener(Landroid/net/wifi/IOnWifiUsabilityStatsListener;)V

    .line 9790
    sget-object v2, Landroid/net/wifi/WifiManager;->sOnWifiUsabilityStatsListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 9791
    .end local v1    # "listenerIdentifier":I
    monitor-exit v0

    .line 9794
    nop

    .line 9795
    return-void

    .line 9791
    :catchall_5c
    move-exception v1

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_21 .. :try_end_5e} :catchall_5c

    .end local p0    # "this":Landroid/net/wifi/WifiManager;
    .end local p1    # "listener":Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;
    :try_start_5e
    throw v1
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_5f} :catch_5f

    .line 9792
    .restart local p0    # "this":Landroid/net/wifi/WifiManager;
    .restart local p1    # "listener":Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;
    :catch_5f
    move-exception v0

    .line 9793
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9777
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removePasspointConfiguration(Ljava/lang/String;)V
    .registers 4
    .param p1, "fqdn"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3576
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/net/wifi/IWifiManager;->removePasspointConfiguration(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3581
    nop

    .line 3582
    return-void

    .line 3577
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .end local p0    # "this":Landroid/net/wifi/WifiManager;
    .end local p1    # "fqdn":Ljava/lang/String;
    throw v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_16

    .line 3579
    .restart local p0    # "this":Landroid/net/wifi/WifiManager;
    .restart local p1    # "fqdn":Ljava/lang/String;
    :catch_16
    move-exception v0

    .line 3580
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removePerSsidRoamingMode(Landroid/net/wifi/WifiSsid;)V
    .registers 4
    .param p1, "ssid"    # Landroid/net/wifi/WifiSsid;

    .line 12731
    const-string v0, "ssid cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12733
    :try_start_5
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/net/wifi/IWifiManager;->removePerSsidRoamingMode(Landroid/net/wifi/WifiSsid;Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_10} :catch_12

    .line 12736
    nop

    .line 12737
    return-void

    .line 12734
    :catch_12
    move-exception v0

    .line 12735
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeQosPolicies([I)V
    .registers 4
    .param p1, "policyIdList"    # [I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 12174
    const-string v0, "policyIdList cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12176
    :try_start_5
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/net/wifi/IWifiManager;->removeQosPolicies([ILjava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_10} :catch_12

    .line 12179
    nop

    .line 12180
    return-void

    .line 12177
    :catch_12
    move-exception v0

    .line 12178
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeSuggestionConnectionStatusListener(Landroid/net/wifi/WifiManager$SuggestionConnectionStatusListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/net/wifi/WifiManager$SuggestionConnectionStatusListener;

    .line 10188
    if-eqz p1, :cond_67

    .line 10189
    const-string v0, "WifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeSuggestionConnectionStatusListener: listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10191
    :try_start_1a
    sget-object v0, Landroid/net/wifi/WifiManager;->sSuggestionConnectionStatusListenerMap:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_61

    .line 10192
    :try_start_1d
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 10193
    .local v1, "listenerIdentifier":I
    sget-object v2, Landroid/net/wifi/WifiManager;->sSuggestionConnectionStatusListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_43

    .line 10194
    const-string v2, "WifiManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown external callback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10195
    monitor-exit v0

    return-void

    .line 10197
    :cond_43
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    sget-object v3, Landroid/net/wifi/WifiManager;->sSuggestionConnectionStatusListenerMap:Landroid/util/SparseArray;

    .line 10198
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ISuggestionConnectionStatusListener;

    iget-object v4, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 10199
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 10197
    invoke-interface {v2, v3, v4}, Landroid/net/wifi/IWifiManager;->unregisterSuggestionConnectionStatusListener(Landroid/net/wifi/ISuggestionConnectionStatusListener;Ljava/lang/String;)V

    .line 10200
    sget-object v2, Landroid/net/wifi/WifiManager;->sSuggestionConnectionStatusListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 10201
    .end local v1    # "listenerIdentifier":I
    monitor-exit v0

    .line 10204
    nop

    .line 10205
    return-void

    .line 10201
    :catchall_5e
    move-exception v1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_1d .. :try_end_60} :catchall_5e

    .end local p0    # "this":Landroid/net/wifi/WifiManager;
    .end local p1    # "listener":Landroid/net/wifi/WifiManager$SuggestionConnectionStatusListener;
    :try_start_60
    throw v1
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_61} :catch_61

    .line 10202
    .restart local p0    # "this":Landroid/net/wifi/WifiManager;
    .restart local p1    # "listener":Landroid/net/wifi/WifiManager$SuggestionConnectionStatusListener;
    :catch_61
    move-exception v0

    .line 10203
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10188
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeSuggestionUserApprovalStatusListener(Landroid/net/wifi/WifiManager$SuggestionUserApprovalStatusListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/net/wifi/WifiManager$SuggestionUserApprovalStatusListener;

    .line 11268
    if-eqz p1, :cond_67

    .line 11269
    const-string v0, "WifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeSuggestionUserApprovalStatusListener: listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11271
    :try_start_1a
    sget-object v0, Landroid/net/wifi/WifiManager;->sSuggestionUserApprovalStatusListenerMap:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_61

    .line 11272
    :try_start_1d
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 11273
    .local v1, "listenerIdentifier":I
    sget-object v2, Landroid/net/wifi/WifiManager;->sSuggestionUserApprovalStatusListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_43

    .line 11274
    const-string v2, "WifiManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown external callback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11275
    monitor-exit v0

    return-void

    .line 11277
    :cond_43
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    sget-object v3, Landroid/net/wifi/WifiManager;->sSuggestionUserApprovalStatusListenerMap:Landroid/util/SparseArray;

    .line 11278
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ISuggestionUserApprovalStatusListener;

    iget-object v4, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 11279
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 11277
    invoke-interface {v2, v3, v4}, Landroid/net/wifi/IWifiManager;->removeSuggestionUserApprovalStatusListener(Landroid/net/wifi/ISuggestionUserApprovalStatusListener;Ljava/lang/String;)V

    .line 11280
    sget-object v2, Landroid/net/wifi/WifiManager;->sSuggestionUserApprovalStatusListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 11281
    .end local v1    # "listenerIdentifier":I
    monitor-exit v0

    .line 11284
    nop

    .line 11285
    return-void

    .line 11281
    :catchall_5e
    move-exception v1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_1d .. :try_end_60} :catchall_5e

    .end local p0    # "this":Landroid/net/wifi/WifiManager;
    .end local p1    # "listener":Landroid/net/wifi/WifiManager$SuggestionUserApprovalStatusListener;
    :try_start_60
    throw v1
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_61} :catch_61

    .line 11282
    .restart local p0    # "this":Landroid/net/wifi/WifiManager;
    .restart local p1    # "listener":Landroid/net/wifi/WifiManager$SuggestionUserApprovalStatusListener;
    :catch_61
    move-exception v0

    .line 11283
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11268
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeWifiLowLatencyLockListener(Landroid/net/wifi/WifiManager$WifiLowLatencyLockListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/net/wifi/WifiManager$WifiLowLatencyLockListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8363
    if-eqz p1, :cond_73

    .line 8364
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_1e

    .line 8365
    const-string v0, "WifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeWifiLowLatencyLockListener: listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8367
    :cond_1e
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 8368
    .local v0, "listenerIdentifier":I
    sget-object v1, Landroid/net/wifi/WifiManager;->sWifiLowLatencyLockListenerMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 8370
    :try_start_25
    sget-object v2, Landroid/net/wifi/WifiManager;->sWifiLowLatencyLockListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_4c

    .line 8371
    const-string v2, "WifiManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown external listener "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_45} :catch_63
    .catchall {:try_start_25 .. :try_end_45} :catchall_61

    .line 8380
    :try_start_45
    sget-object v2, Landroid/net/wifi/WifiManager;->sWifiLowLatencyLockListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_45 .. :try_end_4b} :catchall_70

    .line 8372
    return-void

    .line 8374
    :cond_4c
    :try_start_4c
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    sget-object v3, Landroid/net/wifi/WifiManager;->sWifiLowLatencyLockListenerMap:Landroid/util/SparseArray;

    .line 8375
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/IWifiLowLatencyLockListener;

    .line 8374
    invoke-interface {v2, v3}, Landroid/net/wifi/IWifiManager;->removeWifiLowLatencyLockListener(Landroid/net/wifi/IWifiLowLatencyLockListener;)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_59} :catch_63
    .catchall {:try_start_4c .. :try_end_59} :catchall_61

    .line 8380
    :try_start_59
    sget-object v2, Landroid/net/wifi/WifiManager;->sWifiLowLatencyLockListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 8381
    nop

    .line 8382
    monitor-exit v1
    :try_end_60
    .catchall {:try_start_59 .. :try_end_60} :catchall_70

    .line 8383
    return-void

    .line 8380
    :catchall_61
    move-exception v2

    goto :goto_69

    .line 8377
    :catch_63
    move-exception v2

    .line 8378
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_64
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local v0    # "listenerIdentifier":I
    .end local p0    # "this":Landroid/net/wifi/WifiManager;
    .end local p1    # "listener":Landroid/net/wifi/WifiManager$WifiLowLatencyLockListener;
    throw v3
    :try_end_69
    .catchall {:try_start_64 .. :try_end_69} :catchall_61

    .line 8380
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "listenerIdentifier":I
    .restart local p0    # "this":Landroid/net/wifi/WifiManager;
    .restart local p1    # "listener":Landroid/net/wifi/WifiManager$WifiLowLatencyLockListener;
    :goto_69
    :try_start_69
    sget-object v3, Landroid/net/wifi/WifiManager;->sWifiLowLatencyLockListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 8381
    nop

    .end local v0    # "listenerIdentifier":I
    .end local p0    # "this":Landroid/net/wifi/WifiManager;
    .end local p1    # "listener":Landroid/net/wifi/WifiManager$WifiLowLatencyLockListener;
    throw v2

    .line 8382
    .restart local v0    # "listenerIdentifier":I
    .restart local p0    # "this":Landroid/net/wifi/WifiManager;
    .restart local p1    # "listener":Landroid/net/wifi/WifiManager$WifiLowLatencyLockListener;
    :catchall_70
    move-exception v2

    monitor-exit v1
    :try_end_72
    .catchall {:try_start_69 .. :try_end_72} :catchall_70

    throw v2

    .line 8363
    .end local v0    # "listenerIdentifier":I
    :cond_73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeWifiNetworkStateChangedListener(Landroid/net/wifi/WifiManager$WifiNetworkStateChangedListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/net/wifi/WifiManager$WifiNetworkStateChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5033
    if-eqz p1, :cond_73

    .line 5034
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_1e

    .line 5035
    const-string v0, "WifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeWifiNetworkStateChangedListener: listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5037
    :cond_1e
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 5038
    .local v0, "listenerIdentifier":I
    sget-object v1, Landroid/net/wifi/WifiManager;->sOnWifiNetworkStateChangedListenerMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 5040
    :try_start_25
    sget-object v2, Landroid/net/wifi/WifiManager;->sOnWifiNetworkStateChangedListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_4c

    .line 5041
    const-string v2, "WifiManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown external listener "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_45} :catch_63
    .catchall {:try_start_25 .. :try_end_45} :catchall_61

    .line 5049
    :try_start_45
    sget-object v2, Landroid/net/wifi/WifiManager;->sOnWifiNetworkStateChangedListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_45 .. :try_end_4b} :catchall_70

    .line 5042
    return-void

    .line 5044
    :cond_4c
    :try_start_4c
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    sget-object v3, Landroid/net/wifi/WifiManager;->sOnWifiNetworkStateChangedListenerMap:Landroid/util/SparseArray;

    .line 5045
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/IWifiNetworkStateChangedListener;

    .line 5044
    invoke-interface {v2, v3}, Landroid/net/wifi/IWifiManager;->removeWifiNetworkStateChangedListener(Landroid/net/wifi/IWifiNetworkStateChangedListener;)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_59} :catch_63
    .catchall {:try_start_4c .. :try_end_59} :catchall_61

    .line 5049
    :try_start_59
    sget-object v2, Landroid/net/wifi/WifiManager;->sOnWifiNetworkStateChangedListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 5050
    nop

    .line 5051
    monitor-exit v1
    :try_end_60
    .catchall {:try_start_59 .. :try_end_60} :catchall_70

    .line 5052
    return-void

    .line 5049
    :catchall_61
    move-exception v2

    goto :goto_69

    .line 5046
    :catch_63
    move-exception v2

    .line 5047
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_64
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local v0    # "listenerIdentifier":I
    .end local p0    # "this":Landroid/net/wifi/WifiManager;
    .end local p1    # "listener":Landroid/net/wifi/WifiManager$WifiNetworkStateChangedListener;
    throw v3
    :try_end_69
    .catchall {:try_start_64 .. :try_end_69} :catchall_61

    .line 5049
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "listenerIdentifier":I
    .restart local p0    # "this":Landroid/net/wifi/WifiManager;
    .restart local p1    # "listener":Landroid/net/wifi/WifiManager$WifiNetworkStateChangedListener;
    :goto_69
    :try_start_69
    sget-object v3, Landroid/net/wifi/WifiManager;->sOnWifiNetworkStateChangedListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 5050
    nop

    .end local v0    # "listenerIdentifier":I
    .end local p0    # "this":Landroid/net/wifi/WifiManager;
    .end local p1    # "listener":Landroid/net/wifi/WifiManager$WifiNetworkStateChangedListener;
    throw v2

    .line 5051
    .restart local v0    # "listenerIdentifier":I
    .restart local p0    # "this":Landroid/net/wifi/WifiManager;
    .restart local p1    # "listener":Landroid/net/wifi/WifiManager$WifiNetworkStateChangedListener;
    :catchall_70
    move-exception v2

    monitor-exit v1
    :try_end_72
    .catchall {:try_start_69 .. :try_end_72} :catchall_70

    throw v2

    .line 5033
    .end local v0    # "listenerIdentifier":I
    :cond_73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeWifiStateChangedListener(Landroid/net/wifi/WifiManager$WifiStateChangedListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/net/wifi/WifiManager$WifiStateChangedListener;

    .line 5452
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5453
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_1f

    .line 5454
    const-string v0, "WifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeWifiStateChangedListener: listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5456
    :cond_1f
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 5457
    .local v0, "listenerIdentifier":I
    sget-object v1, Landroid/net/wifi/WifiManager;->sWifiStateChangedListenerMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 5459
    :try_start_26
    sget-object v2, Landroid/net/wifi/WifiManager;->sWifiStateChangedListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_4d

    .line 5460
    const-string v2, "WifiManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown external listener "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_46} :catch_64
    .catchall {:try_start_26 .. :try_end_46} :catchall_62

    .line 5468
    :try_start_46
    sget-object v2, Landroid/net/wifi/WifiManager;->sWifiStateChangedListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_46 .. :try_end_4c} :catchall_71

    .line 5461
    return-void

    .line 5463
    :cond_4d
    :try_start_4d
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    sget-object v3, Landroid/net/wifi/WifiManager;->sWifiStateChangedListenerMap:Landroid/util/SparseArray;

    .line 5464
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/IWifiStateChangedListener;

    .line 5463
    invoke-interface {v2, v3}, Landroid/net/wifi/IWifiManager;->removeWifiStateChangedListener(Landroid/net/wifi/IWifiStateChangedListener;)V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_5a} :catch_64
    .catchall {:try_start_4d .. :try_end_5a} :catchall_62

    .line 5468
    :try_start_5a
    sget-object v2, Landroid/net/wifi/WifiManager;->sWifiStateChangedListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 5469
    nop

    .line 5470
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_5a .. :try_end_61} :catchall_71

    .line 5471
    return-void

    .line 5468
    :catchall_62
    move-exception v2

    goto :goto_6a

    .line 5465
    :catch_64
    move-exception v2

    .line 5466
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_65
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local v0    # "listenerIdentifier":I
    .end local p0    # "this":Landroid/net/wifi/WifiManager;
    .end local p1    # "listener":Landroid/net/wifi/WifiManager$WifiStateChangedListener;
    throw v3
    :try_end_6a
    .catchall {:try_start_65 .. :try_end_6a} :catchall_62

    .line 5468
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "listenerIdentifier":I
    .restart local p0    # "this":Landroid/net/wifi/WifiManager;
    .restart local p1    # "listener":Landroid/net/wifi/WifiManager$WifiStateChangedListener;
    :goto_6a
    :try_start_6a
    sget-object v3, Landroid/net/wifi/WifiManager;->sWifiStateChangedListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 5469
    nop

    .end local v0    # "listenerIdentifier":I
    .end local p0    # "this":Landroid/net/wifi/WifiManager;
    .end local p1    # "listener":Landroid/net/wifi/WifiManager$WifiStateChangedListener;
    throw v2

    .line 5470
    .restart local v0    # "listenerIdentifier":I
    .restart local p0    # "this":Landroid/net/wifi/WifiManager;
    .restart local p1    # "listener":Landroid/net/wifi/WifiManager$WifiStateChangedListener;
    :catchall_71
    move-exception v2

    monitor-exit v1
    :try_end_73
    .catchall {:try_start_6a .. :try_end_73} :catchall_71

    throw v2
.end method

.method public whitelist removeWifiVerboseLoggingStatusChangedListener(Landroid/net/wifi/WifiManager$WifiVerboseLoggingStatusChangedListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/net/wifi/WifiManager$WifiVerboseLoggingStatusChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10122
    if-eqz p1, :cond_61

    .line 10123
    const-string v0, "WifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeWifiVerboseLoggingStatusChangedListener: listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10125
    :try_start_1a
    sget-object v0, Landroid/net/wifi/WifiManager;->sWifiVerboseLoggingStatusChangedListenerMap:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_5b

    .line 10126
    :try_start_1d
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 10127
    .local v1, "listenerIdentifier":I
    sget-object v2, Landroid/net/wifi/WifiManager;->sWifiVerboseLoggingStatusChangedListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_43

    .line 10128
    const-string v2, "WifiManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown external callback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10129
    monitor-exit v0

    return-void

    .line 10131
    :cond_43
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    sget-object v3, Landroid/net/wifi/WifiManager;->sWifiVerboseLoggingStatusChangedListenerMap:Landroid/util/SparseArray;

    .line 10132
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/IWifiVerboseLoggingStatusChangedListener;

    .line 10131
    invoke-interface {v2, v3}, Landroid/net/wifi/IWifiManager;->removeWifiVerboseLoggingStatusChangedListener(Landroid/net/wifi/IWifiVerboseLoggingStatusChangedListener;)V

    .line 10133
    sget-object v2, Landroid/net/wifi/WifiManager;->sWifiVerboseLoggingStatusChangedListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 10134
    .end local v1    # "listenerIdentifier":I
    monitor-exit v0

    .line 10137
    nop

    .line 10138
    return-void

    .line 10134
    :catchall_58
    move-exception v1

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_1d .. :try_end_5a} :catchall_58

    .end local p0    # "this":Landroid/net/wifi/WifiManager;
    .end local p1    # "listener":Landroid/net/wifi/WifiManager$WifiVerboseLoggingStatusChangedListener;
    :try_start_5a
    throw v1
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_5b} :catch_5b

    .line 10135
    .restart local p0    # "this":Landroid/net/wifi/WifiManager;
    .restart local p1    # "listener":Landroid/net/wifi/WifiManager$WifiVerboseLoggingStatusChangedListener;
    :catch_5b
    move-exception v0

    .line 10136
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10122
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist replyToP2pInvitationReceivedDialog(IZLjava/lang/String;)V
    .registers 6
    .param p1, "dialogId"    # I
    .param p2, "accepted"    # Z
    .param p3, "optionalPin"    # Ljava/lang/String;

    .line 11837
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_30

    .line 11838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "replyToP2pInvitationReceivedDialog: dialogId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accepted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11844
    :cond_30
    :try_start_30
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/wifi/IWifiManager;->replyToP2pInvitationReceivedDialog(IZLjava/lang/String;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_35} :catch_37

    .line 11847
    nop

    .line 11848
    return-void

    .line 11845
    :catch_37
    move-exception v0

    .line 11846
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist replyToSimpleDialog(II)V
    .registers 5
    .param p1, "dialogId"    # I
    .param p2, "reply"    # I

    .line 11817
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_26

    .line 11818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "replyToWifiEnableRequestDialog: dialogId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reply="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11822
    :cond_26
    :try_start_26
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IWifiManager;->replyToSimpleDialog(II)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2d

    .line 11825
    nop

    .line 11826
    return-void

    .line 11823
    :catch_2d
    move-exception v0

    .line 11824
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist reportCreateInterfaceImpact(IZLjava/util/concurrent/Executor;Ljava/util/function/BiConsumer;)V
    .registers 8
    .param p1, "interfaceType"    # I
    .param p2, "requireNewInterface"    # Z
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Boolean;",
            "Ljava/util/Set<",
            "Landroid/net/wifi/WifiManager$InterfaceCreationImpact;",
            ">;>;)V"
        }
    .end annotation

    .line 12030
    .local p4, "resultCallback":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/lang/Boolean;Ljava/util/Set<Landroid/net/wifi/WifiManager$InterfaceCreationImpact;>;>;"
    const-string v0, "Non-null executor required"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12031
    const-string v0, "Non-null resultCallback required"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12033
    :try_start_a
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/net/wifi/WifiManager$16;

    invoke-direct {v2, p0, p3, p4}, Landroid/net/wifi/WifiManager$16;-><init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Ljava/util/function/BiConsumer;)V

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/net/wifi/IWifiManager;->reportCreateInterfaceImpact(Ljava/lang/String;IZLandroid/net/wifi/IInterfaceCreationInfoCallback;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1a} :catch_1c

    .line 12073
    nop

    .line 12074
    return-void

    .line 12071
    :catch_1c
    move-exception v0

    .line 12072
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist restartWifiSubsystem()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5377
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->restartWifiSubsystem()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 5380
    nop

    .line 5381
    return-void

    .line 5378
    :catch_7
    move-exception v0

    .line 5379
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist restoreBackupData([B)V
    .registers 4
    .param p1, "data"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8837
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->restoreBackupData([B)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 8840
    nop

    .line 8841
    return-void

    .line 8838
    :catch_7
    move-exception v0

    .line 8839
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist restoreSoftApBackupData([B)Landroid/net/wifi/SoftApConfiguration;
    .registers 4
    .param p1, "data"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8872
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->restoreSoftApBackupData([B)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 8873
    :catch_7
    move-exception v0

    .line 8874
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist restoreSupplicantBackupData([B[B)V
    .registers 5
    .param p1, "supplicantData"    # [B
    .param p2, "ipConfigData"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8891
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IWifiManager;->restoreSupplicantBackupData([B[B)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 8894
    nop

    .line 8895
    return-void

    .line 8892
    :catch_7
    move-exception v0

    .line 8893
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist restoreWifiBackupData([B)V
    .registers 4
    .param p1, "data"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8801
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 8805
    :try_start_6
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->restoreWifiBackupData([B)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    .line 8808
    nop

    .line 8809
    return-void

    .line 8806
    :catch_d
    move-exception v0

    .line 8807
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8802
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist retrieveBackupData()[B
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8822
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->retrieveBackupData()[B

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 8823
    :catch_7
    move-exception v0

    .line 8824
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist retrieveSoftApBackupData()[B
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8855
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->retrieveSoftApBackupData()[B

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 8856
    :catch_7
    move-exception v0

    .line 8857
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist retrieveWifiBackupData(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "[B>;)V"
        }
    .end annotation

    .line 8769
    .local p2, "resultsCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<[B>;"
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 8773
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8774
    const-string v0, "resultsCallback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8776
    :try_start_10
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v1, Landroid/net/wifi/WifiManager$10;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/wifi/WifiManager$10;-><init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Landroid/net/wifi/IWifiManager;->retrieveWifiBackupData(Landroid/net/wifi/IByteArrayListener;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1a} :catch_1c

    .line 8788
    nop

    .line 8789
    return-void

    .line 8786
    :catch_1c
    move-exception v0

    .line 8787
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8770
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_22
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    .registers 7
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7719
    if-eqz p1, :cond_30

    .line 7720
    const/4 v0, 0x0

    .line 7721
    .local v0, "listenerProxy":Landroid/net/wifi/WifiManager$ActionListenerProxy;
    if-eqz p2, :cond_13

    .line 7722
    new-instance v1, Landroid/net/wifi/WifiManager$ActionListenerProxy;

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const-string v3, "save"

    invoke-direct {v1, p0, v3, v2, p2}, Landroid/net/wifi/WifiManager$ActionListenerProxy;-><init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;Landroid/os/Looper;Landroid/net/wifi/WifiManager$ActionListener;)V

    move-object v0, v1

    .line 7725
    :cond_13
    :try_start_13
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v0, v2}, Landroid/net/wifi/IWifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/IActionListener;Ljava/lang/String;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1e} :catch_27
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_1e} :catch_1f

    goto :goto_2e

    .line 7730
    :catch_1f
    move-exception v1

    .line 7731
    .local v1, "e":Ljava/lang/SecurityException;
    if-eqz v0, :cond_2f

    .line 7732
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager$ActionListenerProxy;->onFailure(I)V

    goto :goto_2f

    .line 7726
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_27
    move-exception v1

    .line 7727
    .local v1, "e":Landroid/os/RemoteException;
    if-eqz v0, :cond_2e

    .line 7728
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager$ActionListenerProxy;->onFailure(I)V

    .line 7734
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2e
    :goto_2e
    nop

    .line 7735
    :cond_2f
    :goto_2f
    return-void

    .line 7719
    .end local v0    # "listenerProxy":Landroid/net/wifi/WifiManager$ActionListenerProxy;
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist saveConfiguration()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4713
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setAutoWakeupEnabled(Z)V
    .registers 4
    .param p1, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11113
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->setAutoWakeupEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 11116
    nop

    .line 11117
    return-void

    .line 11114
    :catch_7
    move-exception v0

    .line 11115
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setAutojoinDisallowedSecurityTypes([I)V
    .registers 8
    .param p1, "restrictions"    # [I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 13145
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 13148
    const-string v0, "restrictions cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13150
    :try_start_b
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 13151
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "EXTRA_PARAM_KEY_ATTRIBUTION_SOURCE"

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 13152
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    .line 13151
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 13153
    const/4 v1, 0x0

    .line 13154
    .local v1, "restrictionBitmap":I
    array-length v2, p1

    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v2, :cond_28

    aget v4, p1, v3

    .line 13155
    .local v4, "securityType":I
    const/4 v5, 0x1

    shl-int/2addr v5, v4

    or-int/2addr v1, v5

    .line 13154
    .end local v4    # "securityType":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 13157
    :cond_28
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v2, v1, v0}, Landroid/net/wifi/IWifiManager;->setAutojoinDisallowedSecurityTypes(ILandroid/os/Bundle;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_2d} :catch_2f

    .line 13160
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "restrictionBitmap":I
    nop

    .line 13161
    return-void

    .line 13158
    :catch_2f
    move-exception v0

    .line 13159
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 13146
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_35
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist setCarrierNetworkOffloadEnabled(IZZ)V
    .registers 6
    .param p1, "subscriptionId"    # I
    .param p2, "merged"    # Z
    .param p3, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11166
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/wifi/IWifiManager;->setCarrierNetworkOffloadEnabled(IZZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 11169
    nop

    .line 11170
    return-void

    .line 11167
    :catch_7
    move-exception v0

    .line 11168
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setCoexUnsafeChannels(Ljava/util/List;I)V
    .registers 5
    .param p2, "restrictions"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/CoexUnsafeChannel;",
            ">;I)V"
        }
    .end annotation

    .line 5672
    .local p1, "unsafeChannels":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/CoexUnsafeChannel;>;"
    if-eqz p1, :cond_f

    .line 5676
    :try_start_2
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IWifiManager;->setCoexUnsafeChannels(Ljava/util/List;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_9

    .line 5679
    nop

    .line 5680
    return-void

    .line 5677
    :catch_9
    move-exception v0

    .line 5678
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5673
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unsafeChannels must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setD2dAllowedWhenInfraStaDisabled(Z)V
    .registers 4
    .param p1, "isAllowed"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 13059
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->setD2dAllowedWhenInfraStaDisabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 13062
    nop

    .line 13063
    return-void

    .line 13060
    :catch_7
    move-exception v0

    .line 13061
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setDefaultCountryCode(Ljava/lang/String;)V
    .registers 4
    .param p1, "country"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5146
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->setDefaultCountryCode(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 5149
    nop

    .line 5150
    return-void

    .line 5147
    :catch_7
    move-exception v0

    .line 5148
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setDeviceMobilityState(I)V
    .registers 4
    .param p1, "state"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9330
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->setDeviceMobilityState(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 9333
    nop

    .line 9334
    return-void

    .line 9331
    :catch_7
    move-exception v0

    .line 9332
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setEmergencyScanRequestInProgress(Z)V
    .registers 4
    .param p1, "inProgress"    # Z

    .line 11304
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->setEmergencyScanRequestInProgress(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 11307
    nop

    .line 11308
    return-void

    .line 11305
    :catch_7
    move-exception v0

    .line 11306
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setEnableAutoJoinWhenAssociated(Z)Z
    .registers 3
    .param p1, "enabled"    # Z

    .line 8744
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setExternalPnoScanRequest(Ljava/util/List;[ILjava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$PnoScanResultsCallback;)V
    .registers 12
    .param p2, "frequencies"    # [I
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/net/wifi/WifiManager$PnoScanResultsCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiSsid;",
            ">;[I",
            "Ljava/util/concurrent/Executor;",
            "Landroid/net/wifi/WifiManager$PnoScanResultsCallback;",
            ")V"
        }
    .end annotation

    .line 10852
    .local p1, "ssids":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiSsid;>;"
    if-eqz p3, :cond_3f

    .line 10853
    if-eqz p4, :cond_36

    .line 10855
    :try_start_4
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    new-instance v2, Landroid/net/wifi/WifiManager$PnoScanResultsCallbackProxy;

    invoke-direct {v2, p0, p3, p4}, Landroid/net/wifi/WifiManager$PnoScanResultsCallbackProxy;-><init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$PnoScanResultsCallback;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_2f

    .line 10857
    if-nez p2, :cond_1a

    const/4 v3, 0x0

    :try_start_13
    new-array v3, v3, [I
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_15} :catch_17

    move-object v4, v3

    goto :goto_1b

    .line 10859
    :catch_17
    move-exception v0

    move-object v3, p1

    goto :goto_31

    .line 10857
    :cond_1a
    move-object v4, p2

    :goto_1b
    :try_start_1b
    iget-object v3, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 10858
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v6
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_27} :catch_2f

    .line 10855
    move-object v3, p1

    .end local p1    # "ssids":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiSsid;>;"
    .local v3, "ssids":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiSsid;>;"
    :try_start_28
    invoke-interface/range {v0 .. v6}, Landroid/net/wifi/IWifiManager;->setExternalPnoScanRequest(Landroid/os/IBinder;Landroid/net/wifi/IPnoScanResultsCallback;Ljava/util/List;[ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2b} :catch_2d

    .line 10861
    nop

    .line 10862
    return-void

    .line 10859
    :catch_2d
    move-exception v0

    goto :goto_31

    .end local v3    # "ssids":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiSsid;>;"
    .restart local p1    # "ssids":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiSsid;>;"
    :catch_2f
    move-exception v0

    move-object v3, p1

    .line 10860
    .end local p1    # "ssids":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiSsid;>;"
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v3    # "ssids":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiSsid;>;"
    :goto_31
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 10853
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "ssids":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiSsid;>;"
    .restart local p1    # "ssids":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiSsid;>;"
    :cond_36
    move-object v3, p1

    .end local p1    # "ssids":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiSsid;>;"
    .restart local v3    # "ssids":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiSsid;>;"
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "callback cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10852
    .end local v3    # "ssids":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiSsid;>;"
    .restart local p1    # "ssids":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiSsid;>;"
    :cond_3f
    move-object v3, p1

    .end local p1    # "ssids":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiSsid;>;"
    .restart local v3    # "ssids":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiSsid;>;"
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "executor cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setLinkLayerStatsPollingInterval(I)V
    .registers 4
    .param p1, "intervalMs"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 12220
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->setLinkLayerStatsPollingInterval(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 12223
    nop

    .line 12224
    return-void

    .line 12221
    :catch_7
    move-exception v0

    .line 12222
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setMacRandomizationSettingPasspointEnabled(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "fqdn"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7922
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IWifiManager;->setMacRandomizationSettingPasspointEnabled(Ljava/lang/String;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 7925
    nop

    .line 7926
    return-void

    .line 7923
    :catch_7
    move-exception v0

    .line 7924
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setMloMode(ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .param p1, "mode"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 12287
    .local p3, "resultsCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    if-ltz p1, :cond_21

    const/4 v0, 0x3

    if-gt p1, v0, :cond_21

    .line 12290
    const-string v0, "executor cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12291
    const-string v0, "resultsCallback cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12293
    :try_start_f
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v1, Landroid/net/wifi/WifiManager$19;

    invoke-direct {v1, p0, p2, p3}, Landroid/net/wifi/WifiManager$19;-><init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, p1, v1}, Landroid/net/wifi/IWifiManager;->setMloMode(ILandroid/net/wifi/IBooleanListener;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b

    .line 12304
    nop

    .line 12305
    return-void

    .line 12302
    :catch_1b
    move-exception v0

    .line 12303
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 12288
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setNetworkSelectionConfig(Landroid/net/wifi/WifiNetworkSelectionConfig;)V
    .registers 4
    .param p1, "nsConfig"    # Landroid/net/wifi/WifiNetworkSelectionConfig;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2497
    if-eqz p1, :cond_b

    .line 2500
    :try_start_2
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->setNetworkSelectionConfig(Landroid/net/wifi/WifiNetworkSelectionConfig;)V

    .line 2503
    nop

    .line 2504
    return-void

    .line 2501
    :catch_9
    move-exception v0

    goto :goto_13

    .line 2498
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "nsConfig can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/wifi/WifiManager;
    .end local p1    # "nsConfig":Landroid/net/wifi/WifiNetworkSelectionConfig;
    throw v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_13} :catch_9

    .line 2502
    .local v0, "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/net/wifi/WifiManager;
    .restart local p1    # "nsConfig":Landroid/net/wifi/WifiNetworkSelectionConfig;
    :goto_13
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setOneShotScreenOnConnectivityScanDelayMillis(I)V
    .registers 4
    .param p1, "delayMs"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2691
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->setOneShotScreenOnConnectivityScanDelayMillis(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2694
    nop

    .line 2695
    return-void

    .line 2692
    :catch_7
    move-exception v0

    .line 2693
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setOverrideCountryCode(Ljava/lang/String;)V
    .registers 4
    .param p1, "country"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5110
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->setOverrideCountryCode(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 5113
    nop

    .line 5114
    return-void

    .line 5111
    :catch_7
    move-exception v0

    .line 5112
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setPasspointMeteredOverride(Ljava/lang/String;I)V
    .registers 5
    .param p1, "fqdn"    # Ljava/lang/String;
    .param p2, "meteredOverride"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7942
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IWifiManager;->setPasspointMeteredOverride(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 7945
    nop

    .line 7946
    return-void

    .line 7943
    :catch_7
    move-exception v0

    .line 7944
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setPerSsidRoamingMode(Landroid/net/wifi/WifiSsid;I)V
    .registers 6
    .param p1, "ssid"    # Landroid/net/wifi/WifiSsid;
    .param p2, "roamingMode"    # I

    .line 12703
    if-ltz p2, :cond_1d

    const/4 v0, 0x2

    if-gt p2, v0, :cond_1d

    .line 12706
    const-string v0, "ssid cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12708
    :try_start_a
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Landroid/net/wifi/IWifiManager;->setPerSsidRoamingMode(Landroid/net/wifi/WifiSsid;ILjava/lang/String;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_17

    .line 12711
    nop

    .line 12712
    return-void

    .line 12709
    :catch_17
    move-exception v0

    .line 12710
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 12704
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid roaming mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setPnoScanEnabled(ZZ)V
    .registers 5
    .param p1, "enabled"    # Z
    .param p2, "enablePnoScanAfterWifiToggle"    # Z

    .line 10937
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 10938
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 10937
    invoke-interface {v0, p1, p2, v1}, Landroid/net/wifi/IWifiManager;->setPnoScanEnabled(ZZLjava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 10941
    nop

    .line 10942
    return-void

    .line 10939
    :catch_d
    move-exception v0

    .line 10940
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setPnoScanState(I)V
    .registers 6
    .param p1, "pnoScanState"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10891
    const/4 v0, 0x0

    .line 10892
    .local v0, "enabled":Z
    const/4 v1, 0x0

    .line 10893
    .local v1, "enablePnoScanAfterWifiToggle":Z
    packed-switch p1, :pswitch_data_26

    .line 10903
    :try_start_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    goto :goto_1a

    .line 10900
    :pswitch_8
    const/4 v0, 0x1

    .line 10901
    goto :goto_d

    .line 10897
    :pswitch_a
    const/4 v1, 0x1

    .line 10898
    goto :goto_d

    .line 10895
    :pswitch_c
    nop

    .line 10905
    :goto_d
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v3, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 10906
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 10905
    invoke-interface {v2, v0, v1, v3}, Landroid/net/wifi/IWifiManager;->setPnoScanEnabled(ZZLjava/lang/String;)V

    .line 10909
    .end local v0    # "enabled":Z
    .end local v1    # "enablePnoScanAfterWifiToggle":Z
    nop

    .line 10910
    return-void

    .line 10903
    .restart local v0    # "enabled":Z
    .restart local v1    # "enablePnoScanAfterWifiToggle":Z
    :goto_1a
    const-string v3, "Invalid PnoScanState"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/wifi/WifiManager;
    .end local p1    # "pnoScanState":I
    throw v2
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_20} :catch_20

    .line 10907
    .end local v0    # "enabled":Z
    .end local v1    # "enablePnoScanAfterWifiToggle":Z
    .restart local p0    # "this":Landroid/net/wifi/WifiManager;
    .restart local p1    # "pnoScanState":I
    :catch_20
    move-exception v0

    .line 10908
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_c
        :pswitch_a
        :pswitch_8
    .end packed-switch
.end method

.method public whitelist setScanAlwaysAvailable(Z)V
    .registers 4
    .param p1, "isAvailable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4636
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/net/wifi/IWifiManager;->setScanAlwaysAvailable(ZLjava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 4639
    nop

    .line 4640
    return-void

    .line 4637
    :catch_d
    move-exception v0

    .line 4638
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setScanThrottleEnabled(Z)V
    .registers 4
    .param p1, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11068
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->setScanThrottleEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 11071
    nop

    .line 11072
    return-void

    .line 11069
    :catch_7
    move-exception v0

    .line 11070
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setScreenOnScanSchedule(Ljava/util/List;)V
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiManager$ScreenOnScanSchedule;",
            ">;)V"
        }
    .end annotation

    .line 2644
    .local p1, "screenOnScanSchedule":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiManager$ScreenOnScanSchedule;>;"
    if-nez p1, :cond_9

    .line 2645
    :try_start_2
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Landroid/net/wifi/IWifiManager;->setScreenOnScanSchedule([I[I)V

    .line 2646
    return-void

    .line 2648
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_49

    .line 2652
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 2653
    .local v0, "scanSchedule":[I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 2654
    .local v1, "scanType":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_42

    .line 2655
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager$ScreenOnScanSchedule;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager$ScreenOnScanSchedule;->getScanInterval()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Duration;->toSeconds()J

    move-result-wide v3

    long-to-int v3, v3

    aput v3, v0, v2

    .line 2656
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager$ScreenOnScanSchedule;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager$ScreenOnScanSchedule;->getScanType()I

    move-result v3

    aput v3, v1, v2

    .line 2654
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 2658
    .end local v2    # "i":I
    :cond_42
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v2, v0, v1}, Landroid/net/wifi/IWifiManager;->setScreenOnScanSchedule([I[I)V

    .line 2661
    .end local v0    # "scanSchedule":[I
    .end local v1    # "scanType":[I
    nop

    .line 2662
    return-void

    .line 2649
    :cond_49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The input should either be null or a non-empty list"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/wifi/WifiManager;
    .end local p1    # "screenOnScanSchedule":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiManager$ScreenOnScanSchedule;>;"
    throw v0
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_51} :catch_51

    .line 2659
    .restart local p0    # "this":Landroid/net/wifi/WifiManager;
    .restart local p1    # "screenOnScanSchedule":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiManager$ScreenOnScanSchedule;>;"
    :catch_51
    move-exception v0

    .line 2660
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setSendDhcpHostnameRestriction(I)V
    .registers 4
    .param p1, "restriction"    # I

    .line 12631
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/net/wifi/IWifiManager;->setSendDhcpHostnameRestriction(Ljava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 12634
    nop

    .line 12635
    return-void

    .line 12632
    :catch_d
    move-exception v0

    .line 12633
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)Z
    .registers 4
    .param p1, "softApConfig"    # Landroid/net/wifi/SoftApConfiguration;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6464
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 6465
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 6464
    invoke-interface {v0, p1, v1}, Landroid/net/wifi/IWifiManager;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 6466
    :catch_d
    move-exception v0

    .line 6467
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setSsidsAllowlist(Ljava/util/Set;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/net/wifi/WifiSsid;",
            ">;)V"
        }
    .end annotation

    .line 2745
    .local p1, "ssids":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/wifi/WifiSsid;>;"
    if-eqz p1, :cond_1f

    .line 2749
    :try_start_2
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, v3}, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1, v2}, Landroid/net/wifi/IWifiManager;->setSsidsAllowlist(Ljava/lang/String;Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_17} :catch_19

    .line 2753
    nop

    .line 2754
    return-void

    .line 2751
    :catch_19
    move-exception v0

    .line 2752
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2746
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "WifiManager: ssids can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setStaConcurrencyForMultiInternetMode(I)Z
    .registers 4
    .param p1, "mode"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11591
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_1c

    .line 11592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStaConcurrencyForMultiInternetMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11595
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->setStaConcurrencyForMultiInternetMode(I)Z

    move-result v0
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_22} :catch_23

    return v0

    .line 11596
    :catch_23
    move-exception v0

    .line 11597
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setTdlsEnabled(Ljava/net/InetAddress;Z)V
    .registers 5
    .param p1, "remoteIPAddress"    # Ljava/net/InetAddress;
    .param p2, "enable"    # Z

    .line 6493
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/net/wifi/IWifiManager;->enableTdls(Ljava/lang/String;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 6496
    nop

    .line 6497
    return-void

    .line 6494
    :catch_b
    move-exception v0

    .line 6495
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setTdlsEnabled(Ljava/net/InetAddress;ZLjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 8
    .param p1, "remoteIPAddress"    # Ljava/net/InetAddress;
    .param p2, "enable"    # Z
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetAddress;",
            "Z",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 6517
    .local p4, "resultsCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    const-string v0, "executor cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6518
    const-string v0, "resultsCallback cannot be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6519
    const-string v0, "remote IP address cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6521
    :try_start_f
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/net/wifi/WifiManager$4;

    invoke-direct {v2, p0, p3, p4}, Landroid/net/wifi/WifiManager$4;-><init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1, p2, v2}, Landroid/net/wifi/IWifiManager;->enableTdlsWithRemoteIpAddress(Ljava/lang/String;ZLandroid/net/wifi/IBooleanListener;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1d} :catch_1f

    .line 6533
    nop

    .line 6534
    return-void

    .line 6531
    :catch_1f
    move-exception v0

    .line 6532
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setTdlsEnabledWithMacAddress(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "remoteMacAddress"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 6544
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IWifiManager;->enableTdlsWithMacAddress(Ljava/lang/String;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 6547
    nop

    .line 6548
    return-void

    .line 6545
    :catch_7
    move-exception v0

    .line 6546
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setTdlsEnabledWithMacAddress(Ljava/lang/String;ZLjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .param p1, "remoteMacAddress"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 6568
    .local p4, "resultsCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    const-string v0, "executor cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6569
    const-string v0, "resultsCallback cannot be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6570
    const-string v0, "remote Mac address cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6572
    :try_start_f
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v1, Landroid/net/wifi/WifiManager$5;

    invoke-direct {v1, p0, p3, p4}, Landroid/net/wifi/WifiManager$5;-><init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, p1, p2, v1}, Landroid/net/wifi/IWifiManager;->enableTdlsWithRemoteMacAddress(Ljava/lang/String;ZLandroid/net/wifi/IBooleanListener;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b

    .line 6584
    nop

    .line 6585
    return-void

    .line 6582
    :catch_1b
    move-exception v0

    .line 6583
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setThirdPartyAppEnablingWifiConfirmationDialogEnabled(Z)V
    .registers 4
    .param p1, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2573
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->setThirdPartyAppEnablingWifiConfirmationDialogEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2576
    nop

    .line 2577
    return-void

    .line 2574
    :catch_7
    move-exception v0

    .line 2575
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setVerboseLoggingEnabled(Z)V
    .registers 3
    .param p1, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8624
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    .line 8625
    :cond_4
    const/4 v0, 0x0

    .line 8624
    :goto_5
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiManager;->enableVerboseLogging(I)V

    .line 8626
    return-void
.end method

.method public whitelist setVerboseLoggingLevel(I)V
    .registers 2
    .param p1, "verbose"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8643
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->enableVerboseLogging(I)V

    .line 8644
    return-void
.end method

.method public whitelist setWepAllowed(Z)V
    .registers 4
    .param p1, "isAllowed"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 12503
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->setWepAllowed(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 12506
    nop

    .line 12507
    return-void

    .line 12504
    :catch_7
    move-exception v0

    .line 12505
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 4
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6427
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/net/wifi/IWifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 6428
    :catch_d
    move-exception v0

    .line 6429
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setWifiConnectedNetworkScorer(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorer;)Z
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "scorer"    # Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorer;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11020
    if-eqz p1, :cond_3f

    .line 11021
    if-eqz p2, :cond_37

    .line 11022
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_20

    .line 11023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWifiConnectedNetworkScorer: scorer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11026
    :cond_20
    :try_start_20
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    new-instance v2, Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy;

    invoke-direct {v2, p0, p1, p2}, Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorerProxy;-><init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorer;)V

    invoke-interface {v0, v1, v2}, Landroid/net/wifi/IWifiManager;->setWifiConnectedNetworkScorer(Landroid/os/IBinder;Landroid/net/wifi/IWifiConnectedNetworkScorer;)Z

    move-result v0
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_30} :catch_31

    return v0

    .line 11028
    :catch_31
    move-exception v0

    .line 11029
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11021
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "scorer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11020
    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setWifiEnabled(Z)Z
    .registers 4
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5213
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiEnabled(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 5214
    :catch_d
    move-exception v0

    .line 5215
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setWifiPasspointEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11492
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_1c

    .line 11493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWifiPasspointEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11496
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->setWifiPasspointEnabled(Z)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_21} :catch_23

    .line 11499
    nop

    .line 11500
    return-void

    .line 11497
    :catch_23
    move-exception v0

    .line 11498
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setWifiScoringEnabled(Z)Z
    .registers 4
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11322
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_1c

    .line 11323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWifiScoringEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11326
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->setWifiScoringEnabled(Z)Z

    move-result v0
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_22} :catch_23

    return v0

    .line 11327
    :catch_23
    move-exception v0

    .line 11328
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setupTwtSession(Landroid/net/wifi/twt/TwtRequest;Ljava/util/concurrent/Executor;Landroid/net/wifi/twt/TwtSessionCallback;)V
    .registers 8
    .param p1, "twtRequest"    # Landroid/net/wifi/twt/TwtRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/net/wifi/twt/TwtSessionCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 12944
    const-string v0, "executor cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12945
    const-string v0, "callback cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12946
    const-string v0, "twtRequest cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12947
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 12951
    :try_start_15
    new-instance v0, Landroid/net/wifi/WifiManager$TwtCallbackProxy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p3, v1}, Landroid/net/wifi/WifiManager$TwtCallbackProxy;-><init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Landroid/net/wifi/twt/TwtSessionCallback;Landroid/net/wifi/WifiManager-IA;)V

    .line 12952
    .local v0, "binderCallback":Landroid/net/wifi/ITwtCallback$Stub;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 12953
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "EXTRA_PARAM_KEY_ATTRIBUTION_SOURCE"

    iget-object v3, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 12954
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    .line 12953
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 12955
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v2, p1, v0, v1}, Landroid/net/wifi/IWifiManager;->setupTwtSession(Landroid/net/wifi/twt/TwtRequest;Landroid/net/wifi/ITwtCallback;Landroid/os/Bundle;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_30} :catch_32

    .line 12958
    .end local v0    # "binderCallback":Landroid/net/wifi/ITwtCallback$Stub;
    .end local v1    # "extras":Landroid/os/Bundle;
    nop

    .line 12959
    return-void

    .line 12956
    :catch_32
    move-exception v0

    .line 12957
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 12948
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_38
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist startEasyConnectAsConfiguratorInitiator(Ljava/lang/String;IILjava/util/concurrent/Executor;Landroid/net/wifi/EasyConnectStatusCallback;)V
    .registers 14
    .param p1, "enrolleeUri"    # Ljava/lang/String;
    .param p2, "selectedNetworkId"    # I
    .param p3, "enrolleeNetworkRole"    # I
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "callback"    # Landroid/net/wifi/EasyConnectStatusCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9495
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    move-object v2, v0

    .line 9497
    .local v2, "binder":Landroid/os/Binder;
    :try_start_6
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;

    invoke-direct {v7, p4, p5}, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/net/wifi/EasyConnectStatusCallback;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_13} :catch_1e

    move-object v4, p1

    move v5, p2

    move v6, p3

    .end local p1    # "enrolleeUri":Ljava/lang/String;
    .end local p2    # "selectedNetworkId":I
    .end local p3    # "enrolleeNetworkRole":I
    .local v4, "enrolleeUri":Ljava/lang/String;
    .local v5, "selectedNetworkId":I
    .local v6, "enrolleeNetworkRole":I
    :try_start_16
    invoke-interface/range {v1 .. v7}, Landroid/net/wifi/IWifiManager;->startDppAsConfiguratorInitiator(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IILandroid/net/wifi/IDppCallback;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1b

    .line 9502
    nop

    .line 9503
    return-void

    .line 9500
    :catch_1b
    move-exception v0

    move-object p1, v0

    goto :goto_23

    .end local v4    # "enrolleeUri":Ljava/lang/String;
    .end local v5    # "selectedNetworkId":I
    .end local v6    # "enrolleeNetworkRole":I
    .restart local p1    # "enrolleeUri":Ljava/lang/String;
    .restart local p2    # "selectedNetworkId":I
    .restart local p3    # "enrolleeNetworkRole":I
    :catch_1e
    move-exception v0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object p1, v0

    .line 9501
    .end local p2    # "selectedNetworkId":I
    .end local p3    # "enrolleeNetworkRole":I
    .restart local v4    # "enrolleeUri":Ljava/lang/String;
    .restart local v5    # "selectedNetworkId":I
    .restart local v6    # "enrolleeNetworkRole":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_23
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist startEasyConnectAsEnrolleeInitiator(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/net/wifi/EasyConnectStatusCallback;)V
    .registers 7
    .param p1, "configuratorUri"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/net/wifi/EasyConnectStatusCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9522
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 9524
    .local v0, "binder":Landroid/os/Binder;
    :try_start_5
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v2, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;

    invoke-direct {v2, p2, p3}, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/net/wifi/EasyConnectStatusCallback;)V

    invoke-interface {v1, v0, p1, v2}, Landroid/net/wifi/IWifiManager;->startDppAsEnrolleeInitiator(Landroid/os/IBinder;Ljava/lang/String;Landroid/net/wifi/IDppCallback;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_f} :catch_11

    .line 9528
    nop

    .line 9529
    return-void

    .line 9526
    :catch_11
    move-exception v1

    .line 9527
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist startEasyConnectAsEnrolleeResponder(Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/net/wifi/EasyConnectStatusCallback;)V
    .registers 8
    .param p1, "deviceInfo"    # Ljava/lang/String;
    .param p2, "curve"    # I
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/net/wifi/EasyConnectStatusCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9569
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 9571
    .local v0, "binder":Landroid/os/Binder;
    :try_start_5
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v2, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;

    invoke-direct {v2, p3, p4}, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/net/wifi/EasyConnectStatusCallback;)V

    invoke-interface {v1, v0, p1, p2, v2}, Landroid/net/wifi/IWifiManager;->startDppAsEnrolleeResponder(Landroid/os/IBinder;Ljava/lang/String;ILandroid/net/wifi/IDppCallback;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_f} :catch_11

    .line 9575
    nop

    .line 9576
    return-void

    .line 9573
    :catch_11
    move-exception v1

    .line 9574
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist startLocalOnlyHotspot(Landroid/net/wifi/SoftApConfiguration;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;)V
    .registers 5
    .param p1, "config"    # Landroid/net/wifi/SoftApConfiguration;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6059
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6060
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/wifi/WifiManager;->startLocalOnlyHotspotInternal(Landroid/net/wifi/SoftApConfiguration;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;Z)V

    .line 6061
    return-void
.end method

.method public whitelist startLocalOnlyHotspot(Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;Landroid/os/Handler;)V
    .registers 6
    .param p1, "callback"    # Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 6000
    const/4 v0, 0x0

    if-nez p2, :cond_5

    move-object v1, v0

    goto :goto_a

    :cond_5
    new-instance v1, Lcom/android/wifi/x/com/android/modules/utils/HandlerExecutor;

    invoke-direct {v1, p2}, Lcom/android/wifi/x/com/android/modules/utils/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 6001
    .local v1, "executor":Ljava/util/concurrent/Executor;
    :goto_a
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Landroid/net/wifi/WifiManager;->startLocalOnlyHotspotInternal(Landroid/net/wifi/SoftApConfiguration;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;Z)V

    .line 6002
    return-void
.end method

.method public whitelist startLocalOnlyHotspotWithConfiguration(Landroid/net/wifi/SoftApConfiguration;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;)V
    .registers 5
    .param p1, "config"    # Landroid/net/wifi/SoftApConfiguration;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;

    .line 6025
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6026
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6027
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6028
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/wifi/WifiManager;->startLocalOnlyHotspotInternal(Landroid/net/wifi/SoftApConfiguration;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;Z)V

    .line 6029
    return-void
.end method

.method public whitelist startRestrictingAutoJoinToSubscriptionId(I)V
    .registers 4
    .param p1, "subscriptionId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7667
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->startRestrictingAutoJoinToSubscriptionId(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 7670
    nop

    .line 7671
    return-void

    .line 7668
    :catch_7
    move-exception v0

    .line 7669
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist startScan()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4471
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiManager;->startScan(Landroid/os/WorkSource;)Z

    move-result v0

    return v0
.end method

.method public whitelist startScan(Landroid/os/WorkSource;)Z
    .registers 5
    .param p1, "workSource"    # Landroid/os/WorkSource;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4479
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4480
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    .line 4481
    .local v1, "attributionTag":Ljava/lang/String;
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v2, v0, v1}, Landroid/net/wifi/IWifiManager;->startScan(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return v2

    .line 4482
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "attributionTag":Ljava/lang/String;
    :catch_13
    move-exception v0

    .line 4483
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o startSoftAp(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 4
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .line 5833
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/net/wifi/IWifiManager;->startSoftAp(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 5834
    :catch_d
    move-exception v0

    .line 5835
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist startSubscriptionProvisioning(Landroid/net/wifi/hotspot2/OsuProvider;Ljava/util/concurrent/Executor;Landroid/net/wifi/hotspot2/ProvisioningCallback;)V
    .registers 6
    .param p1, "provider"    # Landroid/net/wifi/hotspot2/OsuProvider;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/net/wifi/hotspot2/ProvisioningCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8913
    if-eqz p2, :cond_1e

    .line 8916
    if-eqz p3, :cond_16

    .line 8920
    :try_start_4
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v1, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;

    invoke-direct {v1, p2, p3}, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/net/wifi/hotspot2/ProvisioningCallback;)V

    invoke-interface {v0, p1, v1}, Landroid/net/wifi/IWifiManager;->startSubscriptionProvisioning(Landroid/net/wifi/hotspot2/OsuProvider;Landroid/net/wifi/hotspot2/IProvisioningCallback;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_10

    .line 8924
    nop

    .line 8925
    return-void

    .line 8922
    :catch_10
    move-exception v0

    .line 8923
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8917
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8914
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist startTetheredHotspot(Landroid/net/TetheringManager$TetheringRequest;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SoftApCallback;)V
    .registers 7
    .param p1, "request"    # Landroid/net/TetheringManager$TetheringRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/net/wifi/WifiManager$SoftApCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5888
    if-eqz p2, :cond_25

    .line 5889
    if-eqz p3, :cond_1d

    .line 5890
    new-instance v0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, p3, v1}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;-><init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SoftApCallback;I)V

    .line 5893
    .local v0, "binderCallback":Landroid/net/wifi/ISoftApCallback$Stub;
    :try_start_a
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 5894
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 5893
    invoke-interface {v1, p1, v0, v2}, Landroid/net/wifi/IWifiManager;->startTetheredHotspotRequest(Landroid/net/TetheringManager$TetheringRequest;Landroid/net/wifi/ISoftApCallback;Ljava/lang/String;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_17

    .line 5897
    nop

    .line 5898
    return-void

    .line 5895
    :catch_17
    move-exception v1

    .line 5896
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 5889
    .end local v0    # "binderCallback":Landroid/net/wifi/ISoftApCallback$Stub;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5888
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist startTetheredHotspot(Landroid/net/wifi/SoftApConfiguration;)Z
    .registers 4
    .param p1, "softApConfig"    # Landroid/net/wifi/SoftApConfiguration;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5864
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/net/wifi/IWifiManager;->startTetheredHotspot(Landroid/net/wifi/SoftApConfiguration;Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 5865
    :catch_d
    move-exception v0

    .line 5866
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist startWps(Landroid/net/wifi/WpsInfo;Landroid/net/wifi/WifiManager$WpsCallback;)V
    .registers 4
    .param p1, "config"    # Landroid/net/wifi/WpsInfo;
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$WpsCallback;

    .line 7982
    if-eqz p2, :cond_6

    .line 7983
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/net/wifi/WifiManager$WpsCallback;->onFailed(I)V

    .line 7985
    :cond_6
    return-void
.end method

.method public whitelist stopEasyConnectSession()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9605
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->stopDppSession()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 9608
    nop

    .line 9609
    return-void

    .line 9606
    :catch_7
    move-exception v0

    .line 9607
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist stopRestrictingAutoJoinToSubscriptionId()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7685
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->stopRestrictingAutoJoinToSubscriptionId()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 7688
    nop

    .line 7689
    return-void

    .line 7686
    :catch_7
    move-exception v0

    .line 7687
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist stopSoftAp()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5914
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->stopSoftAp()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 5915
    :catch_7
    move-exception v0

    .line 5916
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist storeCapturedData(Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;IZJJ)V
    .registers 18
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "resultsCallback"    # Ljava/util/function/IntConsumer;
    .param p3, "triggerType"    # I
    .param p4, "isFullCapture"    # Z
    .param p5, "triggerStartTimeMillis"    # J
    .param p7, "triggerStopTimeMillis"    # J

    .line 10368
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10369
    const-string v0, "resultsCallback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10371
    :try_start_a
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v8, Landroid/net/wifi/WifiManager$14;

    invoke-direct {v8, p0, p1, p2}, Landroid/net/wifi/WifiManager$14;-><init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V

    move v2, p3

    move v3, p4

    move-wide v4, p5

    move-wide/from16 v6, p7

    invoke-interface/range {v1 .. v8}, Landroid/net/wifi/IWifiManager;->storeCapturedData(IZJJLandroid/net/wifi/IIntegerListener;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_19} :catch_1b

    .line 10383
    nop

    .line 10384
    return-void

    .line 10381
    :catch_1b
    move-exception v0

    .line 10382
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist teardownTwtSession(I)V
    .registers 5
    .param p1, "sessionId"    # I

    .line 13020
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 13024
    :try_start_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 13025
    .local v0, "extras":Landroid/os/Bundle;
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 13026
    const-string v1, "EXTRA_PARAM_KEY_ATTRIBUTION_SOURCE"

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 13027
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    .line 13026
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 13029
    :cond_1c
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, v0}, Landroid/net/wifi/IWifiManager;->teardownTwtSession(ILandroid/os/Bundle;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_21} :catch_23

    .line 13032
    .end local v0    # "extras":Landroid/os/Bundle;
    nop

    .line 13033
    return-void

    .line 13030
    :catch_23
    move-exception v0

    .line 13031
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 13021
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_29
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist unregisterActiveCountryCodeChangedCallback(Landroid/net/wifi/WifiManager$ActiveCountryCodeChangedCallback;)V
    .registers 7
    .param p1, "callback"    # Landroid/net/wifi/WifiManager$ActiveCountryCodeChangedCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4837
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 4840
    if-eqz p1, :cond_79

    .line 4841
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_24

    .line 4842
    const-string v0, "WifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterActiveCountryCodeChangedCallback: callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4844
    :cond_24
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 4845
    .local v0, "callbackIdentifier":I
    sget-object v1, Landroid/net/wifi/WifiManager;->sActiveCountryCodeChangedCallbackMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 4847
    :try_start_2b
    sget-object v2, Landroid/net/wifi/WifiManager;->sActiveCountryCodeChangedCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_52

    .line 4848
    const-string v2, "WifiManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown external listener "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_4b} :catch_69
    .catchall {:try_start_2b .. :try_end_4b} :catchall_67

    .line 4856
    :try_start_4b
    sget-object v2, Landroid/net/wifi/WifiManager;->sActiveCountryCodeChangedCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v1
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_76

    .line 4849
    return-void

    .line 4851
    :cond_52
    :try_start_52
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    sget-object v3, Landroid/net/wifi/WifiManager;->sActiveCountryCodeChangedCallbackMap:Landroid/util/SparseArray;

    .line 4852
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/IOnWifiDriverCountryCodeChangedListener;

    .line 4851
    invoke-interface {v2, v3}, Landroid/net/wifi/IWifiManager;->unregisterDriverCountryCodeChangedListener(Landroid/net/wifi/IOnWifiDriverCountryCodeChangedListener;)V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_5f} :catch_69
    .catchall {:try_start_52 .. :try_end_5f} :catchall_67

    .line 4856
    :try_start_5f
    sget-object v2, Landroid/net/wifi/WifiManager;->sActiveCountryCodeChangedCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 4857
    nop

    .line 4858
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_5f .. :try_end_66} :catchall_76

    .line 4859
    return-void

    .line 4856
    :catchall_67
    move-exception v2

    goto :goto_6f

    .line 4853
    :catch_69
    move-exception v2

    .line 4854
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_6a
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local v0    # "callbackIdentifier":I
    .end local p0    # "this":Landroid/net/wifi/WifiManager;
    .end local p1    # "callback":Landroid/net/wifi/WifiManager$ActiveCountryCodeChangedCallback;
    throw v3
    :try_end_6f
    .catchall {:try_start_6a .. :try_end_6f} :catchall_67

    .line 4856
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "callbackIdentifier":I
    .restart local p0    # "this":Landroid/net/wifi/WifiManager;
    .restart local p1    # "callback":Landroid/net/wifi/WifiManager$ActiveCountryCodeChangedCallback;
    :goto_6f
    :try_start_6f
    sget-object v3, Landroid/net/wifi/WifiManager;->sActiveCountryCodeChangedCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 4857
    nop

    .end local v0    # "callbackIdentifier":I
    .end local p0    # "this":Landroid/net/wifi/WifiManager;
    .end local p1    # "callback":Landroid/net/wifi/WifiManager$ActiveCountryCodeChangedCallback;
    throw v2

    .line 4858
    .restart local v0    # "callbackIdentifier":I
    .restart local p0    # "this":Landroid/net/wifi/WifiManager;
    .restart local p1    # "callback":Landroid/net/wifi/WifiManager$ActiveCountryCodeChangedCallback;
    :catchall_76
    move-exception v2

    monitor-exit v1
    :try_end_78
    .catchall {:try_start_6f .. :try_end_78} :catchall_76

    throw v2

    .line 4840
    .end local v0    # "callbackIdentifier":I
    :cond_79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4838
    :cond_81
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist unregisterCoexCallback(Landroid/net/wifi/WifiManager$CoexCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/net/wifi/WifiManager$CoexCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5720
    if-eqz p1, :cond_1c

    .line 5721
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$CoexCallback;->getProxy()Landroid/net/wifi/WifiManager$CoexCallback$CoexCallbackProxy;

    move-result-object v0

    .line 5723
    .local v0, "proxy":Landroid/net/wifi/WifiManager$CoexCallback$CoexCallbackProxy;
    :try_start_6
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, v0}, Landroid/net/wifi/IWifiManager;->unregisterCoexCallback(Landroid/net/wifi/ICoexCallback;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_12
    .catchall {:try_start_6 .. :try_end_b} :catchall_10

    .line 5727
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$CoexCallback$CoexCallbackProxy;->cleanUpProxy()V

    .line 5728
    nop

    .line 5729
    return-void

    .line 5727
    :catchall_10
    move-exception v1

    goto :goto_18

    .line 5724
    :catch_12
    move-exception v1

    .line 5725
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_13
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "proxy":Landroid/net/wifi/WifiManager$CoexCallback$CoexCallbackProxy;
    .end local p0    # "this":Landroid/net/wifi/WifiManager;
    .end local p1    # "callback":Landroid/net/wifi/WifiManager$CoexCallback;
    throw v2
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_10

    .line 5727
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "proxy":Landroid/net/wifi/WifiManager$CoexCallback$CoexCallbackProxy;
    .restart local p0    # "this":Landroid/net/wifi/WifiManager;
    .restart local p1    # "callback":Landroid/net/wifi/WifiManager$CoexCallback;
    :goto_18
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$CoexCallback$CoexCallbackProxy;->cleanUpProxy()V

    .line 5728
    throw v1

    .line 5720
    .end local v0    # "proxy":Landroid/net/wifi/WifiManager$CoexCallback$CoexCallbackProxy;
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o unregisterLocalOnlyHotspotObserver()V
    .registers 4

    .line 6287
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6288
    :try_start_3
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mLOHSObserverProxy:Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;

    if-nez v1, :cond_9

    .line 6290
    monitor-exit v0

    return-void

    .line 6292
    :cond_9
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/wifi/WifiManager;->mLOHSObserverProxy:Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1a

    .line 6294
    :try_start_c
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->stopWatchLocalOnlyHotspot()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_14
    .catchall {:try_start_c .. :try_end_11} :catchall_1a

    .line 6297
    nop

    .line 6298
    :try_start_12
    monitor-exit v0

    .line 6299
    return-void

    .line 6295
    :catch_14
    move-exception v1

    .line 6296
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/net/wifi/WifiManager;
    throw v2

    .line 6298
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/net/wifi/WifiManager;
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public whitelist unregisterLocalOnlyHotspotSoftApCallback(Landroid/net/wifi/WifiManager$SoftApCallback;)V
    .registers 7
    .param p1, "callback"    # Landroid/net/wifi/WifiManager$SoftApCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6221
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 6224
    if-eqz p1, :cond_77

    .line 6225
    const-string v0, "WifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterLocalOnlyHotspotSoftApCallback: callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6228
    :try_start_20
    sget-object v0, Landroid/net/wifi/WifiManager;->sLocalOnlyHotspotSoftApCallbackMap:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_23} :catch_71

    .line 6229
    :try_start_23
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 6230
    .local v1, "callbackIdentifier":I
    sget-object v2, Landroid/net/wifi/WifiManager;->sLocalOnlyHotspotSoftApCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_49

    .line 6231
    const-string v2, "WifiManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown external callback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6232
    monitor-exit v0

    return-void

    .line 6234
    :cond_49
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 6235
    .local v2, "extras":Landroid/os/Bundle;
    const-string v3, "EXTRA_PARAM_KEY_ATTRIBUTION_SOURCE"

    iget-object v4, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 6236
    invoke-virtual {v4}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    .line 6235
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 6237
    iget-object v3, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    sget-object v4, Landroid/net/wifi/WifiManager;->sLocalOnlyHotspotSoftApCallbackMap:Landroid/util/SparseArray;

    .line 6238
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ISoftApCallback;

    .line 6237
    invoke-interface {v3, v4, v2}, Landroid/net/wifi/IWifiManager;->unregisterLocalOnlyHotspotSoftApCallback(Landroid/net/wifi/ISoftApCallback;Landroid/os/Bundle;)V

    .line 6239
    sget-object v3, Landroid/net/wifi/WifiManager;->sLocalOnlyHotspotSoftApCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 6240
    .end local v1    # "callbackIdentifier":I
    .end local v2    # "extras":Landroid/os/Bundle;
    monitor-exit v0

    .line 6243
    nop

    .line 6244
    return-void

    .line 6240
    :catchall_6e
    move-exception v1

    monitor-exit v0
    :try_end_70
    .catchall {:try_start_23 .. :try_end_70} :catchall_6e

    .end local p0    # "this":Landroid/net/wifi/WifiManager;
    .end local p1    # "callback":Landroid/net/wifi/WifiManager$SoftApCallback;
    :try_start_70
    throw v1
    :try_end_71
    .catch Landroid/os/RemoteException; {:try_start_70 .. :try_end_71} :catch_71

    .line 6241
    .restart local p0    # "this":Landroid/net/wifi/WifiManager;
    .restart local p1    # "callback":Landroid/net/wifi/WifiManager$SoftApCallback;
    :catch_71
    move-exception v0

    .line 6242
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6224
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6222
    :cond_7f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist unregisterNetworkRequestMatchCallback(Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;)V
    .registers 7
    .param p1, "callback"    # Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3339
    if-eqz p1, :cond_61

    .line 3340
    const-string v0, "WifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterNetworkRequestMatchCallback: callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3343
    :try_start_1a
    sget-object v0, Landroid/net/wifi/WifiManager;->sNetworkRequestMatchCallbackMap:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_5b

    .line 3344
    :try_start_1d
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 3345
    .local v1, "callbackIdentifier":I
    sget-object v2, Landroid/net/wifi/WifiManager;->sNetworkRequestMatchCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_43

    .line 3346
    const-string v2, "WifiManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown external callback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3347
    monitor-exit v0

    return-void

    .line 3349
    :cond_43
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    sget-object v3, Landroid/net/wifi/WifiManager;->sNetworkRequestMatchCallbackMap:Landroid/util/SparseArray;

    .line 3350
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/INetworkRequestMatchCallback;

    .line 3349
    invoke-interface {v2, v3}, Landroid/net/wifi/IWifiManager;->unregisterNetworkRequestMatchCallback(Landroid/net/wifi/INetworkRequestMatchCallback;)V

    .line 3351
    sget-object v2, Landroid/net/wifi/WifiManager;->sNetworkRequestMatchCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 3352
    .end local v1    # "callbackIdentifier":I
    monitor-exit v0

    .line 3355
    nop

    .line 3356
    return-void

    .line 3352
    :catchall_58
    move-exception v1

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_1d .. :try_end_5a} :catchall_58

    .end local p0    # "this":Landroid/net/wifi/WifiManager;
    .end local p1    # "callback":Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;
    :try_start_5a
    throw v1
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_5b} :catch_5b

    .line 3353
    .restart local p0    # "this":Landroid/net/wifi/WifiManager;
    .restart local p1    # "callback":Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;
    :catch_5b
    move-exception v0

    .line 3354
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3339
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unregisterScanResultsCallback(Landroid/net/wifi/WifiManager$ScanResultsCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/net/wifi/WifiManager$ScanResultsCallback;

    .line 9964
    if-eqz p1, :cond_34

    .line 9965
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterScanResultsCallback: Callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9966
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$ScanResultsCallback;->getProxy()Landroid/net/wifi/WifiManager$ScanResultsCallback$ScanResultsCallbackProxy;

    move-result-object v0

    .line 9968
    .local v0, "proxy":Landroid/net/wifi/WifiManager$ScanResultsCallback$ScanResultsCallbackProxy;
    :try_start_1e
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, v0}, Landroid/net/wifi/IWifiManager;->unregisterScanResultsCallback(Landroid/net/wifi/IScanResultsCallback;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_23} :catch_2a
    .catchall {:try_start_1e .. :try_end_23} :catchall_28

    .line 9972
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$ScanResultsCallback$ScanResultsCallbackProxy;->cleanUpProxy()V

    .line 9973
    nop

    .line 9974
    return-void

    .line 9972
    :catchall_28
    move-exception v1

    goto :goto_30

    .line 9969
    :catch_2a
    move-exception v1

    .line 9970
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2b
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "proxy":Landroid/net/wifi/WifiManager$ScanResultsCallback$ScanResultsCallbackProxy;
    .end local p0    # "this":Landroid/net/wifi/WifiManager;
    .end local p1    # "callback":Landroid/net/wifi/WifiManager$ScanResultsCallback;
    throw v2
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_28

    .line 9972
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "proxy":Landroid/net/wifi/WifiManager$ScanResultsCallback$ScanResultsCallbackProxy;
    .restart local p0    # "this":Landroid/net/wifi/WifiManager;
    .restart local p1    # "callback":Landroid/net/wifi/WifiManager$ScanResultsCallback;
    :goto_30
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$ScanResultsCallback$ScanResultsCallbackProxy;->cleanUpProxy()V

    .line 9973
    throw v1

    .line 9964
    .end local v0    # "proxy":Landroid/net/wifi/WifiManager$ScanResultsCallback$ScanResultsCallbackProxy;
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unregisterSoftApCallback(Landroid/net/wifi/WifiManager$SoftApCallback;)V
    .registers 7
    .param p1, "callback"    # Landroid/net/wifi/WifiManager$SoftApCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7214
    if-eqz p1, :cond_61

    .line 7215
    const-string v0, "WifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterSoftApCallback: callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7218
    :try_start_1a
    sget-object v0, Landroid/net/wifi/WifiManager;->sSoftApCallbackMap:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_5b

    .line 7219
    :try_start_1d
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 7220
    .local v1, "callbackIdentifier":I
    sget-object v2, Landroid/net/wifi/WifiManager;->sSoftApCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_43

    .line 7221
    const-string v2, "WifiManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown external callback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7222
    monitor-exit v0

    return-void

    .line 7224
    :cond_43
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    sget-object v3, Landroid/net/wifi/WifiManager;->sSoftApCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ISoftApCallback;

    invoke-interface {v2, v3}, Landroid/net/wifi/IWifiManager;->unregisterSoftApCallback(Landroid/net/wifi/ISoftApCallback;)V

    .line 7225
    sget-object v2, Landroid/net/wifi/WifiManager;->sSoftApCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 7226
    .end local v1    # "callbackIdentifier":I
    monitor-exit v0

    .line 7229
    nop

    .line 7230
    return-void

    .line 7226
    :catchall_58
    move-exception v1

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_1d .. :try_end_5a} :catchall_58

    .end local p0    # "this":Landroid/net/wifi/WifiManager;
    .end local p1    # "callback":Landroid/net/wifi/WifiManager$SoftApCallback;
    :try_start_5a
    throw v1
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_5b} :catch_5b

    .line 7227
    .restart local p0    # "this":Landroid/net/wifi/WifiManager;
    .restart local p1    # "callback":Landroid/net/wifi/WifiManager$SoftApCallback;
    :catch_5b
    move-exception v0

    .line 7228
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7214
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unregisterSubsystemRestartTrackingCallback(Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;

    .line 5344
    if-eqz p1, :cond_1c

    .line 5345
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;->getProxy()Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;

    move-result-object v0

    .line 5347
    .local v0, "proxy":Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;
    :try_start_6
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, v0}, Landroid/net/wifi/IWifiManager;->unregisterSubsystemRestartCallback(Landroid/net/wifi/ISubsystemRestartCallback;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_12
    .catchall {:try_start_6 .. :try_end_b} :catchall_10

    .line 5351
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;->cleanUpProxy()V

    .line 5352
    nop

    .line 5353
    return-void

    .line 5351
    :catchall_10
    move-exception v1

    goto :goto_18

    .line 5348
    :catch_12
    move-exception v1

    .line 5349
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_13
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "proxy":Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;
    .end local p0    # "this":Landroid/net/wifi/WifiManager;
    .end local p1    # "callback":Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;
    throw v2
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_10

    .line 5351
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "proxy":Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;
    .restart local p0    # "this":Landroid/net/wifi/WifiManager;
    .restart local p1    # "callback":Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;
    :goto_18
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;->cleanUpProxy()V

    .line 5352
    throw v1

    .line 5344
    .end local v0    # "proxy":Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unregisterTrafficStateCallback(Landroid/net/wifi/WifiManager$TrafficStateCallback;)V
    .registers 7
    .param p1, "callback"    # Landroid/net/wifi/WifiManager$TrafficStateCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9062
    if-eqz p1, :cond_61

    .line 9063
    const-string v0, "WifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterTrafficStateCallback: callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9066
    :try_start_1a
    sget-object v0, Landroid/net/wifi/WifiManager;->sTrafficStateCallbackMap:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_5b

    .line 9067
    :try_start_1d
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 9068
    .local v1, "callbackIdentifier":I
    sget-object v2, Landroid/net/wifi/WifiManager;->sTrafficStateCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_43

    .line 9069
    const-string v2, "WifiManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown external callback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9070
    monitor-exit v0

    return-void

    .line 9072
    :cond_43
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    sget-object v3, Landroid/net/wifi/WifiManager;->sTrafficStateCallbackMap:Landroid/util/SparseArray;

    .line 9073
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ITrafficStateCallback;

    .line 9072
    invoke-interface {v2, v3}, Landroid/net/wifi/IWifiManager;->unregisterTrafficStateCallback(Landroid/net/wifi/ITrafficStateCallback;)V

    .line 9074
    sget-object v2, Landroid/net/wifi/WifiManager;->sTrafficStateCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 9075
    .end local v1    # "callbackIdentifier":I
    monitor-exit v0

    .line 9078
    nop

    .line 9079
    return-void

    .line 9075
    :catchall_58
    move-exception v1

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_1d .. :try_end_5a} :catchall_58

    .end local p0    # "this":Landroid/net/wifi/WifiManager;
    .end local p1    # "callback":Landroid/net/wifi/WifiManager$TrafficStateCallback;
    :try_start_5a
    throw v1
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_5b} :catch_5b

    .line 9076
    .restart local p0    # "this":Landroid/net/wifi/WifiManager;
    .restart local p1    # "callback":Landroid/net/wifi/WifiManager$TrafficStateCallback;
    :catch_5b
    move-exception v0

    .line 9077
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9062
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist updateInterfaceIpState(Ljava/lang/String;I)V
    .registers 5
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5590
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IWifiManager;->updateInterfaceIpState(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 5593
    nop

    .line 5594
    return-void

    .line 5591
    :catch_7
    move-exception v0

    .line 5592
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist updateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .registers 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3054
    if-eqz p1, :cond_c

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-gez v0, :cond_7

    goto :goto_c

    .line 3057
    :cond_7
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0

    .line 3055
    :cond_c
    :goto_c
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist updateWifiUsabilityScore(III)V
    .registers 6
    .param p1, "seqNum"    # I
    .param p2, "score"    # I
    .param p3, "predictionHorizonSec"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9814
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/wifi/IWifiManager;->updateWifiUsabilityScore(III)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 9817
    nop

    .line 9818
    return-void

    .line 9815
    :catch_7
    move-exception v0

    .line 9816
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist validateSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)Z
    .registers 4
    .param p1, "config"    # Landroid/net/wifi/SoftApConfiguration;

    .line 5927
    if-eqz p1, :cond_f

    .line 5931
    :try_start_2
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->validateSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_8} :catch_9

    return v0

    .line 5932
    :catch_9
    move-exception v0

    .line 5933
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5928
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "WifiManager: config can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o watchLocalOnlyHotspot(Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserver;Landroid/os/Handler;)V
    .registers 7
    .param p1, "observer"    # Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserver;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 6265
    if-nez p2, :cond_9

    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    goto :goto_e

    .line 6266
    :cond_9
    new-instance v0, Lcom/android/wifi/x/com/android/modules/utils/HandlerExecutor;

    invoke-direct {v0, p2}, Lcom/android/wifi/x/com/android/modules/utils/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    :goto_e
    nop

    .line 6267
    .local v0, "executor":Ljava/util/concurrent/Executor;
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6268
    :try_start_12
    new-instance v2, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;

    invoke-direct {v2, p0, v0, p1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;-><init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserver;)V

    iput-object v2, p0, Landroid/net/wifi/WifiManager;->mLOHSObserverProxy:Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_31

    .line 6271
    :try_start_19
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v3, p0, Landroid/net/wifi/WifiManager;->mLOHSObserverProxy:Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;

    invoke-interface {v2, v3}, Landroid/net/wifi/IWifiManager;->startWatchLocalOnlyHotspot(Landroid/net/wifi/ILocalOnlyHotspotCallback;)V

    .line 6272
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mLOHSObserverProxy:Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;->registered()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_25} :catch_28
    .catchall {:try_start_19 .. :try_end_25} :catchall_31

    .line 6276
    nop

    .line 6277
    :try_start_26
    monitor-exit v1

    .line 6278
    return-void

    .line 6273
    :catch_28
    move-exception v2

    .line 6274
    .local v2, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/net/wifi/WifiManager;->mLOHSObserverProxy:Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;

    .line 6275
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local v0    # "executor":Ljava/util/concurrent/Executor;
    .end local p0    # "this":Landroid/net/wifi/WifiManager;
    .end local p1    # "observer":Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserver;
    .end local p2    # "handler":Landroid/os/Handler;
    throw v3

    .line 6277
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "executor":Ljava/util/concurrent/Executor;
    .restart local p0    # "this":Landroid/net/wifi/WifiManager;
    .restart local p1    # "observer":Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserver;
    .restart local p2    # "handler":Landroid/os/Handler;
    :catchall_31
    move-exception v2

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_26 .. :try_end_33} :catchall_31

    throw v2
.end method
