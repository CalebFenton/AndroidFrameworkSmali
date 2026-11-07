.class public Landroid/net/wifi/p2p/WifiP2pManager;
.super Ljava/lang/Object;
.source "WifiP2pManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;,
        Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$Channel;,
        Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pDirInfoValidationListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pDirInfoListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$ConnectionRequestResponse;,
        Landroid/net/wifi/p2p/WifiP2pManager$MiracastMode;,
        Landroid/net/wifi/p2p/WifiP2pManager$GroupCreationFailureReason;,
        Landroid/net/wifi/p2p/WifiP2pManager$ExternalApproverRequestListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$DeviceInfoListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$OngoingPeerInfoListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$NetworkInfoListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$ListenStateListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$DiscoveryStateListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$P2pStateListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$FailureReason;,
        Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pScanType;,
        Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pListenState;,
        Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pDiscoveryState;,
        Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pState;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_WIFI_P2P_LISTEN_STATE_CHANGED:Ljava/lang/String; = "android.net.wifi.p2p.action.WIFI_P2P_LISTEN_STATE_CHANGED"

.field public static final whitelist ACTION_WIFI_P2P_PERSISTENT_GROUPS_CHANGED:Ljava/lang/String; = "android.net.wifi.p2p.action.WIFI_P2P_PERSISTENT_GROUPS_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_WIFI_P2P_REQUEST_RESPONSE_CHANGED:Ljava/lang/String; = "android.net.wifi.p2p.action.WIFI_P2P_REQUEST_RESPONSE_CHANGED"

.field public static final blacklist ADD_EXTERNAL_APPROVER:I = 0x22066

.field public static final greylist-max-o ADD_LOCAL_SERVICE:I = 0x2201c

.field public static final greylist-max-o ADD_LOCAL_SERVICE_FAILED:I = 0x2201d

.field public static final greylist-max-o ADD_LOCAL_SERVICE_SUCCEEDED:I = 0x2201e

.field public static final greylist-max-o ADD_SERVICE_REQUEST:I = 0x22025

.field public static final greylist-max-o ADD_SERVICE_REQUEST_FAILED:I = 0x22026

.field public static final greylist-max-o ADD_SERVICE_REQUEST_SUCCEEDED:I = 0x22027

.field private static final greylist-max-o BASE:I = 0x22000

.field public static final whitelist BUSY:I = 0x2

.field public static final blacklist CALLING_BINDER:Ljava/lang/String; = "android.net.wifi.p2p.CALLING_BINDER"

.field public static final blacklist CALLING_FEATURE_ID:Ljava/lang/String; = "android.net.wifi.p2p.CALLING_FEATURE_ID"

.field public static final greylist-max-o CALLING_PACKAGE:Ljava/lang/String; = "android.net.wifi.p2p.CALLING_PACKAGE"

.field public static final greylist-max-o CANCEL_CONNECT:I = 0x2200a

.field public static final greylist-max-o CANCEL_CONNECT_FAILED:I = 0x2200b

.field public static final greylist-max-o CANCEL_CONNECT_SUCCEEDED:I = 0x2200c

.field public static final greylist-max-o CLEAR_LOCAL_SERVICES:I = 0x22022

.field public static final greylist-max-o CLEAR_LOCAL_SERVICES_FAILED:I = 0x22023

.field public static final greylist-max-o CLEAR_LOCAL_SERVICES_SUCCEEDED:I = 0x22024

.field public static final greylist-max-o CLEAR_SERVICE_REQUESTS:I = 0x2202b

.field public static final greylist-max-o CLEAR_SERVICE_REQUESTS_FAILED:I = 0x2202c

.field public static final greylist-max-o CLEAR_SERVICE_REQUESTS_SUCCEEDED:I = 0x2202d

.field public static final greylist-max-o CONNECT:I = 0x22007

.field public static final whitelist CONNECTION_REQUEST_ACCEPT:I = 0x0

.field public static final whitelist CONNECTION_REQUEST_DEFER_SHOW_PIN_TO_SERVICE:I = 0x3

.field public static final whitelist CONNECTION_REQUEST_DEFER_TO_SERVICE:I = 0x2

.field public static final whitelist CONNECTION_REQUEST_REJECT:I = 0x1

.field public static final greylist-max-o CONNECT_FAILED:I = 0x22008

.field public static final greylist-max-o CONNECT_SUCCEEDED:I = 0x22009

.field public static final greylist-max-r CREATE_GROUP:I = 0x2200d

.field public static final greylist-max-o CREATE_GROUP_FAILED:I = 0x2200e

.field public static final greylist-max-o CREATE_GROUP_SUCCEEDED:I = 0x2200f

.field public static final greylist-max-o DELETE_PERSISTENT_GROUP:I = 0x22036

.field public static final greylist-max-o DELETE_PERSISTENT_GROUP_FAILED:I = 0x22037

.field public static final greylist-max-o DELETE_PERSISTENT_GROUP_SUCCEEDED:I = 0x22038

.field public static final greylist-max-o DISCOVER_PEERS:I = 0x22001

.field public static final greylist-max-o DISCOVER_PEERS_FAILED:I = 0x22002

.field public static final greylist-max-o DISCOVER_PEERS_SUCCEEDED:I = 0x22003

.field public static final greylist-max-o DISCOVER_SERVICES:I = 0x2202e

.field public static final greylist-max-o DISCOVER_SERVICES_FAILED:I = 0x2202f

.field public static final greylist-max-o DISCOVER_SERVICES_SUCCEEDED:I = 0x22030

.field public static final whitelist ERROR:I = 0x0

.field public static final blacklist EXTERNAL_APPROVER_ATTACH:I = 0x22067

.field public static final blacklist EXTERNAL_APPROVER_CONNECTION_REQUESTED:I = 0x22069

.field public static final blacklist EXTERNAL_APPROVER_DETACH:I = 0x22068

.field public static final blacklist EXTERNAL_APPROVER_PIN_GENERATED:I = 0x2206a

.field public static final whitelist EXTRA_DISCOVERY_STATE:Ljava/lang/String; = "discoveryState"

.field public static final greylist-max-o EXTRA_HANDOVER_MESSAGE:Ljava/lang/String; = "android.net.wifi.p2p.EXTRA_HANDOVER_MESSAGE"

.field public static final whitelist EXTRA_LISTEN_STATE:Ljava/lang/String; = "android.net.wifi.p2p.extra.LISTEN_STATE"

.field public static final whitelist EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"

.field public static final whitelist EXTRA_P2P_DEVICE_LIST:Ljava/lang/String; = "wifiP2pDeviceList"

.field public static final blacklist EXTRA_PARAM_KEY_BUNDLE:Ljava/lang/String; = "android.net.wifi.p2p.EXTRA_PARAM_KEY_BUNDLE"

.field public static final blacklist EXTRA_PARAM_KEY_CONFIG:Ljava/lang/String; = "android.net.wifi.p2p.EXTRA_PARAM_KEY_CONFIG"

.field public static final blacklist EXTRA_PARAM_KEY_DEVICE:Ljava/lang/String; = "android.net.wifi.p2p.EXTRA_PARAM_KEY_DEVICE"

.field public static final blacklist EXTRA_PARAM_KEY_DIR_INFO:Ljava/lang/String; = "android.net.wifi.p2p.EXTRA_PARAM_KEY_DIR_INFO"

.field public static final blacklist EXTRA_PARAM_KEY_DISCOVERY_CONFIG:Ljava/lang/String; = "android.net.wifi.p2p.EXTRA_PARAM_KEY_DISCOVERY_CONFIG"

.field public static final blacklist EXTRA_PARAM_KEY_DISPLAY_ID:Ljava/lang/String; = "android.net.wifi.p2p.EXTRA_PARAM_KEY_DISPLAY_ID"

.field public static final blacklist EXTRA_PARAM_KEY_EXT_LISTEN_PARAMS:Ljava/lang/String; = "android.net.wifi.p2p.EXTRA_PARAM_KEY_EXT_LISTEN_PARAMS"

.field public static final blacklist EXTRA_PARAM_KEY_INFORMATION_ELEMENT_LIST:Ljava/lang/String; = "android.net.wifi.p2p.EXTRA_PARAM_KEY_INFORMATION_ELEMENT_LIST"

.field public static final blacklist EXTRA_PARAM_KEY_INTERNAL_MESSAGE:Ljava/lang/String; = "android.net.wifi.p2p.EXTRA_PARAM_KEY_INTERNAL_MESSAGE"

.field public static final blacklist EXTRA_PARAM_KEY_PEER_ADDRESS:Ljava/lang/String; = "android.net.wifi.p2p.EXTRA_PARAM_KEY_PEER_ADDRESS"

.field public static final blacklist EXTRA_PARAM_KEY_PEER_DISCOVERY_FREQ:Ljava/lang/String; = "android.net.wifi.p2p.EXTRA_PARAM_KEY_PEER_DISCOVERY_FREQ"

