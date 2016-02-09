.class public Lcom/android/server/wifi/WifiMonitor;
.super Ljava/lang/Object;
.source "WifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;,
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

.field public static final HS20_DEAUTH_EVENT:I = 0x2403e

.field private static final HS20_DEAUTH_STR:Ljava/lang/String; = "HS20-DEAUTH-IMMINENT-NOTICE"

.field private static final HS20_PREFIX_STR:Ljava/lang/String; = "HS20-"

.field public static final HS20_REMEDIATION_EVENT:I = 0x2403d

.field private static final HS20_SUB_REM_STR:Ljava/lang/String; = "HS20-SUBSCRIPTION-REMEDIATION"

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

.field private static sRecvErrors:I


# instance fields
.field private final mInterfaceName:Ljava/lang/String;

.field private mMonitoring:Z

.field private final mStateMachine:Lcom/android/internal/util/StateMachine;

.field private mStateMachine2:Lcom/android/internal/util/StateMachine;

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
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiMonitor;->mMonitoring:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/WifiMonitor;)Lcom/android/server/wifi/WifiNative;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/WifiMonitor;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiMonitor;->mMonitoring:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/WifiMonitor;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "eventStr"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiMonitor;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)Z

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
    .line 53
    sput-boolean v1, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    #@3
    .line 77
    const-string/jumbo v0, "CTRL-EVENT-"

    #@6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@9
    move-result v0

    #@a
    sput v0, Lcom/android/server/wifi/WifiMonitor;->EVENT_PREFIX_LEN_STR:I

    #@c
    .line 81
    const-string/jumbo v0, "CTRL-REQ-"

    #@f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@12
    move-result v0

    #@13
    sput v0, Lcom/android/server/wifi/WifiMonitor;->REQUEST_PREFIX_LEN_STR:I

    #@15
    .line 113
    const-string/jumbo v0, "RX-HS20-ANQP-ICON"

    #@18
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@1b
    move-result v0

    #@1c
    sput v0, Lcom/android/server/wifi/WifiMonitor;->RX_HS20_ANQP_ICON_STR_LEN:I

    #@1e
    .line 126
    sput v1, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    #@20
    .line 238
    const-string/jumbo v0, "((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) .* \\[id=([0-9]+) "

    #@23
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@26
    move-result-object v0

    #@27
    .line 237
    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mConnectedEventPattern:Ljava/util/regex/Pattern;

    #@29
    .line 246
    const-string/jumbo v0, "((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) +reason=([0-9]+) +locally_generated=([0-1])"

    #@2c
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@2f
    move-result-object v0

    #@30
    .line 245
    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mDisconnectedEventPattern:Ljava/util/regex/Pattern;

    #@32
    .line 255
    const-string/jumbo v0, "((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) +status_code=([0-9]+)"

    #@35
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@38
    move-result-object v0

    #@39
    .line 254
    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mAssocRejectEventPattern:Ljava/util/regex/Pattern;

    #@3b
    .line 266
    const-string/jumbo v0, "Trying to associate with ((?:[0-9a-f]{2}:){5}[0-9a-f]{2}).*"

    #@3e
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@41
    move-result-object v0

    #@42
    .line 265
    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mTargetBSSIDPattern:Ljava/util/regex/Pattern;

    #@44
    .line 276
    const-string/jumbo v0, "Associated with ((?:[0-9a-f]{2}:){5}[0-9a-f]{2}).*"

    #@47
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@4a
    move-result-object v0

    #@4b
    .line 275
    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mAssociatedPattern:Ljava/util/regex/Pattern;

    #@4d
    .line 290
    const-string/jumbo v0, "SIM-([0-9]*):GSM-AUTH((:[0-9a-f]+)+) needed for SSID (.+)"

    #@50
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@53
    move-result-object v0

    #@54
    .line 289
    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mRequestGsmAuthPattern:Ljava/util/regex/Pattern;

    #@56
    .line 303
    const-string/jumbo v0, "SIM-([0-9]*):UMTS-AUTH:([0-9a-f]+):([0-9a-f]+) needed for SSID (.+)"

    #@59
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@5c
    move-result-object v0

    #@5d
    .line 302
    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mRequestUmtsAuthPattern:Ljava/util/regex/Pattern;

    #@5f
    .line 311
    const-string/jumbo v0, "IDENTITY-([0-9]+):Identity needed for SSID (.+)"

    #@62
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@65
    move-result-object v0

    #@66
    .line 310
    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mRequestIdentityPattern:Ljava/util/regex/Pattern;

    #@68
    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/util/StateMachine;Lcom/android/server/wifi/WifiNative;)V
    .locals 2
    .param p1, "stateMachine"    # Lcom/android/internal/util/StateMachine;
    .param p2, "wifiNative"    # Lcom/android/server/wifi/WifiNative;

    #@0
    .prologue
    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 534
    sget-boolean v0, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    const-string/jumbo v0, "WifiMonitor"

    #@a
    const-string/jumbo v1, "Creating WifiMonitor"

    #@d
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 535
    :cond_0
    iput-object p2, p0, Lcom/android/server/wifi/WifiMonitor;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@12
    .line 536
    iget-object v0, p2, Lcom/android/server/wifi/WifiNative;->mInterfaceName:Ljava/lang/String;

    #@14
    iput-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;

    #@16
    .line 537
    iput-object p1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@18
    .line 538
    const/4 v0, 0x0

    #@19
    iput-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    #@1b
    .line 539
    const/4 v0, 0x0

    #@1c
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiMonitor;->mMonitoring:Z

    #@1e
    .line 541
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->-get1()Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    #@21
    move-result-object v0

    #@22
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;

    #@24
    invoke-virtual {v0, v1, p0}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->registerInterfaceMonitor(Ljava/lang/String;Lcom/android/server/wifi/WifiMonitor;)V

    #@27
    .line 533
    return-void
.end method

