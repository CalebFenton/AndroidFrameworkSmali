.class public Lcom/android/server/connectivity/NetworkMonitor;
.super Lcom/android/internal/util/StateMachine;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;,
        Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;,
        Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;,
        Lcom/android/server/connectivity/NetworkMonitor$DefaultState;,
        Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;,
        Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;,
        Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;
    }
.end annotation


# static fields
.field public static final ACTION_NETWORK_CONDITIONS_MEASURED:Ljava/lang/String; = "android.net.conn.NETWORK_CONDITIONS_MEASURED"

.field private static final BASE:I = 0x82000

.field private static final BLAME_FOR_EVALUATION_ATTEMPTS:I = 0x5

.field private static final CAPTIVE_PORTAL_REEVALUATE_DELAY_MS:I = 0x927c0

.field private static final CMD_CAPTIVE_PORTAL_APP_FINISHED:I = 0x82009

.field private static final CMD_CAPTIVE_PORTAL_RECHECK:I = 0x8200c

.field public static final CMD_FORCE_REEVALUATION:I = 0x82008

.field private static final CMD_LAUNCH_CAPTIVE_PORTAL_APP:I = 0x8200b

.field public static final CMD_NETWORK_CONNECTED:I = 0x82001

.field public static final CMD_NETWORK_DISCONNECTED:I = 0x82007

.field private static final CMD_REEVALUATE:I = 0x82006

.field private static final DBG:Z = false

.field private static final DEFAULT_FALLBACK_URL:Ljava/lang/String; = "http://www.google.com/gen_204"

.field private static final DEFAULT_HTTPS_URL:Ljava/lang/String; = "https://www.google.com/generate_204"

.field private static final DEFAULT_HTTP_URL:Ljava/lang/String; = "http://connectivitycheck.gstatic.com/generate_204"

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String; = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.82 Safari/537.36"

.field public static final EVENT_NETWORK_TESTED:I = 0x82002

.field public static final EVENT_PROVISIONING_NOTIFICATION:I = 0x8200a

.field public static final EXTRA_BSSID:Ljava/lang/String; = "extra_bssid"

.field public static final EXTRA_CELL_ID:Ljava/lang/String; = "extra_cellid"

.field public static final EXTRA_CONNECTIVITY_TYPE:Ljava/lang/String; = "extra_connectivity_type"

.field public static final EXTRA_IS_CAPTIVE_PORTAL:Ljava/lang/String; = "extra_is_captive_portal"

.field public static final EXTRA_NETWORK_TYPE:Ljava/lang/String; = "extra_network_type"

.field public static final EXTRA_REQUEST_TIMESTAMP_MS:Ljava/lang/String; = "extra_request_timestamp_ms"

.field public static final EXTRA_RESPONSE_RECEIVED:Ljava/lang/String; = "extra_response_received"

.field public static final EXTRA_RESPONSE_TIMESTAMP_MS:Ljava/lang/String; = "extra_response_timestamp_ms"

.field public static final EXTRA_SSID:Ljava/lang/String; = "extra_ssid"

.field private static final IGNORE_REEVALUATE_ATTEMPTS:I = 0x5

.field private static final INITIAL_REEVALUATE_DELAY_MS:I = 0x3e8

.field private static final INVALID_UID:I = -0x1

.field private static final MAX_REEVALUATE_DELAY_MS:I = 0x927c0

.field public static final NETWORK_TEST_RESULT_INVALID:I = 0x1

.field public static final NETWORK_TEST_RESULT_VALID:I = 0x0

.field private static final PERMISSION_ACCESS_NETWORK_CONDITIONS:Ljava/lang/String; = "android.permission.ACCESS_NETWORK_CONDITIONS"

.field private static final PROBE_TIMEOUT_MS:I = 0xbb8

.field private static final SOCKET_TIMEOUT_MS:I = 0x2710

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mCaptivePortalState:Lcom/android/internal/util/State;

.field private final mConnectivityServiceHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultRequest:Landroid/net/NetworkRequest;

.field private final mDefaultState:Lcom/android/internal/util/State;

.field private mDontDisplaySigninNotification:Z

.field private final mEvaluatingState:Lcom/android/internal/util/State;

.field private final mEvaluationTimer:Landroid/net/util/Stopwatch;

.field private mIsCaptivePortalCheckEnabled:Z

.field private mLastPortalProbeResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

.field private mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

.field private final mMaybeNotifyState:Lcom/android/internal/util/State;

.field private final mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

.field private final mNetId:I

.field private final mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

.field private mReevaluateToken:I

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUidResponsibleForReeval:I

.field private mUseHttps:Z

.field private mUserDoesNotWant:Z

.field private final mValidatedState:Lcom/android/internal/util/State;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field public systemReady:Z

.field private final validationLogs:Landroid/util/LocalLog;