.field public static final blacklist EXTRA_PARAM_KEY_SERVICE_INFO:Ljava/lang/String; = "android.net.wifi.p2p.EXTRA_PARAM_KEY_SERVICE_INFO"

.field public static final blacklist EXTRA_PARAM_KEY_USD_BASED_LOCAL_SERVICE_ADVERTISEMENT_CONFIG:Ljava/lang/String; = "android.net.wifi.p2p.EXTRA_PARAM_KEY_USD_BASED_LOCAL_SERVICE_ADVERTISEMENT_CONFIG"

.field public static final blacklist EXTRA_PARAM_KEY_USD_BASED_SERVICE_DISCOVERY_CONFIG:Ljava/lang/String; = "android.net.wifi.p2p.EXTRA_PARAM_KEY_USD_BASED_SERVICE_DISCOVERY_CONFIG"

.field public static final blacklist EXTRA_PARAM_KEY_WPS_PIN:Ljava/lang/String; = "android.net.wifi.p2p.EXTRA_PARAM_KEY_WPS_PIN"

.field public static final whitelist EXTRA_REQUEST_CONFIG:Ljava/lang/String; = "android.net.wifi.p2p.extra.REQUEST_CONFIG"

.field public static final whitelist EXTRA_REQUEST_RESPONSE:Ljava/lang/String; = "android.net.wifi.p2p.extra.REQUEST_RESPONSE"

.field public static final whitelist EXTRA_WIFI_P2P_DEVICE:Ljava/lang/String; = "wifiP2pDevice"

.field public static final whitelist EXTRA_WIFI_P2P_GROUP:Ljava/lang/String; = "p2pGroupInfo"

.field public static final whitelist EXTRA_WIFI_P2P_INFO:Ljava/lang/String; = "wifiP2pInfo"

.field public static final whitelist EXTRA_WIFI_STATE:Ljava/lang/String; = "wifi_p2p_state"

.field public static final blacklist FACTORY_RESET:I = 0x22052

.field public static final blacklist FACTORY_RESET_FAILED:I = 0x22053

.field public static final blacklist FACTORY_RESET_SUCCEEDED:I = 0x22054

.field public static final blacklist FEATURE_FLEXIBLE_DISCOVERY:J = 0x2L

.field public static final blacklist FEATURE_GROUP_CLIENT_REMOVAL:J = 0x4L

.field public static final blacklist FEATURE_GROUP_OWNER_IPV6_LINK_LOCAL_ADDRESS_PROVIDED:J = 0x8L

.field public static final blacklist FEATURE_PCC_MODE_ALLOW_LEGACY_AND_R2_CONNECTION:J = 0x20L

.field public static final blacklist FEATURE_SET_VENDOR_ELEMENTS:J = 0x1L

.field public static final blacklist FEATURE_WIFI_DIRECT_R2:J = 0x10L

.field public static final blacklist GET_DIR_INFO:I = 0x22077

.field public static final blacklist GET_DIR_INFO_FAILED:I = 0x22078

.field public static final greylist-max-o GET_HANDOVER_REQUEST:I = 0x2204b

.field public static final greylist-max-o GET_HANDOVER_SELECT:I = 0x2204c

.field public static final blacklist GET_LISTEN_STATE:I = 0x22074

.field public static final blacklist GET_LISTEN_STATE_FAILED:I = 0x22075

.field public static final whitelist GROUP_CREATION_FAILURE_REASON_CONNECTION_CANCELLED:I = 0x0

.field public static final whitelist GROUP_CREATION_FAILURE_REASON_GROUP_REMOVED:I = 0x4

.field public static final whitelist GROUP_CREATION_FAILURE_REASON_INVITATION_FAILED:I = 0x5

.field public static final whitelist GROUP_CREATION_FAILURE_REASON_PROVISION_DISCOVERY_FAILED:I = 0x3

.field public static final whitelist GROUP_CREATION_FAILURE_REASON_TIMED_OUT:I = 0x1

.field public static final whitelist GROUP_CREATION_FAILURE_REASON_USER_REJECTED:I = 0x2

.field public static final greylist-max-o INITIATOR_REPORT_NFC_HANDOVER:I = 0x2204e

.field public static final whitelist MIRACAST_DISABLED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MIRACAST_SINK:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MIRACAST_SOURCE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NO_PERMISSION:I = 0x4

.field public static final whitelist NO_SERVICE_REQUESTS:I = 0x3

.field public static final whitelist P2P_UNSUPPORTED:I = 0x1

.field public static final greylist-max-o PING:I = 0x22031

.field public static final blacklist REMOVE_CLIENT:I = 0x22063

.field public static final blacklist REMOVE_CLIENT_FAILED:I = 0x22064

.field public static final blacklist REMOVE_CLIENT_SUCCEEDED:I = 0x22065

.field public static final blacklist REMOVE_EXTERNAL_APPROVER:I = 0x2206b

.field public static final blacklist REMOVE_EXTERNAL_APPROVER_FAILED:I = 0x2206c

.field public static final blacklist REMOVE_EXTERNAL_APPROVER_SUCCEEDED:I = 0x2206d

.field public static final greylist-max-o REMOVE_GROUP:I = 0x22010

.field public static final greylist-max-o REMOVE_GROUP_FAILED:I = 0x22011

.field public static final greylist-max-o REMOVE_GROUP_SUCCEEDED:I = 0x22012

.field public static final greylist-max-o REMOVE_LOCAL_SERVICE:I = 0x2201f

.field public static final greylist-max-o REMOVE_LOCAL_SERVICE_FAILED:I = 0x22020

.field public static final greylist-max-o REMOVE_LOCAL_SERVICE_SUCCEEDED:I = 0x22021

.field public static final greylist-max-o REMOVE_SERVICE_REQUEST:I = 0x22028

.field public static final greylist-max-o REMOVE_SERVICE_REQUEST_FAILED:I = 0x22029

.field public static final greylist-max-o REMOVE_SERVICE_REQUEST_SUCCEEDED:I = 0x2202a

.field public static final greylist-max-o REPORT_NFC_HANDOVER_FAILED:I = 0x22051

.field public static final greylist-max-o REPORT_NFC_HANDOVER_SUCCEEDED:I = 0x22050

.field public static final greylist-max-o REQUEST_CONNECTION_INFO:I = 0x22015

.field public static final blacklist REQUEST_DEVICE_INFO:I = 0x22061

.field public static final blacklist REQUEST_DISCOVERY_STATE:I = 0x2205c

.field public static final greylist-max-o REQUEST_GROUP_INFO:I = 0x22017

.field public static final blacklist REQUEST_NETWORK_INFO:I = 0x2205e

.field public static final blacklist REQUEST_ONGOING_PEER_CONFIG:I = 0x22055

.field public static final blacklist REQUEST_P2P_STATE:I = 0x2205a

.field public static final greylist-max-o REQUEST_PEERS:I = 0x22013

.field public static final greylist-max-o REQUEST_PERSISTENT_GROUP_INFO:I = 0x22039

.field public static final greylist-max-o RESPONDER_REPORT_NFC_HANDOVER:I = 0x2204f

.field public static final greylist-max-o RESPONSE_CONNECTION_INFO:I = 0x22016

.field public static final blacklist RESPONSE_DEVICE_INFO:I = 0x22062

.field public static final blacklist RESPONSE_DISCOVERY_STATE:I = 0x2205d

.field public static final blacklist RESPONSE_GET_DIR_INFO:I = 0x22079

.field public static final greylist-max-o RESPONSE_GET_HANDOVER_MESSAGE:I = 0x2204d

.field public static final blacklist RESPONSE_GET_LISTEN_STATE:I = 0x22076

.field public static final greylist-max-o RESPONSE_GROUP_INFO:I = 0x22018

.field public static final blacklist RESPONSE_NETWORK_INFO:I = 0x2205f

.field public static final blacklist RESPONSE_ONGOING_PEER_CONFIG:I = 0x22056

.field public static final blacklist RESPONSE_P2P_STATE:I = 0x2205b

.field public static final greylist-max-o RESPONSE_PEERS:I = 0x22014

.field public static final greylist-max-o RESPONSE_PERSISTENT_GROUP_INFO:I = 0x2203a

.field public static final greylist-max-o RESPONSE_SERVICE:I = 0x22032

.field public static final blacklist RESPONSE_VALIDATE_DIR_INFO:I = 0x2207c

.field public static final greylist-max-o SET_CHANNEL:I = 0x22047

.field public static final greylist-max-o SET_CHANNEL_FAILED:I = 0x22048

.field public static final greylist-max-o SET_CHANNEL_SUCCEEDED:I = 0x22049

.field public static final blacklist SET_CONNECTION_REQUEST_RESULT:I = 0x2206e

.field public static final blacklist SET_CONNECTION_REQUEST_RESULT_FAILED:I = 0x2206f

