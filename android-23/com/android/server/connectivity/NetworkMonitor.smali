.class public Lcom/android/server/connectivity/NetworkMonitor;
.super Lcom/android/internal/util/StateMachine;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/NetworkMonitor$DefaultState;,
        Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;,
        Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;,
        Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;,
        Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;,
        Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;,
        Lcom/android/server/connectivity/NetworkMonitor$LingeringState;
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

.field private static final DBG:Z = true

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

.field private static final TAG:Ljava/lang/String; = "NetworkMonitor"


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mCaptivePortalState:Lcom/android/internal/util/State;

.field private final mConnectivityServiceHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultRequest:Landroid/net/NetworkRequest;

.field private final mDefaultState:Lcom/android/internal/util/State;

.field private mDontDisplaySigninNotification:Z

.field private final mEvaluatingState:Lcom/android/internal/util/State;

.field private mIsCaptivePortalCheckEnabled:Z

.field private mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

.field private final mLingerDelayMs:I

.field private mLingerToken:I

.field private final mLingeringState:Lcom/android/internal/util/State;

.field private final mMaybeNotifyState:Lcom/android/internal/util/State;

.field private final mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

.field private mReevaluateToken:I

.field private mServer:Ljava/lang/String;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUidResponsibleForReeval:I

.field private mUserDoesNotWant:Z

.field private final mValidatedState:Lcom/android/internal/util/State;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field public systemReady:Z

.field private final validationLogs:Landroid/util/LocalLog;


