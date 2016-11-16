.class public Lcom/android/server/wifi/WifiMonitor;
.super Ljava/lang/Object;
.source "WifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiMonitor$1;,
        Lcom/android/server/wifi/WifiMonitor$MonitorThread;
    }
.end annotation


# static fields
.field private static final ADDR_STRING:Ljava/lang/String; = "addr="

.field public static final ANQP_DONE_EVENT:I = 0x2402c

.field private static final ANQP_DONE_STR:Ljava/lang/String; = "ANQP-QUERY-DONE"

.field public static final AP_STA_CONNECTED_EVENT:I = 0x2402a

.field private static final AP_STA_CONNECTED_STR:Ljava/lang/String; = "AP-STA-CONNECTED"

.field public static final AP_STA_DISCONNECTED_EVENT:I = 0x24029

.field private static final AP_STA_DISCONNECTED_STR:Ljava/lang/String; = "AP-STA-DISCONNECTED"

.field private static final ASSOCIATED_WITH_STR:Ljava/lang/String; = "Associated with "

.field public static final ASSOCIATION_REJECTION_EVENT:I = 0x2402b

.field private static final ASSOC_REJECT:I = 0x9

.field private static final ASSOC_REJECT_STR:Ljava/lang/String; = "ASSOC-REJECT"

.field public static final AUTHENTICATION_FAILURE_EVENT:I = 0x24007

.field private static final AUTH_EVENT_PREFIX_STR:Ljava/lang/String; = "Authentication with"

.field private static final AUTH_TIMEOUT_STR:Ljava/lang/String; = "timed out."

.field private static final BASE:I = 0x24000

.field private static final BSS_ADDED:I = 0xc

.field private static final BSS_ADDED_STR:Ljava/lang/String; = "BSS-ADDED"

.field private static final BSS_REMOVED:I = 0xd

.field private static final BSS_REMOVED_STR:Ljava/lang/String; = "BSS-REMOVED"

.field private static final CONFIG_AUTH_FAILURE:I = 0x12

.field private static final CONFIG_MULTIPLE_PBC_DETECTED:I = 0xc

.field private static final CONNECTED:I = 0x1

.field private static final CONNECTED_STR:Ljava/lang/String; = "CONNECTED"

.field private static final ConnectPrefix:Ljava/lang/String; = "Connection to "

.field private static final ConnectSuffix:Ljava/lang/String; = " completed"

.field private static DBG:Z = false

.field private static final DISCONNECTED:I = 0x2

.field private static final DISCONNECTED_STR:Ljava/lang/String; = "DISCONNECTED"

.field public static final DRIVER_HUNG_EVENT:I = 0x2400c

.field private static final DRIVER_STATE:I = 0x7

.field private static final DRIVER_STATE_STR:Ljava/lang/String; = "DRIVER-STATE"

.field private static final EAP_AUTH_FAILURE_STR:Ljava/lang/String; = "EAP authentication failed"

.field private static final EAP_FAILURE:I = 0x8

.field private static final EAP_FAILURE_STR:Ljava/lang/String; = "EAP-FAILURE"

.field private static final EVENT_PREFIX_LEN_STR:I

.field private static final EVENT_PREFIX_STR:Ljava/lang/String; = "CTRL-EVENT-"

.field public static final GAS_QUERY_DONE_EVENT:I = 0x24034

.field private static final GAS_QUERY_DONE_STR:Ljava/lang/String; = "GAS-QUERY-DONE"

.field private static final GAS_QUERY_PREFIX_STR:Ljava/lang/String; = "GAS-QUERY-"

.field public static final GAS_QUERY_START_EVENT:I = 0x24033

.field private static final GAS_QUERY_START_STR:Ljava/lang/String; = "GAS-QUERY-START"

.field private static final HOST_AP_EVENT_PREFIX_STR:Ljava/lang/String; = "AP"

.field public static final HS20_DEAUTH_STR:Ljava/lang/String; = "HS20-DEAUTH-IMMINENT-NOTICE"

.field private static final HS20_ICON_STR:Ljava/lang/String; = "RX-HS20-ICON"

.field private static final HS20_PREFIX_STR:Ljava/lang/String; = "HS20-"

.field public static final HS20_REMEDIATION_EVENT:I = 0x2403d

.field public static final HS20_SUB_REM_STR:Ljava/lang/String; = "HS20-SUBSCRIPTION-REMEDIATION"

.field private static final IDENTITY_STR:Ljava/lang/String; = "IDENTITY"

.field private static final LINK_SPEED:I = 0x5

.field private static final LINK_SPEED_STR:Ljava/lang/String; = "LINK-SPEED"

.field private static final MAX_RECV_ERRORS:I = 0xa

.field public static final NETWORK_CONNECTION_EVENT:I = 0x24003

.field public static final NETWORK_DISCONNECTION_EVENT:I = 0x24004

.field public static final P2P_DEVICE_FOUND_EVENT:I = 0x24015

.field private static final P2P_DEVICE_FOUND_STR:Ljava/lang/String; = "P2P-DEVICE-FOUND"

.field public static final P2P_DEVICE_LOST_EVENT:I = 0x24016

.field private static final P2P_DEVICE_LOST_STR:Ljava/lang/String; = "P2P-DEVICE-LOST"

.field private static final P2P_EVENT_PREFIX_STR:Ljava/lang/String; = "P2P"

.field public static final P2P_FIND_STOPPED_EVENT:I = 0x24025

.field private static final P2P_FIND_STOPPED_STR:Ljava/lang/String; = "P2P-FIND-STOPPED"

.field public static final P2P_GO_NEGOTIATION_FAILURE_EVENT:I = 0x2401a

.field public static final P2P_GO_NEGOTIATION_REQUEST_EVENT:I = 0x24017

.field public static final P2P_GO_NEGOTIATION_SUCCESS_EVENT:I = 0x24019

.field private static final P2P_GO_NEG_FAILURE_STR:Ljava/lang/String; = "P2P-GO-NEG-FAILURE"

.field private static final P2P_GO_NEG_REQUEST_STR:Ljava/lang/String; = "P2P-GO-NEG-REQUEST"

.field private static final P2P_GO_NEG_SUCCESS_STR:Ljava/lang/String; = "P2P-GO-NEG-SUCCESS"

.field public static final P2P_GROUP_FORMATION_FAILURE_EVENT:I = 0x2401c

.field private static final P2P_GROUP_FORMATION_FAILURE_STR:Ljava/lang/String; = "P2P-GROUP-FORMATION-FAILURE"

.field public static final P2P_GROUP_FORMATION_SUCCESS_EVENT:I = 0x2401b

.field private static final P2P_GROUP_FORMATION_SUCCESS_STR:Ljava/lang/String; = "P2P-GROUP-FORMATION-SUCCESS"

.field public static final P2P_GROUP_REMOVED_EVENT:I = 0x2401e

.field private static final P2P_GROUP_REMOVED_STR:Ljava/lang/String; = "P2P-GROUP-REMOVED"

.field public static final P2P_GROUP_STARTED_EVENT:I = 0x2401d

.field private static final P2P_GROUP_STARTED_STR:Ljava/lang/String; = "P2P-GROUP-STARTED"

.field public static final P2P_INVITATION_RECEIVED_EVENT:I = 0x2401f

.field private static final P2P_INVITATION_RECEIVED_STR:Ljava/lang/String; = "P2P-INVITATION-RECEIVED"

.field public static final P2P_INVITATION_RESULT_EVENT:I = 0x24020

.field private static final P2P_INVITATION_RESULT_STR:Ljava/lang/String; = "P2P-INVITATION-RESULT"

.field public static final P2P_PROV_DISC_ENTER_PIN_EVENT:I = 0x24023

.field private static final P2P_PROV_DISC_ENTER_PIN_STR:Ljava/lang/String; = "P2P-PROV-DISC-ENTER-PIN"

.field public static final P2P_PROV_DISC_FAILURE_EVENT:I = 0x24027

.field private static final P2P_PROV_DISC_FAILURE_STR:Ljava/lang/String; = "P2P-PROV-DISC-FAILURE"

.field public static final P2P_PROV_DISC_PBC_REQ_EVENT:I = 0x24021

.field private static final P2P_PROV_DISC_PBC_REQ_STR:Ljava/lang/String; = "P2P-PROV-DISC-PBC-REQ"

.field public static final P2P_PROV_DISC_PBC_RSP_EVENT:I = 0x24022

.field private static final P2P_PROV_DISC_PBC_RSP_STR:Ljava/lang/String; = "P2P-PROV-DISC-PBC-RESP"

.field public static final P2P_PROV_DISC_SHOW_PIN_EVENT:I = 0x24024

.field private static final P2P_PROV_DISC_SHOW_PIN_STR:Ljava/lang/String; = "P2P-PROV-DISC-SHOW-PIN"

.field public static final P2P_SERV_DISC_RESP_EVENT:I = 0x24026

.field private static final P2P_SERV_DISC_RESP_STR:Ljava/lang/String; = "P2P-SERV-DISC-RESP"

.field private static final PASSWORD_MAY_BE_INCORRECT_STR:Ljava/lang/String; = "pre-shared key may be incorrect"

.field private static final REASON_TKIP_ONLY_PROHIBITED:I = 0x1

.field private static final REASON_WEP_PROHIBITED:I = 0x2

.field private static final REENABLED_STR:Ljava/lang/String; = "SSID-REENABLED"

.field private static final REQUEST_PREFIX_LEN_STR:I

.field private static final REQUEST_PREFIX_STR:Ljava/lang/String; = "CTRL-REQ-"

.field private static final RESULT_STRING:Ljava/lang/String; = "result="

.field public static final RX_HS20_ANQP_ICON_EVENT:I = 0x24035

.field private static final RX_HS20_ANQP_ICON_STR:Ljava/lang/String; = "RX-HS20-ANQP-ICON"

.field private static final RX_HS20_ANQP_ICON_STR_LEN:I

.field private static final SCAN_FAILED:I = 0xf

.field public static final SCAN_FAILED_EVENT:I = 0x24011

.field private static final SCAN_FAILED_STR:Ljava/lang/String; = "SCAN-FAILED"

.field private static final SCAN_RESULTS:I = 0x4

.field public static final SCAN_RESULTS_EVENT:I = 0x24005

.field private static final SCAN_RESULTS_STR:Ljava/lang/String; = "SCAN-RESULTS"

.field private static final SIM_STR:Ljava/lang/String; = "SIM"

.field private static final SSID_REENABLE:I = 0xb

.field public static final SSID_REENABLED:I = 0x2400e

.field private static final SSID_TEMP_DISABLE:I = 0xa

.field public static final SSID_TEMP_DISABLED:I = 0x2400d

.field private static final STATE_CHANGE:I = 0x3

.field private static final STATE_CHANGE_STR:Ljava/lang/String; = "STATE-CHANGE"

.field public static final SUPPLICANT_STATE_CHANGE_EVENT:I = 0x24006

.field public static final SUP_CONNECTION_EVENT:I = 0x24001

.field public static final SUP_DISCONNECTION_EVENT:I = 0x24002

.field public static final SUP_REQUEST_IDENTITY:I = 0x2400f

.field public static final SUP_REQUEST_SIM_AUTH:I = 0x24010

.field private static final TAG:Ljava/lang/String; = "WifiMonitor"

.field private static final TARGET_BSSID_STR:Ljava/lang/String; = "Trying to associate with "

.field private static final TEMP_DISABLED_STR:Ljava/lang/String; = "SSID-TEMP-DISABLED"

.field private static final TERMINATING:I = 0x6

.field private static final TERMINATING_STR:Ljava/lang/String; = "TERMINATING"

.field private static final UNKNOWN:I = 0xe

.field private static final VDBG:Z = false

.field private static final WPA_EVENT_PREFIX_STR:Ljava/lang/String; = "WPA:"

.field private static final WPA_RECV_ERROR_STR:Ljava/lang/String; = "recv error"

.field public static final WPS_FAIL_EVENT:I = 0x24009

.field private static final WPS_FAIL_PATTERN:Ljava/lang/String; = "WPS-FAIL msg=\\d+(?: config_error=(\\d+))?(?: reason=(\\d+))?"

.field private static final WPS_FAIL_STR:Ljava/lang/String; = "WPS-FAIL"

.field public static final WPS_OVERLAP_EVENT:I = 0x2400a

.field private static final WPS_OVERLAP_STR:Ljava/lang/String; = "WPS-OVERLAP-DETECTED"

.field public static final WPS_SUCCESS_EVENT:I = 0x24008

.field private static final WPS_SUCCESS_STR:Ljava/lang/String; = "WPS-SUCCESS"

.field public static final WPS_TIMEOUT_EVENT:I = 0x2400b

.field private static final WPS_TIMEOUT_STR:Ljava/lang/String; = "WPS-TIMEOUT"

.field private static eventLogCounter:I

.field private static mAssocRejectEventPattern:Ljava/util/regex/Pattern;

.field private static mAssociatedPattern:Ljava/util/regex/Pattern;

.field private static mConnectedEventPattern:Ljava/util/regex/Pattern;

.field private static mDisconnectedEventPattern:Ljava/util/regex/Pattern;

.field private static mRequestGsmAuthPattern:Ljava/util/regex/Pattern;

.field private static mRequestIdentityPattern:Ljava/util/regex/Pattern;

.field private static mRequestUmtsAuthPattern:Ljava/util/regex/Pattern;

.field private static mTargetBSSIDPattern:Ljava/util/regex/Pattern;

.field private static sWifiMonitor:Lcom/android/server/wifi/WifiMonitor;


# instance fields
.field private mConnected:Z