.field public static final blacklist SET_CONNECTION_REQUEST_RESULT_SUCCEEDED:I = 0x22070

.field public static final greylist-max-o SET_DEVICE_NAME:I = 0x22033

.field public static final greylist-max-o SET_DEVICE_NAME_FAILED:I = 0x22034

.field public static final greylist-max-o SET_DEVICE_NAME_SUCCEEDED:I = 0x22035

.field public static final blacklist SET_ONGOING_PEER_CONFIG:I = 0x22057

.field public static final blacklist SET_ONGOING_PEER_CONFIG_FAILED:I = 0x22058

.field public static final blacklist SET_ONGOING_PEER_CONFIG_SUCCEEDED:I = 0x22059

.field public static final blacklist SET_VENDOR_ELEMENTS:I = 0x22071

.field public static final blacklist SET_VENDOR_ELEMENTS_FAILED:I = 0x22072

.field public static final blacklist SET_VENDOR_ELEMENTS_SUCCEEDED:I = 0x22073

.field public static final greylist-max-o SET_WFD_INFO:I = 0x2203b

.field public static final greylist-max-o SET_WFD_INFO_FAILED:I = 0x2203c

.field public static final greylist-max-o SET_WFD_INFO_SUCCEEDED:I = 0x2203d

.field public static final greylist-max-o START_LISTEN:I = 0x22041

.field public static final greylist-max-o START_LISTEN_FAILED:I = 0x22042

.field public static final greylist-max-o START_LISTEN_SUCCEEDED:I = 0x22043

.field public static final greylist-max-o START_WPS:I = 0x2203e

.field public static final greylist-max-o START_WPS_FAILED:I = 0x2203f

.field public static final greylist-max-o START_WPS_SUCCEEDED:I = 0x22040

.field public static final greylist-max-o STOP_DISCOVERY:I = 0x22004

.field public static final greylist-max-o STOP_DISCOVERY_FAILED:I = 0x22005

.field public static final greylist-max-o STOP_DISCOVERY_SUCCEEDED:I = 0x22006

.field public static final greylist-max-o STOP_LISTEN:I = 0x22044

.field public static final greylist-max-o STOP_LISTEN_FAILED:I = 0x22045

.field public static final greylist-max-o STOP_LISTEN_SUCCEEDED:I = 0x22046

.field private static final greylist-max-o TAG:Ljava/lang/String; = "WifiP2pManager"

.field public static final blacklist UPDATE_CHANNEL_INFO:I = 0x22060

.field public static final blacklist VALIDATE_DIR_INFO:I = 0x2207a

.field public static final blacklist VALIDATE_DIR_INFO_FAILED:I = 0x2207b

.field public static final whitelist WIFI_P2P_CONNECTION_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

.field public static final whitelist WIFI_P2P_DISCOVERY_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

.field public static final whitelist WIFI_P2P_DISCOVERY_STARTED:I = 0x2

.field public static final whitelist WIFI_P2P_DISCOVERY_STOPPED:I = 0x1

.field public static final blacklist WIFI_P2P_EXT_LISTEN_WITH_PARAMS:I = 0x1

.field public static final whitelist WIFI_P2P_LISTEN_STARTED:I = 0x2

.field public static final whitelist WIFI_P2P_LISTEN_STOPPED:I = 0x1

.field public static final whitelist WIFI_P2P_PEERS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.PEERS_CHANGED"

.field public static final blacklist WIFI_P2P_SCAN_FREQ_UNSPECIFIED:I = 0x0

.field public static final whitelist WIFI_P2P_SCAN_FULL:I = 0x0

.field public static final whitelist WIFI_P2P_SCAN_SINGLE_FREQ:I = 0x2

.field public static final whitelist WIFI_P2P_SCAN_SOCIAL:I = 0x1

.field public static final blacklist WIFI_P2P_SCAN_WITH_CONFIG_PARAMS:I = 0x3

.field public static final whitelist WIFI_P2P_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.STATE_CHANGED"

.field public static final whitelist WIFI_P2P_STATE_DISABLED:I = 0x1

.field public static final whitelist WIFI_P2P_STATE_ENABLED:I = 0x2

.field public static final whitelist WIFI_P2P_THIS_DEVICE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

.field public static final blacklist WIFI_P2P_USD_BASED_ADD_LOCAL_SERVICE:I = 0x1

.field public static final blacklist WIFI_P2P_USD_BASED_SERVICE_DISCOVERY:I = 0x1

.field private static final blacklist WIFI_P2P_VENDOR_ELEMENTS_MAXIMUM_LENGTH:I = 0x200

.field private static final blacklist sWifiP2pListenerMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/net/wifi/p2p/IWifiP2pListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field greylist-max-o mService:Landroid/net/wifi/p2p/IWifiP2pManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smreasonCodeToException(I)Ljava/lang/Exception;
    .registers 1

    invoke-static {p0}, Landroid/net/wifi/p2p/WifiP2pManager;->reasonCodeToException(I)Ljava/lang/Exception;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 929
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pManager;->sWifiP2pListenerMap:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor greylist-max-p <init>(Landroid/net/wifi/p2p/IWifiP2pManager;)V
    .registers 2
    .param p1, "service"    # Landroid/net/wifi/p2p/IWifiP2pManager;

    .line 939
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 940
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    .line 941
    return-void
.end method

