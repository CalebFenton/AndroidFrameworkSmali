.class public Lcom/android/server/wifi/WifiConnectivityManager;
.super Ljava/lang/Object;
.source "WifiConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiConnectivityManager$1;,
        Lcom/android/server/wifi/WifiConnectivityManager$2;,
        Lcom/android/server/wifi/WifiConnectivityManager$3;,
        Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;,
        Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;,
        Lcom/android/server/wifi/WifiConnectivityManager$RestartSingleScanListener;,
        Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;
    }
.end annotation


# static fields
.field private static final CHANNEL_LIST_AGE_MS:I = 0x36ee80

.field private static final CONNECTED_PNO_SCAN_INTERVAL_MS:I = 0x27100

.field private static final DISCONNECTED_PNO_SCAN_INTERVAL_MS:I = 0x4e20

.field private static final ENABLE_BACKGROUND_SCAN:Z = false

.field private static final ENABLE_CONNECTED_PNO_SCAN:Z = false

.field private static final LOW_RSSI_NETWORK_RETRY_MAX_DELAY_MS:I = 0x13880

.field private static final LOW_RSSI_NETWORK_RETRY_START_DELAY_MS:I = 0x4e20

.field public static final MAX_CONNECTION_ATTEMPTS_RATE:I = 0x6

.field public static final MAX_CONNECTION_ATTEMPTS_TIME_INTERVAL_MS:I = 0x3a980

.field public static final MAX_PERIODIC_SCAN_INTERVAL_MS:I = 0x27100

.field private static final MAX_SCAN_RESTART_ALLOWED:I = 0x5

.field public static final PERIODIC_SCAN_INTERVAL_MS:I = 0x4e20

.field public static final PERIODIC_SCAN_TIMER_TAG:Ljava/lang/String; = "WifiConnectivityManager Schedule Periodic Scan Timer"

.field private static final RESET_TIME_STAMP:J = -0x8000000000000000L

.field public static final RESTART_CONNECTIVITY_SCAN_TIMER_TAG:Ljava/lang/String; = "WifiConnectivityManager Restart Scan"

.field private static final RESTART_SCAN_DELAY_MS:I = 0x7d0

.field public static final RESTART_SINGLE_SCAN_TIMER_TAG:Ljava/lang/String; = "WifiConnectivityManager Restart Single Scan"

.field private static final SCAN_IMMEDIATELY:Z = true

.field private static final SCAN_ON_SCHEDULE:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiConnectivityManager"

.field private static final WATCHDOG_INTERVAL_MS:I = 0x124f80

.field public static final WATCHDOG_TIMER_TAG:Ljava/lang/String; = "WifiConnectivityManager Schedule Watchdog Timer"

.field public static final WIFI_STATE_CONNECTED:I = 0x1

.field public static final WIFI_STATE_DISCONNECTED:I = 0x2

.field public static final WIFI_STATE_TRANSITIONING:I = 0x3

.field public static final WIFI_STATE_UNKNOWN:I


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mBand5GHzBonus:I

.field private final mClock:Lcom/android/server/wifi/Clock;

.field private final mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

.field private final mConnectionAttemptTimeStamps:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentConnectionBonus:I

.field private mDbg:Z

.field private final mEventHandler:Landroid/os/Handler;

.field private mInitialScoreMax:I

.field private mLastConnectionAttemptBssid:Ljava/lang/String;

.field private mLastPeriodicSingleScanTimeStamp:J

.field private final mLocalLog:Landroid/util/LocalLog;

.field private mMin24GHzRssi:I

.field private mMin5GHzRssi:I

.field private final mPeriodicScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;

.field private final mPeriodicScanTimerListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mPeriodicSingleScanInterval:I

.field private final mPnoScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

.field private final mQualifiedNetworkSelector:Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

.field private final mRestartScanListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mSameNetworkBonus:I

.field private mScanRestartCount:I

.field private final mScanner:Landroid/net/wifi/WifiScanner;

.field private mScreenOn:Z

.field private mSecureBonus:I

.field private mSingleScanRestartCount:I

.field private final mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field private mTotalConnectivityAttemptsRateLimited:I

.field private mUntrustedConnectionAllowed:Z

.field private final mWatchdogListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mWifiConnectivityManagerEnabled:Z

.field private mWifiEnabled:Z

.field private final mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private final mWifiLastResortWatchdog:Lcom/android/server/wifi/WifiLastResortWatchdog;

.field private final mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

.field private mWifiState:I


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiConnectivityManager;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mDbg:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiConnectivityManager;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanRestartCount:I

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/WifiConnectivityManager;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScreenOn:Z

    #@2
    return v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/WifiConnectivityManager;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mSingleScanRestartCount:I

    #@2
    return v0
.end method

