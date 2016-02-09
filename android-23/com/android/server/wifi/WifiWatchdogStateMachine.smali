.class public Lcom/android/server/wifi/WifiWatchdogStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x21000

.field private static final BSSID_STAT_CACHE_SIZE:I = 0x14

.field private static final BSSID_STAT_EMPTY_COUNT:I = 0x3

.field private static final BSSID_STAT_RANGE_HIGH_DBM:I = -0x2d

.field private static final BSSID_STAT_RANGE_LOW_DBM:I = -0x69

.field private static final CMD_RSSI_FETCH:I = 0x2100b

.field private static final DBG:Z = false

.field private static final EVENT_BSSID_CHANGE:I = 0x21007

.field private static final EVENT_NETWORK_STATE_CHANGE:I = 0x21002

.field private static final EVENT_RSSI_CHANGE:I = 0x21003

.field private static final EVENT_SCREEN_OFF:I = 0x21009

.field private static final EVENT_SCREEN_ON:I = 0x21008

.field private static final EVENT_SUPPLICANT_STATE_CHANGE:I = 0x21004

.field private static final EVENT_WATCHDOG_SETTINGS_CHANGE:I = 0x21006

.field private static final EVENT_WATCHDOG_TOGGLED:I = 0x21001

.field private static final EVENT_WIFI_RADIO_STATE_CHANGE:I = 0x21005

.field private static final EXP_COEFFICIENT_MONITOR:D = 0.5

.field private static final EXP_COEFFICIENT_RECORD:D = 0.1

.field static final GOOD_LINK_DETECTED:I = 0x21016

.field private static final GOOD_LINK_LOSS_THRESHOLD:D = 0.1

.field private static final GOOD_LINK_RSSI_RANGE_MAX:I = 0x14

.field private static final GOOD_LINK_RSSI_RANGE_MIN:I = 0x3

