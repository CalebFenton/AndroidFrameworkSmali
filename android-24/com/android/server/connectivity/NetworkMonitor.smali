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
        Lcom/android/server/connectivity/NetworkMonitor$LingeringState;,
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

.field private static final CMD_LINGER_EXPIRED:I = 0x82004

.field public static final CMD_NETWORK_CONNECTED:I = 0x82001

.field public static final CMD_NETWORK_DISCONNECTED:I = 0x82007

.field public static final CMD_NETWORK_LINGER:I = 0x82003

.field private static final CMD_REEVALUATE:I = 0x82006

.field private static final DBG:Z = false

.field private static DEFAULT_LINGER_DELAY_MS:I = 0x0

.field private static final DEFAULT_SERVER:Ljava/lang/String; = "connectivitycheck.gstatic.com"

.field public static final EVENT_NETWORK_LINGER_COMPLETE:I = 0x82005

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

.field private static final LINGER_DELAY_PROPERTY:Ljava/lang/String; = "persist.netmon.linger"

.field private static final MAX_REEVALUATE_DELAY_MS:I = 0x927c0

.field public static final NETWORK_TEST_RESULT_INVALID:I = 0x1

.field public static final NETWORK_TEST_RESULT_VALID:I = 0x0

.field private static final PERMISSION_ACCESS_NETWORK_CONDITIONS:Ljava/lang/String; = "android.permission.ACCESS_NETWORK_CONDITIONS"

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

.field private mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

.field private final mLingerDelayMs:I

.field private mLingerToken:I

.field private final mLingeringState:Lcom/android/internal/util/State;

.field private final mMaybeNotifyState:Lcom/android/internal/util/State;

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

