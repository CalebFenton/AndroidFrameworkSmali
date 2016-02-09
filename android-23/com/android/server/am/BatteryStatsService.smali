.class public final Lcom/android/server/am/BatteryStatsService;
.super Lcom/android/internal/app/IBatteryStats$Stub;
.source "BatteryStatsService.java"

# interfaces
.implements Landroid/os/PowerManagerInternal$LowPowerModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;,
        Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "BatteryStatsService"

.field static sService:Lcom/android/internal/app/IBatteryStats;


# instance fields
.field final UPDATE_ALL:I

.field final UPDATE_BT:I

.field final UPDATE_CPU:I

.field final UPDATE_RADIO:I

.field final UPDATE_WIFI:I

.field mContext:Landroid/content/Context;

.field private final mExternalStatsLock:Ljava/lang/Object;

.field final mHandler:Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

.field private mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mExternalStatsLock"
    .end annotation
.end field

.field mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field final mStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private mWifiManager:Landroid/net/wifi/IWifiManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mExternalStatsLock"
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p0, "outBuffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/am/BatteryStatsService;->nativeWaitWakeup(Ljava/nio/ByteBuffer;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method constructor <init>(Ljava/io/File;Landroid/os/Handler;)V
    .locals 12
    .param p1, "systemDir"    # Ljava/io/File;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    const-wide/16 v1, 0x0

    #@2
    .line 163
    invoke-direct {p0}, Lcom/android/internal/app/IBatteryStats$Stub;-><init>()V

    #@5
    .line 82
    const/4 v0, 0x1

    #@6
    iput v0, p0, Lcom/android/server/am/BatteryStatsService;->UPDATE_CPU:I

    #@8
    .line 83
    const/4 v0, 0x2

    #@9
    iput v0, p0, Lcom/android/server/am/BatteryStatsService;->UPDATE_WIFI:I

    #@b
    .line 84
    const/4 v0, 0x4

    #@c
    iput v0, p0, Lcom/android/server/am/BatteryStatsService;->UPDATE_RADIO:I

    #@e
    .line 85
    const/16 v0, 0x8

    #@10
    iput v0, p0, Lcom/android/server/am/BatteryStatsService;->UPDATE_BT:I

    #@12
    .line 86
    const/16 v0, 0xf

    #@14
    iput v0, p0, Lcom/android/server/am/BatteryStatsService;->UPDATE_ALL:I

    #@16
    .line 1197
    new-instance v0, Ljava/lang/Object;

    #@18
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@1b
    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mExternalStatsLock:Ljava/lang/Object;

    #@1d
    .line 1205
    new-instance v0, Landroid/net/wifi/WifiActivityEnergyInfo;

    #@1f
    const/4 v3, 0x0

    #@20
    move-wide v4, v1

    #@21
    move-wide v6, v1

    #@22
    move-wide v8, v1

    #@23
    move-wide v10, v1

    #@24
    invoke-direct/range {v0 .. v11}, Landroid/net/wifi/WifiActivityEnergyInfo;-><init>(JIJJJJ)V

    #@27
    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    #@29
    .line 166
    new-instance v0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

    #@2b
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@32
    move-result-object v1

    #@33
    invoke-direct {v0, p0, v1}, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/Looper;)V

    #@36
    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

    #@38
    .line 169
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl;

    #@3a
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

    #@3c
    invoke-direct {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Ljava/io/File;Landroid/os/Handler;Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;)V

    #@3f
    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@41
    .line 163
    return-void
.end method