.field private static final GOOD_LINK_TARGET:[Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

.field private static final LINK_MONITOR_LEVEL_THRESHOLD:I = 0x4

.field private static final LINK_SAMPLING_INTERVAL_MS:J = 0x3e8L

.field private static final MAX_AVOID_TIME:[Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

.field static final POOR_LINK_DETECTED:I = 0x21015

.field private static final POOR_LINK_LOSS_THRESHOLD:D = 0.5

.field private static final POOR_LINK_MIN_VOLUME:D = 2.0

.field private static final POOR_LINK_SAMPLE_COUNT:I = 0x3

.field private static sPresetLoss:[D

.field private static sWifiOnly:Z


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBssidCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

.field private mCurrentLoss:Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

.field private mCurrentSignalLevel:I

.field private mDefaultState:Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsScreenOn:Z

.field private mLinkMonitoringState:Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNotConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;

.field private mOnlineState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;

.field private mOnlineWatchState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;

.field private mPoorNetworkDetectionEnabled:Z

.field private mRssiFetchToken:I

.field private mVerifyingLinkState:Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

.field private mWatchdogDisabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

.field private mWatchdogEnabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWsmChannel:Lcom/android/internal/util/AsyncChannel;


# direct methods
.method static synthetic -get0()[Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->GOOD_LINK_TARGET:[Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    #@2
    return-object v0
.end method

.method static synthetic -get1()[Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->MAX_AVOID_TIME:[Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    #@2
    return v0
.end method

.method static synthetic -get11(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I

    #@2
    return v0
.end method

.method static synthetic -get12(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    #@2
    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    #@2
    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@2
    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    #@2
    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    #@2
    return-object v0
.end method

.method static synthetic -get17()[D
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sPresetLoss:[D

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I

    #@2
    return v0
.end method

.method static synthetic -get5(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScreenOn:Z

    #@2
    return v0
.end method

.method static synthetic -get6(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkMonitoringState:Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mOnlineState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I

    #@2
    return p1
.end method

.method static synthetic -set2(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScreenOn:Z

    #@2
    return p1
.end method

.method static synthetic -set3(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    #@2
    return-object p1
.end method

.method static synthetic -set4(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I

    #@2
    return p1
.end method

.method static synthetic -set5(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@2
    return-object p1
.end method

.method static synthetic -set6([D)[D
    .locals 0

    #@0
    sput-object p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sPresetLoss:[D

    #@2
    return-object p0
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->isWatchdogEnabled()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/IState;
    .locals 1

    #@0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I
    .locals 1
    .param p1, "rssi"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->calculateSignalLevel(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)V
    .locals 0
    .param p1, "isGood"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p1, "bssid"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->updateCurrentBssid(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->updateSettings()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 10

    #@0
    .prologue
    const v9, 0x493e0

    #@3
    const/4 v8, 0x2

    #@4
    const/4 v7, 0x1

    #@5
    const/4 v6, 0x3

    #@6
    const/4 v5, 0x0

    #@7
    .line 235
    const/4 v0, 0x4

    #@8
    new-array v0, v0, [Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    #@a
    .line 237
    new-instance v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    #@c
    const v2, 0x1b7740

    #@f
    invoke-direct {v1, v5, v6, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;-><init>(III)V

    #@12
    aput-object v1, v0, v5

    #@14
    .line 238
    new-instance v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    #@16
    const/4 v2, 0x5

    #@17
    invoke-direct {v1, v6, v2, v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;-><init>(III)V

    #@1a
    aput-object v1, v0, v7

    #@1c
    .line 239
    new-instance v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    #@1e
    const/4 v2, 0x6

    #@1f
    const/16 v3, 0xa

    #@21
    const v4, 0xea60

    #@24
    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;-><init>(III)V

    #@27
    aput-object v1, v0, v8

    #@29
    .line 240
    new-instance v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    #@2b
    const/16 v2, 0x9

    #@2d
    const/16 v3, 0x1e

    #@2f
    invoke-direct {v1, v2, v3, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;-><init>(III)V

    #@32
    aput-object v1, v0, v6

    #@34
    .line 235
    sput-object v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->GOOD_LINK_TARGET:[Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    #@36
    .line 253
    new-array v0, v6, [Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    #@38
    .line 255
    new-instance v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    #@3a
    const v2, 0x1b7740

    #@3d
    const/16 v3, -0xc8

    #@3f
    invoke-direct {v1, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;-><init>(II)V

    #@42
    aput-object v1, v0, v5

    #@44
    .line 256
    new-instance v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    #@46
    const/16 v2, -0x46

    #@48
    invoke-direct {v1, v9, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;-><init>(II)V

    #@4b
    aput-object v1, v0, v7

    #@4d
    .line 257
    new-instance v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    #@4f
    const/16 v2, -0x37

    #@51
    invoke-direct {v1, v5, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;-><init>(II)V

    #@54
    aput-object v1, v0, v8

    #@56
    .line 253
    sput-object v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->MAX_AVOID_TIME:[Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    #@58
    .line 271
    sput-boolean v5, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z

    #@5a
    .line 77
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Messenger;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dstMessenger"    # Landroid/os/Messenger;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 306
    const-string/jumbo v0, "WifiWatchdogStateMachine"

    #@4
    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    #@7
    .line 266
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    #@9
    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    #@c
    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    #@e
    .line 276
    new-instance v0, Landroid/util/LruCache;

    #@10
    const/16 v1, 0x14

    #@12
    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    #@15
    .line 275
    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mBssidCache:Landroid/util/LruCache;

    #@17
    .line 277
    const/4 v0, 0x0

    #@18
    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I

    #@1a
    .line 281
    iput-boolean v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScreenOn:Z

    #@1c
    .line 285
    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;

    #@1e
    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    #@21
    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDefaultState:Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;

    #@23
    .line 286
    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    #@25
    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    #@28
    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    #@2a
    .line 287
    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    #@2c
    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    #@2f
    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    #@31
    .line 288
    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;

    #@33
    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    #@36
    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;

    #@38
    .line 289
    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    #@3a
    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    #@3d
    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    #@3f
    .line 290
    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;

    #@41
    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    #@44
    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;

    #@46
    .line 291
    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    #@48
    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    #@4b
    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    #@4d
    .line 292
    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    #@4f
    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    #@52
    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkMonitoringState:Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    #@54
    .line 293
    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;

    #@56
    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    #@59
    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mOnlineState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;

    #@5b
    .line 307
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    #@5d
    .line 308
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@60
    move-result-object v0

    #@61
    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    #@63
    .line 309
    const-string/jumbo v0, "wifi"

    #@66
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@69
    move-result-object v0

    #@6a
    check-cast v0, Landroid/net/wifi/WifiManager;

    #@6c
    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    #@6e
    .line 311
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    #@70
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    #@72
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    #@75
    move-result-object v2

    #@76
    invoke-virtual {v0, v1, v2, p2}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    #@79
    .line 313
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->setupNetworkReceiver()V

    #@7c
    .line 316
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->registerForSettingsChanges()V

    #@7f
    .line 317
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->registerForWatchdogToggle()V

    #@82
    .line 318
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDefaultState:Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;

    #@84
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;)V

    #@87
    .line 319
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    #@89
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDefaultState:Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;

    #@8b
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@8e
    .line 320
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    #@90
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDefaultState:Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;

    #@92
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@95
    .line 321
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;

    #@97
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    #@99
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@9c
    .line 322
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    #@9e
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    #@a0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@a3
    .line 323
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;

    #@a5
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    #@a7
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@aa
    .line 324
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    #@ac
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;

    #@ae
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@b1
    .line 325
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkMonitoringState:Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    #@b3
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;

    #@b5
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@b8
    .line 326
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mOnlineState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;

    #@ba
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;

    #@bc
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@bf
    .line 328
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->isWatchdogEnabled()Z

    #@c2
    move-result v0

    #@c3
    if-eqz v0, :cond_0

    #@c5
    .line 329
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;

    #@c7
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    #@ca
    .line 333
    :goto_0
    const/16 v0, 0x19

    #@cc
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->setLogRecSize(I)V

    #@cf
    .line 334
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->setLogOnlyTransitions(Z)V

    #@d2
    .line 335
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->updateSettings()V

    #@d5
    .line 305
    return-void

    #@d6
    .line 331
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    #@d8
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    #@db
    goto :goto_0
.end method

.method private calculateSignalLevel(I)I
    .locals 2
    .param p1, "rssi"    # I

    #@0
    .prologue
    .line 908
    const/4 v1, 0x5

    #@1
    invoke-static {p1, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    #@4
    move-result v0

    #@5
    .line 911
    .local v0, "signalLevel":I
    return v0
.end method

.method private static getSettingsGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 945
    if-eqz p2, :cond_0

    #@4
    move v0, v1

    #@5
    :goto_0
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@8
    move-result v0

    #@9
    if-ne v0, v1, :cond_1

    #@b
    :goto_1
    return v1

    #@c
    :cond_0
    move v0, v2

    #@d
    goto :goto_0

    #@e
    :cond_1
    move v1, v2

    #@f
    goto :goto_1
.end method

.method private isWatchdogEnabled()Z
    .locals 4

    #@0
    .prologue
    .line 430
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    #@2
    const-string/jumbo v2, "wifi_watchdog_on"

    #@5
    const/4 v3, 0x1

    #@6
    .line 429
    invoke-static {v1, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getSettingsGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    #@9
    move-result v0

    #@a
    .line 432
    .local v0, "ret":Z
    return v0
.end method

.method public static makeWifiWatchdogStateMachine(Landroid/content/Context;Landroid/os/Messenger;)Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dstMessenger"    # Landroid/os/Messenger;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 339
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v1

    #@6
    .line 342
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v5, "connectivity"

    #@9
    .line 341
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/net/ConnectivityManager;

    #@f
    .line 343
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    #@12
    move-result v5

    #@13
    if-nez v5, :cond_0

    #@15
    move v3, v4

    #@16
    :cond_0
    sput-boolean v3, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z

    #@18
    .line 348
    const-string/jumbo v3, "wifi_watchdog_on"

    #@1b
    invoke-static {v1, v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->putSettingsGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    #@1e
    .line 350
    new-instance v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@20
    invoke-direct {v2, p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;-><init>(Landroid/content/Context;Landroid/os/Messenger;)V

    #@23
    .line 351
    .local v2, "wwsm":Lcom/android/server/wifi/WifiWatchdogStateMachine;
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->start()V

    #@26
    .line 352
    return-object v2
.end method

.method private static putSettingsGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 961
    if-eqz p2, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@6
    move-result v0

    #@7
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method private registerForSettingsChanges()V
    .locals 4

    #@0
    .prologue
    .line 408
    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$3;

    #@2
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$3;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/os/Handler;)V

    #@9
    .line 415
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    #@b
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@e
    move-result-object v1

    #@f
    .line 416
    const-string/jumbo v2, "wifi_watchdog_poor_network_test_enabled"

    #@12
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@15
    move-result-object v2

    #@16
    .line 417
    const/4 v3, 0x0

    #@17
    .line 415
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@1a
    .line 407
    return-void
.end method

.method private registerForWatchdogToggle()V
    .locals 4

    #@0
    .prologue
    .line 392
    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$2;

    #@2
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$2;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/os/Handler;)V

    #@9
    .line 399
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    #@b
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@e
    move-result-object v1

    #@f
    .line 400
    const-string/jumbo v2, "wifi_watchdog_on"

    #@12
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@15
    move-result-object v2

    #@16
    .line 401
    const/4 v3, 0x0

    #@17
    .line 399
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@1a
    .line 391
    return-void
.end method

.method private sendLinkStatusNotification(Z)V
    .locals 4
    .param p1, "isGood"    # Z

    #@0
    .prologue
    .line 916
    if-eqz p1, :cond_1

    #@2
    .line 917
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    #@4
    const v1, 0x21016

    #@7
    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    #@a
    .line 918
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 919
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    #@10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@13
    move-result-wide v2

    #@14
    invoke-static {v0, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->-set1(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    #@17
    .line 914
    :cond_0
    :goto_0
    return-void

    #@18
    .line 923
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    #@1a
    const v1, 0x21015

    #@1d
    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    #@20
    .line 924
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    #@22
    if-eqz v0, :cond_2

    #@24
    .line 925
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    #@26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@29
    move-result-wide v2

    #@2a
    invoke-static {v0, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->-set2(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    #@2d
    .line 927
    :cond_2
    const-string/jumbo v0, "Poor link notification is sent"

    #@30
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    #@33
    goto :goto_0
.end method

.method private setupNetworkReceiver()V
    .locals 3

    #@0
    .prologue
    .line 356
    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;

    #@2
    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    #@5
    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@7
    .line 378
    new-instance v0, Landroid/content/IntentFilter;

    #@9
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@c
    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    #@e
    .line 379
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    #@10
    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    #@13
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@16
    .line 380
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    #@18
    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    #@1b
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1e
    .line 381
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    #@20
    const-string/jumbo v1, "android.net.wifi.RSSI_CHANGED"

    #@23
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@26
    .line 382
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    #@28
    const-string/jumbo v1, "android.net.wifi.supplicant.STATE_CHANGE"

    #@2b
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@2e
    .line 383
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    #@30
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    #@33
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@36
    .line 384
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    #@38
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    #@3b
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@3e
    .line 385
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    #@40
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@42
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    #@44
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@47
    .line 355
    return-void
.end method

.method private updateCurrentBssid(Ljava/lang/String;)V
    .locals 3
    .param p1, "bssid"    # Ljava/lang/String;

    #@0
    .prologue
    const v2, 0x21007

    #@3
    const/4 v1, 0x0

    #@4
    .line 884
    if-nez p1, :cond_1

    #@6
    .line 885
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    #@8
    if-nez v0, :cond_0

    #@a
    return-void

    #@b
    .line 886
    :cond_0
    iput-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    #@d
    .line 888
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    #@10
    .line 889
    return-void

    #@11
    .line 893
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    #@13
    if-eqz v0, :cond_2

    #@15
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    #@17
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->-get0(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_2

    #@21
    return-void

    #@22
    .line 896
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mBssidCache:Landroid/util/LruCache;

    #@24
    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    #@2a
    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    #@2c
    .line 897
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    #@2e
    if-nez v0, :cond_3

    #@30
    .line 898
    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    #@32
    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    #@35
    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    #@37
    .line 899
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mBssidCache:Landroid/util/LruCache;

    #@39
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    #@3b
    invoke-virtual {v0, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3e
    .line 904
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    #@41
    .line 880
    return-void
.end method

.method private updateSettings()V
    .locals 1

    #@0
    .prologue
    .line 439
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    #@3
    .line 435
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 421
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@3
    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, "mWifiInfo: ["

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    const-string/jumbo v1, "]"

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@23
    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v1, "mLinkProperties: ["

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    const-string/jumbo v1, "]"

    #@38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@43
    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v1, "mCurrentSignalLevel: ["

    #@4b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v0

    #@4f
    iget v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I

    #@51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54
    move-result-object v0

    #@55
    const-string/jumbo v1, "]"

    #@58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v0

    #@5c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v0

    #@60
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@63
    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v1, "mPoorNetworkDetectionEnabled: ["

    #@6b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v0

    #@6f
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    #@71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@74
    move-result-object v0

    #@75
    const-string/jumbo v1, "]"

    #@78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v0

    #@7c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v0

    #@80
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@83
    .line 420
    return-void
.end method