.method static synthetic -get4(Lcom/android/server/wifi/WifiConnectivityManager;)Lcom/android/server/wifi/WifiMetrics;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/WifiConnectivityManager;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanRestartCount:I

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/server/wifi/WifiConnectivityManager;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mSingleScanRestartCount:I

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/util/List;Ljava/lang/String;)Z
    .locals 1
    .param p1, "scanDetails"    # Ljava/util/List;
    .param p2, "listenerName"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConnectivityManager;->handleScanResults(Ljava/util/List;Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "log"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/WifiConnectivityManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->periodicScanTimerHandler()V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/wifi/WifiConnectivityManager;I)V
    .locals 0
    .param p1, "msFromNow"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->scheduleDelayedConnectivityScan(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/wifi/WifiConnectivityManager;ZZ)V
    .locals 0
    .param p1, "isWatchdogTriggered"    # Z
    .param p2, "isFullBandScan"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConnectivityManager;->scheduleDelayedSingleScan(ZZ)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/wifi/WifiConnectivityManager;Z)V
    .locals 0
    .param p1, "scanImmediately"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectivityScan(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/wifi/WifiConnectivityManager;ZZ)V
    .locals 0
    .param p1, "isWatchdogTriggered"    # Z
    .param p2, "isFullBandScan"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConnectivityManager;->startSingleScan(ZZ)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/wifi/WifiConnectivityManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->watchdogHandler()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiScanner;Lcom/android/server/wifi/WifiConfigManager;Landroid/net/wifi/WifiInfo;Lcom/android/server/wifi/WifiQualifiedNetworkSelector;Lcom/android/server/wifi/WifiInjector;Landroid/os/Looper;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stateMachine"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p3, "scanner"    # Landroid/net/wifi/WifiScanner;
    .param p4, "configManager"    # Lcom/android/server/wifi/WifiConfigManager;
    .param p5, "wifiInfo"    # Landroid/net/wifi/WifiInfo;
    .param p6, "qualifiedNetworkSelector"    # Lcom/android/server/wifi/WifiQualifiedNetworkSelector;
    .param p7, "wifiInjector"    # Lcom/android/server/wifi/WifiInjector;
    .param p8, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 135
    new-instance v1, Landroid/util/LocalLog;

    #@7
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    const/16 v0, 0x100

    #@f
    :goto_0
    invoke-direct {v1, v0}, Landroid/util/LocalLog;-><init>(I)V

    #@12
    .line 134
    iput-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLocalLog:Landroid/util/LocalLog;

    #@14
    .line 138
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mDbg:Z

    #@16
    .line 139
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiEnabled:Z

    #@18
    .line 140
    const/4 v0, 0x1

    #@19
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiConnectivityManagerEnabled:Z

    #@1b
    .line 141
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScreenOn:Z

    #@1d
    .line 142
    iput v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    #@1f
    .line 143
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mUntrustedConnectionAllowed:Z

    #@21
    .line 144
    iput v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanRestartCount:I

    #@23
    .line 145
    iput v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mSingleScanRestartCount:I

    #@25
    .line 146
    iput v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mTotalConnectivityAttemptsRateLimited:I

    #@27
    .line 147
    iput-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastConnectionAttemptBssid:Ljava/lang/String;

    #@29
    .line 148
    const/16 v0, 0x4e20

    #@2b
    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    #@2d
    .line 149
    const-wide/high16 v0, -0x8000000000000000L

    #@2f
    iput-wide v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastPeriodicSingleScanTimeStamp:J

    #@31
    .line 169
    new-instance v0, Lcom/android/server/wifi/WifiConnectivityManager$1;

    #@33
    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiConnectivityManager$1;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;)V

    #@36
    .line 168
    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mRestartScanListener:Landroid/app/AlarmManager$OnAlarmListener;

    #@38
    .line 195
    new-instance v0, Lcom/android/server/wifi/WifiConnectivityManager$2;

    #@3a
    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiConnectivityManager$2;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;)V

    #@3d
    .line 194
    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWatchdogListener:Landroid/app/AlarmManager$OnAlarmListener;

    #@3f
    .line 204
    new-instance v0, Lcom/android/server/wifi/WifiConnectivityManager$3;

    #@41
    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiConnectivityManager$3;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;)V

    #@44
    .line 203
    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicScanTimerListener:Landroid/app/AlarmManager$OnAlarmListener;

    #@46
    .line 294
    new-instance v0, Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;

    #@48
    invoke-direct {v0, p0, v3}, Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;)V

    #@4b
    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;

    #@4d
    .line 470
    new-instance v0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

    #@4f
    invoke-direct {v0, p0, v3}, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;)V

    #@52
    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

    #@54
    .line 479
    iput-object p2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@56
    .line 480
    iput-object p3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanner:Landroid/net/wifi/WifiScanner;

    #@58
    .line 481
    iput-object p4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@5a
    .line 482
    iput-object p5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@5c
    .line 483
    iput-object p6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mQualifiedNetworkSelector:Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

    #@5e
    .line 484
    invoke-virtual {p7}, Lcom/android/server/wifi/WifiInjector;->getWifiLastResortWatchdog()Lcom/android/server/wifi/WifiLastResortWatchdog;

    #@61
    move-result-object v0

    #@62
    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiLastResortWatchdog:Lcom/android/server/wifi/WifiLastResortWatchdog;

    #@64
    .line 485
    invoke-virtual {p7}, Lcom/android/server/wifi/WifiInjector;->getWifiMetrics()Lcom/android/server/wifi/WifiMetrics;

    #@67
    move-result-object v0

    #@68
    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    #@6a
    .line 486
    const-string/jumbo v0, "alarm"

    #@6d
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@70
    move-result-object v0

    #@71
    check-cast v0, Landroid/app/AlarmManager;

    #@73
    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mAlarmManager:Landroid/app/AlarmManager;

    #@75
    .line 487
    new-instance v0, Landroid/os/Handler;

    #@77
    invoke-direct {v0, p8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@7a
    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mEventHandler:Landroid/os/Handler;

    #@7c
    .line 488
    invoke-virtual {p7}, Lcom/android/server/wifi/WifiInjector;->getClock()Lcom/android/server/wifi/Clock;

    #@7f
    move-result-object v0

    #@80
    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    #@82
    .line 489
    new-instance v0, Ljava/util/LinkedList;

    #@84
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@87
    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectionAttemptTimeStamps:Ljava/util/LinkedList;

    #@89
    .line 491
    const/16 v0, -0x52

    #@8b
    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMin5GHzRssi:I

    #@8d
    .line 492
    const/16 v0, -0x55

    #@8f
    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMin24GHzRssi:I

    #@91
    .line 493
    const/16 v0, 0x28

    #@93
    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mBand5GHzBonus:I

    #@95
    .line 494
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@97
    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentNetworkBoost:Ljava/util/concurrent/atomic/AtomicInteger;

    #@99
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@9c
    move-result v0

    #@9d
    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mCurrentConnectionBonus:I

    #@9f
    .line 495
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@a2
    move-result-object v0

    #@a3
    .line 496
    const v1, 0x10e0018

    #@a6
    .line 495
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@a9
    move-result v0

    #@aa
    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mSameNetworkBonus:I

    #@ac
    .line 497
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@af
    move-result-object v0

    #@b0
    .line 498
    const v1, 0x10e001b

    #@b3
    .line 497
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@b6
    move-result v0

    #@b7
    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mSecureBonus:I

    #@b9
    .line 499
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@bb
    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdSaturatedRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    #@bd
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@c0
    move-result v0

    #@c1
    add-int/lit8 v0, v0, 0x55

    #@c3
    mul-int/lit8 v0, v0, 0x4

    #@c5
    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mInitialScoreMax:I

    #@c7
    .line 503
    const-string/jumbo v0, "WifiConnectivityManager"

    #@ca
    new-instance v1, Ljava/lang/StringBuilder;

    #@cc
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@cf
    const-string/jumbo v2, "PNO settings: min5GHzRssi "

    #@d2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v1

    #@d6
    iget v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMin5GHzRssi:I

    #@d8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@db
    move-result-object v1

    #@dc
    .line 504
    const-string/jumbo v2, " min24GHzRssi "

    #@df
    .line 503
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v1

    #@e3
    .line 504
    iget v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMin24GHzRssi:I

    #@e5
    .line 503
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v1

    #@e9
    .line 505
    const-string/jumbo v2, " currentConnectionBonus "

    #@ec
    .line 503
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v1

    #@f0
    .line 505
    iget v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mCurrentConnectionBonus:I

    #@f2
    .line 503
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v1

    #@f6
    .line 506
    const-string/jumbo v2, " sameNetworkBonus "

    #@f9
    .line 503
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v1

    #@fd
    .line 506
    iget v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mSameNetworkBonus:I

    #@ff
    .line 503
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@102
    move-result-object v1

    #@103
    .line 507
    const-string/jumbo v2, " secureNetworkBonus "

    #@106
    .line 503
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    move-result-object v1

    #@10a
    .line 507
    iget v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mSecureBonus:I

    #@10c
    .line 503
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v1

    #@110
    .line 508
    const-string/jumbo v2, " initialScoreMax "

    #@113
    .line 503
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@116
    move-result-object v1

    #@117
    .line 508
    iget v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mInitialScoreMax:I

    #@119
    .line 503
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v1

    #@11d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@120
    move-result-object v1

    #@121
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@124
    .line 510
    const-string/jumbo v0, "WifiConnectivityManager"

    #@127
    const-string/jumbo v1, "ConnectivityScanManager initialized "

    #@12a
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@12d
    .line 478
    return-void

    #@12e
    .line 135
    :cond_0
    const/16 v0, 0x400

    #@130
    goto/16 :goto_0
.end method

.method private clearConnectionAttemptTimeStamps()V
    .locals 1

    #@0
    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectionAttemptTimeStamps:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    #@5
    .line 546
    return-void
.end method

.method private connectToNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .locals 9
    .param p1, "candidate"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    .line 557
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@3
    move-result-object v6

    #@4
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    #@7
    move-result-object v3

    #@8
    .line 558
    .local v3, "scanResultCandidate":Landroid/net/wifi/ScanResult;
    if-nez v3, :cond_0

    #@a
    .line 559
    const-string/jumbo v6, "WifiConnectivityManager"

    #@d
    new-instance v7, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v8, "connectToNetwork: bad candidate - "

    #@15
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v7

    #@19
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v7

    #@1d
    .line 560
    const-string/jumbo v8, " scanResult: "

    #@20
    .line 559
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v7

    #@24
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v7

    #@28
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v7

    #@2c
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 561
    return-void

    #@30
    .line 564
    :cond_0
    iget-object v5, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@32
    .line 565
    .local v5, "targetBssid":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@39
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v6

    #@3d
    const-string/jumbo v7, " : "

    #@40
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v6

    #@44
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v6

    #@48
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v4

    #@4c
    .line 571
    .local v4, "targetAssociationId":Ljava/lang/String;
    if-eqz v5, :cond_2

    #@4e
    .line 572
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastConnectionAttemptBssid:Ljava/lang/String;

    #@50
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@53
    move-result v6

    #@54
    if-nez v6, :cond_1

    #@56
    .line 573
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@58
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    #@5b
    move-result-object v6

    #@5c
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5f
    move-result v6

    #@60
    .line 571
    if-eqz v6, :cond_2

    #@62
    .line 574
    :cond_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@64
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    #@67
    move-result-object v6

    #@68
    invoke-static {v6}, Landroid/net/wifi/SupplicantState;->isConnecting(Landroid/net/wifi/SupplicantState;)Z

    #@6b
    move-result v6

    #@6c
    .line 571
    if-eqz v6, :cond_2

    #@6e
    .line 575
    new-instance v6, Ljava/lang/StringBuilder;

    #@70
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    const-string/jumbo v7, "connectToNetwork: Either already connected or is connecting to "

    #@76
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v6

    #@7a
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v6

    #@7e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v6

    #@82
    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    #@85
    .line 577
    return-void

    #@86
    .line 580
    :cond_2
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    #@88
    invoke-virtual {v6}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    #@8b
    move-result-wide v6

    #@8c
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@8f
    move-result-object v2

    #@90
    .line 581
    .local v2, "elapsedTimeMillis":Ljava/lang/Long;
    iget-boolean v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScreenOn:Z

    #@92
    if-nez v6, :cond_3

    #@94
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->shouldSkipConnectionAttempt(Ljava/lang/Long;)Z

    #@97
    move-result v6

    #@98
    if-eqz v6, :cond_3

    #@9a
    .line 582
    const-string/jumbo v6, "connectToNetwork: Too many connection attempts. Skipping this attempt!"

    #@9d
    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    #@a0
    .line 583
    iget v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mTotalConnectivityAttemptsRateLimited:I

    #@a2
    add-int/lit8 v6, v6, 0x1

    #@a4
    iput v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mTotalConnectivityAttemptsRateLimited:I

    #@a6
    .line 584
    return-void

    #@a7
    .line 586
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->noteConnectionAttempt(Ljava/lang/Long;)V

    #@aa
    .line 588
    iput-object v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastConnectionAttemptBssid:Ljava/lang/String;

    #@ac
    .line 590
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@ae
    .line 591
    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@b0
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    #@b3
    move-result v7

    #@b4
    .line 590
    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@b7
    move-result-object v1

    #@b8
    .line 592
    .local v1, "currentConnectedNetwork":Landroid/net/wifi/WifiConfiguration;
    if-nez v1, :cond_5

    #@ba
    const-string/jumbo v0, "Disconnected"

    #@bd
    .line 595
    .local v0, "currentAssociationId":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_6

    #@bf
    .line 596
    iget v6, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@c1
    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@c3
    if-eq v6, v7, :cond_4

    #@c5
    .line 597
    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiConfiguration;->isLinked(Landroid/net/wifi/WifiConfiguration;)Z

    #@c8
    move-result v6

    #@c9
    .line 595
    if-eqz v6, :cond_6

    #@cb
    .line 598
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    #@cd
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@d0
    const-string/jumbo v7, "connectToNetwork: Roaming from "

    #@d3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v6

    #@d7
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v6

    #@db
    const-string/jumbo v7, " to "

    #@de
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v6

    #@e2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v6

    #@e6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e9
    move-result-object v6

    #@ea
    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    #@ed
    .line 600
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@ef
    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@f1
    invoke-virtual {v6, v7, v3}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamToNetwork(ILandroid/net/wifi/ScanResult;)V

    #@f4
    .line 556
    :goto_1
    return-void

    #@f5
    .line 593
    .end local v0    # "currentAssociationId":Ljava/lang/String;
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    #@f7
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@fa
    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@fc
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    #@ff
    move-result-object v7

    #@100
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v6

    #@104
    const-string/jumbo v7, " : "

    #@107
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v6

    #@10b
    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@10d
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    #@110
    move-result-object v7

    #@111
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@114
    move-result-object v6

    #@115
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@118
    move-result-object v0

    #@119
    .restart local v0    # "currentAssociationId":Ljava/lang/String;
    goto :goto_0

    #@11a
    .line 602
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    #@11c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@11f
    const-string/jumbo v7, "connectToNetwork: Reconnect from "

    #@122
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v6

    #@126
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@129
    move-result-object v6

    #@12a
    const-string/jumbo v7, " to "

    #@12d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@130
    move-result-object v6

    #@131
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@134
    move-result-object v6

    #@135
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@138
    move-result-object v6

    #@139
    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    #@13c
    .line 604
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@13e
    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@140
    iget-object v8, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@142
    invoke-virtual {v6, v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->autoConnectToNetwork(ILjava/lang/String;)V

    #@145
    goto :goto_1
.end method

.method private getScanBand()I
    .locals 1

    #@0
    .prologue
    .line 610
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->getScanBand(Z)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method private getScanBand(Z)I
    .locals 3
    .param p1, "isFullBandScan"    # Z

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 614
    if-eqz p1, :cond_2

    #@3
    .line 615
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->getFrequencyBand()I

    #@8
    move-result v0

    #@9
    .line 616
    .local v0, "freqBand":I
    if-ne v0, v2, :cond_0

    #@b
    .line 617
    const/4 v1, 0x6

    #@c
    return v1

    #@d
    .line 618
    :cond_0
    const/4 v1, 0x2

    #@e
    if-ne v0, v1, :cond_1

    #@10
    .line 619
    return v2

    #@11
    .line 621
    :cond_1
    const/4 v1, 0x7

    #@12
    return v1

    #@13
    .line 625
    .end local v0    # "freqBand":I
    :cond_2
    const/4 v1, 0x0

    #@14
    return v1
.end method

.method private handleScanResults(Ljava/util/List;Ljava/lang/String;)Z
    .locals 9
    .param p2, "listenerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "scanDetails":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    const/4 v1, 0x0

    #@1
    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9
    move-result-object v0

    #@a
    const-string/jumbo v2, " onResults: start QNS"

    #@d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    #@18
    .line 221
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mQualifiedNetworkSelector:Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

    #@1a
    .line 222
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mUntrustedConnectionAllowed:Z

    #@1c
    .line 223
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@1e
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->isLinkDebouncing()Z

    #@21
    move-result v4

    #@22
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@24
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->isConnected()Z

    #@27
    move-result v5

    #@28
    .line 224
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@2a
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->isDisconnected()Z

    #@2d
    move-result v6

    #@2e
    .line 225
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@30
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->isSupplicantTransientState()Z

    #@33
    move-result v7

    #@34
    move-object v3, p1

    #@35
    .line 221
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->selectQualifiedNetwork(ZZLjava/util/List;ZZZZ)Landroid/net/wifi/WifiConfiguration;

    #@38
    move-result-object v8

    #@39
    .line 226
    .local v8, "candidate":Landroid/net/wifi/WifiConfiguration;
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiLastResortWatchdog:Lcom/android/server/wifi/WifiLastResortWatchdog;

    #@3b
    .line 227
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mQualifiedNetworkSelector:Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

    #@3d
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->getFilteredScanDetails()Ljava/util/List;

    #@40
    move-result-object v2

    #@41
    .line 226
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiLastResortWatchdog;->updateAvailableNetworks(Ljava/util/List;)V

    #@44
    .line 228
    if-eqz v8, :cond_0

    #@46
    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v0

    #@4f
    const-string/jumbo v1, ": QNS candidate-"

    #@52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v0

    #@56
    iget-object v1, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v0

    #@5c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v0

    #@60
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    #@63
    .line 230
    invoke-direct {p0, v8}, Lcom/android/server/wifi/WifiConnectivityManager;->connectToNetwork(Landroid/net/wifi/WifiConfiguration;)V

    #@66
    .line 231
    const/4 v0, 0x1

    #@67
    return v0

    #@68
    .line 233
    :cond_0
    return v1
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    #@0
    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLocalLog:Landroid/util/LocalLog;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@5
    .line 162
    return-void
.end method

.method private noteConnectionAttempt(Ljava/lang/Long;)V
    .locals 1
    .param p1, "timeMillis"    # Ljava/lang/Long;

    #@0
    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectionAttemptTimeStamps:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    #@5
    .line 538
    return-void
.end method

.method private periodicScanTimerHandler()V
    .locals 1

    #@0
    .prologue
    .line 715
    const-string/jumbo v0, "periodicScanTimerHandler"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    #@6
    .line 718
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScreenOn:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 719
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->startPeriodicSingleScan()V

    #@d
    .line 714
    :cond_0
    return-void
.end method

.method private resetLastPeriodicSingleScanTimeStamp()V
    .locals 2

    #@0
    .prologue
    .line 710
    const-wide/high16 v0, -0x8000000000000000L

    #@2
    iput-wide v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastPeriodicSingleScanTimeStamp:J

    #@4
    .line 709
    return-void
.end method

.method private scheduleDelayedConnectivityScan(I)V
    .locals 7
    .param p1, "msFromNow"    # I

    #@0
    .prologue
    .line 898
    const-string/jumbo v0, "scheduleDelayedConnectivityScan"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    #@6
    .line 900
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mAlarmManager:Landroid/app/AlarmManager;

    #@8
    .line 901
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    #@a
    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    #@d
    move-result-wide v2

    #@e
    int-to-long v4, p1

    #@f
    add-long/2addr v2, v4

    #@10
    .line 902
    const-string/jumbo v4, "WifiConnectivityManager Restart Scan"

    #@13
    .line 903
    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mRestartScanListener:Landroid/app/AlarmManager$OnAlarmListener;

    #@15
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mEventHandler:Landroid/os/Handler;

    #@17
    .line 900
    const/4 v1, 0x2

    #@18
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    #@1b
    .line 897
    return-void
.end method

.method private scheduleDelayedSingleScan(ZZ)V
    .locals 8
    .param p1, "isWatchdogTriggered"    # Z
    .param p2, "isFullBandScan"    # Z

    #@0
    .prologue
    .line 886
    const-string/jumbo v0, "scheduleDelayedSingleScan"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    #@6
    .line 889
    new-instance v5, Lcom/android/server/wifi/WifiConnectivityManager$RestartSingleScanListener;

    #@8
    invoke-direct {v5, p0, p1, p2}, Lcom/android/server/wifi/WifiConnectivityManager$RestartSingleScanListener;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;ZZ)V

    #@b
    .line 890
    .local v5, "restartSingleScanListener":Lcom/android/server/wifi/WifiConnectivityManager$RestartSingleScanListener;
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mAlarmManager:Landroid/app/AlarmManager;

    #@d
    .line 891
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    #@f
    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    #@12
    move-result-wide v2

    #@13
    const-wide/16 v6, 0x7d0

    #@15
    add-long/2addr v2, v6

    #@16
    .line 892
    const-string/jumbo v4, "WifiConnectivityManager Restart Single Scan"

    #@19
    .line 893
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mEventHandler:Landroid/os/Handler;

    #@1b
    .line 890
    const/4 v1, 0x2

    #@1c
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    #@1f
    .line 885
    return-void
.end method

.method private schedulePeriodicScanTimer(I)V
    .locals 7
    .param p1, "intervalMs"    # I

    #@0
    .prologue
    .line 878
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mAlarmManager:Landroid/app/AlarmManager;

    #@2
    .line 879
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    #@4
    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    #@7
    move-result-wide v2

    #@8
    int-to-long v4, p1

    #@9
    add-long/2addr v2, v4

    #@a
    .line 880
    const-string/jumbo v4, "WifiConnectivityManager Schedule Periodic Scan Timer"

    #@d
    .line 881
    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicScanTimerListener:Landroid/app/AlarmManager$OnAlarmListener;

    #@f
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mEventHandler:Landroid/os/Handler;

    #@11
    .line 878
    const/4 v1, 0x2

    #@12
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    #@15
    .line 877
    return-void
.end method

.method private scheduleWatchdogTimer()V
    .locals 7

    #@0
    .prologue
    .line 868
    const-string/jumbo v0, "WifiConnectivityManager"

    #@3
    const-string/jumbo v1, "scheduleWatchdogTimer"

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 870
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mAlarmManager:Landroid/app/AlarmManager;

    #@b
    .line 871
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    #@d
    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    #@10
    move-result-wide v2

    #@11
    const-wide/32 v4, 0x124f80

    #@14
    add-long/2addr v2, v4

    #@15
    .line 872
    const-string/jumbo v4, "WifiConnectivityManager Schedule Watchdog Timer"

    #@18
    .line 873
    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWatchdogListener:Landroid/app/AlarmManager$OnAlarmListener;

    #@1a
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mEventHandler:Landroid/os/Handler;

    #@1c
    .line 870
    const/4 v1, 0x2

    #@1d
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    #@20
    .line 867
    return-void
.end method

.method private setScanChannels(Landroid/net/wifi/WifiScanner$ScanSettings;)Z
    .locals 9
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 632
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@3
    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@6
    move-result-object v0

    #@7
    .line 634
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    #@9
    .line 635
    return v8

    #@a
    .line 638
    :cond_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@c
    const v7, 0x36ee80

    #@f
    invoke-virtual {v6, v0, v7}, Lcom/android/server/wifi/WifiConfigManager;->makeChannelList(Landroid/net/wifi/WifiConfiguration;I)Ljava/util/HashSet;

    #@12
    move-result-object v3

    #@13
    .line 640
    .local v3, "freqs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    if-eqz v3, :cond_2

    #@15
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    #@18
    move-result v6

    #@19
    if-eqz v6, :cond_2

    #@1b
    .line 641
    const/4 v4, 0x0

    #@1c
    .line 642
    .local v4, "index":I
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    #@1f
    move-result v6

    #@20
    new-array v6, v6, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@22
    iput-object v6, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@24
    .line 643
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@27
    move-result-object v2

    #@28
    .local v2, "freq$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@2b
    move-result v6

    #@2c
    if-eqz v6, :cond_1

    #@2e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@31
    move-result-object v1

    #@32
    check-cast v1, Ljava/lang/Integer;

    #@34
    .line 644
    .local v1, "freq":Ljava/lang/Integer;
    iget-object v6, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@36
    add-int/lit8 v5, v4, 0x1

    #@38
    .end local v4    # "index":I
    .local v5, "index":I
    new-instance v7, Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@3a
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@3d
    move-result v8

    #@3e
    invoke-direct {v7, v8}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    #@41
    aput-object v7, v6, v4

    #@43
    move v4, v5

    #@44
    .end local v5    # "index":I
    .restart local v4    # "index":I
    goto :goto_0

    #@45
    .line 646
    .end local v1    # "freq":Ljava/lang/Integer;
    :cond_1
    const/4 v6, 0x1

    #@46
    return v6

    #@47
    .line 648
    .end local v2    # "freq$iterator":Ljava/util/Iterator;
    .end local v4    # "index":I
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v7, "No scan channels for "

    #@4f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v6

    #@53
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@56
    move-result-object v7

    #@57
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v6

    #@5b
    const-string/jumbo v7, ". Perform full band scan"

    #@5e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v6

    #@62
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v6

    #@66
    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    #@69
    .line 649
    return v8
.end method

.method private shouldSkipConnectionAttempt(Ljava/lang/Long;)Z
    .locals 6
    .param p1, "timeMillis"    # Ljava/lang/Long;

    #@0
    .prologue
    .line 519
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectionAttemptTimeStamps:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    .line 521
    .local v0, "attemptIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 522
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Ljava/lang/Long;

    #@12
    .line 523
    .local v1, "connectionAttemptTimeMillis":Ljava/lang/Long;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    #@15
    move-result-wide v2

    #@16
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    #@19
    move-result-wide v4

    #@1a
    sub-long/2addr v2, v4

    #@1b
    .line 524
    const-wide/32 v4, 0x3a980

    #@1e
    .line 523
    cmp-long v2, v2, v4

    #@20
    if-lez v2, :cond_0

    #@22
    .line 525
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@25
    goto :goto_0

    #@26
    .line 532
    .end local v1    # "connectionAttemptTimeMillis":Ljava/lang/Long;
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectionAttemptTimeStamps:Ljava/util/LinkedList;

    #@28
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    #@2b
    move-result v2

    #@2c
    const/4 v3, 0x6

    #@2d
    if-lt v2, v3, :cond_1

    #@2f
    const/4 v2, 0x1

    #@30
    :goto_1
    return v2

    #@31
    :cond_1
    const/4 v2, 0x0

    #@32
    goto :goto_1
.end method

.method private startConnectedPnoScan()V
    .locals 0

    #@0
    .prologue
    .line 827
    return-void
.end method

.method private startConnectivityScan(Z)V
    .locals 3
    .param p1, "scanImmediately"    # Z

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 910
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v1, "startConnectivityScan: screenOn="

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScreenOn:Z

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    .line 911
    const-string/jumbo v1, " wifiState="

    #@16
    .line 910
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    .line 911
    iget v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    #@1c
    .line 910
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    .line 912
    const-string/jumbo v1, " scanImmediately="

    #@23
    .line 910
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    .line 913
    const-string/jumbo v1, " wifiEnabled="

    #@2e
    .line 910
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    .line 913
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiEnabled:Z

    #@34
    .line 910
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    .line 914
    const-string/jumbo v1, " wifiConnectivityManagerEnabled="

    #@3b
    .line 910
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    .line 915
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiConnectivityManagerEnabled:Z

    #@41
    .line 910
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v0

    #@49
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    #@4c
    .line 917
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiEnabled:Z

    #@4e
    if-eqz v0, :cond_0

    #@50
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiConnectivityManagerEnabled:Z

    #@52
    if-eqz v0, :cond_0

    #@54
    .line 922
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->stopConnectivityScan()V

    #@57
    .line 926
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    #@59
    if-eq v0, v2, :cond_1

    #@5b
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    #@5d
    const/4 v1, 0x2

    #@5e
    if-eq v0, v1, :cond_1

    #@60
    .line 927
    return-void

    #@61
    .line 918
    :cond_0
    return-void

    #@62
    .line 930
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScreenOn:Z

    #@64
    if-eqz v0, :cond_2

    #@66
    .line 931
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->startPeriodicScan(Z)V

    #@69
    .line 909
    :goto_0
    return-void

    #@6a
    .line 933
    :cond_2
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    #@6c
    if-ne v0, v2, :cond_3

    #@6e
    .line 934
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectedPnoScan()V

    #@71
    goto :goto_0

    #@72
    .line 936
    :cond_3
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->startDisconnectedPnoScan()V

    #@75
    goto :goto_0
.end method

.method private startDisconnectedPnoScan()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 788
    new-instance v2, Landroid/net/wifi/WifiScanner$PnoSettings;

    #@3
    invoke-direct {v2}, Landroid/net/wifi/WifiScanner$PnoSettings;-><init>()V

    #@6
    .line 790
    .local v2, "pnoSettings":Landroid/net/wifi/WifiScanner$PnoSettings;
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@8
    invoke-virtual {v4}, Lcom/android/server/wifi/WifiConfigManager;->retrieveDisconnectedPnoNetworkList()Ljava/util/ArrayList;

    #@b
    move-result-object v1

    #@c
    .line 791
    .local v1, "pnoNetworkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@f
    move-result v0

    #@10
    .line 793
    .local v0, "listSize":I
    if-nez v0, :cond_0

    #@12
    .line 795
    const-string/jumbo v4, "No saved network for starting disconnected PNO."

    #@15
    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    #@18
    .line 796
    return-void

    #@19
    .line 799
    :cond_0
    new-array v4, v0, [Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    #@1b
    iput-object v4, v2, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    #@1d
    .line 800
    iget-object v4, v2, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    #@1f
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@22
    move-result-object v4

    #@23
    check-cast v4, [Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    #@25
    iput-object v4, v2, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    #@27
    .line 801
    iget v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMin5GHzRssi:I

    #@29
    iput v4, v2, Landroid/net/wifi/WifiScanner$PnoSettings;->min5GHzRssi:I

    #@2b
    .line 802
    iget v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMin24GHzRssi:I

    #@2d
    iput v4, v2, Landroid/net/wifi/WifiScanner$PnoSettings;->min24GHzRssi:I

    #@2f
    .line 803
    iget v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mInitialScoreMax:I

    #@31
    iput v4, v2, Landroid/net/wifi/WifiScanner$PnoSettings;->initialScoreMax:I

    #@33
    .line 804
    iget v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mCurrentConnectionBonus:I

    #@35
    iput v4, v2, Landroid/net/wifi/WifiScanner$PnoSettings;->currentConnectionBonus:I

    #@37
    .line 805
    iget v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mSameNetworkBonus:I

    #@39
    iput v4, v2, Landroid/net/wifi/WifiScanner$PnoSettings;->sameNetworkBonus:I

    #@3b
    .line 806
    iget v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mSecureBonus:I

    #@3d
    iput v4, v2, Landroid/net/wifi/WifiScanner$PnoSettings;->secureBonus:I

    #@3f
    .line 807
    iget v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mBand5GHzBonus:I

    #@41
    iput v4, v2, Landroid/net/wifi/WifiScanner$PnoSettings;->band5GHzBonus:I

    #@43
    .line 810
    new-instance v3, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@45
    invoke-direct {v3}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    #@48
    .line 811
    .local v3, "scanSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->getScanBand()I

    #@4b
    move-result v4

    #@4c
    iput v4, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@4e
    .line 812
    const/4 v4, 0x4

    #@4f
    iput v4, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    #@51
    .line 813
    iput v5, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    #@53
    .line 814
    const/16 v4, 0x4e20

    #@55
    iput v4, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@57
    .line 818
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

    #@59
    invoke-virtual {v4}, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->clearScanDetails()V

    #@5c
    .line 820
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanner:Landroid/net/wifi/WifiScanner;

    #@5e
    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

    #@60
    invoke-virtual {v4, v3, v2, v5}, Landroid/net/wifi/WifiScanner;->startDisconnectedPnoScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;Landroid/net/wifi/WifiScanner$PnoScanListener;)V

    #@63
    .line 786
    return-void
.end method

.method private startPeriodicScan(Z)V
    .locals 1
    .param p1, "scanImmediately"    # Z

    #@0
    .prologue
    .line 762
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->resetLowRssiNetworkRetryDelay()V

    #@5
    .line 767
    if-eqz p1, :cond_0

    #@7
    .line 768
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->resetLastPeriodicSingleScanTimeStamp()V

    #@a
    .line 770
    :cond_0
    const/16 v0, 0x4e20

    #@c
    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    #@e
    .line 771
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->startPeriodicSingleScan()V

    #@11
    .line 761
    return-void
.end method

.method private startPeriodicSingleScan()V
    .locals 11

    #@0
    .prologue
    const v10, 0x27100

    #@3
    .line 670
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    #@5
    invoke-virtual {v3}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    #@8
    move-result-wide v0

    #@9
    .line 672
    .local v0, "currentTimeStamp":J
    iget-wide v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastPeriodicSingleScanTimeStamp:J

    #@b
    const-wide/high16 v8, -0x8000000000000000L

    #@d
    cmp-long v3, v6, v8

    #@f
    if-eqz v3, :cond_0

    #@11
    .line 673
    iget-wide v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastPeriodicSingleScanTimeStamp:J

    #@13
    sub-long v4, v0, v6

    #@15
    .line 674
    .local v4, "msSinceLastScan":J
    const-wide/16 v6, 0x4e20

    #@17
    cmp-long v3, v4, v6

    #@19
    if-gez v3, :cond_0

    #@1b
    .line 675
    new-instance v3, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v6, "Last periodic single scan started "

    #@23
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    .line 676
    const-string/jumbo v6, "ms ago, defer this new scan request."

    #@2e
    .line 675
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    #@39
    .line 677
    long-to-int v3, v4

    #@3a
    rsub-int v3, v3, 0x4e20

    #@3c
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConnectivityManager;->schedulePeriodicScanTimer(I)V

    #@3f
    .line 678
    return-void

    #@40
    .line 682
    .end local v4    # "msSinceLastScan":J
    :cond_0
    const/4 v2, 0x1

    #@41
    .line 685
    .local v2, "isFullBandScan":Z
    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    #@43
    const/4 v6, 0x1

    #@44
    if-ne v3, v6, :cond_2

    #@46
    .line 686
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@48
    iget-wide v6, v3, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    #@4a
    .line 687
    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    #@4c
    .line 686
    cmpl-double v3, v6, v8

    #@4e
    if-gtz v3, :cond_1

    #@50
    .line 688
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@52
    iget-wide v6, v3, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    #@54
    .line 689
    const-wide/high16 v8, 0x4030000000000000L    # 16.0

    #@56
    .line 688
    cmpl-double v3, v6, v8

    #@58
    if-lez v3, :cond_2

    #@5a
    .line 690
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v6, "No full band scan due to heavy traffic, txSuccessRate="

    #@62
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v3

    #@66
    .line 691
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@68
    iget-wide v6, v6, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    #@6a
    .line 690
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v3

    #@6e
    .line 691
    const-string/jumbo v6, " rxSuccessRate="

    #@71
    .line 690
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v3

    #@75
    .line 692
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@77
    iget-wide v6, v6, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    #@79
    .line 690
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v3

    #@7d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v3

    #@81
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    #@84
    .line 693
    const/4 v2, 0x0

    #@85
    .line 696
    :cond_2
    iput-wide v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastPeriodicSingleScanTimeStamp:J

    #@87
    .line 697
    const/4 v3, 0x0

    #@88
    invoke-direct {p0, v3, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->startSingleScan(ZZ)V

    #@8b
    .line 698
    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    #@8d
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConnectivityManager;->schedulePeriodicScanTimer(I)V

    #@90
    .line 701
    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    #@92
    mul-int/lit8 v3, v3, 0x2

    #@94
    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    #@96
    .line 702
    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    #@98
    if-le v3, v10, :cond_3

    #@9a
    .line 703
    iput v10, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    #@9c
    .line 669
    :cond_3
    return-void
.end method

.method private startSingleScan(ZZ)V
    .locals 9
    .param p1, "isWatchdogTriggered"    # Z
    .param p2, "isFullBandScan"    # Z

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 725
    iget-boolean v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiEnabled:Z

    #@3
    if-eqz v7, :cond_1

    #@5
    iget-boolean v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiConnectivityManagerEnabled:Z

    #@7
    if-eqz v7, :cond_1

    #@9
    .line 729
    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

    #@b
    invoke-virtual {v7}, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->resetLowRssiNetworkRetryDelay()V

    #@e
    .line 731
    new-instance v5, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@10
    invoke-direct {v5}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    #@13
    .line 732
    .local v5, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    if-nez p2, :cond_0

    #@15
    .line 733
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiConnectivityManager;->setScanChannels(Landroid/net/wifi/WifiScanner$ScanSettings;)Z

    #@18
    move-result v7

    #@19
    if-nez v7, :cond_0

    #@1b
    .line 734
    const/4 p2, 0x1

    #@1c
    .line 737
    .end local p2    # "isFullBandScan":Z
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiConnectivityManager;->getScanBand(Z)I

    #@1f
    move-result v7

    #@20
    iput v7, v5, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@22
    .line 738
    const/4 v7, 0x3

    #@23
    iput v7, v5, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    #@25
    .line 740
    iput v8, v5, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    #@27
    .line 743
    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@29
    invoke-virtual {v7}, Lcom/android/server/wifi/WifiConfigManager;->getHiddenConfiguredNetworkIds()Ljava/util/Set;

    #@2c
    move-result-object v0

    #@2d
    .line 744
    .local v0, "hiddenNetworkIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_2

    #@2f
    invoke-interface {v0}, Ljava/util/Set;->size()I

    #@32
    move-result v7

    #@33
    if-lez v7, :cond_2

    #@35
    .line 745
    const/4 v1, 0x0

    #@36
    .line 746
    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/Set;->size()I

    #@39
    move-result v7

    #@3a
    new-array v7, v7, [I

    #@3c
    iput-object v7, v5, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworkIds:[I

    #@3e
    .line 747
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@41
    move-result-object v4

    #@42
    .local v4, "netId$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@45
    move-result v7

    #@46
    if-eqz v7, :cond_2

    #@48
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4b
    move-result-object v3

    #@4c
    check-cast v3, Ljava/lang/Integer;

    #@4e
    .line 748
    .local v3, "netId":Ljava/lang/Integer;
    iget-object v7, v5, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworkIds:[I

    #@50
    add-int/lit8 v2, v1, 0x1

    #@52
    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@55
    move-result v8

    #@56
    aput v8, v7, v1

    #@58
    move v1, v2

    #@59
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    #@5a
    .line 726
    .end local v0    # "hiddenNetworkIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v1    # "i":I
    .end local v3    # "netId":Ljava/lang/Integer;
    .end local v4    # "netId$iterator":Ljava/util/Iterator;
    .end local v5    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    .restart local p2    # "isFullBandScan":Z
    :cond_1
    return-void

    #@5b
    .line 756
    .end local p2    # "isFullBandScan":Z
    .restart local v0    # "hiddenNetworkIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v5    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    :cond_2
    new-instance v6, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;

    #@5d
    invoke-direct {v6, p0, p1, p2}, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;ZZ)V

    #@60
    .line 757
    .local v6, "singleScanListener":Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;
    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanner:Landroid/net/wifi/WifiScanner;

    #@62
    sget-object v8, Lcom/android/server/wifi/WifiStateMachine;->WIFI_WORK_SOURCE:Landroid/os/WorkSource;

    #@64
    invoke-virtual {v7, v5, v6, v8}, Landroid/net/wifi/WifiScanner;->startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V

    #@67
    .line 724
    return-void
.end method

.method private stopConnectivityScan()V
    .locals 2

    #@0
    .prologue
    .line 946
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mAlarmManager:Landroid/app/AlarmManager;

    #@2
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicScanTimerListener:Landroid/app/AlarmManager$OnAlarmListener;

    #@4
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    #@7
    .line 950
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanner:Landroid/net/wifi/WifiScanner;

    #@9
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

    #@b
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiScanner;->stopPnoScan(Landroid/net/wifi/WifiScanner$ScanListener;)V

    #@e
    .line 951
    const/4 v0, 0x0

    #@f
    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanRestartCount:I

    #@11
    .line 942
    return-void
.end method

.method private watchdogHandler()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 655
    const-string/jumbo v0, "watchdogHandler"

    #@4
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    #@7
    .line 660
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    #@9
    const/4 v1, 0x2

    #@a
    if-ne v0, v1, :cond_0

    #@c
    .line 661
    const-string/jumbo v0, "WifiConnectivityManager"

    #@f
    const-string/jumbo v1, "start a single scan from watchdogHandler"

    #@12
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 663
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->scheduleWatchdogTimer()V

    #@18
    .line 664
    invoke-direct {p0, v2, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->startSingleScan(ZZ)V

    #@1b
    .line 654
    :cond_0
    return-void
.end method


# virtual methods
.method public connectToUserSelectNetwork(IZ)V
    .locals 3
    .param p1, "netId"    # I
    .param p2, "persistent"    # Z

    #@0
    .prologue
    .line 997
    const-string/jumbo v0, "WifiConnectivityManager"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "connectToUserSelectNetwork: netId="

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    .line 998
    const-string/jumbo v2, " persist="

    #@16
    .line 997
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 1000
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mQualifiedNetworkSelector:Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

    #@27
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->userSelectNetwork(IZ)Z

    #@2a
    .line 1002
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->clearConnectionAttemptTimeStamps()V

    #@2d
    .line 996
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1082
    const-string/jumbo v0, "Dump of WifiConnectivityManager"

    #@3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 1083
    const-string/jumbo v0, "WifiConnectivityManager - Log Begin ----"

    #@9
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c
    .line 1084
    new-instance v0, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v1, "WifiConnectivityManager - Number of connectivity attempts rate limited: "

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 1085
    iget v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mTotalConnectivityAttemptsRateLimited:I

    #@1a
    .line 1084
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@25
    .line 1086
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLocalLog:Landroid/util/LocalLog;

    #@27
    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@2a
    .line 1087
    const-string/jumbo v0, "WifiConnectivityManager - Log End ----"

    #@2d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@30
    .line 1081
    return-void
.end method

.method public enable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 1061
    const-string/jumbo v1, "WifiConnectivityManager"

    #@3
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "Set WiFiConnectivityManager "

    #@b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    if-eqz p1, :cond_1

    #@11
    const-string/jumbo v0, "enabled"

    #@14
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 1063
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiConnectivityManagerEnabled:Z

    #@21
    .line 1065
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiConnectivityManagerEnabled:Z

    #@23
    if-nez v0, :cond_0

    #@25
    .line 1066
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->stopConnectivityScan()V

    #@28
    .line 1067
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->resetLastPeriodicSingleScanTimeStamp()V

    #@2b
    .line 1060
    :cond_0
    return-void

    #@2c
    .line 1061
    :cond_1
    const-string/jumbo v0, "disabled"

    #@2f
    goto :goto_0
.end method

.method public enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1075
    if-lez p1, :cond_0

    #@3
    const/4 v0, 0x1

    #@4
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mDbg:Z

    #@6
    .line 1074
    return-void
.end method

.method public forceConnectivityScan()V
    .locals 2

    #@0
    .prologue
    .line 1009
    const-string/jumbo v0, "WifiConnectivityManager"

    #@3
    const-string/jumbo v1, "forceConnectivityScan"

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1011
    const/4 v0, 0x1

    #@a
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectivityScan(Z)V

    #@d
    .line 1008
    return-void
.end method

.method getLastPeriodicSingleScanTimeStamp()J
    .locals 2

    #@0
    .prologue
    .line 1097
    iget-wide v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastPeriodicSingleScanTimeStamp:J

    #@2
    return-wide v0
.end method

.method getLowRssiNetworkRetryDelay()I
    .locals 1

    #@0
    .prologue
    .line 1092
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->getLowRssiNetworkRetryDelay()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public handleConnectionStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    #@0
    .prologue
    .line 969
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "handleConnectionStateChanged: state="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    #@17
    .line 971
    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    #@19
    .line 974
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    #@1b
    const/4 v1, 0x2

    #@1c
    if-ne v0, v1, :cond_0

    #@1e
    .line 975
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->scheduleWatchdogTimer()V

    #@21
    .line 978
    :cond_0
    const/4 v0, 0x0

    #@22
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectivityScan(Z)V

    #@25
    .line 968
    return-void
.end method

.method public handleScreenStateChanged(Z)V
    .locals 2
    .param p1, "screenOn"    # Z

    #@0
    .prologue
    .line 958
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "handleScreenStateChanged: screenOn="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    #@17
    .line 960
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScreenOn:Z

    #@19
    .line 962
    const/4 v0, 0x0

    #@1a
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectivityScan(Z)V

    #@1d
    .line 957
    return-void
.end method

.method public setUntrustedConnectionAllowed(Z)V
    .locals 3
    .param p1, "allowed"    # Z

    #@0
    .prologue
    .line 985
    const-string/jumbo v0, "WifiConnectivityManager"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "setUntrustedConnectionAllowed: allowed="

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 987
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mUntrustedConnectionAllowed:Z

    #@1c
    if-eq v0, p1, :cond_0

    #@1e
    .line 988
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mUntrustedConnectionAllowed:Z

    #@20
    .line 989
    const/4 v0, 0x1

    #@21
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectivityScan(Z)V

    #@24
    .line 984
    :cond_0
    return-void
.end method

.method public setUserPreferredBand(I)V
    .locals 3
    .param p1, "band"    # I

    #@0
    .prologue
    .line 1037
    const-string/jumbo v0, "WifiConnectivityManager"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "User band preference: "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 1039
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mQualifiedNetworkSelector:Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

    #@1c
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->setUserPreferredBand(I)V

    #@1f
    .line 1040
    const/4 v0, 0x1

    #@20
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectivityScan(Z)V

    #@23
    .line 1036
    return-void
.end method

.method public setWifiEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 1047
    const-string/jumbo v1, "WifiConnectivityManager"

    #@3
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "Set WiFi "

    #@b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    if-eqz p1, :cond_1

    #@11
    const-string/jumbo v0, "enabled"

    #@14
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 1049
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiEnabled:Z

    #@21
    .line 1051
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiEnabled:Z

    #@23
    if-nez v0, :cond_0

    #@25
    .line 1052
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->stopConnectivityScan()V

    #@28
    .line 1053
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->resetLastPeriodicSingleScanTimeStamp()V

    #@2b
    .line 1046
    :cond_0
    return-void

    #@2c
    .line 1047
    :cond_1
    const-string/jumbo v0, "disabled"

    #@2f
    goto :goto_0
.end method

.method public trackBssid(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    #@0
    .prologue
    .line 1018
    const-string/jumbo v2, "WifiConnectivityManager"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v3, "trackBssid: "

    #@b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v3

    #@f
    if-eqz p2, :cond_1

    #@11
    const-string/jumbo v1, "enable "

    #@14
    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 1020
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mQualifiedNetworkSelector:Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

    #@25
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->enableBssidForQualityNetworkSelection(Ljava/lang/String;Z)Z

    #@28
    move-result v0

    #@29
    .line 1023
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    #@2b
    if-eqz p2, :cond_2

    #@2d
    .line 1030
    :cond_0
    :goto_1
    return v0

    #@2e
    .line 1018
    .end local v0    # "ret":Z
    :cond_1
    const-string/jumbo v1, "disable "

    #@31
    goto :goto_0

    #@32
    .line 1027
    .restart local v0    # "ret":Z
    :cond_2
    const/4 v1, 0x1

    #@33
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectivityScan(Z)V

    #@36
    goto :goto_1
.end method