.method private doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "i"    # I
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "enable"    # Z

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 999
    add-int/lit8 p2, p2, 0x1

    #@3
    .line 1000
    array-length v0, p3

    #@4
    if-lt p2, v0, :cond_1

    #@6
    .line 1001
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v1, "Missing option argument for "

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    if-eqz p4, :cond_0

    #@14
    const-string/jumbo v0, "--enable"

    #@17
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@22
    .line 1002
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    #@25
    .line 1003
    return v2

    #@26
    .line 1001
    :cond_0
    const-string/jumbo v0, "--disable"

    #@29
    goto :goto_0

    #@2a
    .line 1005
    :cond_1
    const-string/jumbo v0, "full-wake-history"

    #@2d
    aget-object v1, p3, p2

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v0

    #@33
    if-nez v0, :cond_2

    #@35
    const-string/jumbo v0, "full-history"

    #@38
    aget-object v1, p3, p2

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d
    move-result v0

    #@3e
    if-eqz v0, :cond_3

    #@40
    .line 1006
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@42
    monitor-enter v1

    #@43
    .line 1007
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@45
    invoke-virtual {v0, p4}, Lcom/android/internal/os/BatteryStatsImpl;->setRecordAllHistoryLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@48
    :goto_1
    monitor-exit v1

    #@49
    .line 1018
    return p2

    #@4a
    .line 1006
    :catchall_0
    move-exception v0

    #@4b
    monitor-exit v1

    #@4c
    throw v0

    #@4d
    .line 1009
    :cond_3
    const-string/jumbo v0, "no-auto-reset"

    #@50
    aget-object v1, p3, p2

    #@52
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@55
    move-result v0

    #@56
    if-eqz v0, :cond_4

    #@58
    .line 1010
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5a
    monitor-enter v1

    #@5b
    .line 1011
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5d
    invoke-virtual {v0, p4}, Lcom/android/internal/os/BatteryStatsImpl;->setNoAutoReset(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@60
    goto :goto_1

    #@61
    .line 1010
    :catchall_1
    move-exception v0

    #@62
    monitor-exit v1

    #@63
    throw v0

    #@64
    .line 1014
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v1, "Unknown enable/disable option: "

    #@6c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v0

    #@70
    aget-object v1, p3, p2

    #@72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v0

    #@76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v0

    #@7a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7d
    .line 1015
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    #@80
    .line 1016
    return v2
.end method

.method private dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 975
    const-string/jumbo v0, "Battery stats (batterystats) dump options:"

    #@3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 976
    const-string/jumbo v0, "  [--checkin] [--history] [--history-start] [--charged] [-c]"

    #@9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c
    .line 977
    const-string/jumbo v0, "  [--daily] [--reset] [--write] [--new-daily] [--read-daily] [-h] [<package.name>]"

    #@f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@12
    .line 978
    const-string/jumbo v0, "  --checkin: format output for a checkin report."

    #@15
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@18
    .line 979
    const-string/jumbo v0, "  --history: show only history data."

    #@1b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1e
    .line 980
    const-string/jumbo v0, "  --history-start <num>: show only history data starting at given time offset."

    #@21
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@24
    .line 981
    const-string/jumbo v0, "  --charged: only output data since last charged."

    #@27
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2a
    .line 982
    const-string/jumbo v0, "  --daily: only output full daily data."

    #@2d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@30
    .line 983
    const-string/jumbo v0, "  --reset: reset the stats, clearing all current data."

    #@33
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@36
    .line 984
    const-string/jumbo v0, "  --write: force write current collected stats to disk."

    #@39
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3c
    .line 985
    const-string/jumbo v0, "  --new-daily: immediately create and write new daily stats record."

    #@3f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@42
    .line 986
    const-string/jumbo v0, "  --read-daily: read-load last written daily stats."

    #@45
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@48
    .line 987
    const-string/jumbo v0, "  <package.name>: optional name of package to filter output by."

    #@4b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4e
    .line 988
    const-string/jumbo v0, "  -h: print this help text."

    #@51
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@54
    .line 989
    const-string/jumbo v0, "Battery stats (batterystats) commands:"

    #@57
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5a
    .line 990
    const-string/jumbo v0, "  enable|disable <option>"

    #@5d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@60
    .line 991
    const-string/jumbo v0, "    Enable or disable a running option.  Option state is not saved across boots."

    #@63
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@66
    .line 992
    const-string/jumbo v0, "    Options are:"

    #@69
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6c
    .line 993
    const-string/jumbo v0, "      full-history: include additional detailed events in battery history:"

    #@6f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@72
    .line 994
    const-string/jumbo v0, "          wake_lock_in, alarms and proc events"

    #@75
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@78
    .line 995
    const-string/jumbo v0, "      no-auto-reset: don\'t automatically reset stats when unplugged"

    #@7b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7e
    .line 974
    return-void
.end method

.method public static getService()Lcom/android/internal/app/IBatteryStats;
    .locals 2

    #@0
    .prologue
    .line 203
    sget-object v1, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 204
    sget-object v1, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    #@6
    return-object v1

    #@7
    .line 206
    :cond_0
    const-string/jumbo v1, "batterystats"

    #@a
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@d
    move-result-object v0

    #@e
    .line 207
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/server/am/BatteryStatsService;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    #@11
    move-result-object v1

    #@12
    sput-object v1, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    #@14
    .line 208
    sget-object v1, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    #@16
    return-object v1
.end method

.method private static native nativeWaitWakeup(Ljava/nio/ByteBuffer;)I
.end method

.method private pullBluetoothEnergyInfoLocked()Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .locals 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mExternalStatsLock"
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const-wide/16 v4, 0x0

    #@3
    .line 1304
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    #@6
    move-result-object v0

    #@7
    .line 1305
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_3

    #@9
    .line 1307
    const/4 v2, 0x1

    #@a
    .line 1306
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getControllerActivityEnergyInfo(I)Landroid/bluetooth/BluetoothActivityEnergyInfo;

    #@d
    move-result-object v1

    #@e
    .line 1308
    .local v1, "info":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    if-eqz v1, :cond_3

    #@10
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->isValid()Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_3

    #@16
    .line 1309
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerEnergyUsed()J

    #@19
    move-result-wide v2

    #@1a
    cmp-long v2, v2, v4

    #@1c
    if-ltz v2, :cond_0

    #@1e
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerIdleTimeMillis()J

    #@21
    move-result-wide v2

    #@22
    cmp-long v2, v2, v4

    #@24
    if-gez v2, :cond_2

    #@26
    .line 1311
    :cond_0
    :goto_0
    const-string/jumbo v2, "BatteryStatsService"

    #@29
    new-instance v3, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v4, "Bluetooth energy data is invalid: "

    #@31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    .line 1313
    :cond_1
    return-object v1

    #@41
    .line 1310
    :cond_2
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerRxTimeMillis()J

    #@44
    move-result-wide v2

    #@45
    cmp-long v2, v2, v4

    #@47
    if-ltz v2, :cond_0

    #@49
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerTxTimeMillis()J

    #@4c
    move-result-wide v2

    #@4d
    cmp-long v2, v2, v4

    #@4f
    if-gez v2, :cond_1

    #@51
    goto :goto_0

    #@52
    .line 1316
    .end local v1    # "info":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :cond_3
    return-object v3
.end method

.method private pullWifiEnergyInfoLocked()Landroid/net/wifi/WifiActivityEnergyInfo;
    .locals 26
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mExternalStatsLock"
    .end annotation

    #@0
    .prologue
    .line 1209
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    #@4
    move-object/from16 v22, v0

    #@6
    if-nez v22, :cond_0

    #@8
    .line 1211
    const-string/jumbo v22, "wifi"

    #@b
    invoke-static/range {v22 .. v22}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@e
    move-result-object v22

    #@f
    .line 1210
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    #@12
    move-result-object v22

    #@13
    move-object/from16 v0, v22

    #@15
    move-object/from16 v1, p0

    #@17
    iput-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    #@19
    .line 1212
    move-object/from16 v0, p0

    #@1b
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    #@1d
    move-object/from16 v22, v0

    #@1f
    if-nez v22, :cond_0

    #@21
    .line 1213
    const/16 v22, 0x0

    #@23
    return-object v22

    #@24
    .line 1220
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    #@26
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    #@28
    move-object/from16 v22, v0

    #@2a
    invoke-interface/range {v22 .. v22}, Landroid/net/wifi/IWifiManager;->reportActivityInfo()Landroid/net/wifi/WifiActivityEnergyInfo;

    #@2d
    move-result-object v7

    #@2e
    .line 1221
    .local v7, "info":Landroid/net/wifi/WifiActivityEnergyInfo;
    if-eqz v7, :cond_6

    #@30
    invoke-virtual {v7}, Landroid/net/wifi/WifiActivityEnergyInfo;->isValid()Z

    #@33
    move-result v22

    #@34
    if-eqz v22, :cond_6

    #@36
    .line 1222
    iget-wide v0, v7, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    #@38
    move-wide/from16 v22, v0

    #@3a
    const-wide/16 v24, 0x0

    #@3c
    cmp-long v22, v22, v24

    #@3e
    if-ltz v22, :cond_1

    #@40
    iget-wide v0, v7, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    #@42
    move-wide/from16 v22, v0

    #@44
    const-wide/16 v24, 0x0

    #@46
    cmp-long v22, v22, v24

    #@48
    if-gez v22, :cond_2

    #@4a
    .line 1224
    :cond_1
    const-string/jumbo v22, "BatteryStatsService"

    #@4d
    new-instance v23, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v24, "Reported WiFi energy data is invalid: "

    #@55
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v23

    #@59
    move-object/from16 v0, v23

    #@5b
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v23

    #@5f
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v23

    #@63
    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@66
    .line 1225
    const/16 v22, 0x0

    #@68
    return-object v22

    #@69
    .line 1223
    :cond_2
    iget-wide v0, v7, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    #@6b
    move-wide/from16 v22, v0

    #@6d
    const-wide/16 v24, 0x0

    #@6f
    cmp-long v22, v22, v24

    #@71
    if-ltz v22, :cond_1

    #@73
    iget-wide v0, v7, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    #@75
    move-wide/from16 v22, v0

    #@77
    const-wide/16 v24, 0x0

    #@79
    cmp-long v22, v22, v24

    #@7b
    if-ltz v22, :cond_1

    #@7d
    .line 1228
    iget-wide v0, v7, Landroid/net/wifi/WifiActivityEnergyInfo;->mTimestamp:J

    #@7f
    move-wide/from16 v22, v0

    #@81
    move-object/from16 v0, p0

    #@83
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    #@85
    move-object/from16 v24, v0

    #@87
    move-object/from16 v0, v24

    #@89
    iget-wide v0, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mTimestamp:J

    #@8b
    move-wide/from16 v24, v0

    #@8d
    sub-long v18, v22, v24

    #@8f
    .line 1229
    .local v18, "timePeriodMs":J
    move-object/from16 v0, p0

    #@91
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    #@93
    move-object/from16 v22, v0

    #@95
    move-object/from16 v0, v22

    #@97
    iget-wide v10, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    #@99
    .line 1230
    .local v10, "lastIdleMs":J
    move-object/from16 v0, p0

    #@9b
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    #@9d
    move-object/from16 v22, v0

    #@9f
    move-object/from16 v0, v22

    #@a1
    iget-wide v14, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    #@a3
    .line 1231
    .local v14, "lastTxMs":J
    move-object/from16 v0, p0

    #@a5
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    #@a7
    move-object/from16 v22, v0

    #@a9
    move-object/from16 v0, v22

    #@ab
    iget-wide v12, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    #@ad
    .line 1232
    .local v12, "lastRxMs":J
    move-object/from16 v0, p0

    #@af
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    #@b1
    move-object/from16 v22, v0

    #@b3
    move-object/from16 v0, v22

    #@b5
    iget-wide v8, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    #@b7
    .line 1236
    .local v8, "lastEnergy":J
    move-object/from16 v0, p0

    #@b9
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    #@bb
    move-object/from16 v16, v0

    #@bd
    .line 1237
    .local v16, "result":Landroid/net/wifi/WifiActivityEnergyInfo;
    invoke-virtual {v7}, Landroid/net/wifi/WifiActivityEnergyInfo;->getTimeStamp()J

    #@c0
    move-result-wide v22

    #@c1
    move-wide/from16 v0, v22

    #@c3
    move-object/from16 v2, v16

    #@c5
    iput-wide v0, v2, Landroid/net/wifi/WifiActivityEnergyInfo;->mTimestamp:J

    #@c7
    .line 1238
    invoke-virtual {v7}, Landroid/net/wifi/WifiActivityEnergyInfo;->getStackState()I

    #@ca
    move-result v22

    #@cb
    move/from16 v0, v22

    #@cd
    move-object/from16 v1, v16

    #@cf
    iput v0, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mStackState:I

    #@d1
    .line 1241
    iget-wide v0, v7, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    #@d3
    move-wide/from16 v22, v0

    #@d5
    sub-long v22, v22, v14

    #@d7
    move-wide/from16 v0, v22

    #@d9
    move-object/from16 v2, v16

    #@db
    iput-wide v0, v2, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    #@dd
    .line 1242
    iget-wide v0, v7, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    #@df
    move-wide/from16 v22, v0

    #@e1
    sub-long v22, v22, v12

    #@e3
    move-wide/from16 v0, v22

    #@e5
    move-object/from16 v2, v16

    #@e7
    iput-wide v0, v2, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    #@e9
    .line 1248
    const-wide/16 v22, 0x0

    #@eb
    iget-wide v0, v7, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    #@ed
    move-wide/from16 v24, v0

    #@ef
    sub-long v24, v24, v10

    #@f1
    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(JJ)J

    #@f4
    move-result-wide v22

    #@f5
    move-wide/from16 v0, v22

    #@f7
    move-object/from16 v2, v16

    #@f9
    iput-wide v0, v2, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    #@fb
    .line 1250
    const-wide/16 v22, 0x0

    #@fd
    iget-wide v0, v7, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    #@ff
    move-wide/from16 v24, v0

    #@101
    sub-long v24, v24, v8

    #@103
    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(JJ)J

    #@106
    move-result-wide v22

    #@107
    .line 1249
    move-wide/from16 v0, v22

    #@109
    move-object/from16 v2, v16

    #@10b
    iput-wide v0, v2, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    #@10d
    .line 1252
    move-object/from16 v0, v16

    #@10f
    iget-wide v0, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    #@111
    move-wide/from16 v22, v0

    #@113
    const-wide/16 v24, 0x0

    #@115
    cmp-long v22, v22, v24

    #@117
    if-ltz v22, :cond_3

    #@119
    .line 1253
    move-object/from16 v0, v16

    #@11b
    iget-wide v0, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    #@11d
    move-wide/from16 v22, v0

    #@11f
    const-wide/16 v24, 0x0

    #@121
    cmp-long v22, v22, v24

    #@123
    if-gez v22, :cond_4

    #@125
    .line 1256
    :cond_3
    iget-wide v0, v7, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    #@127
    move-wide/from16 v22, v0

    #@129
    move-wide/from16 v0, v22

    #@12b
    move-object/from16 v2, v16

    #@12d
    iput-wide v0, v2, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    #@12f
    .line 1257
    iget-wide v0, v7, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    #@131
    move-wide/from16 v22, v0

    #@133
    move-wide/from16 v0, v22

    #@135
    move-object/from16 v2, v16

    #@137
    iput-wide v0, v2, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    #@139
    .line 1258
    iget-wide v0, v7, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    #@13b
    move-wide/from16 v22, v0

    #@13d
    move-wide/from16 v0, v22

    #@13f
    move-object/from16 v2, v16

    #@141
    iput-wide v0, v2, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    #@143
    .line 1259
    iget-wide v0, v7, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    #@145
    move-wide/from16 v22, v0

    #@147
    move-wide/from16 v0, v22

    #@149
    move-object/from16 v2, v16

    #@14b
    iput-wide v0, v2, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    #@14d
    .line 1261
    const-string/jumbo v22, "BatteryStatsService"

    #@150
    new-instance v23, Ljava/lang/StringBuilder;

    #@152
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@155
    const-string/jumbo v24, "WiFi energy data was reset, new WiFi energy data is "

    #@158
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15b
    move-result-object v23

    #@15c
    move-object/from16 v0, v23

    #@15e
    move-object/from16 v1, v16

    #@160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@163
    move-result-object v23

    #@164
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@167
    move-result-object v23

    #@168
    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@16b
    .line 1265
    :cond_4
    const-wide/16 v4, 0x1e

    #@16d
    .line 1266
    .local v4, "SAMPLE_ERROR_MILLIS":J
    move-object/from16 v0, v16

    #@16f
    iget-wide v0, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    #@171
    move-wide/from16 v22, v0

    #@173
    move-object/from16 v0, v16

    #@175
    iget-wide v0, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    #@177
    move-wide/from16 v24, v0

    #@179
    add-long v22, v22, v24

    #@17b
    .line 1267
    move-object/from16 v0, v16

    #@17d
    iget-wide v0, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    #@17f
    move-wide/from16 v24, v0

    #@181
    .line 1266
    add-long v20, v22, v24

    #@183
    .line 1268
    .local v20, "totalTimeMs":J
    const-wide/16 v22, 0x1e

    #@185
    add-long v22, v22, v18

    #@187
    cmp-long v22, v20, v22

    #@189
    if-lez v22, :cond_5

    #@18b
    .line 1269
    new-instance v17, Ljava/lang/StringBuilder;

    #@18d
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@190
    .line 1270
    .local v17, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v22, "Total time "

    #@193
    move-object/from16 v0, v17

    #@195
    move-object/from16 v1, v22

    #@197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19a
    .line 1271
    move-wide/from16 v0, v20

    #@19c
    move-object/from16 v2, v17

    #@19e
    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@1a1
    .line 1272
    const-string/jumbo v22, " is longer than sample period "

    #@1a4
    move-object/from16 v0, v17

    #@1a6
    move-object/from16 v1, v22

    #@1a8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ab
    .line 1273
    move-wide/from16 v0, v18

    #@1ad
    move-object/from16 v2, v17

    #@1af
    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@1b2
    .line 1274
    const-string/jumbo v22, ".\n"

    #@1b5
    move-object/from16 v0, v17

    #@1b7
    move-object/from16 v1, v22

    #@1b9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bc
    .line 1275
    const-string/jumbo v22, "Previous WiFi snapshot: "

    #@1bf
    move-object/from16 v0, v17

    #@1c1
    move-object/from16 v1, v22

    #@1c3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c6
    move-result-object v22

    #@1c7
    const-string/jumbo v23, "idle="

    #@1ca
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cd
    .line 1276
    move-object/from16 v0, v17

    #@1cf
    invoke-static {v10, v11, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@1d2
    .line 1277
    const-string/jumbo v22, " rx="

    #@1d5
    move-object/from16 v0, v17

    #@1d7
    move-object/from16 v1, v22

    #@1d9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1dc
    .line 1278
    move-object/from16 v0, v17

    #@1de
    invoke-static {v12, v13, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@1e1
    .line 1279
    const-string/jumbo v22, " tx="

    #@1e4
    move-object/from16 v0, v17

    #@1e6
    move-object/from16 v1, v22

    #@1e8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1eb
    .line 1280
    move-object/from16 v0, v17

    #@1ed
    invoke-static {v14, v15, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@1f0
    .line 1281
    const-string/jumbo v22, " e="

    #@1f3
    move-object/from16 v0, v17

    #@1f5
    move-object/from16 v1, v22

    #@1f7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fa
    move-result-object v22

    #@1fb
    move-object/from16 v0, v22

    #@1fd
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@200
    .line 1282
    const-string/jumbo v22, "\n"

    #@203
    move-object/from16 v0, v17

    #@205
    move-object/from16 v1, v22

    #@207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20a
    .line 1283
    const-string/jumbo v22, "Current WiFi snapshot: "

    #@20d
    move-object/from16 v0, v17

    #@20f
    move-object/from16 v1, v22

    #@211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@214
    move-result-object v22

    #@215
    const-string/jumbo v23, "idle="

    #@218
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21b
    .line 1284
    iget-wide v0, v7, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    #@21d
    move-wide/from16 v22, v0

    #@21f
    move-wide/from16 v0, v22

    #@221
    move-object/from16 v2, v17

    #@223
    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@226
    .line 1285
    const-string/jumbo v22, " rx="

    #@229
    move-object/from16 v0, v17

    #@22b
    move-object/from16 v1, v22

    #@22d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@230
    .line 1286
    iget-wide v0, v7, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    #@232
    move-wide/from16 v22, v0

    #@234
    move-wide/from16 v0, v22

    #@236
    move-object/from16 v2, v17

    #@238
    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@23b
    .line 1287
    const-string/jumbo v22, " tx="

    #@23e
    move-object/from16 v0, v17

    #@240
    move-object/from16 v1, v22

    #@242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@245
    .line 1288
    iget-wide v0, v7, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    #@247
    move-wide/from16 v22, v0

    #@249
    move-wide/from16 v0, v22

    #@24b
    move-object/from16 v2, v17

    #@24d
    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@250
    .line 1289
    const-string/jumbo v22, " e="

    #@253
    move-object/from16 v0, v17

    #@255
    move-object/from16 v1, v22

    #@257
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25a
    move-result-object v22

    #@25b
    iget-wide v0, v7, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    #@25d
    move-wide/from16 v24, v0

    #@25f
    move-object/from16 v0, v22

    #@261
    move-wide/from16 v1, v24

    #@263
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@266
    .line 1290
    const-string/jumbo v22, "BatteryStatsService"

    #@269
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26c
    move-result-object v23

    #@26d
    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@270
    .line 1293
    .end local v17    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    move-object/from16 v0, p0

    #@272
    iput-object v7, v0, Lcom/android/server/am/BatteryStatsService;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@274
    .line 1294
    return-object v16

    #@275
    .line 1296
    .end local v4    # "SAMPLE_ERROR_MILLIS":J
    .end local v7    # "info":Landroid/net/wifi/WifiActivityEnergyInfo;
    .end local v8    # "lastEnergy":J
    .end local v10    # "lastIdleMs":J
    .end local v12    # "lastRxMs":J
    .end local v14    # "lastTxMs":J
    .end local v16    # "result":Landroid/net/wifi/WifiActivityEnergyInfo;
    .end local v18    # "timePeriodMs":J
    .end local v20    # "totalTimeMs":J
    :catch_0
    move-exception v6

    #@276
    .line 1299
    :cond_6
    const/16 v22, 0x0

    #@278
    return-object v22
.end method


# virtual methods
.method addIsolatedUid(II)V
    .locals 2
    .param p1, "isolatedUid"    # I
    .param p2, "appUid"    # I

    #@0
    .prologue
    .line 247
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@2
    monitor-enter v1

    #@3
    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->addIsolatedUidLocked(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 246
    return-void

    #@a
    .line 247
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public computeBatteryTimeRemaining()J
    .locals 6

    #@0
    .prologue
    .line 332
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@2
    monitor-enter v3

    #@3
    .line 333
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@8
    move-result-wide v4

    #@9
    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryTimeRemaining(J)J

    #@c
    move-result-wide v0

    #@d
    .line 334
    .local v0, "time":J
    const-wide/16 v4, 0x0

    #@f
    cmp-long v2, v0, v4

    #@11
    if-ltz v2, :cond_0

    #@13
    const-wide/16 v4, 0x3e8

    #@15
    div-long/2addr v0, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .end local v0    # "time":J
    :cond_0
    monitor-exit v3

    #@17
    return-wide v0

    #@18
    .line 332
    :catchall_0
    move-exception v2

    #@19
    monitor-exit v3

    #@1a
    throw v2
.end method

.method public computeChargeTimeRemaining()J
    .locals 6

    #@0
    .prologue
    .line 339
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@2
    monitor-enter v3

    #@3
    .line 340
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@8
    move-result-wide v4

    #@9
    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->computeChargeTimeRemaining(J)J

    #@c
    move-result-wide v0

    #@d
    .line 341
    .local v0, "time":J
    const-wide/16 v4, 0x0

    #@f
    cmp-long v2, v0, v4

    #@11
    if-ltz v2, :cond_0

    #@13
    const-wide/16 v4, 0x3e8

    #@15
    div-long/2addr v0, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .end local v0    # "time":J
    :cond_0
    monitor-exit v3

    #@17
    return-wide v0

    #@18
    .line 339
    :catchall_0
    move-exception v2

    #@19
    monitor-exit v3

    #@1a
    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 30
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1024
    move-object/from16 v0, p0

    #@2
    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    #@4
    const-string/jumbo v7, "android.permission.DUMP"

    #@7
    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@a
    move-result v6

    #@b
    if-eqz v6, :cond_0

    #@d
    .line 1026
    new-instance v6, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v7, "Permission Denial: can\'t dump BatteryStats from from pid="

    #@15
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v6

    #@19
    .line 1027
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1c
    move-result v7

    #@1d
    .line 1026
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v6

    #@21
    .line 1027
    const-string/jumbo v7, ", uid="

    #@24
    .line 1026
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v6

    #@28
    .line 1027
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@2b
    move-result v7

    #@2c
    .line 1026
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v6

    #@30
    .line 1028
    const-string/jumbo v7, " without permission "

    #@33
    .line 1026
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v6

    #@37
    .line 1028
    const-string/jumbo v7, "android.permission.DUMP"

    #@3a
    .line 1026
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v6

    #@3e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v6

    #@42
    move-object/from16 v0, p2

    #@44
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@47
    .line 1029
    return-void

    #@48
    .line 1032
    :cond_0
    const/4 v9, 0x0

    #@49
    .line 1033
    .local v9, "flags":I
    const/16 v28, 0x0

    #@4b
    .line 1034
    .local v28, "useCheckinFormat":Z
    const/16 v25, 0x0

    #@4d
    .line 1035
    .local v25, "isRealCheckin":Z
    const/16 v26, 0x0

    #@4f
    .line 1036
    .local v26, "noOutput":Z
    const/16 v29, 0x0

    #@51
    .line 1037
    .local v29, "writeData":Z
    const-wide/16 v10, -0x1

    #@53
    .line 1038
    .local v10, "historyStart":J
    const/16 v17, -0x1

    #@55
    .line 1039
    .local v17, "reqUid":I
    if-eqz p3, :cond_15

    #@57
    .line 1040
    const/16 v21, 0x0

    #@59
    .local v21, "i":I
    :goto_0
    move-object/from16 v0, p3

    #@5b
    array-length v6, v0

    #@5c
    move/from16 v0, v21

    #@5e
    if-ge v0, v6, :cond_15

    #@60
    .line 1041
    aget-object v4, p3, v21

    #@62
    .line 1042
    .local v4, "arg":Ljava/lang/String;
    const-string/jumbo v6, "--checkin"

    #@65
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@68
    move-result v6

    #@69
    if-eqz v6, :cond_1

    #@6b
    .line 1043
    const/16 v28, 0x1

    #@6d
    .line 1044
    const/16 v25, 0x1

    #@6f
    .line 1040
    :goto_1
    add-int/lit8 v21, v21, 0x1

    #@71
    goto :goto_0

    #@72
    .line 1045
    :cond_1
    const-string/jumbo v6, "--history"

    #@75
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@78
    move-result v6

    #@79
    if-eqz v6, :cond_2

    #@7b
    .line 1046
    or-int/lit8 v9, v9, 0x8

    #@7d
    goto :goto_1

    #@7e
    .line 1047
    :cond_2
    const-string/jumbo v6, "--history-start"

    #@81
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@84
    move-result v6

    #@85
    if-eqz v6, :cond_4

    #@87
    .line 1048
    or-int/lit8 v9, v9, 0x8

    #@89
    .line 1049
    add-int/lit8 v21, v21, 0x1

    #@8b
    .line 1050
    move-object/from16 v0, p3

    #@8d
    array-length v6, v0

    #@8e
    move/from16 v0, v21

    #@90
    if-lt v0, v6, :cond_3

    #@92
    .line 1051
    const-string/jumbo v6, "Missing time argument for --history-since"

    #@95
    move-object/from16 v0, p2

    #@97
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9a
    .line 1052
    move-object/from16 v0, p0

    #@9c
    move-object/from16 v1, p2

    #@9e
    invoke-direct {v0, v1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    #@a1
    .line 1053
    return-void

    #@a2
    .line 1055
    :cond_3
    aget-object v6, p3, v21

    #@a4
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@a7
    move-result-wide v10

    #@a8
    .line 1056
    const/16 v29, 0x1

    #@aa
    goto :goto_1

    #@ab
    .line 1057
    :cond_4
    const-string/jumbo v6, "-c"

    #@ae
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b1
    move-result v6

    #@b2
    if-eqz v6, :cond_5

    #@b4
    .line 1058
    const/16 v28, 0x1

    #@b6
    .line 1059
    or-int/lit8 v9, v9, 0x10

    #@b8
    goto :goto_1

    #@b9
    .line 1060
    :cond_5
    const-string/jumbo v6, "--charged"

    #@bc
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bf
    move-result v6

    #@c0
    if-eqz v6, :cond_6

    #@c2
    .line 1061
    or-int/lit8 v9, v9, 0x2

    #@c4
    goto :goto_1

    #@c5
    .line 1062
    :cond_6
    const-string/jumbo v6, "--daily"

    #@c8
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@cb
    move-result v6

    #@cc
    if-eqz v6, :cond_7

    #@ce
    .line 1063
    or-int/lit8 v9, v9, 0x4

    #@d0
    goto :goto_1

    #@d1
    .line 1064
    :cond_7
    const-string/jumbo v6, "--reset"

    #@d4
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d7
    move-result v6

    #@d8
    if-eqz v6, :cond_8

    #@da
    .line 1065
    move-object/from16 v0, p0

    #@dc
    iget-object v7, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@de
    monitor-enter v7

    #@df
    .line 1066
    :try_start_0
    move-object/from16 v0, p0

    #@e1
    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@e3
    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl;->resetAllStatsCmdLocked()V

    #@e6
    .line 1067
    const-string/jumbo v6, "Battery stats reset."

    #@e9
    move-object/from16 v0, p2

    #@eb
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@ee
    .line 1068
    const/16 v26, 0x1

    #@f0
    monitor-exit v7

    #@f1
    .line 1070
    const-string/jumbo v6, "dump"

    #@f4
    const/16 v7, 0xf

    #@f6
    move-object/from16 v0, p0

    #@f8
    invoke-virtual {v0, v6, v7}, Lcom/android/server/am/BatteryStatsService;->updateExternalStats(Ljava/lang/String;I)V

    #@fb
    goto/16 :goto_1

    #@fd
    .line 1065
    :catchall_0
    move-exception v6

    #@fe
    monitor-exit v7

    #@ff
    throw v6

    #@100
    .line 1071
    :cond_8
    const-string/jumbo v6, "--write"

    #@103
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@106
    move-result v6

    #@107
    if-eqz v6, :cond_9

    #@109
    .line 1072
    const-string/jumbo v6, "dump"

    #@10c
    const/16 v7, 0xf

    #@10e
    move-object/from16 v0, p0

    #@110
    invoke-virtual {v0, v6, v7}, Lcom/android/server/am/BatteryStatsService;->updateExternalStats(Ljava/lang/String;I)V

    #@113
    .line 1073
    move-object/from16 v0, p0

    #@115
    iget-object v7, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@117
    monitor-enter v7

    #@118
    .line 1074
    :try_start_1
    move-object/from16 v0, p0

    #@11a
    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@11c
    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl;->writeSyncLocked()V

    #@11f
    .line 1075
    const-string/jumbo v6, "Battery stats written."

    #@122
    move-object/from16 v0, p2

    #@124
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@127
    .line 1076
    const/16 v26, 0x1

    #@129
    monitor-exit v7

    #@12a
    goto/16 :goto_1

    #@12c
    .line 1073
    :catchall_1
    move-exception v6

    #@12d
    monitor-exit v7

    #@12e
    throw v6

    #@12f
    .line 1078
    :cond_9
    const-string/jumbo v6, "--new-daily"

    #@132
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@135
    move-result v6

    #@136
    if-eqz v6, :cond_a

    #@138
    .line 1079
    move-object/from16 v0, p0

    #@13a
    iget-object v7, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@13c
    monitor-enter v7

    #@13d
    .line 1080
    :try_start_2
    move-object/from16 v0, p0

    #@13f
    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@141
    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl;->recordDailyStatsLocked()V

    #@144
    .line 1081
    const-string/jumbo v6, "New daily stats written."

    #@147
    move-object/from16 v0, p2

    #@149
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@14c
    .line 1082
    const/16 v26, 0x1

    #@14e
    monitor-exit v7

    #@14f
    goto/16 :goto_1

    #@151
    .line 1079
    :catchall_2
    move-exception v6

    #@152
    monitor-exit v7

    #@153
    throw v6

    #@154
    .line 1084
    :cond_a
    const-string/jumbo v6, "--read-daily"

    #@157
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15a
    move-result v6

    #@15b
    if-eqz v6, :cond_b

    #@15d
    .line 1085
    move-object/from16 v0, p0

    #@15f
    iget-object v7, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@161
    monitor-enter v7

    #@162
    .line 1086
    :try_start_3
    move-object/from16 v0, p0

    #@164
    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@166
    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl;->readDailyStatsLocked()V

    #@169
    .line 1087
    const-string/jumbo v6, "Last daily stats read."

    #@16c
    move-object/from16 v0, p2

    #@16e
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    #@171
    .line 1088
    const/16 v26, 0x1

    #@173
    monitor-exit v7

    #@174
    goto/16 :goto_1

    #@176
    .line 1085
    :catchall_3
    move-exception v6

    #@177
    monitor-exit v7

    #@178
    throw v6

    #@179
    .line 1090
    :cond_b
    const-string/jumbo v6, "--enable"

    #@17c
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17f
    move-result v6

    #@180
    if-nez v6, :cond_c

    #@182
    const-string/jumbo v6, "enable"

    #@185
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@188
    move-result v6

    #@189
    if-eqz v6, :cond_e

    #@18b
    .line 1091
    :cond_c
    const/4 v6, 0x1

    #@18c
    move-object/from16 v0, p0

    #@18e
    move-object/from16 v1, p2

    #@190
    move/from16 v2, v21

    #@192
    move-object/from16 v3, p3

    #@194
    invoke-direct {v0, v1, v2, v3, v6}, Lcom/android/server/am/BatteryStatsService;->doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I

    #@197
    move-result v21

    #@198
    .line 1092
    if-gez v21, :cond_d

    #@19a
    .line 1093
    return-void

    #@19b
    .line 1095
    :cond_d
    new-instance v6, Ljava/lang/StringBuilder;

    #@19d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1a0
    const-string/jumbo v7, "Enabled: "

    #@1a3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a6
    move-result-object v6

    #@1a7
    aget-object v7, p3, v21

    #@1a9
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ac
    move-result-object v6

    #@1ad
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b0
    move-result-object v6

    #@1b1
    move-object/from16 v0, p2

    #@1b3
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1b6
    .line 1096
    return-void

    #@1b7
    .line 1097
    :cond_e
    const-string/jumbo v6, "--disable"

    #@1ba
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1bd
    move-result v6

    #@1be
    if-nez v6, :cond_f

    #@1c0
    const-string/jumbo v6, "disable"

    #@1c3
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c6
    move-result v6

    #@1c7
    if-eqz v6, :cond_11

    #@1c9
    .line 1098
    :cond_f
    const/4 v6, 0x0

    #@1ca
    move-object/from16 v0, p0

    #@1cc
    move-object/from16 v1, p2

    #@1ce
    move/from16 v2, v21

    #@1d0
    move-object/from16 v3, p3

    #@1d2
    invoke-direct {v0, v1, v2, v3, v6}, Lcom/android/server/am/BatteryStatsService;->doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I

    #@1d5
    move-result v21

    #@1d6
    .line 1099
    if-gez v21, :cond_10

    #@1d8
    .line 1100
    return-void

    #@1d9
    .line 1102
    :cond_10
    new-instance v6, Ljava/lang/StringBuilder;

    #@1db
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1de
    const-string/jumbo v7, "Disabled: "

    #@1e1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e4
    move-result-object v6

    #@1e5
    aget-object v7, p3, v21

    #@1e7
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ea
    move-result-object v6

    #@1eb
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ee
    move-result-object v6

    #@1ef
    move-object/from16 v0, p2

    #@1f1
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1f4
    .line 1103
    return-void

    #@1f5
    .line 1104
    :cond_11
    const-string/jumbo v6, "-h"

    #@1f8
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1fb
    move-result v6

    #@1fc
    if-eqz v6, :cond_12

    #@1fe
    .line 1105
    move-object/from16 v0, p0

    #@200
    move-object/from16 v1, p2

    #@202
    invoke-direct {v0, v1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    #@205
    .line 1106
    return-void

    #@206
    .line 1107
    :cond_12
    const-string/jumbo v6, "-a"

    #@209
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20c
    move-result v6

    #@20d
    if-eqz v6, :cond_13

    #@20f
    .line 1108
    or-int/lit8 v9, v9, 0x20

    #@211
    goto/16 :goto_1

    #@213
    .line 1109
    :cond_13
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@216
    move-result v6

    #@217
    if-lez v6, :cond_14

    #@219
    const/4 v6, 0x0

    #@21a
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    #@21d
    move-result v6

    #@21e
    const/16 v7, 0x2d

    #@220
    if-ne v6, v7, :cond_14

    #@222
    .line 1110
    new-instance v6, Ljava/lang/StringBuilder;

    #@224
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@227
    const-string/jumbo v7, "Unknown option: "

    #@22a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22d
    move-result-object v6

    #@22e
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@231
    move-result-object v6

    #@232
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@235
    move-result-object v6

    #@236
    move-object/from16 v0, p2

    #@238
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@23b
    .line 1111
    move-object/from16 v0, p0

    #@23d
    move-object/from16 v1, p2

    #@23f
    invoke-direct {v0, v1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    #@242
    .line 1112
    return-void

    #@243
    .line 1116
    :cond_14
    :try_start_4
    move-object/from16 v0, p0

    #@245
    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    #@247
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@24a
    move-result-object v6

    #@24b
    .line 1117
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@24e
    move-result v7

    #@24f
    .line 1116
    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    #@252
    move-result v17

    #@253
    goto/16 :goto_1

    #@255
    .line 1118
    :catch_0
    move-exception v12

    #@256
    .line 1119
    .local v12, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v6, Ljava/lang/StringBuilder;

    #@258
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@25b
    const-string/jumbo v7, "Unknown package: "

    #@25e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@261
    move-result-object v6

    #@262
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@265
    move-result-object v6

    #@266
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@269
    move-result-object v6

    #@26a
    move-object/from16 v0, p2

    #@26c
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@26f
    .line 1120
    move-object/from16 v0, p0

    #@271
    move-object/from16 v1, p2

    #@273
    invoke-direct {v0, v1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    #@276
    .line 1121
    return-void

    #@277
    .line 1126
    .end local v4    # "arg":Ljava/lang/String;
    .end local v12    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v21    # "i":I
    :cond_15
    if-eqz v26, :cond_16

    #@279
    .line 1127
    return-void

    #@27a
    .line 1130
    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@27d
    move-result-wide v22

    #@27e
    .line 1132
    .local v22, "ident":J
    :try_start_5
    move-object/from16 v0, p0

    #@280
    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    #@282
    invoke-static {v6}, Lcom/android/internal/os/BatteryStatsHelper;->checkWifiOnly(Landroid/content/Context;)Z

    #@285
    move-result v6

    #@286
    if-eqz v6, :cond_17

    #@288
    .line 1133
    or-int/lit8 v9, v9, 0x40

    #@28a
    .line 1136
    :cond_17
    const-string/jumbo v6, "dump"

    #@28d
    const/16 v7, 0xf

    #@28f
    move-object/from16 v0, p0

    #@291
    invoke-virtual {v0, v6, v7}, Lcom/android/server/am/BatteryStatsService;->updateExternalStats(Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    #@294
    .line 1138
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@297
    .line 1141
    if-ltz v17, :cond_18

    #@299
    .line 1144
    and-int/lit8 v6, v9, 0xa

    #@29b
    if-nez v6, :cond_18

    #@29d
    .line 1145
    or-int/lit8 v9, v9, 0x2

    #@29f
    .line 1147
    and-int/lit8 v9, v9, -0x11

    #@2a1
    .line 1151
    :cond_18
    if-eqz v28, :cond_1c

    #@2a3
    .line 1152
    move-object/from16 v0, p0

    #@2a5
    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    #@2a7
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@2aa
    move-result-object v6

    #@2ab
    const/4 v7, 0x0

    #@2ac
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    #@2af
    move-result-object v8

    #@2b0
    .line 1153
    .local v8, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v25, :cond_1a

    #@2b2
    .line 1156
    move-object/from16 v0, p0

    #@2b4
    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@2b6
    iget-object v13, v6, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    #@2b8
    monitor-enter v13

    #@2b9
    .line 1157
    :try_start_6
    move-object/from16 v0, p0

    #@2bb
    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@2bd
    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    #@2bf
    invoke-virtual {v6}, Lcom/android/internal/os/AtomicFile;->exists()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    #@2c2
    move-result v6

    #@2c3
    if-eqz v6, :cond_19

    #@2c5
    .line 1159
    :try_start_7
    move-object/from16 v0, p0

    #@2c7
    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@2c9
    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    #@2cb
    invoke-virtual {v6}, Lcom/android/internal/os/AtomicFile;->readFully()[B

    #@2ce
    move-result-object v27

    #@2cf
    .line 1160
    .local v27, "raw":[B
    if-eqz v27, :cond_19

    #@2d1
    .line 1161
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@2d4
    move-result-object v24

    #@2d5
    .line 1162
    .local v24, "in":Landroid/os/Parcel;
    move-object/from16 v0, v27

    #@2d7
    array-length v6, v0

    #@2d8
    const/4 v7, 0x0

    #@2d9
    move-object/from16 v0, v24

    #@2db
    move-object/from16 v1, v27

    #@2dd
    invoke-virtual {v0, v1, v7, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    #@2e0
    .line 1163
    const/4 v6, 0x0

    #@2e1
    move-object/from16 v0, v24

    #@2e3
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    #@2e6
    .line 1164
    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl;

    #@2e8
    .line 1165
    move-object/from16 v0, p0

    #@2ea
    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@2ec
    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    #@2ee
    const/4 v7, 0x0

    #@2ef
    const/4 v14, 0x0

    #@2f0
    .line 1164
    invoke-direct {v5, v7, v6, v14}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Ljava/io/File;Landroid/os/Handler;Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;)V

    #@2f3
    .line 1166
    .local v5, "checkinStats":Lcom/android/internal/os/BatteryStatsImpl;
    move-object/from16 v0, v24

    #@2f5
    invoke-virtual {v5, v0}, Lcom/android/internal/os/BatteryStatsImpl;->readSummaryFromParcel(Landroid/os/Parcel;)V

    #@2f8
    .line 1167
    invoke-virtual/range {v24 .. v24}, Landroid/os/Parcel;->recycle()V

    #@2fb
    .line 1168
    move-object/from16 v0, p0

    #@2fd
    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    #@2ff
    move-object/from16 v7, p2

    #@301
    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJ)V

    #@304
    .line 1170
    move-object/from16 v0, p0

    #@306
    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@308
    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    #@30a
    invoke-virtual {v6}, Lcom/android/internal/os/AtomicFile;->delete()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/os/ParcelFormatException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    #@30d
    monitor-exit v13

    #@30e
    .line 1171
    return-void

    #@30f
    .line 1137
    .end local v5    # "checkinStats":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v8    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v24    # "in":Landroid/os/Parcel;
    .end local v27    # "raw":[B
    :catchall_4
    move-exception v6

    #@310
    .line 1138
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@313
    .line 1137
    throw v6

    #@314
    .line 1173
    .restart local v8    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :catch_1
    move-exception v20

    #@315
    .line 1174
    .local v20, "e":Ljava/lang/Exception;
    :try_start_8
    const-string/jumbo v6, "BatteryStatsService"

    #@318
    new-instance v7, Ljava/lang/StringBuilder;

    #@31a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@31d
    const-string/jumbo v14, "Failure reading checkin file "

    #@320
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@323
    move-result-object v7

    #@324
    .line 1175
    move-object/from16 v0, p0

    #@326
    iget-object v14, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@328
    iget-object v14, v14, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    #@32a
    invoke-virtual {v14}, Lcom/android/internal/os/AtomicFile;->getBaseFile()Ljava/io/File;

    #@32d
    move-result-object v14

    #@32e
    .line 1174
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@331
    move-result-object v7

    #@332
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@335
    move-result-object v7

    #@336
    move-object/from16 v0, v20

    #@338
    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    #@33b
    .end local v20    # "e":Ljava/lang/Exception;
    :cond_19
    monitor-exit v13

    #@33c
    .line 1180
    :cond_1a
    move-object/from16 v0, p0

    #@33e
    iget-object v7, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@340
    monitor-enter v7

    #@341
    .line 1181
    :try_start_9
    move-object/from16 v0, p0

    #@343
    iget-object v13, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@345
    move-object/from16 v0, p0

    #@347
    iget-object v14, v0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    #@349
    move-object/from16 v15, p2

    #@34b
    move-object/from16 v16, v8

    #@34d
    move/from16 v17, v9

    #@34f
    move-wide/from16 v18, v10

    #@351
    invoke-virtual/range {v13 .. v19}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJ)V

    #@354
    .line 1182
    .end local v17    # "reqUid":I
    if-eqz v29, :cond_1b

    #@356
    .line 1183
    move-object/from16 v0, p0

    #@358
    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@35a
    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    #@35d
    .end local v8    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_1b
    :goto_2
    monitor-exit v7

    #@35e
    .line 1023
    return-void

    #@35f
    .line 1156
    .restart local v8    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v17    # "reqUid":I
    :catchall_5
    move-exception v6

    #@360
    monitor-exit v13

    #@361
    throw v6

    #@362
    .line 1180
    .end local v17    # "reqUid":I
    :catchall_6
    move-exception v6

    #@363
    monitor-exit v7

    #@364
    throw v6

    #@365
    .line 1187
    .end local v8    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v17    # "reqUid":I
    :cond_1c
    move-object/from16 v0, p0

    #@367
    iget-object v7, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@369
    monitor-enter v7

    #@36a
    .line 1188
    :try_start_a
    move-object/from16 v0, p0

    #@36c
    iget-object v13, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@36e
    move-object/from16 v0, p0

    #@370
    iget-object v14, v0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    #@372
    move-object/from16 v15, p2

    #@374
    move/from16 v16, v9

    #@376
    move-wide/from16 v18, v10

    #@378
    invoke-virtual/range {v13 .. v19}, Lcom/android/internal/os/BatteryStatsImpl;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIJ)V

    #@37b
    .line 1189
    if-eqz v29, :cond_1b

    #@37d
    .line 1190
    move-object/from16 v0, p0

    #@37f
    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@381
    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    #@384
    goto :goto_2

    #@385
    .line 1187
    :catchall_7
    move-exception v6

    #@386
    monitor-exit v7

    #@387
    throw v6
.end method

.method public enforceCallingPermission()V
    .locals 5

    #@0
    .prologue
    .line 906
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@3
    move-result v0

    #@4
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@7
    move-result v1

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 907
    return-void

    #@b
    .line 909
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    #@d
    const-string/jumbo v1, "android.permission.UPDATE_DEVICE_STATS"

    #@10
    .line 910
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@13
    move-result v2

    #@14
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@17
    move-result v3

    #@18
    const/4 v4, 0x0

    #@19
    .line 909
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    #@1c
    .line 905
    return-void
.end method

.method public getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;
    .locals 1

    #@0
    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@2
    return-object v0
.end method

.method public getAwakeTimeBattery()J
    .locals 3

    #@0
    .prologue
    .line 894
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    #@2
    .line 895
    const-string/jumbo v1, "android.permission.BATTERY_STATS"

    #@5
    const/4 v2, 0x0

    #@6
    .line 894
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 896
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@b
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getAwakeTimeBattery()J

    #@e
    move-result-wide v0

    #@f
    return-wide v0
.end method

.method public getAwakeTimePlugged()J
    .locals 3

    #@0
    .prologue
    .line 900
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    #@2
    .line 901
    const-string/jumbo v1, "android.permission.BATTERY_STATS"

    #@5
    const/4 v2, 0x0

    #@6
    .line 900
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 902
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@b
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getAwakeTimePlugged()J

    #@e
    move-result-wide v0

    #@f
    return-wide v0
.end method

.method public getStatistics()[B
    .locals 5

    #@0
    .prologue
    .line 291
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    #@2
    .line 292
    const-string/jumbo v3, "android.permission.BATTERY_STATS"

    #@5
    const/4 v4, 0x0

    #@6
    .line 291
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@c
    move-result-object v1

    #@d
    .line 296
    .local v1, "out":Landroid/os/Parcel;
    const-string/jumbo v2, "get-stats"

    #@10
    const/16 v3, 0xf

    #@12
    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/BatteryStatsService;->updateExternalStats(Ljava/lang/String;I)V

    #@15
    .line 297
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@17
    monitor-enter v3

    #@18
    .line 298
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-virtual {v2, v1, v4}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    monitor-exit v3

    #@1f
    .line 300
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    #@22
    move-result-object v0

    #@23
    .line 301
    .local v0, "data":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 302
    return-object v0

    #@27
    .line 297
    .end local v0    # "data":[B
    :catchall_0
    move-exception v2

    #@28
    monitor-exit v3

    #@29
    throw v2
.end method

.method public getStatisticsStream()Landroid/os/ParcelFileDescriptor;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 306
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    #@3
    .line 307
    const-string/jumbo v4, "android.permission.BATTERY_STATS"

    #@6
    .line 306
    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 310
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@c
    move-result-object v2

    #@d
    .line 311
    .local v2, "out":Landroid/os/Parcel;
    const-string/jumbo v3, "get-stats"

    #@10
    const/16 v4, 0xf

    #@12
    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/BatteryStatsService;->updateExternalStats(Ljava/lang/String;I)V

    #@15
    .line 312
    iget-object v4, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@17
    monitor-enter v4

    #@18
    .line 313
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@1a
    const/4 v5, 0x0

    #@1b
    invoke-virtual {v3, v2, v5}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    monitor-exit v4

    #@1f
    .line 315
    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    #@22
    move-result-object v0

    #@23
    .line 316
    .local v0, "data":[B
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 318
    :try_start_1
    const-string/jumbo v3, "battery-stats"

    #@29
    invoke-static {v0, v3}, Landroid/os/ParcelFileDescriptor;->fromData([BLjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@2c
    move-result-object v3

    #@2d
    return-object v3

    #@2e
    .line 312
    .end local v0    # "data":[B
    :catchall_0
    move-exception v3

    #@2f
    monitor-exit v4

    #@30
    throw v3

    #@31
    .line 319
    .restart local v0    # "data":[B
    :catch_0
    move-exception v1

    #@32
    .line 320
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v3, "BatteryStatsService"

    #@35
    const-string/jumbo v4, "Unable to create shared memory"

    #@38
    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3b
    .line 321
    return-object v6
.end method

.method public initPowerManagement()V
    .locals 2

    #@0
    .prologue
    .line 187
    const-class v0, Landroid/os/PowerManagerInternal;

    #@2
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/os/PowerManagerInternal;

    #@8
    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    #@a
    .line 188
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    #@c
    invoke-virtual {v0, p0}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    #@f
    .line 189
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@11
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    #@13
    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->getLowPowerModeEnabled()Z

    #@16
    move-result v1

    #@17
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->notePowerSaveMode(Z)V

    #@1a
    .line 190
    new-instance v0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;

    #@1c
    invoke-direct {v0, p0}, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    #@1f
    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->start()V

    #@22
    .line 186
    return-void
.end method

.method public isCharging()Z
    .locals 2

    #@0
    .prologue
    .line 326
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@2
    monitor-enter v1

    #@3
    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->isCharging()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    .line 326
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public isOnBattery()Z
    .locals 1

    #@0
    .prologue
    .line 860
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public noteAlarmFinish(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 389
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteAlarmFinishLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 387
    return-void

    #@d
    .line 389
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteAlarmStart(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 382
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 383
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteAlarmStartLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 380
    return-void

    #@d
    .line 382
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteChangeWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 13
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "newWs"    # Landroid/os/WorkSource;
    .param p7, "newPid"    # I
    .param p8, "newName"    # Ljava/lang/String;
    .param p9, "newHistoryName"    # Ljava/lang/String;
    .param p10, "newType"    # I
    .param p11, "newUnimportantForLogging"    # Z

    #@0
    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 424
    iget-object v12, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v12

    #@6
    .line 425
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    move-object v1, p1

    #@9
    move v2, p2

    #@a
    move-object/from16 v3, p3

    #@c
    move-object/from16 v4, p4

    #@e
    move/from16 v5, p5

    #@10
    move-object/from16 v6, p6

    #@12
    move/from16 v7, p7

    #@14
    move-object/from16 v8, p8

    #@16
    move-object/from16 v9, p9

    #@18
    move/from16 v10, p10

    #@1a
    move/from16 v11, p11

    #@1c
    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->noteChangeWakelockFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    monitor-exit v12

    #@20
    .line 422
    return-void

    #@21
    .line 424
    :catchall_0
    move-exception v0

    #@22
    monitor-exit v12

    #@23
    throw v0
.end method

.method public noteConnectivityChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "extra"    # Ljava/lang/String;

    #@0
    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 517
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 518
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteConnectivityChangedLocked(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 515
    return-void

    #@d
    .line 517
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteDeviceIdleMode(ZLjava/lang/String;I)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "activeReason"    # Ljava/lang/String;
    .param p3, "activeUid"    # I

    #@0
    .prologue
    .line 839
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 840
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 841
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteDeviceIdleModeLocked(ZLjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 838
    return-void

    #@d
    .line 840
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteEvent(ILjava/lang/String;I)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uid"    # I

    #@0
    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 347
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteEventLocked(ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 345
    return-void

    #@d
    .line 347
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteFlashlightOff(I)V
    .locals 2
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 630
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 631
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFlashlightOffLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 628
    return-void

    #@d
    .line 630
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteFlashlightOn(I)V
    .locals 2
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 622
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 623
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 624
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFlashlightOnLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 621
    return-void

    #@d
    .line 623
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteFullWifiLockAcquired(I)V
    .locals 2
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 723
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 724
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 725
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockAcquiredLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 722
    return-void

    #@d
    .line 724
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 765
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 766
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 767
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockAcquiredFromSourceLocked(Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 764
    return-void

    #@d
    .line 766
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteFullWifiLockReleased(I)V
    .locals 2
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 730
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 731
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 732
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockReleasedLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 729
    return-void

    #@d
    .line 731
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 772
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 773
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 774
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockReleasedFromSourceLocked(Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 771
    return-void

    #@d
    .line 773
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteInteractive(Z)V
    .locals 2
    .param p1, "interactive"    # Z

    #@0
    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 510
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 511
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteInteractiveLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 508
    return-void

    #@d
    .line 510
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteJobFinish(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 375
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteJobFinishLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 373
    return-void

    #@d
    .line 375
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteJobStart(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 368
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteJobStartLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 366
    return-void

    #@d
    .line 368
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteMobileRadioPowerState(IJ)V
    .locals 2
    .param p1, "powerState"    # I
    .param p2, "timestampNs"    # J

    #@0
    .prologue
    .line 523
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 524
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 525
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteMobileRadioPowerState(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 522
    return-void

    #@d
    .line 524
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteNetworkInterfaceType(Ljava/lang/String;I)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "networkType"    # I

    #@0
    .prologue
    .line 823
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 824
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 825
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteNetworkInterfaceTypeLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 822
    return-void

    #@d
    .line 824
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteNetworkStatsEnabled()V
    .locals 2

    #@0
    .prologue
    .line 831
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 832
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 833
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteNetworkStatsEnabledLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 830
    return-void

    #@d
    .line 832
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public notePackageInstalled(Ljava/lang/String;I)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "versionCode"    # I

    #@0
    .prologue
    .line 846
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 847
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 848
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->notePackageInstalledLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 845
    return-void

    #@d
    .line 847
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public notePackageUninstalled(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 853
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 854
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 855
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->notePackageUninstalledLocked(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 852
    return-void

    #@d
    .line 854
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public notePhoneDataConnectionState(IZ)V
    .locals 2
    .param p1, "dataType"    # I
    .param p2, "hasData"    # Z

    #@0
    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 552
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 553
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneDataConnectionStateLocked(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 550
    return-void

    #@d
    .line 552
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public notePhoneOff()V
    .locals 2

    #@0
    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 538
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 539
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneOffLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 536
    return-void

    #@d
    .line 538
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public notePhoneOn()V
    .locals 2

    #@0
    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 531
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 532
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneOnLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 529
    return-void

    #@d
    .line 531
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 2
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    #@0
    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 545
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 546
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneSignalStrengthLocked(Landroid/telephony/SignalStrength;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 543
    return-void

    #@d
    .line 545
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public notePhoneState(I)V
    .locals 3
    .param p1, "state"    # I

    #@0
    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 559
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    #@a
    move-result v0

    #@b
    .line 560
    .local v0, "simState":I
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@d
    monitor-enter v2

    #@e
    .line 561
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@10
    invoke-virtual {v1, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneStateLocked(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v2

    #@14
    .line 557
    return-void

    #@15
    .line 560
    :catchall_0
    move-exception v1

    #@16
    monitor-exit v2

    #@17
    throw v1
.end method

.method noteProcessAnr(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 271
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@2
    monitor-enter v1

    #@3
    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessAnrLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 270
    return-void

    #@a
    .line 271
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method noteProcessCrash(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 265
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@2
    monitor-enter v1

    #@3
    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessCrashLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 264
    return-void

    #@a
    .line 265
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method noteProcessFinish(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 283
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@2
    monitor-enter v1

    #@3
    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessFinishLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 282
    return-void

    #@a
    .line 283
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method noteProcessStart(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 259
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@2
    monitor-enter v1

    #@3
    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessStartLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 258
    return-void

    #@a
    .line 259
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method noteProcessState(Ljava/lang/String;II)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "state"    # I

    #@0
    .prologue
    .line 277
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@2
    monitor-enter v1

    #@3
    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessStateLocked(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 276
    return-void

    #@a
    .line 277
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public noteResetAudio()V
    .locals 2

    #@0
    .prologue
    .line 608
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 609
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 610
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetAudioLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 607
    return-void

    #@d
    .line 609
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteResetCamera()V
    .locals 2

    #@0
    .prologue
    .line 650
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 651
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 652
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetCameraLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 649
    return-void

    #@d
    .line 651
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteResetFlashlight()V
    .locals 2

    #@0
    .prologue
    .line 657
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 658
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 659
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetFlashlightLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 656
    return-void

    #@d
    .line 658
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteResetVideo()V
    .locals 2

    #@0
    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 616
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 617
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetVideoLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 614
    return-void

    #@d
    .line 616
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteScreenBrightness(I)V
    .locals 2
    .param p1, "brightness"    # I

    #@0
    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 489
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 490
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteScreenBrightnessLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 487
    return-void

    #@d
    .line 489
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteScreenState(I)V
    .locals 2
    .param p1, "state"    # I

    #@0
    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 482
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 483
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteScreenStateLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 480
    return-void

    #@d
    .line 482
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteStartAudio(I)V
    .locals 2
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 580
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 581
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 582
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteAudioOnLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 579
    return-void

    #@d
    .line 581
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteStartCamera(I)V
    .locals 2
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 636
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 637
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 638
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteCameraOnLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 635
    return-void

    #@d
    .line 637
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteStartGps(I)V
    .locals 2
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 468
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 469
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartGpsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 466
    return-void

    #@d
    .line 468
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteStartSensor(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "sensor"    # I

    #@0
    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 440
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartSensorLocked(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 438
    return-void

    #@d
    .line 440
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteStartVideo(I)V
    .locals 2
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 595
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 596
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteVideoOnLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 593
    return-void

    #@d
    .line 595
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 13
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "unimportantForLogging"    # Z

    #@0
    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 397
    iget-object v12, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v12

    #@6
    .line 398
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    .line 399
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@b
    move-result-wide v8

    #@c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@f
    move-result-wide v10

    #@10
    move v2, p1

    #@11
    move v3, p2

    #@12
    move-object/from16 v4, p3

    #@14
    move-object/from16 v5, p4

    #@16
    move/from16 v6, p5

    #@18
    move/from16 v7, p6

    #@1a
    .line 398
    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartWakeLocked(IILjava/lang/String;Ljava/lang/String;IZJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    monitor-exit v12

    #@1e
    .line 395
    return-void

    #@1f
    .line 397
    :catchall_0
    move-exception v0

    #@20
    monitor-exit v12

    #@21
    throw v0
.end method

.method public noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 8
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "unimportantForLogging"    # Z

    #@0
    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 414
    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v7

    #@6
    .line 415
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    move-object v1, p1

    #@9
    move v2, p2

    #@a
    move-object v3, p3

    #@b
    move-object v4, p4

    #@c
    move v5, p5

    #@d
    move v6, p6

    #@e
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartWakeFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v7

    #@12
    .line 412
    return-void

    #@13
    .line 414
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v7

    #@15
    throw v0
.end method

.method public noteStopAudio(I)V
    .locals 2
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 587
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 588
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 589
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteAudioOffLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 586
    return-void

    #@d
    .line 588
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteStopCamera(I)V
    .locals 2
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 643
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 644
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 645
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteCameraOffLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 642
    return-void

    #@d
    .line 644
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteStopGps(I)V
    .locals 2
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 475
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 476
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopGpsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 473
    return-void

    #@d
    .line 475
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteStopSensor(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "sensor"    # I

    #@0
    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 447
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 448
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopSensorLocked(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 445
    return-void

    #@d
    .line 447
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteStopVideo(I)V
    .locals 2
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 601
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 602
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 603
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteVideoOffLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 600
    return-void

    #@d
    .line 602
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V
    .locals 11
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I

    #@0
    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 405
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v10

    #@6
    .line 406
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    .line 407
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@b
    move-result-wide v6

    #@c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@f
    move-result-wide v8

    #@10
    move v1, p1

    #@11
    move v2, p2

    #@12
    move-object v3, p3

    #@13
    move-object v4, p4

    #@14
    move/from16 v5, p5

    #@16
    .line 406
    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopWakeLocked(IILjava/lang/String;Ljava/lang/String;IJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit v10

    #@1a
    .line 403
    return-void

    #@1b
    .line 405
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit v10

    #@1d
    throw v0
.end method

.method public noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I

    #@0
    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 433
    iget-object v6, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v6

    #@6
    .line 434
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    move-object v1, p1

    #@9
    move v2, p2

    #@a
    move-object v3, p3

    #@b
    move-object v4, p4

    #@c
    move v5, p5

    #@d
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopWakeFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v6

    #@11
    .line 431
    return-void

    #@12
    .line 433
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v6

    #@14
    throw v0
.end method

.method public noteSyncFinish(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 361
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 362
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteSyncFinishLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 359
    return-void

    #@d
    .line 361
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteSyncStart(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 354
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteSyncStartLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 352
    return-void

    #@d
    .line 354
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteUserActivity(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "event"    # I

    #@0
    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 496
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 497
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteUserActivityLocked(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 494
    return-void

    #@d
    .line 496
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteVibratorOff(I)V
    .locals 2
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 461
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 462
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteVibratorOffLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 459
    return-void

    #@d
    .line 461
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteVibratorOn(IJ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "durationMillis"    # J

    #@0
    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 454
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 455
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteVibratorOnLocked(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 452
    return-void

    #@d
    .line 454
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteWakeUp(Ljava/lang/String;I)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "reasonUid"    # I

    #@0
    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 503
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 504
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWakeUpLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 501
    return-void

    #@d
    .line 503
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteWifiBatchedScanStartedFromSource(Landroid/os/WorkSource;I)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "csph"    # I

    #@0
    .prologue
    .line 793
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 794
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 795
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiBatchedScanStartedFromSourceLocked(Landroid/os/WorkSource;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 792
    return-void

    #@d
    .line 794
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteWifiBatchedScanStoppedFromSource(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 800
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 801
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 802
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiBatchedScanStoppedFromSourceLocked(Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 799
    return-void

    #@d
    .line 801
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteWifiMulticastDisabled(I)V
    .locals 2
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 758
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 759
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 760
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastDisabledLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 757
    return-void

    #@d
    .line 759
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteWifiMulticastDisabledFromSource(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 815
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 816
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 817
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastDisabledFromSourceLocked(Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 814
    return-void

    #@d
    .line 816
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteWifiMulticastEnabled(I)V
    .locals 2
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 751
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 752
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 753
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastEnabledLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 750
    return-void

    #@d
    .line 752
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteWifiMulticastEnabledFromSource(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 807
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 808
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 809
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastEnabledFromSourceLocked(Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 806
    return-void

    #@d
    .line 808
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteWifiOff()V
    .locals 2

    #@0
    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 574
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 575
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiOffLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 572
    return-void

    #@d
    .line 574
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteWifiOn()V
    .locals 2

    #@0
    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 567
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 568
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiOnLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 565
    return-void

    #@d
    .line 567
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteWifiRadioPowerState(IJ)V
    .locals 6
    .param p1, "powerState"    # I
    .param p2, "tsNanos"    # J

    #@0
    .prologue
    .line 665
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 669
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v2

    #@6
    .line 670
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 671
    sget v1, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_HIGH:I

    #@10
    if-eq p1, v1, :cond_0

    #@12
    .line 672
    sget v1, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_MEDIUM:I

    #@14
    if-ne p1, v1, :cond_2

    #@16
    :cond_0
    const-string/jumbo v0, "active"

    #@19
    .line 674
    .local v0, "type":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

    #@1b
    new-instance v3, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v4, "wifi-data: "

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v1, v3}, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->scheduleWifiSync(Ljava/lang/String;)V

    #@32
    .line 676
    .end local v0    # "type":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@34
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRadioPowerState(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    monitor-exit v2

    #@38
    .line 664
    return-void

    #@39
    .line 673
    :cond_2
    :try_start_1
    const-string/jumbo v0, "inactive"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_0

    #@3d
    .line 669
    .end local v0    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v1

    #@3e
    monitor-exit v2

    #@3f
    throw v1
.end method

.method public noteWifiRssiChanged(I)V
    .locals 2
    .param p1, "newRssi"    # I

    #@0
    .prologue
    .line 716
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 717
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 718
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRssiChangedLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 715
    return-void

    #@d
    .line 717
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteWifiRunning(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 681
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 682
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 683
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRunningLocked(Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 680
    return-void

    #@d
    .line 682
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "oldWs"    # Landroid/os/WorkSource;
    .param p2, "newWs"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 688
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 689
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 690
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRunningChangedLocked(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 687
    return-void

    #@d
    .line 689
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteWifiScanStarted(I)V
    .locals 2
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 738
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 739
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStartedLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 736
    return-void

    #@d
    .line 738
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteWifiScanStartedFromSource(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 779
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 780
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 781
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStartedFromSourceLocked(Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 778
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

.method public noteWifiScanStopped(I)V
    .locals 2
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 744
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 745
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 746
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStoppedLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 743
    return-void

    #@d
    .line 745
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteWifiScanStoppedFromSource(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 786
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 787
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 788
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStoppedFromSourceLocked(Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 785
    return-void

    #@d
    .line 787
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteWifiState(ILjava/lang/String;)V
    .locals 2
    .param p1, "wifiState"    # I
    .param p2, "accessPoint"    # Ljava/lang/String;

    #@0
    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 703
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 704
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiStateLocked(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 701
    return-void

    #@d
    .line 703
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteWifiStopped(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 696
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 697
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiStoppedLocked(Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 694
    return-void

    #@d
    .line 696
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteWifiSupplicantStateChanged(IZ)V
    .locals 2
    .param p1, "supplState"    # I
    .param p2, "failedAuth"    # Z

    #@0
    .prologue
    .line 709
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 710
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 711
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiSupplicantStateChangedLocked(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 708
    return-void

    #@d
    .line 710
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public onLowPowerModeChanged(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 213
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@2
    monitor-enter v1

    #@3
    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->notePowerSaveMode(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 212
    return-void

    #@a
    .line 213
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public publish(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    #@2
    .line 174
    const-string/jumbo v0, "batterystats"

    #@5
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->asBinder()Landroid/os/IBinder;

    #@8
    move-result-object v1

    #@9
    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@c
    .line 175
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@e
    new-instance v1, Lcom/android/internal/os/PowerProfile;

    #@10
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    #@12
    invoke-direct {v1, v2}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    #@15
    invoke-virtual {v1}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    #@18
    move-result v1

    #@19
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->setNumSpeedSteps(I)V

    #@1c
    .line 176
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@1e
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    #@20
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@23
    move-result-object v1

    #@24
    .line 177
    const v2, 0x10e000c

    #@27
    .line 176
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@2a
    move-result v1

    #@2b
    int-to-long v2, v1

    #@2c
    .line 178
    const-wide/16 v4, 0x3e8

    #@2e
    .line 176
    mul-long/2addr v2, v4

    #@2f
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->setRadioScanningTimeout(J)V

    #@32
    .line 179
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@34
    new-instance v1, Lcom/android/internal/os/PowerProfile;

    #@36
    invoke-direct {v1, p1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    #@39
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->setPowerProfile(Lcom/android/internal/os/PowerProfile;)V

    #@3c
    .line 172
    return-void
.end method

.method removeIsolatedUid(II)V
    .locals 2
    .param p1, "isolatedUid"    # I
    .param p2, "appUid"    # I

    #@0
    .prologue
    .line 253
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@2
    monitor-enter v1

    #@3
    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->scheduleRemoveIsolatedUidLocked(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 252
    return-void

    #@a
    .line 253
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method removeUid(I)V
    .locals 2
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 241
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@2
    monitor-enter v1

    #@3
    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->removeUidStatsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 240
    return-void

    #@a
    .line 241
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public scheduleWriteToDisk()V
    .locals 2

    #@0
    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

    #@2
    const/4 v1, 0x2

    #@3
    invoke-virtual {v0, v1}, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->sendEmptyMessage(I)Z

    #@6
    .line 231
    return-void
.end method

.method public setBatteryState(IIIIII)V
    .locals 9
    .param p1, "status"    # I
    .param p2, "health"    # I
    .param p3, "plugType"    # I
    .param p4, "level"    # I
    .param p5, "temp"    # I
    .param p6, "volt"    # I

    #@0
    .prologue
    .line 866
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 870
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

    #@5
    new-instance v0, Lcom/android/server/am/BatteryStatsService$1;

    #@7
    move-object v1, p0

    #@8
    move v2, p3

    #@9
    move v3, p1

    #@a
    move v4, p2

    #@b
    move v5, p4

    #@c
    move v6, p5

    #@d
    move v7, p6

    #@e
    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/BatteryStatsService$1;-><init>(Lcom/android/server/am/BatteryStatsService;IIIIII)V

    #@11
    invoke-virtual {v8, v0}, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->post(Ljava/lang/Runnable;)Z

    #@14
    .line 865
    return-void
.end method

.method public shutdown()V
    .locals 2

    #@0
    .prologue
    .line 194
    const-string/jumbo v0, "BatteryStats"

    #@3
    const-string/jumbo v1, "Writing battery stats before shutdown..."

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 196
    const-string/jumbo v0, "shutdown"

    #@c
    const/16 v1, 0xf

    #@e
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BatteryStatsService;->updateExternalStats(Ljava/lang/String;I)V

    #@11
    .line 197
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@13
    monitor-enter v1

    #@14
    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@16
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->shutdownLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit v1

    #@1a
    .line 193
    return-void

    #@1b
    .line 197
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit v1

    #@1d
    throw v0
.end method

.method updateExternalStats(Ljava/lang/String;I)V
    .locals 12
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "updateFlags"    # I

    #@0
    .prologue
    .line 1332
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mExternalStatsLock:Ljava/lang/Object;

    #@2
    monitor-enter v10

    #@3
    .line 1333
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@5
    if-nez v1, :cond_0

    #@7
    monitor-exit v10

    #@8
    .line 1336
    return-void

    #@9
    .line 1343
    :cond_0
    const/4 v9, 0x0

    #@a
    .line 1344
    .local v9, "wifiEnergyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    and-int/lit8 v1, p2, 0x2

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 1345
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->pullWifiEnergyInfoLocked()Landroid/net/wifi/WifiActivityEnergyInfo;

    #@11
    move-result-object v9

    #@12
    .line 1348
    .end local v9    # "wifiEnergyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    :cond_1
    const/4 v0, 0x0

    #@13
    .line 1349
    .local v0, "bluetoothEnergyInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    and-int/lit8 v1, p2, 0x8

    #@15
    if-eqz v1, :cond_2

    #@17
    .line 1352
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->pullBluetoothEnergyInfoLocked()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    #@1a
    move-result-object v0

    #@1b
    .line 1355
    .end local v0    # "bluetoothEnergyInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :cond_2
    iget-object v11, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@1d
    monitor-enter v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1e
    .line 1356
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@21
    move-result-wide v2

    #@22
    .line 1357
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@25
    move-result-wide v4

    #@26
    .line 1358
    .local v4, "uptime":J
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@28
    iget-boolean v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mRecordAllHistory:Z

    #@2a
    if-eqz v1, :cond_3

    #@2c
    .line 1359
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@2e
    .line 1360
    const/16 v6, 0xe

    #@30
    const/4 v8, 0x0

    #@31
    move-object v7, p1

    #@32
    .line 1359
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    #@35
    .line 1363
    :cond_3
    and-int/lit8 v1, p2, 0x1

    #@37
    if-eqz v1, :cond_4

    #@39
    .line 1364
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@3b
    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->updateCpuTimeLocked()V

    #@3e
    .line 1365
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@40
    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->updateKernelWakelocksLocked()V

    #@43
    .line 1368
    :cond_4
    and-int/lit8 v1, p2, 0x4

    #@45
    if-eqz v1, :cond_5

    #@47
    .line 1369
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@49
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->updateMobileRadioStateLocked(J)V

    #@4c
    .line 1372
    :cond_5
    and-int/lit8 v1, p2, 0x2

    #@4e
    if-eqz v1, :cond_6

    #@50
    .line 1373
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@52
    invoke-virtual {v1, v9}, Lcom/android/internal/os/BatteryStatsImpl;->updateWifiStateLocked(Landroid/net/wifi/WifiActivityEnergyInfo;)V

    #@55
    .line 1376
    :cond_6
    and-int/lit8 v1, p2, 0x8

    #@57
    if-eqz v1, :cond_7

    #@59
    .line 1377
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5b
    invoke-virtual {v1, v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateBluetoothStateLocked(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5e
    :cond_7
    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@5f
    monitor-exit v10

    #@60
    .line 1331
    return-void

    #@61
    .line 1355
    .end local v2    # "elapsedRealtime":J
    .end local v4    # "uptime":J
    :catchall_0
    move-exception v1

    #@62
    :try_start_4
    monitor-exit v11

    #@63
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@64
    .line 1332
    :catchall_1
    move-exception v1

    #@65
    monitor-exit v10

    #@66
    throw v1
.end method
