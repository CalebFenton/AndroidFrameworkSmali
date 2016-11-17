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

.method private isHwPnoScanRequired()Z
    .locals 1

    #@0
    .prologue
    .line 699
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPnoSettings:Lcom/android/server/wifi/WifiNative$PnoSettings;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 700
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
    .line 695
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
    .line 686
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHwPnoDebouncer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->forceStopPnoScan()V

    #@5
    .line 685
    return-void
.end method

.method private pollLatestScanData()V
    .locals 24

    #@0
    .prologue
    .line 531
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mSettingsLock:Ljava/lang/Object;

    #@4
    move-object/from16 v18, v0

    #@6
    monitor-enter v18

    #@7
    .line 532
    :try_start_0
    move-object/from16 v0, p0

    #@9
    iget-object v15, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    if-nez v15, :cond_0

    #@d
    monitor-exit v18

    #@e
    .line 534
    return-void

    #@f
    .line 538
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    #@11
    iget-object v15, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@13
    invoke-virtual {v15}, Lcom/android/server/wifi/WifiNative;->getScanResults()Ljava/util/ArrayList;

    #@16
    move-result-object v8

    #@17
    .line 539
    .local v8, "nativeResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/ScanDetail;>;"
    new-instance v14, Ljava/util/ArrayList;

    #@19
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    #@1c
    .line 540
    .local v14, "singleScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    new-instance v4, Ljava/util/ArrayList;

    #@1e
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@21
    .line 541
    .local v4, "backgroundScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    new-instance v6, Ljava/util/ArrayList;

    #@23
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@26
    .line 542
    .local v6, "hwPnoScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v7, 0x0

    #@27
    .local v7, "i":I
    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@2a
    move-result v15

    #@2b
    if-ge v7, v15, :cond_4

    #@2d
    .line 543
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@30
    move-result-object v15

    #@31
    check-cast v15, Lcom/android/server/wifi/ScanDetail;

    #@33
    invoke-virtual {v15}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    #@36
    move-result-object v10

    #@37
    .line 544
    .local v10, "result":Landroid/net/wifi/ScanResult;
    iget-wide v0, v10, Landroid/net/wifi/ScanResult;->timestamp:J

    #@39
    move-wide/from16 v20, v0

    #@3b
    const-wide/16 v22, 0x3e8

    #@3d
    div-long v16, v20, v22

    #@3f
    .line 545
    .local v16, "timestamp_ms":J
    move-object/from16 v0, p0

    #@41
    iget-object v15, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@43
    iget-wide v0, v15, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->startTime:J

    #@45
    move-wide/from16 v20, v0

    #@47
    cmp-long v15, v16, v20

    #@49
    if-lez v15, :cond_3

    #@4b
    .line 546
    move-object/from16 v0, p0

    #@4d
    iget-object v15, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@4f
    iget-boolean v15, v15, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->backgroundScanActive:Z

    #@51
    if-eqz v15, :cond_1

    #@53
    .line 547
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@56
    .line 549
    :cond_1
    move-object/from16 v0, p0

    #@58
    iget-object v15, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@5a
    iget-boolean v15, v15, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->singleScanActive:Z

    #@5c
    if-eqz v15, :cond_2

    #@5e
    .line 550
    move-object/from16 v0, p0

    #@60
    iget-object v15, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@62
    iget-object v15, v15, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->singleScanFreqs:Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    #@64
    .line 551
    iget v0, v10, Landroid/net/wifi/ScanResult;->frequency:I

    #@66
    move/from16 v19, v0

    #@68
    .line 550
    move/from16 v0, v19

    #@6a
    invoke-virtual {v15, v0}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->containsChannel(I)Z

    #@6d
    move-result v15

    #@6e
    .line 549
    if-eqz v15, :cond_2

    #@70
    .line 552
    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@73
    .line 554
    :cond_2
    move-object/from16 v0, p0

    #@75
    iget-object v15, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@77
    iget-boolean v15, v15, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->hwPnoScanActive:Z

    #@79
    if-eqz v15, :cond_3

    #@7b
    .line 555
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@7e
    .line 542
    :cond_3
    add-int/lit8 v7, v7, 0x1

    #@80
    goto :goto_0

    #@81
    .line 562
    .end local v10    # "result":Landroid/net/wifi/ScanResult;
    .end local v16    # "timestamp_ms":J
    :cond_4
    move-object/from16 v0, p0

    #@83
    iget-object v15, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@85
    iget-boolean v15, v15, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->backgroundScanActive:Z

    #@87
    if-eqz v15, :cond_b

    #@89
    .line 563
    move-object/from16 v0, p0

    #@8b
    iget-object v15, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@8d
    if-eqz v15, :cond_5

    #@8f
    .line 564
    move-object/from16 v0, p0

    #@91
    iget-object v15, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@93
    iget v15, v15, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->reportEvents:I

    #@95
    and-int/lit8 v15, v15, 0x2

    #@97
    if-eqz v15, :cond_5

    #@99
    .line 566
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9c
    move-result-object v12

    #@9d
    .local v12, "scanResult$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@a0
    move-result v15

    #@a1
    if-eqz v15, :cond_5

    #@a3
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@a6
    move-result-object v11

    #@a7
    check-cast v11, Landroid/net/wifi/ScanResult;

    #@a9
    .line 568
    .local v11, "scanResult":Landroid/net/wifi/ScanResult;
    move-object/from16 v0, p0

    #@ab
    iget-object v15, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@ad
    const/16 v19, 0x0

    #@af
    move/from16 v0, v19

    #@b1
    invoke-interface {v15, v11, v0}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onFullScanResult(Landroid/net/wifi/ScanResult;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b4
    goto :goto_1

    #@b5
    .line 531
    .end local v4    # "backgroundScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v6    # "hwPnoScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v7    # "i":I
    .end local v8    # "nativeResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/ScanDetail;>;"
    .end local v11    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v12    # "scanResult$iterator":Ljava/util/Iterator;
    .end local v14    # "singleScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :catchall_0
    move-exception v15

    #@b6
    monitor-exit v18

    #@b7
    throw v15

    #@b8
    .line 573
    .restart local v4    # "backgroundScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .restart local v6    # "hwPnoScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .restart local v7    # "i":I
    .restart local v8    # "nativeResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/ScanDetail;>;"
    .restart local v14    # "singleScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_5
    :try_start_2
    sget-object v15, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->SCAN_RESULT_SORT_COMPARATOR:Ljava/util/Comparator;

    #@ba
    invoke-static {v4, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@bd
    .line 574
    move-object/from16 v0, p0

    #@bf
    iget-object v15, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@c1
    iget v15, v15, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->maxAps:I

    #@c3
    .line 575
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@c6
    move-result v19

    #@c7
    .line 574
    move/from16 v0, v19

    #@c9
    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    #@cc
    move-result v15

    #@cd
    new-array v13, v15, [Landroid/net/wifi/ScanResult;

    #@cf
    .line 576
    .local v13, "scanResultsArray":[Landroid/net/wifi/ScanResult;
    const/4 v7, 0x0

    #@d0
    :goto_2
    array-length v15, v13

    #@d1
    if-ge v7, v15, :cond_6

    #@d3
    .line 577
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@d6
    move-result-object v15

    #@d7
    check-cast v15, Landroid/net/wifi/ScanResult;

    #@d9
    aput-object v15, v13, v7

    #@db
    .line 576
    add-int/lit8 v7, v7, 0x1

    #@dd
    goto :goto_2

    #@de
    .line 580
    :cond_6
    move-object/from16 v0, p0

    #@e0
    iget-object v15, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@e2
    iget v15, v15, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->reportEvents:I

    #@e4
    and-int/lit8 v15, v15, 0x4

    #@e6
    if-nez v15, :cond_7

    #@e8
    .line 582
    move-object/from16 v0, p0

    #@ea
    iget-object v15, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanBuffer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;

    #@ec
    new-instance v19, Landroid/net/wifi/WifiScanner$ScanData;

    #@ee
    move-object/from16 v0, p0

    #@f0
    iget-object v0, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@f2
    move-object/from16 v20, v0

    #@f4
    move-object/from16 v0, v20

    #@f6
    iget v0, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->scanId:I

    #@f8
    move/from16 v20, v0

    #@fa
    const/16 v21, 0x0

    #@fc
    move-object/from16 v0, v19

    #@fe
    move/from16 v1, v20

    #@100
    move/from16 v2, v21

    #@102
    invoke-direct {v0, v1, v2, v13}, Landroid/net/wifi/WifiScanner$ScanData;-><init>(II[Landroid/net/wifi/ScanResult;)V

    #@105
    move-object/from16 v0, v19

    #@107
    invoke-virtual {v15, v0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;->add(Landroid/net/wifi/WifiScanner$ScanData;)V

    #@10a
    .line 586
    :cond_7
    move-object/from16 v0, p0

    #@10c
    iget-object v15, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@10e
    if-eqz v15, :cond_9

    #@110
    .line 587
    move-object/from16 v0, p0

    #@112
    iget-object v15, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@114
    iget v15, v15, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->reportEvents:I

    #@116
    and-int/lit8 v15, v15, 0x2

    #@118
    if-nez v15, :cond_8

    #@11a
    .line 589
    move-object/from16 v0, p0

    #@11c
    iget-object v15, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@11e
    iget v15, v15, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->reportEvents:I

    #@120
    and-int/lit8 v15, v15, 0x1

    #@122
    if-eqz v15, :cond_c

    #@124
    .line 599
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    #@126
    iget-object v15, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@128
    .line 600
    const/16 v19, 0x0

    #@12a
    .line 599
    move/from16 v0, v19

    #@12c
    invoke-interface {v15, v0}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onScanStatus(I)V

    #@12f
    .line 604
    :cond_9
    move-object/from16 v0, p0

    #@131
    iget-object v15, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHotlistHandler:Lcom/android/server/wifi/WifiNative$HotlistEventHandler;

    #@133
    if-eqz v15, :cond_b

    #@135
    .line 605
    move-object/from16 v0, p0

    #@137
    iget-object v15, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHotlistChangeBuffer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;

    #@139
    invoke-virtual {v15, v4}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->processScan(Ljava/util/List;)I

    #@13c
    move-result v5

    #@13d
    .line 606
    .local v5, "event":I
    sget v15, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->EVENT_FOUND:I

    #@13f
    and-int/2addr v15, v5

    #@140
    if-eqz v15, :cond_a

    #@142
    .line 607
    move-object/from16 v0, p0

    #@144
    iget-object v15, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHotlistHandler:Lcom/android/server/wifi/WifiNative$HotlistEventHandler;

    #@146
    .line 608
    move-object/from16 v0, p0

    #@148
    iget-object v0, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHotlistChangeBuffer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;

    #@14a
    move-object/from16 v19, v0

    #@14c
    sget v20, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->EVENT_FOUND:I

    #@14e
    invoke-virtual/range {v19 .. v20}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->getLastResults(I)[Landroid/net/wifi/ScanResult;

    #@151
    move-result-object v19

    #@152
    .line 607
    move-object/from16 v0, v19

    #@154
    invoke-interface {v15, v0}, Lcom/android/server/wifi/WifiNative$HotlistEventHandler;->onHotlistApFound([Landroid/net/wifi/ScanResult;)V

    #@157
    .line 610
    :cond_a
    sget v15, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->EVENT_LOST:I

    #@159
    and-int/2addr v15, v5

    #@15a
    if-eqz v15, :cond_b

    #@15c
    .line 611
    move-object/from16 v0, p0

    #@15e
    iget-object v15, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHotlistHandler:Lcom/android/server/wifi/WifiNative$HotlistEventHandler;

    #@160
    .line 612
    move-object/from16 v0, p0

    #@162
    iget-object v0, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHotlistChangeBuffer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;

    #@164
    move-object/from16 v19, v0

    #@166
    sget v20, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->EVENT_LOST:I

    #@168
    invoke-virtual/range {v19 .. v20}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->getLastResults(I)[Landroid/net/wifi/ScanResult;

    #@16b
    move-result-object v19

    #@16c
    .line 611
    move-object/from16 v0, v19

    #@16e
    invoke-interface {v15, v0}, Lcom/android/server/wifi/WifiNative$HotlistEventHandler;->onHotlistApLost([Landroid/net/wifi/ScanResult;)V

    #@171
    .line 617
    .end local v5    # "event":I
    .end local v13    # "scanResultsArray":[Landroid/net/wifi/ScanResult;
    :cond_b
    move-object/from16 v0, p0

    #@173
    iget-object v15, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@175
    iget-boolean v15, v15, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->singleScanActive:Z

    #@177
    if-eqz v15, :cond_e

    #@179
    .line 618
    move-object/from16 v0, p0

    #@17b
    iget-object v15, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@17d
    iget-object v15, v15, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->singleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@17f
    if-eqz v15, :cond_e

    #@181
    .line 619
    move-object/from16 v0, p0

    #@183
    iget-object v15, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@185
    iget-boolean v15, v15, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->reportSingleScanFullResults:Z

    #@187
    if-eqz v15, :cond_d

    #@189
    .line 620
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18c
    move-result-object v12

    #@18d
    .restart local v12    # "scanResult$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@190
    move-result v15

    #@191
    if-eqz v15, :cond_d

    #@193
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@196
    move-result-object v11

    #@197
    check-cast v11, Landroid/net/wifi/ScanResult;

    #@199
    .line 622
    .restart local v11    # "scanResult":Landroid/net/wifi/ScanResult;
    move-object/from16 v0, p0

    #@19b
    iget-object v15, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@19d
    iget-object v15, v15, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->singleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@19f
    .line 623
    const/16 v19, 0x0

    #@1a1
    .line 622
    move/from16 v0, v19

    #@1a3
    invoke-interface {v15, v11, v0}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onFullScanResult(Landroid/net/wifi/ScanResult;I)V

    #@1a6
    goto :goto_4

    #@1a7
    .line 591
    .end local v11    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v12    # "scanResult$iterator":Ljava/util/Iterator;
    .restart local v13    # "scanResultsArray":[Landroid/net/wifi/ScanResult;
    :cond_c
    move-object/from16 v0, p0

    #@1a9
    iget-object v15, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@1ab
    iget v15, v15, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->reportEvents:I

    #@1ad
    if-nez v15, :cond_9

    #@1af
    .line 593
    move-object/from16 v0, p0

    #@1b1
    iget-object v15, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanBuffer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;

    #@1b3
    invoke-virtual {v15}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;->size()I

    #@1b6
    move-result v15

    #@1b7
    .line 594
    move-object/from16 v0, p0

    #@1b9
    iget-object v0, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanBuffer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;

    #@1bb
    move-object/from16 v19, v0

    #@1bd
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;->capacity()I

    #@1c0
    move-result v19

    #@1c1
    .line 595
    move-object/from16 v0, p0

    #@1c3
    iget-object v0, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@1c5
    move-object/from16 v20, v0

    #@1c7
    move-object/from16 v0, v20

    #@1c9
    iget v0, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->reportPercentThreshold:I

    #@1cb
    move/from16 v20, v0

    #@1cd
    .line 594
    mul-int v19, v19, v20

    #@1cf
    div-int/lit8 v19, v19, 0x64

    #@1d1
    .line 593
    move/from16 v0, v19

    #@1d3
    if-ge v15, v0, :cond_8

    #@1d5
    .line 597
    move-object/from16 v0, p0

    #@1d7
    iget-object v15, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanBuffer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;

    #@1d9
    invoke-virtual {v15}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;->size()I

    #@1dc
    move-result v15

    #@1dd
    .line 598
    move-object/from16 v0, p0

    #@1df
    iget-object v0, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@1e1
    move-object/from16 v19, v0

    #@1e3
    move-object/from16 v0, v19

    #@1e5
    iget v0, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->reportNumScansThreshold:I

    #@1e7
    move/from16 v19, v0

    #@1e9
    .line 597
    move/from16 v0, v19

    #@1eb
    if-lt v15, v0, :cond_9

    #@1ed
    goto/16 :goto_3

    #@1ef
    .line 626
    .end local v13    # "scanResultsArray":[Landroid/net/wifi/ScanResult;
    :cond_d
    sget-object v15, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->SCAN_RESULT_SORT_COMPARATOR:Ljava/util/Comparator;

    #@1f1
    invoke-static {v14, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@1f4
    .line 627
    new-instance v19, Landroid/net/wifi/WifiScanner$ScanData;

    #@1f6
    move-object/from16 v0, p0

    #@1f8
    iget-object v15, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@1fa
    iget v0, v15, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->scanId:I

    #@1fc
    move/from16 v20, v0

    #@1fe
    .line 628
    invoke-interface {v14}, Ljava/util/List;->size()I

    #@201
    move-result v15

    #@202
    new-array v15, v15, [Landroid/net/wifi/ScanResult;

    #@204
    invoke-interface {v14, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@207
    move-result-object v15

    #@208
    check-cast v15, [Landroid/net/wifi/ScanResult;

    #@20a
    .line 627
    const/16 v21, 0x0

    #@20c
    move-object/from16 v0, v19

    #@20e
    move/from16 v1, v20

    #@210
    move/from16 v2, v21

    #@212
    invoke-direct {v0, v1, v2, v15}, Landroid/net/wifi/WifiScanner$ScanData;-><init>(II[Landroid/net/wifi/ScanResult;)V

    #@215
    move-object/from16 v0, v19

    #@217
    move-object/from16 v1, p0

    #@219
    iput-object v0, v1, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLatestSingleScanResult:Landroid/net/wifi/WifiScanner$ScanData;

    #@21b
    .line 629
    move-object/from16 v0, p0

    #@21d
    iget-object v15, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@21f
    iget-object v15, v15, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->singleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@221
    .line 630
    const/16 v19, 0x0

    #@223
    .line 629
    move/from16 v0, v19

    #@225
    invoke-interface {v15, v0}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onScanStatus(I)V

    #@228
    .line 633
    :cond_e
    move-object/from16 v0, p0

    #@22a
    iget-object v15, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@22c
    iget-boolean v15, v15, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->hwPnoScanActive:Z

    #@22e
    if-eqz v15, :cond_10

    #@230
    .line 634
    move-object/from16 v0, p0

    #@232
    iget-object v15, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@234
    iget-object v15, v15, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->pnoScanEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    #@236
    if-eqz v15, :cond_10

    #@238
    .line 635
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@23b
    move-result v15

    #@23c
    new-array v9, v15, [Landroid/net/wifi/ScanResult;

    #@23e
    .line 636
    .local v9, "pnoScanResultsArray":[Landroid/net/wifi/ScanResult;
    const/4 v7, 0x0

    #@23f
    :goto_5
    array-length v15, v9

    #@240
    if-ge v7, v15, :cond_f

    #@242
    .line 637
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@245
    move-result-object v15

    #@246
    check-cast v15, Landroid/net/wifi/ScanResult;

    #@248
    aput-object v15, v9, v7

    #@24a
    .line 636
    add-int/lit8 v7, v7, 0x1

    #@24c
    goto :goto_5

    #@24d
    .line 639
    :cond_f
    move-object/from16 v0, p0

    #@24f
    iget-object v15, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@251
    iget-object v15, v15, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->pnoScanEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    #@253
    invoke-interface {v15, v9}, Lcom/android/server/wifi/WifiNative$PnoEventHandler;->onPnoNetworkFound([Landroid/net/wifi/ScanResult;)V

    #@256
    .line 642
    .end local v9    # "pnoScanResultsArray":[Landroid/net/wifi/ScanResult;
    :cond_10
    const/4 v15, 0x0

    #@257
    move-object/from16 v0, p0

    #@259
    iput-object v15, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@25b
    monitor-exit v18

    #@25c
    .line 530
    return-void
.end method

.method private processPendingScans()V
    .locals 26

    #@0
    .prologue
    .line 333
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mSettingsLock:Ljava/lang/Object;

    #@4
    move-object/from16 v25, v0

    #@6
    monitor-enter v25

    #@7
    .line 337
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
    .line 341
    :cond_0
    move-object/from16 v0, p0

    #@17
    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    #@19
    invoke-virtual {v3}, Lcom/android/server/wifi/scanner/ChannelHelper;->createChannelCollection()Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    #@1c
    move-result-object v13

    #@1d
    .line 342
    .local v13, "allFreqs":Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    new-instance v18, Ljava/util/HashSet;

    #@1f
    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    #@22
    .line 344
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
    .line 347
    .local v2, "newScanSettings":Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;
    move-object/from16 v0, p0

    #@31
    iget-boolean v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanPaused:Z

    #@33
    if-nez v3, :cond_a

    #@35
    .line 348
    move-object/from16 v0, p0

    #@37
    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@39
    if-eqz v3, :cond_1

    #@3b
    .line 349
    move-object/from16 v0, p0

    #@3d
    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@3f
    move-object/from16 v0, p0

    #@41
    iput-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@43
    .line 350
    move-object/from16 v0, p0

    #@45
    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@47
    move-object/from16 v0, p0

    #@49
    iput-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@4b
    .line 351
    const/4 v3, 0x0

    #@4c
    move-object/from16 v0, p0

    #@4e
    iput v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mNextBackgroundScanPeriod:I

    #@50
    .line 352
    const/4 v3, 0x0

    #@51
    move-object/from16 v0, p0

    #@53
    iput-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@55
    .line 353
    const/4 v3, 0x0

    #@56
    move-object/from16 v0, p0

    #@58
    iput-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@5a
    .line 354
    const/4 v3, 0x1

    #@5b
    move-object/from16 v0, p0

    #@5d
    iput-boolean v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanPeriodPending:Z

    #@5f
    .line 356
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
    .line 357
    const/4 v5, 0x4

    #@6c
    .line 358
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
    .line 361
    move-object/from16 v0, p0

    #@7a
    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@7c
    iget-object v3, v3, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    #@7e
    .line 360
    aget-object v14, v3, v16

    #@80
    .line 362
    .local v14, "bucket":Lcom/android/server/wifi/WifiNative$BucketSettings;
    move-object/from16 v0, p0

    #@82
    iget v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mNextBackgroundScanPeriod:I

    #@84
    iget v4, v14, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    #@86
    .line 363
    move-object/from16 v0, p0

    #@88
    iget-object v6, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@8a
    iget v6, v6, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    #@8c
    .line 362
    div-int/2addr v4, v6

    #@8d
    rem-int/2addr v3, v4

    #@8e
    if-nez v3, :cond_5

    #@90
    .line 364
    iget v3, v14, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    #@92
    and-int/lit8 v3, v3, 0x1

    #@94
    if-eqz v3, :cond_2

    #@96
    .line 366
    or-int/lit8 v5, v5, 0x1

    #@98
    .line 368
    :cond_2
    iget v3, v14, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    #@9a
    and-int/lit8 v3, v3, 0x2

    #@9c
    if-eqz v3, :cond_3

    #@9e
    .line 370
    or-int/lit8 v5, v5, 0x2

    #@a0
    .line 373
    :cond_3
    iget v3, v14, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    #@a2
    and-int/lit8 v3, v3, 0x4

    #@a4
    if-nez v3, :cond_4

    #@a6
    .line 375
    and-int/lit8 v5, v5, -0x5

    #@a8
    .line 378
    :cond_4
    invoke-virtual {v13, v14}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->addChannels(Lcom/android/server/wifi/WifiNative$BucketSettings;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@ab
    .line 359
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
    monitor-exit v25

    #@af
    .line 338
    return-void

    #@b0
    .line 381
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
    .line 382
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
    .line 383
    move-object/from16 v0, p0

    #@c2
    iget-object v4, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@c4
    iget v4, v4, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    #@c6
    .line 384
    move-object/from16 v0, p0

    #@c8
    iget-object v6, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@ca
    iget v6, v6, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_num_scans:I

    #@cc
    .line 385
    move-object/from16 v0, p0

    #@ce
    iget-object v7, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@d0
    iget v7, v7, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_percent:I

    #@d2
    .line 382
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->setBackgroundScan(IIIII)V

    #@d5
    .line 388
    :cond_8
    move-object/from16 v0, p0

    #@d7
    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@d9
    iget-object v0, v3, Lcom/android/server/wifi/WifiNative$ScanSettings;->hiddenNetworkIds:[I

    #@db
    move-object/from16 v19, v0

    #@dd
    .line 389
    .local v19, "hiddenNetworkIds":[I
    if-eqz v19, :cond_9

    #@df
    .line 390
    move-object/from16 v0, v19

    #@e1
    array-length v3, v0

    #@e2
    .line 391
    const/16 v4, 0x10

    #@e4
    .line 390
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@e7
    move-result v21

    #@e8
    .line 392
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
    .line 393
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
    .line 392
    add-int/lit8 v20, v20, 0x1

    #@fd
    goto :goto_1

    #@fe
    .line 397
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
    .line 398
    const/4 v3, 0x0

    #@109
    move-object/from16 v0, p0

    #@10b
    iput-boolean v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanPeriodPending:Z

    #@10d
    .line 399
    move-object/from16 v0, p0

    #@10f
    iget-object v6, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    #@111
    .line 400
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
    .line 401
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
    .line 399
    const/4 v7, 0x2

    #@12d
    invoke-virtual/range {v6 .. v12}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    #@130
    .line 405
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
    .line 406
    const/16 v22, 0x0

    #@138
    .line 407
    .local v22, "reportFullResults":Z
    move-object/from16 v0, p0

    #@13a
    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    #@13c
    invoke-virtual {v3}, Lcom/android/server/wifi/scanner/ChannelHelper;->createChannelCollection()Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    #@13f
    move-result-object v23

    #@140
    .line 408
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
    .line 410
    move-object/from16 v0, p0

    #@14e
    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingSingleScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@150
    iget-object v3, v3, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    #@152
    .line 409
    aget-object v15, v3, v20

    #@154
    .line 411
    .local v15, "bucketSettings":Lcom/android/server/wifi/WifiNative$BucketSettings;
    iget v3, v15, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    #@156
    and-int/lit8 v3, v3, 0x2

    #@158
    if-eqz v3, :cond_b

    #@15a
    .line 413
    const/16 v22, 0x1

    #@15c
    .line 415
    :cond_b
    move-object/from16 v0, v23

    #@15e
    invoke-virtual {v0, v15}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->addChannels(Lcom/android/server/wifi/WifiNative$BucketSettings;)V

    #@161
    .line 416
    invoke-virtual {v13, v15}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->addChannels(Lcom/android/server/wifi/WifiNative$BucketSettings;)V

    #@164
    .line 408
    add-int/lit8 v20, v20, 0x1

    #@166
    goto :goto_2

    #@167
    .line 419
    .end local v15    # "bucketSettings":Lcom/android/server/wifi/WifiNative$BucketSettings;
    :cond_c
    move-object/from16 v0, p0

    #@169
    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingSingleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@16b
    .line 418
    move/from16 v0, v22

    #@16d
    move-object/from16 v1, v23

    #@16f
    invoke-virtual {v2, v0, v1, v3}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->setSingleScan(ZLcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)V

    #@172
    .line 420
    move-object/from16 v0, p0

    #@174
    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingSingleScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@176
    iget-object v0, v3, Lcom/android/server/wifi/WifiNative$ScanSettings;->hiddenNetworkIds:[I

    #@178
    move-object/from16 v19, v0

    #@17a
    .line 421
    .restart local v19    # "hiddenNetworkIds":[I
    if-eqz v19, :cond_d

    #@17c
    .line 422
    move-object/from16 v0, v19

    #@17e
    array-length v3, v0

    #@17f
    .line 423
    const/16 v4, 0x10

    #@181
    .line 422
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@184
    move-result v21

    #@185
    .line 424
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
    .line 425
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
    .line 424
    add-int/lit8 v20, v20, 0x1

    #@19a
    goto :goto_3

    #@19b
    .line 428
    .end local v21    # "numHiddenNetworkIds":I
    :cond_d
    const/4 v3, 0x0

    #@19c
    move-object/from16 v0, p0

    #@19e
    iput-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingSingleScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@1a0
    .line 429
    const/4 v3, 0x0

    #@1a1
    move-object/from16 v0, p0

    #@1a3
    iput-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingSingleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@1a5
    .line 432
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
    .line 433
    :cond_f
    invoke-virtual {v13}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->isEmpty()Z

    #@1b0
    move-result v3

    #@1b1
    if-eqz v3, :cond_12

    #@1b3
    .line 461
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->isHwPnoScanRequired()Z

    #@1b6
    move-result v3

    #@1b7
    if-eqz v3, :cond_11

    #@1b9
    .line 462
    move-object/from16 v0, p0

    #@1bb
    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPnoEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    #@1bd
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->setHwPnoScan(Lcom/android/server/wifi/WifiNative$PnoEventHandler;)V

    #@1c0
    .line 463
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->startHwPnoScan()Z

    #@1c3
    move-result v3

    #@1c4
    if-eqz v3, :cond_14

    #@1c6
    .line 464
    move-object/from16 v0, p0

    #@1c8
    iput-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1ca
    :cond_11
    :goto_4
    monitor-exit v25

    #@1cb
    .line 332
    return-void

    #@1cc
    .line 434
    :cond_12
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->pauseHwPnoScan()V

    #@1cf
    .line 435
    invoke-virtual {v13}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->getSupplicantScanFreqs()Ljava/util/Set;

    #@1d2
    move-result-object v17

    #@1d3
    .line 436
    .local v17, "freqs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    #@1d5
    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@1d7
    move-object/from16 v0, v17

    #@1d9
    move-object/from16 v1, v18

    #@1db
    invoke-virtual {v3, v0, v1}, Lcom/android/server/wifi/WifiNative;->scan(Ljava/util/Set;Ljava/util/Set;)Z

    #@1de
    move-result v24

    #@1df
    .line 437
    .local v24, "success":Z
    if-eqz v24, :cond_13

    #@1e1
    .line 444
    move-object/from16 v0, p0

    #@1e3
    iput-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@1e5
    .line 445
    move-object/from16 v0, p0

    #@1e7
    iget-object v6, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    #@1e9
    .line 446
    move-object/from16 v0, p0

    #@1eb
    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mClock:Lcom/android/server/wifi/Clock;

    #@1ed
    invoke-virtual {v3}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    #@1f0
    move-result-wide v8

    #@1f1
    const-wide/16 v10, 0x3a98

    #@1f3
    add-long/2addr v8, v10

    #@1f4
    .line 447
    const-string/jumbo v10, "SupplicantWifiScannerImpl Scan Timeout"

    #@1f7
    move-object/from16 v0, p0

    #@1f9
    iget-object v11, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mScanTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    #@1fb
    move-object/from16 v0, p0

    #@1fd
    iget-object v12, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mEventHandler:Landroid/os/Handler;

    #@1ff
    .line 445
    const/4 v7, 0x2

    #@200
    invoke-virtual/range {v6 .. v12}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@203
    goto :goto_4

    #@204
    .line 333
    .end local v2    # "newScanSettings":Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;
    .end local v13    # "allFreqs":Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    .end local v17    # "freqs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v18    # "hiddenNetworkIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v24    # "success":Z
    :catchall_0
    move-exception v3

    #@205
    monitor-exit v25

    #@206
    throw v3

    #@207
    .line 449
    .restart local v2    # "newScanSettings":Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;
    .restart local v13    # "allFreqs":Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    .restart local v17    # "freqs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v18    # "hiddenNetworkIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v24    # "success":Z
    :cond_13
    :try_start_3
    const-string/jumbo v3, "SupplicantWifiScannerImpl"

    #@20a
    new-instance v4, Ljava/lang/StringBuilder;

    #@20c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@20f
    const-string/jumbo v6, "Failed to start scan, freqs="

    #@212
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@215
    move-result-object v4

    #@216
    move-object/from16 v0, v17

    #@218
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21b
    move-result-object v4

    #@21c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21f
    move-result-object v4

    #@220
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@223
    .line 451
    move-object/from16 v0, p0

    #@225
    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mEventHandler:Landroid/os/Handler;

    #@227
    new-instance v4, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$4;

    #@229
    move-object/from16 v0, p0

    #@22b
    invoke-direct {v4, v0, v2}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$4;-><init>(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;)V

    #@22e
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@231
    goto :goto_4

    #@232
    .line 466
    .end local v17    # "freqs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v24    # "success":Z
    :cond_14
    const-string/jumbo v3, "SupplicantWifiScannerImpl"

    #@235
    const-string/jumbo v4, "Failed to start PNO scan"

    #@238
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@23b
    .line 468
    move-object/from16 v0, p0

    #@23d
    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mEventHandler:Landroid/os/Handler;

    #@23f
    new-instance v4, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$5;

    #@241
    move-object/from16 v0, p0

    #@243
    invoke-direct {v4, v0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$5;-><init>(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;)V

    #@246
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@249
    goto :goto_4
.end method

.method private reportPnoScanFailure()V
    .locals 2

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
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@9
    iget-boolean v0, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->hwPnoScanActive:Z

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 519
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@f
    iget-object v0, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->pnoScanEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 520
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@15
    iget-object v0, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->pnoScanEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    #@17
    invoke-interface {v0}, Lcom/android/server/wifi/WifiNative$PnoEventHandler;->onPnoScanFailed()V

    #@1a
    .line 523
    :cond_0
    const/4 v0, 0x0

    #@1b
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPnoSettings:Lcom/android/server/wifi/WifiNative$PnoSettings;

    #@1d
    .line 524
    const/4 v0, 0x0

    #@1e
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPnoEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    #@20
    .line 525
    const/4 v0, 0x0

    #@21
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    :cond_1
    monitor-exit v1

    #@24
    .line 516
    return-void

    #@25
    .line 517
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
    .line 504
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mSettingsLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 505
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@5
    if-eqz v0, :cond_1

    #@7
    .line 506
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@9
    iget-object v0, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->singleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 507
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    #@f
    iget-object v0, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->singleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    #@11
    .line 508
    const/4 v2, 0x3

    #@12
    .line 507
    invoke-interface {v0, v2}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onScanStatus(I)V

    #@15
    .line 511
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
    .line 503
    return-void

    #@1a
    .line 504
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method

.method private setNetworkPriorities([Lcom/android/server/wifi/WifiNative$PnoNetwork;)Z
    .locals 8
    .param p1, "networkList"    # [Lcom/android/server/wifi/WifiNative$PnoNetwork;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 659
    if-eqz p1, :cond_2

    #@3
    .line 661
    array-length v3, p1

    #@4
    move v1, v2

    #@5
    :goto_0
    if-ge v1, v3, :cond_2

    #@7
    aget-object v0, p1, v1

    #@9
    .line 662
    .local v0, "network":Lcom/android/server/wifi/WifiNative$PnoNetwork;
    iget-object v4, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@b
    iget v5, v0, Lcom/android/server/wifi/WifiNative$PnoNetwork;->networkId:I

    #@d
    .line 663
    const-string/jumbo v6, "priority"

    #@10
    .line 664
    iget v7, v0, Lcom/android/server/wifi/WifiNative$PnoNetwork;->priority:I

    #@12
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@15
    move-result-object v7

    #@16
    .line 662
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    #@19
    move-result v4

    #@1a
    if-nez v4, :cond_0

    #@1c
    .line 665
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
    .line 666
    return v2

    #@39
    .line 668
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
    .line 669
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
    .line 670
    return v2

    #@60
    .line 661
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@62
    goto :goto_0

    #@63
    .line 674
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
    .line 678
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
    .line 682
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHwPnoDebouncer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->stopPnoScan()V

    #@5
    .line 681
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
    .line 649
    iget-object v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mSettingsLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 650
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanBuffer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;

    #@5
    invoke-virtual {v1}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;->get()[Landroid/net/wifi/WifiScanner$ScanData;

    #@8
    move-result-object v0

    #@9
    .line 651
    .local v0, "results":[Landroid/net/wifi/WifiScanner$ScanData;
    if-eqz p1, :cond_0

    #@b
    .line 652
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanBuffer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;

    #@d
    invoke-virtual {v1}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v2

    #@11
    .line 654
    return-object v0

    #@12
    .line 649
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
    .line 485
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    sparse-switch v0, :sswitch_data_0

    #@5
    .line 500
    :goto_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 487
    :sswitch_0
    const-string/jumbo v0, "SupplicantWifiScannerImpl"

    #@a
    const-string/jumbo v1, "Scan failed"

    #@d
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 488
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    #@12
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mScanTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    #@14
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    #@17
    .line 489
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->reportScanFailure()V

    #@1a
    .line 490
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->processPendingScans()V

    #@1d
    goto :goto_0

    #@1e
    .line 493
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    #@20
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mScanTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    #@22
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    #@25
    .line 494
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->pollLatestScanData()V

    #@28
    .line 495
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->processPendingScans()V

    #@2b
    goto :goto_0

    #@2c
    .line 485
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
    .line 738
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
    .line 761
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mSettingsLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 762
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHotlistChangeBuffer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;

    #@5
    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->clearSettings()V

    #@8
    .line 763
    const/4 v0, 0x0

    #@9
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHotlistHandler:Lcom/android/server/wifi/WifiNative$HotlistEventHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 760
    return-void

    #@d
    .line 761
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
    .line 722
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mSettingsLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 723
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPnoSettings:Lcom/android/server/wifi/WifiNative$PnoSettings;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 724
    const-string/jumbo v0, "SupplicantWifiScannerImpl"

    #@a
    const-string/jumbo v2, "No PNO scan running"

    #@d
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 725
    const/4 v0, 0x0

    #@11
    monitor-exit v1

    #@12
    return v0

    #@13
    .line 727
    :cond_0
    const/4 v0, 0x0

    #@14
    :try_start_1
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPnoEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    #@16
    .line 728
    const/4 v0, 0x0

    #@17
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPnoSettings:Lcom/android/server/wifi/WifiNative$PnoSettings;

    #@19
    .line 730
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->stopHwPnoScan()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    .line 731
    const/4 v0, 0x1

    #@1d
    monitor-exit v1

    #@1e
    return v0

    #@1f
    .line 722
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
    .line 749
    if-eqz p1, :cond_0

    #@3
    if-nez p2, :cond_1

    #@5
    .line 750
    :cond_0
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 752
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mSettingsLock:Ljava/lang/Object;

    #@9
    monitor-enter v1

    #@a
    .line 753
    :try_start_0
    iput-object p2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHotlistHandler:Lcom/android/server/wifi/WifiNative$HotlistEventHandler;

    #@c
    .line 754
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
    .line 755
    return v5

    #@18
    .line 752
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
    .line 706
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mSettingsLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 707
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPnoSettings:Lcom/android/server/wifi/WifiNative$PnoSettings;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 708
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
    .line 709
    return v3

    #@13
    .line 711
    :cond_0
    :try_start_1
    iput-object p2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPnoEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    #@15
    .line 712
    iput-object p1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPnoSettings:Lcom/android/server/wifi/WifiNative$PnoSettings;

    #@17
    .line 713
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
    .line 715
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->processPendingScans()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@24
    .line 716
    const/4 v0, 0x1

    #@25
    monitor-exit v1

    #@26
    return v0

    #@27
    .line 706
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
    .line 743
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
    .line 773
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public untrackSignificantWifiChange()V
    .locals 0

    #@0
    .prologue
    .line 776
    return-void
.end method