# direct methods
.method static synthetic -get0(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/app/AlarmManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLingeringState:Lcom/android/internal/util/State;

    #@2
    return-object v0
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

.method static synthetic -get2(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/NetworkRequest;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultRequest:Landroid/net/NetworkRequest;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDontDisplaySigninNotification:Z

    #@2
    return v0
.end method

.method static synthetic -get6(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;

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

.method static synthetic -get9(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLingerToken:I

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
    iput p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLingerToken:I

    #@2
    return p1
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

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 200
    const/16 v0, 0x7530

    #@2
    sput v0, Lcom/android/server/connectivity/NetworkMonitor;->DEFAULT_LINGER_DELAY_MS:I

    #@4
    .line 77
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
    const/4 v2, 0x0

    #@2
    const/4 v4, 0x0

    #@3
    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v3, "NetworkMonitor"

    #@b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {p3}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    #@1e
    .line 202
    iput v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLingerToken:I

    #@20
    .line 209
    iput v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    #@22
    .line 211
    const/4 v0, -0x1

    #@23
    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I

    #@25
    .line 226
    iput-boolean v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalCheckEnabled:Z

    #@27
    .line 229
    iput-boolean v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z

    #@29
    .line 231
    iput-boolean v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDontDisplaySigninNotification:Z

    #@2b
    .line 233
    iput-boolean v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    #@2d
    .line 235
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;

    #@2f
    invoke-direct {v0, p0, v4}, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$DefaultState;)V

    #@32
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    #@34
    .line 236
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;

    #@36
    invoke-direct {v0, p0, v4}, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;)V

    #@39
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;

    #@3b
    .line 237
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;

    #@3d
    invoke-direct {v0, p0, v4}, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;)V

    #@40
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    #@42
    .line 238
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;

    #@44
    invoke-direct {v0, p0, v4}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;)V

    #@47
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;

    #@49
    .line 239
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;

    #@4b
    invoke-direct {v0, p0, v4}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;)V

    #@4e
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;

    #@50
    .line 240
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;

    #@52
    invoke-direct {v0, p0, v4}, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$LingeringState;)V

    #@55
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLingeringState:Lcom/android/internal/util/State;

    #@57
    .line 242
    iput-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    #@59
    .line 244
    new-instance v0, Landroid/util/LocalLog;

    #@5b
    const/16 v3, 0x14

    #@5d
    invoke-direct {v0, v3}, Landroid/util/LocalLog;-><init>(I)V

    #@60
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->validationLogs:Landroid/util/LocalLog;

    #@62
    .line 251
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    #@64
    .line 252
    iput-object p2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;

    #@66
    .line 253
    iput-object p3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    #@68
    .line 254
    const-string/jumbo v0, "phone"

    #@6b
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6e
    move-result-object v0

    #@6f
    check-cast v0, Landroid/telephony/TelephonyManager;

    #@71
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@73
    .line 255
    const-string/jumbo v0, "wifi"

    #@76
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@79
    move-result-object v0

    #@7a
    check-cast v0, Landroid/net/wifi/WifiManager;

    #@7c
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    #@7e
    .line 256
    const-string/jumbo v0, "alarm"

    #@81
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@84
    move-result-object v0

    #@85
    check-cast v0, Landroid/app/AlarmManager;

    #@87
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    #@89
    .line 257
    iput-object p4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultRequest:Landroid/net/NetworkRequest;

    #@8b
    .line 259
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    #@8d
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;)V

    #@90
    .line 260
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;

    #@92
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    #@94
    invoke-virtual {p0, v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@97
    .line 261
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    #@99
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    #@9b
    invoke-virtual {p0, v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@9e
    .line 262
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;

    #@a0
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    #@a2
    invoke-virtual {p0, v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@a5
    .line 263
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;

    #@a7
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    #@a9
    invoke-virtual {p0, v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@ac
    .line 264
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLingeringState:Lcom/android/internal/util/State;

    #@ae
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    #@b0
    invoke-virtual {p0, v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@b3
    .line 265
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    #@b5
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->setInitialState(Lcom/android/internal/util/State;)V

    #@b8
    .line 267
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    #@ba
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@bd
    move-result-object v0

    #@be
    .line 268
    const-string/jumbo v3, "captive_portal_server"

    #@c1
    .line 267
    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@c4
    move-result-object v0

    #@c5
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mServer:Ljava/lang/String;

    #@c7
    .line 269
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mServer:Ljava/lang/String;

    #@c9
    if-nez v0, :cond_0

    #@cb
    const-string/jumbo v0, "connectivitycheck.gstatic.com"

    #@ce
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mServer:Ljava/lang/String;

    #@d0
    .line 271
    :cond_0
    const-string/jumbo v0, "persist.netmon.linger"

    #@d3
    sget v3, Lcom/android/server/connectivity/NetworkMonitor;->DEFAULT_LINGER_DELAY_MS:I

    #@d5
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@d8
    move-result v0

    #@d9
    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLingerDelayMs:I

    #@db
    .line 273
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    #@dd
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@e0
    move-result-object v0

    #@e1
    .line 274
    const-string/jumbo v3, "captive_portal_detection_enabled"

    #@e4
    .line 273
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@e7
    move-result v0

    #@e8
    if-ne v0, v1, :cond_1

    #@ea
    move v0, v1

    #@eb
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalCheckEnabled:Z

    #@ed
    .line 276
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor;->start()V

    #@f0
    .line 247
    return-void

    #@f1
    :cond_1
    move v0, v2

    #@f2
    .line 273
    goto :goto_0
.end method

.method public static SetDefaultLingerTime(I)V
    .locals 2
    .param p0, "time_ms"    # I

    #@0
    .prologue
    .line 825
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@3
    move-result v0

    #@4
    const/16 v1, 0x3e8

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 826
    new-instance v0, Ljava/lang/SecurityException;

    #@a
    const-string/jumbo v1, "SetDefaultLingerTime only for internal testing."

    #@d
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 828
    :cond_0
    sput p0, Lcom/android/server/connectivity/NetworkMonitor;->DEFAULT_LINGER_DELAY_MS:I

    #@13
    .line 824
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
    .line 749
    iget-object v12, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v12

    #@6
    .line 750
    const-string/jumbo v13, "wifi_scan_always_enabled"

    #@9
    const/4 v14, 0x0

    #@a
    .line 749
    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@d
    move-result v12

    #@e
    if-nez v12, :cond_0

    #@10
    .line 751
    return-void

    #@11
    .line 754
    :cond_0
    iget-boolean v12, p0, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    #@13
    if-nez v12, :cond_1

    #@15
    return-void

    #@16
    .line 756
    :cond_1
    new-instance v10, Landroid/content/Intent;

    #@18
    const-string/jumbo v12, "android.net.conn.NETWORK_CONDITIONS_MEASURED"

    #@1b
    invoke-direct {v10, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1e
    .line 757
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
    .line 808
    return-void

    #@2a
    .line 759
    :pswitch_0
    iget-object v12, p0, Lcom/android/server/connectivity/NetworkMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    #@2c
    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    #@2f
    move-result-object v8

    #@30
    .line 760
    .local v8, "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v8, :cond_4

    #@32
    .line 768
    const-string/jumbo v12, "extra_ssid"

    #@35
    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    #@38
    move-result-object v13

    #@39
    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@3c
    .line 769
    const-string/jumbo v12, "extra_bssid"

    #@3f
    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    #@42
    move-result-object v13

    #@43
    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@46
    .line 810
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
    .line 811
    const-string/jumbo v12, "extra_response_received"

    #@57
    move/from16 v0, p1

    #@59
    invoke-virtual {v10, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@5c
    .line 812
    const-string/jumbo v12, "extra_request_timestamp_ms"

    #@5f
    move-wide/from16 v0, p3

    #@61
    invoke-virtual {v10, v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    #@64
    .line 814
    if-eqz p1, :cond_3

    #@66
    .line 815
    const-string/jumbo v12, "extra_is_captive_portal"

    #@69
    move/from16 v0, p2

    #@6b
    invoke-virtual {v10, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@6e
    .line 816
    const-string/jumbo v12, "extra_response_timestamp_ms"

    #@71
    move-wide/from16 v0, p5

    #@73
    invoke-virtual {v10, v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    #@76
    .line 818
    :cond_3
    iget-object v12, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    #@78
    sget-object v13, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@7a
    .line 819
    const-string/jumbo v14, "android.permission.ACCESS_NETWORK_CONDITIONS"

    #@7d
    .line 818
    invoke-virtual {v12, v10, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    #@80
    .line 748
    return-void

    #@81
    .line 771
    .restart local v8    # "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_4
    const-string/jumbo v12, "network info is TYPE_WIFI but no ConnectionInfo found"

    #@84
    invoke-virtual {p0, v12}, Lcom/android/server/connectivity/NetworkMonitor;->logw(Ljava/lang/String;)V

    #@87
    .line 772
    return-void

    #@88
    .line 776
    .end local v8    # "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    :pswitch_1
    const-string/jumbo v12, "extra_network_type"

    #@8b
    iget-object v13, p0, Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@8d
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    #@90
    move-result v13

    #@91
    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@94
    .line 777
    iget-object v12, p0, Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@96
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    #@99
    move-result-object v9

    #@9a
    .line 778
    .local v9, "info":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    if-nez v9, :cond_5

    #@9c
    return-void

    #@9d
    .line 779
    :cond_5
    const/4 v11, 0x0

    #@9e
    .line 780
    .local v11, "numRegisteredCellInfo":I
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a1
    move-result-object v7

    #@a2
    .local v7, "cellInfo$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@a5
    move-result v12

    #@a6
    if-eqz v12, :cond_2

    #@a8
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ab
    move-result-object v6

    #@ac
    check-cast v6, Landroid/telephony/CellInfo;

    #@ae
    .line 781
    .local v6, "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v6}, Landroid/telephony/CellInfo;->isRegistered()Z

    #@b1
    move-result v12

    #@b2
    if-eqz v12, :cond_6

    #@b4
    .line 782
    add-int/lit8 v11, v11, 0x1

    #@b6
    .line 783
    const/4 v12, 0x1

    #@b7
    if-le v11, v12, :cond_7

    #@b9
    .line 784
    const-string/jumbo v12, "more than one registered CellInfo.  Can\'t tell which is active.  Bailing."

    #@bc
    invoke-virtual {p0, v12}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    #@bf
    .line 786
    return-void

    #@c0
    .line 788
    :cond_7
    instance-of v12, v6, Landroid/telephony/CellInfoCdma;

    #@c2
    if-eqz v12, :cond_8

    #@c4
    .line 789
    check-cast v6, Landroid/telephony/CellInfoCdma;

    #@c6
    .end local v6    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v6}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    #@c9
    move-result-object v2

    #@ca
    .line 790
    .local v2, "cellId":Landroid/telephony/CellIdentityCdma;
    const-string/jumbo v12, "extra_cellid"

    #@cd
    invoke-virtual {v10, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@d0
    goto :goto_0

    #@d1
    .line 791
    .end local v2    # "cellId":Landroid/telephony/CellIdentityCdma;
    .restart local v6    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_8
    instance-of v12, v6, Landroid/telephony/CellInfoGsm;

    #@d3
    if-eqz v12, :cond_9

    #@d5
    .line 792
    check-cast v6, Landroid/telephony/CellInfoGsm;

    #@d7
    .end local v6    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v6}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    #@da
    move-result-object v3

    #@db
    .line 793
    .local v3, "cellId":Landroid/telephony/CellIdentityGsm;
    const-string/jumbo v12, "extra_cellid"

    #@de
    invoke-virtual {v10, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@e1
    goto :goto_0

    #@e2
    .line 794
    .end local v3    # "cellId":Landroid/telephony/CellIdentityGsm;
    .restart local v6    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_9
    instance-of v12, v6, Landroid/telephony/CellInfoLte;

    #@e4
    if-eqz v12, :cond_a

    #@e6
    .line 795
    check-cast v6, Landroid/telephony/CellInfoLte;

    #@e8
    .end local v6    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v6}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    #@eb
    move-result-object v4

    #@ec
    .line 796
    .local v4, "cellId":Landroid/telephony/CellIdentityLte;
    const-string/jumbo v12, "extra_cellid"

    #@ef
    invoke-virtual {v10, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@f2
    goto :goto_0

    #@f3
    .line 797
    .end local v4    # "cellId":Landroid/telephony/CellIdentityLte;
    .restart local v6    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_a
    instance-of v12, v6, Landroid/telephony/CellInfoWcdma;

    #@f5
    if-eqz v12, :cond_b

    #@f7
    .line 798
    check-cast v6, Landroid/telephony/CellInfoWcdma;

    #@f9
    .end local v6    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v6}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    #@fc
    move-result-object v5

    #@fd
    .line 799
    .local v5, "cellId":Landroid/telephony/CellIdentityWcdma;
    const-string/jumbo v12, "extra_cellid"

    #@100
    invoke-virtual {v10, v12, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@103
    goto :goto_0

    #@104
    .line 801
    .end local v5    # "cellId":Landroid/telephony/CellIdentityWcdma;
    .restart local v6    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_b
    const-string/jumbo v12, "Registered cellinfo is unrecognized"

    #@107
    invoke-virtual {p0, v12}, Lcom/android/server/connectivity/NetworkMonitor;->logw(Ljava/lang/String;)V

    #@10a
    .line 802
    return-void

    #@10b
    .line 757
    nop

    #@10c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private validationLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 285
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    #@3
    .line 286
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->validationLogs:Landroid/util/LocalLog;

    #@5
    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@8
    .line 284
    return-void
.end method


# virtual methods
.method public getValidationLogs()Landroid/util/LocalLog$ReadOnlyLocalLog;
    .locals 1

    #@0
    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->validationLogs:Landroid/util/LocalLog;

    #@2
    invoke-virtual {v0}, Landroid/util/LocalLog;->readOnlyLocalLog()Landroid/util/LocalLog$ReadOnlyLocalLog;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected isCaptivePortal()I
    .locals 19

    #@0
    .prologue
    .line 638
    move-object/from16 v0, p0

    #@2
    iget-boolean v3, v0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalCheckEnabled:Z

    #@4
    if-nez v3, :cond_0

    #@6
    const/16 v3, 0xcc

    #@8
    return v3

    #@9
    .line 640
    :cond_0
    const/16 v18, 0x0

    #@b
    .line 641
    .local v18, "urlConnection":Ljava/net/HttpURLConnection;
    const/16 v15, 0x257

    #@d
    .line 643
    .local v15, "httpResponseCode":I
    :try_start_0
    new-instance v17, Ljava/net/URL;

    #@f
    const-string/jumbo v3, "http"

    #@12
    move-object/from16 v0, p0

    #@14
    iget-object v4, v0, Lcom/android/server/connectivity/NetworkMonitor;->mServer:Ljava/lang/String;

    #@16
    const-string/jumbo v5, "/generate_204"

    #@19
    move-object/from16 v0, v17

    #@1b
    invoke-direct {v0, v3, v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1e
    .line 660
    .local v17, "url":Ljava/net/URL;
    const/4 v13, 0x0

    #@1f
    .line 661
    .local v13, "fetchPac":Z
    move-object/from16 v0, p0

    #@21
    iget-object v3, v0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    #@23
    iget-object v3, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@25
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    #@28
    move-result-object v16

    #@29
    .line 662
    .local v16, "proxyInfo":Landroid/net/ProxyInfo;
    if-eqz v16, :cond_1

    #@2b
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #@2d
    invoke-virtual/range {v16 .. v16}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v3

    #@35
    if-eqz v3, :cond_5

    #@37
    .line 666
    :cond_1
    :goto_0
    new-instance v11, Ljava/lang/StringBuffer;

    #@39
    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    #@3c
    .line 667
    .local v11, "connectInfo":Ljava/lang/StringBuffer;
    const/4 v14, 0x0

    #@3d
    .line 670
    .local v14, "hostToResolve":Ljava/lang/String;
    if-eqz v16, :cond_2

    #@3f
    if-eqz v13, :cond_6

    #@41
    .line 671
    :cond_2
    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@44
    move-result-object v14

    #@45
    .line 675
    .end local v14    # "hostToResolve":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@48
    move-result v3

    #@49
    if-nez v3, :cond_7

    #@4b
    .line 676
    new-instance v3, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v4, ", "

    #@53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v3

    #@5b
    const-string/jumbo v4, "="

    #@5e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v3

    #@62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v3

    #@66
    invoke-virtual {v11, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@69
    .line 678
    move-object/from16 v0, p0

    #@6b
    iget-object v3, v0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    #@6d
    iget-object v3, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@6f
    invoke-virtual {v3, v14}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    #@72
    move-result-object v10

    #@73
    .line 679
    .local v10, "addresses":[Ljava/net/InetAddress;
    const/4 v3, 0x0

    #@74
    array-length v4, v10

    #@75
    :goto_2
    if-ge v3, v4, :cond_7

    #@77
    aget-object v2, v10, v3

    #@79
    .line 680
    .local v2, "address":Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@7c
    move-result-object v5

    #@7d
    invoke-virtual {v11, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@80
    .line 681
    array-length v5, v10

    #@81
    add-int/lit8 v5, v5, -0x1

    #@83
    aget-object v5, v10, v5

    #@85
    if-eq v2, v5, :cond_4

    #@87
    const-string/jumbo v5, ","

    #@8a
    invoke-virtual {v11, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@8d
    .line 679
    :cond_4
    add-int/lit8 v3, v3, 0x1

    #@8f
    goto :goto_2

    #@90
    .line 663
    .end local v2    # "address":Ljava/net/InetAddress;
    .end local v10    # "addresses":[Ljava/net/InetAddress;
    .end local v11    # "connectInfo":Ljava/lang/StringBuffer;
    :cond_5
    new-instance v17, Ljava/net/URL;

    #@92
    .end local v17    # "url":Ljava/net/URL;
    invoke-virtual/range {v16 .. v16}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    #@95
    move-result-object v3

    #@96
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@99
    move-result-object v3

    #@9a
    move-object/from16 v0, v17

    #@9c
    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@9f
    .line 664
    .restart local v17    # "url":Ljava/net/URL;
    const/4 v13, 0x1

    #@a0
    goto :goto_0

    #@a1
    .line 672
    .restart local v11    # "connectInfo":Ljava/lang/StringBuffer;
    .restart local v14    # "hostToResolve":Ljava/lang/String;
    :cond_6
    if-eqz v16, :cond_3

    #@a3
    .line 673
    invoke-virtual/range {v16 .. v16}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    #@a6
    move-result-object v14

    #@a7
    .local v14, "hostToResolve":Ljava/lang/String;
    goto :goto_1

    #@a8
    .line 684
    .end local v14    # "hostToResolve":Ljava/lang/String;
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    #@aa
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@ad
    const-string/jumbo v4, "Checking "

    #@b0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v3

    #@b4
    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->toString()Ljava/lang/String;

    #@b7
    move-result-object v4

    #@b8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v3

    #@bc
    const-string/jumbo v4, " on "

    #@bf
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v3

    #@c3
    .line 685
    move-object/from16 v0, p0

    #@c5
    iget-object v4, v0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    #@c7
    iget-object v4, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@c9
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    #@cc
    move-result-object v4

    #@cd
    .line 684
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v3

    #@d1
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v3

    #@d5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d8
    move-result-object v3

    #@d9
    move-object/from16 v0, p0

    #@db
    invoke-direct {v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    #@de
    .line 686
    move-object/from16 v0, p0

    #@e0
    iget-object v3, v0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    #@e2
    iget-object v3, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@e4
    move-object/from16 v0, v17

    #@e6
    invoke-virtual {v3, v0}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    #@e9
    move-result-object v3

    #@ea
    move-object v0, v3

    #@eb
    check-cast v0, Ljava/net/HttpURLConnection;

    #@ed
    move-object/from16 v18, v0

    #@ef
    .line 687
    .local v18, "urlConnection":Ljava/net/HttpURLConnection;
    move-object/from16 v0, v18

    #@f1
    invoke-virtual {v0, v13}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    #@f4
    .line 688
    const/16 v3, 0x2710

    #@f6
    move-object/from16 v0, v18

    #@f8
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    #@fb
    .line 689
    const/16 v3, 0x2710

    #@fd
    move-object/from16 v0, v18

    #@ff
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    #@102
    .line 690
    const/4 v3, 0x0

    #@103
    move-object/from16 v0, v18

    #@105
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    #@108
    .line 693
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@10b
    move-result-wide v6

    #@10c
    .line 695
    .local v6, "requestTimestamp":J
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    #@10f
    .line 698
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@112
    move-result-wide v8

    #@113
    .line 700
    .local v8, "responseTimestamp":J
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->getResponseCode()I

    #@116
    move-result v15

    #@117
    .line 701
    new-instance v3, Ljava/lang/StringBuilder;

    #@119
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11c
    const-string/jumbo v4, "isCaptivePortal: ret="

    #@11f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@122
    move-result-object v3

    #@123
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@126
    move-result-object v3

    #@127
    .line 702
    const-string/jumbo v4, " headers="

    #@12a
    .line 701
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12d
    move-result-object v3

    #@12e
    .line 702
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    #@131
    move-result-object v4

    #@132
    .line 701
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@135
    move-result-object v3

    #@136
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@139
    move-result-object v3

    #@13a
    move-object/from16 v0, p0

    #@13c
    invoke-direct {v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    #@13f
    .line 714
    const/16 v3, 0xc8

    #@141
    if-ne v15, v3, :cond_8

    #@143
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->getContentLength()I

    #@146
    move-result v3

    #@147
    if-nez v3, :cond_8

    #@149
    .line 715
    const-string/jumbo v3, "Empty 200 response interpreted as 204 response."

    #@14c
    move-object/from16 v0, p0

    #@14e
    invoke-direct {v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    #@151
    .line 716
    const/16 v15, 0xcc

    #@153
    .line 719
    :cond_8
    const/16 v3, 0xc8

    #@155
    if-ne v15, v3, :cond_9

    #@157
    if-eqz v13, :cond_9

    #@159
    .line 720
    const-string/jumbo v3, "PAC fetch 200 response interpreted as 204 response."

    #@15c
    move-object/from16 v0, p0

    #@15e
    invoke-direct {v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    #@161
    .line 721
    const/16 v15, 0xcc

    #@163
    .line 725
    :cond_9
    const/16 v3, 0xcc

    #@165
    if-eq v15, v3, :cond_b

    #@167
    const/4 v5, 0x1

    #@168
    .line 724
    :goto_3
    const/4 v4, 0x1

    #@169
    move-object/from16 v3, p0

    #@16b
    invoke-direct/range {v3 .. v9}, Lcom/android/server/connectivity/NetworkMonitor;->sendNetworkConditionsBroadcast(ZZJJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16e
    .line 733
    if-eqz v18, :cond_a

    #@170
    .line 734
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->disconnect()V

    #@173
    .line 737
    .end local v6    # "requestTimestamp":J
    .end local v8    # "responseTimestamp":J
    .end local v11    # "connectInfo":Ljava/lang/StringBuffer;
    .end local v13    # "fetchPac":Z
    .end local v16    # "proxyInfo":Landroid/net/ProxyInfo;
    .end local v17    # "url":Ljava/net/URL;
    .end local v18    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_a
    :goto_4
    return v15

    #@174
    .line 725
    .restart local v6    # "requestTimestamp":J
    .restart local v8    # "responseTimestamp":J
    .restart local v11    # "connectInfo":Ljava/lang/StringBuffer;
    .restart local v13    # "fetchPac":Z
    .restart local v16    # "proxyInfo":Landroid/net/ProxyInfo;
    .restart local v17    # "url":Ljava/net/URL;
    .restart local v18    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_b
    const/4 v5, 0x0

    #@175
    goto :goto_3

    #@176
    .line 727
    .end local v6    # "requestTimestamp":J
    .end local v8    # "responseTimestamp":J
    .end local v11    # "connectInfo":Ljava/lang/StringBuffer;
    .end local v13    # "fetchPac":Z
    .end local v16    # "proxyInfo":Landroid/net/ProxyInfo;
    .end local v17    # "url":Ljava/net/URL;
    .end local v18    # "urlConnection":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v12

    #@177
    .line 728
    .local v12, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@179
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17c
    const-string/jumbo v4, "Probably not a portal: exception "

    #@17f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@182
    move-result-object v3

    #@183
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@186
    move-result-object v3

    #@187
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18a
    move-result-object v3

    #@18b
    move-object/from16 v0, p0

    #@18d
    invoke-direct {v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@190
    .line 729
    const/16 v3, 0x257

    #@192
    if-ne v15, v3, :cond_c

    #@194
    .line 733
    :cond_c
    if-eqz v18, :cond_a

    #@196
    .line 734
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->disconnect()V

    #@199
    goto :goto_4

    #@19a
    .line 732
    .end local v12    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    #@19b
    .line 733
    if-eqz v18, :cond_d

    #@19d
    .line 734
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->disconnect()V

    #@1a0
    .line 732
    :cond_d
    throw v3
.end method

.method protected log(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "NetworkMonitor/"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    #@e
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 280
    return-void
.end method