.method private static greylist-max-o checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V
    .registers 3
    .param p0, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 2100
    if-eqz p0, :cond_3

    .line 2101
    return-void

    .line 2100
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Channel needs to be initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o checkP2pConfig(Landroid/net/wifi/p2p/WifiP2pConfig;)V
    .registers 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 2112
    if-eqz p1, :cond_13

    .line 2113
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2116
    return-void

    .line 2114
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deviceAddress cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2112
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o checkServiceInfo(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)V
    .registers 3
    .param p0, "info"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .line 2104
    if-eqz p0, :cond_3

    .line 2105
    return-void

    .line 2104
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "service info is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o checkServiceRequest(Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)V
    .registers 3
    .param p0, "req"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    .line 2108
    if-eqz p0, :cond_3

    .line 2109
    return-void

    .line 2108
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "service request is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getMessenger(Landroid/os/Binder;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Messenger;
    .registers 6
    .param p1, "binder"    # Landroid/os/Binder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 3372
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/wifi/p2p/IWifiP2pManager;->getMessenger(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Messenger;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 3373
    :catch_7
    move-exception v0

    .line 3374
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static whitelist getP2pMaxAllowedVendorElementsLengthBytes()I
    .registers 1

    .line 3939
    const/16 v0, 0x200

    return v0
.end method

.method private blacklist getSupportedFeatures()J
    .registers 3

    .line 3395
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {v0}, Landroid/net/wifi/p2p/IWifiP2pManager;->getSupportedFeatures()J

    move-result-wide v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 3396
    :catch_7
    move-exception v0

    .line 3397
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist initializeChannel(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;Landroid/os/Messenger;Landroid/os/Binder;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .registers 14
    .param p1, "srcContext"    # Landroid/content/Context;
    .param p2, "srcLooper"    # Landroid/os/Looper;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
    .param p4, "messenger"    # Landroid/os/Messenger;
    .param p5, "binder"    # Landroid/os/Binder;

    .line 2194
    const/4 v0, 0x0

    if-nez p4, :cond_4

    return-object v0

    .line 2196
    :cond_4
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-object v6, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    .end local p1    # "srcContext":Landroid/content/Context;
    .end local p2    # "srcLooper":Landroid/os/Looper;
    .end local p3    # "listener":Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
    .end local p5    # "binder":Landroid/os/Binder;
    .local v2, "srcContext":Landroid/content/Context;
    .local v3, "srcLooper":Landroid/os/Looper;
    .local v4, "listener":Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
    .local v5, "binder":Landroid/os/Binder;
    invoke-direct/range {v1 .. v6}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;Landroid/os/Binder;Landroid/net/wifi/p2p/WifiP2pManager;)V

    .line 2197
    .end local v2    # "srcContext":Landroid/content/Context;
    .end local v3    # "srcLooper":Landroid/os/Looper;
    .end local v4    # "listener":Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
    .end local v5    # "binder":Landroid/os/Binder;
    .local v1, "c":Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .restart local p1    # "srcContext":Landroid/content/Context;
    .restart local p2    # "srcLooper":Landroid/os/Looper;
    .restart local p3    # "listener":Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
    .restart local p5    # "binder":Landroid/os/Binder;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v2

    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmHandler(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;

    move-result-object v3

    invoke-virtual {v2, p1, v3, p4}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    move-result v2

    if-nez v2, :cond_53

    .line 2199
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2200
    .local v6, "bundle":Landroid/os/Bundle;
    iget-object v2, v1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.net.wifi.p2p.CALLING_PACKAGE"

    invoke-virtual {v6, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2201
    iget-object v2, v1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.net.wifi.p2p.CALLING_FEATURE_ID"

    invoke-virtual {v6, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2202
    const-string v2, "android.net.wifi.p2p.CALLING_BINDER"

    invoke-virtual {v6, v2, p5}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2203
    invoke-static {v1, v0}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v5

    iget-object v7, v1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mContext:Landroid/content/Context;

    const v3, 0x22060

    const/4 v4, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareMessage(IIILandroid/os/Bundle;Landroid/content/Context;)Landroid/os/Message;

    move-result-object v0

    .line 2205
    .local v0, "msg":Landroid/os/Message;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 2206
    return-object v1

    .line 2208
    .end local v0    # "msg":Landroid/os/Message;
    .end local v6    # "bundle":Landroid/os/Bundle;
    :cond_53
    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->close()V

    .line 2209
    return-object v0
.end method

.method private blacklist isFeatureSupported(J)Z
    .registers 5
    .param p1, "feature"    # J

    .line 3402
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pManager;->getSupportedFeatures()J

    move-result-wide v0

    and-long/2addr v0, p1

    cmp-long v0, v0, p1

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private blacklist maybeGetAttributionSource(Landroid/content/Context;)Ljava/lang/Object;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 2189
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method private blacklist prepareExtrasBundle(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/os/Bundle;
    .registers 5
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 2168
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2169
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "android.net.wifi.p2p.CALLING_BINDER"

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->getBinder()Landroid/os/Binder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2170
    return-object v0
.end method

.method private blacklist prepareExtrasBundleWithAttributionSource(Landroid/content/Context;)Landroid/os/Bundle;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 2180
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2181
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2182
    nop

    .line 2183
    invoke-virtual {p1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    .line 2182
    const-string v2, "EXTRA_PARAM_KEY_ATTRIBUTION_SOURCE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2185
    :cond_15
    return-object v0
.end method

.method private blacklist prepareMessage(IIILandroid/os/Bundle;Landroid/content/Context;)Landroid/os/Message;
    .registers 9
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "context"    # Landroid/content/Context;

    .line 2158
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2159
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 2160
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 2161
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 2162
    invoke-direct {p0, p5}, Landroid/net/wifi/p2p/WifiP2pManager;->maybeGetAttributionSource(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2163
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.net.wifi.p2p.EXTRA_PARAM_KEY_BUNDLE"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2164
    return-object v0
.end method

.method private static blacklist reasonCodeToException(I)Ljava/lang/Exception;
    .registers 3
    .param p0, "reason"    # I

    .line 3943
    if-nez p0, :cond_a

    .line 3944
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Internal error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 3945
    :cond_a
    const/4 v0, 0x2

    if-ne p0, v0, :cond_15

    .line 3946
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Framework is busy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 3947
    :cond_15
    invoke-static {}, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->wifiDirectR2()Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x4

    if-ne p0, v0, :cond_26

    .line 3948
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Application doesn\'t have required permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 3950
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    return-object v0
.end method


# virtual methods
.method public whitelist addExternalApprover(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/MacAddress;Landroid/net/wifi/p2p/WifiP2pManager$ExternalApproverRequestListener;)V
    .registers 11
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "deviceAddress"    # Landroid/net/MacAddress;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ExternalApproverRequestListener;

    .line 3772
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 3773
    if-eqz p3, :cond_2f

    .line 3774
    if-eqz p2, :cond_27

    .line 3778
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareExtrasBundle(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/os/Bundle;

    move-result-object v4

    .line 3779
    .local v4, "extras":Landroid/os/Bundle;
    const-string v0, "android.net.wifi.p2p.EXTRA_PARAM_KEY_PEER_ADDRESS"

    invoke-virtual {v4, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3780
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v6

    .line 3781
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    iget-object v5, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mContext:Landroid/content/Context;

    .line 3780
    const v1, 0x22066

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareMessage(IIILandroid/os/Bundle;Landroid/content/Context;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 3782
    return-void

    .line 3775
    .end local v4    # "extras":Landroid/os/Bundle;
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deviceAddress cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3773
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This listener cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addLocalService(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 12
    .param p1, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "servInfo"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 2738
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 2739
    invoke-static {p2}, Landroid/net/wifi/p2p/WifiP2pManager;->checkServiceInfo(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)V

    .line 2740
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2741
    invoke-virtual {p2}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->getWifiP2pUsdBasedServiceConfig()Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_1b

    .line 2742
    :cond_13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Application must call WifiP2pManager#startUsdBasedLocalServiceAdvertisement for USD config"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2746
    :cond_1b
    :goto_1b
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareExtrasBundle(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/os/Bundle;

    move-result-object v6

    .line 2747
    .local v6, "extras":Landroid/os/Bundle;
    const-string v0, "android.net.wifi.p2p.EXTRA_PARAM_KEY_SERVICE_INFO"

    invoke-virtual {v6, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2748
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v0

    .line 2749
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v5

    iget-object v7, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mContext:Landroid/content/Context;

    .line 2748
    const v3, 0x2201c

    const/4 v4, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareMessage(IIILandroid/os/Bundle;Landroid/content/Context;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 2750
    return-void
.end method

.method public whitelist addServiceRequest(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 8
    .param p1, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "req"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 3027
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 3028
    invoke-static {p2}, Landroid/net/wifi/p2p/WifiP2pManager;->checkServiceRequest(Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)V

    .line 3029
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 3030
    invoke-virtual {p2}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->getWifiP2pUsdBasedServiceConfig()Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pManager;->isWiFiDirectR2Supported()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1f

    .line 3031
    :cond_19
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 3034
    :cond_1f
    :goto_1f
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v0

    .line 3035
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    .line 3034
    const v2, 0x22025

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p2}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 3036
    return-void
.end method

.method public whitelist cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 7
    .param p1, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 2469
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 2470
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    const v3, 0x2200a

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 2471
    return-void
.end method

.method public whitelist clearLocalServices(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 7
    .param p1, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 2845
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 2846
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    const v3, 0x22022

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 2847
    return-void
.end method

.method public whitelist clearServiceRequests(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 7
    .param p1, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 3070
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 3071
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v0

    .line 3072
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    .line 3071
    const v2, 0x2202b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 3073
    return-void
.end method

.method public whitelist connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 11
    .param p1, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 2449
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 2450
    invoke-direct {p0, p2}, Landroid/net/wifi/p2p/WifiP2pManager;->checkP2pConfig(Landroid/net/wifi/p2p/WifiP2pConfig;)V

    .line 2451
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareExtrasBundle(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/os/Bundle;

    move-result-object v4

    .line 2452
    .local v4, "extras":Landroid/os/Bundle;
    const-string v0, "android.net.wifi.p2p.EXTRA_PARAM_KEY_CONFIG"

    invoke-virtual {v4, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2453
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v6

    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    iget-object v5, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mContext:Landroid/content/Context;

    const v1, 0x22007

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareMessage(IIILandroid/os/Bundle;Landroid/content/Context;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 2455
    return-void
.end method

.method public whitelist createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 11
    .param p1, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 2553
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 2554
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareExtrasBundle(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/os/Bundle;

    move-result-object v4

    .line 2555
    .local v4, "extras":Landroid/os/Bundle;
    const-string v0, "android.net.wifi.p2p.EXTRA_PARAM_KEY_CONFIG"

    invoke-virtual {v4, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2556
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v6

    .line 2557
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    iget-object v5, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mContext:Landroid/content/Context;

    .line 2556
    const v1, 0x2200d

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareMessage(IIILandroid/os/Bundle;Landroid/content/Context;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 2558
    return-void
.end method

.method public whitelist createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 10
    .param p1, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 2506
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 2507
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareExtrasBundle(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/os/Bundle;

    move-result-object v4

    .line 2508
    .local v4, "extras":Landroid/os/Bundle;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v6

    .line 2509
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    iget-object v5, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mContext:Landroid/content/Context;

    .line 2508
    const v1, 0x2200d

    const/4 v2, -0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareMessage(IIILandroid/os/Bundle;Landroid/content/Context;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 2511
    return-void
.end method

.method public whitelist deletePersistentGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 7
    .param p1, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "netId"    # I
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3245
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 3246
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v0

    .line 3247
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    .line 3246
    const v2, 0x22036

    invoke-virtual {v0, v2, p2, v1}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 3248
    return-void
.end method

.method public whitelist discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 10
    .param p1, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 2246
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 2247
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareExtrasBundle(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/os/Bundle;

    move-result-object v4

    .line 2248
    .local v4, "extras":Landroid/os/Bundle;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v6

    .line 2249
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    iget-object v5, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mContext:Landroid/content/Context;

    .line 2248
    const v1, 0x22001

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareMessage(IIILandroid/os/Bundle;Landroid/content/Context;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 2250
    return-void
.end method

.method public whitelist discoverPeersOnSocialChannels(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 10
    .param p1, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 2288
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pManager;->isChannelConstrainedDiscoverySupported()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2291
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 2292
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareExtrasBundle(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/os/Bundle;

    move-result-object v5

    .line 2293
    .local v5, "extras":Landroid/os/Bundle;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v0

    .line 2294
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v4

    iget-object v6, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mContext:Landroid/content/Context;

    .line 2293
    const v2, 0x22001

    const/4 v3, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareMessage(IIILandroid/os/Bundle;Landroid/content/Context;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 2295
    return-void

    .line 2289
    .end local v5    # "extras":Landroid/os/Bundle;
    :cond_24
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist discoverPeersOnSpecificFrequency(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 11
    .param p1, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "frequencyMhz"    # I
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 2334
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pManager;->isChannelConstrainedDiscoverySupported()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 2337
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 2338
    if-lez p2, :cond_2b

    .line 2341
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareExtrasBundle(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/os/Bundle;

    move-result-object v5

    .line 2342
    .local v5, "extras":Landroid/os/Bundle;
    const-string v0, "android.net.wifi.p2p.EXTRA_PARAM_KEY_PEER_DISCOVERY_FREQ"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2343
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v0

    .line 2344
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v4

    iget-object v6, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mContext:Landroid/content/Context;

    .line 2343
    const v2, 0x22001

    const/4 v3, 0x2

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareMessage(IIILandroid/os/Bundle;Landroid/content/Context;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 2345
    return-void

    .line 2339
    .end local v5    # "extras":Landroid/os/Bundle;
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This frequency must be a positive value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2335
    :cond_33
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist discoverServices(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 10
    .param p1, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 2931
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 2932
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareExtrasBundle(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/os/Bundle;

    move-result-object v4

    .line 2933
    .local v4, "extras":Landroid/os/Bundle;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v6

    .line 2934
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    iget-object v5, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mContext:Landroid/content/Context;

    .line 2933
    const v1, 0x2202e

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareMessage(IIILandroid/os/Bundle;Landroid/content/Context;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 2935
    return-void
.end method

.method public whitelist discoverUsdBasedServices(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pUsdBasedServiceDiscoveryConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 11
    .param p1, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "config"    # Landroid/net/wifi/p2p/WifiP2pUsdBasedServiceDiscoveryConfig;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 2984
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 2987
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pManager;->isWiFiDirectR2Supported()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2990
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 2991
    const-string v0, "Service discovery config cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2992
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareExtrasBundle(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/os/Bundle;

    move-result-object v5

    .line 2993
    .local v5, "extras":Landroid/os/Bundle;
    const-string v0, "android.net.wifi.p2p.EXTRA_PARAM_KEY_USD_BASED_SERVICE_DISCOVERY_CONFIG"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2994
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v0

    .line 2996
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v4

    iget-object v6, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mContext:Landroid/content/Context;

    .line 2994
    const v2, 0x2202e

    const/4 v3, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareMessage(IIILandroid/os/Bundle;Landroid/content/Context;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 2997
    return-void

    .line 2988
    .end local v5    # "extras":Landroid/os/Bundle;
    :cond_34
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2985
    :cond_3a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist factoryReset(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 7
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3548
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 3549
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    const v3, 0x22052

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 3550
    return-void
.end method

.method public whitelist getListenState(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 11
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/p2p/WifiP2pManager$Channel;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 3659
    .local p3, "resultsCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    const-string v0, "channel cannot be null and needs to be initialized)"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3660
    const-string v0, "executor cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3661
    const-string v0, "resultsCallback cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3662
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareExtrasBundle(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/os/Bundle;

    move-result-object v5

    .line 3663
    .local v5, "extras":Landroid/os/Bundle;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v0

    new-instance v1, Landroid/net/wifi/p2p/WifiP2pManager$1;

    invoke-direct {v1, p0, p2, p3}, Landroid/net/wifi/p2p/WifiP2pManager$1;-><init>(Landroid/net/wifi/p2p/WifiP2pManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 3664
    invoke-static {p1, v1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v4

    iget-object v6, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mContext:Landroid/content/Context;

    .line 3663
    const v2, 0x22074

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareMessage(IIILandroid/os/Bundle;Landroid/content/Context;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 3673
    return-void
.end method

.method public greylist-max-o getNfcHandoverRequest(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;)V
    .registers 7
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;

    .line 3498
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 3499
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    const v3, 0x2204b

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 3500
    return-void
.end method

.method public greylist-max-o getNfcHandoverSelect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;)V
    .registers 7
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;

    .line 3508
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 3509
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    const v3, 0x2204c

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 3510
    return-void
.end method

.method public greylist-max-o getP2pStateMachineMessenger()Landroid/os/Messenger;
    .registers 3

    .line 3387
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {v0}, Landroid/net/wifi/p2p/IWifiP2pManager;->getP2pStateMachineMessenger()Landroid/os/Messenger;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 3388
    :catch_7
    move-exception v0

    .line 3389
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .registers 12
    .param p1, "srcContext"    # Landroid/content/Context;
    .param p2, "srcLooper"    # Landroid/os/Looper;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    .line 2128
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    move-object v6, v0

    .line 2129
    .local v6, "binder":Landroid/os/Binder;
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareExtrasBundleWithAttributionSource(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v7

    .line 2130
    .local v7, "extras":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 2132
    .local v1, "displayId":I
    :try_start_b
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2133
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_16

    .line 2134
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v2
    :try_end_15
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_b .. :try_end_15} :catch_18

    move v1, v2

    .line 2139
    .end local v0    # "display":Landroid/view/Display;
    :cond_16
    move v0, v1

    goto :goto_1a

    .line 2136
    :catch_18
    move-exception v0

    move v0, v1

    .line 2140
    .end local v1    # "displayId":I
    .local v0, "displayId":I
    :goto_1a
    const-string v1, "android.net.wifi.p2p.EXTRA_PARAM_KEY_DISPLAY_ID"

    invoke-virtual {v7, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2141
    nop

    .line 2142
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v6, v1, v7}, Landroid/net/wifi/p2p/WifiP2pManager;->getMessenger(Landroid/os/Binder;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Messenger;

    move-result-object v5

    .line 2141
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .end local p1    # "srcContext":Landroid/content/Context;
    .end local p2    # "srcLooper":Landroid/os/Looper;
    .end local p3    # "listener":Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
    .local v2, "srcContext":Landroid/content/Context;
    .local v3, "srcLooper":Landroid/os/Looper;
    .local v4, "listener":Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
    invoke-direct/range {v1 .. v6}, Landroid/net/wifi/p2p/WifiP2pManager;->initializeChannel(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;Landroid/os/Messenger;Landroid/os/Binder;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object p1

    .line 2143
    .local p1, "channel":Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    iput-object v2, v1, Landroid/net/wifi/p2p/WifiP2pManager;->mContext:Landroid/content/Context;

    .line 2144
    return-object p1
.end method

.method public greylist-max-o initializeInternal(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .registers 10
    .param p1, "srcContext"    # Landroid/content/Context;
    .param p2, "srcLooper"    # Landroid/os/Looper;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    .line 2153
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pManager;->getP2pStateMachineMessenger()Landroid/os/Messenger;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .end local p1    # "srcContext":Landroid/content/Context;
    .end local p2    # "srcLooper":Landroid/os/Looper;
    .end local p3    # "listener":Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
    .local v1, "srcContext":Landroid/content/Context;
    .local v2, "srcLooper":Landroid/os/Looper;
    .local v3, "listener":Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/p2p/WifiP2pManager;->initializeChannel(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;Landroid/os/Messenger;Landroid/os/Binder;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o initiatorReportNfcHandover(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 9
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "handoverSelect"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 3517
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 3518
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3519
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "android.net.wifi.p2p.EXTRA_HANDOVER_MESSAGE"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3520
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v1

    .line 3521
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    .line 3520
    const v3, 0x2204e

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 3522
    return-void
.end method

.method public whitelist isChannelConstrainedDiscoverySupported()Z
    .registers 3

    .line 3430
    const-wide/16 v0, 0x2

    invoke-direct {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->isFeatureSupported(J)Z

    move-result v0

    return v0
.end method

.method public whitelist isGroupClientRemovalSupported()Z
    .registers 3

    .line 3442
    const-wide/16 v0, 0x4

    invoke-direct {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->isFeatureSupported(J)Z

    move-result v0

    return v0
.end method

.method public whitelist isGroupOwnerIPv6LinkLocalAddressProvided()Z
    .registers 3

    .line 3463
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3464
    const-wide/16 v0, 0x8

    invoke-direct {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->isFeatureSupported(J)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 3463
    :goto_11
    return v0
.end method

.method public whitelist isPccModeSupported()Z
    .registers 3

    .line 3490
    const-wide/16 v0, 0x20

    invoke-direct {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->isFeatureSupported(J)Z

    move-result v0

    return v0
.end method

.method public whitelist isSetVendorElementsSupported()Z
    .registers 3

    .line 3415
    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->isFeatureSupported(J)Z

    move-result v0

    return v0
.end method

.method public whitelist isWiFiDirectR2Supported()Z
    .registers 3

    .line 3477
    const-wide/16 v0, 0x10

    invoke-direct {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->isFeatureSupported(J)Z

    move-result v0

    return v0
.end method

.method public whitelist registerWifiP2pListener(Ljava/util/concurrent/Executor;Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pListener;)V
    .registers 9
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pListener;

    .line 1671
    const-string v0, "WifiP2pManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerWifiP2pListener: listener="

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

    .line 1672
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 1673
    .local v0, "listenerIdentifier":I
    sget-object v1, Landroid/net/wifi/p2p/WifiP2pManager;->sWifiP2pListenerMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1675
    :try_start_29
    new-instance v2, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;

    invoke-direct {v2, p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pListener;)V

    .line 1677
    .local v2, "listenerProxy":Landroid/net/wifi/p2p/IWifiP2pListener$Stub;
    sget-object v3, Landroid/net/wifi/p2p/WifiP2pManager;->sWifiP2pListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1678
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareExtrasBundleWithAttributionSource(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v3

    .line 1679
    .local v3, "extras":Landroid/os/Bundle;
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5, v3}, Landroid/net/wifi/p2p/IWifiP2pManager;->registerWifiP2pListener(Landroid/net/wifi/p2p/IWifiP2pListener;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_44} :catch_49
    .catchall {:try_start_29 .. :try_end_44} :catchall_47

    .line 1684
    .end local v2    # "listenerProxy":Landroid/net/wifi/p2p/IWifiP2pListener$Stub;
    .end local v3    # "extras":Landroid/os/Bundle;
    nop

    .line 1685
    :try_start_45
    monitor-exit v1

    .line 1686
    return-void

    .line 1685
    :catchall_47
    move-exception v2

    goto :goto_54

    .line 1681
    :catch_49
    move-exception v2

    .line 1682
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/net/wifi/p2p/WifiP2pManager;->sWifiP2pListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1683
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local v0    # "listenerIdentifier":I
    .end local p0    # "this":Landroid/net/wifi/p2p/WifiP2pManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pListener;
    throw v3

    .line 1685
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "listenerIdentifier":I
    .restart local p0    # "this":Landroid/net/wifi/p2p/WifiP2pManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pListener;
    :goto_54
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_45 .. :try_end_55} :catchall_47

    throw v2
.end method

.method public whitelist removeClient(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/MacAddress;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 8
    .param p1, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "peerAddress"    # Landroid/net/MacAddress;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 3210
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pManager;->isGroupClientRemovalSupported()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 3213
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 3214
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v0

    .line 3215
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    .line 3214
    const v2, 0x22063

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p2}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 3216
    return-void

    .line 3211
    :cond_19
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist removeExternalApprover(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/MacAddress;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 11
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "deviceAddress"    # Landroid/net/MacAddress;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 3799
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 3800
    if-eqz p2, :cond_25

    .line 3804
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareExtrasBundle(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/os/Bundle;

    move-result-object v4

    .line 3805
    .local v4, "extras":Landroid/os/Bundle;
    const-string v0, "android.net.wifi.p2p.EXTRA_PARAM_KEY_PEER_ADDRESS"

    invoke-virtual {v4, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3806
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v6

    .line 3807
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    iget-object v5, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mContext:Landroid/content/Context;

    .line 3806
    const v1, 0x2206b

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareMessage(IIILandroid/os/Bundle;Landroid/content/Context;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 3808
    return-void

    .line 3801
    .end local v4    # "extras":Landroid/os/Bundle;
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deviceAddress cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 7
    .param p1, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 2572
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 2573
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    const v3, 0x22010

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 2574
    return-void
.end method

.method public whitelist removeLocalService(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 8
    .param p1, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "servInfo"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 2827
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 2828
    invoke-static {p2}, Landroid/net/wifi/p2p/WifiP2pManager;->checkServiceInfo(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)V

    .line 2829
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v0

    .line 2830
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    .line 2829
    const v2, 0x2201f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p2}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 2831
    return-void
.end method

.method public whitelist removeServiceRequest(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 8
    .param p1, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "req"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 3052
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 3053
    invoke-static {p2}, Landroid/net/wifi/p2p/WifiP2pManager;->checkServiceRequest(Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)V

    .line 3054
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v0

    .line 3055
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    .line 3054
    const v2, 0x22028

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p2}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 3056
    return-void
.end method

.method public whitelist requestConnectionInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)V
    .registers 7
    .param p1, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

    .line 3108
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 3109
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v0

    .line 3110
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    .line 3109
    const v2, 0x22015

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 3111
    return-void
.end method

.method public whitelist requestDeviceInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DeviceInfoListener;)V
    .registers 10
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$DeviceInfoListener;

    .line 3733
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 3734
    if-eqz p2, :cond_20

    .line 3736
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareExtrasBundle(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/os/Bundle;

    move-result-object v4

    .line 3737
    .local v4, "extras":Landroid/os/Bundle;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v6

    .line 3738
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    iget-object v5, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mContext:Landroid/content/Context;

    .line 3737
    const v1, 0x22061

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareMessage(IIILandroid/os/Bundle;Landroid/content/Context;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 3739
    return-void

    .line 3734
    .end local v4    # "extras":Landroid/os/Bundle;
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This listener cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist requestDirInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 11
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/p2p/WifiP2pManager$Channel;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/net/wifi/p2p/WifiP2pDirInfo;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 4005
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/net/wifi/p2p/WifiP2pDirInfo;Ljava/lang/Exception;>;"
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 4008
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pManager;->isWiFiDirectR2Supported()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 4011
    const-string v0, "channel cannot be null and needs to be initialized)"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4012
    const-string v0, "executor cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4013
    const-string v0, "callback cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4014
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareExtrasBundle(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/os/Bundle;

    move-result-object v5

    .line 4015
    .local v5, "extras":Landroid/os/Bundle;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v0

    new-instance v1, Landroid/net/wifi/p2p/WifiP2pManager$2;

    invoke-direct {v1, p0, p2, p3}, Landroid/net/wifi/p2p/WifiP2pManager$2;-><init>(Landroid/net/wifi/p2p/WifiP2pManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 4016
    invoke-static {p1, v1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v4

    iget-object v6, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mContext:Landroid/content/Context;

    .line 4015
    const v2, 0x22077

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareMessage(IIILandroid/os/Bundle;Landroid/content/Context;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 4033
    return-void

    .line 4009
    .end local v5    # "extras":Landroid/os/Bundle;
    :cond_3b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 4006
    :cond_41
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist requestDiscoveryState(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DiscoveryStateListener;)V
    .registers 7
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$DiscoveryStateListener;

    .line 3623
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 3624
    if-eqz p2, :cond_15

    .line 3625
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    const v3, 0x2205c

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 3626
    return-void

    .line 3624
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This listener cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V
    .registers 10
    .param p1, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    .line 3133
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 3134
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareExtrasBundle(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/os/Bundle;

    move-result-object v4

    .line 3135
    .local v4, "extras":Landroid/os/Bundle;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v6

    .line 3136
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    iget-object v5, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mContext:Landroid/content/Context;

    .line 3135
    const v1, 0x22017

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareMessage(IIILandroid/os/Bundle;Landroid/content/Context;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 3137
    return-void
.end method

.method public whitelist requestNetworkInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$NetworkInfoListener;)V
    .registers 7
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$NetworkInfoListener;

    .line 3692
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 3693
    if-eqz p2, :cond_15

    .line 3694
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    const v3, 0x2205e

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 3695
    return-void

    .line 3693
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This listener cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist requestOngoingPeerConfig(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$OngoingPeerInfoListener;)V
    .registers 7
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$OngoingPeerInfoListener;

    .line 3563
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 3564
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v0

    .line 3565
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    .line 3564
    const v3, 0x22055

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 3566
    return-void
.end method

.method public whitelist requestP2pState(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$P2pStateListener;)V
    .registers 7
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$P2pStateListener;

    .line 3602
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 3603
    if-eqz p2, :cond_15

    .line 3604
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    const v3, 0x2205a

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 3605
    return-void

    .line 3603
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This listener cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V
    .registers 10
    .param p1, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;

    .line 3095
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 3096
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareExtrasBundle(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/os/Bundle;

    move-result-object v4

    .line 3097
    .local v4, "extras":Landroid/os/Bundle;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v6

    .line 3098
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    iget-object v5, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mContext:Landroid/content/Context;

    .line 3097
    const v1, 0x22013

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareMessage(IIILandroid/os/Bundle;Landroid/content/Context;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 3099
    return-void
.end method

.method public whitelist requestPersistentGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;)V
    .registers 10
    .param p1, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3277
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 3278
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareExtrasBundle(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/os/Bundle;

    move-result-object v4

    .line 3279
    .local v4, "extras":Landroid/os/Bundle;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v6

    .line 3280
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    iget-object v5, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mContext:Landroid/content/Context;

    .line 3279
    const v1, 0x22039

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareMessage(IIILandroid/os/Bundle;Landroid/content/Context;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 3281
    return-void
.end method

.method public greylist-max-o responderReportNfcHandover(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 9
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "handoverRequest"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 3530
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 3531
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3532
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "android.net.wifi.p2p.EXTRA_HANDOVER_MESSAGE"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3533
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v1

    .line 3534
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    .line 3533
    const v3, 0x2204f

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 3535
    return-void
.end method

.method public whitelist setConnectionRequestResult(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/MacAddress;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 12
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "deviceAddress"    # Landroid/net/MacAddress;
    .param p3, "result"    # I
    .param p4, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 3826
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 3827
    if-eqz p2, :cond_25

    .line 3831
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareExtrasBundle(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/os/Bundle;

    move-result-object v4

    .line 3832
    .local v4, "extras":Landroid/os/Bundle;
    const-string v0, "android.net.wifi.p2p.EXTRA_PARAM_KEY_PEER_ADDRESS"

    invoke-virtual {v4, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3833
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v6

    .line 3834
    invoke-static {p1, p4}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    iget-object v5, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mContext:Landroid/content/Context;

    .line 3833
    const v1, 0x2206e

    move-object v0, p0

    move v2, p3

    .end local p3    # "result":I
    .local v2, "result":I
    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareMessage(IIILandroid/os/Bundle;Landroid/content/Context;)Landroid/os/Message;

    move-result-object p3

    invoke-virtual {v6, p3}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 3835
    return-void

    .line 3828
    .end local v2    # "result":I
    .end local v4    # "extras":Landroid/os/Bundle;
    .restart local p3    # "result":I
    :cond_25
    move v2, p3

    .end local p3    # "result":I
    .restart local v2    # "result":I
    new-instance p3, Ljava/lang/IllegalArgumentException;

    const-string v0, "deviceAddress cannot be empty"

    invoke-direct {p3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public whitelist setConnectionRequestResult(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/MacAddress;ILjava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 14
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "deviceAddress"    # Landroid/net/MacAddress;
    .param p3, "result"    # I
    .param p4, "pin"    # Ljava/lang/String;
    .param p5, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 3855
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 3856
    if-eqz p2, :cond_3b

    .line 3859
    if-nez p3, :cond_16

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_16

    .line 3860
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PIN cannot be empty for accepting a request"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3863
    :cond_16
    :goto_16
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareExtrasBundle(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/os/Bundle;

    move-result-object v6

    .line 3864
    .local v6, "extras":Landroid/os/Bundle;
    const-string v0, "android.net.wifi.p2p.EXTRA_PARAM_KEY_PEER_ADDRESS"

    invoke-virtual {v6, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3865
    const-string v0, "android.net.wifi.p2p.EXTRA_PARAM_KEY_WPS_PIN"

    invoke-virtual {v6, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3866
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v0

    .line 3867
    invoke-static {p1, p5}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v5

    iget-object v7, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mContext:Landroid/content/Context;

    .line 3866
    const v3, 0x2206e

    move-object v2, p0

    move v4, p3

    .end local p3    # "result":I
    .local v4, "result":I
    invoke-direct/range {v2 .. v7}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareMessage(IIILandroid/os/Bundle;Landroid/content/Context;)Landroid/os/Message;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 3868
    return-void

    .line 3857
    .end local v4    # "result":I
    .end local v6    # "extras":Landroid/os/Bundle;
    .restart local p3    # "result":I
    :cond_3b
    move v4, p3

    .end local p3    # "result":I
    .restart local v4    # "result":I
    new-instance p3, Ljava/lang/IllegalArgumentException;

    const-string v0, "deviceAddress cannot be empty"

    invoke-direct {p3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public whitelist setDeviceName(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 9
    .param p1, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "devName"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3155
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 3156
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 3157
    .local v0, "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    iput-object p2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 3158
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    const v4, 0x22033

    invoke-virtual {v1, v4, v2, v3, v0}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 3159
    return-void
.end method

.method public whitelist setDnsSdResponseListeners(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;)V
    .registers 4
    .param p1, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "servListener"    # Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;
    .param p3, "txtListener"    # Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;

    .line 2878
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 2879
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fputmDnsSdServRspListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;)V

    .line 2880
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fputmDnsSdTxtListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;)V

    .line 2881
    return-void
.end method

.method public whitelist setMiracastMode(I)V
    .registers 4
    .param p1, "mode"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3363
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/p2p/IWifiP2pManager;->setMiracastMode(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3366
    nop

    .line 3367
    return-void

    .line 3364
    :catch_7
    move-exception v0

    .line 3365
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setOngoingPeerConfig(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 8
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 3580
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 3581
    invoke-direct {p0, p2}, Landroid/net/wifi/p2p/WifiP2pManager;->checkP2pConfig(Landroid/net/wifi/p2p/WifiP2pConfig;)V

    .line 3582
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v0

    .line 3583
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    .line 3582
    const v2, 0x22057

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p2}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 3584
    return-void
.end method

.method public whitelist setServiceResponseListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;)V
    .registers 3
    .param p1, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;

    .line 2862
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 2863
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fputmServRspListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;)V

    .line 2864
    return-void
.end method

.method public whitelist setUpnpServiceResponseListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;)V
    .registers 3
    .param p1, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;

    .line 2894
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 2895
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fputmUpnpServRspListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;)V

    .line 2896
    return-void
.end method

.method public whitelist setVendorElements(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/util/List;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 14
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/p2p/WifiP2pManager$Channel;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult$InformationElement;",
            ">;",
            "Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;",
            ")V"
        }
    .end annotation

    .line 3901
    .local p2, "vendorElements":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult$InformationElement;>;"
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pManager;->isSetVendorElementsSupported()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 3904
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 3905
    const/4 v0, 0x0

    .line 3906
    .local v0, "totalBytes":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult$InformationElement;

    .line 3907
    .local v2, "e":Landroid/net/wifi/ScanResult$InformationElement;
    iget v3, v2, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    const/16 v4, 0xdd

    if-ne v3, v4, :cond_46

    .line 3912
    iget-object v3, v2, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    if-eqz v3, :cond_3e

    iget-object v3, v2, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v3, v3

    const/16 v4, 0xff

    if-gt v3, v4, :cond_3e

    .line 3917
    iget-object v3, v2, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v3, v3

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    .line 3918
    const/16 v3, 0x200

    if-gt v0, v3, :cond_36

    .line 3922
    .end local v2    # "e":Landroid/net/wifi/ScanResult$InformationElement;
    goto :goto_e

    .line 3919
    .restart local v2    # "e":Landroid/net/wifi/ScanResult$InformationElement;
    :cond_36
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "received InformationElement whose total size is greater than 512."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3913
    :cond_3e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "received InformationElement whose payload size is 0 or greater than 255."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3908
    :cond_46
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "received InformationElement which is not a Vendor Specific IE (VSIE). VSIEs have an ID = 221."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3923
    .end local v2    # "e":Landroid/net/wifi/ScanResult$InformationElement;
    :cond_4e
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareExtrasBundle(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/os/Bundle;

    move-result-object v8

    .line 3924
    .local v8, "extras":Landroid/os/Bundle;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "android.net.wifi.p2p.EXTRA_PARAM_KEY_INFORMATION_ELEMENT_LIST"

    invoke-virtual {v8, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3926
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v1

    .line 3927
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v7

    iget-object v9, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mContext:Landroid/content/Context;

    .line 3926
    const v5, 0x22071

    const/4 v6, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareMessage(IIILandroid/os/Bundle;Landroid/content/Context;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 3928
    return-void

    .line 3902
    .end local v0    # "totalBytes":I
    .end local v8    # "extras":Landroid/os/Bundle;
    :cond_73
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public greylist-max-r setWFDInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pWfdInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 8
    .param p1, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "wfdInfo"    # Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 3179
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 3181
    :try_start_3
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {v0}, Landroid/net/wifi/p2p/IWifiP2pManager;->checkConfigureWifiDisplayPermission()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 3184
    goto :goto_d

    .line 3182
    :catch_9
    move-exception v0

    .line 3183
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 3185
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_d
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    const v3, 0x2203b

    invoke-virtual {v0, v3, v1, v2, p2}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 3186
    return-void
.end method

.method public whitelist setWfdInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pWfdInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 4
    .param p1, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "wfdInfo"    # Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 3171
    invoke-virtual {p0, p1, p2, p3}, Landroid/net/wifi/p2p/WifiP2pManager;->setWFDInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pWfdInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 3172
    return-void
.end method

.method public whitelist setWifiP2pChannels(Landroid/net/wifi/p2p/WifiP2pManager$Channel;IILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 10
    .param p1, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listeningChannel"    # I
    .param p3, "operatingChannel"    # I
    .param p4, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2678
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 2679
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2680
    .local v0, "p2pChannels":Landroid/os/Bundle;
    const-string v1, "lc"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2681
    const-string v1, "oc"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2682
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v1

    .line 2683
    invoke-static {p1, p4}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    .line 2682
    const v3, 0x22047

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 2684
    return-void
.end method

.method public whitelist startListening(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pExtListenParams;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 11
    .param p1, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "params"    # Landroid/net/wifi/p2p/WifiP2pExtListenParams;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2632
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 2633
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareExtrasBundle(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/os/Bundle;

    move-result-object v4

    .line 2634
    .local v4, "extras":Landroid/os/Bundle;
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2635
    const-string v0, "android.net.wifi.p2p.EXTRA_PARAM_KEY_EXT_LISTEN_PARAMS"

    invoke-virtual {v4, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2636
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v6

    .line 2637
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    iget-object v5, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mContext:Landroid/content/Context;

    .line 2636
    const v1, 0x22041

    const/4 v2, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareMessage(IIILandroid/os/Bundle;Landroid/content/Context;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 2639
    return-void
.end method

.method public whitelist startListening(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 10
    .param p1, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 2602
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 2603
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareExtrasBundle(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/os/Bundle;

    move-result-object v4

    .line 2604
    .local v4, "extras":Landroid/os/Bundle;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v6

    .line 2605
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    iget-object v5, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mContext:Landroid/content/Context;

    .line 2604
    const v1, 0x22041

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareMessage(IIILandroid/os/Bundle;Landroid/content/Context;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 2606
    return-void
.end method

.method public whitelist startPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 11
    .param p1, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "config"    # Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 2375
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pManager;->isChannelConstrainedDiscoverySupported()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2378
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 2379
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2380
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareExtrasBundle(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/os/Bundle;

    move-result-object v5

    .line 2381
    .local v5, "extras":Landroid/os/Bundle;
    const-string v0, "android.net.wifi.p2p.EXTRA_PARAM_KEY_DISCOVERY_CONFIG"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2382
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v0

    .line 2384
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v4

    iget-object v6, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mContext:Landroid/content/Context;

    .line 2382
    const v2, 0x22001

    const/4 v3, 0x3

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareMessage(IIILandroid/os/Bundle;Landroid/content/Context;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 2385
    return-void

    .line 2376
    .end local v5    # "extras":Landroid/os/Bundle;
    :cond_2c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist startUsdBasedLocalServiceAdvertisement(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;Landroid/net/wifi/p2p/WifiP2pUsdBasedLocalServiceAdvertisementConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 12
    .param p1, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "servInfo"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
    .param p3, "config"    # Landroid/net/wifi/p2p/WifiP2pUsdBasedLocalServiceAdvertisementConfig;
    .param p4, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 2796
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 2799
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pManager;->isWiFiDirectR2Supported()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 2802
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 2803
    const-string v0, "service info cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2804
    const-string v0, "Advertisement config cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2805
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareExtrasBundle(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/os/Bundle;

    move-result-object v5

    .line 2806
    .local v5, "extras":Landroid/os/Bundle;
    const-string v0, "android.net.wifi.p2p.EXTRA_PARAM_KEY_SERVICE_INFO"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2807
    const-string v0, "android.net.wifi.p2p.EXTRA_PARAM_KEY_USD_BASED_LOCAL_SERVICE_ADVERTISEMENT_CONFIG"

    invoke-virtual {v5, v0, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2808
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v0

    .line 2810
    invoke-static {p1, p4}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v4

    iget-object v6, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mContext:Landroid/content/Context;

    .line 2808
    const v2, 0x2201c

    const/4 v3, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareMessage(IIILandroid/os/Bundle;Landroid/content/Context;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 2811
    return-void

    .line 2800
    .end local v5    # "extras":Landroid/os/Bundle;
    :cond_3e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2797
    :cond_44
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public greylist startWps(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/WpsInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 8
    .param p1, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "wps"    # Landroid/net/wifi/WpsInfo;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 2698
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 2699
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    const v3, 0x2203e

    invoke-virtual {v0, v3, v1, v2, p2}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 2700
    return-void
.end method

.method public whitelist stopListening(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 7
    .param p1, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 2656
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 2657
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    const v3, 0x22044

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 2658
    return-void
.end method

.method public whitelist stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 7
    .param p1, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 2404
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 2405
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    const v3, 0x22004

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 2406
    return-void
.end method

.method public whitelist unregisterWifiP2pListener(Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pListener;

    .line 1698
    const-string v0, "WifiP2pManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterWifiP2pListener: listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 1700
    .local v0, "listenerIdentifier":I
    sget-object v1, Landroid/net/wifi/p2p/WifiP2pManager;->sWifiP2pListenerMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1702
    :try_start_1f
    sget-object v2, Landroid/net/wifi/p2p/WifiP2pManager;->sWifiP2pListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_46

    .line 1703
    const-string v2, "WifiP2pManager"

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
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_3f} :catch_5d
    .catchall {:try_start_1f .. :try_end_3f} :catchall_5b

    .line 1710
    :try_start_3f
    sget-object v2, Landroid/net/wifi/p2p/WifiP2pManager;->sWifiP2pListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_3f .. :try_end_45} :catchall_6a

    .line 1704
    return-void

    .line 1706
    :cond_46
    :try_start_46
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    sget-object v3, Landroid/net/wifi/p2p/WifiP2pManager;->sWifiP2pListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/IWifiP2pListener;

    invoke-interface {v2, v3}, Landroid/net/wifi/p2p/IWifiP2pManager;->unregisterWifiP2pListener(Landroid/net/wifi/p2p/IWifiP2pListener;)V
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_53} :catch_5d
    .catchall {:try_start_46 .. :try_end_53} :catchall_5b

    .line 1710
    :try_start_53
    sget-object v2, Landroid/net/wifi/p2p/WifiP2pManager;->sWifiP2pListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1711
    nop

    .line 1712
    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_6a

    .line 1713
    return-void

    .line 1710
    :catchall_5b
    move-exception v2

    goto :goto_63

    .line 1707
    :catch_5d
    move-exception v2

    .line 1708
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_5e
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local v0    # "listenerIdentifier":I
    .end local p0    # "this":Landroid/net/wifi/p2p/WifiP2pManager;
    .end local p1    # "listener":Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pListener;
    throw v3
    :try_end_63
    .catchall {:try_start_5e .. :try_end_63} :catchall_5b

    .line 1710
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "listenerIdentifier":I
    .restart local p0    # "this":Landroid/net/wifi/p2p/WifiP2pManager;
    .restart local p1    # "listener":Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pListener;
    :goto_63
    :try_start_63
    sget-object v3, Landroid/net/wifi/p2p/WifiP2pManager;->sWifiP2pListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1711
    nop

    .end local v0    # "listenerIdentifier":I
    .end local p0    # "this":Landroid/net/wifi/p2p/WifiP2pManager;
    .end local p1    # "listener":Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pListener;
    throw v2

    .line 1712
    .restart local v0    # "listenerIdentifier":I
    .restart local p0    # "this":Landroid/net/wifi/p2p/WifiP2pManager;
    .restart local p1    # "listener":Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pListener;
    :catchall_6a
    move-exception v2

    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_63 .. :try_end_6c} :catchall_6a

    throw v2
.end method

.method public whitelist validateDirInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pDirInfo;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 12
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "dirInfo"    # Landroid/net/wifi/p2p/WifiP2pDirInfo;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/p2p/WifiP2pManager$Channel;",
            "Landroid/net/wifi/p2p/WifiP2pDirInfo;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 4091
    .local p4, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Boolean;Ljava/lang/Exception;>;"
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 4094
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pManager;->isWiFiDirectR2Supported()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 4097
    const-string v0, "channel cannot be null and needs to be initialized)"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4098
    const-string v0, "dirInfo cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4099
    const-string v0, "executor cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4100
    const-string v0, "resultsCallback cannot be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4101
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareExtrasBundle(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/os/Bundle;

    move-result-object v5

    .line 4103
    .local v5, "extras":Landroid/os/Bundle;
    const-string v0, "android.net.wifi.p2p.EXTRA_PARAM_KEY_DIR_INFO"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4104
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    move-result-object v0

    new-instance v1, Landroid/net/wifi/p2p/WifiP2pManager$3;

    invoke-direct {v1, p0, p3, p4}, Landroid/net/wifi/p2p/WifiP2pManager$3;-><init>(Landroid/net/wifi/p2p/WifiP2pManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 4105
    invoke-static {p1, v1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v4

    iget-object v6, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mContext:Landroid/content/Context;

    .line 4104
    const v2, 0x2207a

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/net/wifi/p2p/WifiP2pManager;->prepareMessage(IIILandroid/os/Bundle;Landroid/content/Context;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 4122
    return-void

    .line 4095
    .end local v5    # "extras":Landroid/os/Bundle;
    :cond_45
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 4092
    :cond_4b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