# direct methods
.method static synthetic -get0(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    #@2
    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    #@2
    return v0
.end method

.method static synthetic -get12(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I

    #@2
    return v0
.end method

.method static synthetic -get13(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z

    #@2
    return v0
.end method

.method static synthetic -get14(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/NetworkRequest;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultRequest:Landroid/net/NetworkRequest;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDontDisplaySigninNotification:Z

    #@2
    return v0
.end method

.method static synthetic -get5(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/util/Stopwatch;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluationTimer:Landroid/net/util/Stopwatch;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLastPortalProbeResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDontDisplaySigninNotification:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLastPortalProbeResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    #@2
    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/connectivity/NetworkMonitor;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    #@2
    return p1
.end method

.method static synthetic -set4(Lcom/android/server/connectivity/NetworkMonitor;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I

    #@2
    return p1
.end method

.method static synthetic -set5(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUseHttps:Z

    #@2
    return p1
.end method

.method static synthetic -set6(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/connectivity/NetworkMonitor;I)V
    .locals 0
    .param p1, "evtype"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->logNetworkEvent(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/connectivity/NetworkMonitor;I)V
    .locals 0
    .param p1, "evtype"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->maybeLogEvaluationResult(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/connectivity/NetworkMonitor;)V
    .locals 0

    #@0
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor;->quit()V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/connectivity/NetworkMonitor;I)V
    .locals 0
    .param p1, "what"    # I

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->removeMessages(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 82
    const-class v0, Lcom/android/server/connectivity/NetworkMonitor;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    #@8
    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "networkAgentInfo"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p4, "defaultRequest"    # Landroid/net/NetworkRequest;

    #@0
    .prologue
    .line 241
    new-instance v5, Landroid/net/metrics/IpConnectivityLog;

    #@2
    invoke-direct {v5}, Landroid/net/metrics/IpConnectivityLog;-><init>()V

    #@5
    move-object v0, p0

    #@6
    move-object v1, p1

    #@7
    move-object v2, p2

    #@8
    move-object v3, p3

    #@9
    move-object v4, p4

    #@a
    invoke-direct/range {v0 .. v5}, Lcom/android/server/connectivity/NetworkMonitor;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;Landroid/net/metrics/IpConnectivityLog;)V

    #@d
    .line 240
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;Landroid/net/metrics/IpConnectivityLog;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "networkAgentInfo"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p4, "defaultRequest"    # Landroid/net/NetworkRequest;
    .param p5, "logger"    # Landroid/net/metrics/IpConnectivityLog;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    sget-object v3, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    #@a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {p3}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    #@1d
    .line 196
    iput v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    #@1f
    .line 198
    const/4 v0, -0x1

    #@20
    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I

    #@22
    .line 218
    iput-boolean v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z

    #@24
    .line 220
    iput-boolean v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDontDisplaySigninNotification:Z

    #@26
    .line 222
    iput-boolean v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    #@28
    .line 224
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;

    #@2a
    invoke-direct {v0, p0, v4}, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$DefaultState;)V

    #@2d
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    #@2f
    .line 225
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;

    #@31
    invoke-direct {v0, p0, v4}, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;)V

    #@34
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;

    #@36
    .line 226
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;

    #@38
    invoke-direct {v0, p0, v4}, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;)V

    #@3b
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    #@3d
    .line 227
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;

    #@3f
    invoke-direct {v0, p0, v4}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;)V

    #@42
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;

    #@44
    .line 228
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;

    #@46
    invoke-direct {v0, p0, v4}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;)V

    #@49
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;

    #@4b
    .line 230
    iput-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    #@4d
    .line 232
    new-instance v0, Landroid/util/LocalLog;

    #@4f
    const/16 v3, 0x14

    #@51
    invoke-direct {v0, v3}, Landroid/util/LocalLog;-><init>(I)V

    #@54
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->validationLogs:Landroid/util/LocalLog;

    #@56
    .line 234
    new-instance v0, Landroid/net/util/Stopwatch;

    #@58
    invoke-direct {v0}, Landroid/net/util/Stopwatch;-><init>()V

    #@5b
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluationTimer:Landroid/net/util/Stopwatch;

    #@5d
    .line 237
    sget-object v0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->FAILED:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    #@5f
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLastPortalProbeResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    #@61
    .line 250
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    #@63
    .line 251
    iput-object p5, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    #@65
    .line 252
    iput-object p2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;

    #@67
    .line 253
    iput-object p3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    #@69
    .line 254
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    #@6b
    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@6d
    iget v0, v0, Landroid/net/Network;->netId:I

    #@6f
    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    #@71
    .line 255
    const-string/jumbo v0, "phone"

    #@74
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@77
    move-result-object v0

    #@78
    check-cast v0, Landroid/telephony/TelephonyManager;

    #@7a
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@7c
    .line 256
    const-string/jumbo v0, "wifi"

    #@7f
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@82
    move-result-object v0

    #@83
    check-cast v0, Landroid/net/wifi/WifiManager;

    #@85
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    #@87
    .line 257
    const-string/jumbo v0, "alarm"

    #@8a
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@8d
    move-result-object v0

    #@8e
    check-cast v0, Landroid/app/AlarmManager;

    #@90
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    #@92
    .line 258
    iput-object p4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultRequest:Landroid/net/NetworkRequest;

    #@94
    .line 260
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    #@96
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;)V

    #@99
    .line 261
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;

    #@9b
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    #@9d
    invoke-virtual {p0, v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@a0
    .line 262
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    #@a2
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    #@a4
    invoke-virtual {p0, v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@a7
    .line 263
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;

    #@a9
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    #@ab
    invoke-virtual {p0, v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@ae
    .line 264
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;

    #@b0
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    #@b2
    invoke-virtual {p0, v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@b5
    .line 265
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    #@b7
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->setInitialState(Lcom/android/internal/util/State;)V

    #@ba
    .line 267
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    #@bc
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@bf
    move-result-object v0

    #@c0
    .line 268
    const-string/jumbo v3, "captive_portal_detection_enabled"

    #@c3
    .line 267
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@c6
    move-result v0

    #@c7
    if-ne v0, v1, :cond_0

    #@c9
    move v0, v1

    #@ca
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalCheckEnabled:Z

    #@cc
    .line 269
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    #@ce
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@d1
    move-result-object v0

    #@d2
    .line 270
    const-string/jumbo v3, "captive_portal_use_https"

    #@d5
    .line 269
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@d8
    move-result v0

    #@d9
    if-ne v0, v1, :cond_1

    #@db
    :goto_1
    iput-boolean v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUseHttps:Z

    #@dd
    .line 272
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor;->start()V

    #@e0
    .line 246
    return-void

    #@e1
    :cond_0
    move v0, v2

    #@e2
    .line 267
    goto :goto_0

    #@e3
    :cond_1
    move v1, v2

    #@e4
    .line 269
    goto :goto_1
.end method

.method private static getCaptivePortalFallbackUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 621
    const-string/jumbo v0, "captive_portal_fallback_url"

    #@3
    const-string/jumbo v1, "http://www.google.com/gen_204"

    #@6
    .line 620
    invoke-static {p0, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static getCaptivePortalServerHttpUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 616
    const-string/jumbo v0, "captive_portal_http_url"

    #@3
    const-string/jumbo v1, "http://connectivitycheck.gstatic.com/generate_204"

    #@6
    invoke-static {p0, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method private static getCaptivePortalServerHttpsUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 612
    const-string/jumbo v0, "captive_portal_https_url"

    #@3
    const-string/jumbo v1, "https://www.google.com/generate_204"

    #@6
    invoke-static {p0, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method private static getCaptivePortalUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 625
    const-string/jumbo v0, "captive_portal_user_agent"

    #@3
    const-string/jumbo v1, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.82 Safari/537.36"

    #@6
    invoke-static {p0, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method private static getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "symbol"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 629
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v1

    #@4
    invoke-static {v1, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 630
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@a
    .end local v0    # "value":Ljava/lang/String;
    :goto_0
    return-object v0

    #@b
    .restart local v0    # "value":Ljava/lang/String;
    :cond_0
    move-object v0, p2

    #@c
    goto :goto_0
.end method

.method private logNetworkEvent(I)V
    .locals 3
    .param p1, "evtype"    # I

    #@0
    .prologue
    .line 967
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    #@2
    new-instance v1, Landroid/net/metrics/NetworkEvent;

    #@4
    iget v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    #@6
    invoke-direct {v1, v2, p1}, Landroid/net/metrics/NetworkEvent;-><init>(II)V

    #@9
    invoke-virtual {v0, v1}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/os/Parcelable;)V

    #@c
    .line 966
    return-void
.end method

.method private logValidationProbe(JII)V
    .locals 7
    .param p1, "durationMs"    # J
    .param p3, "probeType"    # I
    .param p4, "probeResult"    # I

    #@0
    .prologue
    .line 978
    iget-object v6, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    #@2
    new-instance v0, Landroid/net/metrics/ValidationProbeEvent;

    #@4
    iget v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    #@6
    move-wide v2, p1

    #@7
    move v4, p3

    #@8
    move v5, p4

    #@9
    invoke-direct/range {v0 .. v5}, Landroid/net/metrics/ValidationProbeEvent;-><init>(IJII)V

    #@c
    invoke-virtual {v6, v0}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/os/Parcelable;)V

    #@f
    .line 977
    return-void
.end method

.method private makeURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 874
    if-eqz p1, :cond_0

    #@3
    .line 876
    :try_start_0
    new-instance v1, Ljava/net/URL;

    #@5
    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    return-object v1

    #@9
    .line 877
    :catch_0
    move-exception v0

    #@a
    .line 878
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Bad URL: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {p0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    #@21
    .line 881
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :cond_0
    return-object v3
.end method

.method private maybeLogEvaluationResult(I)V
    .locals 6
    .param p1, "evtype"    # I

    #@0
    .prologue
    .line 971
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluationTimer:Landroid/net/util/Stopwatch;

    #@2
    invoke-virtual {v0}, Landroid/net/util/Stopwatch;->isRunning()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 972
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    #@a
    new-instance v1, Landroid/net/metrics/NetworkEvent;

    #@c
    iget v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    #@e
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluationTimer:Landroid/net/util/Stopwatch;

    #@10
    invoke-virtual {v3}, Landroid/net/util/Stopwatch;->stop()J

    #@13
    move-result-wide v4

    #@14
    invoke-direct {v1, v2, p1, v4, v5}, Landroid/net/metrics/NetworkEvent;-><init>(IIJ)V

    #@17
    invoke-virtual {v0, v1}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/os/Parcelable;)V

    #@1a
    .line 973
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluationTimer:Landroid/net/util/Stopwatch;

    #@1c
    invoke-virtual {v0}, Landroid/net/util/Stopwatch;->reset()V

    #@1f
    .line 970
    :cond_0
    return-void
.end method

.method private sendNetworkConditionsBroadcast(ZZJJ)V
    .locals 15
    .param p1, "responseReceived"    # Z
    .param p2, "isCaptivePortal"    # Z
    .param p3, "requestTimestampMs"    # J
    .param p5, "responseTimestampMs"    # J

    #@0
    .prologue
    .line 893
    iget-object v12, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v12

    #@6
    .line 894
    const-string/jumbo v13, "wifi_scan_always_enabled"

    #@9
    const/4 v14, 0x0

    #@a
    .line 893
    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@d
    move-result v12

    #@e
    if-nez v12, :cond_0

    #@10
    .line 895
    return-void

    #@11
    .line 898
    :cond_0
    iget-boolean v12, p0, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    #@13
    if-nez v12, :cond_1

    #@15
    return-void

    #@16
    .line 900
    :cond_1
    new-instance v10, Landroid/content/Intent;

    #@18
    const-string/jumbo v12, "android.net.conn.NETWORK_CONDITIONS_MEASURED"

    #@1b
    invoke-direct {v10, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1e
    .line 901
    .local v10, "latencyBroadcast":Landroid/content/Intent;
    iget-object v12, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    #@20
    iget-object v12, v12, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@22
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getType()I

    #@25
    move-result v12

    #@26
    packed-switch v12, :pswitch_data_0

    #@29
    .line 952
    return-void

    #@2a
    .line 903
    :pswitch_0
    iget-object v12, p0, Lcom/android/server/connectivity/NetworkMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    #@2c
    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    #@2f
    move-result-object v8

    #@30
    .line 904
    .local v8, "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v8, :cond_4

    #@32
    .line 912
    const-string/jumbo v12, "extra_ssid"

    #@35
    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    #@38
    move-result-object v13

    #@39
    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@3c
    .line 913
    const-string/jumbo v12, "extra_bssid"

    #@3f
    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    #@42
    move-result-object v13

    #@43
    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@46
    .line 954
    .end local v8    # "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_2
    const-string/jumbo v12, "extra_connectivity_type"

    #@49
    iget-object v13, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    #@4b
    iget-object v13, v13, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@4d
    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getType()I

    #@50
    move-result v13

    #@51
    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@54
    .line 955
    const-string/jumbo v12, "extra_response_received"

    #@57
    move/from16 v0, p1

    #@59
    invoke-virtual {v10, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@5c
    .line 956
    const-string/jumbo v12, "extra_request_timestamp_ms"

    #@5f
    move-wide/from16 v0, p3

    #@61
    invoke-virtual {v10, v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    #@64
    .line 958
    if-eqz p1, :cond_3

    #@66
    .line 959
    const-string/jumbo v12, "extra_is_captive_portal"

    #@69
    move/from16 v0, p2

    #@6b
    invoke-virtual {v10, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@6e
    .line 960
    const-string/jumbo v12, "extra_response_timestamp_ms"

    #@71
    move-wide/from16 v0, p5

    #@73
    invoke-virtual {v10, v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    #@76
    .line 962
    :cond_3
    iget-object v12, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    #@78
    sget-object v13, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@7a
    .line 963
    const-string/jumbo v14, "android.permission.ACCESS_NETWORK_CONDITIONS"

    #@7d
    .line 962
    invoke-virtual {v12, v10, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    #@80
    .line 892
    return-void

    #@81
    .line 916
    .restart local v8    # "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_4
    return-void

    #@82
    .line 920
    .end local v8    # "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    :pswitch_1
    const-string/jumbo v12, "extra_network_type"

    #@85
    iget-object v13, p0, Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@87
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    #@8a
    move-result v13

    #@8b
    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@8e
    .line 921
    iget-object v12, p0, Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@90
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    #@93
    move-result-object v9

    #@94
    .line 922
    .local v9, "info":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    if-nez v9, :cond_5

    #@96
    return-void

    #@97
    .line 923
    :cond_5
    const/4 v11, 0x0

    #@98
    .line 924
    .local v11, "numRegisteredCellInfo":I
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9b
    move-result-object v7

    #@9c
    .local v7, "cellInfo$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@9f
    move-result v12

    #@a0
    if-eqz v12, :cond_2

    #@a2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@a5
    move-result-object v6

    #@a6
    check-cast v6, Landroid/telephony/CellInfo;

    #@a8
    .line 925
    .local v6, "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v6}, Landroid/telephony/CellInfo;->isRegistered()Z

    #@ab
    move-result v12

    #@ac
    if-eqz v12, :cond_6

    #@ae
    .line 926
    add-int/lit8 v11, v11, 0x1

    #@b0
    .line 927
    const/4 v12, 0x1

    #@b1
    if-le v11, v12, :cond_7

    #@b3
    .line 928
    const-string/jumbo v12, "more than one registered CellInfo.  Can\'t tell which is active.  Bailing."

    #@b6
    invoke-virtual {p0, v12}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    #@b9
    .line 930
    return-void

    #@ba
    .line 932
    :cond_7
    instance-of v12, v6, Landroid/telephony/CellInfoCdma;

    #@bc
    if-eqz v12, :cond_8

    #@be
    .line 933
    check-cast v6, Landroid/telephony/CellInfoCdma;

    #@c0
    .end local v6    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v6}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    #@c3
    move-result-object v2

    #@c4
    .line 934
    .local v2, "cellId":Landroid/telephony/CellIdentityCdma;
    const-string/jumbo v12, "extra_cellid"

    #@c7
    invoke-virtual {v10, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@ca
    goto :goto_0

    #@cb
    .line 935
    .end local v2    # "cellId":Landroid/telephony/CellIdentityCdma;
    .restart local v6    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_8
    instance-of v12, v6, Landroid/telephony/CellInfoGsm;

    #@cd
    if-eqz v12, :cond_9

    #@cf
    .line 936
    check-cast v6, Landroid/telephony/CellInfoGsm;

    #@d1
    .end local v6    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v6}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    #@d4
    move-result-object v3

    #@d5
    .line 937
    .local v3, "cellId":Landroid/telephony/CellIdentityGsm;
    const-string/jumbo v12, "extra_cellid"

    #@d8
    invoke-virtual {v10, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@db
    goto :goto_0

    #@dc
    .line 938
    .end local v3    # "cellId":Landroid/telephony/CellIdentityGsm;
    .restart local v6    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_9
    instance-of v12, v6, Landroid/telephony/CellInfoLte;

    #@de
    if-eqz v12, :cond_a

    #@e0
    .line 939
    check-cast v6, Landroid/telephony/CellInfoLte;

    #@e2
    .end local v6    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v6}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    #@e5
    move-result-object v4

    #@e6
    .line 940
    .local v4, "cellId":Landroid/telephony/CellIdentityLte;
    const-string/jumbo v12, "extra_cellid"

    #@e9
    invoke-virtual {v10, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@ec
    goto :goto_0

    #@ed
    .line 941
    .end local v4    # "cellId":Landroid/telephony/CellIdentityLte;
    .restart local v6    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_a
    instance-of v12, v6, Landroid/telephony/CellInfoWcdma;

    #@ef
    if-eqz v12, :cond_b

    #@f1
    .line 942
    check-cast v6, Landroid/telephony/CellInfoWcdma;

    #@f3
    .end local v6    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v6}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    #@f6
    move-result-object v5

    #@f7
    .line 943
    .local v5, "cellId":Landroid/telephony/CellIdentityWcdma;
    const-string/jumbo v12, "extra_cellid"

    #@fa
    invoke-virtual {v10, v12, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@fd
    goto :goto_0

    #@fe
    .line 946
    .end local v5    # "cellId":Landroid/telephony/CellIdentityWcdma;
    .restart local v6    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_b
    return-void

    #@ff
    .line 901
    nop

    #@100
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendParallelHttpProbes(Ljava/net/URL;Ljava/net/URL;Ljava/net/URL;)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    .locals 18
    .param p1, "httpsUrl"    # Ljava/net/URL;
    .param p2, "httpUrl"    # Ljava/net/URL;
    .param p3, "fallbackUrl"    # Ljava/net/URL;

    #@0
    .prologue
    .line 800
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    #@2
    const/4 v3, 0x2

    #@3
    invoke-direct {v7, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@6
    .line 832
    .local v7, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;

    #@8
    const/4 v4, 0x1

    #@9
    move-object/from16 v3, p0

    #@b
    move-object/from16 v5, p1

    #@d
    move-object/from16 v6, p2

    #@f
    invoke-direct/range {v2 .. v7}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;-><init>(Lcom/android/server/connectivity/NetworkMonitor;ZLjava/net/URL;Ljava/net/URL;Ljava/util/concurrent/CountDownLatch;)V

    #@12
    .line 833
    .local v2, "httpsProbe":Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;
    new-instance v8, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;

    #@14
    const/4 v10, 0x0

    #@15
    move-object/from16 v9, p0

    #@17
    move-object/from16 v11, p1

    #@19
    move-object/from16 v12, p2

    #@1b
    move-object v13, v7

    #@1c
    invoke-direct/range {v8 .. v13}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;-><init>(Lcom/android/server/connectivity/NetworkMonitor;ZLjava/net/URL;Ljava/net/URL;Ljava/util/concurrent/CountDownLatch;)V

    #@1f
    .line 836
    .local v8, "httpProbe":Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;
    :try_start_0
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->start()V

    #@22
    .line 837
    invoke-virtual {v8}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->start()V

    #@25
    .line 838
    const-wide/16 v4, 0xbb8

    #@27
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@29
    invoke-virtual {v7, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    .line 844
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->result()Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    #@2f
    move-result-object v16

    #@30
    .line 845
    .local v16, "httpsResult":Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    invoke-virtual {v8}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->result()Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    #@33
    move-result-object v15

    #@34
    .line 848
    .local v15, "httpResult":Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    invoke-virtual {v15}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isPortal()Z

    #@37
    move-result v3

    #@38
    if-eqz v3, :cond_0

    #@3a
    .line 849
    return-object v15

    #@3b
    .line 839
    .end local v15    # "httpResult":Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    .end local v16    # "httpsResult":Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    :catch_0
    move-exception v14

    #@3c
    .line 840
    .local v14, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v3, "Error: probes wait interrupted!"

    #@3f
    move-object/from16 v0, p0

    #@41
    invoke-direct {v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    #@44
    .line 841
    sget-object v3, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->FAILED:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    #@46
    return-object v3

    #@47
    .line 852
    .end local v14    # "e":Ljava/lang/InterruptedException;
    .restart local v15    # "httpResult":Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    .restart local v16    # "httpsResult":Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    :cond_0
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isPortal()Z

    #@4a
    move-result v3

    #@4b
    if-nez v3, :cond_1

    #@4d
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isSuccessful()Z

    #@50
    move-result v3

    #@51
    if-eqz v3, :cond_2

    #@53
    .line 853
    :cond_1
    return-object v16

    #@54
    .line 856
    :cond_2
    if-eqz p3, :cond_3

    #@56
    .line 858
    const/4 v3, 0x4

    #@57
    move-object/from16 v0, p0

    #@59
    move-object/from16 v1, p3

    #@5b
    invoke-virtual {v0, v1, v3}, Lcom/android/server/connectivity/NetworkMonitor;->sendHttpProbe(Ljava/net/URL;I)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    #@5e
    move-result-object v17

    #@5f
    .line 859
    .local v17, "result":Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isPortal()Z

    #@62
    move-result v3

    #@63
    if-eqz v3, :cond_3

    #@65
    .line 860
    return-object v17

    #@66
    .line 865
    .end local v17    # "result":Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    #@69
    .line 870
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->result()Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    #@6c
    move-result-object v3

    #@6d
    return-object v3

    #@6e
    .line 866
    :catch_1
    move-exception v14

    #@6f
    .line 867
    .restart local v14    # "e":Ljava/lang/InterruptedException;
    const-string/jumbo v3, "Error: https probe wait interrupted!"

    #@72
    move-object/from16 v0, p0

    #@74
    invoke-direct {v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    #@77
    .line 868
    sget-object v3, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->FAILED:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    #@79
    return-object v3
.end method

.method private validationLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->validationLogs:Landroid/util/LocalLog;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@5
    .line 280
    return-void
.end method


# virtual methods
.method public getValidationLogs()Landroid/util/LocalLog$ReadOnlyLocalLog;
    .locals 1

    #@0
    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->validationLogs:Landroid/util/LocalLog;

    #@2
    invoke-virtual {v0}, Landroid/util/LocalLog;->readOnlyLocalLog()Landroid/util/LocalLog$ReadOnlyLocalLog;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected isCaptivePortal()Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    .locals 27

    #@0
    .prologue
    .line 635
    move-object/from16 v0, p0

    #@2
    iget-boolean v5, v0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalCheckEnabled:Z

    #@4
    if-nez v5, :cond_0

    #@6
    new-instance v5, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    #@8
    const/16 v6, 0xcc

    #@a
    invoke-direct {v5, v6}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;-><init>(I)V

    #@d
    return-object v5

    #@e
    .line 637
    :cond_0
    const/16 v23, 0x0

    #@10
    .local v23, "pacUrl":Ljava/net/URL;
    const/16 v22, 0x0

    #@12
    .local v22, "httpsUrl":Ljava/net/URL;
    const/16 v21, 0x0

    #@14
    .local v21, "httpUrl":Ljava/net/URL;
    const/16 v19, 0x0

    #@16
    .line 656
    .local v19, "fallbackUrl":Ljava/net/URL;
    move-object/from16 v0, p0

    #@18
    iget-object v5, v0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    #@1a
    iget-object v5, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@1c
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    #@1f
    move-result-object v25

    #@20
    .line 657
    .local v25, "proxyInfo":Landroid/net/ProxyInfo;
    if-eqz v25, :cond_1

    #@22
    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #@24
    invoke-virtual/range {v25 .. v25}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    #@27
    move-result-object v6

    #@28
    invoke-virtual {v5, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v5

    #@2c
    if-eqz v5, :cond_3

    #@2e
    .line 664
    .end local v23    # "pacUrl":Ljava/net/URL;
    :cond_1
    if-nez v23, :cond_4

    #@30
    .line 665
    move-object/from16 v0, p0

    #@32
    iget-object v5, v0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    #@34
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalServerHttpsUrl(Landroid/content/Context;)Ljava/lang/String;

    #@37
    move-result-object v5

    #@38
    move-object/from16 v0, p0

    #@3a
    invoke-direct {v0, v5}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    #@3d
    move-result-object v22

    #@3e
    .line 666
    .local v22, "httpsUrl":Ljava/net/URL;
    move-object/from16 v0, p0

    #@40
    iget-object v5, v0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    #@42
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalServerHttpUrl(Landroid/content/Context;)Ljava/lang/String;

    #@45
    move-result-object v5

    #@46
    move-object/from16 v0, p0

    #@48
    invoke-direct {v0, v5}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    #@4b
    move-result-object v21

    #@4c
    .line 667
    .local v21, "httpUrl":Ljava/net/URL;
    move-object/from16 v0, p0

    #@4e
    iget-object v5, v0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    #@50
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalFallbackUrl(Landroid/content/Context;)Ljava/lang/String;

    #@53
    move-result-object v5

    #@54
    move-object/from16 v0, p0

    #@56
    invoke-direct {v0, v5}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    #@59
    move-result-object v19

    #@5a
    .line 668
    .local v19, "fallbackUrl":Ljava/net/URL;
    if-eqz v21, :cond_2

    #@5c
    if-nez v22, :cond_4

    #@5e
    .line 669
    :cond_2
    sget-object v5, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->FAILED:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    #@60
    return-object v5

    #@61
    .line 658
    .local v19, "fallbackUrl":Ljava/net/URL;
    .local v21, "httpUrl":Ljava/net/URL;
    .local v22, "httpsUrl":Ljava/net/URL;
    .restart local v23    # "pacUrl":Ljava/net/URL;
    :cond_3
    invoke-virtual/range {v25 .. v25}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    #@64
    move-result-object v5

    #@65
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@68
    move-result-object v5

    #@69
    move-object/from16 v0, p0

    #@6b
    invoke-direct {v0, v5}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    #@6e
    move-result-object v23

    #@6f
    .line 659
    .local v23, "pacUrl":Ljava/net/URL;
    if-nez v23, :cond_1

    #@71
    .line 660
    sget-object v5, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->FAILED:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    #@73
    return-object v5

    #@74
    .line 673
    .end local v19    # "fallbackUrl":Ljava/net/URL;
    .end local v21    # "httpUrl":Ljava/net/URL;
    .end local v22    # "httpsUrl":Ljava/net/URL;
    .end local v23    # "pacUrl":Ljava/net/URL;
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@77
    move-result-wide v8

    #@78
    .line 678
    .local v8, "startTime":J
    const/16 v20, 0x0

    #@7a
    .line 679
    .local v20, "hostToResolve":Ljava/lang/String;
    if-eqz v23, :cond_6

    #@7c
    .line 680
    invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@7f
    move-result-object v20

    #@80
    .line 687
    .local v20, "hostToResolve":Ljava/lang/String;
    :goto_0
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@83
    move-result v5

    #@84
    if-nez v5, :cond_9

    #@86
    .line 688
    const/4 v5, 0x0

    #@87
    invoke-static {v5}, Landroid/net/metrics/ValidationProbeEvent;->getProbeName(I)Ljava/lang/String;

    #@8a
    move-result-object v24

    #@8b
    .line 689
    .local v24, "probeName":Ljava/lang/String;
    new-instance v5, Landroid/net/util/Stopwatch;

    #@8d
    invoke-direct {v5}, Landroid/net/util/Stopwatch;-><init>()V

    #@90
    invoke-virtual {v5}, Landroid/net/util/Stopwatch;->start()Landroid/net/util/Stopwatch;

    #@93
    move-result-object v17

    #@94
    .line 693
    .local v17, "dnsTimer":Landroid/net/util/Stopwatch;
    :try_start_0
    move-object/from16 v0, p0

    #@96
    iget-object v5, v0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    #@98
    iget-object v5, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@9a
    move-object/from16 v0, v20

    #@9c
    invoke-virtual {v5, v0}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    #@9f
    move-result-object v12

    #@a0
    .line 694
    .local v12, "addresses":[Ljava/net/InetAddress;
    const/16 v16, 0x1

    #@a2
    .line 695
    .local v16, "dnsResult":I
    invoke-virtual/range {v17 .. v17}, Landroid/net/util/Stopwatch;->stop()J

    #@a5
    move-result-wide v14

    #@a6
    .line 696
    .local v14, "dnsLatency":J
    new-instance v13, Ljava/lang/StringBuffer;

    #@a8
    new-instance v5, Ljava/lang/StringBuilder;

    #@aa
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@ad
    const-string/jumbo v6, ", "

    #@b0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v5

    #@b4
    move-object/from16 v0, v20

    #@b6
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v5

    #@ba
    const-string/jumbo v6, "="

    #@bd
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v5

    #@c1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c4
    move-result-object v5

    #@c5
    invoke-direct {v13, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@c8
    .line 697
    .local v13, "connectInfo":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    #@c9
    array-length v6, v12

    #@ca
    :goto_1
    if-ge v5, v6, :cond_8

    #@cc
    aget-object v4, v12, v5

    #@ce
    .line 698
    .local v4, "address":Ljava/net/InetAddress;
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@d1
    move-result-object v7

    #@d2
    invoke-virtual {v13, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@d5
    .line 699
    array-length v7, v12

    #@d6
    add-int/lit8 v7, v7, -0x1

    #@d8
    aget-object v7, v12, v7

    #@da
    if-eq v4, v7, :cond_5

    #@dc
    const-string/jumbo v7, ","

    #@df
    invoke-virtual {v13, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    #@e2
    .line 697
    :cond_5
    add-int/lit8 v5, v5, 0x1

    #@e4
    goto :goto_1

    #@e5
    .line 681
    .end local v4    # "address":Ljava/net/InetAddress;
    .end local v12    # "addresses":[Ljava/net/InetAddress;
    .end local v13    # "connectInfo":Ljava/lang/StringBuffer;
    .end local v14    # "dnsLatency":J
    .end local v16    # "dnsResult":I
    .end local v17    # "dnsTimer":Landroid/net/util/Stopwatch;
    .end local v24    # "probeName":Ljava/lang/String;
    .local v20, "hostToResolve":Ljava/lang/String;
    :cond_6
    if-eqz v25, :cond_7

    #@e7
    .line 682
    invoke-virtual/range {v25 .. v25}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    #@ea
    move-result-object v20

    #@eb
    .local v20, "hostToResolve":Ljava/lang/String;
    goto :goto_0

    #@ec
    .line 684
    .local v20, "hostToResolve":Ljava/lang/String;
    :cond_7
    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@ef
    move-result-object v20

    #@f0
    .local v20, "hostToResolve":Ljava/lang/String;
    goto :goto_0

    #@f1
    .line 701
    .restart local v12    # "addresses":[Ljava/net/InetAddress;
    .restart local v13    # "connectInfo":Ljava/lang/StringBuffer;
    .restart local v14    # "dnsLatency":J
    .restart local v16    # "dnsResult":I
    .restart local v17    # "dnsTimer":Landroid/net/util/Stopwatch;
    .restart local v24    # "probeName":Ljava/lang/String;
    :cond_8
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    #@f3
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@f6
    move-object/from16 v0, v24

    #@f8
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v5

    #@fc
    const-string/jumbo v6, " OK "

    #@ff
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v5

    #@103
    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@106
    move-result-object v5

    #@107
    const-string/jumbo v6, "ms"

    #@10a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10d
    move-result-object v5

    #@10e
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@111
    move-result-object v5

    #@112
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@115
    move-result-object v5

    #@116
    move-object/from16 v0, p0

    #@118
    invoke-direct {v0, v5}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    #@11b
    .line 707
    .end local v12    # "addresses":[Ljava/net/InetAddress;
    .end local v13    # "connectInfo":Ljava/lang/StringBuffer;
    :goto_2
    const/4 v5, 0x0

    #@11c
    move-object/from16 v0, p0

    #@11e
    move/from16 v1, v16

    #@120
    invoke-direct {v0, v14, v15, v5, v1}, Lcom/android/server/connectivity/NetworkMonitor;->logValidationProbe(JII)V

    #@123
    .line 711
    .end local v14    # "dnsLatency":J
    .end local v16    # "dnsResult":I
    .end local v17    # "dnsTimer":Landroid/net/util/Stopwatch;
    .end local v24    # "probeName":Ljava/lang/String;
    :cond_9
    if-eqz v23, :cond_a

    #@125
    .line 712
    const/4 v5, 0x3

    #@126
    move-object/from16 v0, p0

    #@128
    move-object/from16 v1, v23

    #@12a
    invoke-virtual {v0, v1, v5}, Lcom/android/server/connectivity/NetworkMonitor;->sendHttpProbe(Ljava/net/URL;I)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    #@12d
    move-result-object v26

    #@12e
    .line 719
    .local v26, "result":Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@131
    move-result-wide v10

    #@132
    .line 722
    .local v10, "endTime":J
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isPortal()Z

    #@135
    move-result v7

    #@136
    .line 721
    const/4 v6, 0x1

    #@137
    move-object/from16 v5, p0

    #@139
    invoke-direct/range {v5 .. v11}, Lcom/android/server/connectivity/NetworkMonitor;->sendNetworkConditionsBroadcast(ZZJJ)V

    #@13c
    .line 725
    return-object v26

    #@13d
    .line 702
    .end local v10    # "endTime":J
    .end local v26    # "result":Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    .restart local v17    # "dnsTimer":Landroid/net/util/Stopwatch;
    .restart local v24    # "probeName":Ljava/lang/String;
    :catch_0
    move-exception v18

    #@13e
    .line 703
    .local v18, "e":Ljava/net/UnknownHostException;
    const/16 v16, 0x0

    #@140
    .line 704
    .restart local v16    # "dnsResult":I
    invoke-virtual/range {v17 .. v17}, Landroid/net/util/Stopwatch;->stop()J

    #@143
    move-result-wide v14

    #@144
    .line 705
    .restart local v14    # "dnsLatency":J
    new-instance v5, Ljava/lang/StringBuilder;

    #@146
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@149
    move-object/from16 v0, v24

    #@14b
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14e
    move-result-object v5

    #@14f
    const-string/jumbo v6, " FAIL "

    #@152
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@155
    move-result-object v5

    #@156
    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@159
    move-result-object v5

    #@15a
    const-string/jumbo v6, "ms, "

    #@15d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@160
    move-result-object v5

    #@161
    move-object/from16 v0, v20

    #@163
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@166
    move-result-object v5

    #@167
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16a
    move-result-object v5

    #@16b
    move-object/from16 v0, p0

    #@16d
    invoke-direct {v0, v5}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    #@170
    goto :goto_2

    #@171
    .line 713
    .end local v14    # "dnsLatency":J
    .end local v16    # "dnsResult":I
    .end local v17    # "dnsTimer":Landroid/net/util/Stopwatch;
    .end local v18    # "e":Ljava/net/UnknownHostException;
    .end local v24    # "probeName":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    #@173
    iget-boolean v5, v0, Lcom/android/server/connectivity/NetworkMonitor;->mUseHttps:Z

    #@175
    if-eqz v5, :cond_b

    #@177
    .line 714
    move-object/from16 v0, p0

    #@179
    move-object/from16 v1, v22

    #@17b
    move-object/from16 v2, v21

    #@17d
    move-object/from16 v3, v19

    #@17f
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->sendParallelHttpProbes(Ljava/net/URL;Ljava/net/URL;Ljava/net/URL;)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    #@182
    move-result-object v26

    #@183
    .restart local v26    # "result":Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    goto :goto_3

    #@184
    .line 716
    .end local v26    # "result":Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    :cond_b
    const/4 v5, 0x1

    #@185
    move-object/from16 v0, p0

    #@187
    move-object/from16 v1, v21

    #@189
    invoke-virtual {v0, v1, v5}, Lcom/android/server/connectivity/NetworkMonitor;->sendHttpProbe(Ljava/net/URL;I)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    #@18c
    move-result-object v26

    #@18d
    .restart local v26    # "result":Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    goto :goto_3
.end method

.method protected log(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 276
    return-void
.end method

.method protected sendHttpProbe(Ljava/net/URL;I)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    .locals 16
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "probeType"    # I

    #@0
    .prologue
    .line 734
    const/4 v10, 0x0

    #@1
    .line 735
    .local v10, "urlConnection":Ljava/net/HttpURLConnection;
    const/16 v3, 0x257

    #@3
    .line 736
    .local v3, "httpResponseCode":I
    const/4 v5, 0x0

    #@4
    .line 737
    .local v5, "redirectUrl":Ljava/lang/String;
    new-instance v12, Landroid/net/util/Stopwatch;

    #@6
    invoke-direct {v12}, Landroid/net/util/Stopwatch;-><init>()V

    #@9
    invoke-virtual {v12}, Landroid/net/util/Stopwatch;->start()Landroid/net/util/Stopwatch;

    #@c
    move-result-object v4

    #@d
    .line 739
    .local v4, "probeTimer":Landroid/net/util/Stopwatch;
    :try_start_0
    move-object/from16 v0, p0

    #@f
    iget-object v12, v0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    #@11
    iget-object v12, v12, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@13
    move-object/from16 v0, p1

    #@15
    invoke-virtual {v12, v0}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    #@18
    move-result-object v12

    #@19
    move-object v0, v12

    #@1a
    check-cast v0, Ljava/net/HttpURLConnection;

    #@1c
    move-object v10, v0

    #@1d
    .line 740
    .local v10, "urlConnection":Ljava/net/HttpURLConnection;
    const/4 v12, 0x3

    #@1e
    move/from16 v0, p2

    #@20
    if-ne v0, v12, :cond_4

    #@22
    const/4 v12, 0x1

    #@23
    :goto_0
    invoke-virtual {v10, v12}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    #@26
    .line 741
    const/16 v12, 0x2710

    #@28
    invoke-virtual {v10, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    #@2b
    .line 742
    const/16 v12, 0x2710

    #@2d
    invoke-virtual {v10, v12}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    #@30
    .line 743
    const/4 v12, 0x0

    #@31
    invoke-virtual {v10, v12}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    #@34
    .line 744
    move-object/from16 v0, p0

    #@36
    iget-object v12, v0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    #@38
    invoke-static {v12}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalUserAgent(Landroid/content/Context;)Ljava/lang/String;

    #@3b
    move-result-object v11

    #@3c
    .line 745
    .local v11, "userAgent":Ljava/lang/String;
    if-eqz v11, :cond_0

    #@3e
    .line 746
    const-string/jumbo v12, "User-Agent"

    #@41
    invoke-virtual {v10, v12, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@44
    .line 750
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@47
    move-result-wide v6

    #@48
    .line 752
    .local v6, "requestTimestamp":J
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    #@4b
    move-result v3

    #@4c
    .line 753
    const-string/jumbo v12, "location"

    #@4f
    invoke-virtual {v10, v12}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    #@52
    move-result-object v5

    #@53
    .line 756
    .local v5, "redirectUrl":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@56
    move-result-wide v8

    #@57
    .line 758
    .local v8, "responseTimestamp":J
    new-instance v12, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    invoke-static/range {p2 .. p2}, Landroid/net/metrics/ValidationProbeEvent;->getProbeName(I)Ljava/lang/String;

    #@5f
    move-result-object v13

    #@60
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v12

    #@64
    const-string/jumbo v13, " "

    #@67
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v12

    #@6b
    move-object/from16 v0, p1

    #@6d
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v12

    #@71
    .line 759
    const-string/jumbo v13, " time="

    #@74
    .line 758
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v12

    #@78
    .line 759
    sub-long v14, v8, v6

    #@7a
    .line 758
    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v12

    #@7e
    .line 759
    const-string/jumbo v13, "ms"

    #@81
    .line 758
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v12

    #@85
    .line 760
    const-string/jumbo v13, " ret="

    #@88
    .line 758
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v12

    #@8c
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v12

    #@90
    .line 761
    const-string/jumbo v13, " headers="

    #@93
    .line 758
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v12

    #@97
    .line 761
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    #@9a
    move-result-object v13

    #@9b
    .line 758
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v12

    #@9f
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a2
    move-result-object v12

    #@a3
    move-object/from16 v0, p0

    #@a5
    invoke-direct {v0, v12}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    #@a8
    .line 773
    const/16 v12, 0xc8

    #@aa
    if-ne v3, v12, :cond_1

    #@ac
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getContentLength()I

    #@af
    move-result v12

    #@b0
    if-nez v12, :cond_1

    #@b2
    .line 774
    const-string/jumbo v12, "Empty 200 response interpreted as 204 response."

    #@b5
    move-object/from16 v0, p0

    #@b7
    invoke-direct {v0, v12}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    #@ba
    .line 775
    const/16 v3, 0xcc

    #@bc
    .line 778
    :cond_1
    const/16 v12, 0xc8

    #@be
    if-ne v3, v12, :cond_2

    #@c0
    const/4 v12, 0x3

    #@c1
    move/from16 v0, p2

    #@c3
    if-ne v0, v12, :cond_2

    #@c5
    .line 779
    const-string/jumbo v12, "PAC fetch 200 response interpreted as 204 response."

    #@c8
    move-object/from16 v0, p0

    #@ca
    invoke-direct {v0, v12}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@cd
    .line 780
    const/16 v3, 0xcc

    #@cf
    .line 788
    :cond_2
    if-eqz v10, :cond_3

    #@d1
    .line 789
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    #@d4
    .line 792
    .end local v5    # "redirectUrl":Ljava/lang/String;
    .end local v6    # "requestTimestamp":J
    .end local v8    # "responseTimestamp":J
    .end local v10    # "urlConnection":Ljava/net/HttpURLConnection;
    .end local v11    # "userAgent":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-virtual {v4}, Landroid/net/util/Stopwatch;->stop()J

    #@d7
    move-result-wide v12

    #@d8
    move-object/from16 v0, p0

    #@da
    move/from16 v1, p2

    #@dc
    invoke-direct {v0, v12, v13, v1, v3}, Lcom/android/server/connectivity/NetworkMonitor;->logValidationProbe(JII)V

    #@df
    .line 793
    new-instance v12, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    #@e1
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    #@e4
    move-result-object v13

    #@e5
    invoke-direct {v12, v3, v5, v13}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@e8
    return-object v12

    #@e9
    .line 740
    .local v5, "redirectUrl":Ljava/lang/String;
    .restart local v10    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_4
    const/4 v12, 0x0

    #@ea
    goto/16 :goto_0

    #@ec
    .line 782
    .end local v5    # "redirectUrl":Ljava/lang/String;
    .end local v10    # "urlConnection":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v2

    #@ed
    .line 783
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    #@ef
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@f2
    const-string/jumbo v13, "Probably not a portal: exception "

    #@f5
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v12

    #@f9
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v12

    #@fd
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@100
    move-result-object v12

    #@101
    move-object/from16 v0, p0

    #@103
    invoke-direct {v0, v12}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@106
    .line 784
    const/16 v12, 0x257

    #@108
    if-ne v3, v12, :cond_5

    #@10a
    .line 788
    :cond_5
    if-eqz v10, :cond_3

    #@10c
    .line 789
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    #@10f
    goto :goto_1

    #@110
    .line 787
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    #@111
    .line 788
    if-eqz v10, :cond_6

    #@113
    .line 789
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    #@116
    .line 787
    :cond_6
    throw v12
.end method
