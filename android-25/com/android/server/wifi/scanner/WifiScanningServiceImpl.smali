.class public Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;
.super Landroid/net/wifi/IWifiScanner$Stub;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;,
        Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;,
        Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;,
        Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;,
        Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;,
        Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;,
        Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;,
        Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;,
        Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;,
        Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x27100

.field private static final CMD_DRIVER_LOADED:I = 0x27106

.field private static final CMD_DRIVER_UNLOADED:I = 0x27107

.field private static final CMD_FULL_SCAN_RESULTS:I = 0x27101

.field private static final CMD_HOTLIST_AP_FOUND:I = 0x27102

.field private static final CMD_HOTLIST_AP_LOST:I = 0x27103

.field private static final CMD_PNO_NETWORK_FOUND:I = 0x2710b

.field private static final CMD_PNO_SCAN_FAILED:I = 0x2710c

.field private static final CMD_SCAN_FAILED:I = 0x2710a

.field private static final CMD_SCAN_PAUSED:I = 0x27108

.field private static final CMD_SCAN_RESTARTED:I = 0x27109

.field private static final CMD_SCAN_RESULTS_AVAILABLE:I = 0x27100

.field private static final CMD_WIFI_CHANGE_DETECTED:I = 0x27104

.field private static final CMD_WIFI_CHANGE_TIMEOUT:I = 0x27105

.field private static final DBG:Z = false

.field private static final MIN_PERIOD_PER_CHANNEL_MS:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "WifiScanningService"

.field private static final UNKNOWN_PID:I = -0x1


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mBackgroundScanStateMachine:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

.field private mBackgroundScheduler:Lcom/android/server/wifi/scanner/BackgroundScanScheduler;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

.field private mClientHandler:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;

.field private final mClients:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/Messenger;",
            "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mClock:Lcom/android/server/wifi/Clock;

.field private final mContext:Landroid/content/Context;

.field private final mLocalLog:Landroid/util/LocalLog;

.field private final mLooper:Landroid/os/Looper;

.field private mPnoScanStateMachine:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

.field private mPreviousSchedule:Lcom/android/server/wifi/WifiNative$ScanSettings;

.field private mScannerImpl:Lcom/android/server/wifi/scanner/WifiScannerImpl;

.field private final mScannerImplFactory:Lcom/android/server/wifi/scanner/WifiScannerImpl$WifiScannerImplFactory;

.field private final mSingleScanListeners:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mSingleScanStateMachine:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

.field private mWifiChangeStateMachine:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

.field private final mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/app/AlarmManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mBackgroundScanStateMachine:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mPnoScanStateMachine:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    #@2
    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiNative$ScanSettings;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mPreviousSchedule:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@2
    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mScannerImpl:Lcom/android/server/wifi/scanner/WifiScannerImpl;

    #@2
    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl$WifiScannerImplFactory;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mScannerImplFactory:Lcom/android/server/wifi/scanner/WifiScannerImpl$WifiScannerImplFactory;

    #@2
    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mSingleScanListeners:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@2
    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mSingleScanStateMachine:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    #@2
    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mWifiChangeStateMachine:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    #@2
    return-object v0
.end method