.method private dispatchEvent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 27
    .param p1, "eventStr"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 784
    sget-boolean v21, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    #@2
    if-eqz v21, :cond_0

    #@4
    .line 786
    if-eqz p1, :cond_0

    #@6
    const-string/jumbo v21, "CTRL-EVENT-BSS-ADDED"

    #@9
    move-object/from16 v0, p1

    #@b
    move-object/from16 v1, v21

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@10
    move-result v21

    #@11
    if-eqz v21, :cond_2

    #@13
    .line 792
    :cond_0
    :goto_0
    const-string/jumbo v21, "CTRL-EVENT-"

    #@16
    move-object/from16 v0, p1

    #@18
    move-object/from16 v1, v21

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1d
    move-result v21

    #@1e
    if-nez v21, :cond_12

    #@20
    .line 793
    const-string/jumbo v21, "WPA:"

    #@23
    move-object/from16 v0, p1

    #@25
    move-object/from16 v1, v21

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2a
    move-result v21

    #@2b
    if-eqz v21, :cond_3

    #@2d
    .line 794
    const-string/jumbo v21, "pre-shared key may be incorrect"

    #@30
    move-object/from16 v0, p1

    #@32
    move-object/from16 v1, v21

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@37
    move-result v21

    #@38
    if-lez v21, :cond_3

    #@3a
    .line 795
    move-object/from16 v0, p0

    #@3c
    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@3e
    move-object/from16 v21, v0

    #@40
    sget v22, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    #@42
    const v23, 0x24007

    #@45
    move-object/from16 v0, v21

    #@47
    move/from16 v1, v23

    #@49
    move/from16 v2, v22

    #@4b
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    #@4e
    .line 835
    :cond_1
    :goto_1
    sget v21, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    #@50
    add-int/lit8 v21, v21, 0x1

    #@52
    sput v21, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    #@54
    .line 836
    const/16 v21, 0x0

    #@56
    return v21

    #@57
    .line 787
    :cond_2
    new-instance v21, Ljava/lang/StringBuilder;

    #@59
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v22, "WifiMonitor:"

    #@5f
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v21

    #@63
    move-object/from16 v0, v21

    #@65
    move-object/from16 v1, p2

    #@67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v21

    #@6b
    const-string/jumbo v22, " cnt="

    #@6e
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v21

    #@72
    sget v22, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    #@74
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@77
    move-result-object v22

    #@78
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v21

    #@7c
    .line 788
    const-string/jumbo v22, " dispatchEvent: "

    #@7f
    .line 787
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v21

    #@83
    move-object/from16 v0, v21

    #@85
    move-object/from16 v1, p1

    #@87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v21

    #@8b
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v21

    #@8f
    move-object/from16 v0, p0

    #@91
    move-object/from16 v1, v21

    #@93
    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiMonitor;->logDbg(Ljava/lang/String;)V

    #@96
    goto/16 :goto_0

    #@98
    .line 796
    :cond_3
    const-string/jumbo v21, "WPS-SUCCESS"

    #@9b
    move-object/from16 v0, p1

    #@9d
    move-object/from16 v1, v21

    #@9f
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@a2
    move-result v21

    #@a3
    if-eqz v21, :cond_4

    #@a5
    .line 797
    move-object/from16 v0, p0

    #@a7
    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@a9
    move-object/from16 v21, v0

    #@ab
    const v22, 0x24008

    #@ae
    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    #@b1
    goto :goto_1

    #@b2
    .line 798
    :cond_4
    const-string/jumbo v21, "WPS-FAIL"

    #@b5
    move-object/from16 v0, p1

    #@b7
    move-object/from16 v1, v21

    #@b9
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@bc
    move-result v21

    #@bd
    if-eqz v21, :cond_5

    #@bf
    .line 799
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiMonitor;->handleWpsFailEvent(Ljava/lang/String;)V

    #@c2
    goto :goto_1

    #@c3
    .line 800
    :cond_5
    const-string/jumbo v21, "WPS-OVERLAP-DETECTED"

    #@c6
    move-object/from16 v0, p1

    #@c8
    move-object/from16 v1, v21

    #@ca
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@cd
    move-result v21

    #@ce
    if-eqz v21, :cond_6

    #@d0
    .line 801
    move-object/from16 v0, p0

    #@d2
    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@d4
    move-object/from16 v21, v0

    #@d6
    const v22, 0x2400a

    #@d9
    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    #@dc
    goto/16 :goto_1

    #@de
    .line 802
    :cond_6
    const-string/jumbo v21, "WPS-TIMEOUT"

    #@e1
    move-object/from16 v0, p1

    #@e3
    move-object/from16 v1, v21

    #@e5
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@e8
    move-result v21

    #@e9
    if-eqz v21, :cond_7

    #@eb
    .line 803
    move-object/from16 v0, p0

    #@ed
    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@ef
    move-object/from16 v21, v0

    #@f1
    const v22, 0x2400b

    #@f4
    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    #@f7
    goto/16 :goto_1

    #@f9
    .line 804
    :cond_7
    const-string/jumbo v21, "P2P"

    #@fc
    move-object/from16 v0, p1

    #@fe
    move-object/from16 v1, v21

    #@100
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@103
    move-result v21

    #@104
    if-eqz v21, :cond_8

    #@106
    .line 805
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiMonitor;->handleP2pEvents(Ljava/lang/String;)V

    #@109
    goto/16 :goto_1

    #@10b
    .line 806
    :cond_8
    const-string/jumbo v21, "AP"

    #@10e
    move-object/from16 v0, p1

    #@110
    move-object/from16 v1, v21

    #@112
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@115
    move-result v21

    #@116
    if-eqz v21, :cond_9

    #@118
    .line 807
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiMonitor;->handleHostApEvents(Ljava/lang/String;)V

    #@11b
    goto/16 :goto_1

    #@11d
    .line 808
    :cond_9
    const-string/jumbo v21, "ANQP-QUERY-DONE"

    #@120
    move-object/from16 v0, p1

    #@122
    move-object/from16 v1, v21

    #@124
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@127
    move-result v21

    #@128
    if-eqz v21, :cond_a

    #@12a
    .line 810
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiMonitor;->handleAnqpResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@12d
    goto/16 :goto_1

    #@12f
    .line 812
    :catch_0
    move-exception v11

    #@130
    .line 813
    .local v11, "iae":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v21, "WifiMonitor"

    #@133
    new-instance v22, Ljava/lang/StringBuilder;

    #@135
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@138
    const-string/jumbo v23, "Bad ANQP event string: \'"

    #@13b
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13e
    move-result-object v22

    #@13f
    move-object/from16 v0, v22

    #@141
    move-object/from16 v1, p1

    #@143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@146
    move-result-object v22

    #@147
    const-string/jumbo v23, "\': "

    #@14a
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14d
    move-result-object v22

    #@14e
    move-object/from16 v0, v22

    #@150
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@153
    move-result-object v22

    #@154
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@157
    move-result-object v22

    #@158
    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@15b
    goto/16 :goto_1

    #@15d
    .line 815
    .end local v11    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_a
    const-string/jumbo v21, "GAS-QUERY-"

    #@160
    move-object/from16 v0, p1

    #@162
    move-object/from16 v1, v21

    #@164
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@167
    move-result v21

    #@168
    if-eqz v21, :cond_b

    #@16a
    .line 816
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiMonitor;->handleGasQueryEvents(Ljava/lang/String;)V

    #@16d
    goto/16 :goto_1

    #@16f
    .line 817
    :cond_b
    const-string/jumbo v21, "RX-HS20-ANQP-ICON"

    #@172
    move-object/from16 v0, p1

    #@174
    move-object/from16 v1, v21

    #@176
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@179
    move-result v21

    #@17a
    if-eqz v21, :cond_c

    #@17c
    .line 818
    move-object/from16 v0, p0

    #@17e
    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    #@180
    move-object/from16 v21, v0

    #@182
    if-eqz v21, :cond_1

    #@184
    .line 819
    move-object/from16 v0, p0

    #@186
    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    #@188
    move-object/from16 v21, v0

    #@18a
    .line 820
    sget v22, Lcom/android/server/wifi/WifiMonitor;->RX_HS20_ANQP_ICON_STR_LEN:I

    #@18c
    add-int/lit8 v22, v22, 0x1

    #@18e
    move-object/from16 v0, p1

    #@190
    move/from16 v1, v22

    #@192
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@195
    move-result-object v22

    #@196
    .line 819
    const v23, 0x24035

    #@199
    move-object/from16 v0, v21

    #@19b
    move/from16 v1, v23

    #@19d
    move-object/from16 v2, v22

    #@19f
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    #@1a2
    goto/16 :goto_1

    #@1a4
    .line 821
    :cond_c
    const-string/jumbo v21, "HS20-"

    #@1a7
    move-object/from16 v0, p1

    #@1a9
    move-object/from16 v1, v21

    #@1ab
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1ae
    move-result v21

    #@1af
    if-eqz v21, :cond_d

    #@1b1
    .line 822
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiMonitor;->handleHs20Events(Ljava/lang/String;)V

    #@1b4
    goto/16 :goto_1

    #@1b6
    .line 823
    :cond_d
    const-string/jumbo v21, "CTRL-REQ-"

    #@1b9
    move-object/from16 v0, p1

    #@1bb
    move-object/from16 v1, v21

    #@1bd
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1c0
    move-result v21

    #@1c1
    if-eqz v21, :cond_e

    #@1c3
    .line 824
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiMonitor;->handleRequests(Ljava/lang/String;)V

    #@1c6
    goto/16 :goto_1

    #@1c8
    .line 825
    :cond_e
    const-string/jumbo v21, "Trying to associate with "

    #@1cb
    move-object/from16 v0, p1

    #@1cd
    move-object/from16 v1, v21

    #@1cf
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1d2
    move-result v21

    #@1d3
    if-eqz v21, :cond_f

    #@1d5
    .line 826
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiMonitor;->handleTargetBSSIDEvent(Ljava/lang/String;)V

    #@1d8
    goto/16 :goto_1

    #@1da
    .line 827
    :cond_f
    const-string/jumbo v21, "Associated with "

    #@1dd
    move-object/from16 v0, p1

    #@1df
    move-object/from16 v1, v21

    #@1e1
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1e4
    move-result v21

    #@1e5
    if-eqz v21, :cond_10

    #@1e7
    .line 828
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiMonitor;->handleAssociatedBSSIDEvent(Ljava/lang/String;)V

    #@1ea
    goto/16 :goto_1

    #@1ec
    .line 829
    :cond_10
    const-string/jumbo v21, "Authentication with"

    #@1ef
    move-object/from16 v0, p1

    #@1f1
    move-object/from16 v1, v21

    #@1f3
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1f6
    move-result v21

    #@1f7
    if-eqz v21, :cond_11

    #@1f9
    .line 830
    const-string/jumbo v21, "timed out."

    #@1fc
    move-object/from16 v0, p1

    #@1fe
    move-object/from16 v1, v21

    #@200
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@203
    move-result v21

    #@204
    .line 829
    if-eqz v21, :cond_11

    #@206
    .line 831
    move-object/from16 v0, p0

    #@208
    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@20a
    move-object/from16 v21, v0

    #@20c
    const v22, 0x24007

    #@20f
    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    #@212
    goto/16 :goto_1

    #@214
    .line 833
    :cond_11
    sget-boolean v21, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    #@216
    if-eqz v21, :cond_1

    #@218
    const-string/jumbo v21, "WifiMonitor"

    #@21b
    new-instance v22, Ljava/lang/StringBuilder;

    #@21d
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@220
    const-string/jumbo v23, "couldn\'t identify event type - "

    #@223
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@226
    move-result-object v22

    #@227
    move-object/from16 v0, v22

    #@229
    move-object/from16 v1, p1

    #@22b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22e
    move-result-object v22

    #@22f
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@232
    move-result-object v22

    #@233
    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@236
    goto/16 :goto_1

    #@238
    .line 839
    :cond_12
    sget v21, Lcom/android/server/wifi/WifiMonitor;->EVENT_PREFIX_LEN_STR:I

    #@23a
    move-object/from16 v0, p1

    #@23c
    move/from16 v1, v21

    #@23e
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@241
    move-result-object v10

    #@242
    .line 840
    .local v10, "eventName":Ljava/lang/String;
    const/16 v21, 0x20

    #@244
    move/from16 v0, v21

    #@246
    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(I)I

    #@249
    move-result v16

    #@24a
    .line 841
    .local v16, "nameEnd":I
    const/16 v21, -0x1

    #@24c
    move/from16 v0, v16

    #@24e
    move/from16 v1, v21

    #@250
    if-eq v0, v1, :cond_13

    #@252
    .line 842
    const/16 v21, 0x0

    #@254
    move/from16 v0, v21

    #@256
    move/from16 v1, v16

    #@258
    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@25b
    move-result-object v10

    #@25c
    .line 843
    :cond_13
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    #@25f
    move-result v21

    #@260
    if-nez v21, :cond_15

    #@262
    .line 844
    sget-boolean v21, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    #@264
    if-eqz v21, :cond_14

    #@266
    const-string/jumbo v21, "WifiMonitor"

    #@269
    const-string/jumbo v22, "Received wpa_supplicant event with empty event name"

    #@26c
    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@26f
    .line 845
    :cond_14
    sget v21, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    #@271
    add-int/lit8 v21, v21, 0x1

    #@273
    sput v21, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    #@275
    .line 846
    const/16 v21, 0x0

    #@277
    return v21

    #@278
    .line 852
    :cond_15
    const-string/jumbo v21, "CONNECTED"

    #@27b
    move-object/from16 v0, v21

    #@27d
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@280
    move-result v21

    #@281
    if-eqz v21, :cond_1a

    #@283
    .line 853
    const/4 v8, 0x1

    #@284
    .line 883
    .local v8, "event":I
    :goto_2
    move-object/from16 v9, p1

    #@286
    .line 884
    .local v9, "eventData":Ljava/lang/String;
    const/16 v21, 0x7

    #@288
    move/from16 v0, v21

    #@28a
    if-eq v8, v0, :cond_16

    #@28c
    const/16 v21, 0x5

    #@28e
    move/from16 v0, v21

    #@290
    if-ne v8, v0, :cond_28

    #@292
    .line 885
    :cond_16
    const-string/jumbo v21, " "

    #@295
    move-object/from16 v0, v21

    #@297
    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@29a
    move-result-object v21

    #@29b
    const/16 v22, 0x1

    #@29d
    aget-object v9, v21, v22

    #@29f
    .line 898
    :cond_17
    :goto_3
    const/16 v21, 0xa

    #@2a1
    move/from16 v0, v21

    #@2a3
    if-eq v8, v0, :cond_18

    #@2a5
    const/16 v21, 0xb

    #@2a7
    move/from16 v0, v21

    #@2a9
    if-ne v8, v0, :cond_2f

    #@2ab
    .line 899
    :cond_18
    const/16 v20, 0x0

    #@2ad
    .line 900
    .local v20, "substr":Ljava/lang/String;
    const/16 v17, -0x1

    #@2af
    .line 901
    .local v17, "netId":I
    const-string/jumbo v21, " "

    #@2b2
    move-object/from16 v0, p1

    #@2b4
    move-object/from16 v1, v21

    #@2b6
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@2b9
    move-result v13

    #@2ba
    .line 902
    .local v13, "ind":I
    const/16 v21, -0x1

    #@2bc
    move/from16 v0, v21

    #@2be
    if-eq v13, v0, :cond_19

    #@2c0
    .line 903
    add-int/lit8 v21, v13, 0x1

    #@2c2
    move-object/from16 v0, p1

    #@2c4
    move/from16 v1, v21

    #@2c6
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2c9
    move-result-object v20

    #@2ca
    .line 905
    .end local v20    # "substr":Ljava/lang/String;
    :cond_19
    if-eqz v20, :cond_2c

    #@2cc
    .line 906
    const-string/jumbo v21, " "

    #@2cf
    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@2d2
    move-result-object v19

    #@2d3
    .line 907
    .local v19, "status":[Ljava/lang/String;
    const/16 v21, 0x0

    #@2d5
    move-object/from16 v0, v19

    #@2d7
    array-length v0, v0

    #@2d8
    move/from16 v22, v0

    #@2da
    :goto_4
    move/from16 v0, v21

    #@2dc
    move/from16 v1, v22

    #@2de
    if-ge v0, v1, :cond_2c

    #@2e0
    aget-object v14, v19, v21

    #@2e2
    .line 908
    .local v14, "key":Ljava/lang/String;
    const-string/jumbo v23, "id="

    #@2e5
    const/16 v24, 0x0

    #@2e7
    const/16 v25, 0x0

    #@2e9
    const/16 v26, 0x3

    #@2eb
    move/from16 v0, v24

    #@2ed
    move-object/from16 v1, v23

    #@2ef
    move/from16 v2, v25

    #@2f1
    move/from16 v3, v26

    #@2f3
    invoke-virtual {v14, v0, v1, v2, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@2f6
    move-result v23

    #@2f7
    if-eqz v23, :cond_2b

    #@2f9
    .line 909
    const/4 v12, 0x3

    #@2fa
    .line 910
    .local v12, "idx":I
    const/16 v17, 0x0

    #@2fc
    .line 911
    :goto_5
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    #@2ff
    move-result v23

    #@300
    move/from16 v0, v23

    #@302
    if-ge v12, v0, :cond_2b

    #@304
    .line 912
    invoke-virtual {v14, v12}, Ljava/lang/String;->charAt(I)C

    #@307
    move-result v6

    #@308
    .line 913
    .local v6, "c":C
    const/16 v23, 0x30

    #@30a
    move/from16 v0, v23

    #@30c
    if-lt v6, v0, :cond_2b

    #@30e
    const/16 v23, 0x39

    #@310
    move/from16 v0, v23

    #@312
    if-gt v6, v0, :cond_2b

    #@314
    .line 914
    mul-int/lit8 v17, v17, 0xa

    #@316
    .line 915
    add-int/lit8 v23, v6, -0x30

    #@318
    add-int v17, v17, v23

    #@31a
    .line 916
    add-int/lit8 v12, v12, 0x1

    #@31c
    .line 913
    goto :goto_5

    #@31d
    .line 854
    .end local v6    # "c":C
    .end local v8    # "event":I
    .end local v9    # "eventData":Ljava/lang/String;
    .end local v12    # "idx":I
    .end local v13    # "ind":I
    .end local v14    # "key":Ljava/lang/String;
    .end local v17    # "netId":I
    .end local v19    # "status":[Ljava/lang/String;
    :cond_1a
    const-string/jumbo v21, "DISCONNECTED"

    #@320
    move-object/from16 v0, v21

    #@322
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@325
    move-result v21

    #@326
    if-eqz v21, :cond_1b

    #@328
    .line 855
    const/4 v8, 0x2

    #@329
    .restart local v8    # "event":I
    goto/16 :goto_2

    #@32b
    .line 856
    .end local v8    # "event":I
    :cond_1b
    const-string/jumbo v21, "STATE-CHANGE"

    #@32e
    move-object/from16 v0, v21

    #@330
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@333
    move-result v21

    #@334
    if-eqz v21, :cond_1c

    #@336
    .line 857
    const/4 v8, 0x3

    #@337
    .restart local v8    # "event":I
    goto/16 :goto_2

    #@339
    .line 858
    .end local v8    # "event":I
    :cond_1c
    const-string/jumbo v21, "SCAN-RESULTS"

    #@33c
    move-object/from16 v0, v21

    #@33e
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@341
    move-result v21

    #@342
    if-eqz v21, :cond_1d

    #@344
    .line 859
    const/4 v8, 0x4

    #@345
    .restart local v8    # "event":I
    goto/16 :goto_2

    #@347
    .line 860
    .end local v8    # "event":I
    :cond_1d
    const-string/jumbo v21, "SCAN-FAILED"

    #@34a
    move-object/from16 v0, v21

    #@34c
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34f
    move-result v21

    #@350
    if-eqz v21, :cond_1e

    #@352
    .line 861
    const/16 v8, 0xf

    #@354
    .restart local v8    # "event":I
    goto/16 :goto_2

    #@356
    .line 862
    .end local v8    # "event":I
    :cond_1e
    const-string/jumbo v21, "LINK-SPEED"

    #@359
    move-object/from16 v0, v21

    #@35b
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35e
    move-result v21

    #@35f
    if-eqz v21, :cond_1f

    #@361
    .line 863
    const/4 v8, 0x5

    #@362
    .restart local v8    # "event":I
    goto/16 :goto_2

    #@364
    .line 864
    .end local v8    # "event":I
    :cond_1f
    const-string/jumbo v21, "TERMINATING"

    #@367
    move-object/from16 v0, v21

    #@369
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36c
    move-result v21

    #@36d
    if-eqz v21, :cond_20

    #@36f
    .line 865
    const/4 v8, 0x6

    #@370
    .restart local v8    # "event":I
    goto/16 :goto_2

    #@372
    .line 866
    .end local v8    # "event":I
    :cond_20
    const-string/jumbo v21, "DRIVER-STATE"

    #@375
    move-object/from16 v0, v21

    #@377
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37a
    move-result v21

    #@37b
    if-eqz v21, :cond_21

    #@37d
    .line 867
    const/4 v8, 0x7

    #@37e
    .restart local v8    # "event":I
    goto/16 :goto_2

    #@380
    .line 868
    .end local v8    # "event":I
    :cond_21
    const-string/jumbo v21, "EAP-FAILURE"

    #@383
    move-object/from16 v0, v21

    #@385
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@388
    move-result v21

    #@389
    if-eqz v21, :cond_22

    #@38b
    .line 869
    const/16 v8, 0x8

    #@38d
    .restart local v8    # "event":I
    goto/16 :goto_2

    #@38f
    .line 870
    .end local v8    # "event":I
    :cond_22
    const-string/jumbo v21, "ASSOC-REJECT"

    #@392
    move-object/from16 v0, v21

    #@394
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@397
    move-result v21

    #@398
    if-eqz v21, :cond_23

    #@39a
    .line 871
    const/16 v8, 0x9

    #@39c
    .restart local v8    # "event":I
    goto/16 :goto_2

    #@39e
    .line 872
    .end local v8    # "event":I
    :cond_23
    const-string/jumbo v21, "SSID-TEMP-DISABLED"

    #@3a1
    move-object/from16 v0, v21

    #@3a3
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a6
    move-result v21

    #@3a7
    if-eqz v21, :cond_24

    #@3a9
    .line 873
    const/16 v8, 0xa

    #@3ab
    .restart local v8    # "event":I
    goto/16 :goto_2

    #@3ad
    .line 874
    .end local v8    # "event":I
    :cond_24
    const-string/jumbo v21, "SSID-REENABLED"

    #@3b0
    move-object/from16 v0, v21

    #@3b2
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b5
    move-result v21

    #@3b6
    if-eqz v21, :cond_25

    #@3b8
    .line 875
    const/16 v8, 0xb

    #@3ba
    .restart local v8    # "event":I
    goto/16 :goto_2

    #@3bc
    .line 876
    .end local v8    # "event":I
    :cond_25
    const-string/jumbo v21, "BSS-ADDED"

    #@3bf
    move-object/from16 v0, v21

    #@3c1
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c4
    move-result v21

    #@3c5
    if-eqz v21, :cond_26

    #@3c7
    .line 877
    const/16 v8, 0xc

    #@3c9
    .restart local v8    # "event":I
    goto/16 :goto_2

    #@3cb
    .line 878
    .end local v8    # "event":I
    :cond_26
    const-string/jumbo v21, "BSS-REMOVED"

    #@3ce
    move-object/from16 v0, v21

    #@3d0
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d3
    move-result v21

    #@3d4
    if-eqz v21, :cond_27

    #@3d6
    .line 879
    const/16 v8, 0xd

    #@3d8
    .restart local v8    # "event":I
    goto/16 :goto_2

    #@3da
    .line 881
    .end local v8    # "event":I
    :cond_27
    const/16 v8, 0xe

    #@3dc
    .restart local v8    # "event":I
    goto/16 :goto_2

    #@3de
    .line 886
    .restart local v9    # "eventData":Ljava/lang/String;
    :cond_28
    const/16 v21, 0x3

    #@3e0
    move/from16 v0, v21

    #@3e2
    if-eq v8, v0, :cond_29

    #@3e4
    const/16 v21, 0x8

    #@3e6
    move/from16 v0, v21

    #@3e8
    if-ne v8, v0, :cond_2a

    #@3ea
    .line 887
    :cond_29
    const-string/jumbo v21, " "

    #@3ed
    move-object/from16 v0, p1

    #@3ef
    move-object/from16 v1, v21

    #@3f1
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@3f4
    move-result v13

    #@3f5
    .line 888
    .restart local v13    # "ind":I
    const/16 v21, -0x1

    #@3f7
    move/from16 v0, v21

    #@3f9
    if-eq v13, v0, :cond_17

    #@3fb
    .line 889
    add-int/lit8 v21, v13, 0x1

    #@3fd
    move-object/from16 v0, p1

    #@3ff
    move/from16 v1, v21

    #@401
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@404
    move-result-object v9

    #@405
    goto/16 :goto_3

    #@407
    .line 892
    .end local v13    # "ind":I
    :cond_2a
    const-string/jumbo v21, " - "

    #@40a
    move-object/from16 v0, p1

    #@40c
    move-object/from16 v1, v21

    #@40e
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@411
    move-result v13

    #@412
    .line 893
    .restart local v13    # "ind":I
    const/16 v21, -0x1

    #@414
    move/from16 v0, v21

    #@416
    if-eq v13, v0, :cond_17

    #@418
    .line 894
    add-int/lit8 v21, v13, 0x3

    #@41a
    move-object/from16 v0, p1

    #@41c
    move/from16 v1, v21

    #@41e
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@421
    move-result-object v9

    #@422
    goto/16 :goto_3

    #@424
    .line 907
    .restart local v14    # "key":Ljava/lang/String;
    .restart local v17    # "netId":I
    .restart local v19    # "status":[Ljava/lang/String;
    :cond_2b
    add-int/lit8 v21, v21, 0x1

    #@426
    goto/16 :goto_4

    #@428
    .line 924
    .end local v14    # "key":Ljava/lang/String;
    .end local v19    # "status":[Ljava/lang/String;
    :cond_2c
    move-object/from16 v0, p0

    #@42a
    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@42c
    move-object/from16 v22, v0

    #@42e
    const/16 v21, 0xa

    #@430
    move/from16 v0, v21

    #@432
    if-ne v8, v0, :cond_2e

    #@434
    .line 925
    const v21, 0x2400d

    #@437
    :goto_6
    const/16 v23, 0x0

    #@439
    .line 924
    move-object/from16 v0, v22

    #@43b
    move/from16 v1, v21

    #@43d
    move/from16 v2, v17

    #@43f
    move/from16 v3, v23

    #@441
    move-object/from16 v4, v20

    #@443
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    #@446
    .line 976
    .end local v13    # "ind":I
    .end local v17    # "netId":I
    :cond_2d
    :goto_7
    const/16 v21, 0x0

    #@448
    sput v21, Lcom/android/server/wifi/WifiMonitor;->sRecvErrors:I

    #@44a
    .line 977
    sget v21, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    #@44c
    add-int/lit8 v21, v21, 0x1

    #@44e
    sput v21, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    #@450
    .line 978
    const/16 v21, 0x0

    #@452
    return v21

    #@453
    .line 925
    .restart local v13    # "ind":I
    .restart local v17    # "netId":I
    :cond_2e
    const v21, 0x2400e

    #@456
    goto :goto_6

    #@457
    .line 926
    .end local v13    # "ind":I
    .end local v17    # "netId":I
    :cond_2f
    const/16 v21, 0x3

    #@459
    move/from16 v0, v21

    #@45b
    if-ne v8, v0, :cond_30

    #@45d
    .line 927
    move-object/from16 v0, p0

    #@45f
    invoke-direct {v0, v9}, Lcom/android/server/wifi/WifiMonitor;->handleSupplicantStateChange(Ljava/lang/String;)V

    #@462
    goto :goto_7

    #@463
    .line 928
    :cond_30
    const/16 v21, 0x7

    #@465
    move/from16 v0, v21

    #@467
    if-ne v8, v0, :cond_31

    #@469
    .line 929
    move-object/from16 v0, p0

    #@46b
    invoke-direct {v0, v9}, Lcom/android/server/wifi/WifiMonitor;->handleDriverEvent(Ljava/lang/String;)V

    #@46e
    goto :goto_7

    #@46f
    .line 930
    :cond_31
    const/16 v21, 0x6

    #@471
    move/from16 v0, v21

    #@473
    if-ne v8, v0, :cond_34

    #@475
    .line 935
    const-string/jumbo v21, "recv error"

    #@478
    move-object/from16 v0, v21

    #@47a
    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@47d
    move-result v21

    #@47e
    if-eqz v21, :cond_32

    #@480
    .line 936
    sget v21, Lcom/android/server/wifi/WifiMonitor;->sRecvErrors:I

    #@482
    add-int/lit8 v21, v21, 0x1

    #@484
    sput v21, Lcom/android/server/wifi/WifiMonitor;->sRecvErrors:I

    #@486
    const/16 v22, 0xa

    #@488
    move/from16 v0, v21

    #@48a
    move/from16 v1, v22

    #@48c
    if-le v0, v1, :cond_33

    #@48e
    .line 937
    sget-boolean v21, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    #@490
    if-eqz v21, :cond_32

    #@492
    .line 938
    const-string/jumbo v21, "WifiMonitor"

    #@495
    const-string/jumbo v22, "too many recv errors, closing connection"

    #@498
    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@49b
    .line 947
    :cond_32
    move-object/from16 v0, p0

    #@49d
    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@49f
    move-object/from16 v21, v0

    #@4a1
    sget v22, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    #@4a3
    const v23, 0x24002

    #@4a6
    move-object/from16 v0, v21

    #@4a8
    move/from16 v1, v23

    #@4aa
    move/from16 v2, v22

    #@4ac
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    #@4af
    .line 948
    const/16 v21, 0x1

    #@4b1
    return v21

    #@4b2
    .line 941
    :cond_33
    sget v21, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    #@4b4
    add-int/lit8 v21, v21, 0x1

    #@4b6
    sput v21, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    #@4b8
    .line 942
    const/16 v21, 0x0

    #@4ba
    return v21

    #@4bb
    .line 949
    :cond_34
    const/16 v21, 0x8

    #@4bd
    move/from16 v0, v21

    #@4bf
    if-ne v8, v0, :cond_35

    #@4c1
    .line 950
    const-string/jumbo v21, "EAP authentication failed"

    #@4c4
    move-object/from16 v0, v21

    #@4c6
    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@4c9
    move-result v21

    #@4ca
    if-eqz v21, :cond_2d

    #@4cc
    .line 951
    const-string/jumbo v21, "WifiMonitor send auth failure (EAP_AUTH_FAILURE) "

    #@4cf
    move-object/from16 v0, p0

    #@4d1
    move-object/from16 v1, v21

    #@4d3
    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiMonitor;->logDbg(Ljava/lang/String;)V

    #@4d6
    .line 952
    move-object/from16 v0, p0

    #@4d8
    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@4da
    move-object/from16 v21, v0

    #@4dc
    sget v22, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    #@4de
    const v23, 0x24007

    #@4e1
    move-object/from16 v0, v21

    #@4e3
    move/from16 v1, v23

    #@4e5
    move/from16 v2, v22

    #@4e7
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    #@4ea
    goto/16 :goto_7

    #@4ec
    .line 954
    :cond_35
    const/16 v21, 0x9

    #@4ee
    move/from16 v0, v21

    #@4f0
    if-ne v8, v0, :cond_38

    #@4f2
    .line 955
    sget-object v21, Lcom/android/server/wifi/WifiMonitor;->mAssocRejectEventPattern:Ljava/util/regex/Pattern;

    #@4f4
    move-object/from16 v0, v21

    #@4f6
    invoke-virtual {v0, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@4f9
    move-result-object v15

    #@4fa
    .line 956
    .local v15, "match":Ljava/util/regex/Matcher;
    const-string/jumbo v5, ""

    #@4fd
    .line 957
    .local v5, "BSSID":Ljava/lang/String;
    const/16 v18, -0x1

    #@4ff
    .line 958
    .local v18, "status":I
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->find()Z

    #@502
    move-result v21

    #@503
    if-nez v21, :cond_37

    #@505
    .line 959
    sget-boolean v21, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    #@507
    if-eqz v21, :cond_36

    #@509
    const-string/jumbo v21, "WifiMonitor"

    #@50c
    const-string/jumbo v22, "Assoc Reject: Could not parse assoc reject string"

    #@50f
    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@512
    .line 968
    :cond_36
    :goto_8
    move-object/from16 v0, p0

    #@514
    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@516
    move-object/from16 v21, v0

    #@518
    sget v22, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    #@51a
    const v23, 0x2402b

    #@51d
    move-object/from16 v0, v21

    #@51f
    move/from16 v1, v23

    #@521
    move/from16 v2, v22

    #@523
    move/from16 v3, v18

    #@525
    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    #@528
    goto/16 :goto_7

    #@52a
    .line 961
    :cond_37
    const/16 v21, 0x1

    #@52c
    move/from16 v0, v21

    #@52e
    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@531
    move-result-object v5

    #@532
    .line 963
    const/16 v21, 0x2

    #@534
    :try_start_1
    move/from16 v0, v21

    #@536
    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@539
    move-result-object v21

    #@53a
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    #@53d
    move-result v18

    #@53e
    goto :goto_8

    #@53f
    .line 964
    :catch_1
    move-exception v7

    #@540
    .line 965
    .local v7, "e":Ljava/lang/NumberFormatException;
    const/16 v18, -0x1

    #@542
    goto :goto_8

    #@543
    .line 969
    .end local v5    # "BSSID":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    .end local v15    # "match":Ljava/util/regex/Matcher;
    .end local v18    # "status":I
    :cond_38
    const/16 v21, 0xc

    #@545
    move/from16 v0, v21

    #@547
    if-eq v8, v0, :cond_2d

    #@549
    .line 971
    const/16 v21, 0xd

    #@54b
    move/from16 v0, v21

    #@54d
    if-eq v8, v0, :cond_2d

    #@54f
    .line 974
    move-object/from16 v0, p0

    #@551
    invoke-virtual {v0, v8, v9}, Lcom/android/server/wifi/WifiMonitor;->handleEvent(ILjava/lang/String;)V

    #@554
    goto/16 :goto_7
.end method

.method private handleAnqpResult(Ljava/lang/String;)V
    .locals 12
    .param p1, "eventStr"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v9, 0x20

    #@2
    .line 1208
    const-string/jumbo v8, "addr="

    #@5
    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@8
    move-result v0

    #@9
    .line 1209
    .local v0, "addrPos":I
    const-string/jumbo v8, "result="

    #@c
    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@f
    move-result v6

    #@10
    .line 1210
    .local v6, "resPos":I
    if-ltz v0, :cond_0

    #@12
    if-gez v6, :cond_1

    #@14
    .line 1211
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@16
    const-string/jumbo v9, "Unexpected ANQP result notification"

    #@19
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v8

    #@1d
    .line 1213
    :cond_1
    const-string/jumbo v8, "addr="

    #@20
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@23
    move-result v8

    #@24
    add-int/2addr v8, v0

    #@25
    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->indexOf(II)I

    #@28
    move-result v1

    #@29
    .line 1214
    .local v1, "eoaddr":I
    if-gez v1, :cond_2

    #@2b
    .line 1215
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@2e
    move-result v1

    #@2f
    .line 1217
    :cond_2
    const-string/jumbo v8, "result="

    #@32
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@35
    move-result v8

    #@36
    add-int/2addr v8, v6

    #@37
    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->indexOf(II)I

    #@3a
    move-result v4

    #@3b
    .line 1218
    .local v4, "eoresult":I
    if-gez v4, :cond_3

    #@3d
    .line 1219
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@40
    move-result v4

    #@41
    .line 1223
    :cond_3
    :try_start_0
    const-string/jumbo v8, "addr="

    #@44
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@47
    move-result v8

    #@48
    add-int/2addr v8, v0

    #@49
    invoke-virtual {p1, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4c
    move-result-object v8

    #@4d
    invoke-static {v8}, Lcom/android/server/wifi/hotspot2/Utils;->parseMac(Ljava/lang/String;)J

    #@50
    move-result-wide v2

    #@51
    .line 1225
    .local v2, "bssid":J
    const-string/jumbo v8, "result="

    #@54
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@57
    move-result v8

    #@58
    add-int/2addr v8, v6

    #@59
    .line 1224
    invoke-virtual {p1, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@5c
    move-result-object v8

    #@5d
    .line 1225
    const-string/jumbo v9, "success"

    #@60
    .line 1224
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@63
    move-result v8

    #@64
    if-eqz v8, :cond_4

    #@66
    .line 1225
    const/4 v7, 0x1

    #@67
    .line 1227
    .local v7, "result":I
    :goto_0
    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@69
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@6c
    move-result-object v9

    #@6d
    const v10, 0x2402c

    #@70
    const/4 v11, 0x0

    #@71
    invoke-virtual {v8, v10, v7, v11, v9}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@74
    .line 1207
    .end local v2    # "bssid":J
    .end local v7    # "result":I
    :goto_1
    return-void

    #@75
    .line 1225
    .restart local v2    # "bssid":J
    :cond_4
    const/4 v7, 0x0

    #@76
    .restart local v7    # "result":I
    goto :goto_0

    #@77
    .line 1229
    .end local v2    # "bssid":J
    .end local v7    # "result":I
    :catch_0
    move-exception v5

    #@78
    .line 1230
    .local v5, "iae":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v8, "WifiMonitor"

    #@7b
    new-instance v9, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    const-string/jumbo v10, "Bad MAC address in ANQP response: "

    #@83
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v9

    #@87
    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    #@8a
    move-result-object v10

    #@8b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v9

    #@8f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v9

    #@93
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@96
    goto :goto_1
.end method

.method private handleAssociatedBSSIDEvent(Ljava/lang/String;)V
    .locals 6
    .param p1, "eventStr"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1037
    const/4 v0, 0x0

    #@1
    .line 1038
    .local v0, "BSSID":Ljava/lang/String;
    sget-object v2, Lcom/android/server/wifi/WifiMonitor;->mAssociatedPattern:Ljava/util/regex/Pattern;

    #@3
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@6
    move-result-object v1

    #@7
    .line 1039
    .local v1, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 1040
    const/4 v2, 0x1

    #@e
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .line 1042
    .end local v0    # "BSSID":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@14
    sget v3, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    #@16
    const v4, 0x20093

    #@19
    const/4 v5, 0x0

    #@1a
    invoke-virtual {v2, v4, v3, v5, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    #@1d
    .line 1036
    return-void
.end method

.method private handleDriverEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "state"    # Ljava/lang/String;

    #@0
    .prologue
    .line 982
    if-nez p1, :cond_0

    #@2
    .line 983
    return-void

    #@3
    .line 985
    :cond_0
    const-string/jumbo v0, "HANGED"

    #@6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 986
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@e
    const v1, 0x2400c

    #@11
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    #@14
    .line 981
    :cond_1
    return-void
.end method

.method private handleGasQueryEvents(Ljava/lang/String;)V
    .locals 11
    .param p1, "dataString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 1239
    iget-object v5, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    #@4
    if-nez v5, :cond_0

    #@6
    return-void

    #@7
    .line 1240
    :cond_0
    const-string/jumbo v5, "GAS-QUERY-START"

    #@a
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@d
    move-result v5

    #@e
    if-eqz v5, :cond_2

    #@10
    .line 1241
    iget-object v5, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    #@12
    const v6, 0x24033

    #@15
    invoke-virtual {v5, v6}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    #@18
    .line 1237
    :cond_1
    :goto_0
    return-void

    #@19
    .line 1242
    :cond_2
    const-string/jumbo v5, "GAS-QUERY-DONE"

    #@1c
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1f
    move-result v5

    #@20
    if-eqz v5, :cond_8

    #@22
    .line 1243
    const-string/jumbo v5, " "

    #@25
    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    .line 1244
    .local v1, "dataTokens":[Ljava/lang/String;
    const/4 v0, 0x0

    #@2a
    .line 1245
    .local v0, "bssid":Ljava/lang/String;
    const/4 v3, 0x0

    #@2b
    .line 1246
    .local v3, "success":I
    array-length v7, v1

    #@2c
    move v5, v6

    #@2d
    .end local v0    # "bssid":Ljava/lang/String;
    :goto_1
    if-ge v5, v7, :cond_7

    #@2f
    aget-object v4, v1, v5

    #@31
    .line 1247
    .local v4, "token":Ljava/lang/String;
    const-string/jumbo v8, "="

    #@34
    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    .line 1248
    .local v2, "nameValue":[Ljava/lang/String;
    array-length v8, v2

    #@39
    const/4 v9, 0x2

    #@3a
    if-eq v8, v9, :cond_4

    #@3c
    .line 1246
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    #@3e
    goto :goto_1

    #@3f
    .line 1251
    :cond_4
    aget-object v8, v2, v6

    #@41
    const-string/jumbo v9, "addr"

    #@44
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@47
    move-result v8

    #@48
    if-eqz v8, :cond_5

    #@4a
    .line 1252
    aget-object v0, v2, v10

    #@4c
    .local v0, "bssid":Ljava/lang/String;
    goto :goto_2

    #@4d
    .line 1255
    .end local v0    # "bssid":Ljava/lang/String;
    :cond_5
    aget-object v8, v2, v6

    #@4f
    const-string/jumbo v9, "result"

    #@52
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@55
    move-result v8

    #@56
    if-eqz v8, :cond_3

    #@58
    .line 1256
    aget-object v8, v2, v10

    #@5a
    const-string/jumbo v9, "SUCCESS"

    #@5d
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@60
    move-result v8

    #@61
    if-eqz v8, :cond_6

    #@63
    const/4 v3, 0x1

    #@64
    goto :goto_2

    #@65
    :cond_6
    const/4 v3, 0x0

    #@66
    goto :goto_2

    #@67
    .line 1260
    .end local v2    # "nameValue":[Ljava/lang/String;
    .end local v4    # "token":Ljava/lang/String;
    :cond_7
    iget-object v5, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    #@69
    const v7, 0x24034

    #@6c
    invoke-virtual {v5, v7, v3, v6, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    #@6f
    goto :goto_0

    #@70
    .line 1262
    .end local v1    # "dataTokens":[Ljava/lang/String;
    .end local v3    # "success":I
    :cond_8
    sget-boolean v5, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    #@72
    if-eqz v5, :cond_1

    #@74
    const-string/jumbo v5, "WifiMonitor"

    #@77
    new-instance v6, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    const-string/jumbo v7, "Unknown GAS query event: "

    #@7f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v6

    #@83
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v6

    #@87
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v6

    #@8b
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@8e
    goto :goto_0
.end method

.method private handleHostApEvents(Ljava/lang/String;)V
    .locals 4
    .param p1, "dataString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1192
    const-string/jumbo v1, " "

    #@4
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 1194
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
    .line 1195
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@15
    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@17
    invoke-direct {v2, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    #@1a
    const v3, 0x2402a

    #@1d
    invoke-virtual {v1, v3, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    #@20
    .line 1191
    :cond_0
    :goto_0
    return-void

    #@21
    .line 1197
    :cond_1
    aget-object v1, v0, v3

    #@23
    const-string/jumbo v2, "AP-STA-DISCONNECTED"

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v1

    #@2a
    if-eqz v1, :cond_0

    #@2c
    .line 1198
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@2e
    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@30
    invoke-direct {v2, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    #@33
    const v3, 0x24029

    #@36
    invoke-virtual {v1, v3, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    #@39
    goto :goto_0
.end method

.method private handleHs20Events(Ljava/lang/String;)V
    .locals 10
    .param p1, "dataString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x3

    #@1
    const/4 v8, 0x2

    #@2
    const/4 v7, 0x1

    #@3
    .line 1270
    iget-object v5, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    #@5
    if-nez v5, :cond_0

    #@7
    return-void

    #@8
    .line 1271
    :cond_0
    const-string/jumbo v5, "HS20-SUBSCRIPTION-REMEDIATION"

    #@b
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@e
    move-result v5

    #@f
    if-eqz v5, :cond_3

    #@11
    .line 1273
    const-string/jumbo v5, " "

    #@14
    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    .line 1274
    .local v1, "dataTokens":[Ljava/lang/String;
    const/4 v3, -0x1

    #@19
    .line 1275
    .local v3, "method":I
    const/4 v4, 0x0

    #@1a
    .line 1276
    .local v4, "url":Ljava/lang/String;
    array-length v5, v1

    #@1b
    if-lt v5, v9, :cond_1

    #@1d
    .line 1277
    aget-object v5, v1, v7

    #@1f
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@22
    move-result v3

    #@23
    .line 1278
    aget-object v4, v1, v8

    #@25
    .line 1280
    .end local v4    # "url":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    #@27
    const v6, 0x2403d

    #@2a
    const/4 v7, 0x0

    #@2b
    invoke-virtual {v5, v6, v3, v7, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    #@2e
    .line 1269
    .end local v1    # "dataTokens":[Ljava/lang/String;
    .end local v3    # "method":I
    :cond_2
    :goto_0
    return-void

    #@2f
    .line 1281
    :cond_3
    const-string/jumbo v5, "HS20-DEAUTH-IMMINENT-NOTICE"

    #@32
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@35
    move-result v5

    #@36
    if-eqz v5, :cond_5

    #@38
    .line 1283
    const/4 v0, -0x1

    #@39
    .line 1284
    .local v0, "code":I
    const/4 v2, -0x1

    #@3a
    .line 1285
    .local v2, "delay":I
    const/4 v4, 0x0

    #@3b
    .line 1286
    .restart local v4    # "url":Ljava/lang/String;
    const-string/jumbo v5, " "

    #@3e
    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    .line 1287
    .restart local v1    # "dataTokens":[Ljava/lang/String;
    array-length v5, v1

    #@43
    const/4 v6, 0x4

    #@44
    if-lt v5, v6, :cond_4

    #@46
    .line 1288
    aget-object v5, v1, v7

    #@48
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@4b
    move-result v0

    #@4c
    .line 1289
    aget-object v5, v1, v8

    #@4e
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@51
    move-result v2

    #@52
    .line 1290
    aget-object v4, v1, v9

    #@54
    .line 1292
    .end local v4    # "url":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    #@56
    const v6, 0x2403e

    #@59
    invoke-virtual {v5, v6, v0, v2, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    #@5c
    goto :goto_0

    #@5d
    .line 1294
    .end local v0    # "code":I
    .end local v1    # "dataTokens":[Ljava/lang/String;
    .end local v2    # "delay":I
    :cond_5
    sget-boolean v5, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    #@5f
    if-eqz v5, :cond_2

    #@61
    const-string/jumbo v5, "WifiMonitor"

    #@64
    new-instance v6, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v7, "Unknown HS20 event: "

    #@6c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v6

    #@70
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v6

    #@74
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v6

    #@78
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@7b
    goto :goto_0
.end method

.method private handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .locals 9
    .param p1, "newState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "data"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 1407
    const/4 v0, 0x0

    #@2
    .line 1408
    .local v0, "BSSID":Ljava/lang/String;
    const/4 v5, -0x1

    #@3
    .line 1409
    .local v5, "networkId":I
    const/4 v6, 0x0

    #@4
    .line 1410
    .local v6, "reason":I
    const/4 v2, -0x1

    #@5
    .line 1411
    .local v2, "ind":I
    const/4 v3, 0x0

    #@6
    .line 1413
    .local v3, "local":I
    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@8
    if-ne p1, v7, :cond_3

    #@a
    .line 1414
    sget-object v7, Lcom/android/server/wifi/WifiMonitor;->mConnectedEventPattern:Ljava/util/regex/Pattern;

    #@c
    invoke-virtual {v7, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@f
    move-result-object v4

    #@10
    .line 1415
    .local v4, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    #@13
    move-result v7

    #@14
    if-nez v7, :cond_2

    #@16
    .line 1416
    sget-boolean v7, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    #@18
    if-eqz v7, :cond_0

    #@1a
    const-string/jumbo v7, "WifiMonitor"

    #@1d
    const-string/jumbo v8, "handleNetworkStateChange: Couldnt find BSSID in event string"

    #@20
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 1425
    .end local v0    # "BSSID":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v0, v5, v6}, Lcom/android/server/wifi/WifiMonitor;->notifyNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;II)V

    #@26
    .line 1406
    .end local v4    # "match":Ljava/util/regex/Matcher;
    :cond_1
    :goto_1
    return-void

    #@27
    .line 1418
    .restart local v0    # "BSSID":Ljava/lang/String;
    .restart local v4    # "match":Ljava/util/regex/Matcher;
    :cond_2
    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    .line 1420
    .local v0, "BSSID":Ljava/lang/String;
    const/4 v7, 0x2

    #@2c
    :try_start_0
    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@2f
    move-result-object v7

    #@30
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@33
    move-result v5

    #@34
    goto :goto_0

    #@35
    .line 1421
    :catch_0
    move-exception v1

    #@36
    .line 1422
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v5, -0x1

    #@37
    goto :goto_0

    #@38
    .line 1426
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "match":Ljava/util/regex/Matcher;
    .local v0, "BSSID":Ljava/lang/String;
    :cond_3
    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@3a
    if-ne p1, v7, :cond_1

    #@3c
    .line 1427
    sget-object v7, Lcom/android/server/wifi/WifiMonitor;->mDisconnectedEventPattern:Ljava/util/regex/Pattern;

    #@3e
    invoke-virtual {v7, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@41
    move-result-object v4

    #@42
    .line 1428
    .restart local v4    # "match":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    #@45
    move-result v7

    #@46
    if-nez v7, :cond_5

    #@48
    .line 1429
    sget-boolean v7, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    #@4a
    if-eqz v7, :cond_4

    #@4c
    const-string/jumbo v7, "WifiMonitor"

    #@4f
    const-string/jumbo v8, "handleNetworkStateChange: Could not parse disconnect string"

    #@52
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@55
    .line 1443
    .end local v0    # "BSSID":Ljava/lang/String;
    :cond_4
    :goto_2
    invoke-virtual {p0, p1, v0, v3, v6}, Lcom/android/server/wifi/WifiMonitor;->notifyNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;II)V

    #@58
    goto :goto_1

    #@59
    .line 1431
    .restart local v0    # "BSSID":Ljava/lang/String;
    :cond_5
    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@5c
    move-result-object v0

    #@5d
    .line 1433
    .local v0, "BSSID":Ljava/lang/String;
    const/4 v7, 0x2

    #@5e
    :try_start_1
    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@61
    move-result-object v7

    #@62
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    #@65
    move-result v6

    #@66
    .line 1438
    :goto_3
    const/4 v7, 0x3

    #@67
    :try_start_2
    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@6a
    move-result-object v7

    #@6b
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    #@6e
    move-result v3

    #@6f
    goto :goto_2

    #@70
    .line 1434
    :catch_1
    move-exception v1

    #@71
    .line 1435
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    const/4 v6, -0x1

    #@72
    goto :goto_3

    #@73
    .line 1439
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v1

    #@74
    .line 1440
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    #@75
    goto :goto_2
.end method

.method private handleP2pEvents(Ljava/lang/String;)V
    .locals 6
    .param p1, "dataString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1134
    const-string/jumbo v3, "P2P-DEVICE-FOUND"

    #@3
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@6
    move-result v3

    #@7
    if-eqz v3, :cond_1

    #@9
    .line 1135
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->getWifiP2pDevice(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    #@c
    move-result-object v0

    #@d
    .line 1136
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v0, :cond_0

    #@f
    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@11
    const v4, 0x24015

    #@14
    invoke-virtual {v3, v4, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    #@17
    .line 1133
    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_0
    :goto_0
    return-void

    #@18
    .line 1137
    :cond_1
    const-string/jumbo v3, "P2P-DEVICE-LOST"

    #@1b
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_2

    #@21
    .line 1138
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->getWifiP2pDevice(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    #@24
    move-result-object v0

    #@25
    .line 1139
    .restart local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v0, :cond_0

    #@27
    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@29
    const v4, 0x24016

    #@2c
    invoke-virtual {v3, v4, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    #@2f
    goto :goto_0

    #@30
    .line 1140
    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_2
    const-string/jumbo v3, "P2P-FIND-STOPPED"

    #@33
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@36
    move-result v3

    #@37
    if-eqz v3, :cond_3

    #@39
    .line 1141
    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@3b
    const v4, 0x24025

    #@3e
    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    #@41
    goto :goto_0

    #@42
    .line 1142
    :cond_3
    const-string/jumbo v3, "P2P-GO-NEG-REQUEST"

    #@45
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@48
    move-result v3

    #@49
    if-eqz v3, :cond_4

    #@4b
    .line 1143
    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@4d
    .line 1144
    new-instance v4, Landroid/net/wifi/p2p/WifiP2pConfig;

    #@4f
    invoke-direct {v4, p1}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>(Ljava/lang/String;)V

    #@52
    .line 1143
    const v5, 0x24017

    #@55
    invoke-virtual {v3, v5, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    #@58
    goto :goto_0

    #@59
    .line 1145
    :cond_4
    const-string/jumbo v3, "P2P-GO-NEG-SUCCESS"

    #@5c
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@5f
    move-result v3

    #@60
    if-eqz v3, :cond_5

    #@62
    .line 1146
    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@64
    const v4, 0x24019

    #@67
    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    #@6a
    goto :goto_0

    #@6b
    .line 1147
    :cond_5
    const-string/jumbo v3, "P2P-GO-NEG-FAILURE"

    #@6e
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@71
    move-result v3

    #@72
    if-eqz v3, :cond_6

    #@74
    .line 1148
    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@76
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->p2pError(Ljava/lang/String;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@79
    move-result-object v4

    #@7a
    const v5, 0x2401a

    #@7d
    invoke-virtual {v3, v5, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    #@80
    goto :goto_0

    #@81
    .line 1149
    :cond_6
    const-string/jumbo v3, "P2P-GROUP-FORMATION-SUCCESS"

    #@84
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@87
    move-result v3

    #@88
    if-eqz v3, :cond_7

    #@8a
    .line 1150
    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@8c
    const v4, 0x2401b

    #@8f
    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    #@92
    goto :goto_0

    #@93
    .line 1151
    :cond_7
    const-string/jumbo v3, "P2P-GROUP-FORMATION-FAILURE"

    #@96
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@99
    move-result v3

    #@9a
    if-eqz v3, :cond_8

    #@9c
    .line 1152
    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@9e
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->p2pError(Ljava/lang/String;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@a1
    move-result-object v4

    #@a2
    const v5, 0x2401c

    #@a5
    invoke-virtual {v3, v5, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    #@a8
    goto/16 :goto_0

    #@aa
    .line 1153
    :cond_8
    const-string/jumbo v3, "P2P-GROUP-STARTED"

    #@ad
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@b0
    move-result v3

    #@b1
    if-eqz v3, :cond_9

    #@b3
    .line 1154
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->getWifiP2pGroup(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@b6
    move-result-object v1

    #@b7
    .line 1155
    .local v1, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    if-eqz v1, :cond_0

    #@b9
    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@bb
    const v4, 0x2401d

    #@be
    invoke-virtual {v3, v4, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    #@c1
    goto/16 :goto_0

    #@c3
    .line 1156
    .end local v1    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    :cond_9
    const-string/jumbo v3, "P2P-GROUP-REMOVED"

    #@c6
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@c9
    move-result v3

    #@ca
    if-eqz v3, :cond_a

    #@cc
    .line 1157
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->getWifiP2pGroup(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pGroup;

    #@cf
    move-result-object v1

    #@d0
    .line 1158
    .restart local v1    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    if-eqz v1, :cond_0

    #@d2
    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@d4
    const v4, 0x2401e

    #@d7
    invoke-virtual {v3, v4, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    #@da
    goto/16 :goto_0

    #@dc
    .line 1159
    .end local v1    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    :cond_a
    const-string/jumbo v3, "P2P-INVITATION-RECEIVED"

    #@df
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@e2
    move-result v3

    #@e3
    if-eqz v3, :cond_b

    #@e5
    .line 1160
    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@e7
    .line 1161
    new-instance v4, Landroid/net/wifi/p2p/WifiP2pGroup;

    #@e9
    invoke-direct {v4, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    #@ec
    .line 1160
    const v5, 0x2401f

    #@ef
    invoke-virtual {v3, v5, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    #@f2
    goto/16 :goto_0

    #@f4
    .line 1162
    :cond_b
    const-string/jumbo v3, "P2P-INVITATION-RESULT"

    #@f7
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@fa
    move-result v3

    #@fb
    if-eqz v3, :cond_c

    #@fd
    .line 1163
    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@ff
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->p2pError(Ljava/lang/String;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@102
    move-result-object v4

    #@103
    const v5, 0x24020

    #@106
    invoke-virtual {v3, v5, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    #@109
    goto/16 :goto_0

    #@10b
    .line 1164
    :cond_c
    const-string/jumbo v3, "P2P-PROV-DISC-PBC-REQ"

    #@10e
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@111
    move-result v3

    #@112
    if-eqz v3, :cond_d

    #@114
    .line 1165
    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@116
    .line 1166
    new-instance v4, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    #@118
    invoke-direct {v4, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    #@11b
    .line 1165
    const v5, 0x24021

    #@11e
    invoke-virtual {v3, v5, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    #@121
    goto/16 :goto_0

    #@123
    .line 1167
    :cond_d
    const-string/jumbo v3, "P2P-PROV-DISC-PBC-RESP"

    #@126
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@129
    move-result v3

    #@12a
    if-eqz v3, :cond_e

    #@12c
    .line 1168
    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@12e
    .line 1169
    new-instance v4, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    #@130
    invoke-direct {v4, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    #@133
    .line 1168
    const v5, 0x24022

    #@136
    invoke-virtual {v3, v5, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    #@139
    goto/16 :goto_0

    #@13b
    .line 1170
    :cond_e
    const-string/jumbo v3, "P2P-PROV-DISC-ENTER-PIN"

    #@13e
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@141
    move-result v3

    #@142
    if-eqz v3, :cond_f

    #@144
    .line 1171
    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@146
    .line 1172
    new-instance v4, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    #@148
    invoke-direct {v4, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    #@14b
    .line 1171
    const v5, 0x24023

    #@14e
    invoke-virtual {v3, v5, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    #@151
    goto/16 :goto_0

    #@153
    .line 1173
    :cond_f
    const-string/jumbo v3, "P2P-PROV-DISC-SHOW-PIN"

    #@156
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@159
    move-result v3

    #@15a
    if-eqz v3, :cond_10

    #@15c
    .line 1174
    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@15e
    .line 1175
    new-instance v4, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    #@160
    invoke-direct {v4, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    #@163
    .line 1174
    const v5, 0x24024

    #@166
    invoke-virtual {v3, v5, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    #@169
    goto/16 :goto_0

    #@16b
    .line 1176
    :cond_10
    const-string/jumbo v3, "P2P-PROV-DISC-FAILURE"

    #@16e
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@171
    move-result v3

    #@172
    if-eqz v3, :cond_11

    #@174
    .line 1177
    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@176
    const v4, 0x24027

    #@179
    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    #@17c
    goto/16 :goto_0

    #@17e
    .line 1178
    :cond_11
    const-string/jumbo v3, "P2P-SERV-DISC-RESP"

    #@181
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@184
    move-result v3

    #@185
    if-eqz v3, :cond_0

    #@187
    .line 1179
    invoke-static {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->newInstance(Ljava/lang/String;)Ljava/util/List;

    #@18a
    move-result-object v2

    #@18b
    .line 1180
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;>;"
    if-eqz v2, :cond_12

    #@18d
    .line 1181
    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@18f
    const v4, 0x24026

    #@192
    invoke-virtual {v3, v4, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    #@195
    goto/16 :goto_0

    #@197
    .line 1183
    :cond_12
    const-string/jumbo v3, "WifiMonitor"

    #@19a
    new-instance v4, Ljava/lang/StringBuilder;

    #@19c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@19f
    const-string/jumbo v5, "Null service resp "

    #@1a2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a5
    move-result-object v4

    #@1a6
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a9
    move-result-object v4

    #@1aa
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ad
    move-result-object v4

    #@1ae
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1b1
    goto/16 :goto_0
.end method

.method private handleRequests(Ljava/lang/String;)V
    .locals 13
    .param p1, "dataString"    # Ljava/lang/String;

    #@0
    .prologue
    const v12, 0x24010

    #@3
    const/4 v10, 0x4

    #@4
    const/4 v9, 0x2

    #@5
    const/4 v11, 0x1

    #@6
    .line 1302
    const/4 v0, 0x0

    #@7
    .line 1303
    .local v0, "SSID":Ljava/lang/String;
    const/4 v6, -0x2

    #@8
    .line 1304
    .local v6, "reason":I
    sget v8, Lcom/android/server/wifi/WifiMonitor;->REQUEST_PREFIX_LEN_STR:I

    #@a
    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@d
    move-result-object v7

    #@e
    .line 1305
    .local v7, "requestName":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@11
    move-result v8

    #@12
    if-eqz v8, :cond_0

    #@14
    .line 1306
    return-void

    #@15
    .line 1308
    :cond_0
    const-string/jumbo v8, "IDENTITY"

    #@18
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1b
    move-result v8

    #@1c
    if-eqz v8, :cond_3

    #@1e
    .line 1309
    sget-object v8, Lcom/android/server/wifi/WifiMonitor;->mRequestIdentityPattern:Ljava/util/regex/Pattern;

    #@20
    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@23
    move-result-object v3

    #@24
    .line 1310
    .local v3, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    #@27
    move-result v8

    #@28
    if-eqz v8, :cond_2

    #@2a
    .line 1311
    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    .line 1313
    .local v0, "SSID":Ljava/lang/String;
    const/4 v8, 0x1

    #@2f
    :try_start_0
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@32
    move-result-object v8

    #@33
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    move-result v6

    #@37
    .line 1320
    .end local v0    # "SSID":Ljava/lang/String;
    :goto_0
    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@39
    sget v9, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    #@3b
    const v10, 0x2400f

    #@3e
    invoke-virtual {v8, v10, v9, v6, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    #@41
    .line 1301
    .end local v3    # "match":Ljava/util/regex/Matcher;
    :cond_1
    :goto_1
    return-void

    #@42
    .line 1314
    .restart local v0    # "SSID":Ljava/lang/String;
    .restart local v3    # "match":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v2

    #@43
    .line 1315
    .local v2, "e":Ljava/lang/NumberFormatException;
    const/4 v6, -0x1

    #@44
    goto :goto_0

    #@45
    .line 1318
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .local v0, "SSID":Ljava/lang/String;
    :cond_2
    const-string/jumbo v8, "WifiMonitor"

    #@48
    new-instance v9, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v10, "didn\'t find SSID "

    #@50
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v9

    #@54
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v9

    #@58
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v9

    #@5c
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5f
    goto :goto_0

    #@60
    .line 1321
    .end local v3    # "match":Ljava/util/regex/Matcher;
    :cond_3
    const-string/jumbo v8, "SIM"

    #@63
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@66
    move-result v8

    #@67
    if-eqz v8, :cond_6

    #@69
    .line 1322
    sget-object v8, Lcom/android/server/wifi/WifiMonitor;->mRequestGsmAuthPattern:Ljava/util/regex/Pattern;

    #@6b
    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@6e
    move-result-object v4

    #@6f
    .line 1323
    .local v4, "matchGsm":Ljava/util/regex/Matcher;
    sget-object v8, Lcom/android/server/wifi/WifiMonitor;->mRequestUmtsAuthPattern:Ljava/util/regex/Pattern;

    #@71
    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@74
    move-result-object v5

    #@75
    .line 1325
    .local v5, "matchUmts":Ljava/util/regex/Matcher;
    new-instance v1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;

    #@77
    invoke-direct {v1}, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;-><init>()V

    #@7a
    .line 1326
    .local v1, "data":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    #@7d
    move-result v8

    #@7e
    if-eqz v8, :cond_4

    #@80
    .line 1327
    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@83
    move-result-object v8

    #@84
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@87
    move-result v8

    #@88
    iput v8, v1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->networkId:I

    #@8a
    .line 1328
    iput v10, v1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    #@8c
    .line 1329
    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@8f
    move-result-object v8

    #@90
    iput-object v8, v1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->ssid:Ljava/lang/String;

    #@92
    .line 1330
    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@95
    move-result-object v8

    #@96
    const-string/jumbo v9, ":"

    #@99
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@9c
    move-result-object v8

    #@9d
    iput-object v8, v1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->data:[Ljava/lang/String;

    #@9f
    .line 1331
    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@a1
    invoke-virtual {v8, v12, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    #@a4
    goto :goto_1

    #@a5
    .line 1332
    :cond_4
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    #@a8
    move-result v8

    #@a9
    if-eqz v8, :cond_5

    #@ab
    .line 1333
    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@ae
    move-result-object v8

    #@af
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@b2
    move-result v8

    #@b3
    iput v8, v1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->networkId:I

    #@b5
    .line 1334
    const/4 v8, 0x5

    #@b6
    iput v8, v1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    #@b8
    .line 1335
    invoke-virtual {v5, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@bb
    move-result-object v8

    #@bc
    iput-object v8, v1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->ssid:Ljava/lang/String;

    #@be
    .line 1336
    new-array v8, v9, [Ljava/lang/String;

    #@c0
    iput-object v8, v1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->data:[Ljava/lang/String;

    #@c2
    .line 1337
    iget-object v8, v1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->data:[Ljava/lang/String;

    #@c4
    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@c7
    move-result-object v9

    #@c8
    const/4 v10, 0x0

    #@c9
    aput-object v9, v8, v10

    #@cb
    .line 1338
    iget-object v8, v1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->data:[Ljava/lang/String;

    #@cd
    const/4 v9, 0x3

    #@ce
    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@d1
    move-result-object v9

    #@d2
    aput-object v9, v8, v11

    #@d4
    .line 1339
    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@d6
    invoke-virtual {v8, v12, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    #@d9
    goto/16 :goto_1

    #@db
    .line 1341
    :cond_5
    const-string/jumbo v8, "WifiMonitor"

    #@de
    new-instance v9, Ljava/lang/StringBuilder;

    #@e0
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@e3
    const-string/jumbo v10, "couldn\'t parse SIM auth request - "

    #@e6
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v9

    #@ea
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v9

    #@ee
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f1
    move-result-object v9

    #@f2
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@f5
    goto/16 :goto_1

    #@f7
    .line 1345
    .end local v1    # "data":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    .end local v4    # "matchGsm":Ljava/util/regex/Matcher;
    .end local v5    # "matchUmts":Ljava/util/regex/Matcher;
    :cond_6
    sget-boolean v8, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    #@f9
    if-eqz v8, :cond_1

    #@fb
    const-string/jumbo v8, "WifiMonitor"

    #@fe
    new-instance v9, Ljava/lang/StringBuilder;

    #@100
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@103
    const-string/jumbo v10, "couldn\'t identify request type - "

    #@106
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    move-result-object v9

    #@10a
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10d
    move-result-object v9

    #@10e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@111
    move-result-object v9

    #@112
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@115
    goto/16 :goto_1
.end method

.method private handleSupplicantStateChange(Ljava/lang/String;)V
    .locals 17
    .param p1, "dataString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1355
    const/4 v12, 0x0

    #@1
    .line 1356
    .local v12, "wifiSsid":Landroid/net/wifi/WifiSsid;
    const-string/jumbo v13, "SSID="

    #@4
    move-object/from16 v0, p1

    #@6
    invoke-virtual {v0, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@9
    move-result v4

    #@a
    .line 1357
    .local v4, "index":I
    const/4 v13, -0x1

    #@b
    if-eq v4, v13, :cond_0

    #@d
    .line 1359
    add-int/lit8 v13, v4, 0x5

    #@f
    move-object/from16 v0, p1

    #@11
    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@14
    move-result-object v13

    #@15
    .line 1358
    invoke-static {v13}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    #@18
    move-result-object v12

    #@19
    .line 1361
    .end local v12    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    :cond_0
    const-string/jumbo v13, " "

    #@1c
    move-object/from16 v0, p1

    #@1e
    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    .line 1363
    .local v2, "dataTokens":[Ljava/lang/String;
    const/4 v1, 0x0

    #@23
    .line 1364
    .local v1, "BSSID":Ljava/lang/String;
    const/4 v6, -0x1

    #@24
    .line 1365
    .local v6, "networkId":I
    const/4 v7, -0x1

    #@25
    .line 1366
    .local v7, "newState":I
    const/4 v13, 0x0

    #@26
    array-length v14, v2

    #@27
    .end local v1    # "BSSID":Ljava/lang/String;
    :goto_0
    if-ge v13, v14, :cond_5

    #@29
    aget-object v10, v2, v13

    #@2b
    .line 1367
    .local v10, "token":Ljava/lang/String;
    const-string/jumbo v15, "="

    #@2e
    invoke-virtual {v10, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@31
    move-result-object v5

    #@32
    .line 1368
    .local v5, "nameValue":[Ljava/lang/String;
    array-length v15, v5

    #@33
    const/16 v16, 0x2

    #@35
    move/from16 v0, v16

    #@37
    if-eq v15, v0, :cond_2

    #@39
    .line 1366
    :cond_1
    :goto_1
    add-int/lit8 v13, v13, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 1372
    :cond_2
    const/4 v15, 0x0

    #@3d
    aget-object v15, v5, v15

    #@3f
    const-string/jumbo v16, "BSSID"

    #@42
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v15

    #@46
    if-eqz v15, :cond_3

    #@48
    .line 1373
    const/4 v15, 0x1

    #@49
    aget-object v1, v5, v15

    #@4b
    .local v1, "BSSID":Ljava/lang/String;
    goto :goto_1

    #@4c
    .line 1379
    .end local v1    # "BSSID":Ljava/lang/String;
    :cond_3
    const/4 v15, 0x1

    #@4d
    :try_start_0
    aget-object v15, v5, v15

    #@4f
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@52
    move-result v11

    #@53
    .line 1384
    .local v11, "value":I
    const/4 v15, 0x0

    #@54
    aget-object v15, v5, v15

    #@56
    const-string/jumbo v16, "id"

    #@59
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5c
    move-result v15

    #@5d
    if-eqz v15, :cond_4

    #@5f
    .line 1385
    move v6, v11

    #@60
    goto :goto_1

    #@61
    .line 1386
    :cond_4
    const/4 v15, 0x0

    #@62
    aget-object v15, v5, v15

    #@64
    const-string/jumbo v16, "state"

    #@67
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6a
    move-result v15

    #@6b
    if-eqz v15, :cond_1

    #@6d
    .line 1387
    move v7, v11

    #@6e
    goto :goto_1

    #@6f
    .line 1391
    .end local v5    # "nameValue":[Ljava/lang/String;
    .end local v10    # "token":Ljava/lang/String;
    .end local v11    # "value":I
    :cond_5
    const/4 v13, -0x1

    #@70
    if-ne v7, v13, :cond_6

    #@72
    return-void

    #@73
    .line 1393
    :cond_6
    sget-object v8, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    #@75
    .line 1394
    .local v8, "newSupplicantState":Landroid/net/wifi/SupplicantState;
    invoke-static {}, Landroid/net/wifi/SupplicantState;->values()[Landroid/net/wifi/SupplicantState;

    #@78
    move-result-object v14

    #@79
    const/4 v13, 0x0

    #@7a
    array-length v15, v14

    #@7b
    :goto_2
    if-ge v13, v15, :cond_7

    #@7d
    aget-object v9, v14, v13

    #@7f
    .line 1395
    .local v9, "state":Landroid/net/wifi/SupplicantState;
    invoke-virtual {v9}, Landroid/net/wifi/SupplicantState;->ordinal()I

    #@82
    move-result v16

    #@83
    move/from16 v0, v16

    #@85
    if-ne v0, v7, :cond_9

    #@87
    .line 1396
    move-object v8, v9

    #@88
    .line 1400
    .end local v9    # "state":Landroid/net/wifi/SupplicantState;
    :cond_7
    sget-object v13, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    #@8a
    if-ne v8, v13, :cond_8

    #@8c
    .line 1401
    const-string/jumbo v13, "WifiMonitor"

    #@8f
    new-instance v14, Ljava/lang/StringBuilder;

    #@91
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@94
    const-string/jumbo v15, "Invalid supplicant state: "

    #@97
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v14

    #@9b
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v14

    #@9f
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a2
    move-result-object v14

    #@a3
    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@a6
    .line 1403
    :cond_8
    move-object/from16 v0, p0

    #@a8
    invoke-virtual {v0, v6, v12, v1, v8}, Lcom/android/server/wifi/WifiMonitor;->notifySupplicantStateChange(ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V

    #@ab
    .line 1354
    return-void

    #@ac
    .line 1394
    .restart local v9    # "state":Landroid/net/wifi/SupplicantState;
    :cond_9
    add-int/lit8 v13, v13, 0x1

    #@ae
    goto :goto_2

    #@af
    .line 1380
    .end local v8    # "newSupplicantState":Landroid/net/wifi/SupplicantState;
    .end local v9    # "state":Landroid/net/wifi/SupplicantState;
    .restart local v5    # "nameValue":[Ljava/lang/String;
    .restart local v10    # "token":Ljava/lang/String;
    :catch_0
    move-exception v3

    #@b0
    .local v3, "e":Ljava/lang/NumberFormatException;
    goto :goto_1
.end method

.method private handleTargetBSSIDEvent(Ljava/lang/String;)V
    .locals 6
    .param p1, "eventStr"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1028
    const/4 v0, 0x0

    #@1
    .line 1029
    .local v0, "BSSID":Ljava/lang/String;
    sget-object v2, Lcom/android/server/wifi/WifiMonitor;->mTargetBSSIDPattern:Ljava/util/regex/Pattern;

    #@3
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@6
    move-result-object v1

    #@7
    .line 1030
    .local v1, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 1031
    const/4 v2, 0x1

    #@e
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .line 1033
    .end local v0    # "BSSID":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@14
    sget v3, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    #@16
    const v4, 0x2008d

    #@19
    const/4 v5, 0x0

    #@1a
    invoke-virtual {v2, v4, v3, v5, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    #@1d
    .line 1027
    return-void
.end method

.method private handleWpsFailEvent(Ljava/lang/String;)V
    .locals 12
    .param p1, "dataString"    # Ljava/lang/String;

    #@0
    .prologue
    const v11, 0x24009

    #@3
    const/4 v10, 0x0

    #@4
    .line 1047
    const-string/jumbo v7, "WPS-FAIL msg=\\d+(?: config_error=(\\d+))?(?: reason=(\\d+))?"

    #@7
    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@a
    move-result-object v3

    #@b
    .line 1048
    .local v3, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@e
    move-result-object v2

    #@f
    .line 1049
    .local v2, "match":Ljava/util/regex/Matcher;
    const/4 v4, 0x0

    #@10
    .line 1050
    .local v4, "reason":I
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    #@13
    move-result v7

    #@14
    if-eqz v7, :cond_1

    #@16
    .line 1051
    const/4 v7, 0x1

    #@17
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    .line 1052
    .local v1, "cfgErrStr":Ljava/lang/String;
    const/4 v7, 0x2

    #@1c
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@1f
    move-result-object v6

    #@20
    .line 1054
    .local v6, "reasonStr":Ljava/lang/String;
    if-eqz v6, :cond_0

    #@22
    .line 1055
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@25
    move-result v5

    #@26
    .line 1056
    .local v5, "reasonInt":I
    packed-switch v5, :pswitch_data_0

    #@29
    .line 1066
    move v4, v5

    #@2a
    .line 1070
    .end local v5    # "reasonInt":I
    :cond_0
    if-eqz v1, :cond_1

    #@2c
    .line 1071
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2f
    move-result v0

    #@30
    .line 1072
    .local v0, "cfgErrInt":I
    sparse-switch v0, :sswitch_data_0

    #@33
    .line 1082
    if-nez v4, :cond_1

    #@35
    move v4, v0

    #@36
    .line 1088
    .end local v0    # "cfgErrInt":I
    .end local v1    # "cfgErrStr":Ljava/lang/String;
    .end local v6    # "reasonStr":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@38
    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@3a
    invoke-virtual {v8, v11, v10, v4}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    #@3d
    move-result-object v8

    #@3e
    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    #@41
    .line 1046
    return-void

    #@42
    .line 1058
    .restart local v1    # "cfgErrStr":Ljava/lang/String;
    .restart local v5    # "reasonInt":I
    .restart local v6    # "reasonStr":Ljava/lang/String;
    :pswitch_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@44
    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@46
    .line 1059
    const/4 v9, 0x5

    #@47
    .line 1058
    invoke-virtual {v8, v11, v9, v10}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    #@4a
    move-result-object v8

    #@4b
    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    #@4e
    .line 1060
    return-void

    #@4f
    .line 1062
    :pswitch_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@51
    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@53
    .line 1063
    const/4 v9, 0x4

    #@54
    .line 1062
    invoke-virtual {v8, v11, v9, v10}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    #@57
    move-result-object v8

    #@58
    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    #@5b
    .line 1064
    return-void

    #@5c
    .line 1074
    .end local v5    # "reasonInt":I
    .restart local v0    # "cfgErrInt":I
    :sswitch_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@5e
    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@60
    .line 1075
    const/4 v9, 0x6

    #@61
    .line 1074
    invoke-virtual {v8, v11, v9, v10}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    #@64
    move-result-object v8

    #@65
    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    #@68
    .line 1076
    return-void

    #@69
    .line 1078
    :sswitch_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@6b
    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@6d
    .line 1079
    const/4 v9, 0x3

    #@6e
    .line 1078
    invoke-virtual {v8, v11, v9, v10}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    #@71
    move-result-object v8

    #@72
    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    #@75
    .line 1080
    return-void

    #@76
    .line 1056
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    #@7e
    .line 1072
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method private logDbg(Ljava/lang/String;)V
    .locals 1
    .param p1, "debug"    # Ljava/lang/String;

    #@0
    .prologue
    .line 775
    const-string/jumbo v0, "WifiMonitor"

    #@3
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 774
    return-void
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
    .line 1094
    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNKNOWN:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@4
    .line 1095
    .local v1, "err":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    const-string/jumbo v4, " "

    #@7
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@a
    move-result-object v3

    #@b
    .line 1096
    .local v3, "tokens":[Ljava/lang/String;
    array-length v4, v3

    #@c
    if-ge v4, v7, :cond_0

    #@e
    return-object v1

    #@f
    .line 1097
    :cond_0
    aget-object v4, v3, v6

    #@11
    const-string/jumbo v5, "="

    #@14
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    .line 1098
    .local v2, "nameValue":[Ljava/lang/String;
    array-length v4, v2

    #@19
    if-eq v4, v7, :cond_1

    #@1b
    return-object v1

    #@1c
    .line 1101
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
    .line 1102
    sget-object v4, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->NO_COMMON_CHANNEL:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    #@29
    return-object v4

    #@2a
    .line 1105
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
    .line 1109
    :goto_0
    return-object v1

    #@36
    .line 1106
    :catch_0
    move-exception v0

    #@37
    .line 1107
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    #@3a
    goto :goto_0
.end method


# virtual methods
.method enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 545
    if-lez p1, :cond_0

    #@3
    .line 546
    const/4 v0, 0x1

    #@4
    sput-boolean v0, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    #@6
    .line 544
    :goto_0
    return-void

    #@7
    .line 548
    :cond_0
    sput-boolean v0, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    #@9
    goto :goto_0
.end method

.method getWifiP2pDevice(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 3
    .param p1, "dataString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1114
    :try_start_0
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@2
    invoke-direct {v0, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1115
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    return-object v0

    #@6
    .line 1116
    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :catch_0
    move-exception v1

    #@7
    .line 1117
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    #@8
    return-object v2
.end method

.method getWifiP2pGroup(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 3
    .param p1, "dataString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1123
    :try_start_0
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pGroup;

    #@2
    invoke-direct {v1, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1124
    .local v1, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    return-object v1

    #@6
    .line 1125
    .end local v1    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    :catch_0
    move-exception v0

    #@7
    .line 1126
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    #@8
    return-object v2
.end method

.method handleEvent(ILjava/lang/String;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "remainder"    # Ljava/lang/String;

    #@0
    .prologue
    .line 997
    sget-boolean v0, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 998
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v1, "handleEvent "

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    const-string/jumbo v1, "  "

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiMonitor;->logDbg(Ljava/lang/String;)V

    #@2a
    .line 1000
    :cond_0
    sparse-switch p1, :sswitch_data_0

    #@2d
    .line 996
    :cond_1
    :goto_0
    return-void

    #@2e
    .line 1002
    :sswitch_0
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@30
    invoke-direct {p0, v0, p2}, Lcom/android/server/wifi/WifiMonitor;->handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    #@33
    goto :goto_0

    #@34
    .line 1006
    :sswitch_1
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@36
    invoke-direct {p0, v0, p2}, Lcom/android/server/wifi/WifiMonitor;->handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    #@39
    goto :goto_0

    #@3a
    .line 1010
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@3c
    const v1, 0x24005

    #@3f
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    #@42
    goto :goto_0

    #@43
    .line 1014
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@45
    const v1, 0x24011

    #@48
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    #@4b
    goto :goto_0

    #@4c
    .line 1018
    :sswitch_4
    sget-boolean v0, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    #@4e
    if-eqz v0, :cond_1

    #@50
    .line 1019
    new-instance v0, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v1, "handleEvent unknown: "

    #@58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v0

    #@5c
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@5f
    move-result-object v1

    #@60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v0

    #@64
    const-string/jumbo v1, "  "

    #@67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v0

    #@6b
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v0

    #@6f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v0

    #@73
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiMonitor;->logDbg(Ljava/lang/String;)V

    #@76
    goto :goto_0

    #@77
    .line 1000
    nop

    #@78
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x4 -> :sswitch_2
        0xe -> :sswitch_4
        0xf -> :sswitch_3
    .end sparse-switch
.end method

.method public killSupplicant(Z)V
    .locals 1
    .param p1, "p2pSupported"    # Z

    #@0
    .prologue
    .line 570
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->-get1()Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->killSupplicant(Z)V

    #@7
    .line 569
    return-void
.end method

.method notifyNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;II)V
    .locals 3
    .param p1, "newState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "netId"    # I
    .param p4, "reason"    # I

    #@0
    .prologue
    .line 1458
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@2
    if-ne p1, v1, :cond_0

    #@4
    .line 1459
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@6
    const v2, 0x24003

    #@9
    invoke-virtual {v1, v2, p3, p4, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@c
    move-result-object v0

    #@d
    .line 1461
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@f
    invoke-virtual {v1, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    #@12
    .line 1457
    :goto_0
    return-void

    #@13
    .line 1464
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@15
    const v2, 0x24004

    #@18
    invoke-virtual {v1, v2, p3, p4, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@1b
    move-result-object v0

    #@1c
    .line 1466
    .restart local v0    # "m":Landroid/os/Message;
    sget-boolean v1, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    #@1e
    if-eqz v1, :cond_1

    #@20
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v2, "WifiMonitor notify network disconnect: "

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    .line 1468
    const-string/jumbo v2, " reason="

    #@33
    .line 1466
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    .line 1468
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    .line 1466
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiMonitor;->logDbg(Ljava/lang/String;)V

    #@46
    .line 1469
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@48
    invoke-virtual {v1, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    #@4b
    goto :goto_0
.end method

.method notifySupplicantStateChange(ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V
    .locals 6
    .param p1, "networkId"    # I
    .param p2, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p3, "BSSID"    # Ljava/lang/String;
    .param p4, "newState"    # Landroid/net/wifi/SupplicantState;

    #@0
    .prologue
    .line 1483
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@2
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    #@4
    .line 1484
    sget v2, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    #@6
    .line 1485
    new-instance v3, Lcom/android/server/wifi/StateChangeResult;

    #@8
    invoke-direct {v3, p1, p2, p3, p4}, Lcom/android/server/wifi/StateChangeResult;-><init>(ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V

    #@b
    .line 1483
    const v4, 0x24006

    #@e
    .line 1484
    const/4 v5, 0x0

    #@f
    .line 1483
    invoke-virtual {v1, v4, v2, v5, v3}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    #@16
    .line 1482
    return-void
.end method

.method public setStateMachine2(Lcom/android/internal/util/StateMachine;)V
    .locals 0
    .param p1, "stateMachine"    # Lcom/android/internal/util/StateMachine;

    #@0
    .prologue
    .line 554
    iput-object p1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    #@2
    .line 553
    return-void
.end method

.method public startMonitoring()V
    .locals 2

    #@0
    .prologue
    .line 558
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->-get1()Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;

    #@6
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->startMonitoring(Ljava/lang/String;)V

    #@9
    .line 557
    return-void
.end method

.method public stopMonitoring()V
    .locals 2

    #@0
    .prologue
    .line 562
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->-get1()Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;

    #@6
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->stopMonitoring(Ljava/lang/String;)V

    #@9
    .line 561
    return-void
.end method

.method public stopSupplicant()V
    .locals 1

    #@0
    .prologue
    .line 566
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->-get1()Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->stopSupplicant()V

    #@7
    .line 565
    return-void
.end method
