.class public Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;
.super Lcom/android/server/wifi/scanner/WifiScannerImpl;
.source "SupplicantWifiScannerImpl.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$1;,
        Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$2;,
        Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$3;,
        Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;,
        Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;,
        Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;,
        Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;
    }
.end annotation


# static fields
.field private static final ACTION_SCAN_PERIOD:Ljava/lang/String; = "com.android.server.util.SupplicantWifiScannerImpl.action.SCAN_PERIOD"

.field public static final BACKGROUND_PERIOD_ALARM_TAG:Ljava/lang/String; = "SupplicantWifiScannerImpl Background Scan Period"

.field private static final DBG:Z = false

.field private static final MAX_APS_PER_SCAN:I = 0x20

.field public static final MAX_HIDDEN_NETWORK_IDS_PER_SCAN:I = 0x10

.field private static final MAX_SCAN_BUCKETS:I = 0x10

.field private static final SCAN_BUFFER_CAPACITY:I = 0xa

.field private static final SCAN_TIMEOUT_MS:J = 0x3a98L

.field private static final TAG:Ljava/lang/String; = "SupplicantWifiScannerImpl"

.field public static final TIMEOUT_ALARM_TAG:Ljava/lang/String; = "SupplicantWifiScannerImpl Scan Timeout"


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mBackgroundScanBuffer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;

.field private mBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

.field private mBackgroundScanPaused:Z

.field private mBackgroundScanPeriodPending:Z

.field private mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

.field private final mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

.field private final mClock:Lcom/android/server/wifi/Clock;

.field private final mContext:Landroid/content/Context;

.field private final mEventHandler:Landroid/os/Handler;

.field private mHotlistChangeBuffer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;

.field private mHotlistHandler:Lcom/android/server/wifi/WifiNative$HotlistEventHandler;

.field private final mHwPnoDebouncer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;

.field private final mHwPnoDebouncerListener:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer$Listener;

.field private final mHwPnoScanSupported:Z

.field private mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

.field private mLatestSingleScanResult:Landroid/net/wifi/WifiScanner$ScanData;

.field private mNextBackgroundScanId:I

.field private mNextBackgroundScanPeriod:I

.field private mPendingBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

.field private mPendingBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

.field private mPendingSingleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

.field private mPendingSingleScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

.field private mPnoEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

.field private mPnoSettings:Lcom/android/server/wifi/WifiNative$PnoSettings;

.field mScanPeriodListener:Landroid/app/AlarmManager$OnAlarmListener;