.method static synthetic -get10(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    #@2
    return v0
.end method

.method static synthetic -get11(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    #@2
    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    #@2
    return v0
.end method

.method static synthetic -get13(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I

    #@2
    return v0
.end method

.method static synthetic -get14(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z

    #@2
    return v0
.end method

.method static synthetic -get15(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
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

.method static synthetic -get7(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLingerDelayMs:I

    #@2
    return v0
.end method

.method static synthetic -get9(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLingeringState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDontDisplaySigninNotification:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/connectivity/NetworkMonitor;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    #@2
    return p1
.end method

.method static synthetic -set3(Lcom/android/server/connectivity/NetworkMonitor;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I

    #@2
    return p1
.end method

.method static synthetic -set4(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUseHttps:Z

    #@2
    return p1
.end method

.method static synthetic -set5(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/connectivity/NetworkMonitor;)V
    .locals 0

    #@0
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor;->quit()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/connectivity/NetworkMonitor;I)V
    .locals 0
    .param p1, "what"    # I

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->removeMessages(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)V
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
    .line 87
    const-class v0, Lcom/android/server/connectivity/NetworkMonitor;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    #@8
    .line 209
    const/16 v0, 0x7530

    #@a
    sput v0, Lcom/android/server/connectivity/NetworkMonitor;->DEFAULT_LINGER_DELAY_MS:I

    #@c
    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "networkAgentInfo"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p4, "defaultRequest"    # Landroid/net/NetworkRequest;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    .line 261
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
    .line 211
    iput v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLingerToken:I

    #@1f
    .line 218
    iput v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    #@21
    .line 220
    const/4 v0, -0x1

    #@22
    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I

    #@24
    .line 239
    iput-boolean v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z

    #@26
    .line 241
    iput-boolean v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDontDisplaySigninNotification:Z

    #@28
    .line 243
    iput-boolean v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    #@2a
    .line 245
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;

    #@2c
    invoke-direct {v0, p0, v4}, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$DefaultState;)V

    #@2f
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    #@31
    .line 246
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;

    #@33
    invoke-direct {v0, p0, v4}, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;)V

    #@36
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;

    #@38
    .line 247
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;

    #@3a
    invoke-direct {v0, p0, v4}, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;)V

    #@3d
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    #@3f
    .line 248
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;

    #@41
    invoke-direct {v0, p0, v4}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;)V

    #@44
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;

    #@46
    .line 249
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;

    #@48
    invoke-direct {v0, p0, v4}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;)V

    #@4b
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;

    #@4d
    .line 250
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;

    #@4f
    invoke-direct {v0, p0, v4}, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$LingeringState;)V

    #@52
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLingeringState:Lcom/android/internal/util/State;

    #@54
    .line 252
    iput-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    #@56
    .line 254
    new-instance v0, Landroid/util/LocalLog;

    #@58
    const/16 v3, 0x14

    #@5a
    invoke-direct {v0, v3}, Landroid/util/LocalLog;-><init>(I)V

    #@5d
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->validationLogs:Landroid/util/LocalLog;

    #@5f
    .line 256
    new-instance v0, Landroid/net/util/Stopwatch;

    #@61
    invoke-direct {v0}, Landroid/net/util/Stopwatch;-><init>()V

    #@64
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluationTimer:Landroid/net/util/Stopwatch;

    #@66
    .line 263
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    #@68
    .line 264
    iput-object p2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;

    #@6a
    .line 265
    iput-object p3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    #@6c
    .line 266
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    #@6e
    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@70
    iget v0, v0, Landroid/net/Network;->netId:I

    #@72
    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    #@74
    .line 267
    const-string/jumbo v0, "phone"

    #@77
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@7a
    move-result-object v0

    #@7b
    check-cast v0, Landroid/telephony/TelephonyManager;

    #@7d
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@7f
    .line 268
    const-string/jumbo v0, "wifi"

    #@82
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@85
    move-result-object v0

    #@86
    check-cast v0, Landroid/net/wifi/WifiManager;

    #@88
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    #@8a
    .line 269
    const-string/jumbo v0, "alarm"

    #@8d
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@90
    move-result-object v0

    #@91
    check-cast v0, Landroid/app/AlarmManager;

    #@93
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    #@95
    .line 270
    iput-object p4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultRequest:Landroid/net/NetworkRequest;

    #@97
    .line 272
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    #@99
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;)V

    #@9c
    .line 273
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;

    #@9e
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    #@a0
    invoke-virtual {p0, v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@a3
    .line 274
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    #@a5
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    #@a7
    invoke-virtual {p0, v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@aa
    .line 275
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;

    #@ac
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    #@ae
    invoke-virtual {p0, v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@b1
    .line 276
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;

    #@b3
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    #@b5
    invoke-virtual {p0, v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@b8
    .line 277
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLingeringState:Lcom/android/internal/util/State;

    #@ba
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    #@bc
    invoke-virtual {p0, v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@bf
    .line 278
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    #@c1
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->setInitialState(Lcom/android/internal/util/State;)V

    #@c4
    .line 280
    const-string/jumbo v0, "persist.netmon.linger"

    #@c7
    sget v3, Lcom/android/server/connectivity/NetworkMonitor;->DEFAULT_LINGER_DELAY_MS:I

    #@c9
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@cc
    move-result v0

    #@cd
    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLingerDelayMs:I

    #@cf
    .line 282
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    #@d1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@d4
    move-result-object v0

    #@d5
    .line 283
    const-string/jumbo v3, "captive_portal_detection_enabled"

    #@d8
    .line 282
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@db
    move-result v0

    #@dc
    if-ne v0, v1, :cond_0

    #@de
    move v0, v1

    #@df
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalCheckEnabled:Z

    #@e1
    .line 284
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    #@e3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@e6
    move-result-object v0

    #@e7
    .line 285
    const-string/jumbo v3, "captive_portal_use_https"

    #@ea
    .line 284
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@ed
    move-result v0

    #@ee
    if-ne v0, v1, :cond_1

    #@f0
    :goto_1
    iput-boolean v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUseHttps:Z

    #@f2
    .line 287
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor;->start()V

    #@f5
    .line 259
    return-void

    #@f6
    :cond_0
    move v0, v2

    #@f7
    .line 282
    goto :goto_0

    #@f8
    :cond_1
    move v1, v2

    #@f9
    .line 284
    goto :goto_1
.end method

.method public static SetDefaultLingerTime(I)V
    .locals 2
    .param p0, "time_ms"    # I

    #@0
    .prologue
    .line 1006
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@3
    move-result v0

    #@4
    const/16 v1, 0x3e8

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 1007
    new-instance v0, Ljava/lang/SecurityException;

    #@a
    const-string/jumbo v1, "SetDefaultLingerTime only for internal testing."

    #@d
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 1009
    :cond_0
    sput p0, Lcom/android/server/connectivity/NetworkMonitor;->DEFAULT_LINGER_DELAY_MS:I

    #@13
    .line 1005
    return-void
.end method

.method public static getCaptivePortalServerUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 699
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalServerUrl(Landroid/content/Context;Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private static getCaptivePortalServerUrl(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isHttps"    # Z

    #@0
    .prologue
    .line 692
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v1

    #@4
    .line 693
    const-string/jumbo v2, "captive_portal_server"

    #@7
    .line 692
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 694
    .local v0, "server":Ljava/lang/String;
    if-nez v0, :cond_0

    #@d
    const-string/jumbo v0, "connectivitycheck.gstatic.com"

    #@10
    .line 695
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    if-eqz p1, :cond_1

    #@17
    const-string/jumbo v1, "https"

    #@1a
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    const-string/jumbo v2, "://"

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    const-string/jumbo v2, "/generate_204"

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    return-object v1

    #@35
    :cond_1
    const-string/jumbo v1, "http"

    #@38
    goto :goto_0
.end method

.method private sendNetworkConditionsBroadcast(ZZJJ)V
    .locals 15
    .param p1, "responseReceived"    # Z
    .param p2, "isCaptivePortal"    # Z
    .param p3, "requestTimestampMs"    # J
    .param p5, "responseTimestampMs"    # J

    #@0
    .prologue
    .line 930
    iget-object v12, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v12

    #@6
    .line 931
    const-string/jumbo v13, "wifi_scan_always_enabled"

    #@9
    const/4 v14, 0x0

    #@a
    .line 930
    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@d
    move-result v12

    #@e
    if-nez v12, :cond_0

    #@10
    .line 932
    return-void

    #@11
    .line 935
    :cond_0
    iget-boolean v12, p0, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    #@13
    if-nez v12, :cond_1

    #@15
    return-void

    #@16
    .line 937
    :cond_1
    new-instance v10, Landroid/content/Intent;

    #@18
    const-string/jumbo v12, "android.net.conn.NETWORK_CONDITIONS_MEASURED"

    #@1b
    invoke-direct {v10, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1e
    .line 938
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
    .line 989
    return-void

    #@2a
    .line 940
    :pswitch_0
    iget-object v12, p0, Lcom/android/server/connectivity/NetworkMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    #@2c
    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    #@2f
    move-result-object v8

    #@30
    .line 941
    .local v8, "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v8, :cond_4

    #@32
    .line 949
    const-string/jumbo v12, "extra_ssid"

    #@35
    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    #@38
    move-result-object v13

    #@39
    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@3c
    .line 950
    const-string/jumbo v12, "extra_bssid"

    #@3f
    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    #@42
    move-result-object v13

    #@43
    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@46
    .line 991
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
    .line 992
    const-string/jumbo v12, "extra_response_received"

    #@57
    move/from16 v0, p1

    #@59
    invoke-virtual {v10, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@5c
    .line 993
    const-string/jumbo v12, "extra_request_timestamp_ms"

    #@5f
    move-wide/from16 v0, p3

    #@61
    invoke-virtual {v10, v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    #@64
    .line 995
    if-eqz p1, :cond_3

    #@66
    .line 996
    const-string/jumbo v12, "extra_is_captive_portal"

    #@69
    move/from16 v0, p2

    #@6b
    invoke-virtual {v10, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@6e
    .line 997
    const-string/jumbo v12, "extra_response_timestamp_ms"

    #@71
    move-wide/from16 v0, p5

    #@73
    invoke-virtual {v10, v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    #@76
    .line 999
    :cond_3
    iget-object v12, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    #@78
    sget-object v13, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@7a
    .line 1000
    const-string/jumbo v14, "android.permission.ACCESS_NETWORK_CONDITIONS"

    #@7d
    .line 999
    invoke-virtual {v12, v10, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    #@80
    .line 929
    return-void

    #@81
    .line 953
    .restart local v8    # "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_4
    return-void

    #@82
    .line 957
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
    .line 958
    iget-object v12, p0, Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@90
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    #@93
    move-result-object v9

    #@94
    .line 959
    .local v9, "info":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    if-nez v9, :cond_5

    #@96
    return-void

    #@97
    .line 960
    :cond_5
    const/4 v11, 0x0

    #@98
    .line 961
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
    .line 962
    .local v6, "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v6}, Landroid/telephony/CellInfo;->isRegistered()Z

    #@ab
    move-result v12

    #@ac
    if-eqz v12, :cond_6

    #@ae
    .line 963
    add-int/lit8 v11, v11, 0x1

    #@b0
    .line 964
    const/4 v12, 0x1

    #@b1
    if-le v11, v12, :cond_7

    #@b3
    .line 965
    const-string/jumbo v12, "more than one registered CellInfo.  Can\'t tell which is active.  Bailing."

    #@b6
    invoke-virtual {p0, v12}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    #@b9
    .line 967
    return-void

    #@ba
    .line 969
    :cond_7
    instance-of v12, v6, Landroid/telephony/CellInfoCdma;

    #@bc
    if-eqz v12, :cond_8

    #@be
    .line 970
    check-cast v6, Landroid/telephony/CellInfoCdma;

    #@c0
    .end local v6    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v6}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    #@c3
    move-result-object v2

    #@c4
    .line 971
    .local v2, "cellId":Landroid/telephony/CellIdentityCdma;
    const-string/jumbo v12, "extra_cellid"

    #@c7
    invoke-virtual {v10, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@ca
    goto :goto_0

    #@cb
    .line 972
    .end local v2    # "cellId":Landroid/telephony/CellIdentityCdma;
    .restart local v6    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_8
    instance-of v12, v6, Landroid/telephony/CellInfoGsm;

    #@cd
    if-eqz v12, :cond_9

    #@cf
    .line 973
    check-cast v6, Landroid/telephony/CellInfoGsm;

    #@d1
    .end local v6    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v6}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    #@d4
    move-result-object v3

    #@d5
    .line 974
    .local v3, "cellId":Landroid/telephony/CellIdentityGsm;
    const-string/jumbo v12, "extra_cellid"

    #@d8
    invoke-virtual {v10, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@db
    goto :goto_0

    #@dc
    .line 975
    .end local v3    # "cellId":Landroid/telephony/CellIdentityGsm;
    .restart local v6    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_9
    instance-of v12, v6, Landroid/telephony/CellInfoLte;

    #@de
    if-eqz v12, :cond_a

    #@e0
    .line 976
    check-cast v6, Landroid/telephony/CellInfoLte;

    #@e2
    .end local v6    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v6}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    #@e5
    move-result-object v4

    #@e6
    .line 977
    .local v4, "cellId":Landroid/telephony/CellIdentityLte;
    const-string/jumbo v12, "extra_cellid"

    #@e9
    invoke-virtual {v10, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@ec
    goto :goto_0

    #@ed
    .line 978
    .end local v4    # "cellId":Landroid/telephony/CellIdentityLte;
    .restart local v6    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_a
    instance-of v12, v6, Landroid/telephony/CellInfoWcdma;

    #@ef
    if-eqz v12, :cond_b

    #@f1
    .line 979
    check-cast v6, Landroid/telephony/CellInfoWcdma;

    #@f3
    .end local v6    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v6}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    #@f6
    move-result-object v5

    #@f7
    .line 980
    .local v5, "cellId":Landroid/telephony/CellIdentityWcdma;
    const-string/jumbo v12, "extra_cellid"

    #@fa
    invoke-virtual {v10, v12, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@fd
    goto :goto_0

    #@fe
    .line 983
    .end local v5    # "cellId":Landroid/telephony/CellIdentityWcdma;
    .restart local v6    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_b
    return-void

    #@ff
    .line 938
    nop

    #@100
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendParallelHttpProbes(Ljava/net/URL;Ljava/net/URL;)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    .locals 15
    .param p1, "httpsUrl"    # Ljava/net/URL;
    .param p2, "httpUrl"    # Ljava/net/URL;

    #@0
    .prologue
    .line 867
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    #@2
    const/4 v1, 0x2

    #@3
    invoke-direct {v6, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@6
    .line 871
    .local v6, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    #@8
    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@b
    .line 903
    .local v5, "finalResult":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;>;"
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;

    #@d
    const/4 v2, 0x1

    #@e
    move-object v1, p0

    #@f
    move-object/from16 v3, p1

    #@11
    move-object/from16 v4, p2

    #@13
    invoke-direct/range {v0 .. v6}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;-><init>(Lcom/android/server/connectivity/NetworkMonitor;ZLjava/net/URL;Ljava/net/URL;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    #@16
    .line 904
    .local v0, "httpsProbe":Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;
    new-instance v7, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;

    #@18
    const/4 v9, 0x0

    #@19
    move-object v8, p0

    #@1a
    move-object/from16 v10, p1

    #@1c
    move-object/from16 v11, p2

    #@1e
    move-object v12, v5

    #@1f
    move-object v13, v6

    #@20
    invoke-direct/range {v7 .. v13}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;-><init>(Lcom/android/server/connectivity/NetworkMonitor;ZLjava/net/URL;Ljava/net/URL;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    #@23
    .line 905
    .local v7, "httpProbe":Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->start()V

    #@26
    .line 906
    invoke-virtual {v7}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->start()V

    #@29
    .line 909
    :try_start_0
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    .line 916
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->getResult()Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    #@2f
    move-result-object v1

    #@30
    const/4 v2, 0x0

    #@31
    invoke-virtual {v5, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@34
    .line 918
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@37
    move-result-object v1

    #@38
    check-cast v1, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    #@3a
    return-object v1

    #@3b
    .line 910
    :catch_0
    move-exception v14

    #@3c
    .line 911
    .local v14, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "Error: probe wait interrupted!"

    #@3f
    invoke-direct {p0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    #@42
    .line 912
    sget-object v1, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->FAILED:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    #@44
    return-object v1
.end method

.method private validationLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->validationLogs:Landroid/util/LocalLog;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@5
    .line 295
    return-void
.end method


# virtual methods
.method public getValidationLogs()Landroid/util/LocalLog$ReadOnlyLocalLog;
    .locals 1

    #@0
    .prologue
    .line 301
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
    .line 704
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
    const/4 v7, 0x0

    #@b
    invoke-direct {v5, v6, v7}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;-><init>(ILjava/lang/String;)V

    #@e
    return-object v5

    #@f
    .line 706
    :cond_0
    const/16 v23, 0x0

    #@11
    .local v23, "pacUrl":Ljava/net/URL;
    const/16 v20, 0x0

    #@13
    .local v20, "httpUrl":Ljava/net/URL;
    const/16 v22, 0x0

    #@15
    .line 725
    .local v22, "httpsUrl":Ljava/net/URL;
    move-object/from16 v0, p0

    #@17
    iget-object v5, v0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    #@19
    iget-object v5, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@1b
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    #@1e
    move-result-object v25

    #@1f
    .line 726
    .local v25, "proxyInfo":Landroid/net/ProxyInfo;
    if-eqz v25, :cond_1

    #@21
    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #@23
    invoke-virtual/range {v25 .. v25}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    #@26
    move-result-object v6

    #@27
    invoke-virtual {v5, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v5

    #@2b
    if-eqz v5, :cond_4

    #@2d
    .line 735
    .end local v23    # "pacUrl":Ljava/net/URL;
    :cond_1
    :goto_0
    if-nez v23, :cond_2

    #@2f
    .line 737
    :try_start_0
    new-instance v21, Ljava/net/URL;

    #@31
    move-object/from16 v0, p0

    #@33
    iget-object v5, v0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    #@35
    const/4 v6, 0x0

    #@36
    invoke-static {v5, v6}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalServerUrl(Landroid/content/Context;Z)Ljava/lang/String;

    #@39
    move-result-object v5

    #@3a
    move-object/from16 v0, v21

    #@3c
    invoke-direct {v0, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    #@3f
    .line 738
    .end local v20    # "httpUrl":Ljava/net/URL;
    .local v21, "httpUrl":Ljava/net/URL;
    :try_start_1
    new-instance v22, Ljava/net/URL;

    #@41
    .end local v22    # "httpsUrl":Ljava/net/URL;
    move-object/from16 v0, p0

    #@43
    iget-object v5, v0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    #@45
    const/4 v6, 0x1

    #@46
    invoke-static {v5, v6}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalServerUrl(Landroid/content/Context;Z)Ljava/lang/String;

    #@49
    move-result-object v5

    #@4a
    move-object/from16 v0, v22

    #@4c
    invoke-direct {v0, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3

    #@4f
    .local v22, "httpsUrl":Ljava/net/URL;
    move-object/from16 v20, v21

    #@51
    .line 745
    .end local v21    # "httpUrl":Ljava/net/URL;
    .end local v22    # "httpsUrl":Ljava/net/URL;
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@54
    move-result-wide v8

    #@55
    .line 750
    .local v8, "startTime":J
    const/16 v19, 0x0

    #@57
    .line 751
    .local v19, "hostToResolve":Ljava/lang/String;
    if-eqz v23, :cond_5

    #@59
    .line 752
    invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@5c
    move-result-object v19

    #@5d
    .line 759
    .local v19, "hostToResolve":Ljava/lang/String;
    :goto_1
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@60
    move-result v5

    #@61
    if-nez v5, :cond_8

    #@63
    .line 760
    const/4 v5, 0x0

    #@64
    invoke-static {v5}, Landroid/net/metrics/ValidationProbeEvent;->getProbeName(I)Ljava/lang/String;

    #@67
    move-result-object v24

    #@68
    .line 761
    .local v24, "probeName":Ljava/lang/String;
    new-instance v5, Landroid/net/util/Stopwatch;

    #@6a
    invoke-direct {v5}, Landroid/net/util/Stopwatch;-><init>()V

    #@6d
    invoke-virtual {v5}, Landroid/net/util/Stopwatch;->start()Landroid/net/util/Stopwatch;

    #@70
    move-result-object v16

    #@71
    .line 763
    .local v16, "dnsTimer":Landroid/net/util/Stopwatch;
    :try_start_2
    move-object/from16 v0, p0

    #@73
    iget-object v5, v0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    #@75
    iget-object v5, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@77
    move-object/from16 v0, v19

    #@79
    invoke-virtual {v5, v0}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    #@7c
    move-result-object v12

    #@7d
    .line 764
    .local v12, "addresses":[Ljava/net/InetAddress;
    invoke-virtual/range {v16 .. v16}, Landroid/net/util/Stopwatch;->stop()J

    #@80
    move-result-wide v14

    #@81
    .line 765
    .local v14, "dnsLatency":J
    move-object/from16 v0, p0

    #@83
    iget v5, v0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    #@85
    .line 766
    const/4 v6, 0x0

    #@86
    const/4 v7, 0x1

    #@87
    .line 765
    invoke-static {v5, v14, v15, v6, v7}, Landroid/net/metrics/ValidationProbeEvent;->logEvent(IJII)V

    #@8a
    .line 767
    new-instance v13, Ljava/lang/StringBuffer;

    #@8c
    new-instance v5, Ljava/lang/StringBuilder;

    #@8e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@91
    const-string/jumbo v6, ", "

    #@94
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v5

    #@98
    move-object/from16 v0, v19

    #@9a
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v5

    #@9e
    const-string/jumbo v6, "="

    #@a1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v5

    #@a5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a8
    move-result-object v5

    #@a9
    invoke-direct {v13, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@ac
    .line 768
    .local v13, "connectInfo":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    #@ad
    array-length v6, v12

    #@ae
    :goto_2
    if-ge v5, v6, :cond_7

    #@b0
    aget-object v4, v12, v5

    #@b2
    .line 769
    .local v4, "address":Ljava/net/InetAddress;
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@b5
    move-result-object v7

    #@b6
    invoke-virtual {v13, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b9
    .line 770
    array-length v7, v12

    #@ba
    add-int/lit8 v7, v7, -0x1

    #@bc
    aget-object v7, v12, v7

    #@be
    if-eq v4, v7, :cond_3

    #@c0
    const-string/jumbo v7, ","

    #@c3
    invoke-virtual {v13, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_2

    #@c6
    .line 768
    :cond_3
    add-int/lit8 v5, v5, 0x1

    #@c8
    goto :goto_2

    #@c9
    .line 728
    .end local v4    # "address":Ljava/net/InetAddress;
    .end local v8    # "startTime":J
    .end local v12    # "addresses":[Ljava/net/InetAddress;
    .end local v13    # "connectInfo":Ljava/lang/StringBuffer;
    .end local v14    # "dnsLatency":J
    .end local v16    # "dnsTimer":Landroid/net/util/Stopwatch;
    .end local v19    # "hostToResolve":Ljava/lang/String;
    .end local v24    # "probeName":Ljava/lang/String;
    .restart local v20    # "httpUrl":Ljava/net/URL;
    .local v22, "httpsUrl":Ljava/net/URL;
    .restart local v23    # "pacUrl":Ljava/net/URL;
    :cond_4
    :try_start_3
    new-instance v23, Ljava/net/URL;

    #@cb
    .end local v23    # "pacUrl":Ljava/net/URL;
    invoke-virtual/range {v25 .. v25}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    #@ce
    move-result-object v5

    #@cf
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@d2
    move-result-object v5

    #@d3
    move-object/from16 v0, v23

    #@d5
    invoke-direct {v0, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0

    #@d8
    .local v23, "pacUrl":Ljava/net/URL;
    goto/16 :goto_0

    #@da
    .line 729
    .end local v23    # "pacUrl":Ljava/net/URL;
    :catch_0
    move-exception v17

    #@db
    .line 730
    .local v17, "e":Ljava/net/MalformedURLException;
    new-instance v5, Ljava/lang/StringBuilder;

    #@dd
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@e0
    const-string/jumbo v6, "Invalid PAC URL: "

    #@e3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v5

    #@e7
    invoke-virtual/range {v25 .. v25}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    #@ea
    move-result-object v6

    #@eb
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@ee
    move-result-object v6

    #@ef
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v5

    #@f3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f6
    move-result-object v5

    #@f7
    move-object/from16 v0, p0

    #@f9
    invoke-direct {v0, v5}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    #@fc
    .line 731
    sget-object v5, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->FAILED:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    #@fe
    return-object v5

    #@ff
    .line 739
    .end local v17    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v17

    #@100
    .line 740
    .end local v20    # "httpUrl":Ljava/net/URL;
    .end local v22    # "httpsUrl":Ljava/net/URL;
    .restart local v17    # "e":Ljava/net/MalformedURLException;
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    #@102
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@105
    const-string/jumbo v6, "Bad validation URL: "

    #@108
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v5

    #@10c
    move-object/from16 v0, p0

    #@10e
    iget-object v6, v0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    #@110
    const/4 v7, 0x0

    #@111
    invoke-static {v6, v7}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalServerUrl(Landroid/content/Context;Z)Ljava/lang/String;

    #@114
    move-result-object v6

    #@115
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@118
    move-result-object v5

    #@119
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11c
    move-result-object v5

    #@11d
    move-object/from16 v0, p0

    #@11f
    invoke-direct {v0, v5}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    #@122
    .line 741
    sget-object v5, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->FAILED:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    #@124
    return-object v5

    #@125
    .line 753
    .end local v17    # "e":Ljava/net/MalformedURLException;
    .restart local v8    # "startTime":J
    .local v19, "hostToResolve":Ljava/lang/String;
    :cond_5
    if-eqz v25, :cond_6

    #@127
    .line 754
    invoke-virtual/range {v25 .. v25}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    #@12a
    move-result-object v19

    #@12b
    .local v19, "hostToResolve":Ljava/lang/String;
    goto/16 :goto_1

    #@12d
    .line 756
    .local v19, "hostToResolve":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@130
    move-result-object v19

    #@131
    .local v19, "hostToResolve":Ljava/lang/String;
    goto/16 :goto_1

    #@133
    .line 772
    .restart local v12    # "addresses":[Ljava/net/InetAddress;
    .restart local v13    # "connectInfo":Ljava/lang/StringBuffer;
    .restart local v14    # "dnsLatency":J
    .restart local v16    # "dnsTimer":Landroid/net/util/Stopwatch;
    .restart local v24    # "probeName":Ljava/lang/String;
    :cond_7
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    #@135
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@138
    move-object/from16 v0, v24

    #@13a
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13d
    move-result-object v5

    #@13e
    const-string/jumbo v6, " OK "

    #@141
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@144
    move-result-object v5

    #@145
    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@148
    move-result-object v5

    #@149
    const-string/jumbo v6, "ms"

    #@14c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14f
    move-result-object v5

    #@150
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@153
    move-result-object v5

    #@154
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@157
    move-result-object v5

    #@158
    move-object/from16 v0, p0

    #@15a
    invoke-direct {v0, v5}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_2

    #@15d
    .line 782
    .end local v12    # "addresses":[Ljava/net/InetAddress;
    .end local v13    # "connectInfo":Ljava/lang/StringBuffer;
    .end local v14    # "dnsLatency":J
    .end local v16    # "dnsTimer":Landroid/net/util/Stopwatch;
    .end local v24    # "probeName":Ljava/lang/String;
    :cond_8
    :goto_4
    if-eqz v23, :cond_9

    #@15f
    .line 783
    const/4 v5, 0x3

    #@160
    move-object/from16 v0, p0

    #@162
    move-object/from16 v1, v23

    #@164
    invoke-virtual {v0, v1, v5}, Lcom/android/server/connectivity/NetworkMonitor;->sendHttpProbe(Ljava/net/URL;I)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    #@167
    move-result-object v26

    #@168
    .line 790
    .local v26, "result":Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@16b
    move-result-wide v10

    #@16c
    .line 793
    .local v10, "endTime":J
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isPortal()Z

    #@16f
    move-result v7

    #@170
    .line 792
    const/4 v6, 0x1

    #@171
    move-object/from16 v5, p0

    #@173
    invoke-direct/range {v5 .. v11}, Lcom/android/server/connectivity/NetworkMonitor;->sendNetworkConditionsBroadcast(ZZJJ)V

    #@176
    .line 796
    return-object v26

    #@177
    .line 773
    .end local v10    # "endTime":J
    .end local v26    # "result":Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    .restart local v16    # "dnsTimer":Landroid/net/util/Stopwatch;
    .restart local v24    # "probeName":Ljava/lang/String;
    :catch_2
    move-exception v18

    #@178
    .line 774
    .local v18, "e":Ljava/net/UnknownHostException;
    invoke-virtual/range {v16 .. v16}, Landroid/net/util/Stopwatch;->stop()J

    #@17b
    move-result-wide v14

    #@17c
    .line 775
    .restart local v14    # "dnsLatency":J
    move-object/from16 v0, p0

    #@17e
    iget v5, v0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    #@180
    .line 776
    const/4 v6, 0x0

    #@181
    const/4 v7, 0x0

    #@182
    .line 775
    invoke-static {v5, v14, v15, v6, v7}, Landroid/net/metrics/ValidationProbeEvent;->logEvent(IJII)V

    #@185
    .line 777
    new-instance v5, Ljava/lang/StringBuilder;

    #@187
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@18a
    move-object/from16 v0, v24

    #@18c
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18f
    move-result-object v5

    #@190
    const-string/jumbo v6, " FAIL "

    #@193
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@196
    move-result-object v5

    #@197
    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@19a
    move-result-object v5

    #@19b
    const-string/jumbo v6, "ms, "

    #@19e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a1
    move-result-object v5

    #@1a2
    move-object/from16 v0, v19

    #@1a4
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a7
    move-result-object v5

    #@1a8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ab
    move-result-object v5

    #@1ac
    move-object/from16 v0, p0

    #@1ae
    invoke-direct {v0, v5}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    #@1b1
    goto :goto_4

    #@1b2
    .line 784
    .end local v14    # "dnsLatency":J
    .end local v16    # "dnsTimer":Landroid/net/util/Stopwatch;
    .end local v18    # "e":Ljava/net/UnknownHostException;
    .end local v24    # "probeName":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    #@1b4
    iget-boolean v5, v0, Lcom/android/server/connectivity/NetworkMonitor;->mUseHttps:Z

    #@1b6
    if-eqz v5, :cond_a

    #@1b8
    .line 785
    move-object/from16 v0, p0

    #@1ba
    move-object/from16 v1, v22

    #@1bc
    move-object/from16 v2, v20

    #@1be
    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->sendParallelHttpProbes(Ljava/net/URL;Ljava/net/URL;)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    #@1c1
    move-result-object v26

    #@1c2
    .restart local v26    # "result":Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    goto :goto_5

    #@1c3
    .line 787
    .end local v26    # "result":Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    :cond_a
    const/4 v5, 0x1

    #@1c4
    move-object/from16 v0, p0

    #@1c6
    move-object/from16 v1, v20

    #@1c8
    invoke-virtual {v0, v1, v5}, Lcom/android/server/connectivity/NetworkMonitor;->sendHttpProbe(Ljava/net/URL;I)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    #@1cb
    move-result-object v26

    #@1cc
    .restart local v26    # "result":Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    goto :goto_5

    #@1cd
    .line 739
    .end local v8    # "startTime":J
    .end local v19    # "hostToResolve":Ljava/lang/String;
    .end local v26    # "result":Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    .restart local v21    # "httpUrl":Ljava/net/URL;
    :catch_3
    move-exception v17

    #@1ce
    .restart local v17    # "e":Ljava/net/MalformedURLException;
    move-object/from16 v20, v21

    #@1d0
    .end local v21    # "httpUrl":Ljava/net/URL;
    .local v20, "httpUrl":Ljava/net/URL;
    goto/16 :goto_3
.end method

.method protected log(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 291
    return-void
.end method

.method protected makeWakeupMessage(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)Lcom/android/internal/util/WakeupMessage;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "i"    # I

    #@0
    .prologue
    .line 1014
    new-instance v0, Lcom/android/internal/util/WakeupMessage;

    #@2
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    #@5
    return-object v0
.end method

.method protected sendHttpProbe(Ljava/net/URL;I)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    .locals 14
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "probeType"    # I

    #@0
    .prologue
    .line 805
    const/4 v10, 0x0

    #@1
    .line 806
    .local v10, "urlConnection":Ljava/net/HttpURLConnection;
    const/16 v3, 0x257

    #@3
    .line 807
    .local v3, "httpResponseCode":I
    const/4 v5, 0x0

    #@4
    .line 808
    .local v5, "redirectUrl":Ljava/lang/String;
    new-instance v11, Landroid/net/util/Stopwatch;

    #@6
    invoke-direct {v11}, Landroid/net/util/Stopwatch;-><init>()V

    #@9
    invoke-virtual {v11}, Landroid/net/util/Stopwatch;->start()Landroid/net/util/Stopwatch;

    #@c
    move-result-object v4

    #@d
    .line 810
    .local v4, "probeTimer":Landroid/net/util/Stopwatch;
    :try_start_0
    iget-object v11, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    #@f
    iget-object v11, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@11
    invoke-virtual {v11, p1}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    #@14
    move-result-object v11

    #@15
    move-object v0, v11

    #@16
    check-cast v0, Ljava/net/HttpURLConnection;

    #@18
    move-object v10, v0

    #@19
    .line 811
    .local v10, "urlConnection":Ljava/net/HttpURLConnection;
    const/4 v11, 0x3

    #@1a
    move/from16 v0, p2

    #@1c
    if-ne v0, v11, :cond_3

    #@1e
    const/4 v11, 0x1

    #@1f
    :goto_0
    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    #@22
    .line 812
    const/16 v11, 0x2710

    #@24
    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    #@27
    .line 813
    const/16 v11, 0x2710

    #@29
    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    #@2c
    .line 814
    const/4 v11, 0x0

    #@2d
    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    #@30
    .line 817
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@33
    move-result-wide v6

    #@34
    .line 819
    .local v6, "requestTimestamp":J
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    #@37
    move-result v3

    #@38
    .line 820
    const-string/jumbo v11, "location"

    #@3b
    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    #@3e
    move-result-object v5

    #@3f
    .line 823
    .local v5, "redirectUrl":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@42
    move-result-wide v8

    #@43
    .line 825
    .local v8, "responseTimestamp":J
    new-instance v11, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    invoke-static/range {p2 .. p2}, Landroid/net/metrics/ValidationProbeEvent;->getProbeName(I)Ljava/lang/String;

    #@4b
    move-result-object v12

    #@4c
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v11

    #@50
    const-string/jumbo v12, " "

    #@53
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v11

    #@57
    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v11

    #@5b
    .line 826
    const-string/jumbo v12, " time="

    #@5e
    .line 825
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v11

    #@62
    .line 826
    sub-long v12, v8, v6

    #@64
    .line 825
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@67
    move-result-object v11

    #@68
    .line 826
    const-string/jumbo v12, "ms"

    #@6b
    .line 825
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v11

    #@6f
    .line 827
    const-string/jumbo v12, " ret="

    #@72
    .line 825
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v11

    #@76
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@79
    move-result-object v11

    #@7a
    .line 828
    const-string/jumbo v12, " headers="

    #@7d
    .line 825
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v11

    #@81
    .line 828
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    #@84
    move-result-object v12

    #@85
    .line 825
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v11

    #@89
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v11

    #@8d
    invoke-direct {p0, v11}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    #@90
    .line 840
    const/16 v11, 0xc8

    #@92
    if-ne v3, v11, :cond_0

    #@94
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getContentLength()I

    #@97
    move-result v11

    #@98
    if-nez v11, :cond_0

    #@9a
    .line 841
    const-string/jumbo v11, "Empty 200 response interpreted as 204 response."

    #@9d
    invoke-direct {p0, v11}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    #@a0
    .line 842
    const/16 v3, 0xcc

    #@a2
    .line 845
    :cond_0
    const/16 v11, 0xc8

    #@a4
    if-ne v3, v11, :cond_1

    #@a6
    const/4 v11, 0x3

    #@a7
    move/from16 v0, p2

    #@a9
    if-ne v0, v11, :cond_1

    #@ab
    .line 846
    const-string/jumbo v11, "PAC fetch 200 response interpreted as 204 response."

    #@ae
    invoke-direct {p0, v11}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b1
    .line 847
    const/16 v3, 0xcc

    #@b3
    .line 855
    :cond_1
    if-eqz v10, :cond_2

    #@b5
    .line 856
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    #@b8
    .line 859
    .end local v5    # "redirectUrl":Ljava/lang/String;
    .end local v6    # "requestTimestamp":J
    .end local v8    # "responseTimestamp":J
    .end local v10    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_2
    :goto_1
    iget v11, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    #@ba
    invoke-virtual {v4}, Landroid/net/util/Stopwatch;->stop()J

    #@bd
    move-result-wide v12

    #@be
    move/from16 v0, p2

    #@c0
    invoke-static {v11, v12, v13, v0, v3}, Landroid/net/metrics/ValidationProbeEvent;->logEvent(IJII)V

    #@c3
    .line 860
    new-instance v11, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    #@c5
    invoke-direct {v11, v3, v5}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;-><init>(ILjava/lang/String;)V

    #@c8
    return-object v11

    #@c9
    .line 811
    .local v5, "redirectUrl":Ljava/lang/String;
    .restart local v10    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_3
    const/4 v11, 0x0

    #@ca
    goto/16 :goto_0

    #@cc
    .line 849
    .end local v5    # "redirectUrl":Ljava/lang/String;
    .end local v10    # "urlConnection":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v2

    #@cd
    .line 850
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    #@cf
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@d2
    const-string/jumbo v12, "Probably not a portal: exception "

    #@d5
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v11

    #@d9
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v11

    #@dd
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e0
    move-result-object v11

    #@e1
    invoke-direct {p0, v11}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e4
    .line 851
    const/16 v11, 0x257

    #@e6
    if-ne v3, v11, :cond_4

    #@e8
    .line 855
    :cond_4
    if-eqz v10, :cond_2

    #@ea
    .line 856
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    #@ed
    goto :goto_1

    #@ee
    .line 854
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    #@ef
    .line 855
    if-eqz v10, :cond_5

    #@f1
    .line 856
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    #@f4
    .line 854
    :cond_5
    throw v11
.end method
