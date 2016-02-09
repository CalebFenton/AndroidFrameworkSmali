.class public Lcom/android/server/wifi/WifiScanningServiceImpl;
.super Landroid/net/wifi/IWifiScanner$Stub;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;,
        Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;,
        Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;,
        Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;,
        Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x27100

.field private static final CMD_DRIVER_LOADED:I = 0x27106

.field private static final CMD_DRIVER_UNLOADED:I = 0x27107

.field private static final CMD_FULL_SCAN_RESULTS:I = 0x27101

.field private static final CMD_HOTLIST_AP_FOUND:I = 0x27102

.field private static final CMD_HOTLIST_AP_LOST:I = 0x27103

.field private static final CMD_SCAN_PAUSED:I = 0x27108

.field private static final CMD_SCAN_RESTARTED:I = 0x27109

.field private static final CMD_SCAN_RESULTS_AVAILABLE:I = 0x27100

.field private static final CMD_STOP_SCAN_INTERNAL:I = 0x2710a

.field private static final CMD_WIFI_CHANGES_STABILIZED:I = 0x27105

.field private static final CMD_WIFI_CHANGE_DETECTED:I = 0x27104

.field private static final DBG:Z = false

.field private static final INVALID_KEY:I = 0x0

.field private static final MIN_PERIOD_PER_CHANNEL_MS:I = 0xc8

.field private static final SCAN_WAKE_LOCK_TIME_OUT_MSECS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "WifiScanningService"

.field private static final UNKNOWN_PID:I = -0x1

.field private static final VDBG:Z

.field private static mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

.field private static final mLocalLog:Landroid/util/LocalLog;


# instance fields
.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mClientHandler:Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;

.field mClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Messenger;",
            "Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mScanCapabilities:Lcom/android/server/wifi/WifiNative$ScanCapabilities;

.field private mStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