.method static synthetic -get17(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiMetrics;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/BackgroundScanScheduler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mBackgroundScheduler:Lcom/android/server/wifi/scanner/BackgroundScanScheduler;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/internal/app/IBatteryStats;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/ChannelHelper;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mClientHandler:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/util/ArrayMap;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mClients:Landroid/util/ArrayMap;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/Clock;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mClock:Lcom/android/server/wifi/Clock;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/os/Looper;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mLooper:Landroid/os/Looper;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Lcom/android/server/wifi/scanner/BackgroundScanScheduler;)Lcom/android/server/wifi/scanner/BackgroundScanScheduler;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mBackgroundScheduler:Lcom/android/server/wifi/scanner/BackgroundScanScheduler;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Lcom/android/server/wifi/scanner/ChannelHelper;)Lcom/android/server/wifi/scanner/ChannelHelper;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Lcom/android/server/wifi/WifiNative$ScanSettings;)Lcom/android/server/wifi/WifiNative$ScanSettings;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mPreviousSchedule:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@2
    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Lcom/android/server/wifi/scanner/WifiScannerImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mScannerImpl:Lcom/android/server/wifi/scanner/WifiScannerImpl;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .locals 1
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .param p2, "requestedWorkSource"    # Landroid/os/WorkSource;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->computeWorkSource(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;Landroid/os/WorkSource;)Landroid/os/WorkSource;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;I)V
    .locals 0
    .param p1, "uid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->enforceLocationHardwarePermission(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->localLog(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->loge(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->logw(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/scanner/WifiScannerImpl$WifiScannerImplFactory;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/wifi/WifiInjector;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "scannerImplFactory"    # Lcom/android/server/wifi/scanner/WifiScannerImpl$WifiScannerImplFactory;
    .param p4, "batteryStats"    # Lcom/android/internal/app/IBatteryStats;
    .param p5, "wifiInjector"    # Lcom/android/server/wifi/WifiInjector;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 272
    invoke-direct {p0}, Landroid/net/wifi/IWifiScanner$Stub;-><init>()V

    #@4
    .line 79
    new-instance v0, Landroid/util/LocalLog;

    #@6
    const/16 v1, 0x200

    #@8
    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    #@b
    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mLocalLog:Landroid/util/LocalLog;

    #@d
    .line 256
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@f
    invoke-direct {v0, p0, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;)V

    #@12
    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mSingleScanListeners:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@14
    .line 275
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mContext:Landroid/content/Context;

    #@16
    .line 276
    iput-object p2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mLooper:Landroid/os/Looper;

    #@18
    .line 277
    iput-object p3, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mScannerImplFactory:Lcom/android/server/wifi/scanner/WifiScannerImpl$WifiScannerImplFactory;

    #@1a
    .line 278
    iput-object p4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@1c
    .line 279
    new-instance v0, Landroid/util/ArrayMap;

    #@1e
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@21
    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mClients:Landroid/util/ArrayMap;

    #@23
    .line 280
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mContext:Landroid/content/Context;

    #@25
    const-string/jumbo v1, "alarm"

    #@28
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Landroid/app/AlarmManager;

    #@2e
    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    #@30
    .line 281
    invoke-virtual {p5}, Lcom/android/server/wifi/WifiInjector;->getWifiMetrics()Lcom/android/server/wifi/WifiMetrics;

    #@33
    move-result-object v0

    #@34
    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    #@36
    .line 282
    invoke-virtual {p5}, Lcom/android/server/wifi/WifiInjector;->getClock()Lcom/android/server/wifi/Clock;

    #@39
    move-result-object v0

    #@3a
    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mClock:Lcom/android/server/wifi/Clock;

    #@3c
    .line 284
    iput-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mPreviousSchedule:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@3e
    .line 274
    return-void
.end method