.field private final mHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Set",
            "<",
            "Landroid/os/Handler;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mLastConnectBSSIDs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mMonitoringMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mRecvErrors:I

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    #@0
    sget-boolean v0, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiMonitor;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiMonitor;->mConnected:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/WifiMonitor;)Lcom/android/server/wifi/WifiNative;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/WifiMonitor;Ljava/lang/String;)Z
    .locals 1
    .param p1, "eventStr"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->dispatchEvent(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 62
    sput-boolean v1, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    #@3
    .line 86
    const-string/jumbo v0, "CTRL-EVENT-"

    #@6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@9
    move-result v0

    #@a
    sput v0, Lcom/android/server/wifi/WifiMonitor;->EVENT_PREFIX_LEN_STR:I

    #@c
    .line 90
    const-string/jumbo v0, "CTRL-REQ-"

    #@f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@12
    move-result v0

    #@13
    sput v0, Lcom/android/server/wifi/WifiMonitor;->REQUEST_PREFIX_LEN_STR:I

    #@15
    .line 122
    const-string/jumbo v0, "RX-HS20-ANQP-ICON"

    #@18
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@1b
    move-result v0

    #@1c
    sput v0, Lcom/android/server/wifi/WifiMonitor;->RX_HS20_ANQP_ICON_STR_LEN:I

    #@1e
    .line 135
    sput v1, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    #@20
    .line 250
    const-string/jumbo v0, "((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) .* \\[id=([0-9]+) "

    #@23
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@26
    move-result-object v0

    #@27
    .line 249
    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mConnectedEventPattern:Ljava/util/regex/Pattern;

    #@29
    .line 258
    const-string/jumbo v0, "((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) +reason=([0-9]+) +locally_generated=([0-1])"

    #@2c
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@2f
    move-result-object v0

    #@30
    .line 257
    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mDisconnectedEventPattern:Ljava/util/regex/Pattern;

    #@32
    .line 267
    const-string/jumbo v0, "((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) +status_code=([0-9]+)"

    #@35
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@38
    move-result-object v0

    #@39
    .line 266
    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mAssocRejectEventPattern:Ljava/util/regex/Pattern;

    #@3b
    .line 278
    const-string/jumbo v0, "Trying to associate with ((?:[0-9a-f]{2}:){5}[0-9a-f]{2}).*"

    #@3e
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@41
    move-result-object v0

    #@42
    .line 277
    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mTargetBSSIDPattern:Ljava/util/regex/Pattern;

    #@44
    .line 288
    const-string/jumbo v0, "Associated with ((?:[0-9a-f]{2}:){5}[0-9a-f]{2}).*"

    #@47
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@4a
    move-result-object v0

    #@4b
    .line 287
    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mAssociatedPattern:Ljava/util/regex/Pattern;

    #@4d
    .line 302
    const-string/jumbo v0, "SIM-([0-9]*):GSM-AUTH((:[0-9a-f]+)+) needed for SSID (.+)"

    #@50
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@53
    move-result-object v0

    #@54
    .line 301
    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mRequestGsmAuthPattern:Ljava/util/regex/Pattern;

    #@56
    .line 315
    const-string/jumbo v0, "SIM-([0-9]*):UMTS-AUTH:([0-9a-f]+):([0-9a-f]+) needed for SSID (.+)"

    #@59
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@5c
    move-result-object v0

    #@5d
    .line 314
    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mRequestUmtsAuthPattern:Ljava/util/regex/Pattern;

    #@5f
    .line 323
    const-string/jumbo v0, "IDENTITY-([0-9]+):Identity needed for SSID (.+)"

    #@62
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@65
    move-result-object v0

    #@66
    .line 322
    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mRequestIdentityPattern:Ljava/util/regex/Pattern;

    #@68
    .line 528
    new-instance v0, Lcom/android/server/wifi/WifiMonitor;

    #@6a
    invoke-direct {v0}, Lcom/android/server/wifi/WifiMonitor;-><init>()V

    #@6d
    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->sWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    #@6f
    .line 60
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 538
    iput v0, p0, Lcom/android/server/wifi/WifiMonitor;->mRecvErrors:I

    #@6
    .line 548
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiMonitor;->mConnected:Z

    #@8
    .line 551
    new-instance v0, Ljava/util/HashMap;

    #@a
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mHandlerMap:Ljava/util/Map;

    #@f
    .line 566
    new-instance v0, Ljava/util/HashMap;

    #@11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@14
    iput-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mMonitoringMap:Ljava/util/Map;

    #@16
    .line 794
    new-instance v0, Lcom/android/server/wifi/WifiMonitor$1;

    #@18
    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiMonitor$1;-><init>(Lcom/android/server/wifi/WifiMonitor;)V

    #@1b
    iput-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mLastConnectBSSIDs:Ljava/util/Map;

    #@1d
    .line 535
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getWlanNativeInterface()Lcom/android/server/wifi/WifiNative;

    #@20
    move-result-object v0

    #@21
    iput-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@23
    .line 534
    return-void
.end method

.method private declared-synchronized dispatchEvent(Ljava/lang/String;)Z
    .locals 6
    .param p1, "eventStr"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 762
    :try_start_0
    const-string/jumbo v2, "IFNAME="

    #@5
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_2

    #@b
    .line 763
    const/16 v2, 0x20

    #@d
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    #@10
    move-result v1

    #@11
    .line 764
    .local v1, "space":I
    const/4 v2, -0x1

    #@12
    if-eq v1, v2, :cond_1

    #@14
    .line 765
    const/4 v2, 0x7

    #@15
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    .line 766
    .local v0, "iface":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wifi/WifiMonitor;->mHandlerMap:Ljava/util/Map;

    #@1b
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@1e
    move-result v2

    #@1f
    if-nez v2, :cond_0

    #@21
    const-string/jumbo v2, "p2p-"

    #@24
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_0

    #@2a
    .line 770
    const-string/jumbo v0, "p2p0"

    #@2d
    .line 772
    :cond_0
    add-int/lit8 v2, v1, 0x1

    #@2f
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@32
    move-result-object p1

    #@33
    .line 787
    .end local v1    # "space":I
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMonitor;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)Z

    #@36
    move-result v2

    #@37
    if-eqz v2, :cond_3

    #@39
    .line 788
    const/4 v2, 0x0

    #@3a
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiMonitor;->mConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3c
    .line 789
    const/4 v2, 0x1

    #@3d
    monitor-exit p0

    #@3e
    return v2

    #@3f
    .line 777
    .end local v0    # "iface":Ljava/lang/String;
    .restart local v1    # "space":I
    :cond_1
    :try_start_1
    const-string/jumbo v2, "WifiMonitor"

    #@42
    new-instance v3, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v4, "Dropping malformed event (unparsable iface): "

    #@4a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v3

    #@4e
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v3

    #@52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v3

    #@56
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@59
    monitor-exit p0

    #@5a
    .line 778
    return v5

    #@5b
    .line 782
    .end local v1    # "space":I
    :cond_2
    :try_start_2
    const-string/jumbo v0, "p2p0"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5e
    .restart local v0    # "iface":Ljava/lang/String;
    goto :goto_0

    #@5f
    :cond_3
    monitor-exit p0

    #@60
    .line 791
    return v5

    #@61
    .end local v0    # "iface":Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@62
    monitor-exit p0

    #@63
    throw v2
.end method