.field mWifiChangeStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/internal/app/IBatteryStats;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/WifiScanningServiceImpl;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get3()Landroid/util/LocalLog;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mLocalLog:Landroid/util/LocalLog;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/wifi/WifiScanningServiceImpl;)Landroid/os/PowerManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiNative$ScanCapabilities;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mScanCapabilities:Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;
    .locals 1
    .param p0, "band"    # I

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->getChannelsForBand(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1([Landroid/net/wifi/WifiScanner$ChannelSpec;)I
    .locals 1
    .param p0, "channels"    # [Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->getBandFromChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2([Lcom/android/server/wifi/WifiNative$ChannelSettings;)I
    .locals 1
    .param p0, "channels"    # [Lcom/android/server/wifi/WifiNative$ChannelSettings;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->getBandFromChannels([Lcom/android/server/wifi/WifiNative$ChannelSettings;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/wifi/WifiScanningServiceImpl;I)V
    .locals 0
    .param p1, "uid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->enforceLocationHardwarePermission(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Ljava/lang/String;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->localLog(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Ljava/lang/String;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->loge(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Ljava/lang/String;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->logw(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 79
    new-instance v0, Landroid/util/LocalLog;

    #@2
    const/16 v1, 0x400

    #@4
    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    #@7
    sput-object v0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mLocalLog:Landroid/util/LocalLog;

    #@9
    .line 64
    return-void
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 227
    invoke-direct {p0}, Landroid/net/wifi/IWifiScanner$Stub;-><init>()V

    #@3
    .line 225
    new-instance v0, Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    #@5
    invoke-direct {v0}, Lcom/android/server/wifi/WifiNative$ScanCapabilities;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mScanCapabilities:Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    #@a
    .line 555
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    #@11
    .line 227
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 229
    invoke-direct {p0}, Landroid/net/wifi/IWifiScanner$Stub;-><init>()V

    #@3
    .line 225
    new-instance v0, Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    #@5
    invoke-direct {v0}, Lcom/android/server/wifi/WifiNative$ScanCapabilities;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mScanCapabilities:Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    #@a
    .line 555
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    #@11
    .line 230
    iput-object p1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mContext:Landroid/content/Context;

    #@13
    .line 229
    return-void
.end method

.method private static copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V
    .locals 4
    .param p0, "channelSpec"    # [Landroid/net/wifi/WifiScanner$ChannelSpec;
    .param p1, "offset"    # I
    .param p2, "channels"    # [I

    #@0
    .prologue
    .line 1818
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p2

    #@2
    if-ge v0, v1, :cond_0

    #@4
    .line 1819
    add-int v1, p1, v0

    #@6
    new-instance v2, Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@8
    aget v3, p2, v0

    #@a
    invoke-direct {v2, v3}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    #@d
    aput-object v2, p0, v1

    #@f
    .line 1818
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1817
    :cond_0
    return-void
.end method

.method static describe(Landroid/net/wifi/WifiScanner$ScanSettings;)Ljava/lang/String;
    .locals 4
    .param p0, "scanSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    #@0
    .prologue
    .line 1938
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 1939
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "  band:"

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    iget v3, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    .line 1940
    const-string/jumbo v2, "  period:"

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    iget v3, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    .line 1941
    const-string/jumbo v2, "  reportEvents:"

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    iget v3, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    .line 1942
    const-string/jumbo v2, "  numBssidsPerScan:"

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    iget v3, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    #@32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    .line 1943
    const-string/jumbo v2, "  maxScansToCache:"

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    iget v3, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    #@3e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    const-string/jumbo v3, "\n"

    #@45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    .line 1945
    const-string/jumbo v2, "  channels: "

    #@4b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    .line 1947
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@50
    if-eqz v2, :cond_0

    #@52
    .line 1948
    const/4 v0, 0x0

    #@53
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@55
    array-length v2, v2

    #@56
    if-ge v0, v2, :cond_0

    #@58
    .line 1949
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@5a
    aget-object v2, v2, v0

    #@5c
    iget v2, v2, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    #@5e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@61
    .line 1950
    const-string/jumbo v2, " "

    #@64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    .line 1948
    add-int/lit8 v0, v0, 0x1

    #@69
    goto :goto_0

    #@6a
    .line 1953
    .end local v0    # "i":I
    :cond_0
    const-string/jumbo v2, "\n"

    #@6d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    .line 1954
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v2

    #@74
    return-object v2
.end method

.method private enforceLocationHardwarePermission(I)V
    .locals 4
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mContext:Landroid/content/Context;

    #@2
    .line 119
    const-string/jumbo v1, "android.permission.LOCATION_HARDWARE"

    #@5
    .line 121
    const-string/jumbo v2, "LocationHardware"

    #@8
    .line 120
    const/4 v3, -0x1

    #@9
    .line 118
    invoke-virtual {v0, v1, v3, p1, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    #@c
    .line 117
    return-void
.end method

.method private static getBandFromChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;)I
    .locals 6
    .param p0, "channels"    # [Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@0
    .prologue
    .line 1903
    const/4 v0, 0x0

    #@1
    .line 1904
    .local v0, "band":I
    const/4 v2, 0x0

    #@2
    array-length v3, p0

    #@3
    :goto_0
    if-ge v2, v3, :cond_3

    #@5
    aget-object v1, p0, v2

    #@7
    .line 1905
    .local v1, "channel":Landroid/net/wifi/WifiScanner$ChannelSpec;
    iget v4, v1, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    #@9
    const/16 v5, 0x960

    #@b
    if-gt v5, v4, :cond_1

    #@d
    iget v4, v1, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    #@f
    const/16 v5, 0x9c4

    #@11
    if-ge v4, v5, :cond_1

    #@13
    .line 1906
    or-int/lit8 v0, v0, 0x1

    #@15
    .line 1904
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@17
    goto :goto_0

    #@18
    .line 1907
    :cond_1
    iget v4, v1, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    #@1a
    invoke-static {v4}, Lcom/android/server/wifi/WifiScanningServiceImpl;->isDfs(I)Z

    #@1d
    move-result v4

    #@1e
    if-eqz v4, :cond_2

    #@20
    .line 1908
    or-int/lit8 v0, v0, 0x4

    #@22
    goto :goto_1

    #@23
    .line 1909
    :cond_2
    iget v4, v1, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    #@25
    const/16 v5, 0x13ec

    #@27
    if-gt v5, v4, :cond_0

    #@29
    iget v4, v1, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    #@2b
    const/16 v5, 0x1770

    #@2d
    if-ge v4, v5, :cond_0

    #@2f
    .line 1910
    or-int/lit8 v0, v0, 0x2

    #@31
    goto :goto_1

    #@32
    .line 1913
    .end local v1    # "channel":Landroid/net/wifi/WifiScanner$ChannelSpec;
    :cond_3
    return v0
.end method

.method private static getBandFromChannels([Lcom/android/server/wifi/WifiNative$ChannelSettings;)I
    .locals 6
    .param p0, "channels"    # [Lcom/android/server/wifi/WifiNative$ChannelSettings;

    #@0
    .prologue
    .line 1917
    const/4 v0, 0x0

    #@1
    .line 1918
    .local v0, "band":I
    const/4 v2, 0x0

    #@2
    array-length v3, p0

    #@3
    :goto_0
    if-ge v2, v3, :cond_3

    #@5
    aget-object v1, p0, v2

    #@7
    .line 1919
    .local v1, "channel":Lcom/android/server/wifi/WifiNative$ChannelSettings;
    if-eqz v1, :cond_0

    #@9
    .line 1920
    iget v4, v1, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    #@b
    const/16 v5, 0x960

    #@d
    if-gt v5, v4, :cond_1

    #@f
    iget v4, v1, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    #@11
    const/16 v5, 0x9c4

    #@13
    if-ge v4, v5, :cond_1

    #@15
    .line 1921
    or-int/lit8 v0, v0, 0x1

    #@17
    .line 1918
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 1922
    :cond_1
    iget v4, v1, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    #@1c
    invoke-static {v4}, Lcom/android/server/wifi/WifiScanningServiceImpl;->isDfs(I)Z

    #@1f
    move-result v4

    #@20
    if-eqz v4, :cond_2

    #@22
    .line 1923
    or-int/lit8 v0, v0, 0x4

    #@24
    goto :goto_1

    #@25
    .line 1924
    :cond_2
    iget v4, v1, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    #@27
    const/16 v5, 0x13ec

    #@29
    if-gt v5, v4, :cond_0

    #@2b
    iget v4, v1, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    #@2d
    const/16 v5, 0x1770

    #@2f
    if-ge v4, v5, :cond_0

    #@31
    .line 1925
    or-int/lit8 v0, v0, 0x2

    #@33
    goto :goto_1

    #@34
    .line 1929
    .end local v1    # "channel":Lcom/android/server/wifi/WifiNative$ChannelSettings;
    :cond_3
    return v0
.end method

.method private static getChannelsForBand(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;
    .locals 2
    .param p0, "band"    # I

    #@0
    .prologue
    .line 1882
    invoke-static {}, Lcom/android/server/wifi/WifiScanningServiceImpl;->initChannels()Z

    #@3
    .line 1884
    const/4 v0, 0x1

    #@4
    if-lt p0, v0, :cond_0

    #@6
    const/4 v0, 0x7

    #@7
    if-le p0, v0, :cond_1

    #@9
    .line 1886
    :cond_0
    sget-object v0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@b
    const/4 v1, 0x0

    #@c
    aget-object v0, v0, v1

    #@e
    return-object v0

    #@f
    .line 1888
    :cond_1
    sget-object v0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@11
    aget-object v0, v0, p0

    #@13
    return-object v0
.end method

.method private static initChannels()Z
    .locals 9

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    const/4 v8, 0x7

    #@2
    const/4 v7, 0x1

    #@3
    const/4 v6, 0x0

    #@4
    .line 1824
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 1826
    return v7

    #@9
    .line 1829
    :cond_0
    invoke-static {v7}, Lcom/android/server/wifi/WifiNative;->getChannelsForBand(I)[I

    #@c
    move-result-object v0

    #@d
    .line 1830
    .local v0, "channels24":[I
    if-nez v0, :cond_1

    #@f
    .line 1831
    const-string/jumbo v3, "Could not get channels for 2.4 GHz"

    #@12
    invoke-static {v3}, Lcom/android/server/wifi/WifiScanningServiceImpl;->loge(Ljava/lang/String;)V

    #@15
    .line 1832
    return v6

    #@16
    .line 1835
    :cond_1
    invoke-static {v5}, Lcom/android/server/wifi/WifiNative;->getChannelsForBand(I)[I

    #@19
    move-result-object v1

    #@1a
    .line 1836
    .local v1, "channels5":[I
    if-nez v1, :cond_2

    #@1c
    .line 1837
    const-string/jumbo v3, "Could not get channels for 5 GHz"

    #@1f
    invoke-static {v3}, Lcom/android/server/wifi/WifiScanningServiceImpl;->loge(Ljava/lang/String;)V

    #@22
    .line 1838
    return v6

    #@23
    .line 1841
    :cond_2
    const/4 v3, 0x4

    #@24
    invoke-static {v3}, Lcom/android/server/wifi/WifiNative;->getChannelsForBand(I)[I

    #@27
    move-result-object v2

    #@28
    .line 1842
    .local v2, "channelsDfs":[I
    if-nez v2, :cond_3

    #@2a
    .line 1843
    const-string/jumbo v3, "Could not get channels for DFS"

    #@2d
    invoke-static {v3}, Lcom/android/server/wifi/WifiScanningServiceImpl;->loge(Ljava/lang/String;)V

    #@30
    .line 1844
    return v6

    #@31
    .line 1847
    :cond_3
    const/16 v3, 0x8

    #@33
    new-array v3, v3, [[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@35
    sput-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@37
    .line 1849
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@39
    new-array v4, v6, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@3b
    aput-object v4, v3, v6

    #@3d
    .line 1851
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@3f
    array-length v4, v0

    #@40
    new-array v4, v4, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@42
    aput-object v4, v3, v7

    #@44
    .line 1852
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@46
    aget-object v3, v3, v7

    #@48
    invoke-static {v3, v6, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    #@4b
    .line 1854
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@4d
    array-length v4, v1

    #@4e
    new-array v4, v4, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@50
    aput-object v4, v3, v5

    #@52
    .line 1855
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@54
    aget-object v3, v3, v5

    #@56
    invoke-static {v3, v6, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    #@59
    .line 1857
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@5b
    array-length v4, v0

    #@5c
    array-length v5, v1

    #@5d
    add-int/2addr v4, v5

    #@5e
    new-array v4, v4, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@60
    const/4 v5, 0x3

    #@61
    aput-object v4, v3, v5

    #@63
    .line 1858
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@65
    const/4 v4, 0x3

    #@66
    aget-object v3, v3, v4

    #@68
    invoke-static {v3, v6, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    #@6b
    .line 1859
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@6d
    const/4 v4, 0x3

    #@6e
    aget-object v3, v3, v4

    #@70
    array-length v4, v0

    #@71
    invoke-static {v3, v4, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    #@74
    .line 1861
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@76
    array-length v4, v2

    #@77
    new-array v4, v4, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@79
    const/4 v5, 0x4

    #@7a
    aput-object v4, v3, v5

    #@7c
    .line 1862
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@7e
    const/4 v4, 0x4

    #@7f
    aget-object v3, v3, v4

    #@81
    invoke-static {v3, v6, v2}, Lcom/android/server/wifi/WifiScanningServiceImpl;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    #@84
    .line 1864
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@86
    array-length v4, v0

    #@87
    array-length v5, v2

    #@88
    add-int/2addr v4, v5

    #@89
    new-array v4, v4, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@8b
    const/4 v5, 0x5

    #@8c
    aput-object v4, v3, v5

    #@8e
    .line 1865
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@90
    const/4 v4, 0x5

    #@91
    aget-object v3, v3, v4

    #@93
    invoke-static {v3, v6, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    #@96
    .line 1866
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@98
    const/4 v4, 0x5

    #@99
    aget-object v3, v3, v4

    #@9b
    array-length v4, v0

    #@9c
    invoke-static {v3, v4, v2}, Lcom/android/server/wifi/WifiScanningServiceImpl;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    #@9f
    .line 1868
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@a1
    array-length v4, v1

    #@a2
    array-length v5, v2

    #@a3
    add-int/2addr v4, v5

    #@a4
    new-array v4, v4, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@a6
    const/4 v5, 0x6

    #@a7
    aput-object v4, v3, v5

    #@a9
    .line 1869
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@ab
    const/4 v4, 0x6

    #@ac
    aget-object v3, v3, v4

    #@ae
    invoke-static {v3, v6, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    #@b1
    .line 1870
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@b3
    const/4 v4, 0x6

    #@b4
    aget-object v3, v3, v4

    #@b6
    array-length v4, v1

    #@b7
    invoke-static {v3, v4, v2}, Lcom/android/server/wifi/WifiScanningServiceImpl;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    #@ba
    .line 1872
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@bc
    .line 1873
    array-length v4, v0

    #@bd
    array-length v5, v1

    #@be
    add-int/2addr v4, v5

    #@bf
    array-length v5, v2

    #@c0
    add-int/2addr v4, v5

    #@c1
    .line 1872
    new-array v4, v4, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@c3
    aput-object v4, v3, v8

    #@c5
    .line 1874
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@c7
    aget-object v3, v3, v8

    #@c9
    invoke-static {v3, v6, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    #@cc
    .line 1875
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@ce
    aget-object v3, v3, v8

    #@d0
    array-length v4, v0

    #@d1
    invoke-static {v3, v4, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    #@d4
    .line 1876
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@d6
    aget-object v3, v3, v8

    #@d8
    array-length v4, v0

    #@d9
    array-length v5, v1

    #@da
    add-int/2addr v4, v5

    #@db
    invoke-static {v3, v4, v2}, Lcom/android/server/wifi/WifiScanningServiceImpl;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    #@de
    .line 1878
    return v7
.end method

.method private static isDfs(I)Z
    .locals 3
    .param p0, "channel"    # I

    #@0
    .prologue
    .line 1892
    const/4 v2, 0x4

    #@1
    invoke-static {v2}, Lcom/android/server/wifi/WifiScanningServiceImpl;->getChannelsForBand(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@4
    move-result-object v0

    #@5
    .line 1894
    .local v0, "dfsChannels":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@7
    if-ge v1, v2, :cond_1

    #@9
    .line 1895
    aget-object v2, v0, v1

    #@b
    iget v2, v2, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    #@d
    if-ne p0, v2, :cond_0

    #@f
    .line 1896
    const/4 v2, 0x1

    #@10
    return v2

    #@11
    .line 1894
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 1899
    :cond_1
    const/4 v2, 0x0

    #@15
    return v2
.end method

.method private static localLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 82
    sget-object v0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mLocalLog:Landroid/util/LocalLog;

    #@2
    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@5
    .line 81
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 91
    const-string/jumbo v0, "WifiScanningService"

    #@3
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 92
    sget-object v0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mLocalLog:Landroid/util/LocalLog;

    #@8
    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@b
    .line 90
    return-void
.end method

.method private static logw(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 86
    const-string/jumbo v0, "WifiScanningService"

    #@3
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 87
    sget-object v0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mLocalLog:Landroid/util/LocalLog;

    #@8
    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@b
    .line 85
    return-void
.end method


# virtual methods
.method addScanRequest(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;)Z
    .locals 5
    .param p1, "ci"    # Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I
    .param p3, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1247
    if-nez p1, :cond_0

    #@3
    .line 1248
    const-string/jumbo v1, "WifiScanningService"

    #@6
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v3, "Failing scan request ClientInfo not found "

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 1249
    return v4

    #@1e
    .line 1251
    :cond_0
    iget v1, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@20
    const/16 v2, 0x3e8

    #@22
    if-ge v1, v2, :cond_1

    #@24
    .line 1252
    new-instance v1, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v2, "Failing scan request because periodInMs is "

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    iget v2, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    invoke-static {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->localLog(Ljava/lang/String;)V

    #@3d
    .line 1253
    return v4

    #@3e
    .line 1256
    :cond_1
    const/4 v0, 0x0

    #@3f
    .line 1257
    .local v0, "minSupportedPeriodMs":I
    iget-object v1, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@41
    if-eqz v1, :cond_3

    #@43
    .line 1258
    iget-object v1, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@45
    array-length v1, v1

    #@46
    mul-int/lit16 v0, v1, 0xc8

    #@48
    .line 1274
    :cond_2
    :goto_0
    iget v1, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@4a
    if-ge v1, v0, :cond_6

    #@4c
    .line 1275
    new-instance v1, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v2, "Failing scan request because minSupportedPeriodMs is "

    #@54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v1

    #@58
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v1

    #@5c
    .line 1276
    const-string/jumbo v2, " but the request wants "

    #@5f
    .line 1275
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v1

    #@63
    .line 1276
    iget v2, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@65
    .line 1275
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@68
    move-result-object v1

    #@69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v1

    #@6d
    invoke-static {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->localLog(Ljava/lang/String;)V

    #@70
    .line 1277
    return v4

    #@71
    .line 1260
    :cond_3
    iget v1, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@73
    and-int/lit8 v1, v1, 0x1

    #@75
    if-nez v1, :cond_4

    #@77
    .line 1262
    const/16 v0, 0x3e8

    #@79
    .line 1264
    :cond_4
    iget v1, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@7b
    and-int/lit8 v1, v1, 0x2

    #@7d
    if-nez v1, :cond_5

    #@7f
    .line 1266
    add-int/lit16 v0, v0, 0x3e8

    #@81
    .line 1268
    :cond_5
    iget v1, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@83
    and-int/lit8 v1, v1, 0x4

    #@85
    if-nez v1, :cond_2

    #@87
    .line 1270
    add-int/lit16 v0, v0, 0x7d0

    #@89
    goto :goto_0

    #@8a
    .line 1280
    :cond_6
    const-string/jumbo v1, "addScanRequest"

    #@8d
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/wifi/WifiScanningServiceImpl;->logScanRequest(Ljava/lang/String;Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;)V

    #@90
    .line 1281
    invoke-virtual {p1, p3, p2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->addScanRequest(Landroid/net/wifi/WifiScanner$ScanSettings;I)V

    #@93
    .line 1282
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->resetBuckets()Z

    #@96
    move-result v1

    #@97
    if-eqz v1, :cond_7

    #@99
    .line 1283
    const/4 v1, 0x1

    #@9a
    return v1

    #@9b
    .line 1285
    :cond_7
    invoke-virtual {p1, p2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->removeScanRequest(I)V

    #@9e
    .line 1286
    const-string/jumbo v1, "Failing scan request because failed to reset scan"

    #@a1
    invoke-static {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->localLog(Ljava/lang/String;)V

    #@a4
    .line 1287
    return v4
.end method

.method addSingleScanRequest(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;)Z
    .locals 4
    .param p1, "ci"    # Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I
    .param p3, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1292
    if-nez p1, :cond_0

    #@4
    .line 1293
    const-string/jumbo v0, "WifiScanningService"

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "Failing single scan request ClientInfo not found "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 1294
    return v3

    #@1f
    .line 1296
    :cond_0
    iget v0, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    #@21
    if-nez v0, :cond_1

    #@23
    .line 1297
    iput v1, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    #@25
    .line 1299
    :cond_1
    iget v0, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@27
    if-nez v0, :cond_2

    #@29
    .line 1300
    const/16 v0, 0x2710

    #@2b
    iput v0, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@2d
    .line 1303
    :cond_2
    const-string/jumbo v0, "addSingleScanRequest"

    #@30
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/wifi/WifiScanningServiceImpl;->logScanRequest(Ljava/lang/String;Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;)V

    #@33
    .line 1304
    invoke-virtual {p1, p3, p2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->addScanRequest(Landroid/net/wifi/WifiScanner$ScanSettings;I)V

    #@36
    .line 1305
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->resetBuckets()Z

    #@39
    move-result v0

    #@3a
    if-eqz v0, :cond_3

    #@3c
    .line 1307
    iput v3, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@3e
    .line 1308
    return v1

    #@3f
    .line 1310
    :cond_3
    invoke-virtual {p1, p2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->removeScanRequest(I)V

    #@42
    .line 1311
    const-string/jumbo v0, "Failing scan request because failed to reset scan"

    #@45
    invoke-static {v0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->localLog(Ljava/lang/String;)V

    #@48
    .line 1312
    return v3
.end method

.method configureWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V
    .locals 1
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    #@0
    .prologue
    .line 1400
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mWifiChangeStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->configure(Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V

    #@5
    .line 1399
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1934
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@5
    .line 1933
    return-void
.end method

.method public getAvailableChannels(I)Landroid/os/Bundle;
    .locals 7
    .param p1, "band"    # I

    #@0
    .prologue
    .line 107
    invoke-static {p1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->getChannelsForBand(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@3
    move-result-object v2

    #@4
    .line 108
    .local v2, "channelSpecs":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    new-instance v3, Ljava/util/ArrayList;

    #@6
    array-length v4, v2

    #@7
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    #@a
    .line 109
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    #@b
    array-length v5, v2

    #@c
    :goto_0
    if-ge v4, v5, :cond_0

    #@e
    aget-object v1, v2, v4

    #@10
    .line 110
    .local v1, "channelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    iget v6, v1, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    #@12
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15
    move-result-object v6

    #@16
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@19
    .line 109
    add-int/lit8 v4, v4, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 112
    .end local v1    # "channelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    #@1e
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@21
    .line 113
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v4, "Channels"

    #@24
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@27
    .line 114
    return-object v0
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 97
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 98
    new-instance v0, Landroid/os/Messenger;

    #@7
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;

    #@9
    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    #@c
    return-object v0

    #@d
    .line 100
    :cond_0
    const-string/jumbo v0, "WifiScanningServiceImpl trying to get messenger w/o initialization"

    #@10
    invoke-static {v0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->loge(Ljava/lang/String;)V

    #@13
    .line 101
    return-object v1
.end method

.method logScanRequest(Ljava/lang/String;Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;)V
    .locals 2
    .param p1, "request"    # Ljava/lang/String;
    .param p2, "ci"    # Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .param p3, "id"    # I
    .param p4, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    #@0
    .prologue
    .line 1230
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 1231
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@8
    .line 1232
    const-string/jumbo v1, "\nClient "

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@e
    .line 1233
    invoke-virtual {p2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->toString()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@15
    .line 1234
    const-string/jumbo v1, "\nId "

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1b
    .line 1235
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@1e
    .line 1236
    const-string/jumbo v1, "\n"

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@24
    .line 1237
    if-eqz p4, :cond_0

    #@26
    .line 1238
    invoke-static {p4}, Lcom/android/server/wifi/WifiScanningServiceImpl;->describe(Landroid/net/wifi/WifiScanner$ScanSettings;)Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2d
    .line 1239
    const-string/jumbo v1, "\n"

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@33
    .line 1241
    :cond_0
    const-string/jumbo v1, "\n"

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@39
    .line 1242
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    invoke-static {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->localLog(Ljava/lang/String;)V

    #@40
    .line 1229
    return-void
.end method

.method removeScanRequest(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;I)V
    .locals 2
    .param p1, "ci"    # Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1317
    if-eqz p1, :cond_0

    #@3
    .line 1318
    const-string/jumbo v0, "removeScanRequest"

    #@6
    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->logScanRequest(Ljava/lang/String;Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;)V

    #@9
    .line 1319
    invoke-virtual {p1, p2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->removeScanRequest(I)V

    #@c
    .line 1320
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->resetBuckets()Z

    #@f
    .line 1316
    :cond_0
    return-void
.end method

.method replyFailed(Landroid/os/Message;ILjava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "reason"    # I
    .param p3, "description"    # Ljava/lang/String;

    #@0
    .prologue
    .line 930
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 931
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@7
    move-result-object v1

    #@8
    .line 932
    .local v1, "reply":Landroid/os/Message;
    const v2, 0x27012

    #@b
    iput v2, v1, Landroid/os/Message;->what:I

    #@d
    .line 933
    iget v2, p1, Landroid/os/Message;->arg2:I

    #@f
    iput v2, v1, Landroid/os/Message;->arg2:I

    #@11
    .line 934
    new-instance v2, Landroid/net/wifi/WifiScanner$OperationResult;

    #@13
    invoke-direct {v2, p2, p3}, Landroid/net/wifi/WifiScanner$OperationResult;-><init>(ILjava/lang/String;)V

    #@16
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@18
    .line 936
    :try_start_0
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@1a
    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 929
    .end local v1    # "reply":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    #@1e
    .line 937
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
    .line 915
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 916
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@7
    move-result-object v1

    #@8
    .line 917
    .local v1, "reply":Landroid/os/Message;
    const v2, 0x27011

    #@b
    iput v2, v1, Landroid/os/Message;->what:I

    #@d
    .line 918
    iget v2, p1, Landroid/os/Message;->arg2:I

    #@f
    iput v2, v1, Landroid/os/Message;->arg2:I

    #@11
    .line 920
    :try_start_0
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@13
    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 914
    .end local v1    # "reply":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    #@17
    .line 921
    .restart local v1    # "reply":Landroid/os/Message;
    :catch_0
    move-exception v0

    #@18
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method reportScanResults()Z
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 1325
    invoke-static {v5}, Lcom/android/server/wifi/WifiNative;->getScanResults(Z)[Landroid/net/wifi/WifiScanner$ScanData;

    #@4
    move-result-object v3

    #@5
    .line 1326
    .local v3, "results":[Landroid/net/wifi/WifiScanner$ScanData;
    iget-object v4, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    #@7
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@a
    move-result-object v2

    #@b
    .line 1327
    .local v2, "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "ci2$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_0

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    #@1b
    .line 1328
    .local v0, "ci2":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->reportScanResults([Landroid/net/wifi/WifiScanner$ScanData;)V

    #@1e
    goto :goto_0

    #@1f
    .line 1331
    .end local v0    # "ci2":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    :cond_0
    return v5
.end method

.method reportWifiChanged([Landroid/net/wifi/ScanResult;)V
    .locals 4
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    .line 1404
    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    #@2
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v2

    #@6
    .line 1405
    .local v2, "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "ci$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_0

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    #@16
    .line 1406
    .local v0, "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->reportWifiChanged([Landroid/net/wifi/ScanResult;)V

    #@19
    goto :goto_0

    #@1a
    .line 1403
    .end local v0    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    :cond_0
    return-void
.end method

.method reportWifiStabilized([Landroid/net/wifi/ScanResult;)V
    .locals 4
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    .line 1411
    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    #@2
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v2

    #@6
    .line 1412
    .local v2, "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "ci$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_0

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    #@16
    .line 1413
    .local v0, "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->reportWifiStabilized([Landroid/net/wifi/ScanResult;)V

    #@19
    goto :goto_0

    #@1a
    .line 1410
    .end local v0    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    :cond_0
    return-void
.end method

.method resetBuckets()Z
    .locals 20

    #@0
    .prologue
    .line 1182
    new-instance v2, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;

    #@2
    const/4 v14, 0x0

    #@3
    move-object/from16 v0, p0

    #@5
    invoke-direct {v2, v0, v14}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl;Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;)V

    #@8
    .line 1183
    .local v2, "c":Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;
    move-object/from16 v0, p0

    #@a
    iget-object v14, v0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    #@c
    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@f
    move-result-object v5

    #@10
    .line 1184
    .local v5, "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v4

    #@14
    .local v4, "ci$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v14

    #@18
    if-eqz v14, :cond_1

    #@1a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v3

    #@1e
    check-cast v3, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    #@20
    .line 1185
    .local v3, "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->getScanSettings()Ljava/util/Collection;

    #@23
    move-result-object v13

    #@24
    .line 1186
    .local v13, "settings":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@27
    move-result-object v12

    #@28
    .local v12, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@2b
    move-result v14

    #@2c
    if-eqz v14, :cond_0

    #@2e
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@31
    move-result-object v10

    #@32
    check-cast v10, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@34
    .line 1187
    .local v10, "s":Landroid/net/wifi/WifiScanner$ScanSettings;
    invoke-virtual {v2, v10}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->prepChannelMap(Landroid/net/wifi/WifiScanner$ScanSettings;)V

    #@37
    goto :goto_0

    #@38
    .line 1191
    .end local v3    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .end local v10    # "s":Landroid/net/wifi/WifiScanner$ScanSettings;
    .end local v12    # "s$iterator":Ljava/util/Iterator;
    .end local v13    # "settings":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    :cond_1
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3b
    move-result-object v4

    #@3c
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@3f
    move-result v14

    #@40
    if-eqz v14, :cond_5

    #@42
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@45
    move-result-object v3

    #@46
    check-cast v3, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    #@48
    .line 1192
    .restart local v3    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->getScans()Ljava/util/Iterator;

    #@4b
    move-result-object v8

    #@4c
    .line 1193
    .local v8, "it":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@4f
    move-result v14

    #@50
    if-eqz v14, :cond_2

    #@52
    .line 1195
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@55
    move-result-object v6

    #@56
    check-cast v6, Ljava/util/Map$Entry;

    #@58
    .line 1196
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@5b
    move-result-object v14

    #@5c
    check-cast v14, Ljava/lang/Integer;

    #@5e
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    #@61
    move-result v7

    #@62
    .line 1197
    .local v7, "id":I
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@65
    move-result-object v10

    #@66
    check-cast v10, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@68
    .line 1198
    .restart local v10    # "s":Landroid/net/wifi/WifiScanner$ScanSettings;
    invoke-virtual {v2, v10}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->addScanRequestToBucket(Landroid/net/wifi/WifiScanner$ScanSettings;)I

    #@6b
    move-result v9

    #@6c
    .line 1199
    .local v9, "newPeriodInMs":I
    const/4 v14, -0x1

    #@6d
    if-ne v9, v14, :cond_4

    #@6f
    .line 1201
    const/4 v14, 0x0

    #@70
    return v14

    #@71
    .line 1203
    :cond_4
    iget v14, v10, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@73
    if-eq v9, v14, :cond_3

    #@75
    .line 1204
    invoke-virtual {v3, v7, v10, v9}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->reportPeriodChanged(ILandroid/net/wifi/WifiScanner$ScanSettings;I)V

    #@78
    goto :goto_1

    #@79
    .line 1209
    .end local v3    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    .end local v7    # "id":I
    .end local v8    # "it":Ljava/util/Iterator;
    .end local v9    # "newPeriodInMs":I
    .end local v10    # "s":Landroid/net/wifi/WifiScanner$ScanSettings;
    :cond_5
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->compressBuckets()V

    #@7c
    .line 1211
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->getComputedSettings()Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@7f
    move-result-object v11

    #@80
    .line 1212
    .local v11, "s":Lcom/android/server/wifi/WifiNative$ScanSettings;
    iget v14, v11, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    #@82
    if-nez v14, :cond_6

    #@84
    .line 1214
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->stopScan()V

    #@87
    .line 1215
    const/4 v14, 0x1

    #@88
    return v14

    #@89
    .line 1217
    :cond_6
    move-object/from16 v0, p0

    #@8b
    iget-object v14, v0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@8d
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiNative;->startScan(Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z

    #@90
    move-result v14

    #@91
    if-eqz v14, :cond_7

    #@93
    .line 1218
    new-instance v14, Ljava/lang/StringBuilder;

    #@95
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@98
    const-string/jumbo v15, "Successfully started scan of "

    #@9b
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v14

    #@9f
    iget v15, v11, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    #@a1
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v14

    #@a5
    const-string/jumbo v15, " buckets at"

    #@a8
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v14

    #@ac
    .line 1219
    const-string/jumbo v15, "time = "

    #@af
    .line 1218
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v14

    #@b3
    .line 1219
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    #@b6
    move-result-wide v16

    #@b7
    const-wide/16 v18, 0x3e8

    #@b9
    div-long v16, v16, v18

    #@bb
    .line 1218
    move-wide/from16 v0, v16

    #@bd
    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v14

    #@c1
    .line 1219
    const-string/jumbo v15, " period "

    #@c4
    .line 1218
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v14

    #@c8
    .line 1220
    iget v15, v11, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    #@ca
    .line 1218
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v14

    #@ce
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d1
    move-result-object v14

    #@d2
    invoke-static {v14}, Lcom/android/server/wifi/WifiScanningServiceImpl;->localLog(Ljava/lang/String;)V

    #@d5
    .line 1221
    const/4 v14, 0x1

    #@d6
    return v14

    #@d7
    .line 1223
    :cond_7
    new-instance v14, Ljava/lang/StringBuilder;

    #@d9
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@dc
    const-string/jumbo v15, "Failed to start scan of "

    #@df
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v14

    #@e3
    iget v15, v11, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    #@e5
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v14

    #@e9
    const-string/jumbo v15, " buckets"

    #@ec
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v14

    #@f0
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f3
    move-result-object v14

    #@f4
    invoke-static {v14}, Lcom/android/server/wifi/WifiScanningServiceImpl;->loge(Ljava/lang/String;)V

    #@f7
    .line 1224
    const/4 v14, 0x0

    #@f8
    return v14
.end method

.method resetHotlist()V
    .locals 13

    #@0
    .prologue
    .line 1335
    iget-object v12, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    #@2
    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v4

    #@6
    .line 1336
    .local v4, "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;>;"
    const/4 v7, 0x0

    #@7
    .line 1338
    .local v7, "num_hotlist_ap":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v3

    #@b
    .local v3, "ci$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v12

    #@f
    if-eqz v12, :cond_1

    #@11
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    #@17
    .line 1339
    .local v2, "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->getHotlistSettings()Ljava/util/Collection;

    #@1a
    move-result-object v1

    #@1b
    .line 1340
    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiScanner$HotlistSettings;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v9

    #@1f
    .local v9, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v12

    #@23
    if-eqz v12, :cond_0

    #@25
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v8

    #@29
    check-cast v8, Landroid/net/wifi/WifiScanner$HotlistSettings;

    #@2b
    .line 1341
    .local v8, "s":Landroid/net/wifi/WifiScanner$HotlistSettings;
    iget-object v12, v8, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@2d
    array-length v12, v12

    #@2e
    add-int/2addr v7, v12

    #@2f
    goto :goto_0

    #@30
    .line 1345
    .end local v1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiScanner$HotlistSettings;>;"
    .end local v2    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .end local v8    # "s":Landroid/net/wifi/WifiScanner$HotlistSettings;
    .end local v9    # "s$iterator":Ljava/util/Iterator;
    :cond_1
    if-nez v7, :cond_2

    #@32
    .line 1346
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->resetHotlist()V

    #@35
    .line 1334
    :goto_1
    return-void

    #@36
    .line 1348
    :cond_2
    new-array v0, v7, [Landroid/net/wifi/WifiScanner$BssidInfo;

    #@38
    .line 1349
    .local v0, "bssidInfos":[Landroid/net/wifi/WifiScanner$BssidInfo;
    const/4 v6, 0x0

    #@39
    .line 1350
    .local v6, "index":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3c
    move-result-object v3

    #@3d
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@40
    move-result v12

    #@41
    if-eqz v12, :cond_5

    #@43
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@46
    move-result-object v2

    #@47
    check-cast v2, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    #@49
    .line 1351
    .restart local v2    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->getHotlistSettings()Ljava/util/Collection;

    #@4c
    move-result-object v11

    #@4d
    .line 1352
    .local v11, "settings":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiScanner$HotlistSettings;>;"
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@50
    move-result-object v9

    #@51
    .restart local v9    # "s$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@54
    move-result v12

    #@55
    if-eqz v12, :cond_3

    #@57
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5a
    move-result-object v8

    #@5b
    check-cast v8, Landroid/net/wifi/WifiScanner$HotlistSettings;

    #@5d
    .line 1353
    .restart local v8    # "s":Landroid/net/wifi/WifiScanner$HotlistSettings;
    const/4 v5, 0x0

    #@5e
    .local v5, "i":I
    :goto_2
    iget-object v12, v8, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@60
    array-length v12, v12

    #@61
    if-ge v5, v12, :cond_4

    #@63
    .line 1354
    iget-object v12, v8, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@65
    aget-object v12, v12, v5

    #@67
    aput-object v12, v0, v6

    #@69
    .line 1353
    add-int/lit8 v5, v5, 0x1

    #@6b
    add-int/lit8 v6, v6, 0x1

    #@6d
    goto :goto_2

    #@6e
    .line 1359
    .end local v2    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .end local v5    # "i":I
    .end local v8    # "s":Landroid/net/wifi/WifiScanner$HotlistSettings;
    .end local v9    # "s$iterator":Ljava/util/Iterator;
    .end local v11    # "settings":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiScanner$HotlistSettings;>;"
    :cond_5
    new-instance v10, Landroid/net/wifi/WifiScanner$HotlistSettings;

    #@70
    invoke-direct {v10}, Landroid/net/wifi/WifiScanner$HotlistSettings;-><init>()V

    #@73
    .line 1360
    .local v10, "settings":Landroid/net/wifi/WifiScanner$HotlistSettings;
    iput-object v0, v10, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@75
    .line 1361
    const/4 v12, 0x3

    #@76
    iput v12, v10, Landroid/net/wifi/WifiScanner$HotlistSettings;->apLostThreshold:I

    #@78
    .line 1362
    iget-object v12, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@7a
    invoke-static {v10, v12}, Lcom/android/server/wifi/WifiNative;->setHotlist(Landroid/net/wifi/WifiScanner$HotlistSettings;Lcom/android/server/wifi/WifiNative$HotlistEventHandler;)Z

    #@7d
    goto :goto_1
.end method

.method resetHotlist(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;I)V
    .locals 0
    .param p1, "ci"    # Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I

    #@0
    .prologue
    .line 1372
    invoke-virtual {p1, p2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->removeHostlistSettings(I)V

    #@3
    .line 1373
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->resetHotlist()V

    #@6
    .line 1371
    return-void
.end method

.method setHotlist(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$HotlistSettings;)V
    .locals 0
    .param p1, "ci"    # Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I
    .param p3, "settings"    # Landroid/net/wifi/WifiScanner$HotlistSettings;

    #@0
    .prologue
    .line 1367
    invoke-virtual {p1, p3, p2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->addHostlistSettings(Landroid/net/wifi/WifiScanner$HotlistSettings;I)V

    #@3
    .line 1368
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->resetHotlist()V

    #@6
    .line 1366
    return-void
.end method

.method public startService(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mContext:Landroid/content/Context;

    #@2
    .line 235
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mContext:Landroid/content/Context;

    #@4
    const-string/jumbo v2, "power"

    #@7
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Landroid/os/PowerManager;

    #@d
    iput-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    #@f
    .line 236
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    #@12
    move-result-object v1

    #@13
    iput-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@15
    .line 238
    new-instance v0, Landroid/os/HandlerThread;

    #@17
    const-string/jumbo v1, "WifiScanningService"

    #@1a
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@1d
    .line 239
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    #@20
    .line 241
    new-instance v1, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;

    #@22
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@25
    move-result-object v2

    #@26
    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl;Landroid/os/Looper;)V

    #@29
    iput-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;

    #@2b
    .line 242
    new-instance v1, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@2d
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@30
    move-result-object v2

    #@31
    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl;Landroid/os/Looper;)V

    #@34
    iput-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@36
    .line 243
    new-instance v1, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    #@38
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@3b
    move-result-object v2

    #@3c
    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    #@3e
    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl;Landroid/os/Looper;Landroid/os/PowerManager;)V

    #@41
    iput-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mWifiChangeStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    #@43
    .line 245
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mContext:Landroid/content/Context;

    #@45
    .line 246
    new-instance v2, Lcom/android/server/wifi/WifiScanningServiceImpl$1;

    #@47
    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$1;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl;)V

    #@4a
    .line 258
    new-instance v3, Landroid/content/IntentFilter;

    #@4c
    const-string/jumbo v4, "wifi_scan_available"

    #@4f
    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@52
    .line 245
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@55
    .line 260
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@57
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->start()V

    #@5a
    .line 261
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mWifiChangeStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    #@5c
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->start()V

    #@5f
    .line 233
    return-void
.end method

.method trackWifiChanges(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;I)V
    .locals 1
    .param p1, "ci"    # Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I

    #@0
    .prologue
    .line 1379
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mWifiChangeStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->enable()V

    #@5
    .line 1380
    invoke-virtual {p1, p2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->addSignificantWifiChange(I)V

    #@8
    .line 1378
    return-void
.end method

.method untrackWifiChanges(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;I)V
    .locals 4
    .param p1, "ci"    # Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I

    #@0
    .prologue
    .line 1384
    invoke-virtual {p1, p2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->removeSignificantWifiChange(I)V

    #@3
    .line 1385
    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    #@5
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@8
    move-result-object v2

    #@9
    .line 1386
    .local v2, "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    .local v1, "ci2$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_1

    #@13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    #@19
    .line 1387
    .local v0, "ci2":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->getWifiChangeHandlers()Ljava/util/Collection;

    #@1c
    move-result-object v3

    #@1d
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_0

    #@23
    .line 1390
    return-void

    #@24
    .line 1396
    .end local v0    # "ci2":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mWifiChangeStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    #@26
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->disable()V

    #@29
    .line 1383
    return-void
.end method