.method private computeWorkSource(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .locals 3
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .param p2, "requestedWorkSource"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 324
    if-eqz p2, :cond_1

    #@2
    .line 325
    invoke-static {p2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->isWorkSourceValid(Landroid/os/WorkSource;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 328
    invoke-virtual {p2}, Landroid/os/WorkSource;->clearNames()V

    #@b
    .line 329
    return-object p2

    #@c
    .line 331
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "Got invalid work source request: "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {p2}, Landroid/os/WorkSource;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    .line 332
    const-string/jumbo v2, " from "

    #@23
    .line 331
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-direct {p0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->loge(Ljava/lang/String;)V

    #@32
    .line 335
    :cond_1
    new-instance v0, Landroid/os/WorkSource;

    #@34
    invoke-virtual {p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->getUid()I

    #@37
    move-result v1

    #@38
    invoke-direct {v0, v1}, Landroid/os/WorkSource;-><init>(I)V

    #@3b
    .line 336
    .local v0, "callingWorkSource":Landroid/os/WorkSource;
    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->isWorkSourceValid(Landroid/os/WorkSource;)Z

    #@3e
    move-result v1

    #@3f
    if-eqz v1, :cond_2

    #@41
    .line 337
    return-object v0

    #@42
    .line 339
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v2, "Client has invalid work source: "

    #@4a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v1

    #@52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v1

    #@56
    invoke-direct {p0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->loge(Ljava/lang/String;)V

    #@59
    .line 340
    new-instance v1, Landroid/os/WorkSource;

    #@5b
    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    #@5e
    return-object v1
.end method

.method static describeForLog([Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .locals 2
    .param p0, "results"    # [Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    .line 2675
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "results="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    array-length v1, p0

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method static describeForLog([Landroid/net/wifi/WifiScanner$ScanData;)Ljava/lang/String;
    .locals 3
    .param p0, "results"    # [Landroid/net/wifi/WifiScanner$ScanData;

    #@0
    .prologue
    .line 2665
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 2666
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "results="

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 2667
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@d
    if-ge v0, v2, :cond_1

    #@f
    .line 2668
    if-lez v0, :cond_0

    #@11
    const-string/jumbo v2, ";"

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    .line 2669
    :cond_0
    aget-object v2, p0, v0

    #@19
    invoke-virtual {v2}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    #@1c
    move-result-object v2

    #@1d
    array-length v2, v2

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    .line 2667
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 2671
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    return-object v2
.end method

.method static describeTo(Ljava/lang/StringBuilder;Landroid/net/wifi/WifiScanner$PnoSettings;)Ljava/lang/String;
    .locals 3
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "pnoSettings"    # Landroid/net/wifi/WifiScanner$PnoSettings;

    #@0
    .prologue
    .line 2698
    const-string/jumbo v1, "PnoSettings { "

    #@3
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6
    move-result-object v1

    #@7
    .line 2699
    const-string/jumbo v2, " min5GhzRssi:"

    #@a
    .line 2698
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    .line 2699
    iget v2, p1, Landroid/net/wifi/WifiScanner$PnoSettings;->min5GHzRssi:I

    #@10
    .line 2698
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    .line 2700
    const-string/jumbo v2, " min24GhzRssi:"

    #@17
    .line 2698
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    .line 2700
    iget v2, p1, Landroid/net/wifi/WifiScanner$PnoSettings;->min24GHzRssi:I

    #@1d
    .line 2698
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    .line 2701
    const-string/jumbo v2, " initialScoreMax:"

    #@24
    .line 2698
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    .line 2701
    iget v2, p1, Landroid/net/wifi/WifiScanner$PnoSettings;->initialScoreMax:I

    #@2a
    .line 2698
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    .line 2702
    const-string/jumbo v2, " currentConnectionBonus:"

    #@31
    .line 2698
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    .line 2702
    iget v2, p1, Landroid/net/wifi/WifiScanner$PnoSettings;->currentConnectionBonus:I

    #@37
    .line 2698
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    .line 2703
    const-string/jumbo v2, " sameNetworkBonus:"

    #@3e
    .line 2698
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    .line 2703
    iget v2, p1, Landroid/net/wifi/WifiScanner$PnoSettings;->sameNetworkBonus:I

    #@44
    .line 2698
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    .line 2704
    const-string/jumbo v2, " secureBonus:"

    #@4b
    .line 2698
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    .line 2704
    iget v2, p1, Landroid/net/wifi/WifiScanner$PnoSettings;->secureBonus:I

    #@51
    .line 2698
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    .line 2705
    const-string/jumbo v2, " band5GhzBonus:"

    #@58
    .line 2698
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v1

    #@5c
    .line 2705
    iget v2, p1, Landroid/net/wifi/WifiScanner$PnoSettings;->band5GHzBonus:I

    #@5e
    .line 2698
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@61
    move-result-object v1

    #@62
    .line 2706
    const-string/jumbo v2, " isConnected:"

    #@65
    .line 2698
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v1

    #@69
    .line 2706
    iget-boolean v2, p1, Landroid/net/wifi/WifiScanner$PnoSettings;->isConnected:Z

    #@6b
    .line 2698
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v1

    #@6f
    .line 2707
    const-string/jumbo v2, " networks:[ "

    #@72
    .line 2698
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    .line 2708
    iget-object v1, p1, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    #@77
    if-eqz v1, :cond_0

    #@79
    .line 2709
    const/4 v0, 0x0

    #@7a
    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    #@7c
    array-length v1, v1

    #@7d
    if-ge v0, v1, :cond_0

    #@7f
    .line 2710
    iget-object v1, p1, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    #@81
    aget-object v1, v1, v0

    #@83
    iget-object v1, v1, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->ssid:Ljava/lang/String;

    #@85
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v1

    #@89
    .line 2711
    const-string/jumbo v2, ","

    #@8c
    .line 2710
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v1

    #@90
    .line 2712
    iget-object v2, p1, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    #@92
    aget-object v2, v2, v0

    #@94
    iget v2, v2, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->networkId:I

    #@96
    .line 2710
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@99
    move-result-object v1

    #@9a
    .line 2713
    const-string/jumbo v2, " "

    #@9d
    .line 2710
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    .line 2709
    add-int/lit8 v0, v0, 0x1

    #@a2
    goto :goto_0

    #@a3
    .line 2716
    .end local v0    # "i":I
    :cond_0
    const-string/jumbo v1, " ] "

    #@a6
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v1

    #@aa
    .line 2717
    const-string/jumbo v2, " } "

    #@ad
    .line 2716
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    .line 2718
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b3
    move-result-object v1

    #@b4
    return-object v1
.end method

.method static describeTo(Ljava/lang/StringBuilder;Landroid/net/wifi/WifiScanner$ScanSettings;)Ljava/lang/String;
    .locals 3
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "scanSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    #@0
    .prologue
    .line 2679
    const-string/jumbo v1, "ScanSettings { "

    #@3
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6
    move-result-object v1

    #@7
    .line 2680
    const-string/jumbo v2, " band:"

    #@a
    .line 2679
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    .line 2680
    iget v2, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@10
    .line 2679
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    .line 2681
    const-string/jumbo v2, " period:"

    #@17
    .line 2679
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    .line 2681
    iget v2, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@1d
    .line 2679
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    .line 2682
    const-string/jumbo v2, " reportEvents:"

    #@24
    .line 2679
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    .line 2682
    iget v2, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    #@2a
    .line 2679
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    .line 2683
    const-string/jumbo v2, " numBssidsPerScan:"

    #@31
    .line 2679
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    .line 2683
    iget v2, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    #@37
    .line 2679
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    .line 2684
    const-string/jumbo v2, " maxScansToCache:"

    #@3e
    .line 2679
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    .line 2684
    iget v2, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    #@44
    .line 2679
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    .line 2685
    const-string/jumbo v2, " channels:[ "

    #@4b
    .line 2679
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    .line 2686
    iget-object v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@50
    if-eqz v1, :cond_0

    #@52
    .line 2687
    const/4 v0, 0x0

    #@53
    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@55
    array-length v1, v1

    #@56
    if-ge v0, v1, :cond_0

    #@58
    .line 2688
    iget-object v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@5a
    aget-object v1, v1, v0

    #@5c
    iget v1, v1, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    #@5e
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@61
    move-result-object v1

    #@62
    .line 2689
    const-string/jumbo v2, " "

    #@65
    .line 2688
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    .line 2687
    add-int/lit8 v0, v0, 0x1

    #@6a
    goto :goto_0

    #@6b
    .line 2692
    .end local v0    # "i":I
    :cond_0
    const-string/jumbo v1, " ] "

    #@6e
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v1

    #@72
    .line 2693
    const-string/jumbo v2, " } "

    #@75
    .line 2692
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    .line 2694
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v1

    #@7c
    return-object v1
.end method

.method private enforceLocationHardwarePermission(I)V
    .locals 4
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mContext:Landroid/content/Context;

    #@2
    .line 122
    const-string/jumbo v1, "android.permission.LOCATION_HARDWARE"

    #@5
    .line 124
    const-string/jumbo v2, "LocationHardware"

    #@8
    .line 123
    const/4 v3, -0x1

    #@9
    .line 121
    invoke-virtual {v0, v1, v3, p1, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    #@c
    .line 120
    return-void
.end method

.method private static isWorkSourceValid(Landroid/os/WorkSource;)Z
    .locals 2
    .param p0, "workSource"    # Landroid/os/WorkSource;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 320
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Landroid/os/WorkSource;->size()I

    #@6
    move-result v1

    #@7
    if-lez v1, :cond_0

    #@9
    invoke-virtual {p0, v0}, Landroid/os/WorkSource;->get(I)I

    #@c
    move-result v1

    #@d
    if-ltz v1, :cond_0

    #@f
    const/4 v0, 0x1

    #@10
    :cond_0
    return v0
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mLocalLog:Landroid/util/LocalLog;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@5
    .line 81
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 91
    const-string/jumbo v0, "WifiScanningService"

    #@3
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 92
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mLocalLog:Landroid/util/LocalLog;

    #@8
    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@b
    .line 90
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 86
    const-string/jumbo v0, "WifiScanningService"

    #@3
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 87
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mLocalLog:Landroid/util/LocalLog;

    #@8
    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@b
    .line 85
    return-void
.end method

.method private static toString(ILandroid/net/wifi/WifiScanner$ScanSettings;)Ljava/lang/String;
    .locals 3
    .param p0, "uid"    # I
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    #@0
    .prologue
    .line 2565
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 2566
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "ScanSettings[uid="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    .line 2567
    const-string/jumbo v1, ", period="

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    iget v2, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    .line 2568
    const-string/jumbo v1, ", report="

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    iget v2, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    .line 2569
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    #@29
    if-nez v1, :cond_0

    #@2b
    .line 2570
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    #@2d
    if-lez v1, :cond_0

    #@2f
    .line 2571
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    #@31
    const/4 v2, 0x1

    #@32
    if-le v1, v2, :cond_0

    #@34
    .line 2572
    const-string/jumbo v1, ", batch="

    #@37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    iget v2, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    #@3d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    .line 2573
    const-string/jumbo v1, ", numAP="

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    iget v2, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    #@49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c
    .line 2575
    :cond_0
    const-string/jumbo v1, ", "

    #@4f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v1

    #@53
    invoke-static {p1}, Lcom/android/server/wifi/scanner/ChannelHelper;->toString(Landroid/net/wifi/WifiScanner$ScanSettings;)Ljava/lang/String;

    #@56
    move-result-object v2

    #@57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    .line 2576
    const-string/jumbo v1, "]"

    #@5d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    .line 2578
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v1

    #@64
    return-object v1
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 2583
    iget-object v8, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v9, "android.permission.DUMP"

    #@5
    invoke-virtual {v8, v9}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@8
    move-result v8

    #@9
    if-eqz v8, :cond_0

    #@b
    .line 2585
    new-instance v8, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v9, "Permission Denial: can\'t dump WifiScanner from from pid="

    #@13
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v8

    #@17
    .line 2586
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1a
    move-result v9

    #@1b
    .line 2585
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v8

    #@1f
    .line 2587
    const-string/jumbo v9, ", uid="

    #@22
    .line 2585
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v8

    #@26
    .line 2587
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@29
    move-result v9

    #@2a
    .line 2585
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v8

    #@2e
    .line 2588
    const-string/jumbo v9, " without permission "

    #@31
    .line 2585
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v8

    #@35
    .line 2589
    const-string/jumbo v9, "android.permission.DUMP"

    #@38
    .line 2585
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v8

    #@3c
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v8

    #@40
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@43
    .line 2590
    return-void

    #@44
    .line 2592
    :cond_0
    const-string/jumbo v8, "WifiScanningService - Log Begin ----"

    #@47
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4a
    .line 2593
    iget-object v8, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mLocalLog:Landroid/util/LocalLog;

    #@4c
    invoke-virtual {v8, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@4f
    .line 2594
    const-string/jumbo v8, "WifiScanningService - Log End ----"

    #@52
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@55
    .line 2595
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@58
    .line 2596
    const-string/jumbo v8, "clients:"

    #@5b
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5e
    .line 2597
    iget-object v8, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mClients:Landroid/util/ArrayMap;

    #@60
    invoke-virtual {v8}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@63
    move-result-object v8

    #@64
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@67
    move-result-object v3

    #@68
    .local v3, "client$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@6b
    move-result v8

    #@6c
    if-eqz v8, :cond_1

    #@6e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@71
    move-result-object v2

    #@72
    check-cast v2, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    #@74
    .line 2598
    .local v2, "client":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    new-instance v8, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    const-string/jumbo v9, "  "

    #@7c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v8

    #@80
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v8

    #@84
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v8

    #@88
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8b
    goto :goto_0

    #@8c
    .line 2600
    .end local v2    # "client":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    :cond_1
    const-string/jumbo v8, "listeners:"

    #@8f
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@92
    .line 2601
    iget-object v8, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mClients:Landroid/util/ArrayMap;

    #@94
    invoke-virtual {v8}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@97
    move-result-object v8

    #@98
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9b
    move-result-object v3

    #@9c
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@9f
    move-result v8

    #@a0
    if-eqz v8, :cond_3

    #@a2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@a5
    move-result-object v2

    #@a6
    check-cast v2, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    #@a8
    .line 2603
    .restart local v2    # "client":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    iget-object v8, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mBackgroundScanStateMachine:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    #@aa
    invoke-virtual {v8, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->getBackgroundScanSettings(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)Ljava/util/Collection;

    #@ad
    move-result-object v7

    #@ae
    .line 2604
    .local v7, "settingsList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b1
    move-result-object v6

    #@b2
    .local v6, "settings$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@b5
    move-result v8

    #@b6
    if-eqz v8, :cond_2

    #@b8
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@bb
    move-result-object v5

    #@bc
    check-cast v5, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@be
    .line 2605
    .local v5, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    new-instance v8, Ljava/lang/StringBuilder;

    #@c0
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@c3
    const-string/jumbo v9, "  "

    #@c6
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v8

    #@ca
    invoke-static {v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->-get0(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)I

    #@cd
    move-result v9

    #@ce
    invoke-static {v9, v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->toString(ILandroid/net/wifi/WifiScanner$ScanSettings;)Ljava/lang/String;

    #@d1
    move-result-object v9

    #@d2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v8

    #@d6
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d9
    move-result-object v8

    #@da
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@dd
    goto :goto_1

    #@de
    .line 2608
    .end local v2    # "client":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .end local v5    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    .end local v6    # "settings$iterator":Ljava/util/Iterator;
    .end local v7    # "settingsList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    :cond_3
    iget-object v8, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mBackgroundScheduler:Lcom/android/server/wifi/scanner/BackgroundScanScheduler;

    #@e0
    if-eqz v8, :cond_4

    #@e2
    .line 2609
    iget-object v8, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mBackgroundScheduler:Lcom/android/server/wifi/scanner/BackgroundScanScheduler;

    #@e4
    invoke-virtual {v8}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->getSchedule()Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@e7
    move-result-object v4

    #@e8
    .line 2610
    .local v4, "schedule":Lcom/android/server/wifi/WifiNative$ScanSettings;
    if-eqz v4, :cond_4

    #@ea
    .line 2611
    const-string/jumbo v8, "schedule:"

    #@ed
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f0
    .line 2612
    new-instance v8, Ljava/lang/StringBuilder;

    #@f2
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@f5
    const-string/jumbo v9, "  base period: "

    #@f8
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v8

    #@fc
    iget v9, v4, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    #@fe
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@101
    move-result-object v8

    #@102
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@105
    move-result-object v8

    #@106
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@109
    .line 2613
    new-instance v8, Ljava/lang/StringBuilder;

    #@10b
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@10e
    const-string/jumbo v9, "  max ap per scan: "

    #@111
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@114
    move-result-object v8

    #@115
    iget v9, v4, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    #@117
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v8

    #@11b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11e
    move-result-object v8

    #@11f
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@122
    .line 2614
    new-instance v8, Ljava/lang/StringBuilder;

    #@124
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@127
    const-string/jumbo v9, "  batched scans: "

    #@12a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12d
    move-result-object v8

    #@12e
    iget v9, v4, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_num_scans:I

    #@130
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@133
    move-result-object v8

    #@134
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@137
    move-result-object v8

    #@138
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@13b
    .line 2615
    const-string/jumbo v8, "  buckets:"

    #@13e
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@141
    .line 2616
    const/4 v0, 0x0

    #@142
    .local v0, "b":I
    :goto_2
    iget v8, v4, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    #@144
    if-ge v0, v8, :cond_4

    #@146
    .line 2617
    iget-object v8, v4, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    #@148
    aget-object v1, v8, v0

    #@14a
    .line 2618
    .local v1, "bucket":Lcom/android/server/wifi/WifiNative$BucketSettings;
    new-instance v8, Ljava/lang/StringBuilder;

    #@14c
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@14f
    const-string/jumbo v9, "    bucket "

    #@152
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@155
    move-result-object v8

    #@156
    iget v9, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->bucket:I

    #@158
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15b
    move-result-object v8

    #@15c
    const-string/jumbo v9, " ("

    #@15f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@162
    move-result-object v8

    #@163
    iget v9, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    #@165
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@168
    move-result-object v8

    #@169
    const-string/jumbo v9, "ms)["

    #@16c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16f
    move-result-object v8

    #@170
    .line 2619
    iget v9, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    #@172
    .line 2618
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@175
    move-result-object v8

    #@176
    .line 2619
    const-string/jumbo v9, "]: "

    #@179
    .line 2618
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17c
    move-result-object v8

    #@17d
    .line 2620
    invoke-static {v1}, Lcom/android/server/wifi/scanner/ChannelHelper;->toString(Lcom/android/server/wifi/WifiNative$BucketSettings;)Ljava/lang/String;

    #@180
    move-result-object v9

    #@181
    .line 2618
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@184
    move-result-object v8

    #@185
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@188
    move-result-object v8

    #@189
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@18c
    .line 2616
    add-int/lit8 v0, v0, 0x1

    #@18e
    goto :goto_2

    #@18f
    .line 2624
    .end local v0    # "b":I
    .end local v1    # "bucket":Lcom/android/server/wifi/WifiNative$BucketSettings;
    .end local v4    # "schedule":Lcom/android/server/wifi/WifiNative$ScanSettings;
    :cond_4
    iget-object v8, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mPnoScanStateMachine:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    #@191
    if-eqz v8, :cond_5

    #@193
    .line 2625
    iget-object v8, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mPnoScanStateMachine:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    #@195
    invoke-virtual {v8, p1, p2, p3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@198
    .line 2582
    :cond_5
    return-void
.end method

.method public getAvailableChannels(I)Landroid/os/Bundle;
    .locals 7
    .param p1, "band"    # I

    #@0
    .prologue
    .line 109
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    #@2
    invoke-virtual {v4}, Lcom/android/server/wifi/scanner/ChannelHelper;->updateChannels()V

    #@5
    .line 110
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    #@7
    invoke-virtual {v4, p1}, Lcom/android/server/wifi/scanner/ChannelHelper;->getAvailableScanChannels(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@a
    move-result-object v2

    #@b
    .line 111
    .local v2, "channelSpecs":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    new-instance v3, Ljava/util/ArrayList;

    #@d
    array-length v4, v2

    #@e
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    #@11
    .line 112
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    #@12
    array-length v5, v2

    #@13
    :goto_0
    if-ge v4, v5, :cond_0

    #@15
    aget-object v1, v2, v4

    #@17
    .line 113
    .local v1, "channelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    iget v6, v1, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    #@19
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c
    move-result-object v6

    #@1d
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@20
    .line 112
    add-int/lit8 v4, v4, 0x1

    #@22
    goto :goto_0

    #@23
    .line 115
    .end local v1    # "channelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    #@25
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@28
    .line 116
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v4, "Channels"

    #@2b
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@2e
    .line 117
    return-object v0
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 99
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mClientHandler:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 100
    new-instance v0, Landroid/os/Messenger;

    #@7
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mClientHandler:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;

    #@9
    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    #@c
    return-object v0

    #@d
    .line 102
    :cond_0
    const-string/jumbo v0, "WifiScanningServiceImpl trying to get messenger w/o initialization"

    #@10
    invoke-direct {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->loge(Ljava/lang/String;)V

    #@13
    .line 103
    return-object v1
.end method

.method logCallback(Ljava/lang/String;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILjava/lang/String;)V
    .locals 3
    .param p1, "callback"    # Ljava/lang/String;
    .param p2, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .param p3, "id"    # I
    .param p4, "extra"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2652
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 2653
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v1

    #@9
    .line 2654
    const-string/jumbo v2, ": "

    #@c
    .line 2653
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    .line 2655
    if-nez p2, :cond_1

    #@12
    const-string/jumbo v1, "ClientInfo[unknown]"

    #@15
    .line 2653
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    .line 2656
    const-string/jumbo v2, ",Id="

    #@1c
    .line 2653
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    .line 2658
    if-eqz p4, :cond_0

    #@25
    .line 2659
    const-string/jumbo v1, ","

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    .line 2661
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-direct {p0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->localLog(Ljava/lang/String;)V

    #@36
    .line 2651
    return-void

    #@37
    .line 2655
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->toString()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    goto :goto_0
.end method

.method logScanRequest(Ljava/lang/String;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/os/WorkSource;Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;)V
    .locals 3
    .param p1, "request"    # Ljava/lang/String;
    .param p2, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .param p3, "id"    # I
    .param p4, "workSource"    # Landroid/os/WorkSource;
    .param p5, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p6, "pnoSettings"    # Landroid/net/wifi/WifiScanner$PnoSettings;

    #@0
    .prologue
    .line 2631
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 2632
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v1

    #@9
    .line 2633
    const-string/jumbo v2, ": "

    #@c
    .line 2632
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    .line 2634
    if-nez p2, :cond_3

    #@12
    const-string/jumbo v1, "ClientInfo[unknown]"

    #@15
    .line 2632
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    .line 2635
    const-string/jumbo v2, ",Id="

    #@1c
    .line 2632
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    .line 2637
    if-eqz p4, :cond_0

    #@25
    .line 2638
    const-string/jumbo v1, ","

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    .line 2640
    :cond_0
    if-eqz p5, :cond_1

    #@31
    .line 2641
    const-string/jumbo v1, ", "

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    .line 2642
    invoke-static {v0, p5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->describeTo(Ljava/lang/StringBuilder;Landroid/net/wifi/WifiScanner$ScanSettings;)Ljava/lang/String;

    #@3a
    .line 2644
    :cond_1
    if-eqz p6, :cond_2

    #@3c
    .line 2645
    const-string/jumbo v1, ", "

    #@3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    .line 2646
    invoke-static {v0, p6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->describeTo(Ljava/lang/StringBuilder;Landroid/net/wifi/WifiScanner$PnoSettings;)Ljava/lang/String;

    #@45
    .line 2648
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    invoke-direct {p0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->localLog(Ljava/lang/String;)V

    #@4c
    .line 2630
    return-void

    #@4d
    .line 2634
    :cond_3
    invoke-virtual {p2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->toString()Ljava/lang/String;

    #@50
    move-result-object v1

    #@51
    goto :goto_0
.end method

.method replyFailed(Landroid/os/Message;ILjava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "reason"    # I
    .param p3, "description"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2104
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 2105
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@7
    move-result-object v1

    #@8
    .line 2106
    .local v1, "reply":Landroid/os/Message;
    const v2, 0x27012

    #@b
    iput v2, v1, Landroid/os/Message;->what:I

    #@d
    .line 2107
    iget v2, p1, Landroid/os/Message;->arg2:I

    #@f
    iput v2, v1, Landroid/os/Message;->arg2:I

    #@11
    .line 2108
    new-instance v2, Landroid/net/wifi/WifiScanner$OperationResult;

    #@13
    invoke-direct {v2, p2, p3}, Landroid/net/wifi/WifiScanner$OperationResult;-><init>(ILjava/lang/String;)V

    #@16
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@18
    .line 2110
    :try_start_0
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@1a
    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 2103
    .end local v1    # "reply":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    #@1e
    .line 2111
    .restart local v1    # "reply":Landroid/os/Message;
    :catch_0
    move-exception v0

    #@1f
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method replySucceeded(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2089
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 2090
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@7
    move-result-object v1

    #@8
    .line 2091
    .local v1, "reply":Landroid/os/Message;
    const v2, 0x27011

    #@b
    iput v2, v1, Landroid/os/Message;->what:I

    #@d
    .line 2092
    iget v2, p1, Landroid/os/Message;->arg2:I

    #@f
    iput v2, v1, Landroid/os/Message;->arg2:I

    #@11
    .line 2094
    :try_start_0
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@13
    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 2088
    .end local v1    # "reply":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    #@17
    .line 2095
    .restart local v1    # "reply":Landroid/os/Message;
    :catch_0
    move-exception v0

    #@18
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public startService()V
    .locals 4

    #@0
    .prologue
    .line 288
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;

    #@2
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mLooper:Landroid/os/Looper;

    #@4
    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Landroid/os/Looper;)V

    #@7
    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mClientHandler:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;

    #@9
    .line 289
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    #@b
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mLooper:Landroid/os/Looper;

    #@d
    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Landroid/os/Looper;)V

    #@10
    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mBackgroundScanStateMachine:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    #@12
    .line 290
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    #@14
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mLooper:Landroid/os/Looper;

    #@16
    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Landroid/os/Looper;)V

    #@19
    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mWifiChangeStateMachine:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    #@1b
    .line 291
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    #@1d
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mLooper:Landroid/os/Looper;

    #@1f
    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Landroid/os/Looper;)V

    #@22
    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mSingleScanStateMachine:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    #@24
    .line 292
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    #@26
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mLooper:Landroid/os/Looper;

    #@28
    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Landroid/os/Looper;)V

    #@2b
    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mPnoScanStateMachine:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    #@2d
    .line 294
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mContext:Landroid/content/Context;

    #@2f
    .line 295
    new-instance v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$1;

    #@31
    invoke-direct {v1, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$1;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)V

    #@34
    .line 311
    new-instance v2, Landroid/content/IntentFilter;

    #@36
    const-string/jumbo v3, "wifi_scan_available"

    #@39
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@3c
    .line 294
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@3f
    .line 313
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mBackgroundScanStateMachine:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    #@41
    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->start()V

    #@44
    .line 314
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mWifiChangeStateMachine:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    #@46
    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->start()V

    #@49
    .line 315
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mSingleScanStateMachine:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    #@4b
    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->start()V

    #@4e
    .line 316
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->mPnoScanStateMachine:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    #@50
    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->start()V

    #@53
    .line 287
    return-void
.end method