.method private dispatchEvent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 34
    .param p1, "eventStr"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 806
    sget-boolean v4, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    #@2
    if-eqz v4, :cond_0

    #@4
    .line 808
    if-eqz p1, :cond_0

    #@6
    const-string/jumbo v4, "CTRL-EVENT-BSS-ADDED"

    #@9
    move-object/from16 v0, p1

    #@b
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_2

    #@11
    .line 814
    :cond_0
    :goto_0
    const-string/jumbo v4, "CTRL-EVENT-"

    #@14
    move-object/from16 v0, p1

    #@16
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@19
    move-result v4

    #@1a
    if-nez v4, :cond_11

    #@1c
    .line 815
    const-string/jumbo v4, "WPS-SUCCESS"

    #@1f
    move-object/from16 v0, p1

    #@21
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_3

    #@27
    .line 816
    const v4, 0x24008

    #@2a
    move-object/from16 v0, p0

    #@2c
    move-object/from16 v1, p2

    #@2e
    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    #@31
    .line 861
    :cond_1
    :goto_1
    sget v4, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    #@33
    add-int/lit8 v4, v4, 0x1

    #@35
    sput v4, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    #@37
    .line 862
    const/4 v4, 0x0

    #@38
    return v4

    #@39
    .line 809
    :cond_2
    const-string/jumbo v4, "WifiMonitor"

    #@3c
    new-instance v5, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    move-object/from16 v0, p2

    #@43
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v5

    #@47
    const-string/jumbo v6, " cnt="

    #@4a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v5

    #@4e
    sget v6, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    #@50
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@53
    move-result-object v6

    #@54
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v5

    #@58
    .line 810
    const-string/jumbo v6, " dispatchEvent: "

    #@5b
    .line 809
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v5

    #@5f
    move-object/from16 v0, p1

    #@61
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v5

    #@65
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v5

    #@69
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6c
    goto :goto_0

    #@6d
    .line 817
    :cond_3
    const-string/jumbo v4, "WPS-FAIL"

    #@70
    move-object/from16 v0, p1

    #@72
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@75
    move-result v4

    #@76
    if-eqz v4, :cond_4

    #@78
    .line 818
    invoke-direct/range {p0 .. p2}, Lcom/android/server/wifi/WifiMonitor;->handleWpsFailEvent(Ljava/lang/String;Ljava/lang/String;)V

    #@7b
    goto :goto_1

    #@7c
    .line 819
    :cond_4
    const-string/jumbo v4, "WPS-OVERLAP-DETECTED"

    #@7f
    move-object/from16 v0, p1

    #@81
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@84
    move-result v4

    #@85
    if-eqz v4, :cond_5

    #@87
    .line 820
    const v4, 0x2400a

    #@8a
    move-object/from16 v0, p0

    #@8c
    move-object/from16 v1, p2

    #@8e
    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    #@91
    goto :goto_1

    #@92
    .line 821
    :cond_5
    const-string/jumbo v4, "WPS-TIMEOUT"

    #@95
    move-object/from16 v0, p1

    #@97
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@9a
    move-result v4

    #@9b
    if-eqz v4, :cond_6

    #@9d
    .line 822
    const v4, 0x2400b

    #@a0
    move-object/from16 v0, p0

    #@a2
    move-object/from16 v1, p2

    #@a4
    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    #@a7
    goto :goto_1

    #@a8
    .line 823
    :cond_6
    const-string/jumbo v4, "P2P"

    #@ab
    move-object/from16 v0, p1

    #@ad
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@b0
    move-result v4

    #@b1
    if-eqz v4, :cond_7

    #@b3
    .line 824
    invoke-direct/range {p0 .. p2}, Lcom/android/server/wifi/WifiMonitor;->handleP2pEvents(Ljava/lang/String;Ljava/lang/String;)V

    #@b6
    goto/16 :goto_1

    #@b8
    .line 825
    :cond_7
    const-string/jumbo v4, "AP"

    #@bb
    move-object/from16 v0, p1

    #@bd
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@c0
    move-result v4

    #@c1
    if-eqz v4, :cond_8

    #@c3
    .line 826
    invoke-direct/range {p0 .. p2}, Lcom/android/server/wifi/WifiMonitor;->handleHostApEvents(Ljava/lang/String;Ljava/lang/String;)V

    #@c6
    goto/16 :goto_1

    #@c8
    .line 827
    :cond_8
    const-string/jumbo v4, "ANQP-QUERY-DONE"

    #@cb
    move-object/from16 v0, p1

    #@cd
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@d0
    move-result v4

    #@d1
    if-eqz v4, :cond_9

    #@d3
    .line 829
    :try_start_0
    invoke-direct/range {p0 .. p2}, Lcom/android/server/wifi/WifiMonitor;->handleAnqpResult(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@d6
    goto/16 :goto_1

    #@d8
    .line 831
    :catch_0
    move-exception v24

    #@d9
    .line 832
    .local v24, "iae":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v4, "WifiMonitor"

    #@dc
    new-instance v5, Ljava/lang/StringBuilder;

    #@de
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@e1
    const-string/jumbo v6, "Bad ANQP event string: \'"

    #@e4
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v5

    #@e8
    move-object/from16 v0, p1

    #@ea
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v5

    #@ee
    const-string/jumbo v6, "\': "

    #@f1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v5

    #@f5
    move-object/from16 v0, v24

    #@f7
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v5

    #@fb
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fe
    move-result-object v5

    #@ff
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@102
    goto/16 :goto_1

    #@104
    .line 834
    .end local v24    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_9
    const-string/jumbo v4, "RX-HS20-ICON"

    #@107
    move-object/from16 v0, p1

    #@109
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@10c
    move-result v4

    #@10d
    if-eqz v4, :cond_a

    #@10f
    .line 836
    :try_start_1
    invoke-direct/range {p0 .. p2}, Lcom/android/server/wifi/WifiMonitor;->handleIconResult(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    #@112
    goto/16 :goto_1

    #@114
    .line 838
    :catch_1
    move-exception v24

    #@115
    .line 839
    .restart local v24    # "iae":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v4, "WifiMonitor"

    #@118
    new-instance v5, Ljava/lang/StringBuilder;

    #@11a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@11d
    const-string/jumbo v6, "Bad Icon event string: \'"

    #@120
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@123
    move-result-object v5

    #@124
    move-object/from16 v0, p1

    #@126
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@129
    move-result-object v5

    #@12a
    const-string/jumbo v6, "\': "

    #@12d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@130
    move-result-object v5

    #@131
    move-object/from16 v0, v24

    #@133
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@136
    move-result-object v5

    #@137
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13a
    move-result-object v5

    #@13b
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@13e
    goto/16 :goto_1

    #@140
    .line 842
    .end local v24    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_a
    const-string/jumbo v4, "HS20-SUBSCRIPTION-REMEDIATION"

    #@143
    move-object/from16 v0, p1

    #@145
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@148
    move-result v4

    #@149
    if-eqz v4, :cond_b

    #@14b
    .line 844
    const-string/jumbo v4, "%012x %s"

    #@14e
    const/4 v5, 0x2

    #@14f
    new-array v5, v5, [Ljava/lang/Object;

    #@151
    .line 845
    move-object/from16 v0, p0

    #@153
    iget-object v6, v0, Lcom/android/server/wifi/WifiMonitor;->mLastConnectBSSIDs:Ljava/util/Map;

    #@155
    move-object/from16 v0, p2

    #@157
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15a
    move-result-object v6

    #@15b
    const/4 v8, 0x0

    #@15c
    aput-object v6, v5, v8

    #@15e
    const/4 v6, 0x1

    #@15f
    aput-object p1, v5, v6

    #@161
    .line 844
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@164
    move-result-object v4

    #@165
    move-object/from16 v0, p0

    #@167
    move-object/from16 v1, p2

    #@169
    invoke-direct {v0, v4, v1}, Lcom/android/server/wifi/WifiMonitor;->handleWnmFrame(Ljava/lang/String;Ljava/lang/String;)V

    #@16c
    goto/16 :goto_1

    #@16e
    .line 846
    :cond_b
    const-string/jumbo v4, "HS20-DEAUTH-IMMINENT-NOTICE"

    #@171
    move-object/from16 v0, p1

    #@173
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@176
    move-result v4

    #@177
    if-eqz v4, :cond_c

    #@179
    .line 847
    const-string/jumbo v4, "%012x %s"

    #@17c
    const/4 v5, 0x2

    #@17d
    new-array v5, v5, [Ljava/lang/Object;

    #@17f
    .line 848
    move-object/from16 v0, p0

    #@181
    iget-object v6, v0, Lcom/android/server/wifi/WifiMonitor;->mLastConnectBSSIDs:Ljava/util/Map;

    #@183
    move-object/from16 v0, p2

    #@185
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@188
    move-result-object v6

    #@189
    const/4 v8, 0x0

    #@18a
    aput-object v6, v5, v8

    #@18c
    const/4 v6, 0x1

    #@18d
    aput-object p1, v5, v6

    #@18f
    .line 847
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@192
    move-result-object v4

    #@193
    move-object/from16 v0, p0

    #@195
    move-object/from16 v1, p2

    #@197
    invoke-direct {v0, v4, v1}, Lcom/android/server/wifi/WifiMonitor;->handleWnmFrame(Ljava/lang/String;Ljava/lang/String;)V

    #@19a
    goto/16 :goto_1

    #@19c
    .line 849
    :cond_c
    const-string/jumbo v4, "CTRL-REQ-"

    #@19f
    move-object/from16 v0, p1

    #@1a1
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1a4
    move-result v4

    #@1a5
    if-eqz v4, :cond_d

    #@1a7
    .line 850
    invoke-direct/range {p0 .. p2}, Lcom/android/server/wifi/WifiMonitor;->handleRequests(Ljava/lang/String;Ljava/lang/String;)V

    #@1aa
    goto/16 :goto_1

    #@1ac
    .line 851
    :cond_d
    const-string/jumbo v4, "Trying to associate with "

    #@1af
    move-object/from16 v0, p1

    #@1b1
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1b4
    move-result v4

    #@1b5
    if-eqz v4, :cond_e

    #@1b7
    .line 852
    invoke-direct/range {p0 .. p2}, Lcom/android/server/wifi/WifiMonitor;->handleTargetBSSIDEvent(Ljava/lang/String;Ljava/lang/String;)V

    #@1ba
    goto/16 :goto_1

    #@1bc
    .line 853
    :cond_e
    const-string/jumbo v4, "Associated with "

    #@1bf
    move-object/from16 v0, p1

    #@1c1
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1c4
    move-result v4

    #@1c5
    if-eqz v4, :cond_f

    #@1c7
    .line 854
    invoke-direct/range {p0 .. p2}, Lcom/android/server/wifi/WifiMonitor;->handleAssociatedBSSIDEvent(Ljava/lang/String;Ljava/lang/String;)V

    #@1ca
    goto/16 :goto_1

    #@1cc
    .line 855
    :cond_f
    const-string/jumbo v4, "Authentication with"

    #@1cf
    move-object/from16 v0, p1

    #@1d1
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1d4
    move-result v4

    #@1d5
    if-eqz v4, :cond_10

    #@1d7
    .line 856
    const-string/jumbo v4, "timed out."

    #@1da
    move-object/from16 v0, p1

    #@1dc
    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@1df
    move-result v4

    #@1e0
    .line 855
    if-eqz v4, :cond_10

    #@1e2
    .line 857
    const v4, 0x24007

    #@1e5
    move-object/from16 v0, p0

    #@1e7
    move-object/from16 v1, p2

    #@1e9
    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    #@1ec
    goto/16 :goto_1

    #@1ee
    .line 859
    :cond_10
    sget-boolean v4, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    #@1f0
    if-eqz v4, :cond_1

    #@1f2
    const-string/jumbo v4, "WifiMonitor"

    #@1f5
    new-instance v5, Ljava/lang/StringBuilder;

    #@1f7
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1fa
    const-string/jumbo v6, "couldn\'t identify event type - "

    #@1fd
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@200
    move-result-object v5

    #@201
    move-object/from16 v0, p1

    #@203
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@206
    move-result-object v5

    #@207
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20a
    move-result-object v5

    #@20b
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@20e
    goto/16 :goto_1

    #@210
    .line 865
    :cond_11
    sget v4, Lcom/android/server/wifi/WifiMonitor;->EVENT_PREFIX_LEN_STR:I

    #@212
    move-object/from16 v0, p1

    #@214
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@217
    move-result-object v22

    #@218
    .line 866
    .local v22, "eventName":Ljava/lang/String;
    const/16 v4, 0x20

    #@21a
    move-object/from16 v0, v22

    #@21c
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    #@21f
    move-result v29

    #@220
    .line 867
    .local v29, "nameEnd":I
    const/4 v4, -0x1

    #@221
    move/from16 v0, v29

    #@223
    if-eq v0, v4, :cond_12

    #@225
    .line 868
    const/4 v4, 0x0

    #@226
    move-object/from16 v0, v22

    #@228
    move/from16 v1, v29

    #@22a
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@22d
    move-result-object v22

    #@22e
    .line 869
    :cond_12
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    #@231
    move-result v4

    #@232
    if-nez v4, :cond_14

    #@234
    .line 870
    sget-boolean v4, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    #@236
    if-eqz v4, :cond_13

    #@238
    const-string/jumbo v4, "WifiMonitor"

    #@23b
    const-string/jumbo v5, "Received wpa_supplicant event with empty event name"

    #@23e
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@241
    .line 871
    :cond_13
    sget v4, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    #@243
    add-int/lit8 v4, v4, 0x1

    #@245
    sput v4, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    #@247
    .line 872
    const/4 v4, 0x0

    #@248
    return v4

    #@249
    .line 878
    :cond_14
    const-string/jumbo v4, "CONNECTED"

    #@24c
    move-object/from16 v0, v22

    #@24e
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@251
    move-result v4

    #@252
    if-eqz v4, :cond_1b

    #@254
    .line 879
    const/16 v20, 0x1

    #@256
    .line 880
    .local v20, "event":I
    const-wide/16 v16, -0x1

    #@258
    .line 881
    .local v16, "bssid":J
    const-string/jumbo v4, "Connection to "

    #@25b
    move-object/from16 v0, p1

    #@25d
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@260
    move-result v30

    #@261
    .line 882
    .local v30, "prefix":I
    if-ltz v30, :cond_15

    #@263
    .line 883
    const-string/jumbo v4, " completed"

    #@266
    move-object/from16 v0, p1

    #@268
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@26b
    move-result v33

    #@26c
    .line 884
    .local v33, "suffix":I
    move/from16 v0, v33

    #@26e
    move/from16 v1, v30

    #@270
    if-le v0, v1, :cond_15

    #@272
    .line 887
    :try_start_2
    const-string/jumbo v4, "Connection to "

    #@275
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@278
    move-result v4

    #@279
    add-int v4, v4, v30

    #@27b
    move-object/from16 v0, p1

    #@27d
    move/from16 v1, v33

    #@27f
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@282
    move-result-object v4

    #@283
    .line 886
    invoke-static {v4}, Lcom/android/server/wifi/hotspot2/Utils;->parseMac(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    #@286
    move-result-wide v16

    #@287
    .line 893
    .end local v33    # "suffix":I
    :cond_15
    :goto_2
    move-object/from16 v0, p0

    #@289
    iget-object v4, v0, Lcom/android/server/wifi/WifiMonitor;->mLastConnectBSSIDs:Ljava/util/Map;

    #@28b
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@28e
    move-result-object v5

    #@28f
    move-object/from16 v0, p2

    #@291
    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@294
    .line 894
    const-wide/16 v4, -0x1

    #@296
    cmp-long v4, v16, v4

    #@298
    if-nez v4, :cond_16

    #@29a
    .line 895
    const-string/jumbo v4, "WifiMonitor"

    #@29d
    new-instance v5, Ljava/lang/StringBuilder;

    #@29f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2a2
    const-string/jumbo v6, "Failed to parse out BSSID from \'"

    #@2a5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a8
    move-result-object v5

    #@2a9
    move-object/from16 v0, p1

    #@2ab
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ae
    move-result-object v5

    #@2af
    const-string/jumbo v6, "\'"

    #@2b2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b5
    move-result-object v5

    #@2b6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b9
    move-result-object v5

    #@2ba
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2bd
    .line 927
    .end local v16    # "bssid":J
    .end local v30    # "prefix":I
    :cond_16
    :goto_3
    move-object/from16 v21, p1

    #@2bf
    .line 928
    .local v21, "eventData":Ljava/lang/String;
    const/4 v4, 0x7

    #@2c0
    move/from16 v0, v20

    #@2c2
    if-eq v0, v4, :cond_17

    #@2c4
    const/4 v4, 0x5

    #@2c5
    move/from16 v0, v20

    #@2c7
    if-ne v0, v4, :cond_29

    #@2c9
    .line 929
    :cond_17
    const-string/jumbo v4, " "

    #@2cc
    move-object/from16 v0, p1

    #@2ce
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@2d1
    move-result-object v4

    #@2d2
    const/4 v5, 0x1

    #@2d3
    aget-object v21, v4, v5

    #@2d5
    .line 942
    :cond_18
    :goto_4
    const/16 v4, 0xa

    #@2d7
    move/from16 v0, v20

    #@2d9
    if-eq v0, v4, :cond_19

    #@2db
    const/16 v4, 0xb

    #@2dd
    move/from16 v0, v20

    #@2df
    if-ne v0, v4, :cond_30

    #@2e1
    .line 943
    :cond_19
    const/4 v9, 0x0

    #@2e2
    .line 944
    .local v9, "substr":Ljava/lang/String;
    const/4 v7, -0x1

    #@2e3
    .line 945
    .local v7, "netId":I
    const-string/jumbo v4, " "

    #@2e6
    move-object/from16 v0, p1

    #@2e8
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@2eb
    move-result v26

    #@2ec
    .line 946
    .local v26, "ind":I
    const/4 v4, -0x1

    #@2ed
    move/from16 v0, v26

    #@2ef
    if-eq v0, v4, :cond_1a

    #@2f1
    .line 947
    add-int/lit8 v4, v26, 0x1

    #@2f3
    move-object/from16 v0, p1

    #@2f5
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2f8
    move-result-object v9

    #@2f9
    .line 949
    .end local v9    # "substr":Ljava/lang/String;
    :cond_1a
    if-eqz v9, :cond_2d

    #@2fb
    .line 950
    const-string/jumbo v4, " "

    #@2fe
    invoke-virtual {v9, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@301
    move-result-object v31

    #@302
    .line 951
    .local v31, "status":[Ljava/lang/String;
    const/4 v4, 0x0

    #@303
    move-object/from16 v0, v31

    #@305
    array-length v5, v0

    #@306
    :goto_5
    if-ge v4, v5, :cond_2d

    #@308
    aget-object v27, v31, v4

    #@30a
    .line 952
    .local v27, "key":Ljava/lang/String;
    const-string/jumbo v6, "id="

    #@30d
    const/4 v8, 0x0

    #@30e
    const/4 v10, 0x0

    #@30f
    const/4 v11, 0x3

    #@310
    move-object/from16 v0, v27

    #@312
    invoke-virtual {v0, v8, v6, v10, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@315
    move-result v6

    #@316
    if-eqz v6, :cond_2c

    #@318
    .line 953
    const/16 v25, 0x3

    #@31a
    .line 954
    .local v25, "idx":I
    const/4 v7, 0x0

    #@31b
    .line 955
    :goto_6
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    #@31e
    move-result v6

    #@31f
    move/from16 v0, v25

    #@321
    if-ge v0, v6, :cond_2c

    #@323
    .line 956
    move-object/from16 v0, v27

    #@325
    move/from16 v1, v25

    #@327
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@32a
    move-result v18

    #@32b
    .line 957
    .local v18, "c":C
    const/16 v6, 0x30

    #@32d
    move/from16 v0, v18

    #@32f
    if-lt v0, v6, :cond_2c

    #@331
    const/16 v6, 0x39

    #@333
    move/from16 v0, v18

    #@335
    if-gt v0, v6, :cond_2c

    #@337
    .line 958
    mul-int/lit8 v7, v7, 0xa

    #@339
    .line 959
    add-int/lit8 v6, v18, -0x30

    #@33b
    add-int/2addr v7, v6

    #@33c
    .line 960
    add-int/lit8 v25, v25, 0x1

    #@33e
    .line 957
    goto :goto_6

    #@33f
    .line 888
    .end local v7    # "netId":I
    .end local v18    # "c":C
    .end local v21    # "eventData":Ljava/lang/String;
    .end local v25    # "idx":I
    .end local v26    # "ind":I
    .end local v27    # "key":Ljava/lang/String;
    .end local v31    # "status":[Ljava/lang/String;
    .restart local v16    # "bssid":J
    .restart local v30    # "prefix":I
    .restart local v33    # "suffix":I
    :catch_2
    move-exception v24

    #@340
    .line 889
    .restart local v24    # "iae":Ljava/lang/IllegalArgumentException;
    const-wide/16 v16, -0x1

    #@342
    goto/16 :goto_2

    #@344
    .line 898
    .end local v16    # "bssid":J
    .end local v20    # "event":I
    .end local v24    # "iae":Ljava/lang/IllegalArgumentException;
    .end local v30    # "prefix":I
    .end local v33    # "suffix":I
    :cond_1b
    const-string/jumbo v4, "DISCONNECTED"

    #@347
    move-object/from16 v0, v22

    #@349
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34c
    move-result v4

    #@34d
    if-eqz v4, :cond_1c

    #@34f
    .line 899
    const/16 v20, 0x2

    #@351
    .restart local v20    # "event":I
    goto/16 :goto_3

    #@353
    .line 900
    .end local v20    # "event":I
    :cond_1c
    const-string/jumbo v4, "STATE-CHANGE"

    #@356
    move-object/from16 v0, v22

    #@358
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35b
    move-result v4

    #@35c
    if-eqz v4, :cond_1d

    #@35e
    .line 901
    const/16 v20, 0x3

    #@360
    .restart local v20    # "event":I
    goto/16 :goto_3

    #@362
    .line 902
    .end local v20    # "event":I
    :cond_1d
    const-string/jumbo v4, "SCAN-RESULTS"

    #@365
    move-object/from16 v0, v22

    #@367
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36a
    move-result v4

    #@36b
    if-eqz v4, :cond_1e

    #@36d
    .line 903
    const/16 v20, 0x4

    #@36f
    .restart local v20    # "event":I
    goto/16 :goto_3

    #@371
    .line 904
    .end local v20    # "event":I
    :cond_1e
    const-string/jumbo v4, "SCAN-FAILED"

    #@374
    move-object/from16 v0, v22

    #@376
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@379
    move-result v4

    #@37a
    if-eqz v4, :cond_1f

    #@37c
    .line 905
    const/16 v20, 0xf

    #@37e
    .restart local v20    # "event":I
    goto/16 :goto_3

    #@380
    .line 906
    .end local v20    # "event":I
    :cond_1f
    const-string/jumbo v4, "LINK-SPEED"

    #@383
    move-object/from16 v0, v22

    #@385
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@388
    move-result v4

    #@389
    if-eqz v4, :cond_20

    #@38b
    .line 907
    const/16 v20, 0x5

    #@38d
    .restart local v20    # "event":I
    goto/16 :goto_3

    #@38f
    .line 908
    .end local v20    # "event":I
    :cond_20
    const-string/jumbo v4, "TERMINATING"

    #@392
    move-object/from16 v0, v22

    #@394
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@397
    move-result v4

    #@398
    if-eqz v4, :cond_21

    #@39a
    .line 909
    const/16 v20, 0x6

    #@39c
    .restart local v20    # "event":I
    goto/16 :goto_3

    #@39e
    .line 910
    .end local v20    # "event":I
    :cond_21
    const-string/jumbo v4, "DRIVER-STATE"

    #@3a1
    move-object/from16 v0, v22

    #@3a3
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a6
    move-result v4

    #@3a7
    if-eqz v4, :cond_22

    #@3a9
    .line 911
    const/16 v20, 0x7

    #@3ab
    .restart local v20    # "event":I
    goto/16 :goto_3

    #@3ad
    .line 912
    .end local v20    # "event":I
    :cond_22
    const-string/jumbo v4, "EAP-FAILURE"

    #@3b0
    move-object/from16 v0, v22

    #@3b2
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b5
    move-result v4

    #@3b6
    if-eqz v4, :cond_23

    #@3b8
    .line 913
    const/16 v20, 0x8

    #@3ba
    .restart local v20    # "event":I
    goto/16 :goto_3

    #@3bc
    .line 914
    .end local v20    # "event":I
    :cond_23
    const-string/jumbo v4, "ASSOC-REJECT"

    #@3bf
    move-object/from16 v0, v22

    #@3c1
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c4
    move-result v4

    #@3c5
    if-eqz v4, :cond_24

    #@3c7
    .line 915
    const/16 v20, 0x9

    #@3c9
    .restart local v20    # "event":I
    goto/16 :goto_3

    #@3cb
    .line 916
    .end local v20    # "event":I
    :cond_24
    const-string/jumbo v4, "SSID-TEMP-DISABLED"

    #@3ce
    move-object/from16 v0, v22

    #@3d0
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d3
    move-result v4

    #@3d4
    if-eqz v4, :cond_25

    #@3d6
    .line 917
    const/16 v20, 0xa

    #@3d8
    .restart local v20    # "event":I
    goto/16 :goto_3

    #@3da
    .line 918
    .end local v20    # "event":I
    :cond_25
    const-string/jumbo v4, "SSID-REENABLED"

    #@3dd
    move-object/from16 v0, v22

    #@3df
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3e2
    move-result v4

    #@3e3
    if-eqz v4, :cond_26

    #@3e5
    .line 919
    const/16 v20, 0xb

    #@3e7
    .restart local v20    # "event":I
    goto/16 :goto_3

    #@3e9
    .line 920
    .end local v20    # "event":I
    :cond_26
    const-string/jumbo v4, "BSS-ADDED"

    #@3ec
    move-object/from16 v0, v22

    #@3ee
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3f1
    move-result v4

    #@3f2
    if-eqz v4, :cond_27

    #@3f4
    .line 921
    const/16 v20, 0xc

    #@3f6
    .restart local v20    # "event":I
    goto/16 :goto_3

    #@3f8
    .line 922
    .end local v20    # "event":I
    :cond_27
    const-string/jumbo v4, "BSS-REMOVED"

    #@3fb
    move-object/from16 v0, v22

    #@3fd
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@400
    move-result v4

    #@401
    if-eqz v4, :cond_28

    #@403
    .line 923
    const/16 v20, 0xd

    #@405
    .restart local v20    # "event":I
    goto/16 :goto_3

    #@407
    .line 925
    .end local v20    # "event":I
    :cond_28
    const/16 v20, 0xe

    #@409
    .restart local v20    # "event":I
    goto/16 :goto_3

    #@40b
    .line 930
    .restart local v21    # "eventData":Ljava/lang/String;
    :cond_29
    const/4 v4, 0x3

    #@40c
    move/from16 v0, v20

    #@40e
    if-eq v0, v4, :cond_2a

    #@410
    const/16 v4, 0x8

    #@412
    move/from16 v0, v20

    #@414
    if-ne v0, v4, :cond_2b

    #@416
    .line 931
    :cond_2a
    const-string/jumbo v4, " "

    #@419
    move-object/from16 v0, p1

    #@41b
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@41e
    move-result v26

    #@41f
    .line 932
    .restart local v26    # "ind":I
    const/4 v4, -0x1

    #@420
    move/from16 v0, v26

    #@422
    if-eq v0, v4, :cond_18

    #@424
    .line 933
    add-int/lit8 v4, v26, 0x1

    #@426
    move-object/from16 v0, p1

    #@428
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@42b
    move-result-object v21

    #@42c
    goto/16 :goto_4

    #@42e
    .line 936
    .end local v26    # "ind":I
    :cond_2b
    const-string/jumbo v4, " - "

    #@431
    move-object/from16 v0, p1

    #@433
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@436
    move-result v26

    #@437
    .line 937
    .restart local v26    # "ind":I
    const/4 v4, -0x1

    #@438
    move/from16 v0, v26

    #@43a
    if-eq v0, v4, :cond_18

    #@43c
    .line 938
    add-int/lit8 v4, v26, 0x3

    #@43e
    move-object/from16 v0, p1

    #@440
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@443
    move-result-object v21

    #@444
    goto/16 :goto_4

    #@446
    .line 951
    .restart local v7    # "netId":I
    .restart local v27    # "key":Ljava/lang/String;
    .restart local v31    # "status":[Ljava/lang/String;
    :cond_2c
    add-int/lit8 v4, v4, 0x1

    #@448
    goto/16 :goto_5

    #@44a
    .line 968
    .end local v27    # "key":Ljava/lang/String;
    .end local v31    # "status":[Ljava/lang/String;
    :cond_2d
    const/16 v4, 0xa

    #@44c
    move/from16 v0, v20

    #@44e
    if-ne v0, v4, :cond_2f

    #@450
    .line 969
    const v6, 0x2400d

    #@453
    :goto_7
    const/4 v8, 0x0

    #@454
    move-object/from16 v4, p0

    #@456
    move-object/from16 v5, p2

    #@458
    .line 968
    invoke-direct/range {v4 .. v9}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    #@45b
    .line 1028
    .end local v7    # "netId":I
    .end local v26    # "ind":I
    :cond_2e
    :goto_8
    const/4 v4, 0x0

    #@45c
    move-object/from16 v0, p0

    #@45e
    iput v4, v0, Lcom/android/server/wifi/WifiMonitor;->mRecvErrors:I

    #@460
    .line 1029
    sget v4, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    #@462
    add-int/lit8 v4, v4, 0x1

    #@464
    sput v4, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    #@466
    .line 1030
    const/4 v4, 0x0

    #@467
    return v4

    #@468
    .line 969
    .restart local v7    # "netId":I
    .restart local v26    # "ind":I
    :cond_2f
    const v6, 0x2400e

    #@46b
    goto :goto_7

    #@46c
    .line 970
    .end local v7    # "netId":I
    .end local v26    # "ind":I
    :cond_30
    const/4 v4, 0x3

    #@46d
    move/from16 v0, v20

    #@46f
    if-ne v0, v4, :cond_31

    #@471
    .line 971
    move-object/from16 v0, p0

    #@473
    move-object/from16 v1, v21

    #@475
    move-object/from16 v2, p2

    #@477
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiMonitor;->handleSupplicantStateChange(Ljava/lang/String;Ljava/lang/String;)V

    #@47a
    goto :goto_8

    #@47b
    .line 972
    :cond_31
    const/4 v4, 0x7

    #@47c
    move/from16 v0, v20

    #@47e
    if-ne v0, v4, :cond_32

    #@480
    .line 973
    move-object/from16 v0, p0

    #@482
    move-object/from16 v1, v21

    #@484
    move-object/from16 v2, p2

    #@486
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiMonitor;->handleDriverEvent(Ljava/lang/String;Ljava/lang/String;)V

    #@489
    goto :goto_8

    #@48a
    .line 974
    :cond_32
    const/4 v4, 0x6

    #@48b
    move/from16 v0, v20

    #@48d
    if-ne v0, v4, :cond_35

    #@48f
    .line 979
    const-string/jumbo v4, "recv error"

    #@492
    move-object/from16 v0, v21

    #@494
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@497
    move-result v4

    #@498
    if-eqz v4, :cond_33

    #@49a
    .line 980
    move-object/from16 v0, p0

    #@49c
    iget v4, v0, Lcom/android/server/wifi/WifiMonitor;->mRecvErrors:I

    #@49e
    add-int/lit8 v4, v4, 0x1

    #@4a0
    move-object/from16 v0, p0

    #@4a2
    iput v4, v0, Lcom/android/server/wifi/WifiMonitor;->mRecvErrors:I

    #@4a4
    const/16 v5, 0xa

    #@4a6
    if-le v4, v5, :cond_34

    #@4a8
    .line 981
    sget-boolean v4, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    #@4aa
    if-eqz v4, :cond_33

    #@4ac
    .line 982
    const-string/jumbo v4, "WifiMonitor"

    #@4af
    const-string/jumbo v5, "too many recv errors, closing connection"

    #@4b2
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4b5
    .line 991
    :cond_33
    sget v4, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    #@4b7
    const/4 v5, 0x0

    #@4b8
    const v6, 0x24002

    #@4bb
    move-object/from16 v0, p0

    #@4bd
    invoke-direct {v0, v5, v6, v4}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;II)V

    #@4c0
    .line 992
    const/4 v4, 0x1

    #@4c1
    return v4

    #@4c2
    .line 985
    :cond_34
    sget v4, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    #@4c4
    add-int/lit8 v4, v4, 0x1

    #@4c6
    sput v4, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    #@4c8
    .line 986
    const/4 v4, 0x0

    #@4c9
    return v4

    #@4ca
    .line 993
    :cond_35
    const/16 v4, 0x8

    #@4cc
    move/from16 v0, v20

    #@4ce
    if-ne v0, v4, :cond_36

    #@4d0
    .line 994
    const-string/jumbo v4, "EAP authentication failed"

    #@4d3
    move-object/from16 v0, v21

    #@4d5
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@4d8
    move-result v4

    #@4d9
    if-eqz v4, :cond_2e

    #@4db
    .line 995
    sget v4, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    #@4dd
    const v5, 0x24007

    #@4e0
    move-object/from16 v0, p0

    #@4e2
    move-object/from16 v1, p2

    #@4e4
    invoke-direct {v0, v1, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;II)V

    #@4e7
    goto/16 :goto_8

    #@4e9
    .line 997
    :cond_36
    const/16 v4, 0x9

    #@4eb
    move/from16 v0, v20

    #@4ed
    if-ne v0, v4, :cond_3a

    #@4ef
    .line 998
    sget-object v4, Lcom/android/server/wifi/WifiMonitor;->mAssocRejectEventPattern:Ljava/util/regex/Pattern;

    #@4f1
    move-object/from16 v0, v21

    #@4f3
    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@4f6
    move-result-object v28

    #@4f7
    .line 999
    .local v28, "match":Ljava/util/regex/Matcher;
    const-string/jumbo v15, ""

    #@4fa
    .line 1000
    .local v15, "BSSID":Ljava/lang/String;
    const/4 v14, -0x1

    #@4fb
    .line 1001
    .local v14, "status":I
    invoke-virtual/range {v28 .. v28}, Ljava/util/regex/Matcher;->find()Z

    #@4fe
    move-result v4

    #@4ff
    if-nez v4, :cond_38

    #@501
    .line 1002
    sget-boolean v4, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    #@503
    if-eqz v4, :cond_37

    #@505
    const-string/jumbo v4, "WifiMonitor"

    #@508
    const-string/jumbo v5, "Assoc Reject: Could not parse assoc reject string"

    #@50b
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@50e
    .line 1020
    .end local v15    # "BSSID":Ljava/lang/String;
    :cond_37
    :goto_9
    sget v13, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    #@510
    const v12, 0x2402b

    #@513
    move-object/from16 v10, p0

    #@515
    move-object/from16 v11, p2

    #@517
    invoke-direct/range {v10 .. v15}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    #@51a
    goto/16 :goto_8

    #@51c
    .line 1004
    .restart local v15    # "BSSID":Ljava/lang/String;
    :cond_38
    invoke-virtual/range {v28 .. v28}, Ljava/util/regex/Matcher;->groupCount()I

    #@51f
    move-result v23

    #@520
    .line 1005
    .local v23, "groupNumber":I
    const/16 v32, -0x1

    #@522
    .line 1006
    .local v32, "statusGroupNumber":I
    const/4 v4, 0x2

    #@523
    move/from16 v0, v23

    #@525
    if-ne v0, v4, :cond_39

    #@527
    .line 1007
    const/4 v4, 0x1

    #@528
    move-object/from16 v0, v28

    #@52a
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@52d
    move-result-object v15

    #@52e
    .line 1008
    const/16 v32, 0x2

    #@530
    .line 1015
    .end local v15    # "BSSID":Ljava/lang/String;
    :goto_a
    :try_start_3
    move-object/from16 v0, v28

    #@532
    move/from16 v1, v32

    #@534
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@537
    move-result-object v4

    #@538
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    #@53b
    move-result v14

    #@53c
    goto :goto_9

    #@53d
    .line 1011
    .restart local v15    # "BSSID":Ljava/lang/String;
    :cond_39
    const/4 v15, 0x0

    #@53e
    .line 1012
    .local v15, "BSSID":Ljava/lang/String;
    const/16 v32, 0x1

    #@540
    goto :goto_a

    #@541
    .line 1016
    .end local v15    # "BSSID":Ljava/lang/String;
    :catch_3
    move-exception v19

    #@542
    .line 1017
    .local v19, "e":Ljava/lang/NumberFormatException;
    const/4 v14, -0x1

    #@543
    goto :goto_9

    #@544
    .line 1021
    .end local v14    # "status":I
    .end local v19    # "e":Ljava/lang/NumberFormatException;
    .end local v23    # "groupNumber":I
    .end local v28    # "match":Ljava/util/regex/Matcher;
    .end local v32    # "statusGroupNumber":I
    :cond_3a
    const/16 v4, 0xc

    #@546
    move/from16 v0, v20

    #@548
    if-eq v0, v4, :cond_2e

    #@54a
    .line 1023
    const/16 v4, 0xd

    #@54c
    move/from16 v0, v20

    #@54e
    if-eq v0, v4, :cond_2e

    #@550
    .line 1026
    move-object/from16 v0, p0

    #@552
    move/from16 v1, v20

    #@554
    move-object/from16 v2, v21

    #@556
    move-object/from16 v3, p2

    #@558
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiMonitor;->handleEvent(ILjava/lang/String;Ljava/lang/String;)V

    #@55b
    goto/16 :goto_8
.end method

.method private ensureConnectedLocked()Z
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 588
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiMonitor;->mConnected:Z

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 589
    return v6

    #@6
    .line 592
    :cond_0
    sget-boolean v3, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    #@8
    if-eqz v3, :cond_1

    #@a
    const-string/jumbo v3, "WifiMonitor"

    #@d
    const-string/jumbo v4, "connecting to supplicant"

    #@10
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 593
    :cond_1
    const/4 v0, 0x0

    #@14
    .line 595
    .local v0, "connectTries":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@16
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiNative;->connectToSupplicant()Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_2

    #@1c
    .line 596
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiMonitor;->mConnected:Z

    #@1e
    .line 597
    new-instance v3, Lcom/android/server/wifi/WifiMonitor$MonitorThread;

    #@20
    iget-object v4, p0, Lcom/android/server/wifi/WifiMonitor;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@22
    invoke-virtual {v4}, Lcom/android/server/wifi/WifiNative;->getLocalLog()Landroid/util/LocalLog;

    #@25
    move-result-object v4

    #@26
    invoke-direct {v3, p0, v4}, Lcom/android/server/wifi/WifiMonitor$MonitorThread;-><init>(Lcom/android/server/wifi/WifiMonitor;Landroid/util/LocalLog;)V

    #@29
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->start()V

    #@2c
    .line 598
    return v6

    #@2d
    .line 600
    :cond_2
    add-int/lit8 v1, v0, 0x1

    #@2f
    .end local v0    # "connectTries":I
    .local v1, "connectTries":I
    const/4 v3, 0x5

    #@30
    if-ge v0, v3, :cond_3

    #@32
    .line 602
    const-wide/16 v4, 0x3e8

    #@34
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@37
    :goto_1
    move v0, v1

    #@38
    .end local v1    # "connectTries":I
    .restart local v0    # "connectTries":I
    goto :goto_0

    #@39
    .line 603
    .end local v0    # "connectTries":I
    .restart local v1    # "connectTries":I
    :catch_0
    move-exception v2

    #@3a
    .local v2, "ignore":Ljava/lang/InterruptedException;
    goto :goto_1

    #@3b
    .line 606
    .end local v2    # "ignore":Ljava/lang/InterruptedException;
    :cond_3
    const/4 v3, 0x0

    #@3c
    return v3
.end method

.method public static getInstance()Lcom/android/server/wifi/WifiMonitor;
    .locals 1

    #@0
    .prologue
    .line 530
    sget-object v0, Lcom/android/server/wifi/WifiMonitor;->sWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    #@2
    return-object v0
.end method

.method private getWifiP2pDevice(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 2
    .param p1, "dataString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1161
    :try_start_0
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@2
    invoke-direct {v1, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    return-object v1

    #@6
    .line 1162
    :catch_0
    move-exception v0

    #@7
    .line 1163
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    #@8
    return-object v1
.end method

.method private getWifiP2pGroup(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 2
    .param p1, "dataString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1169
    :try_start_0
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pGroup;

    #@2
    invoke-direct {v1, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    return-object v1

    #@6
    .line 1170
    :catch_0
    move-exception v0

    #@7
    .line 1171
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    #@8
    return-object v1
.end method

.method private handleAnqpResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "eventStr"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v1, 0x20

    #@2
    .line 1247
    const-string/jumbo v0, "addr="

    #@5
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@8
    move-result v6

    #@9
    .line 1248
    .local v6, "addrPos":I
    const-string/jumbo v0, "result="

    #@c
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@f
    move-result v12

    #@10
    .line 1249
    .local v12, "resPos":I
    if-ltz v6, :cond_0

    #@12
    if-gez v12, :cond_1

    #@14
    .line 1250
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@16
    const-string/jumbo v1, "Unexpected ANQP result notification"

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 1252
    :cond_1
    const-string/jumbo v0, "addr="

    #@20
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@23
    move-result v0

    #@24
    add-int/2addr v0, v6

    #@25
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    #@28
    move-result v7

    #@29
    .line 1253
    .local v7, "eoaddr":I
    if-gez v7, :cond_2

    #@2b
    .line 1254
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@2e
    move-result v7

    #@2f
    .line 1256
    :cond_2
    const-string/jumbo v0, "result="

    #@32
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@35
    move-result v0

    #@36
    add-int/2addr v0, v12

    #@37
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    #@3a
    move-result v10

    #@3b
    .line 1257
    .local v10, "eoresult":I
    if-gez v10, :cond_3

    #@3d
    .line 1258
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@40
    move-result v10

    #@41
    .line 1262
    :cond_3
    :try_start_0
    const-string/jumbo v0, "addr="

    #@44
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@47
    move-result v0

    #@48
    add-int/2addr v0, v6

    #@49
    invoke-virtual {p1, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4c
    move-result-object v0

    #@4d
    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/Utils;->parseMac(Ljava/lang/String;)J

    #@50
    move-result-wide v8

    #@51
    .line 1264
    .local v8, "bssid":J
    const-string/jumbo v0, "result="

    #@54
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@57
    move-result v0

    #@58
    add-int/2addr v0, v12

    #@59
    .line 1263
    invoke-virtual {p1, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@5c
    move-result-object v0

    #@5d
    .line 1264
    const-string/jumbo v1, "success"

    #@60
    .line 1263
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@63
    move-result v0

    #@64
    if-eqz v0, :cond_4

    #@66
    .line 1264
    const/4 v3, 0x1

    #@67
    .line 1266
    .local v3, "result":I
    :goto_0
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@6a
    move-result-object v5

    #@6b
    const v2, 0x2402c

    #@6e
    const/4 v4, 0x0

    #@6f
    move-object v0, p0

    #@70
    move-object v1, p2

    #@71
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@74
    .line 1246
    .end local v3    # "result":I
    .end local v8    # "bssid":J
    :goto_1
    return-void

    #@75
    .line 1264
    .restart local v8    # "bssid":J
    :cond_4
    const/4 v3, 0x0

    #@76
    .restart local v3    # "result":I
    goto :goto_0

    #@77
    .line 1268
    .end local v3    # "result":I
    .end local v8    # "bssid":J
    :catch_0
    move-exception v11

    #@78
    .line 1269
    .local v11, "iae":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v0, "WifiMonitor"

    #@7b
    new-instance v1, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    const-string/jumbo v2, "Bad MAC address in ANQP response: "

    #@83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v1

    #@87
    invoke-virtual {v11}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    #@8a
    move-result-object v2

    #@8b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v1

    #@8f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v1

    #@93
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@96
    goto :goto_1
.end method

.method private handleAssociatedBSSIDEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "eventStr"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1089
    const/4 v5, 0x0

    #@1
    .line 1090
    .local v5, "BSSID":Ljava/lang/String;
    sget-object v0, Lcom/android/server/wifi/WifiMonitor;->mAssociatedPattern:Ljava/util/regex/Pattern;

    #@3
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@6
    move-result-object v6

    #@7
    .line 1091
    .local v6, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 1092
    const/4 v0, 0x1

    #@e
    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@11
    move-result-object v5

    #@12
    .line 1094
    .end local v5    # "BSSID":Ljava/lang/String;
    :cond_0
    sget v3, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    #@14
    const v2, 0x20093

    #@17
    const/4 v4, 0x0

    #@18
    move-object v0, p0

    #@19
    move-object v1, p2

    #@1a
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    #@1d
    .line 1088
    return-void
.end method

.method private handleDriverEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1034
    if-nez p1, :cond_0

    #@2
    .line 1035
    return-void

    #@3
    .line 1037
    :cond_0
    const-string/jumbo v0, "HANGED"

    #@6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 1038
    const v0, 0x2400c

    #@f
    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    #@12
    .line 1033
    :cond_1
    return-void
.end method

.method private handleEvent(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "remainder"    # Ljava/lang/String;
    .param p3, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1049
    sget-boolean v0, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1050
    const-string/jumbo v0, "WifiMonitor"

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "handleEvent "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    const-string/jumbo v2, " "

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 1052
    :cond_0
    sparse-switch p1, :sswitch_data_0

    #@30
    .line 1048
    :cond_1
    :goto_0
    return-void

    #@31
    .line 1054
    :sswitch_0
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@33
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/wifi/WifiMonitor;->handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@36
    goto :goto_0

    #@37
    .line 1058
    :sswitch_1
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@39
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/wifi/WifiMonitor;->handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@3c
    goto :goto_0

    #@3d
    .line 1062
    :sswitch_2
    const v0, 0x24005

    #@40
    invoke-direct {p0, p3, v0}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    #@43
    goto :goto_0

    #@44
    .line 1066
    :sswitch_3
    const v0, 0x24011

    #@47
    invoke-direct {p0, p3, v0}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    #@4a
    goto :goto_0

    #@4b
    .line 1070
    :sswitch_4
    sget-boolean v0, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    #@4d
    if-eqz v0, :cond_1

    #@4f
    .line 1071
    const-string/jumbo v0, "WifiMonitor"

    #@52
    new-instance v1, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v2, "handleEvent unknown: "

    #@5a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v1

    #@5e
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@61
    move-result-object v2

    #@62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v1

    #@66
    const-string/jumbo v2, " "

    #@69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v1

    #@6d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v1

    #@71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v1

    #@75
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@78
    goto :goto_0

    #@79
    .line 1052
    nop

    #@7a
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x4 -> :sswitch_2
        0xe -> :sswitch_4
        0xf -> :sswitch_3
    .end sparse-switch
.end method

.method private handleHostApEvents(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "dataString"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1231
    const-string/jumbo v1, " "

    #@4
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 1233
    .local v0, "tokens":[Ljava/lang/String;
    aget-object v1, v0, v3

    #@a
    const-string/jumbo v2, "AP-STA-CONNECTED"

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 1234
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@15
    invoke-direct {v1, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    #@18
    const v2, 0x2402a

    #@1b
    invoke-direct {p0, p2, v2, v1}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    #@1e
    .line 1230
    :cond_0
    :goto_0
    return-void

    #@1f
    .line 1236
    :cond_1
    aget-object v1, v0, v3

    #@21
    const-string/jumbo v2, "AP-STA-DISCONNECTED"

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_0

    #@2a
    .line 1237
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@2c
    invoke-direct {v1, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    #@2f
    const v2, 0x24029

    #@32
    invoke-direct {p0, p2, v2, v1}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    #@35
    goto :goto_0
.end method

.method private handleIconResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "eventStr"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1275
    const-string/jumbo v5, " "

    #@3
    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@6
    move-result-object v3

    #@7
    .line 1276
    .local v3, "segments":[Ljava/lang/String;
    array-length v5, v3

    #@8
    const/4 v6, 0x4

    #@9
    if-eq v5, v6, :cond_0

    #@b
    .line 1277
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v6, "Incorrect number of segments"

    #@10
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v5

    #@14
    .line 1281
    :cond_0
    const/4 v5, 0x1

    #@15
    :try_start_0
    aget-object v0, v3, v5

    #@17
    .line 1282
    .local v0, "bssid":Ljava/lang/String;
    const/4 v5, 0x2

    #@18
    aget-object v1, v3, v5

    #@1a
    .line 1283
    .local v1, "fileName":Ljava/lang/String;
    const/4 v5, 0x3

    #@1b
    aget-object v5, v3, v5

    #@1d
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@20
    move-result v4

    #@21
    .line 1285
    .local v4, "size":I
    new-instance v5, Lcom/android/server/wifi/hotspot2/IconEvent;

    #@23
    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/Utils;->parseMac(Ljava/lang/String;)J

    #@26
    move-result-wide v6

    #@27
    invoke-direct {v5, v6, v7, v1, v4}, Lcom/android/server/wifi/hotspot2/IconEvent;-><init>(JLjava/lang/String;I)V

    #@2a
    .line 1284
    const v6, 0x24035

    #@2d
    invoke-direct {p0, p2, v6, v5}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    .line 1273
    return-void

    #@31
    .line 1287
    .end local v0    # "bssid":Ljava/lang/String;
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v4    # "size":I
    :catch_0
    move-exception v2

    #@32
    .line 1288
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@34
    const-string/jumbo v6, "Bad numeral"

    #@37
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v5
.end method

.method private handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "newState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1412
    const/4 v6, 0x0

    #@1
    .line 1413
    .local v6, "BSSID":Ljava/lang/String;
    const/4 v4, -0x1

    #@2
    .line 1414
    .local v4, "networkId":I
    const/4 v5, 0x0

    #@3
    .line 1415
    .local v5, "reason":I
    const/4 v14, -0x1

    #@4
    .line 1416
    .local v14, "ind":I
    const/4 v10, 0x0

    #@5
    .line 1418
    .local v10, "local":I
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@7
    move-object/from16 v0, p1

    #@9
    if-ne v0, v1, :cond_3

    #@b
    .line 1419
    sget-object v1, Lcom/android/server/wifi/WifiMonitor;->mConnectedEventPattern:Ljava/util/regex/Pattern;

    #@d
    move-object/from16 v0, p2

    #@f
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@12
    move-result-object v15

    #@13
    .line 1420
    .local v15, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->find()Z

    #@16
    move-result v1

    #@17
    if-nez v1, :cond_2

    #@19
    .line 1421
    sget-boolean v1, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    #@1b
    if-eqz v1, :cond_0

    #@1d
    const-string/jumbo v1, "WifiMonitor"

    #@20
    const-string/jumbo v2, "handleNetworkStateChange: Couldnt find BSSID in event string"

    #@23
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 1430
    .end local v6    # "BSSID":Ljava/lang/String;
    :cond_0
    :goto_0
    const v3, 0x24003

    #@29
    move-object/from16 v1, p0

    #@2b
    move-object/from16 v2, p3

    #@2d
    invoke-direct/range {v1 .. v6}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    #@30
    .line 1411
    .end local v15    # "match":Ljava/util/regex/Matcher;
    :cond_1
    :goto_1
    return-void

    #@31
    .line 1423
    .restart local v6    # "BSSID":Ljava/lang/String;
    .restart local v15    # "match":Ljava/util/regex/Matcher;
    :cond_2
    const/4 v1, 0x1

    #@32
    invoke-virtual {v15, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@35
    move-result-object v6

    #@36
    .line 1425
    .local v6, "BSSID":Ljava/lang/String;
    const/4 v1, 0x2

    #@37
    :try_start_0
    invoke-virtual {v15, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@3e
    move-result v4

    #@3f
    goto :goto_0

    #@40
    .line 1426
    :catch_0
    move-exception v13

    #@41
    .line 1427
    .local v13, "e":Ljava/lang/NumberFormatException;
    const/4 v4, -0x1

    #@42
    goto :goto_0

    #@43
    .line 1431
    .end local v13    # "e":Ljava/lang/NumberFormatException;
    .end local v15    # "match":Ljava/util/regex/Matcher;
    .local v6, "BSSID":Ljava/lang/String;
    :cond_3
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@45
    move-object/from16 v0, p1

    #@47
    if-ne v0, v1, :cond_1

    #@49
    .line 1432
    sget-object v1, Lcom/android/server/wifi/WifiMonitor;->mDisconnectedEventPattern:Ljava/util/regex/Pattern;

    #@4b
    move-object/from16 v0, p2

    #@4d
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@50
    move-result-object v15

    #@51
    .line 1433
    .restart local v15    # "match":Ljava/util/regex/Matcher;
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->find()Z

    #@54
    move-result v1

    #@55
    if-nez v1, :cond_6

    #@57
    .line 1434
    sget-boolean v1, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    #@59
    if-eqz v1, :cond_4

    #@5b
    const-string/jumbo v1, "WifiMonitor"

    #@5e
    const-string/jumbo v2, "handleNetworkStateChange: Could not parse disconnect string"

    #@61
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@64
    .line 1448
    .end local v6    # "BSSID":Ljava/lang/String;
    :cond_4
    :goto_2
    sget-boolean v1, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    #@66
    if-eqz v1, :cond_5

    #@68
    const-string/jumbo v1, "WifiMonitor"

    #@6b
    new-instance v2, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    const-string/jumbo v3, "WifiMonitor notify network disconnect: "

    #@73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v2

    #@77
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v2

    #@7b
    .line 1450
    const-string/jumbo v3, " reason="

    #@7e
    .line 1448
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v2

    #@82
    .line 1450
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@85
    move-result-object v3

    #@86
    .line 1448
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v2

    #@8a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v2

    #@8e
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@91
    .line 1451
    :cond_5
    const v9, 0x24004

    #@94
    move-object/from16 v7, p0

    #@96
    move-object/from16 v8, p3

    #@98
    move v11, v5

    #@99
    move-object v12, v6

    #@9a
    invoke-direct/range {v7 .. v12}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    #@9d
    goto :goto_1

    #@9e
    .line 1436
    .restart local v6    # "BSSID":Ljava/lang/String;
    :cond_6
    const/4 v1, 0x1

    #@9f
    invoke-virtual {v15, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@a2
    move-result-object v6

    #@a3
    .line 1438
    .local v6, "BSSID":Ljava/lang/String;
    const/4 v1, 0x2

    #@a4
    :try_start_1
    invoke-virtual {v15, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@a7
    move-result-object v1

    #@a8
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    #@ab
    move-result v5

    #@ac
    .line 1443
    :goto_3
    const/4 v1, 0x3

    #@ad
    :try_start_2
    invoke-virtual {v15, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@b0
    move-result-object v1

    #@b1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    #@b4
    move-result v10

    #@b5
    goto :goto_2

    #@b6
    .line 1439
    :catch_1
    move-exception v13

    #@b7
    .line 1440
    .restart local v13    # "e":Ljava/lang/NumberFormatException;
    const/4 v5, -0x1

    #@b8
    goto :goto_3

    #@b9
    .line 1444
    .end local v13    # "e":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v13

    #@ba
    .line 1445
    .restart local v13    # "e":Ljava/lang/NumberFormatException;
    const/4 v10, -0x1

    #@bb
    goto :goto_2
.end method

.method private handleP2pEvents(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "dataString"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1179
    const-string/jumbo v3, "P2P-DEVICE-FOUND"

    #@3
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@6
    move-result v3

    #@7
    if-eqz v3, :cond_1

    #@9
    .line 1180
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->getWifiP2pDevice(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    #@c
    move-result-object v0

    #@d
    .line 1181
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v0, :cond_0

    #@f
    const v3, 0x24015

    #@12
    invoke-direct {p0, p2, v3, v0}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    #@15
    .line 1178
    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_0
    :goto_0
    return-void

    #@16
    .line 1182
    :cond_1
    const-string/jumbo v3, "P2P-DEVICE-LOST"

    #@19
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_2

    #@1f
    .line 1183
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->getWifiP2pDevice(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    #@22
    move-result-object v0

    #@23
    .line 1184
    .restart local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v0, :cond_0

    #@25
    const v3, 0x24016

    #@28
    invoke-direct {p0, p2, v3, v0}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    #@2b
    goto :goto_0

    #@2c
    .line 1185
    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_2
    const-string/jumbo v3, "P2P-FIND-STOPPED"

    #@2f
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@32
    move-result v3

    #@33
    if-eqz v3, :cond_3

    #@35
    .line 1186
    const v3, 0x24025

    #@38
    invoke-direct {p0, p2, v3}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    #@3b
    goto :goto_0

    #@3c
    .line 1187
    :cond_3
    const-string/jumbo v3, "P2P-GO-NEG-REQUEST"

    #@3f
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@42
    move-result v3

    #@43
    if-eqz v3, :cond_4

    #@45
    .line 1188
    new-instance v3, Landroid/net/wifi/p2p/WifiP2pConfig;

    #@47
    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>(Ljava/lang/String;)V

    #@4a
    const v4, 0x24017

    #@4d
    invoke-direct {p0, p2, v4, v3}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    #@50
    goto :goto_0

    #@51
    .line 1189
    :cond_4
    const-string/jumbo v3, "P2P-GO-NEG-SUCCESS"

    #@54
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@57
    move-result v3

    #@58
    if-eqz v3, :cond_5

    #@5a
    .line 1190
    const v3, 0x24019

    #@5d
    invoke-direct {p0, p2, v3}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    #@60
    goto :goto_0

    #@61
    .line 1191
    :cond_5
    const-string/jumbo v3, "P2P-GO-NEG-FAILURE"

    #@64
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@67
    move-result v3

    #@68
    if-eqz v3, :cond_6

    #@6a
    .line 1192
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->p2pError(Ljava/lang/String;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@6d
    move-result-object v3

    #@6e
    const v4, 0x2401a

    #@71
    invoke-direct {p0, p2, v4, v3}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    #@74
    goto :goto_0

    #@75
    .line 1193
    :cond_6
    const-string/jumbo v3, "P2P-GROUP-FORMATION-SUCCESS"

    #@78
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@7b
    move-result v3

    #@7c
    if-eqz v3, :cond_7

    #@7e
    .line 1194
    const v3, 0x2401b

    #@81
    invoke-direct {p0, p2, v3}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    #@84
    goto :goto_0

    #@85
    .line 1195
    :cond_7
    const-string/jumbo v3, "P2P-GROUP-FORMATION-FAILURE"

    #@88
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@8b
    move-result v3

    #@8c
    if-eqz v3, :cond_8

    #@8e
    .line 1196
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->p2pError(Ljava/lang/String;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@91
    move-result-object v3

    #@92
    const v4, 0x2401c

    #@95
    invoke-direct {p0, p2, v4, v3}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    #@98
    goto/16 :goto_0

    #@9a
    .line 1197
    :cond_8
    const-string/jumbo v3, "P2P-GROUP-STARTED"

    #@9d
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@a0
    move-result v3

    #@a1
    if-eqz v3, :cond_9

    #@a3
    .line 1198
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->getWifiP2pGroup(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@a6
    move-result-object v1

    #@a7
    .line 1199
    .local v1, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    if-eqz v1, :cond_0

    #@a9
    const v3, 0x2401d

    #@ac
    invoke-direct {p0, p2, v3, v1}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    #@af
    goto/16 :goto_0

    #@b1
    .line 1200
    .end local v1    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    :cond_9
    const-string/jumbo v3, "P2P-GROUP-REMOVED"

    #@b4
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@b7
    move-result v3

    #@b8
    if-eqz v3, :cond_a

    #@ba
    .line 1201
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->getWifiP2pGroup(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@bd
    move-result-object v1

    #@be
    .line 1202
    .restart local v1    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    if-eqz v1, :cond_0

    #@c0
    const v3, 0x2401e

    #@c3
    invoke-direct {p0, p2, v3, v1}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    #@c6
    goto/16 :goto_0

    #@c8
    .line 1203
    .end local v1    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    :cond_a
    const-string/jumbo v3, "P2P-INVITATION-RECEIVED"

    #@cb
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@ce
    move-result v3

    #@cf
    if-eqz v3, :cond_b

    #@d1
    .line 1204
    new-instance v3, Landroid/net/wifi/p2p/WifiP2pGroup;

    #@d3
    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    #@d6
    const v4, 0x2401f

    #@d9
    invoke-direct {p0, p2, v4, v3}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    #@dc
    goto/16 :goto_0

    #@de
    .line 1205
    :cond_b
    const-string/jumbo v3, "P2P-INVITATION-RESULT"

    #@e1
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@e4
    move-result v3

    #@e5
    if-eqz v3, :cond_c

    #@e7
    .line 1206
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->p2pError(Ljava/lang/String;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@ea
    move-result-object v3

    #@eb
    const v4, 0x24020

    #@ee
    invoke-direct {p0, p2, v4, v3}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    #@f1
    goto/16 :goto_0

    #@f3
    .line 1207
    :cond_c
    const-string/jumbo v3, "P2P-PROV-DISC-PBC-REQ"

    #@f6
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@f9
    move-result v3

    #@fa
    if-eqz v3, :cond_d

    #@fc
    .line 1208
    new-instance v3, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    #@fe
    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    #@101
    const v4, 0x24021

    #@104
    invoke-direct {p0, p2, v4, v3}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    #@107
    goto/16 :goto_0

    #@109
    .line 1209
    :cond_d
    const-string/jumbo v3, "P2P-PROV-DISC-PBC-RESP"

    #@10c
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@10f
    move-result v3

    #@110
    if-eqz v3, :cond_e

    #@112
    .line 1210
    new-instance v3, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    #@114
    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    #@117
    const v4, 0x24022

    #@11a
    invoke-direct {p0, p2, v4, v3}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    #@11d
    goto/16 :goto_0

    #@11f
    .line 1211
    :cond_e
    const-string/jumbo v3, "P2P-PROV-DISC-ENTER-PIN"

    #@122
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@125
    move-result v3

    #@126
    if-eqz v3, :cond_f

    #@128
    .line 1212
    new-instance v3, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    #@12a
    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    #@12d
    const v4, 0x24023

    #@130
    invoke-direct {p0, p2, v4, v3}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    #@133
    goto/16 :goto_0

    #@135
    .line 1213
    :cond_f
    const-string/jumbo v3, "P2P-PROV-DISC-SHOW-PIN"

    #@138
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@13b
    move-result v3

    #@13c
    if-eqz v3, :cond_10

    #@13e
    .line 1214
    new-instance v3, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    #@140
    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    #@143
    const v4, 0x24024

    #@146
    invoke-direct {p0, p2, v4, v3}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    #@149
    goto/16 :goto_0

    #@14b
    .line 1215
    :cond_10
    const-string/jumbo v3, "P2P-PROV-DISC-FAILURE"

    #@14e
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@151
    move-result v3

    #@152
    if-eqz v3, :cond_11

    #@154
    .line 1216
    const v3, 0x24027

    #@157
    invoke-direct {p0, p2, v3}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    #@15a
    goto/16 :goto_0

    #@15c
    .line 1217
    :cond_11
    const-string/jumbo v3, "P2P-SERV-DISC-RESP"

    #@15f
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@162
    move-result v3

    #@163
    if-eqz v3, :cond_0

    #@165
    .line 1218
    invoke-static {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->newInstance(Ljava/lang/String;)Ljava/util/List;

    #@168
    move-result-object v2

    #@169
    .line 1219
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;>;"
    if-eqz v2, :cond_12

    #@16b
    .line 1220
    const v3, 0x24026

    #@16e
    invoke-direct {p0, p2, v3, v2}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    #@171
    goto/16 :goto_0

    #@173
    .line 1222
    :cond_12
    const-string/jumbo v3, "WifiMonitor"

    #@176
    new-instance v4, Ljava/lang/StringBuilder;

    #@178
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@17b
    const-string/jumbo v5, "Null service resp "

    #@17e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@181
    move-result-object v4

    #@182
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@185
    move-result-object v4

    #@186
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@189
    move-result-object v4

    #@18a
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@18d
    goto/16 :goto_0
.end method

.method private handleRequests(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "dataString"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    const v12, 0x24010

    #@3
    const/4 v2, 0x4

    #@4
    const/4 v1, 0x2

    #@5
    const/4 v3, 0x1

    #@6
    .line 1305
    const/4 v5, 0x0

    #@7
    .line 1306
    .local v5, "SSID":Ljava/lang/String;
    const/4 v4, -0x2

    #@8
    .line 1307
    .local v4, "reason":I
    sget v0, Lcom/android/server/wifi/WifiMonitor;->REQUEST_PREFIX_LEN_STR:I

    #@a
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@d
    move-result-object v11

    #@e
    .line 1308
    .local v11, "requestName":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 1309
    return-void

    #@15
    .line 1311
    :cond_0
    const-string/jumbo v0, "IDENTITY"

    #@18
    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_3

    #@1e
    .line 1312
    sget-object v0, Lcom/android/server/wifi/WifiMonitor;->mRequestIdentityPattern:Ljava/util/regex/Pattern;

    #@20
    invoke-virtual {v0, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@23
    move-result-object v8

    #@24
    .line 1313
    .local v8, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_2

    #@2a
    .line 1314
    invoke-virtual {v8, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@2d
    move-result-object v5

    #@2e
    .line 1316
    .local v5, "SSID":Ljava/lang/String;
    const/4 v0, 0x1

    #@2f
    :try_start_0
    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    move-result v4

    #@37
    .line 1323
    .end local v5    # "SSID":Ljava/lang/String;
    :goto_0
    sget v3, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    #@39
    const v2, 0x2400f

    #@3c
    move-object v0, p0

    #@3d
    move-object v1, p2

    #@3e
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    #@41
    .line 1304
    .end local v8    # "match":Ljava/util/regex/Matcher;
    :cond_1
    :goto_1
    return-void

    #@42
    .line 1317
    .restart local v5    # "SSID":Ljava/lang/String;
    .restart local v8    # "match":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v7

    #@43
    .line 1318
    .local v7, "e":Ljava/lang/NumberFormatException;
    const/4 v4, -0x1

    #@44
    goto :goto_0

    #@45
    .line 1321
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    .local v5, "SSID":Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, "WifiMonitor"

    #@48
    new-instance v1, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v2, "didn\'t find SSID "

    #@50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v1

    #@58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v1

    #@5c
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5f
    goto :goto_0

    #@60
    .line 1324
    .end local v8    # "match":Ljava/util/regex/Matcher;
    :cond_3
    const-string/jumbo v0, "SIM"

    #@63
    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@66
    move-result v0

    #@67
    if-eqz v0, :cond_6

    #@69
    .line 1325
    sget-object v0, Lcom/android/server/wifi/WifiMonitor;->mRequestGsmAuthPattern:Ljava/util/regex/Pattern;

    #@6b
    invoke-virtual {v0, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@6e
    move-result-object v9

    #@6f
    .line 1326
    .local v9, "matchGsm":Ljava/util/regex/Matcher;
    sget-object v0, Lcom/android/server/wifi/WifiMonitor;->mRequestUmtsAuthPattern:Ljava/util/regex/Pattern;

    #@71
    invoke-virtual {v0, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@74
    move-result-object v10

    #@75
    .line 1328
    .local v10, "matchUmts":Ljava/util/regex/Matcher;
    new-instance v6, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;

    #@77
    invoke-direct {v6}, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;-><init>()V

    #@7a
    .line 1329
    .local v6, "data":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    #@7d
    move-result v0

    #@7e
    if-eqz v0, :cond_4

    #@80
    .line 1330
    invoke-virtual {v9, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@83
    move-result-object v0

    #@84
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@87
    move-result v0

    #@88
    iput v0, v6, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->networkId:I

    #@8a
    .line 1331
    iput v2, v6, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    #@8c
    .line 1332
    invoke-virtual {v9, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@8f
    move-result-object v0

    #@90
    iput-object v0, v6, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->ssid:Ljava/lang/String;

    #@92
    .line 1333
    invoke-virtual {v9, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@95
    move-result-object v0

    #@96
    const-string/jumbo v1, ":"

    #@99
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@9c
    move-result-object v0

    #@9d
    iput-object v0, v6, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->data:[Ljava/lang/String;

    #@9f
    .line 1334
    invoke-direct {p0, p2, v12, v6}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    #@a2
    goto :goto_1

    #@a3
    .line 1335
    :cond_4
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    #@a6
    move-result v0

    #@a7
    if-eqz v0, :cond_5

    #@a9
    .line 1336
    invoke-virtual {v10, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@ac
    move-result-object v0

    #@ad
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@b0
    move-result v0

    #@b1
    iput v0, v6, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->networkId:I

    #@b3
    .line 1337
    const/4 v0, 0x5

    #@b4
    iput v0, v6, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    #@b6
    .line 1338
    invoke-virtual {v10, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@b9
    move-result-object v0

    #@ba
    iput-object v0, v6, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->ssid:Ljava/lang/String;

    #@bc
    .line 1339
    new-array v0, v1, [Ljava/lang/String;

    #@be
    iput-object v0, v6, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->data:[Ljava/lang/String;

    #@c0
    .line 1340
    iget-object v0, v6, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->data:[Ljava/lang/String;

    #@c2
    invoke-virtual {v10, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@c5
    move-result-object v1

    #@c6
    const/4 v2, 0x0

    #@c7
    aput-object v1, v0, v2

    #@c9
    .line 1341
    iget-object v0, v6, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->data:[Ljava/lang/String;

    #@cb
    const/4 v1, 0x3

    #@cc
    invoke-virtual {v10, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@cf
    move-result-object v1

    #@d0
    aput-object v1, v0, v3

    #@d2
    .line 1342
    invoke-direct {p0, p2, v12, v6}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    #@d5
    goto/16 :goto_1

    #@d7
    .line 1344
    :cond_5
    const-string/jumbo v0, "WifiMonitor"

    #@da
    new-instance v1, Ljava/lang/StringBuilder;

    #@dc
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@df
    const-string/jumbo v2, "couldn\'t parse SIM auth request - "

    #@e2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v1

    #@e6
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v1

    #@ea
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ed
    move-result-object v1

    #@ee
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@f1
    goto/16 :goto_1

    #@f3
    .line 1348
    .end local v6    # "data":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    .end local v9    # "matchGsm":Ljava/util/regex/Matcher;
    .end local v10    # "matchUmts":Ljava/util/regex/Matcher;
    :cond_6
    sget-boolean v0, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    #@f5
    if-eqz v0, :cond_1

    #@f7
    const-string/jumbo v0, "WifiMonitor"

    #@fa
    new-instance v1, Ljava/lang/StringBuilder;

    #@fc
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@ff
    const-string/jumbo v2, "couldn\'t identify request type - "

    #@102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@105
    move-result-object v1

    #@106
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    move-result-object v1

    #@10a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10d
    move-result-object v1

    #@10e
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@111
    goto/16 :goto_1
.end method

.method private handleSupplicantStateChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 19
    .param p1, "dataString"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1358
    const/16 v18, 0x0

    #@2
    .line 1359
    .local v18, "wifiSsid":Landroid/net/wifi/WifiSsid;
    const-string/jumbo v1, "SSID="

    #@5
    move-object/from16 v0, p1

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@a
    move-result v10

    #@b
    .line 1360
    .local v10, "index":I
    const/4 v1, -0x1

    #@c
    if-eq v10, v1, :cond_0

    #@e
    .line 1362
    add-int/lit8 v1, v10, 0x5

    #@10
    move-object/from16 v0, p1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    .line 1361
    invoke-static {v1}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    #@19
    move-result-object v18

    #@1a
    .line 1364
    .end local v18    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    :cond_0
    const-string/jumbo v1, " "

    #@1d
    move-object/from16 v0, p1

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@22
    move-result-object v8

    #@23
    .line 1366
    .local v8, "dataTokens":[Ljava/lang/String;
    const/4 v7, 0x0

    #@24
    .line 1367
    .local v7, "BSSID":Ljava/lang/String;
    const/4 v12, -0x1

    #@25
    .line 1368
    .local v12, "networkId":I
    const/4 v13, -0x1

    #@26
    .line 1369
    .local v13, "newState":I
    const/4 v1, 0x0

    #@27
    array-length v2, v8

    #@28
    .end local v7    # "BSSID":Ljava/lang/String;
    :goto_0
    if-ge v1, v2, :cond_5

    #@2a
    aget-object v16, v8, v1

    #@2c
    .line 1370
    .local v16, "token":Ljava/lang/String;
    const-string/jumbo v3, "="

    #@2f
    move-object/from16 v0, v16

    #@31
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@34
    move-result-object v11

    #@35
    .line 1371
    .local v11, "nameValue":[Ljava/lang/String;
    array-length v3, v11

    #@36
    const/4 v4, 0x2

    #@37
    if-eq v3, v4, :cond_2

    #@39
    .line 1369
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 1375
    :cond_2
    const/4 v3, 0x0

    #@3d
    aget-object v3, v11, v3

    #@3f
    const-string/jumbo v4, "BSSID"

    #@42
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v3

    #@46
    if-eqz v3, :cond_3

    #@48
    .line 1376
    const/4 v3, 0x1

    #@49
    aget-object v7, v11, v3

    #@4b
    .local v7, "BSSID":Ljava/lang/String;
    goto :goto_1

    #@4c
    .line 1382
    .end local v7    # "BSSID":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x1

    #@4d
    :try_start_0
    aget-object v3, v11, v3

    #@4f
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@52
    move-result v17

    #@53
    .line 1387
    .local v17, "value":I
    const/4 v3, 0x0

    #@54
    aget-object v3, v11, v3

    #@56
    const-string/jumbo v4, "id"

    #@59
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5c
    move-result v3

    #@5d
    if-eqz v3, :cond_4

    #@5f
    .line 1388
    move/from16 v12, v17

    #@61
    goto :goto_1

    #@62
    .line 1389
    :cond_4
    const/4 v3, 0x0

    #@63
    aget-object v3, v11, v3

    #@65
    const-string/jumbo v4, "state"

    #@68
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6b
    move-result v3

    #@6c
    if-eqz v3, :cond_1

    #@6e
    .line 1390
    move/from16 v13, v17

    #@70
    goto :goto_1

    #@71
    .line 1394
    .end local v11    # "nameValue":[Ljava/lang/String;
    .end local v16    # "token":Ljava/lang/String;
    .end local v17    # "value":I
    :cond_5
    const/4 v1, -0x1

    #@72
    if-ne v13, v1, :cond_6

    #@74
    return-void

    #@75
    .line 1396
    :cond_6
    sget-object v14, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    #@77
    .line 1397
    .local v14, "newSupplicantState":Landroid/net/wifi/SupplicantState;
    invoke-static {}, Landroid/net/wifi/SupplicantState;->values()[Landroid/net/wifi/SupplicantState;

    #@7a
    move-result-object v2

    #@7b
    const/4 v1, 0x0

    #@7c
    array-length v3, v2

    #@7d
    :goto_2
    if-ge v1, v3, :cond_7

    #@7f
    aget-object v15, v2, v1

    #@81
    .line 1398
    .local v15, "state":Landroid/net/wifi/SupplicantState;
    invoke-virtual {v15}, Landroid/net/wifi/SupplicantState;->ordinal()I

    #@84
    move-result v4

    #@85
    if-ne v4, v13, :cond_9

    #@87
    .line 1399
    move-object v14, v15

    #@88
    .line 1403
    .end local v15    # "state":Landroid/net/wifi/SupplicantState;
    :cond_7
    sget-object v1, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    #@8a
    if-ne v14, v1, :cond_8

    #@8c
    .line 1404
    const-string/jumbo v1, "WifiMonitor"

    #@8f
    new-instance v2, Ljava/lang/StringBuilder;

    #@91
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@94
    const-string/jumbo v3, "Invalid supplicant state: "

    #@97
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v2

    #@9b
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v2

    #@9f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a2
    move-result-object v2

    #@a3
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@a6
    .line 1406
    :cond_8
    sget v4, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    #@a8
    .line 1407
    new-instance v6, Lcom/android/server/wifi/StateChangeResult;

    #@aa
    move-object/from16 v0, v18

    #@ac
    invoke-direct {v6, v12, v0, v7, v14}, Lcom/android/server/wifi/StateChangeResult;-><init>(ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V

    #@af
    .line 1406
    const v3, 0x24006

    #@b2
    const/4 v5, 0x0

    #@b3
    move-object/from16 v1, p0

    #@b5
    move-object/from16 v2, p2

    #@b7
    invoke-direct/range {v1 .. v6}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    #@ba
    .line 1357
    return-void

    #@bb
    .line 1397
    .restart local v15    # "state":Landroid/net/wifi/SupplicantState;
    :cond_9
    add-int/lit8 v1, v1, 0x1

    #@bd
    goto :goto_2

    #@be
    .line 1383
    .end local v14    # "newSupplicantState":Landroid/net/wifi/SupplicantState;
    .end local v15    # "state":Landroid/net/wifi/SupplicantState;
    .restart local v11    # "nameValue":[Ljava/lang/String;
    .restart local v16    # "token":Ljava/lang/String;
    :catch_0
    move-exception v9

    #@bf
    .local v9, "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_1
.end method

.method private handleTargetBSSIDEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "eventStr"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1080
    const/4 v5, 0x0

    #@1
    .line 1081
    .local v5, "BSSID":Ljava/lang/String;
    sget-object v0, Lcom/android/server/wifi/WifiMonitor;->mTargetBSSIDPattern:Ljava/util/regex/Pattern;

    #@3
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@6
    move-result-object v6

    #@7
    .line 1082
    .local v6, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 1083
    const/4 v0, 0x1

    #@e
    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@11
    move-result-object v5

    #@12
    .line 1085
    .end local v5    # "BSSID":Ljava/lang/String;
    :cond_0
    sget v3, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    #@14
    const v2, 0x2008d

    #@17
    const/4 v4, 0x0

    #@18
    move-object v0, p0

    #@19
    move-object v1, p2

    #@1a
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    #@1d
    .line 1079
    return-void
.end method

.method private handleWnmFrame(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "eventStr"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1294
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wifi/WnmData;->buildWnmData(Ljava/lang/String;)Lcom/android/server/wifi/WnmData;

    #@3
    move-result-object v1

    #@4
    .line 1295
    .local v1, "wnmData":Lcom/android/server/wifi/WnmData;
    const v2, 0x2403d

    #@7
    invoke-direct {p0, p2, v2, v1}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 1292
    .end local v1    # "wnmData":Lcom/android/server/wifi/WnmData;
    :goto_0
    return-void

    #@b
    .line 1296
    :catch_0
    move-exception v0

    #@c
    .line 1297
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WifiMonitor"

    #@f
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v4, "Bad WNM event: \'"

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    const-string/jumbo v4, "\'"

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    goto :goto_0
.end method

.method private handleWpsFailEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "dataString"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const v8, 0x24009

    #@4
    .line 1099
    const-string/jumbo v7, "WPS-FAIL msg=\\d+(?: config_error=(\\d+))?(?: reason=(\\d+))?"

    #@7
    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@a
    move-result-object v3

    #@b
    .line 1100
    .local v3, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@e
    move-result-object v2

    #@f
    .line 1101
    .local v2, "match":Ljava/util/regex/Matcher;
    const/4 v4, 0x0

    #@10
    .line 1102
    .local v4, "reason":I
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    #@13
    move-result v7

    #@14
    if-eqz v7, :cond_1

    #@16
    .line 1103
    const/4 v7, 0x1

    #@17
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    .line 1104
    .local v1, "cfgErrStr":Ljava/lang/String;
    const/4 v7, 0x2

    #@1c
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@1f
    move-result-object v6

    #@20
    .line 1106
    .local v6, "reasonStr":Ljava/lang/String;
    if-eqz v6, :cond_0

    #@22
    .line 1107
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@25
    move-result v5

    #@26
    .line 1108
    .local v5, "reasonInt":I
    packed-switch v5, :pswitch_data_0

    #@29
    .line 1116
    move v4, v5

    #@2a
    .line 1120
    .end local v5    # "reasonInt":I
    :cond_0
    if-eqz v1, :cond_1

    #@2c
    .line 1121
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2f
    move-result v0

    #@30
    .line 1122
    .local v0, "cfgErrInt":I
    sparse-switch v0, :sswitch_data_0

    #@33
    .line 1130
    if-nez v4, :cond_1

    #@35
    move v4, v0

    #@36
    .line 1136
    .end local v0    # "cfgErrInt":I
    .end local v1    # "cfgErrStr":Ljava/lang/String;
    .end local v6    # "reasonStr":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p2, v8, v9, v4}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;III)V

    #@39
    .line 1098
    return-void

    #@3a
    .line 1110
    .restart local v1    # "cfgErrStr":Ljava/lang/String;
    .restart local v5    # "reasonInt":I
    .restart local v6    # "reasonStr":Ljava/lang/String;
    :pswitch_0
    const/4 v7, 0x5

    #@3b
    invoke-direct {p0, p2, v8, v7}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;II)V

    #@3e
    .line 1111
    return-void

    #@3f
    .line 1113
    :pswitch_1
    const/4 v7, 0x4

    #@40
    invoke-direct {p0, p2, v8, v7}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;II)V

    #@43
    .line 1114
    return-void

    #@44
    .line 1124
    .end local v5    # "reasonInt":I
    .restart local v0    # "cfgErrInt":I
    :sswitch_0
    const/4 v7, 0x6

    #@45
    invoke-direct {p0, p2, v8, v7}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;II)V

    #@48
    .line 1125
    return-void

    #@49
    .line 1127
    :sswitch_1
    const/4 v7, 0x3

    #@4a
    invoke-direct {p0, p2, v8, v7}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;II)V

    #@4d
    .line 1128
    return-void

    #@4e
    .line 1108
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    #@56
    .line 1122
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method private isMonitoring(Ljava/lang/String;)Z
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 568
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mMonitoringMap:Ljava/util/Map;

    #@2
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Boolean;

    #@8
    .line 569
    .local v0, "val":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    #@a
    .line 570
    const/4 v1, 0x0

    #@b
    return v1

    #@c
    .line 573
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@f
    move-result v1

    #@10
    return v1
.end method

.method private p2pError(Ljava/lang/String;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    .locals 8
    .param p1, "dataString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x2

    #@1
    const/4 v6, 0x1

    #@2
    .line 1141
    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNKNOWN:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@4
    .line 1142
    .local v1, "err":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    const-string/jumbo v4, " "

    #@7
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@a
    move-result-object v3

    #@b
    .line 1143
    .local v3, "tokens":[Ljava/lang/String;
    array-length v4, v3

    #@c
    if-ge v4, v7, :cond_0

    #@e
    return-object v1

    #@f
    .line 1144
    :cond_0
    aget-object v4, v3, v6

    #@11
    const-string/jumbo v5, "="

    #@14
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    .line 1145
    .local v2, "nameValue":[Ljava/lang/String;
    array-length v4, v2

    #@19
    if-eq v4, v7, :cond_1

    #@1b
    return-object v1

    #@1c
    .line 1148
    :cond_1
    aget-object v4, v2, v6

    #@1e
    const-string/jumbo v5, "FREQ_CONFLICT"

    #@21
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_2

    #@27
    .line 1149
    sget-object v4, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->NO_COMMON_CHANNEL:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@29
    return-object v4

    #@2a
    .line 1152
    :cond_2
    const/4 v4, 0x1

    #@2b
    :try_start_0
    aget-object v4, v2, v4

    #@2d
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@30
    move-result v4

    #@31
    invoke-static {v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->valueOf(I)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    move-result-object v1

    #@35
    .line 1156
    :goto_0
    return-object v1

    #@36
    .line 1153
    :catch_0
    move-exception v0

    #@37
    .line 1154
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    #@3a
    goto :goto_0
.end method

.method private sendMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 719
    if-eqz p1, :cond_0

    #@2
    .line 720
    invoke-virtual {p2, p1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    #@5
    .line 721
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    #@8
    .line 718
    :cond_0
    return-void
.end method

.method private sendMessage(Ljava/lang/String;I)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "what"    # I

    #@0
    .prologue
    .line 659
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    #@4
    move-result-object v0

    #@5
    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    #@8
    .line 658
    return-void
.end method

.method private sendMessage(Ljava/lang/String;II)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "what"    # I
    .param p3, "arg1"    # I

    #@0
    .prologue
    .line 667
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {v0, p2, p3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    #@9
    .line 666
    return-void
.end method

.method private sendMessage(Ljava/lang/String;III)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "what"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I

    #@0
    .prologue
    .line 671
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    #@4
    move-result-object v0

    #@5
    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    #@8
    .line 670
    return-void
.end method

.method private sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "what"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 675
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p2, p3, p4, p5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    #@4
    move-result-object v0

    #@5
    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    #@8
    .line 674
    return-void
.end method

.method private sendMessage(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 663
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    #@4
    move-result-object v0

    #@5
    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    #@8
    .line 662
    return-void
.end method

.method private sendMessage(Ljava/lang/String;Landroid/os/Message;)V
    .locals 10
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 679
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mHandlerMap:Ljava/util/Map;

    #@2
    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v5

    #@6
    check-cast v5, Landroid/util/SparseArray;

    #@8
    .line 680
    .local v5, "ifaceHandlers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Landroid/os/Handler;>;>;"
    if-eqz p1, :cond_3

    #@a
    if-eqz v5, :cond_3

    #@c
    .line 681
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->isMonitoring(Ljava/lang/String;)Z

    #@f
    move-result v7

    #@10
    if-eqz v7, :cond_1

    #@12
    .line 682
    const/4 v2, 0x1

    #@13
    .line 683
    .local v2, "firstHandler":Z
    iget v7, p2, Landroid/os/Message;->what:I

    #@15
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v6

    #@19
    check-cast v6, Ljava/util/Set;

    #@1b
    .line 684
    .local v6, "ifaceWhatHandlers":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/Handler;>;"
    if-eqz v6, :cond_2

    #@1d
    .line 685
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v4

    #@21
    .local v4, "handler$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v7

    #@25
    if-eqz v7, :cond_2

    #@27
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v3

    #@2b
    check-cast v3, Landroid/os/Handler;

    #@2d
    .line 686
    .local v3, "handler":Landroid/os/Handler;
    if-eqz v2, :cond_0

    #@2f
    .line 687
    const/4 v2, 0x0

    #@30
    .line 688
    invoke-direct {p0, v3, p2}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    #@33
    goto :goto_0

    #@34
    .line 691
    :cond_0
    invoke-static {p2}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    #@37
    move-result-object v7

    #@38
    invoke-direct {p0, v3, v7}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    #@3b
    goto :goto_0

    #@3c
    .line 696
    .end local v2    # "firstHandler":Z
    .end local v3    # "handler":Landroid/os/Handler;
    .end local v4    # "handler$iterator":Ljava/util/Iterator;
    .end local v6    # "ifaceWhatHandlers":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/Handler;>;"
    :cond_1
    sget-boolean v7, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    #@3e
    if-eqz v7, :cond_2

    #@40
    const-string/jumbo v7, "WifiMonitor"

    #@43
    new-instance v8, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v9, "Dropping event because ("

    #@4b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v8

    #@4f
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v8

    #@53
    const-string/jumbo v9, ") is stopped"

    #@56
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v8

    #@5a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v8

    #@5e
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@61
    .line 678
    :cond_2
    return-void

    #@62
    .line 699
    :cond_3
    sget-boolean v7, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    #@64
    if-eqz v7, :cond_4

    #@66
    const-string/jumbo v7, "WifiMonitor"

    #@69
    const-string/jumbo v8, "Sending to all monitors because there\'s no matching iface"

    #@6c
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6f
    .line 700
    :cond_4
    const/4 v2, 0x1

    #@70
    .line 701
    .restart local v2    # "firstHandler":Z
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mHandlerMap:Ljava/util/Map;

    #@72
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@75
    move-result-object v7

    #@76
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@79
    move-result-object v1

    #@7a
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@7d
    move-result v7

    #@7e
    if-eqz v7, :cond_2

    #@80
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@83
    move-result-object v0

    #@84
    check-cast v0, Ljava/util/Map$Entry;

    #@86
    .line 702
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseArray<Ljava/util/Set<Landroid/os/Handler;>;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@89
    move-result-object v7

    #@8a
    check-cast v7, Ljava/lang/String;

    #@8c
    invoke-direct {p0, v7}, Lcom/android/server/wifi/WifiMonitor;->isMonitoring(Ljava/lang/String;)Z

    #@8f
    move-result v7

    #@90
    if-eqz v7, :cond_5

    #@92
    .line 703
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@95
    move-result-object v7

    #@96
    check-cast v7, Landroid/util/SparseArray;

    #@98
    iget v8, p2, Landroid/os/Message;->what:I

    #@9a
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@9d
    move-result-object v6

    #@9e
    check-cast v6, Ljava/util/Set;

    #@a0
    .line 704
    .restart local v6    # "ifaceWhatHandlers":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/Handler;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a3
    move-result-object v4

    #@a4
    .restart local v4    # "handler$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@a7
    move-result v7

    #@a8
    if-eqz v7, :cond_5

    #@aa
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ad
    move-result-object v3

    #@ae
    check-cast v3, Landroid/os/Handler;

    #@b0
    .line 705
    .restart local v3    # "handler":Landroid/os/Handler;
    if-eqz v2, :cond_6

    #@b2
    .line 706
    const/4 v2, 0x0

    #@b3
    .line 707
    invoke-direct {p0, v3, p2}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    #@b6
    goto :goto_1

    #@b7
    .line 710
    :cond_6
    invoke-static {p2}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    #@ba
    move-result-object v7

    #@bb
    invoke-direct {p0, v3, v7}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    #@be
    goto :goto_1
.end method

.method private setMonitoring(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    #@0
    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mMonitoringMap:Ljava/util/Map;

    #@2
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 577
    return-void
.end method

.method private setMonitoringNone()V
    .locals 3

    #@0
    .prologue
    .line 581
    iget-object v2, p0, Lcom/android/server/wifi/WifiMonitor;->mMonitoringMap:Ljava/util/Map;

    #@2
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "iface$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/lang/String;

    #@16
    .line 582
    .local v0, "iface":Ljava/lang/String;
    const/4 v2, 0x0

    #@17
    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/WifiMonitor;->setMonitoring(Ljava/lang/String;Z)V

    #@1a
    goto :goto_0

    #@1b
    .line 580
    .end local v0    # "iface":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 541
    if-lez p1, :cond_0

    #@3
    .line 542
    const/4 v0, 0x1

    #@4
    sput-boolean v0, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    #@6
    .line 540
    :goto_0
    return-void

    #@7
    .line 544
    :cond_0
    sput-boolean v0, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    #@9
    goto :goto_0
.end method

.method public declared-synchronized killSupplicant(Z)V
    .locals 5
    .param p1, "p2pSupported"    # Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 639
    :try_start_0
    const-string/jumbo v2, "init.svc.wpa_supplicant"

    #@4
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 640
    .local v1, "suppState":Ljava/lang/String;
    if-nez v1, :cond_0

    #@a
    const-string/jumbo v1, "unknown"

    #@d
    .line 641
    :cond_0
    const-string/jumbo v2, "init.svc.p2p_supplicant"

    #@10
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    .line 642
    .local v0, "p2pSuppState":Ljava/lang/String;
    if-nez v0, :cond_1

    #@16
    const-string/jumbo v0, "unknown"

    #@19
    .line 644
    :cond_1
    const-string/jumbo v2, "WifiMonitor"

    #@1c
    new-instance v3, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v4, "killSupplicant p2p"

    #@24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    .line 645
    const-string/jumbo v4, " init.svc.wpa_supplicant="

    #@2f
    .line 644
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    .line 646
    const-string/jumbo v4, " init.svc.p2p_supplicant="

    #@3a
    .line 644
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v3

    #@46
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@49
    .line 647
    iget-object v2, p0, Lcom/android/server/wifi/WifiMonitor;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@4b
    invoke-virtual {v2, p1}, Lcom/android/server/wifi/WifiNative;->killSupplicant(Z)Z

    #@4e
    .line 648
    const/4 v2, 0x0

    #@4f
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiMonitor;->mConnected:Z

    #@51
    .line 649
    invoke-direct {p0}, Lcom/android/server/wifi/WifiMonitor;->setMonitoringNone()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@54
    monitor-exit p0

    #@55
    .line 638
    return-void

    #@56
    .end local v0    # "p2pSuppState":Ljava/lang/String;
    .end local v1    # "suppState":Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@57
    monitor-exit p0

    #@58
    throw v2
.end method

.method public declared-synchronized registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "what"    # I
    .param p3, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 553
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiMonitor;->mHandlerMap:Ljava/util/Map;

    #@3
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/util/SparseArray;

    #@9
    .line 554
    .local v0, "ifaceHandlers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Landroid/os/Handler;>;>;"
    if-nez v0, :cond_0

    #@b
    .line 555
    new-instance v0, Landroid/util/SparseArray;

    #@d
    .end local v0    # "ifaceHandlers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Landroid/os/Handler;>;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@10
    .line 556
    .restart local v0    # "ifaceHandlers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Landroid/os/Handler;>;>;"
    iget-object v2, p0, Lcom/android/server/wifi/WifiMonitor;->mHandlerMap:Ljava/util/Map;

    #@12
    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    .line 558
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Ljava/util/Set;

    #@1b
    .line 559
    .local v1, "ifaceWhatHandlers":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/Handler;>;"
    if-nez v1, :cond_1

    #@1d
    .line 560
    new-instance v1, Landroid/util/ArraySet;

    #@1f
    .end local v1    # "ifaceWhatHandlers":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/Handler;>;"
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@22
    .line 561
    .restart local v1    # "ifaceWhatHandlers":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/Handler;>;"
    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@25
    .line 563
    :cond_1
    invoke-interface {v1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    monitor-exit p0

    #@29
    .line 552
    return-void

    #@2a
    .end local v0    # "ifaceHandlers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Landroid/os/Handler;>;>;"
    .end local v1    # "ifaceWhatHandlers":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/Handler;>;"
    :catchall_0
    move-exception v2

    #@2b
    monitor-exit p0

    #@2c
    throw v2
.end method

.method public declared-synchronized startMonitoring(Ljava/lang/String;)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 612
    :try_start_0
    const-string/jumbo v1, "WifiMonitor"

    #@4
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v3, "startMonitoring("

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    const-string/jumbo v3, ") with mConnected = "

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiMonitor;->mConnected:Z

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 614
    invoke-direct {p0}, Lcom/android/server/wifi/WifiMonitor;->ensureConnectedLocked()Z

    #@2b
    move-result v1

    #@2c
    if-eqz v1, :cond_0

    #@2e
    .line 615
    const/4 v1, 0x1

    #@2f
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/WifiMonitor;->setMonitoring(Ljava/lang/String;Z)V

    #@32
    .line 616
    const v1, 0x24001

    #@35
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    :goto_0
    monitor-exit p0

    #@39
    .line 611
    return-void

    #@3a
    .line 619
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->isMonitoring(Ljava/lang/String;)Z

    #@3d
    move-result v0

    #@3e
    .line 620
    .local v0, "originalMonitoring":Z
    const/4 v1, 0x1

    #@3f
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/WifiMonitor;->setMonitoring(Ljava/lang/String;Z)V

    #@42
    .line 621
    const v1, 0x24002

    #@45
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    #@48
    .line 622
    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMonitor;->setMonitoring(Ljava/lang/String;Z)V

    #@4b
    .line 623
    const-string/jumbo v1, "WifiMonitor"

    #@4e
    new-instance v2, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v3, "startMonitoring("

    #@56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v2

    #@5e
    const-string/jumbo v3, ") failed!"

    #@61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v2

    #@65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v2

    #@69
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6c
    goto :goto_0

    #@6d
    .end local v0    # "originalMonitoring":Z
    :catchall_0
    move-exception v1

    #@6e
    monitor-exit p0

    #@6f
    throw v1
.end method

.method public declared-synchronized stopMonitoring(Ljava/lang/String;)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 628
    :try_start_0
    sget-boolean v0, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    const-string/jumbo v0, "WifiMonitor"

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "stopMonitoring("

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, ")"

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 629
    :cond_0
    const/4 v0, 0x1

    #@27
    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMonitor;->setMonitoring(Ljava/lang/String;Z)V

    #@2a
    .line 630
    const v0, 0x24002

    #@2d
    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    #@30
    .line 631
    const/4 v0, 0x0

    #@31
    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMonitor;->setMonitoring(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    monitor-exit p0

    #@35
    .line 627
    return-void

    #@36
    :catchall_0
    move-exception v0

    #@37
    monitor-exit p0

    #@38
    throw v0
.end method

.method public declared-synchronized stopSupplicant()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 635
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@3
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->stopSupplicant()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 634
    return-void

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method