.field mScanTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mSettingsLock:Ljava/lang/Object;

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;)Lcom/android/server/wifi/WifiNative$PnoEventHandler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPnoEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mSettingsLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;Lcom/android/server/wifi/WifiNative$PnoEventHandler;)Lcom/android/server/wifi/WifiNative$PnoEventHandler;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPnoEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;Lcom/android/server/wifi/WifiNative$PnoSettings;)Lcom/android/server/wifi/WifiNative$PnoSettings;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPnoSettings:Lcom/android/server/wifi/WifiNative$PnoSettings;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->handleScanPeriod()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->handleScanTimeout()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->reportPnoScanFailure()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;Landroid/os/Looper;Lcom/android/server/wifi/Clock;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "clock"    # Lcom/android/server/wifi/Clock;

    #@0
    .prologue
    .line 157
    new-instance v3, Lcom/android/server/wifi/scanner/NoBandChannelHelper;

    #@2
    invoke-direct {v3}, Lcom/android/server/wifi/scanner/NoBandChannelHelper;-><init>()V

    #@5
    move-object v0, p0

    #@6
    move-object v1, p1

    #@7
    move-object v2, p2

    #@8
    move-object v4, p3

    #@9
    move-object v5, p4

    #@a
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/scanner/ChannelHelper;Landroid/os/Looper;Lcom/android/server/wifi/Clock;)V

    #@d
    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/scanner/ChannelHelper;Landroid/os/Looper;Lcom/android/server/wifi/Clock;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p3, "channelHelper"    # Lcom/android/server/wifi/scanner/ChannelHelper;
    .param p4, "looper"    # Landroid/os/Looper;
    .param p5, "clock"    # Lcom/android/server/wifi/Clock;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 134
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WifiScannerImpl;-><init>()V

    #@5
    .line 71
    new-instance v0, Ljava/lang/Object;

    #@7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mSettingsLock:Ljava/lang/Object;

    #@c
    .line 74
    iput-object v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@e
    .line 75
    iput-object v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@10
    .line 76
    iput-object v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingSingleScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@12
    .line 77
    iput-object v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingSingleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@14
    .line 80
    iput-object v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@16
    .line 81
    iput-object v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@18
    .line 82
    iput v3, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mNextBackgroundScanPeriod:I

    #@1a
    .line 83
    iput v3, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mNextBackgroundScanId:I

    #@1c
    .line 84
    iput-boolean v3, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanPeriodPending:Z

    #@1e
    .line 85
    iput-boolean v3, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanPaused:Z

    #@20
    .line 86
    new-instance v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;

    #@22
    const/16 v1, 0xa

    #@24
    invoke-direct {v0, v1}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;-><init>(I)V

    #@27
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanBuffer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;

    #@29
    .line 89
    new-instance v0, Landroid/net/wifi/WifiScanner$ScanData;

    #@2b
    new-array v1, v3, [Landroid/net/wifi/ScanResult;

    #@2d
    invoke-direct {v0, v3, v3, v1}, Landroid/net/wifi/WifiScanner$ScanData;-><init>(II[Landroid/net/wifi/ScanResult;)V

    #@30
    .line 88
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLatestSingleScanResult:Landroid/net/wifi/WifiScanner$ScanData;

    #@32
    .line 92
    iput-object v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@34
    .line 95
    iput-object v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHotlistHandler:Lcom/android/server/wifi/WifiNative$HotlistEventHandler;

    #@36
    .line 96
    new-instance v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;

    #@38
    invoke-direct {v0, v2}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;-><init>(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;)V

    #@3b
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHotlistChangeBuffer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;

    #@3d
    .line 99
    iput-object v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPnoSettings:Lcom/android/server/wifi/WifiNative$PnoSettings;

    #@3f
    .line 103
    new-instance v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$1;

    #@41
    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$1;-><init>(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;)V

    #@44
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHwPnoDebouncerListener:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer$Listener;

    #@46
    .line 118
    new-instance v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$2;

    #@48
    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$2;-><init>(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;)V

    #@4b
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mScanPeriodListener:Landroid/app/AlarmManager$OnAlarmListener;

    #@4d
    .line 126
    new-instance v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$3;

    #@4f
    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$3;-><init>(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;)V

    #@52
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mScanTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    #@54
    .line 136
    iput-object p1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mContext:Landroid/content/Context;

    #@56
    .line 137
    iput-object p2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@58
    .line 138
    iput-object p3, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    #@5a
    .line 139
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mContext:Landroid/content/Context;

    #@5c
    const-string/jumbo v1, "alarm"

    #@5f
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@62
    move-result-object v0

    #@63
    check-cast v0, Landroid/app/AlarmManager;

    #@65
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    #@67
    .line 140
    new-instance v0, Landroid/os/Handler;

    #@69
    invoke-direct {v0, p4, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    #@6c
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mEventHandler:Landroid/os/Handler;

    #@6e
    .line 141
    iput-object p5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mClock:Lcom/android/server/wifi/Clock;

    #@70
    .line 142
    new-instance v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;

    #@72
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@74
    iget-object v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    #@76
    iget-object v3, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mEventHandler:Landroid/os/Handler;

    #@78
    iget-object v4, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mClock:Lcom/android/server/wifi/Clock;

    #@7a
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;-><init>(Lcom/android/server/wifi/WifiNative;Landroid/app/AlarmManager;Landroid/os/Handler;Lcom/android/server/wifi/Clock;)V

    #@7d
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHwPnoDebouncer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;

    #@7f
    .line 145
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mContext:Landroid/content/Context;

    #@81
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@84
    move-result-object v0

    #@85
    .line 146
    const v1, 0x1120018

    #@88
    .line 145
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@8b
    move-result v0

    #@8c
    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHwPnoScanSupported:Z

    #@8e
    .line 148
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->getInstance()Lcom/android/server/wifi/WifiMonitor;

    #@91
    move-result-object v0

    #@92
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@94
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->getInterfaceName()Ljava/lang/String;

    #@97
    move-result-object v1

    #@98
    .line 149
    iget-object v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mEventHandler:Landroid/os/Handler;

    #@9a
    const v3, 0x24011

    #@9d
    .line 148
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    #@a0
    .line 150
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->getInstance()Lcom/android/server/wifi/WifiMonitor;

    #@a3
    move-result-object v0

    #@a4
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@a6
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->getInterfaceName()Ljava/lang/String;

    #@a9
    move-result-object v1

    #@aa
    .line 151
    iget-object v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mEventHandler:Landroid/os/Handler;

    #@ac
    const v3, 0x24005

    #@af
    .line 150
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    #@b2
    .line 135
    return-void
.end method

.method private handleScanPeriod()V
    .locals 2

    #@0
    .prologue
    .line 320
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mSettingsLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 321
    const/4 v0, 0x1

    #@4
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanPeriodPending:Z

    #@6
    .line 322
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->processPendingScans()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    .line 319
    return-void

    #@b
    .line 320
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method private handleScanTimeout()V
    .locals 2

    #@0
    .prologue
    .line 327
    const-string/jumbo v0, "SupplicantWifiScannerImpl"

    #@3
    const-string/jumbo v1, "Timed out waiting for scan result from supplicant"

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 328
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->reportScanFailure()V

    #@c
    .line 329
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->processPendingScans()V

    #@f
    .line 326
    return-void
.end method

.method private isDifferentPnoScanSettings(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;)Z
    .locals 3
    .param p1, "newScanSettings"    # Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 333
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 334
    iget-object v1, p1, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->pnoNetworkList:[Lcom/android/server/wifi/WifiNative$PnoNetwork;

    #@7
    iget-object v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@9
    iget-object v2, v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->pnoNetworkList:[Lcom/android/server/wifi/WifiNative$PnoNetwork;

    #@b
    .line 333
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    const/4 v0, 0x0

    #@12
    :cond_0
    return v0
.end method

.method private isHwPnoScanRequired()Z
    .locals 1

    #@0
    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPnoSettings:Lcom/android/server/wifi/WifiNative$PnoSettings;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 719
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPnoSettings:Lcom/android/server/wifi/WifiNative$PnoSettings;

    #@8
    iget-boolean v0, v0, Lcom/android/server/wifi/WifiNative$PnoSettings;->isConnected:Z

    #@a
    invoke-direct {p0, v0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->isHwPnoScanRequired(Z)Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method private isHwPnoScanRequired(Z)Z
    .locals 2
    .param p1, "isConnectedPno"    # Z

    #@0
    .prologue
    .line 714
    if-eqz p1, :cond_0

    #@2
    const/4 v0, 0x0

    #@3
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHwPnoScanSupported:Z

    #@5
    and-int/2addr v0, v1

    #@6
    return v0

    #@7
    :cond_0
    const/4 v0, 0x1

    #@8
    goto :goto_0
.end method

.method private pauseHwPnoScan()V
    .locals 1

    #@0
    .prologue
    .line 700
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHwPnoDebouncer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->forceStopPnoScan()V

    #@5
    .line 699
    return-void
.end method

.method private pollLatestScanData()V
    .locals 22

    #@0
    .prologue
    .line 544
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mSettingsLock:Ljava/lang/Object;

    #@4
    move-object/from16 v19, v0

    #@6
    monitor-enter v19

    #@7
    .line 545
    :try_start_0
    move-object/from16 v0, p0

    #@9
    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    if-nez v2, :cond_0

    #@d
    monitor-exit v19

    #@e
    .line 547
    return-void

    #@f
    .line 551
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    #@11
    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@13
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->getScanResults()Ljava/util/ArrayList;

    #@16
    move-result-object v12

    #@17
    .line 552
    .local v12, "nativeResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/ScanDetail;>;"
    new-instance v18, Ljava/util/ArrayList;

    #@19
    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    #@1c
    .line 553
    .local v18, "singleScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    new-instance v8, Ljava/util/ArrayList;

    #@1e
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    #@21
    .line 554
    .local v8, "backgroundScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    new-instance v10, Ljava/util/ArrayList;

    #@23
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    #@26
    .line 555
    .local v10, "hwPnoScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v11, 0x0

    #@27
    .local v11, "i":I
    :goto_0
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    #@2a
    move-result v2

    #@2b
    if-ge v11, v2, :cond_4

    #@2d
    .line 556
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@30
    move-result-object v2

    #@31
    check-cast v2, Lcom/android/server/wifi/ScanDetail;

    #@33
    invoke-virtual {v2}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    #@36
    move-result-object v14

    #@37
    .line 557
    .local v14, "result":Landroid/net/wifi/ScanResult;
    iget-wide v2, v14, Landroid/net/wifi/ScanResult;->timestamp:J

    #@39
    const-wide/16 v4, 0x3e8

    #@3b
    div-long v20, v2, v4

    #@3d
    .line 558
    .local v20, "timestamp_ms":J
    move-object/from16 v0, p0

    #@3f
    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@41
    iget-wide v2, v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->startTime:J

    #@43
    cmp-long v2, v20, v2

    #@45
    if-lez v2, :cond_3

    #@47
    .line 559
    move-object/from16 v0, p0

    #@49
    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@4b
    iget-boolean v2, v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->backgroundScanActive:Z

    #@4d
    if-eqz v2, :cond_1

    #@4f
    .line 560
    invoke-interface {v8, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@52
    .line 562
    :cond_1
    move-object/from16 v0, p0

    #@54
    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@56
    iget-boolean v2, v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->singleScanActive:Z

    #@58
    if-eqz v2, :cond_2

    #@5a
    .line 563
    move-object/from16 v0, p0

    #@5c
    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@5e
    iget-object v2, v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->singleScanFreqs:Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    #@60
    .line 564
    iget v3, v14, Landroid/net/wifi/ScanResult;->frequency:I

    #@62
    .line 563
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->containsChannel(I)Z

    #@65
    move-result v2

    #@66
    .line 562
    if-eqz v2, :cond_2

    #@68
    .line 565
    move-object/from16 v0, v18

    #@6a
    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@6d
    .line 567
    :cond_2
    move-object/from16 v0, p0

    #@6f
    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@71
    iget-boolean v2, v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->hwPnoScanActive:Z

    #@73
    if-eqz v2, :cond_3

    #@75
    .line 568
    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@78
    .line 555
    :cond_3
    add-int/lit8 v11, v11, 0x1

    #@7a
    goto :goto_0

    #@7b
    .line 575
    .end local v14    # "result":Landroid/net/wifi/ScanResult;
    .end local v20    # "timestamp_ms":J
    :cond_4
    move-object/from16 v0, p0

    #@7d
    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@7f
    iget-boolean v2, v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->backgroundScanActive:Z

    #@81
    if-eqz v2, :cond_b

    #@83
    .line 576
    move-object/from16 v0, p0

    #@85
    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@87
    if-eqz v2, :cond_5

    #@89
    .line 577
    move-object/from16 v0, p0

    #@8b
    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@8d
    iget v2, v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->reportEvents:I

    #@8f
    and-int/lit8 v2, v2, 0x2

    #@91
    if-eqz v2, :cond_5

    #@93
    .line 579
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@96
    move-result-object v16

    #@97
    .local v16, "scanResult$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    #@9a
    move-result v2

    #@9b
    if-eqz v2, :cond_5

    #@9d
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@a0
    move-result-object v15

    #@a1
    check-cast v15, Landroid/net/wifi/ScanResult;

    #@a3
    .line 581
    .local v15, "scanResult":Landroid/net/wifi/ScanResult;
    move-object/from16 v0, p0

    #@a5
    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@a7
    const/4 v3, 0x0

    #@a8
    invoke-interface {v2, v15, v3}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onFullScanResult(Landroid/net/wifi/ScanResult;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@ab
    goto :goto_1

    #@ac
    .line 544
    .end local v8    # "backgroundScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v10    # "hwPnoScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v11    # "i":I
    .end local v12    # "nativeResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/ScanDetail;>;"
    .end local v15    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v16    # "scanResult$iterator":Ljava/util/Iterator;
    .end local v18    # "singleScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :catchall_0
    move-exception v2

    #@ad
    monitor-exit v19

    #@ae
    throw v2

    #@af
    .line 586
    .restart local v8    # "backgroundScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .restart local v10    # "hwPnoScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .restart local v11    # "i":I
    .restart local v12    # "nativeResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/ScanDetail;>;"
    .restart local v18    # "singleScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_5
    :try_start_2
    sget-object v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->SCAN_RESULT_SORT_COMPARATOR:Ljava/util/Comparator;

    #@b1
    invoke-static {v8, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@b4
    .line 587
    move-object/from16 v0, p0

    #@b6
    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@b8
    iget v2, v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->maxAps:I

    #@ba
    .line 588
    invoke-interface {v8}, Ljava/util/List;->size()I

    #@bd
    move-result v3

    #@be
    .line 587
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    #@c1
    move-result v2

    #@c2
    new-array v0, v2, [Landroid/net/wifi/ScanResult;

    #@c4
    move-object/from16 v17, v0

    #@c6
    .line 589
    .local v17, "scanResultsArray":[Landroid/net/wifi/ScanResult;
    const/4 v11, 0x0

    #@c7
    :goto_2
    move-object/from16 v0, v17

    #@c9
    array-length v2, v0

    #@ca
    if-ge v11, v2, :cond_6

    #@cc
    .line 590
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@cf
    move-result-object v2

    #@d0
    check-cast v2, Landroid/net/wifi/ScanResult;

    #@d2
    aput-object v2, v17, v11

    #@d4
    .line 589
    add-int/lit8 v11, v11, 0x1

    #@d6
    goto :goto_2

    #@d7
    .line 593
    :cond_6
    move-object/from16 v0, p0

    #@d9
    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@db
    iget v2, v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->reportEvents:I

    #@dd
    and-int/lit8 v2, v2, 0x4

    #@df
    if-nez v2, :cond_7

    #@e1
    .line 595
    move-object/from16 v0, p0

    #@e3
    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanBuffer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;

    #@e5
    new-instance v3, Landroid/net/wifi/WifiScanner$ScanData;

    #@e7
    move-object/from16 v0, p0

    #@e9
    iget-object v4, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@eb
    iget v4, v4, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->scanId:I

    #@ed
    const/4 v5, 0x0

    #@ee
    move-object/from16 v0, v17

    #@f0
    invoke-direct {v3, v4, v5, v0}, Landroid/net/wifi/WifiScanner$ScanData;-><init>(II[Landroid/net/wifi/ScanResult;)V

    #@f3
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;->add(Landroid/net/wifi/WifiScanner$ScanData;)V

    #@f6
    .line 599
    :cond_7
    move-object/from16 v0, p0

    #@f8
    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@fa
    if-eqz v2, :cond_9

    #@fc
    .line 600
    move-object/from16 v0, p0

    #@fe
    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@100
    iget v2, v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->reportEvents:I

    #@102
    and-int/lit8 v2, v2, 0x2

    #@104
    if-nez v2, :cond_8

    #@106
    .line 602
    move-object/from16 v0, p0

    #@108
    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@10a
    iget v2, v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->reportEvents:I

    #@10c
    and-int/lit8 v2, v2, 0x1

    #@10e
    if-eqz v2, :cond_c

    #@110
    .line 612
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    #@112
    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@114
    .line 613
    const/4 v3, 0x0

    #@115
    .line 612
    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onScanStatus(I)V

    #@118
    .line 617
    :cond_9
    move-object/from16 v0, p0

    #@11a
    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHotlistHandler:Lcom/android/server/wifi/WifiNative$HotlistEventHandler;

    #@11c
    if-eqz v2, :cond_b

    #@11e
    .line 618
    move-object/from16 v0, p0

    #@120
    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHotlistChangeBuffer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;

    #@122
    invoke-virtual {v2, v8}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->processScan(Ljava/util/List;)I

    #@125
    move-result v9

    #@126
    .line 619
    .local v9, "event":I
    sget v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->EVENT_FOUND:I

    #@128
    and-int/2addr v2, v9

    #@129
    if-eqz v2, :cond_a

    #@12b
    .line 620
    move-object/from16 v0, p0

    #@12d
    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHotlistHandler:Lcom/android/server/wifi/WifiNative$HotlistEventHandler;

    #@12f
    .line 621
    move-object/from16 v0, p0

    #@131
    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHotlistChangeBuffer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;

    #@133
    sget v4, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->EVENT_FOUND:I

    #@135
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->getLastResults(I)[Landroid/net/wifi/ScanResult;

    #@138
    move-result-object v3

    #@139
    .line 620
    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiNative$HotlistEventHandler;->onHotlistApFound([Landroid/net/wifi/ScanResult;)V

    #@13c
    .line 623
    :cond_a
    sget v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->EVENT_LOST:I

    #@13e
    and-int/2addr v2, v9

    #@13f
    if-eqz v2, :cond_b

    #@141
    .line 624
    move-object/from16 v0, p0

    #@143
    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHotlistHandler:Lcom/android/server/wifi/WifiNative$HotlistEventHandler;

    #@145
    .line 625
    move-object/from16 v0, p0

    #@147
    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHotlistChangeBuffer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;

    #@149
    sget v4, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->EVENT_LOST:I

    #@14b
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->getLastResults(I)[Landroid/net/wifi/ScanResult;

    #@14e
    move-result-object v3

    #@14f
    .line 624
    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiNative$HotlistEventHandler;->onHotlistApLost([Landroid/net/wifi/ScanResult;)V

    #@152
    .line 630
    .end local v9    # "event":I
    .end local v17    # "scanResultsArray":[Landroid/net/wifi/ScanResult;
    :cond_b
    move-object/from16 v0, p0

    #@154
    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@156
    iget-boolean v2, v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->singleScanActive:Z

    #@158
    if-eqz v2, :cond_e

    #@15a
    .line 631
    move-object/from16 v0, p0

    #@15c
    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@15e
    iget-object v2, v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->singleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@160
    if-eqz v2, :cond_e

    #@162
    .line 632
    move-object/from16 v0, p0

    #@164
    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@166
    iget-boolean v2, v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->reportSingleScanFullResults:Z

    #@168
    if-eqz v2, :cond_d

    #@16a
    .line 633
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16d
    move-result-object v16

    #@16e
    .restart local v16    # "scanResult$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    #@171
    move-result v2

    #@172
    if-eqz v2, :cond_d

    #@174
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@177
    move-result-object v15

    #@178
    check-cast v15, Landroid/net/wifi/ScanResult;

    #@17a
    .line 635
    .restart local v15    # "scanResult":Landroid/net/wifi/ScanResult;
    move-object/from16 v0, p0

    #@17c
    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@17e
    iget-object v2, v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->singleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@180
    .line 636
    const/4 v3, 0x0

    #@181
    .line 635
    invoke-interface {v2, v15, v3}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onFullScanResult(Landroid/net/wifi/ScanResult;I)V

    #@184
    goto :goto_4

    #@185
    .line 604
    .end local v15    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v16    # "scanResult$iterator":Ljava/util/Iterator;
    .restart local v17    # "scanResultsArray":[Landroid/net/wifi/ScanResult;
    :cond_c
    move-object/from16 v0, p0

    #@187
    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@189
    iget v2, v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->reportEvents:I

    #@18b
    if-nez v2, :cond_9

    #@18d
    .line 606
    move-object/from16 v0, p0

    #@18f
    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanBuffer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;

    #@191
    invoke-virtual {v2}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;->size()I

    #@194
    move-result v2

    #@195
    .line 607
    move-object/from16 v0, p0

    #@197
    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanBuffer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;

    #@199
    invoke-virtual {v3}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;->capacity()I

    #@19c
    move-result v3

    #@19d
    .line 608
    move-object/from16 v0, p0

    #@19f
    iget-object v4, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@1a1
    iget v4, v4, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->reportPercentThreshold:I

    #@1a3
    .line 607
    mul-int/2addr v3, v4

    #@1a4
    div-int/lit8 v3, v3, 0x64

    #@1a6
    .line 606
    if-ge v2, v3, :cond_8

    #@1a8
    .line 610
    move-object/from16 v0, p0

    #@1aa
    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanBuffer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;

    #@1ac
    invoke-virtual {v2}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;->size()I

    #@1af
    move-result v2

    #@1b0
    .line 611
    move-object/from16 v0, p0

    #@1b2
    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@1b4
    iget v3, v3, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->reportNumScansThreshold:I

    #@1b6
    .line 610
    if-lt v2, v3, :cond_9

    #@1b8
    goto/16 :goto_3

    #@1ba
    .line 639
    .end local v17    # "scanResultsArray":[Landroid/net/wifi/ScanResult;
    :cond_d
    sget-object v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->SCAN_RESULT_SORT_COMPARATOR:Ljava/util/Comparator;

    #@1bc
    move-object/from16 v0, v18

    #@1be
    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@1c1
    .line 640
    new-instance v2, Landroid/net/wifi/WifiScanner$ScanData;

    #@1c3
    move-object/from16 v0, p0

    #@1c5
    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@1c7
    iget v3, v3, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->scanId:I

    #@1c9
    .line 641
    move-object/from16 v0, p0

    #@1cb
    iget-object v4, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@1cd
    iget-object v4, v4, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->singleScanFreqs:Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    #@1cf
    invoke-virtual {v4}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->isAllChannels()Z

    #@1d2
    move-result v6

    #@1d3
    .line 642
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    #@1d6
    move-result v4

    #@1d7
    new-array v4, v4, [Landroid/net/wifi/ScanResult;

    #@1d9
    move-object/from16 v0, v18

    #@1db
    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@1de
    move-result-object v7

    #@1df
    check-cast v7, [Landroid/net/wifi/ScanResult;

    #@1e1
    .line 640
    const/4 v4, 0x0

    #@1e2
    const/4 v5, 0x0

    #@1e3
    invoke-direct/range {v2 .. v7}, Landroid/net/wifi/WifiScanner$ScanData;-><init>(IIIZ[Landroid/net/wifi/ScanResult;)V

    #@1e6
    move-object/from16 v0, p0

    #@1e8
    iput-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLatestSingleScanResult:Landroid/net/wifi/WifiScanner$ScanData;

    #@1ea
    .line 643
    move-object/from16 v0, p0

    #@1ec
    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@1ee
    iget-object v2, v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->singleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@1f0
    .line 644
    const/4 v3, 0x0

    #@1f1
    .line 643
    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onScanStatus(I)V

    #@1f4
    .line 647
    :cond_e
    move-object/from16 v0, p0

    #@1f6
    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@1f8
    iget-boolean v2, v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->hwPnoScanActive:Z

    #@1fa
    if-eqz v2, :cond_10

    #@1fc
    .line 648
    move-object/from16 v0, p0

    #@1fe
    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@200
    iget-object v2, v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->pnoScanEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    #@202
    if-eqz v2, :cond_10

    #@204
    .line 649
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@207
    move-result v2

    #@208
    new-array v13, v2, [Landroid/net/wifi/ScanResult;

    #@20a
    .line 650
    .local v13, "pnoScanResultsArray":[Landroid/net/wifi/ScanResult;
    const/4 v11, 0x0

    #@20b
    :goto_5
    array-length v2, v13

    #@20c
    if-ge v11, v2, :cond_f

    #@20e
    .line 651
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@211
    move-result-object v2

    #@212
    check-cast v2, Landroid/net/wifi/ScanResult;

    #@214
    aput-object v2, v13, v11

    #@216
    .line 650
    add-int/lit8 v11, v11, 0x1

    #@218
    goto :goto_5

    #@219
    .line 653
    :cond_f
    move-object/from16 v0, p0

    #@21b
    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@21d
    iget-object v2, v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->pnoScanEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    #@21f
    invoke-interface {v2, v13}, Lcom/android/server/wifi/WifiNative$PnoEventHandler;->onPnoNetworkFound([Landroid/net/wifi/ScanResult;)V

    #@222
    .line 656
    .end local v13    # "pnoScanResultsArray":[Landroid/net/wifi/ScanResult;
    :cond_10
    const/4 v2, 0x0

    #@223
    move-object/from16 v0, p0

    #@225
    iput-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@227
    monitor-exit v19

    #@228
    .line 543
    return-void
.end method

.method private processPendingScans()V
    .locals 27

    #@0
    .prologue
    .line 338
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mSettingsLock:Ljava/lang/Object;

    #@4
    move-object/from16 v26, v0

    #@6
    monitor-enter v26

    #@7
    .line 342
    :try_start_0
    move-object/from16 v0, p0

    #@9
    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@b
    if-eqz v3, :cond_0

    #@d
    move-object/from16 v0, p0

    #@f
    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@11
    iget-boolean v3, v3, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->hwPnoScanActive:Z

    #@13
    if-eqz v3, :cond_6

    #@15
    .line 346
    :cond_0
    move-object/from16 v0, p0

    #@17
    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    #@19
    invoke-virtual {v3}, Lcom/android/server/wifi/scanner/ChannelHelper;->createChannelCollection()Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    #@1c
    move-result-object v13

    #@1d
    .line 347
    .local v13, "allFreqs":Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    new-instance v18, Ljava/util/HashSet;

    #@1f
    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    #@22
    .line 349
    .local v18, "hiddenNetworkIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@24
    move-object/from16 v0, p0

    #@26
    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mClock:Lcom/android/server/wifi/Clock;

    #@28
    invoke-virtual {v3}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    #@2b
    move-result-wide v6

    #@2c
    invoke-direct {v2, v6, v7}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;-><init>(J)V

    #@2f
    .line 352
    .local v2, "newScanSettings":Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;
    move-object/from16 v0, p0

    #@31
    iget-boolean v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanPaused:Z

    #@33
    if-nez v3, :cond_a

    #@35
    .line 353
    move-object/from16 v0, p0

    #@37
    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@39
    if-eqz v3, :cond_1

    #@3b
    .line 354
    move-object/from16 v0, p0

    #@3d
    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@3f
    move-object/from16 v0, p0

    #@41
    iput-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@43
    .line 355
    move-object/from16 v0, p0

    #@45
    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@47
    move-object/from16 v0, p0

    #@49
    iput-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@4b
    .line 356
    const/4 v3, 0x0

    #@4c
    move-object/from16 v0, p0

    #@4e
    iput v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mNextBackgroundScanPeriod:I

    #@50
    .line 357
    const/4 v3, 0x0

    #@51
    move-object/from16 v0, p0

    #@53
    iput-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@55
    .line 358
    const/4 v3, 0x0

    #@56
    move-object/from16 v0, p0

    #@58
    iput-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@5a
    .line 359
    const/4 v3, 0x1

    #@5b
    move-object/from16 v0, p0

    #@5d
    iput-boolean v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanPeriodPending:Z

    #@5f
    .line 361
    :cond_1
    move-object/from16 v0, p0

    #@61
    iget-boolean v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanPeriodPending:Z

    #@63
    if-eqz v3, :cond_a

    #@65
    move-object/from16 v0, p0

    #@67
    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@69
    if-eqz v3, :cond_a

    #@6b
    .line 362
    const/4 v5, 0x4

    #@6c
    .line 363
    .local v5, "reportEvents":I
    const/16 v16, 0x0

    #@6e
    .local v16, "bucket_id":I
    :goto_0
    move-object/from16 v0, p0

    #@70
    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@72
    iget v3, v3, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    #@74
    move/from16 v0, v16

    #@76
    if-ge v0, v3, :cond_7

    #@78
    .line 366
    move-object/from16 v0, p0

    #@7a
    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@7c
    iget-object v3, v3, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    #@7e
    .line 365
    aget-object v14, v3, v16

    #@80
    .line 367
    .local v14, "bucket":Lcom/android/server/wifi/WifiNative$BucketSettings;
    move-object/from16 v0, p0

    #@82
    iget v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mNextBackgroundScanPeriod:I

    #@84
    iget v4, v14, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    #@86
    .line 368
    move-object/from16 v0, p0

    #@88
    iget-object v6, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@8a
    iget v6, v6, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    #@8c
    .line 367
    div-int/2addr v4, v6

    #@8d
    rem-int/2addr v3, v4

    #@8e
    if-nez v3, :cond_5

    #@90
    .line 369
    iget v3, v14, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    #@92
    and-int/lit8 v3, v3, 0x1

    #@94
    if-eqz v3, :cond_2

    #@96
    .line 371
    or-int/lit8 v5, v5, 0x1

    #@98
    .line 373
    :cond_2
    iget v3, v14, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    #@9a
    and-int/lit8 v3, v3, 0x2

    #@9c
    if-eqz v3, :cond_3

    #@9e
    .line 375
    or-int/lit8 v5, v5, 0x2

    #@a0
    .line 378
    :cond_3
    iget v3, v14, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    #@a2
    and-int/lit8 v3, v3, 0x4

    #@a4
    if-nez v3, :cond_4

    #@a6
    .line 380
    and-int/lit8 v5, v5, -0x5

    #@a8
    .line 383
    :cond_4
    invoke-virtual {v13, v14}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->addChannels(Lcom/android/server/wifi/WifiNative$BucketSettings;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@ab
    .line 364
    :cond_5
    add-int/lit8 v16, v16, 0x1

    #@ad
    goto :goto_0

    #@ae
    .end local v2    # "newScanSettings":Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;
    .end local v5    # "reportEvents":I
    .end local v13    # "allFreqs":Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    .end local v14    # "bucket":Lcom/android/server/wifi/WifiNative$BucketSettings;
    .end local v16    # "bucket_id":I
    .end local v18    # "hiddenNetworkIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_6
    monitor-exit v26

    #@af
    .line 343
    return-void

    #@b0
    .line 386
    .restart local v2    # "newScanSettings":Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;
    .restart local v5    # "reportEvents":I
    .restart local v13    # "allFreqs":Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    .restart local v16    # "bucket_id":I
    .restart local v18    # "hiddenNetworkIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_7
    :try_start_1
    invoke-virtual {v13}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->isEmpty()Z

    #@b3
    move-result v3

    #@b4
    if-nez v3, :cond_8

    #@b6
    .line 387
    move-object/from16 v0, p0

    #@b8
    iget v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mNextBackgroundScanId:I

    #@ba
    add-int/lit8 v4, v3, 0x1

    #@bc
    move-object/from16 v0, p0

    #@be
    iput v4, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mNextBackgroundScanId:I

    #@c0
    .line 388
    move-object/from16 v0, p0

    #@c2
    iget-object v4, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@c4
    iget v4, v4, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    #@c6
    .line 389
    move-object/from16 v0, p0

    #@c8
    iget-object v6, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@ca
    iget v6, v6, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_num_scans:I

    #@cc
    .line 390
    move-object/from16 v0, p0

    #@ce
    iget-object v7, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@d0
    iget v7, v7, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_percent:I

    #@d2
    .line 387
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->setBackgroundScan(IIIII)V

    #@d5
    .line 393
    :cond_8
    move-object/from16 v0, p0

    #@d7
    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@d9
    iget-object v0, v3, Lcom/android/server/wifi/WifiNative$ScanSettings;->hiddenNetworkIds:[I

    #@db
    move-object/from16 v19, v0

    #@dd
    .line 394
    .local v19, "hiddenNetworkIds":[I
    if-eqz v19, :cond_9

    #@df
    .line 395
    move-object/from16 v0, v19

    #@e1
    array-length v3, v0

    #@e2
    .line 396
    const/16 v4, 0x10

    #@e4
    .line 395
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@e7
    move-result v21

    #@e8
    .line 397
    .local v21, "numHiddenNetworkIds":I
    const/16 v20, 0x0

    #@ea
    .local v20, "i":I
    :goto_1
    move/from16 v0, v20

    #@ec
    move/from16 v1, v21

    #@ee
    if-ge v0, v1, :cond_9

    #@f0
    .line 398
    aget v3, v19, v20

    #@f2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f5
    move-result-object v3

    #@f6
    move-object/from16 v0, v18

    #@f8
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@fb
    .line 397
    add-int/lit8 v20, v20, 0x1

    #@fd
    goto :goto_1

    #@fe
    .line 402
    .end local v20    # "i":I
    .end local v21    # "numHiddenNetworkIds":I
    :cond_9
    move-object/from16 v0, p0

    #@100
    iget v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mNextBackgroundScanPeriod:I

    #@102
    add-int/lit8 v3, v3, 0x1

    #@104
    move-object/from16 v0, p0

    #@106
    iput v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mNextBackgroundScanPeriod:I

    #@108
    .line 403
    const/4 v3, 0x0

    #@109
    move-object/from16 v0, p0

    #@10b
    iput-boolean v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanPeriodPending:Z

    #@10d
    .line 404
    move-object/from16 v0, p0

    #@10f
    iget-object v6, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    #@111
    .line 405
    move-object/from16 v0, p0

    #@113
    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mClock:Lcom/android/server/wifi/Clock;

    #@115
    invoke-virtual {v3}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    #@118
    move-result-wide v8

    #@119
    move-object/from16 v0, p0

    #@11b
    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@11d
    iget v3, v3, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    #@11f
    int-to-long v10, v3

    #@120
    add-long/2addr v8, v10

    #@121
    .line 406
    const-string/jumbo v10, "SupplicantWifiScannerImpl Background Scan Period"

    #@124
    move-object/from16 v0, p0

    #@126
    iget-object v11, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mScanPeriodListener:Landroid/app/AlarmManager$OnAlarmListener;

    #@128
    move-object/from16 v0, p0

    #@12a
    iget-object v12, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mEventHandler:Landroid/os/Handler;

    #@12c
    .line 404
    const/4 v7, 0x2

    #@12d
    invoke-virtual/range {v6 .. v12}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    #@130
    .line 410
    .end local v5    # "reportEvents":I
    .end local v16    # "bucket_id":I
    .end local v19    # "hiddenNetworkIds":[I
    :cond_a
    move-object/from16 v0, p0

    #@132
    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingSingleScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@134
    if-eqz v3, :cond_e

    #@136
    .line 411
    const/16 v22, 0x0

    #@138
    .line 412
    .local v22, "reportFullResults":Z
    move-object/from16 v0, p0

    #@13a
    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    #@13c
    invoke-virtual {v3}, Lcom/android/server/wifi/scanner/ChannelHelper;->createChannelCollection()Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    #@13f
    move-result-object v23

    #@140
    .line 413
    .local v23, "singleScanFreqs":Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    const/16 v20, 0x0

    #@142
    .restart local v20    # "i":I
    :goto_2
    move-object/from16 v0, p0

    #@144
    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingSingleScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@146
    iget v3, v3, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    #@148
    move/from16 v0, v20

    #@14a
    if-ge v0, v3, :cond_c

    #@14c
    .line 415
    move-object/from16 v0, p0

    #@14e
    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingSingleScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@150
    iget-object v3, v3, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    #@152
    .line 414
    aget-object v15, v3, v20

    #@154
    .line 416
    .local v15, "bucketSettings":Lcom/android/server/wifi/WifiNative$BucketSettings;
    iget v3, v15, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    #@156
    and-int/lit8 v3, v3, 0x2

    #@158
    if-eqz v3, :cond_b

    #@15a
    .line 418
    const/16 v22, 0x1

    #@15c
    .line 420
    :cond_b
    move-object/from16 v0, v23

    #@15e
    invoke-virtual {v0, v15}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->addChannels(Lcom/android/server/wifi/WifiNative$BucketSettings;)V

    #@161
    .line 421
    invoke-virtual {v13, v15}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->addChannels(Lcom/android/server/wifi/WifiNative$BucketSettings;)V

    #@164
    .line 413
    add-int/lit8 v20, v20, 0x1

    #@166
    goto :goto_2

    #@167
    .line 424
    .end local v15    # "bucketSettings":Lcom/android/server/wifi/WifiNative$BucketSettings;
    :cond_c
    move-object/from16 v0, p0

    #@169
    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingSingleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@16b
    .line 423
    move/from16 v0, v22

    #@16d
    move-object/from16 v1, v23

    #@16f
    invoke-virtual {v2, v0, v1, v3}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->setSingleScan(ZLcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)V

    #@172
    .line 425
    move-object/from16 v0, p0

    #@174
    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingSingleScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@176
    iget-object v0, v3, Lcom/android/server/wifi/WifiNative$ScanSettings;->hiddenNetworkIds:[I

    #@178
    move-object/from16 v19, v0

    #@17a
    .line 426
    .restart local v19    # "hiddenNetworkIds":[I
    if-eqz v19, :cond_d

    #@17c
    .line 427
    move-object/from16 v0, v19

    #@17e
    array-length v3, v0

    #@17f
    .line 428
    const/16 v4, 0x10

    #@181
    .line 427
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@184
    move-result v21

    #@185
    .line 429
    .restart local v21    # "numHiddenNetworkIds":I
    const/16 v20, 0x0

    #@187
    :goto_3
    move/from16 v0, v20

    #@189
    move/from16 v1, v21

    #@18b
    if-ge v0, v1, :cond_d

    #@18d
    .line 430
    aget v3, v19, v20

    #@18f
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@192
    move-result-object v3

    #@193
    move-object/from16 v0, v18

    #@195
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@198
    .line 429
    add-int/lit8 v20, v20, 0x1

    #@19a
    goto :goto_3

    #@19b
    .line 433
    .end local v21    # "numHiddenNetworkIds":I
    :cond_d
    const/4 v3, 0x0

    #@19c
    move-object/from16 v0, p0

    #@19e
    iput-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingSingleScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@1a0
    .line 434
    const/4 v3, 0x0

    #@1a1
    move-object/from16 v0, p0

    #@1a3
    iput-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingSingleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@1a5
    .line 437
    .end local v19    # "hiddenNetworkIds":[I
    .end local v20    # "i":I
    .end local v22    # "reportFullResults":Z
    .end local v23    # "singleScanFreqs":Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    :cond_e
    iget-boolean v3, v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->backgroundScanActive:Z

    #@1a7
    if-nez v3, :cond_f

    #@1a9
    iget-boolean v3, v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->singleScanActive:Z

    #@1ab
    if-eqz v3, :cond_10

    #@1ad
    .line 438
    :cond_f
    invoke-virtual {v13}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->isEmpty()Z

    #@1b0
    move-result v3

    #@1b1
    if-eqz v3, :cond_12

    #@1b3
    .line 466
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->isHwPnoScanRequired()Z

    #@1b6
    move-result v3

    #@1b7
    if-eqz v3, :cond_11

    #@1b9
    .line 467
    move-object/from16 v0, p0

    #@1bb
    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPnoSettings:Lcom/android/server/wifi/WifiNative$PnoSettings;

    #@1bd
    iget-object v3, v3, Lcom/android/server/wifi/WifiNative$PnoSettings;->networkList:[Lcom/android/server/wifi/WifiNative$PnoNetwork;

    #@1bf
    move-object/from16 v0, p0

    #@1c1
    iget-object v4, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPnoEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    #@1c3
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->setHwPnoScan([Lcom/android/server/wifi/WifiNative$PnoNetwork;Lcom/android/server/wifi/WifiNative$PnoEventHandler;)V

    #@1c6
    .line 471
    move-object/from16 v0, p0

    #@1c8
    invoke-direct {v0, v2}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->isDifferentPnoScanSettings(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;)Z

    #@1cb
    move-result v3

    #@1cc
    if-eqz v3, :cond_14

    #@1ce
    .line 472
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->restartHwPnoScan()Z

    #@1d1
    move-result v24

    #@1d2
    .line 476
    .local v24, "status":Z
    :goto_4
    if-eqz v24, :cond_15

    #@1d4
    .line 477
    move-object/from16 v0, p0

    #@1d6
    iput-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d8
    .end local v24    # "status":Z
    :cond_11
    :goto_5
    monitor-exit v26

    #@1d9
    .line 337
    return-void

    #@1da
    .line 439
    :cond_12
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->pauseHwPnoScan()V

    #@1dd
    .line 440
    invoke-virtual {v13}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->getSupplicantScanFreqs()Ljava/util/Set;

    #@1e0
    move-result-object v17

    #@1e1
    .line 441
    .local v17, "freqs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    #@1e3
    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@1e5
    move-object/from16 v0, v17

    #@1e7
    move-object/from16 v1, v18

    #@1e9
    invoke-virtual {v3, v0, v1}, Lcom/android/server/wifi/WifiNative;->scan(Ljava/util/Set;Ljava/util/Set;)Z

    #@1ec
    move-result v25

    #@1ed
    .line 442
    .local v25, "success":Z
    if-eqz v25, :cond_13

    #@1ef
    .line 449
    move-object/from16 v0, p0

    #@1f1
    iput-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@1f3
    .line 450
    move-object/from16 v0, p0

    #@1f5
    iget-object v6, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    #@1f7
    .line 451
    move-object/from16 v0, p0

    #@1f9
    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mClock:Lcom/android/server/wifi/Clock;

    #@1fb
    invoke-virtual {v3}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    #@1fe
    move-result-wide v8

    #@1ff
    const-wide/16 v10, 0x3a98

    #@201
    add-long/2addr v8, v10

    #@202
    .line 452
    const-string/jumbo v10, "SupplicantWifiScannerImpl Scan Timeout"

    #@205
    move-object/from16 v0, p0

    #@207
    iget-object v11, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mScanTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    #@209
    move-object/from16 v0, p0

    #@20b
    iget-object v12, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mEventHandler:Landroid/os/Handler;

    #@20d
    .line 450
    const/4 v7, 0x2

    #@20e
    invoke-virtual/range {v6 .. v12}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@211
    goto :goto_5

    #@212
    .line 338
    .end local v2    # "newScanSettings":Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;
    .end local v13    # "allFreqs":Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    .end local v17    # "freqs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v18    # "hiddenNetworkIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v25    # "success":Z
    :catchall_0
    move-exception v3

    #@213
    monitor-exit v26

    #@214
    throw v3

    #@215
    .line 454
    .restart local v2    # "newScanSettings":Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;
    .restart local v13    # "allFreqs":Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    .restart local v17    # "freqs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v18    # "hiddenNetworkIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v25    # "success":Z
    :cond_13
    :try_start_3
    const-string/jumbo v3, "SupplicantWifiScannerImpl"

    #@218
    new-instance v4, Ljava/lang/StringBuilder;

    #@21a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@21d
    const-string/jumbo v6, "Failed to start scan, freqs="

    #@220
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@223
    move-result-object v4

    #@224
    move-object/from16 v0, v17

    #@226
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@229
    move-result-object v4

    #@22a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22d
    move-result-object v4

    #@22e
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@231
    .line 456
    move-object/from16 v0, p0

    #@233
    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mEventHandler:Landroid/os/Handler;

    #@235
    new-instance v4, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$4;

    #@237
    move-object/from16 v0, p0

    #@239
    invoke-direct {v4, v0, v2}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$4;-><init>(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;)V

    #@23c
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@23f
    goto :goto_5

    #@240
    .line 474
    .end local v17    # "freqs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v25    # "success":Z
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->startHwPnoScan()Z

    #@243
    move-result v24

    #@244
    .restart local v24    # "status":Z
    goto :goto_4

    #@245
    .line 479
    :cond_15
    const-string/jumbo v3, "SupplicantWifiScannerImpl"

    #@248
    const-string/jumbo v4, "Failed to start PNO scan"

    #@24b
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@24e
    .line 481
    move-object/from16 v0, p0

    #@250
    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mEventHandler:Landroid/os/Handler;

    #@252
    new-instance v4, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$5;

    #@254
    move-object/from16 v0, p0

    #@256
    invoke-direct {v4, v0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$5;-><init>(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;)V

    #@259
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@25c
    goto/16 :goto_5
.end method

.method private reportPnoScanFailure()V
    .locals 2

    #@0
    .prologue
    .line 530
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mSettingsLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 531
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@5
    if-eqz v0, :cond_1

    #@7
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@9
    iget-boolean v0, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->hwPnoScanActive:Z

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 532
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@f
    iget-object v0, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->pnoScanEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 533
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@15
    iget-object v0, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->pnoScanEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    #@17
    invoke-interface {v0}, Lcom/android/server/wifi/WifiNative$PnoEventHandler;->onPnoScanFailed()V

    #@1a
    .line 536
    :cond_0
    const/4 v0, 0x0

    #@1b
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPnoSettings:Lcom/android/server/wifi/WifiNative$PnoSettings;

    #@1d
    .line 537
    const/4 v0, 0x0

    #@1e
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPnoEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    #@20
    .line 538
    const/4 v0, 0x0

    #@21
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    :cond_1
    monitor-exit v1

    #@24
    .line 529
    return-void

    #@25
    .line 530
    :catchall_0
    move-exception v0

    #@26
    monitor-exit v1

    #@27
    throw v0
.end method

.method private reportScanFailure()V
    .locals 3

    #@0
    .prologue
    .line 517
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mSettingsLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 518
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@5
    if-eqz v0, :cond_1

    #@7
    .line 519
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@9
    iget-object v0, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->singleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 520
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@f
    iget-object v0, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->singleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@11
    .line 521
    const/4 v2, 0x3

    #@12
    .line 520
    invoke-interface {v0, v2}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onScanStatus(I)V

    #@15
    .line 524
    :cond_0
    const/4 v0, 0x0

    #@16
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    :cond_1
    monitor-exit v1

    #@19
    .line 516
    return-void

    #@1a
    .line 517
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method

.method private restartHwPnoScan()Z
    .locals 2

    #@0
    .prologue
    .line 704
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHwPnoDebouncer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->forceStopPnoScan()V

    #@5
    .line 705
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHwPnoDebouncer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;

    #@7
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHwPnoDebouncerListener:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer$Listener;

    #@9
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->startPnoScan(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer$Listener;)Z

    #@c
    move-result v0

    #@d
    return v0
.end method

.method private setNetworkPriorities([Lcom/android/server/wifi/WifiNative$PnoNetwork;)Z
    .locals 8
    .param p1, "networkList"    # [Lcom/android/server/wifi/WifiNative$PnoNetwork;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 673
    if-eqz p1, :cond_2

    #@3
    .line 675
    array-length v3, p1

    #@4
    move v1, v2

    #@5
    :goto_0
    if-ge v1, v3, :cond_2

    #@7
    aget-object v0, p1, v1

    #@9
    .line 676
    .local v0, "network":Lcom/android/server/wifi/WifiNative$PnoNetwork;
    iget-object v4, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@b
    iget v5, v0, Lcom/android/server/wifi/WifiNative$PnoNetwork;->networkId:I

    #@d
    .line 677
    const-string/jumbo v6, "priority"

    #@10
    .line 678
    iget v7, v0, Lcom/android/server/wifi/WifiNative$PnoNetwork;->priority:I

    #@12
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@15
    move-result-object v7

    #@16
    .line 676
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    #@19
    move-result v4

    #@1a
    if-nez v4, :cond_0

    #@1c
    .line 679
    const-string/jumbo v1, "SupplicantWifiScannerImpl"

    #@1f
    new-instance v3, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v4, "Set priority failed for: "

    #@27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    iget v4, v0, Lcom/android/server/wifi/WifiNative$PnoNetwork;->networkId:I

    #@2d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 680
    return v2

    #@39
    .line 682
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@3b
    iget v5, v0, Lcom/android/server/wifi/WifiNative$PnoNetwork;->networkId:I

    #@3d
    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiNative;->enableNetworkWithoutConnect(I)Z

    #@40
    move-result v4

    #@41
    if-nez v4, :cond_1

    #@43
    .line 683
    const-string/jumbo v1, "SupplicantWifiScannerImpl"

    #@46
    new-instance v3, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v4, "Enable network failed for: "

    #@4e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v3

    #@52
    iget v4, v0, Lcom/android/server/wifi/WifiNative$PnoNetwork;->networkId:I

    #@54
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@57
    move-result-object v3

    #@58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v3

    #@5c
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5f
    .line 684
    return v2

    #@60
    .line 675
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@62
    goto :goto_0

    #@63
    .line 688
    .end local v0    # "network":Lcom/android/server/wifi/WifiNative$PnoNetwork;
    :cond_2
    const/4 v1, 0x1

    #@64
    return v1
.end method

.method private startHwPnoScan()Z
    .locals 2

    #@0
    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHwPnoDebouncer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;

    #@2
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHwPnoDebouncerListener:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer$Listener;

    #@4
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->startPnoScan(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer$Listener;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method private stopHwPnoScan()V
    .locals 1

    #@0
    .prologue
    .line 696
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHwPnoDebouncer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->stopPnoScan()V

    #@5
    .line 695
    return-void
.end method

.method private unscheduleScansLocked()V
    .locals 2

    #@0
    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    #@2
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mScanPeriodListener:Landroid/app/AlarmManager$OnAlarmListener;

    #@4
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    #@7
    .line 314
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 315
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@d
    const/4 v1, 0x0

    #@e
    iput-boolean v1, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->backgroundScanActive:Z

    #@10
    .line 312
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    #@0
    .prologue
    .line 162
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mSettingsLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 163
    const/4 v0, 0x0

    #@4
    :try_start_0
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingSingleScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@6
    .line 164
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingSingleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@9
    .line 165
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->stopHwPnoScan()V

    #@c
    .line 166
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->stopBatchedScan()V

    #@f
    .line 167
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->resetHotlist()V

    #@12
    .line 168
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->untrackSignificantWifiChange()V

    #@15
    .line 169
    const/4 v0, 0x0

    #@16
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit v1

    #@19
    .line 161
    return-void

    #@1a
    .line 162
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method

.method public getChannelHelper()Lcom/android/server/wifi/scanner/ChannelHelper;
    .locals 1

    #@0
    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    #@2
    return-object v0
.end method

.method public getLatestBatchedScanResults(Z)[Landroid/net/wifi/WifiScanner$ScanData;
    .locals 3
    .param p1, "flush"    # Z

    #@0
    .prologue
    .line 663
    iget-object v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mSettingsLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 664
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanBuffer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;

    #@5
    invoke-virtual {v1}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;->get()[Landroid/net/wifi/WifiScanner$ScanData;

    #@8
    move-result-object v0

    #@9
    .line 665
    .local v0, "results":[Landroid/net/wifi/WifiScanner$ScanData;
    if-eqz p1, :cond_0

    #@b
    .line 666
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanBuffer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;

    #@d
    invoke-virtual {v1}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v2

    #@11
    .line 668
    return-object v0

    #@12
    .line 663
    .end local v0    # "results":[Landroid/net/wifi/WifiScanner$ScanData;
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v2

    #@14
    throw v1
.end method

.method public getLatestSingleScanResults()Landroid/net/wifi/WifiScanner$ScanData;
    .locals 1

    #@0
    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLatestSingleScanResult:Landroid/net/wifi/WifiScanner$ScanData;

    #@2
    return-object v0
.end method

.method public getScanCapabilities(Lcom/android/server/wifi/WifiNative$ScanCapabilities;)Z
    .locals 2
    .param p1, "capabilities"    # Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 175
    const v0, 0x7fffffff

    #@4
    iput v0, p1, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_scan_cache_size:I

    #@6
    .line 176
    const/16 v0, 0x10

    #@8
    iput v0, p1, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_scan_buckets:I

    #@a
    .line 177
    const/16 v0, 0x20

    #@c
    iput v0, p1, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_ap_cache_per_scan:I

    #@e
    .line 178
    const/16 v0, 0x8

    #@10
    iput v0, p1, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_rssi_sample_size:I

    #@12
    .line 179
    const/16 v0, 0xa

    #@14
    iput v0, p1, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_scan_reporting_threshold:I

    #@16
    .line 180
    iput v1, p1, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_hotlist_bssids:I

    #@18
    .line 181
    iput v1, p1, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_significant_wifi_change_aps:I

    #@1a
    .line 182
    const/4 v0, 0x1

    #@1b
    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 498
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    sparse-switch v0, :sswitch_data_0

    #@5
    .line 513
    :goto_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 500
    :sswitch_0
    const-string/jumbo v0, "SupplicantWifiScannerImpl"

    #@a
    const-string/jumbo v1, "Scan failed"

    #@d
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 501
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    #@12
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mScanTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    #@14
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    #@17
    .line 502
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->reportScanFailure()V

    #@1a
    .line 503
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->processPendingScans()V

    #@1d
    goto :goto_0

    #@1e
    .line 506
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    #@20
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mScanTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    #@22
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    #@25
    .line 507
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->pollLatestScanData()V

    #@28
    .line 508
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->processPendingScans()V

    #@2b
    goto :goto_0

    #@2c
    .line 498
    :sswitch_data_0
    .sparse-switch
        0x24005 -> :sswitch_1
        0x24011 -> :sswitch_0
    .end sparse-switch
.end method

.method public isHwPnoSupported(Z)Z
    .locals 1
    .param p1, "isConnectedPno"    # Z

    #@0
    .prologue
    .line 757
    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->isHwPnoScanRequired(Z)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public pauseBatchedScan()V
    .locals 3

    #@0
    .prologue
    .line 278
    iget-object v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mSettingsLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 281
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 282
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@9
    iput-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@b
    .line 283
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@d
    iput-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@f
    .line 285
    :cond_0
    const/4 v1, 0x0

    #@10
    iput-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@12
    .line 286
    const/4 v1, 0x0

    #@13
    iput-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@15
    .line 287
    const/4 v1, 0x0

    #@16
    iput-boolean v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanPeriodPending:Z

    #@18
    .line 288
    const/4 v1, 0x1

    #@19
    iput-boolean v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanPaused:Z

    #@1b
    .line 290
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->unscheduleScansLocked()V

    #@1e
    .line 292
    const/4 v1, 0x1

    #@1f
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->getLatestBatchedScanResults(Z)[Landroid/net/wifi/WifiScanner$ScanData;

    #@22
    move-result-object v0

    #@23
    .line 293
    .local v0, "results":[Landroid/net/wifi/WifiScanner$ScanData;
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@25
    if-eqz v1, :cond_1

    #@27
    .line 294
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@29
    invoke-interface {v1, v0}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onScanPaused([Landroid/net/wifi/WifiScanner$ScanData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    :cond_1
    monitor-exit v2

    #@2d
    .line 297
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->processPendingScans()V

    #@30
    .line 277
    return-void

    #@31
    .line 278
    .end local v0    # "results":[Landroid/net/wifi/WifiScanner$ScanData;
    :catchall_0
    move-exception v1

    #@32
    monitor-exit v2

    #@33
    throw v1
.end method

.method public resetHotlist()V
    .locals 2

    #@0
    .prologue
    .line 780
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mSettingsLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 781
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHotlistChangeBuffer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;

    #@5
    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->clearSettings()V

    #@8
    .line 782
    const/4 v0, 0x0

    #@9
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHotlistHandler:Lcom/android/server/wifi/WifiNative$HotlistEventHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 779
    return-void

    #@d
    .line 780
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public resetHwPnoList()Z
    .locals 3

    #@0
    .prologue
    .line 741
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mSettingsLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 742
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPnoSettings:Lcom/android/server/wifi/WifiNative$PnoSettings;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 743
    const-string/jumbo v0, "SupplicantWifiScannerImpl"

    #@a
    const-string/jumbo v2, "No PNO scan running"

    #@d
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 744
    const/4 v0, 0x0

    #@11
    monitor-exit v1

    #@12
    return v0

    #@13
    .line 746
    :cond_0
    const/4 v0, 0x0

    #@14
    :try_start_1
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPnoEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    #@16
    .line 747
    const/4 v0, 0x0

    #@17
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPnoSettings:Lcom/android/server/wifi/WifiNative$PnoSettings;

    #@19
    .line 749
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->stopHwPnoScan()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    .line 750
    const/4 v0, 0x1

    #@1d
    monitor-exit v1

    #@1e
    return v0

    #@1f
    .line 741
    :catchall_0
    move-exception v0

    #@20
    monitor-exit v1

    #@21
    throw v0
.end method

.method public restartBatchedScan()V
    .locals 2

    #@0
    .prologue
    .line 302
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mSettingsLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 304
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 305
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@9
    invoke-interface {v0}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onScanRestarted()V

    #@c
    .line 307
    :cond_0
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanPaused:Z

    #@f
    .line 308
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->handleScanPeriod()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v1

    #@13
    .line 301
    return-void

    #@14
    .line 302
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public setHotlist(Landroid/net/wifi/WifiScanner$HotlistSettings;Lcom/android/server/wifi/WifiNative$HotlistEventHandler;)Z
    .locals 6
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$HotlistSettings;
    .param p2, "eventHandler"    # Lcom/android/server/wifi/WifiNative$HotlistEventHandler;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 768
    if-eqz p1, :cond_0

    #@3
    if-nez p2, :cond_1

    #@5
    .line 769
    :cond_0
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 771
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mSettingsLock:Ljava/lang/Object;

    #@9
    monitor-enter v1

    #@a
    .line 772
    :try_start_0
    iput-object p2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHotlistHandler:Lcom/android/server/wifi/WifiNative$HotlistEventHandler;

    #@c
    .line 773
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHotlistChangeBuffer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;

    #@e
    iget-object v2, p1, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@10
    iget v3, p1, Landroid/net/wifi/WifiScanner$HotlistSettings;->apLostThreshold:I

    #@12
    const/4 v4, 0x1

    #@13
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->setSettings([Landroid/net/wifi/WifiScanner$BssidInfo;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    monitor-exit v1

    #@17
    .line 774
    return v5

    #@18
    .line 771
    :catchall_0
    move-exception v0

    #@19
    monitor-exit v1

    #@1a
    throw v0
.end method

.method public setHwPnoList(Lcom/android/server/wifi/WifiNative$PnoSettings;Lcom/android/server/wifi/WifiNative$PnoEventHandler;)Z
    .locals 4
    .param p1, "settings"    # Lcom/android/server/wifi/WifiNative$PnoSettings;
    .param p2, "eventHandler"    # Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 725
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mSettingsLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 726
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPnoSettings:Lcom/android/server/wifi/WifiNative$PnoSettings;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 727
    const-string/jumbo v0, "SupplicantWifiScannerImpl"

    #@b
    const-string/jumbo v2, "Already running a PNO scan"

    #@e
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v1

    #@12
    .line 728
    return v3

    #@13
    .line 730
    :cond_0
    :try_start_1
    iput-object p2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPnoEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    #@15
    .line 731
    iput-object p1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPnoSettings:Lcom/android/server/wifi/WifiNative$PnoSettings;

    #@17
    .line 732
    iget-object v0, p1, Lcom/android/server/wifi/WifiNative$PnoSettings;->networkList:[Lcom/android/server/wifi/WifiNative$PnoNetwork;

    #@19
    invoke-direct {p0, v0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->setNetworkPriorities([Lcom/android/server/wifi/WifiNative$PnoNetwork;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    move-result v0

    #@1d
    if-nez v0, :cond_1

    #@1f
    monitor-exit v1

    #@20
    return v3

    #@21
    .line 734
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->processPendingScans()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@24
    .line 735
    const/4 v0, 0x1

    #@25
    monitor-exit v1

    #@26
    return v0

    #@27
    .line 725
    :catchall_0
    move-exception v0

    #@28
    monitor-exit v1

    #@29
    throw v0
.end method

.method public shouldScheduleBackgroundScanForHwPno()Z
    .locals 1

    #@0
    .prologue
    .line 762
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public startBatchedScan(Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z
    .locals 6
    .param p1, "settings"    # Lcom/android/server/wifi/WifiNative$ScanSettings;
    .param p2, "eventHandler"    # Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 219
    if-eqz p1, :cond_0

    #@3
    if-nez p2, :cond_1

    #@5
    .line 220
    :cond_0
    const-string/jumbo v2, "SupplicantWifiScannerImpl"

    #@8
    new-instance v3, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v4, "Invalid arguments for startBatched: settings="

    #@10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    .line 221
    const-string/jumbo v4, ",eventHandler="

    #@1b
    .line 220
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 222
    return v5

    #@2b
    .line 225
    :cond_1
    iget v2, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    #@2d
    if-ltz v2, :cond_2

    #@2f
    iget v2, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    #@31
    const/16 v3, 0x20

    #@33
    if-le v2, v3, :cond_3

    #@35
    .line 226
    :cond_2
    return v5

    #@36
    .line 228
    :cond_3
    iget v2, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    #@38
    if-ltz v2, :cond_4

    #@3a
    iget v2, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    #@3c
    const/16 v3, 0x10

    #@3e
    if-le v2, v3, :cond_5

    #@40
    .line 229
    :cond_4
    return v5

    #@41
    .line 231
    :cond_5
    iget v2, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_num_scans:I

    #@43
    if-ltz v2, :cond_6

    #@45
    .line 232
    iget v2, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_num_scans:I

    #@47
    const/16 v3, 0xa

    #@49
    if-le v2, v3, :cond_7

    #@4b
    .line 233
    :cond_6
    return v5

    #@4c
    .line 235
    :cond_7
    iget v2, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_percent:I

    #@4e
    if-ltz v2, :cond_8

    #@50
    iget v2, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_percent:I

    #@52
    const/16 v3, 0x64

    #@54
    if-le v2, v3, :cond_9

    #@56
    .line 236
    :cond_8
    return v5

    #@57
    .line 238
    :cond_9
    iget v2, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    #@59
    if-gtz v2, :cond_a

    #@5b
    .line 239
    return v5

    #@5c
    .line 241
    :cond_a
    const/4 v1, 0x0

    #@5d
    .local v1, "i":I
    :goto_0
    iget v2, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    #@5f
    if-ge v1, v2, :cond_c

    #@61
    .line 242
    iget-object v2, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    #@63
    aget-object v0, v2, v1

    #@65
    .line 243
    .local v0, "bucket":Lcom/android/server/wifi/WifiNative$BucketSettings;
    iget v2, v0, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    #@67
    iget v3, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    #@69
    rem-int/2addr v2, v3

    #@6a
    if-eqz v2, :cond_b

    #@6c
    .line 244
    return v5

    #@6d
    .line 241
    :cond_b
    add-int/lit8 v1, v1, 0x1

    #@6f
    goto :goto_0

    #@70
    .line 248
    .end local v0    # "bucket":Lcom/android/server/wifi/WifiNative$BucketSettings;
    :cond_c
    iget-object v3, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mSettingsLock:Ljava/lang/Object;

    #@72
    monitor-enter v3

    #@73
    .line 249
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->stopBatchedScan()V

    #@76
    .line 254
    iput-object p1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@78
    .line 255
    iput-object p2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@7a
    .line 256
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->handleScanPeriod()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7d
    .line 257
    const/4 v2, 0x1

    #@7e
    monitor-exit v3

    #@7f
    return v2

    #@80
    .line 248
    :catchall_0
    move-exception v2

    #@81
    monitor-exit v3

    #@82
    throw v2
.end method

.method public startSingleScan(Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z
    .locals 4
    .param p1, "settings"    # Lcom/android/server/wifi/WifiNative$ScanSettings;
    .param p2, "eventHandler"    # Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 193
    if-eqz p2, :cond_0

    #@3
    if-nez p1, :cond_1

    #@5
    .line 194
    :cond_0
    const-string/jumbo v0, "SupplicantWifiScannerImpl"

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Invalid arguments for startSingleScan: settings="

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    .line 195
    const-string/jumbo v2, ",eventHandler="

    #@1b
    .line 194
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 196
    return v3

    #@2b
    .line 198
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingSingleScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@2d
    if-nez v0, :cond_2

    #@2f
    .line 199
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@31
    if-eqz v0, :cond_3

    #@33
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@35
    iget-boolean v0, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->singleScanActive:Z

    #@37
    .line 198
    if-eqz v0, :cond_3

    #@39
    .line 200
    :cond_2
    const-string/jumbo v0, "SupplicantWifiScannerImpl"

    #@3c
    const-string/jumbo v1, "A single scan is already running"

    #@3f
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    .line 201
    return v3

    #@43
    .line 203
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mSettingsLock:Ljava/lang/Object;

    #@45
    monitor-enter v1

    #@46
    .line 204
    :try_start_0
    iput-object p1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingSingleScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@48
    .line 205
    iput-object p2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingSingleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@4a
    .line 206
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->processPendingScans()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4d
    .line 207
    const/4 v0, 0x1

    #@4e
    monitor-exit v1

    #@4f
    return v0

    #@50
    .line 203
    :catchall_0
    move-exception v0

    #@51
    monitor-exit v1

    #@52
    throw v0
.end method

.method public stopBatchedScan()V
    .locals 2

    #@0
    .prologue
    .line 263
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mSettingsLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 265
    const/4 v0, 0x0

    #@4
    :try_start_0
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@6
    .line 266
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@9
    .line 267
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@c
    .line 268
    const/4 v0, 0x0

    #@d
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@f
    .line 269
    const/4 v0, 0x0

    #@10
    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanPaused:Z

    #@12
    .line 270
    const/4 v0, 0x0

    #@13
    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanPeriodPending:Z

    #@15
    .line 271
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->unscheduleScansLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit v1

    #@19
    .line 273
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->processPendingScans()V

    #@1c
    .line 262
    return-void

    #@1d
    .line 263
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit v1

    #@1f
    throw v0
.end method

.method public trackSignificantWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeSettings;Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;)Z
    .locals 1
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$WifiChangeSettings;
    .param p2, "handler"    # Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;

    #@0
    .prologue
    .line 792
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public untrackSignificantWifiChange()V
    .locals 0

    #@0
    .prologue
    .line 795
    return-void
.end method
