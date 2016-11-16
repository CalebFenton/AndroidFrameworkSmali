.class public final Lcom/android/server/am/BatteryStatsService;
.super Lcom/android/internal/app/IBatteryStats$Stub;
.source "BatteryStatsService.java"

# interfaces
.implements Landroid/os/PowerManagerInternal$LowPowerModeListener;
.implements Lcom/android/internal/os/BatteryStatsImpl$PlatformIdleStateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;,
        Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;
    }
.end annotation


# static fields
.field private static final EXTERNAL_STATS_SYNC_TIMEOUT_MILLIS:J = 0x7d0L

.field private static final MAX_LOW_POWER_STATS_SIZE:I = 0x200

.field private static final MAX_WIFI_STATS_SAMPLE_ERROR_MILLIS:J = 0x2eeL

.field static final TAG:Ljava/lang/String; = "BatteryStatsService"

.field private static sService:Lcom/android/internal/app/IBatteryStats;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDecoderStat:Ljava/nio/charset/CharsetDecoder;

.field private final mExternalStatsLock:Ljava/lang/Object;

.field private final mHandler:Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

.field private mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mExternalStatsLock"
    .end annotation
.end field

.field final mStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private mTelephony:Landroid/telephony/TelephonyManager;

.field private mUtf16BufferStat:Ljava/nio/CharBuffer;

.field private mUtf8BufferStat:Ljava/nio/ByteBuffer;

.field private mWifiManager:Landroid/net/wifi/IWifiManager;


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
    .locals 18
    .param p1, "systemDir"    # Ljava/io/File;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 207
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;-><init>()V

    #@3
    .line 103
    new-instance v5, Ljava/lang/Object;

    #@5
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    #@8
    move-object/from16 v0, p0

    #@a
    iput-object v5, v0, Lcom/android/server/am/BatteryStatsService;->mExternalStatsLock:Ljava/lang/Object;

    #@c
    .line 109
    new-instance v5, Landroid/net/wifi/WifiActivityEnergyInfo;

    #@e
    const-wide/16 v6, 0x0

    #@10
    const-wide/16 v9, 0x0

    #@12
    const/4 v8, 0x1

    #@13
    new-array v11, v8, [J

    #@15
    const-wide/16 v12, 0x0

    #@17
    const/4 v8, 0x0

    #@18
    aput-wide v12, v11, v8

    #@1a
    const-wide/16 v12, 0x0

    #@1c
    const-wide/16 v14, 0x0

    #@1e
    const-wide/16 v16, 0x0

    #@20
    const/4 v8, 0x0

    #@21
    invoke-direct/range {v5 .. v17}, Landroid/net/wifi/WifiActivityEnergyInfo;-><init>(JIJ[JJJJ)V

    #@24
    .line 108
    move-object/from16 v0, p0

    #@26
    iput-object v5, v0, Lcom/android/server/am/BatteryStatsService;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    #@28
    .line 181
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@2a
    invoke-virtual {v5}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    #@2d
    move-result-object v5

    #@2e
    .line 183
    sget-object v6, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@30
    .line 181
    invoke-virtual {v5, v6}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    #@33
    move-result-object v5

    #@34
    .line 184
    sget-object v6, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@36
    .line 181
    invoke-virtual {v5, v6}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    #@39
    move-result-object v5

    #@3a
    .line 185
    const-string/jumbo v6, "?"

    #@3d
    .line 181
    invoke-virtual {v5, v6}, Ljava/nio/charset/CharsetDecoder;->replaceWith(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;

    #@40
    move-result-object v5

    #@41
    move-object/from16 v0, p0

    #@43
    iput-object v5, v0, Lcom/android/server/am/BatteryStatsService;->mDecoderStat:Ljava/nio/charset/CharsetDecoder;

    #@45
    .line 186
    const/16 v5, 0x200

    #@47
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    #@4a
    move-result-object v5

    #@4b
    move-object/from16 v0, p0

    #@4d
    iput-object v5, v0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    #@4f
    .line 187
    const/16 v5, 0x200

    #@51
    invoke-static {v5}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    #@54
    move-result-object v5

    #@55
    move-object/from16 v0, p0

    #@57
    iput-object v5, v0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    #@59
    .line 210
    new-instance v4, Lcom/android/server/ServiceThread;

    #@5b
    const-string/jumbo v5, "batterystats-sync"

    #@5e
    .line 211
    const/4 v6, 0x0

    #@5f
    const/4 v7, 0x1

    #@60
    .line 210
    invoke-direct {v4, v5, v6, v7}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    #@63
    .line 212
    .local v4, "thread":Lcom/android/server/ServiceThread;
    invoke-virtual {v4}, Lcom/android/server/ServiceThread;->start()V

    #@66
    .line 213
    new-instance v5, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

    #@68
    invoke-virtual {v4}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    #@6b
    move-result-object v6

    #@6c
    move-object/from16 v0, p0

    #@6e
    invoke-direct {v5, v0, v6}, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/Looper;)V

    #@71
    move-object/from16 v0, p0

    #@73
    iput-object v5, v0, Lcom/android/server/am/BatteryStatsService;->mHandler:Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

    #@75
    .line 216
    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl;

    #@77
    move-object/from16 v0, p0

    #@79
    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mHandler:Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

    #@7b
    move-object/from16 v0, p1

    #@7d
    move-object/from16 v1, p2

    #@7f
    move-object/from16 v2, p0

    #@81
    invoke-direct {v5, v0, v1, v6, v2}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Ljava/io/File;Landroid/os/Handler;Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;Lcom/android/internal/os/BatteryStatsImpl$PlatformIdleStateCallback;)V

    #@84
    move-object/from16 v0, p0

    #@86
    iput-object v5, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@88
    .line 207
    return-void
.end method

.method private static awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;
    .locals 5
    .param p0, "receiver"    # Landroid/os/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/SynchronousResultReceiver;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1410
    if-nez p0, :cond_0

    #@3
    .line 1411
    return-object v4

    #@4
    .line 1415
    :cond_0
    const-wide/16 v2, 0x7d0

    #@6
    invoke-virtual {p0, v2, v3}, Landroid/os/SynchronousResultReceiver;->awaitResult(J)Landroid/os/SynchronousResultReceiver$Result;

    #@9
    move-result-object v1

    #@a
    .line 1416
    .local v1, "result":Landroid/os/SynchronousResultReceiver$Result;
    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    #@c
    if-eqz v2, :cond_1

    #@e
    .line 1418
    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    #@10
    const/4 v3, 0x1

    #@11
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setDefusable(Z)V

    #@14
    .line 1420
    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    #@16
    const-string/jumbo v3, "controller_activity"

    #@19
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@1c
    move-result-object v0

    #@1d
    .line 1421
    .local v0, "data":Landroid/os/Parcelable;, "TT;"
    if-eqz v0, :cond_1

    #@1f
    .line 1422
    return-object v0

    #@20
    .line 1425
    .end local v0    # "data":Landroid/os/Parcelable;, "TT;"
    :cond_1
    const-string/jumbo v2, "BatteryStatsService"

    #@23
    const-string/jumbo v3, "no controller energy info supplied"

    #@26
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 1426
    return-object v4
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
    .line 1132
    add-int/lit8 p2, p2, 0x1

    #@3
    .line 1133
    array-length v0, p3

    #@4
    if-lt p2, v0, :cond_1

    #@6
    .line 1134
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
    .line 1135
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    #@25
    .line 1136
    return v2

    #@26
    .line 1134
    :cond_0
    const-string/jumbo v0, "--disable"

    #@29
    goto :goto_0

    #@2a
    .line 1138
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
    .line 1139
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@42
    monitor-enter v1

    #@43
    .line 1140
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
    .line 1151
    return p2

    #@4a
    .line 1139
    :catchall_0
    move-exception v0

    #@4b
    monitor-exit v1

    #@4c
    throw v0

    #@4d
    .line 1142
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
    .line 1143
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5a
    monitor-enter v1

    #@5b
    .line 1144
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5d
    invoke-virtual {v0, p4}, Lcom/android/internal/os/BatteryStatsImpl;->setNoAutoReset(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@60
    goto :goto_1

    #@61
    .line 1143
    :catchall_1
    move-exception v0

    #@62
    monitor-exit v1

    #@63
    throw v0

    #@64
    .line 1147
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
    .line 1148
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    #@80
    .line 1149
    return v2
.end method

.method private dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 1106
    const-string/jumbo v0, "Battery stats (batterystats) dump options:"

    #@3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 1107
    const-string/jumbo v0, "  [--checkin] [--history] [--history-start] [--charged] [-c]"

    #@9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c
    .line 1108
    const-string/jumbo v0, "  [--daily] [--reset] [--write] [--new-daily] [--read-daily] [-h] [<package.name>]"

    #@f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@12
    .line 1109
    const-string/jumbo v0, "  --checkin: generate output for a checkin report; will write (and clear) the"

    #@15
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@18
    .line 1110
    const-string/jumbo v0, "             last old completed stats when they had been reset."

    #@1b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1e
    .line 1111
    const-string/jumbo v0, "  -c: write the current stats in checkin format."

    #@21
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@24
    .line 1112
    const-string/jumbo v0, "  --history: show only history data."

    #@27
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2a
    .line 1113
    const-string/jumbo v0, "  --history-start <num>: show only history data starting at given time offset."

    #@2d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@30
    .line 1114
    const-string/jumbo v0, "  --charged: only output data since last charged."

    #@33
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@36
    .line 1115
    const-string/jumbo v0, "  --daily: only output full daily data."

    #@39
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3c
    .line 1116
    const-string/jumbo v0, "  --reset: reset the stats, clearing all current data."

    #@3f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@42
    .line 1117
    const-string/jumbo v0, "  --write: force write current collected stats to disk."

    #@45
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@48
    .line 1118
    const-string/jumbo v0, "  --new-daily: immediately create and write new daily stats record."

    #@4b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4e
    .line 1119
    const-string/jumbo v0, "  --read-daily: read-load last written daily stats."

    #@51
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@54
    .line 1120
    const-string/jumbo v0, "  <package.name>: optional name of package to filter output by."

    #@57
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5a
    .line 1121
    const-string/jumbo v0, "  -h: print this help text."

    #@5d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@60
    .line 1122
    const-string/jumbo v0, "Battery stats (batterystats) commands:"

    #@63
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@66
    .line 1123
    const-string/jumbo v0, "  enable|disable <option>"

    #@69
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6c
    .line 1124
    const-string/jumbo v0, "    Enable or disable a running option.  Option state is not saved across boots."

    #@6f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@72
    .line 1125
    const-string/jumbo v0, "    Options are:"

    #@75
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@78
    .line 1126
    const-string/jumbo v0, "      full-history: include additional detailed events in battery history:"

    #@7b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7e
    .line 1127
    const-string/jumbo v0, "          wake_lock_in, alarms and proc events"

    #@81
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@84
    .line 1128
    const-string/jumbo v0, "      no-auto-reset: don\'t automatically reset stats when unplugged"

    #@87
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8a
    .line 1105
    return-void
.end method

.method private extractDelta(Landroid/net/wifi/WifiActivityEnergyInfo;)Landroid/net/wifi/WifiActivityEnergyInfo;
    .locals 30
    .param p1, "latest"    # Landroid/net/wifi/WifiActivityEnergyInfo;

    #@0
    .prologue
    .line 1331
    move-object/from16 v0, p1

    #@2
    iget-wide v0, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mTimestamp:J

    #@4
    move-wide/from16 v26, v0

    #@6
    move-object/from16 v0, p0

    #@8
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    #@a
    move-object/from16 v28, v0

    #@c
    move-object/from16 v0, v28

    #@e
    iget-wide v0, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mTimestamp:J

    #@10
    move-wide/from16 v28, v0

    #@12
    sub-long v20, v26, v28

    #@14
    .line 1332
    .local v20, "timePeriodMs":J
    move-object/from16 v0, p0

    #@16
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    #@18
    move-object/from16 v26, v0

    #@1a
    move-object/from16 v0, v26

    #@1c
    iget-wide v10, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    #@1e
    .line 1333
    .local v10, "lastIdleMs":J
    move-object/from16 v0, p0

    #@20
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    #@22
    move-object/from16 v26, v0

    #@24
    move-object/from16 v0, v26

    #@26
    iget-wide v14, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    #@28
    .line 1334
    .local v14, "lastTxMs":J
    move-object/from16 v0, p0

    #@2a
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    #@2c
    move-object/from16 v26, v0

    #@2e
    move-object/from16 v0, v26

    #@30
    iget-wide v12, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    #@32
    .line 1335
    .local v12, "lastRxMs":J
    move-object/from16 v0, p0

    #@34
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    #@36
    move-object/from16 v26, v0

    #@38
    move-object/from16 v0, v26

    #@3a
    iget-wide v8, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    #@3c
    .line 1339
    .local v8, "lastEnergy":J
    move-object/from16 v0, p0

    #@3e
    iget-object v4, v0, Lcom/android/server/am/BatteryStatsService;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    #@40
    .line 1340
    .local v4, "delta":Landroid/net/wifi/WifiActivityEnergyInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->getTimeStamp()J

    #@43
    move-result-wide v26

    #@44
    move-wide/from16 v0, v26

    #@46
    iput-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mTimestamp:J

    #@48
    .line 1341
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->getStackState()I

    #@4b
    move-result v26

    #@4c
    move/from16 v0, v26

    #@4e
    iput v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mStackState:I

    #@50
    .line 1343
    move-object/from16 v0, p1

    #@52
    iget-wide v0, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    #@54
    move-wide/from16 v26, v0

    #@56
    sub-long v24, v26, v14

    #@58
    .line 1344
    .local v24, "txTimeMs":J
    move-object/from16 v0, p1

    #@5a
    iget-wide v0, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    #@5c
    move-wide/from16 v26, v0

    #@5e
    sub-long v18, v26, v12

    #@60
    .line 1345
    .local v18, "rxTimeMs":J
    move-object/from16 v0, p1

    #@62
    iget-wide v0, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    #@64
    move-wide/from16 v26, v0

    #@66
    sub-long v6, v26, v10

    #@68
    .line 1347
    .local v6, "idleTimeMs":J
    const-wide/16 v26, 0x0

    #@6a
    cmp-long v26, v24, v26

    #@6c
    if-ltz v26, :cond_0

    #@6e
    const-wide/16 v26, 0x0

    #@70
    cmp-long v26, v18, v26

    #@72
    if-gez v26, :cond_1

    #@74
    .line 1350
    :cond_0
    move-object/from16 v0, p1

    #@76
    iget-wide v0, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    #@78
    move-wide/from16 v26, v0

    #@7a
    move-wide/from16 v0, v26

    #@7c
    iput-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    #@7e
    .line 1351
    move-object/from16 v0, p1

    #@80
    iget-wide v0, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    #@82
    move-wide/from16 v26, v0

    #@84
    move-wide/from16 v0, v26

    #@86
    iput-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    #@88
    .line 1352
    move-object/from16 v0, p1

    #@8a
    iget-wide v0, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    #@8c
    move-wide/from16 v26, v0

    #@8e
    move-wide/from16 v0, v26

    #@90
    iput-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    #@92
    .line 1353
    move-object/from16 v0, p1

    #@94
    iget-wide v0, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    #@96
    move-wide/from16 v26, v0

    #@98
    move-wide/from16 v0, v26

    #@9a
    iput-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    #@9c
    .line 1354
    const-string/jumbo v26, "BatteryStatsService"

    #@9f
    new-instance v27, Ljava/lang/StringBuilder;

    #@a1
    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    #@a4
    const-string/jumbo v28, "WiFi energy data was reset, new WiFi energy data is "

    #@a7
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v27

    #@ab
    move-object/from16 v0, v27

    #@ad
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v27

    #@b1
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v27

    #@b5
    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@b8
    .line 1400
    :goto_0
    move-object/from16 v0, p1

    #@ba
    move-object/from16 v1, p0

    #@bc
    iput-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    #@be
    .line 1401
    return-object v4

    #@bf
    .line 1356
    :cond_1
    add-long v22, v24, v18

    #@c1
    .line 1358
    .local v22, "totalActiveTimeMs":J
    cmp-long v26, v22, v20

    #@c3
    if-lez v26, :cond_3

    #@c5
    .line 1360
    const-wide/16 v16, 0x0

    #@c7
    .line 1361
    .local v16, "maxExpectedIdleTimeMs":J
    const-wide/16 v26, 0x2ee

    #@c9
    add-long v26, v26, v20

    #@cb
    cmp-long v26, v22, v26

    #@cd
    if-lez v26, :cond_2

    #@cf
    .line 1362
    new-instance v5, Ljava/lang/StringBuilder;

    #@d1
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@d4
    .line 1363
    .local v5, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v26, "Total Active time "

    #@d7
    move-object/from16 v0, v26

    #@d9
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    .line 1364
    move-wide/from16 v0, v22

    #@de
    invoke-static {v0, v1, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@e1
    .line 1365
    const-string/jumbo v26, " is longer than sample period "

    #@e4
    move-object/from16 v0, v26

    #@e6
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    .line 1366
    move-wide/from16 v0, v20

    #@eb
    invoke-static {v0, v1, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@ee
    .line 1367
    const-string/jumbo v26, ".\n"

    #@f1
    move-object/from16 v0, v26

    #@f3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    .line 1368
    const-string/jumbo v26, "Previous WiFi snapshot: "

    #@f9
    move-object/from16 v0, v26

    #@fb
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v26

    #@ff
    const-string/jumbo v27, "idle="

    #@102
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@105
    .line 1369
    invoke-static {v10, v11, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@108
    .line 1370
    const-string/jumbo v26, " rx="

    #@10b
    move-object/from16 v0, v26

    #@10d
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@110
    .line 1371
    invoke-static {v12, v13, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@113
    .line 1372
    const-string/jumbo v26, " tx="

    #@116
    move-object/from16 v0, v26

    #@118
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b
    .line 1373
    invoke-static {v14, v15, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@11e
    .line 1374
    const-string/jumbo v26, " e="

    #@121
    move-object/from16 v0, v26

    #@123
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@126
    move-result-object v26

    #@127
    move-object/from16 v0, v26

    #@129
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@12c
    .line 1375
    const-string/jumbo v26, "\n"

    #@12f
    move-object/from16 v0, v26

    #@131
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@134
    .line 1376
    const-string/jumbo v26, "Current WiFi snapshot: "

    #@137
    move-object/from16 v0, v26

    #@139
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v26

    #@13d
    const-string/jumbo v27, "idle="

    #@140
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@143
    .line 1377
    move-object/from16 v0, p1

    #@145
    iget-wide v0, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    #@147
    move-wide/from16 v26, v0

    #@149
    move-wide/from16 v0, v26

    #@14b
    invoke-static {v0, v1, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@14e
    .line 1378
    const-string/jumbo v26, " rx="

    #@151
    move-object/from16 v0, v26

    #@153
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@156
    .line 1379
    move-object/from16 v0, p1

    #@158
    iget-wide v0, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    #@15a
    move-wide/from16 v26, v0

    #@15c
    move-wide/from16 v0, v26

    #@15e
    invoke-static {v0, v1, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@161
    .line 1380
    const-string/jumbo v26, " tx="

    #@164
    move-object/from16 v0, v26

    #@166
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@169
    .line 1381
    move-object/from16 v0, p1

    #@16b
    iget-wide v0, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    #@16d
    move-wide/from16 v26, v0

    #@16f
    move-wide/from16 v0, v26

    #@171
    invoke-static {v0, v1, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@174
    .line 1382
    const-string/jumbo v26, " e="

    #@177
    move-object/from16 v0, v26

    #@179
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17c
    move-result-object v26

    #@17d
    move-object/from16 v0, p1

    #@17f
    iget-wide v0, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    #@181
    move-wide/from16 v28, v0

    #@183
    move-object/from16 v0, v26

    #@185
    move-wide/from16 v1, v28

    #@187
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@18a
    .line 1383
    const-string/jumbo v26, "BatteryStatsService"

    #@18d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@190
    move-result-object v27

    #@191
    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@194
    .line 1389
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :goto_1
    move-wide/from16 v0, v24

    #@196
    iput-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    #@198
    .line 1390
    move-wide/from16 v0, v18

    #@19a
    iput-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    #@19c
    .line 1396
    const-wide/16 v26, 0x0

    #@19e
    move-wide/from16 v0, v26

    #@1a0
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    #@1a3
    move-result-wide v26

    #@1a4
    move-wide/from16 v0, v16

    #@1a6
    move-wide/from16 v2, v26

    #@1a8
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    #@1ab
    move-result-wide v26

    #@1ac
    move-wide/from16 v0, v26

    #@1ae
    iput-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    #@1b0
    .line 1397
    const-wide/16 v26, 0x0

    #@1b2
    move-object/from16 v0, p1

    #@1b4
    iget-wide v0, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    #@1b6
    move-wide/from16 v28, v0

    #@1b8
    sub-long v28, v28, v8

    #@1ba
    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->max(JJ)J

    #@1bd
    move-result-wide v26

    #@1be
    move-wide/from16 v0, v26

    #@1c0
    iput-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    #@1c2
    goto/16 :goto_0

    #@1c4
    .line 1386
    .end local v16    # "maxExpectedIdleTimeMs":J
    :cond_3
    sub-long v16, v20, v22

    #@1c6
    .restart local v16    # "maxExpectedIdleTimeMs":J
    goto :goto_1
.end method

.method private native getPlatformLowPowerStats(Ljava/nio/ByteBuffer;)I
.end method

.method public static getService()Lcom/android/internal/app/IBatteryStats;
    .locals 2

    #@0
    .prologue
    .line 252
    sget-object v1, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 253
    sget-object v1, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    #@6
    return-object v1

    #@7
    .line 255
    :cond_0
    const-string/jumbo v1, "batterystats"

    #@a
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@d
    move-result-object v0

    #@e
    .line 256
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/server/am/BatteryStatsService;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    #@11
    move-result-object v1

    #@12
    sput-object v1, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    #@14
    .line 257
    sget-object v1, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    #@16
    return-object v1
.end method

.method private static native nativeWaitWakeup(Ljava/nio/ByteBuffer;)I
.end method

.method private static onlyCaller([I)Z
    .locals 4
    .param p0, "requestUids"    # [I

    #@0
    .prologue
    .line 1607
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v1

    #@4
    .line 1608
    .local v1, "caller":I
    array-length v0, p0

    #@5
    .line 1609
    .local v0, "N":I
    const/4 v2, 0x0

    #@6
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@8
    .line 1610
    aget v3, p0, v2

    #@a
    if-eq v3, v1, :cond_0

    #@c
    .line 1611
    const/4 v3, 0x0

    #@d
    return v3

    #@e
    .line 1609
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@10
    goto :goto_0

    #@11
    .line 1614
    :cond_1
    const/4 v3, 0x1

    #@12
    return v3
.end method


# virtual methods
.method addIsolatedUid(II)V
    .locals 2
    .param p1, "isolatedUid"    # I
    .param p2, "appUid"    # I

    #@0
    .prologue
    .line 296
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@2
    monitor-enter v1

    #@3
    .line 297
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->addIsolatedUidLocked(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 295
    return-void

    #@a
    .line 296
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
    .line 381
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@2
    monitor-enter v3

    #@3
    .line 382
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
    .line 383
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
    .line 381
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
    .line 388
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@2
    monitor-enter v3

    #@3
    .line 389
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
    .line 390
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
    .line 388
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
    .line 1157
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
    .line 1159
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
    .line 1160
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1c
    move-result v7

    #@1d
    .line 1159
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v6

    #@21
    .line 1160
    const-string/jumbo v7, ", uid="

    #@24
    .line 1159
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v6

    #@28
    .line 1160
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@2b
    move-result v7

    #@2c
    .line 1159
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v6

    #@30
    .line 1161
    const-string/jumbo v7, " without permission "

    #@33
    .line 1159
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v6

    #@37
    .line 1161
    const-string/jumbo v7, "android.permission.DUMP"

    #@3a
    .line 1159
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
    .line 1162
    return-void

    #@48
    .line 1165
    :cond_0
    const/4 v9, 0x0

    #@49
    .line 1166
    .local v9, "flags":I
    const/16 v28, 0x0

    #@4b
    .line 1167
    .local v28, "useCheckinFormat":Z
    const/16 v25, 0x0

    #@4d
    .line 1168
    .local v25, "isRealCheckin":Z
    const/16 v26, 0x0

    #@4f
    .line 1169
    .local v26, "noOutput":Z
    const/16 v29, 0x0

    #@51
    .line 1170
    .local v29, "writeData":Z
    const-wide/16 v10, -0x1

    #@53
    .line 1171
    .local v10, "historyStart":J
    const/16 v17, -0x1

    #@55
    .line 1172
    .local v17, "reqUid":I
    if-eqz p3, :cond_15

    #@57
    .line 1173
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
    .line 1174
    aget-object v4, p3, v21

    #@62
    .line 1175
    .local v4, "arg":Ljava/lang/String;
    const-string/jumbo v6, "--checkin"

    #@65
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@68
    move-result v6

    #@69
    if-eqz v6, :cond_1

    #@6b
    .line 1176
    const/16 v28, 0x1

    #@6d
    .line 1177
    const/16 v25, 0x1

    #@6f
    .line 1173
    :goto_1
    add-int/lit8 v21, v21, 0x1

    #@71
    goto :goto_0

    #@72
    .line 1178
    :cond_1
    const-string/jumbo v6, "--history"

    #@75
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@78
    move-result v6

    #@79
    if-eqz v6, :cond_2

    #@7b
    .line 1179
    or-int/lit8 v9, v9, 0x8

    #@7d
    goto :goto_1

    #@7e
    .line 1180
    :cond_2
    const-string/jumbo v6, "--history-start"

    #@81
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@84
    move-result v6

    #@85
    if-eqz v6, :cond_4

    #@87
    .line 1181
    or-int/lit8 v9, v9, 0x8

    #@89
    .line 1182
    add-int/lit8 v21, v21, 0x1

    #@8b
    .line 1183
    move-object/from16 v0, p3

    #@8d
    array-length v6, v0

    #@8e
    move/from16 v0, v21

    #@90
    if-lt v0, v6, :cond_3

    #@92
    .line 1184
    const-string/jumbo v6, "Missing time argument for --history-since"

    #@95
    move-object/from16 v0, p2

    #@97
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9a
    .line 1185
    move-object/from16 v0, p0

    #@9c
    move-object/from16 v1, p2

    #@9e
    invoke-direct {v0, v1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    #@a1
    .line 1186
    return-void

    #@a2
    .line 1188
    :cond_3
    aget-object v6, p3, v21

    #@a4
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@a7
    move-result-wide v10

    #@a8
    .line 1189
    const/16 v29, 0x1

    #@aa
    goto :goto_1

    #@ab
    .line 1190
    :cond_4
    const-string/jumbo v6, "-c"

    #@ae
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b1
    move-result v6

    #@b2
    if-eqz v6, :cond_5

    #@b4
    .line 1191
    const/16 v28, 0x1

    #@b6
    .line 1192
    or-int/lit8 v9, v9, 0x10

    #@b8
    goto :goto_1

    #@b9
    .line 1193
    :cond_5
    const-string/jumbo v6, "--charged"

    #@bc
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bf
    move-result v6

    #@c0
    if-eqz v6, :cond_6

    #@c2
    .line 1194
    or-int/lit8 v9, v9, 0x2

    #@c4
    goto :goto_1

    #@c5
    .line 1195
    :cond_6
    const-string/jumbo v6, "--daily"

    #@c8
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@cb
    move-result v6

    #@cc
    if-eqz v6, :cond_7

    #@ce
    .line 1196
    or-int/lit8 v9, v9, 0x4

    #@d0
    goto :goto_1

    #@d1
    .line 1197
    :cond_7
    const-string/jumbo v6, "--reset"

    #@d4
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d7
    move-result v6

    #@d8
    if-eqz v6, :cond_8

    #@da
    .line 1198
    move-object/from16 v0, p0

    #@dc
    iget-object v7, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@de
    monitor-enter v7

    #@df
    .line 1199
    :try_start_0
    move-object/from16 v0, p0

    #@e1
    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@e3
    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl;->resetAllStatsCmdLocked()V

    #@e6
    .line 1200
    const-string/jumbo v6, "Battery stats reset."

    #@e9
    move-object/from16 v0, p2

    #@eb
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@ee
    .line 1201
    const/16 v26, 0x1

    #@f0
    monitor-exit v7

    #@f1
    .line 1203
    const-string/jumbo v6, "dump"

    #@f4
    const/16 v7, 0xf

    #@f6
    move-object/from16 v0, p0

    #@f8
    invoke-virtual {v0, v6, v7}, Lcom/android/server/am/BatteryStatsService;->updateExternalStatsSync(Ljava/lang/String;I)V

    #@fb
    goto/16 :goto_1

    #@fd
    .line 1198
    :catchall_0
    move-exception v6

    #@fe
    monitor-exit v7

    #@ff
    throw v6

    #@100
    .line 1204
    :cond_8
    const-string/jumbo v6, "--write"

    #@103
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@106
    move-result v6

    #@107
    if-eqz v6, :cond_9

    #@109
    .line 1205
    const-string/jumbo v6, "dump"

    #@10c
    const/16 v7, 0xf

    #@10e
    move-object/from16 v0, p0

    #@110
    invoke-virtual {v0, v6, v7}, Lcom/android/server/am/BatteryStatsService;->updateExternalStatsSync(Ljava/lang/String;I)V

    #@113
    .line 1206
    move-object/from16 v0, p0

    #@115
    iget-object v7, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@117
    monitor-enter v7

    #@118
    .line 1207
    :try_start_1
    move-object/from16 v0, p0

    #@11a
    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@11c
    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl;->writeSyncLocked()V

    #@11f
    .line 1208
    const-string/jumbo v6, "Battery stats written."

    #@122
    move-object/from16 v0, p2

    #@124
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@127
    .line 1209
    const/16 v26, 0x1

    #@129
    monitor-exit v7

    #@12a
    goto/16 :goto_1

    #@12c
    .line 1206
    :catchall_1
    move-exception v6

    #@12d
    monitor-exit v7

    #@12e
    throw v6

    #@12f
    .line 1211
    :cond_9
    const-string/jumbo v6, "--new-daily"

    #@132
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@135
    move-result v6

    #@136
    if-eqz v6, :cond_a

    #@138
    .line 1212
    move-object/from16 v0, p0

    #@13a
    iget-object v7, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@13c
    monitor-enter v7

    #@13d
    .line 1213
    :try_start_2
    move-object/from16 v0, p0

    #@13f
    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@141
    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl;->recordDailyStatsLocked()V

    #@144
    .line 1214
    const-string/jumbo v6, "New daily stats written."

    #@147
    move-object/from16 v0, p2

    #@149
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@14c
    .line 1215
    const/16 v26, 0x1

    #@14e
    monitor-exit v7

    #@14f
    goto/16 :goto_1

    #@151
    .line 1212
    :catchall_2
    move-exception v6

    #@152
    monitor-exit v7

    #@153
    throw v6

    #@154
    .line 1217
    :cond_a
    const-string/jumbo v6, "--read-daily"

    #@157
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15a
    move-result v6

    #@15b
    if-eqz v6, :cond_b

    #@15d
    .line 1218
    move-object/from16 v0, p0

    #@15f
    iget-object v7, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@161
    monitor-enter v7

    #@162
    .line 1219
    :try_start_3
    move-object/from16 v0, p0

    #@164
    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@166
    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl;->readDailyStatsLocked()V

    #@169
    .line 1220
    const-string/jumbo v6, "Last daily stats read."

    #@16c
    move-object/from16 v0, p2

    #@16e
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    #@171
    .line 1221
    const/16 v26, 0x1

    #@173
    monitor-exit v7

    #@174
    goto/16 :goto_1

    #@176
    .line 1218
    :catchall_3
    move-exception v6

    #@177
    monitor-exit v7

    #@178
    throw v6

    #@179
    .line 1223
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
    .line 1224
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
    .line 1225
    if-gez v21, :cond_d

    #@19a
    .line 1226
    return-void

    #@19b
    .line 1228
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
    .line 1229
    return-void

    #@1b7
    .line 1230
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
    .line 1231
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
    .line 1232
    if-gez v21, :cond_10

    #@1d8
    .line 1233
    return-void

    #@1d9
    .line 1235
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
    .line 1236
    return-void

    #@1f5
    .line 1237
    :cond_11
    const-string/jumbo v6, "-h"

    #@1f8
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1fb
    move-result v6

    #@1fc
    if-eqz v6, :cond_12

    #@1fe
    .line 1238
    move-object/from16 v0, p0

    #@200
    move-object/from16 v1, p2

    #@202
    invoke-direct {v0, v1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    #@205
    .line 1239
    return-void

    #@206
    .line 1240
    :cond_12
    const-string/jumbo v6, "-a"

    #@209
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20c
    move-result v6

    #@20d
    if-eqz v6, :cond_13

    #@20f
    .line 1241
    or-int/lit8 v9, v9, 0x20

    #@211
    goto/16 :goto_1

    #@213
    .line 1242
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
    .line 1243
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
    .line 1244
    move-object/from16 v0, p0

    #@23d
    move-object/from16 v1, p2

    #@23f
    invoke-direct {v0, v1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    #@242
    .line 1245
    return-void

    #@243
    .line 1249
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
    .line 1250
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@24e
    move-result v7

    #@24f
    .line 1249
    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    #@252
    move-result v17

    #@253
    goto/16 :goto_1

    #@255
    .line 1251
    :catch_0
    move-exception v12

    #@256
    .line 1252
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
    .line 1253
    move-object/from16 v0, p0

    #@271
    move-object/from16 v1, p2

    #@273
    invoke-direct {v0, v1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    #@276
    .line 1254
    return-void

    #@277
    .line 1259
    .end local v4    # "arg":Ljava/lang/String;
    .end local v12    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v21    # "i":I
    :cond_15
    if-eqz v26, :cond_16

    #@279
    .line 1260
    return-void

    #@27a
    .line 1263
    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@27d
    move-result-wide v22

    #@27e
    .line 1265
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
    .line 1266
    or-int/lit8 v9, v9, 0x40

    #@28a
    .line 1269
    :cond_17
    const-string/jumbo v6, "dump"

    #@28d
    const/16 v7, 0xf

    #@28f
    move-object/from16 v0, p0

    #@291
    invoke-virtual {v0, v6, v7}, Lcom/android/server/am/BatteryStatsService;->updateExternalStatsSync(Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    #@294
    .line 1271
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@297
    .line 1274
    if-ltz v17, :cond_18

    #@299
    .line 1277
    and-int/lit8 v6, v9, 0xa

    #@29b
    if-nez v6, :cond_18

    #@29d
    .line 1278
    or-int/lit8 v9, v9, 0x2

    #@29f
    .line 1280
    and-int/lit8 v9, v9, -0x11

    #@2a1
    .line 1284
    :cond_18
    if-eqz v28, :cond_1c

    #@2a3
    .line 1285
    move-object/from16 v0, p0

    #@2a5
    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    #@2a7
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@2aa
    move-result-object v6

    #@2ab
    .line 1286
    const v7, 0x22000

    #@2ae
    .line 1285
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    #@2b1
    move-result-object v8

    #@2b2
    .line 1287
    .local v8, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v25, :cond_1a

    #@2b4
    .line 1290
    move-object/from16 v0, p0

    #@2b6
    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@2b8
    iget-object v13, v6, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    #@2ba
    monitor-enter v13

    #@2bb
    .line 1291
    :try_start_6
    move-object/from16 v0, p0

    #@2bd
    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@2bf
    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    #@2c1
    invoke-virtual {v6}, Lcom/android/internal/os/AtomicFile;->exists()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    #@2c4
    move-result v6

    #@2c5
    if-eqz v6, :cond_19

    #@2c7
    .line 1293
    :try_start_7
    move-object/from16 v0, p0

    #@2c9
    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@2cb
    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    #@2cd
    invoke-virtual {v6}, Lcom/android/internal/os/AtomicFile;->readFully()[B

    #@2d0
    move-result-object v27

    #@2d1
    .line 1294
    .local v27, "raw":[B
    if-eqz v27, :cond_19

    #@2d3
    .line 1295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@2d6
    move-result-object v24

    #@2d7
    .line 1296
    .local v24, "in":Landroid/os/Parcel;
    move-object/from16 v0, v27

    #@2d9
    array-length v6, v0

    #@2da
    const/4 v7, 0x0

    #@2db
    move-object/from16 v0, v24

    #@2dd
    move-object/from16 v1, v27

    #@2df
    invoke-virtual {v0, v1, v7, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    #@2e2
    .line 1297
    const/4 v6, 0x0

    #@2e3
    move-object/from16 v0, v24

    #@2e5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    #@2e8
    .line 1298
    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl;

    #@2ea
    .line 1299
    move-object/from16 v0, p0

    #@2ec
    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@2ee
    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    #@2f0
    const/4 v7, 0x0

    #@2f1
    const/4 v14, 0x0

    #@2f2
    .line 1298
    invoke-direct {v5, v7, v6, v14}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Ljava/io/File;Landroid/os/Handler;Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;)V

    #@2f5
    .line 1300
    .local v5, "checkinStats":Lcom/android/internal/os/BatteryStatsImpl;
    move-object/from16 v0, v24

    #@2f7
    invoke-virtual {v5, v0}, Lcom/android/internal/os/BatteryStatsImpl;->readSummaryFromParcel(Landroid/os/Parcel;)V

    #@2fa
    .line 1301
    invoke-virtual/range {v24 .. v24}, Landroid/os/Parcel;->recycle()V

    #@2fd
    .line 1302
    move-object/from16 v0, p0

    #@2ff
    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    #@301
    move-object/from16 v7, p2

    #@303
    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJ)V

    #@306
    .line 1304
    move-object/from16 v0, p0

    #@308
    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@30a
    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    #@30c
    invoke-virtual {v6}, Lcom/android/internal/os/AtomicFile;->delete()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/os/ParcelFormatException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    #@30f
    monitor-exit v13

    #@310
    .line 1305
    return-void

    #@311
    .line 1270
    .end local v5    # "checkinStats":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v8    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v24    # "in":Landroid/os/Parcel;
    .end local v27    # "raw":[B
    :catchall_4
    move-exception v6

    #@312
    .line 1271
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@315
    .line 1270
    throw v6

    #@316
    .line 1307
    .restart local v8    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :catch_1
    move-exception v20

    #@317
    .line 1308
    .local v20, "e":Ljava/lang/Exception;
    :try_start_8
    const-string/jumbo v6, "BatteryStatsService"

    #@31a
    new-instance v7, Ljava/lang/StringBuilder;

    #@31c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@31f
    const-string/jumbo v14, "Failure reading checkin file "

    #@322
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@325
    move-result-object v7

    #@326
    .line 1309
    move-object/from16 v0, p0

    #@328
    iget-object v14, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@32a
    iget-object v14, v14, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    #@32c
    invoke-virtual {v14}, Lcom/android/internal/os/AtomicFile;->getBaseFile()Ljava/io/File;

    #@32f
    move-result-object v14

    #@330
    .line 1308
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@333
    move-result-object v7

    #@334
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@337
    move-result-object v7

    #@338
    move-object/from16 v0, v20

    #@33a
    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    #@33d
    .end local v20    # "e":Ljava/lang/Exception;
    :cond_19
    monitor-exit v13

    #@33e
    .line 1314
    :cond_1a
    move-object/from16 v0, p0

    #@340
    iget-object v7, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@342
    monitor-enter v7

    #@343
    .line 1315
    :try_start_9
    move-object/from16 v0, p0

    #@345
    iget-object v13, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@347
    move-object/from16 v0, p0

    #@349
    iget-object v14, v0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    #@34b
    move-object/from16 v15, p2

    #@34d
    move-object/from16 v16, v8

    #@34f
    move/from16 v17, v9

    #@351
    move-wide/from16 v18, v10

    #@353
    invoke-virtual/range {v13 .. v19}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJ)V

    #@356
    .line 1316
    .end local v17    # "reqUid":I
    if-eqz v29, :cond_1b

    #@358
    .line 1317
    move-object/from16 v0, p0

    #@35a
    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@35c
    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    #@35f
    .end local v8    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_1b
    :goto_2
    monitor-exit v7

    #@360
    .line 1156
    return-void

    #@361
    .line 1290
    .restart local v8    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v17    # "reqUid":I
    :catchall_5
    move-exception v6

    #@362
    monitor-exit v13

    #@363
    throw v6

    #@364
    .line 1314
    .end local v17    # "reqUid":I
    :catchall_6
    move-exception v6

    #@365
    monitor-exit v7

    #@366
    throw v6

    #@367
    .line 1321
    .end local v8    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v17    # "reqUid":I
    :cond_1c
    move-object/from16 v0, p0

    #@369
    iget-object v7, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@36b
    monitor-enter v7

    #@36c
    .line 1322
    :try_start_a
    move-object/from16 v0, p0

    #@36e
    iget-object v13, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@370
    move-object/from16 v0, p0

    #@372
    iget-object v14, v0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    #@374
    move-object/from16 v15, p2

    #@376
    move/from16 v16, v9

    #@378
    move-wide/from16 v18, v10

    #@37a
    invoke-virtual/range {v13 .. v19}, Lcom/android/internal/os/BatteryStatsImpl;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIJ)V

    #@37d
    .line 1323
    if-eqz v29, :cond_1b

    #@37f
    .line 1324
    move-object/from16 v0, p0

    #@381
    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@383
    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    #@386
    goto :goto_2

    #@387
    .line 1321
    :catchall_7
    move-exception v6

    #@388
    monitor-exit v7

    #@389
    throw v6
.end method

.method public enforceCallingPermission()V
    .locals 5

    #@0
    .prologue
    .line 1037
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
    .line 1038
    return-void

    #@b
    .line 1040
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    #@d
    const-string/jumbo v1, "android.permission.UPDATE_DEVICE_STATS"

    #@10
    .line 1041
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
    .line 1040
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    #@1c
    .line 1036
    return-void
.end method

.method public getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;
    .locals 1

    #@0
    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@2
    return-object v0
.end method

.method public getAwakeTimeBattery()J
    .locals 3

    #@0
    .prologue
    .line 1025
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    #@2
    .line 1026
    const-string/jumbo v1, "android.permission.BATTERY_STATS"

    #@5
    const/4 v2, 0x0

    #@6
    .line 1025
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 1027
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
    .line 1031
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    #@2
    .line 1032
    const-string/jumbo v1, "android.permission.BATTERY_STATS"

    #@5
    const/4 v2, 0x0

    #@6
    .line 1031
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 1033
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@b
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getAwakeTimePlugged()J

    #@e
    move-result-wide v0

    #@f
    return-wide v0
.end method

.method getHealthStatsForUidLocked(I)Landroid/os/health/HealthStatsParceler;
    .locals 4
    .param p1, "requestUid"    # I

    #@0
    .prologue
    .line 1622
    new-instance v2, Lcom/android/server/am/HealthStatsBatteryStatsWriter;

    #@2
    invoke-direct {v2}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;-><init>()V

    #@5
    .line 1623
    .local v2, "writer":Lcom/android/server/am/HealthStatsBatteryStatsWriter;
    new-instance v1, Landroid/os/health/HealthStatsWriter;

    #@7
    sget-object v3, Landroid/os/health/UidHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    #@9
    invoke-direct {v1, v3}, Landroid/os/health/HealthStatsWriter;-><init>(Landroid/os/health/HealthKeys$Constants;)V

    #@c
    .line 1624
    .local v1, "uidWriter":Landroid/os/health/HealthStatsWriter;
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@e
    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/os/BatteryStats$Uid;

    #@18
    .line 1625
    .local v0, "uid":Landroid/os/BatteryStats$Uid;
    if-eqz v0, :cond_0

    #@1a
    .line 1626
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@1c
    invoke-virtual {v2, v1, v3, v0}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->writeUid(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats;Landroid/os/BatteryStats$Uid;)V

    #@1f
    .line 1628
    :cond_0
    new-instance v3, Landroid/os/health/HealthStatsParceler;

    #@21
    invoke-direct {v3, v1}, Landroid/os/health/HealthStatsParceler;-><init>(Landroid/os/health/HealthStatsWriter;)V

    #@24
    return-object v3
.end method

.method public getPlatformLowPowerStats()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 192
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    #@5
    .line 193
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    #@7
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    #@a
    .line 194
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mDecoderStat:Ljava/nio/charset/CharsetDecoder;

    #@c
    invoke-virtual {v1}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    #@f
    .line 195
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    #@11
    invoke-direct {p0, v1}, Lcom/android/server/am/BatteryStatsService;->getPlatformLowPowerStats(Ljava/nio/ByteBuffer;)I

    #@14
    move-result v0

    #@15
    .line 196
    .local v0, "bytesWritten":I
    if-gez v0, :cond_0

    #@17
    .line 197
    const/4 v1, 0x0

    #@18
    return-object v1

    #@19
    .line 198
    :cond_0
    if-nez v0, :cond_1

    #@1b
    .line 199
    const-string/jumbo v1, "Empty"

    #@1e
    return-object v1

    #@1f
    .line 201
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    #@21
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@24
    .line 202
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mDecoderStat:Ljava/nio/charset/CharsetDecoder;

    #@26
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    #@28
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    #@2a
    const/4 v4, 0x1

    #@2b
    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    #@2e
    .line 203
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    #@30
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    #@33
    .line 204
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    #@35
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    return-object v1
.end method

.method public getStatistics()[B
    .locals 5

    #@0
    .prologue
    .line 340
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    #@2
    .line 341
    const-string/jumbo v3, "android.permission.BATTERY_STATS"

    #@5
    const/4 v4, 0x0

    #@6
    .line 340
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 344
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@c
    move-result-object v1

    #@d
    .line 345
    .local v1, "out":Landroid/os/Parcel;
    const-string/jumbo v2, "get-stats"

    #@10
    const/16 v3, 0xf

    #@12
    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/BatteryStatsService;->updateExternalStatsSync(Ljava/lang/String;I)V

    #@15
    .line 346
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@17
    monitor-enter v3

    #@18
    .line 347
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
    .line 349
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    #@22
    move-result-object v0

    #@23
    .line 350
    .local v0, "data":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 351
    return-object v0

    #@27
    .line 346
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
    .line 355
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    #@3
    .line 356
    const-string/jumbo v4, "android.permission.BATTERY_STATS"

    #@6
    .line 355
    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 359
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@c
    move-result-object v2

    #@d
    .line 360
    .local v2, "out":Landroid/os/Parcel;
    const-string/jumbo v3, "get-stats"

    #@10
    const/16 v4, 0xf

    #@12
    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/BatteryStatsService;->updateExternalStatsSync(Ljava/lang/String;I)V

    #@15
    .line 361
    iget-object v4, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@17
    monitor-enter v4

    #@18
    .line 362
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
    .line 364
    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    #@22
    move-result-object v0

    #@23
    .line 365
    .local v0, "data":[B
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 367
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
    .line 361
    .end local v0    # "data":[B
    :catchall_0
    move-exception v3

    #@2f
    monitor-exit v4

    #@30
    throw v3

    #@31
    .line 368
    .restart local v0    # "data":[B
    :catch_0
    move-exception v1

    #@32
    .line 369
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v3, "BatteryStatsService"

    #@35
    const-string/jumbo v4, "Unable to create shared memory"

    #@38
    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3b
    .line 370
    return-object v6
.end method

.method public initPowerManagement()V
    .locals 3

    #@0
    .prologue
    .line 233
    const-class v1, Landroid/os/PowerManagerInternal;

    #@2
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/os/PowerManagerInternal;

    #@8
    .line 234
    .local v0, "powerMgr":Landroid/os/PowerManagerInternal;
    invoke-virtual {v0, p0}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    #@b
    .line 235
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@d
    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->getLowPowerModeEnabled()Z

    #@10
    move-result v2

    #@11
    invoke-virtual {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->notePowerSaveMode(Z)V

    #@14
    .line 236
    new-instance v1, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;

    #@16
    invoke-direct {v1, p0}, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    #@19
    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->start()V

    #@1c
    .line 232
    return-void
.end method

.method public isCharging()Z
    .locals 2

    #@0
    .prologue
    .line 375
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@2
    monitor-enter v1

    #@3
    .line 376
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
    .line 375
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
    .line 989
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
    .line 437
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 438
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 439
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteAlarmFinishLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 436
    return-void

    #@d
    .line 438
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
    .line 430
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 431
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 432
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteAlarmStartLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 429
    return-void

    #@d
    .line 431
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteBleScanStarted(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 925
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 926
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 927
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteBluetoothScanStartedFromSourceLocked(Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 924
    return-void

    #@d
    .line 926
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteBleScanStopped(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 933
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 934
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 935
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteBluetoothScanStoppedFromSourceLocked(Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 932
    return-void

    #@d
    .line 934
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteBluetoothControllerActivity(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/bluetooth/BluetoothActivityEnergyInfo;

    #@0
    .prologue
    .line 963
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 964
    if-eqz p1, :cond_0

    #@5
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->isValid()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 969
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@d
    monitor-enter v1

    #@e
    .line 970
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@10
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->updateBluetoothStateLocked(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v1

    #@14
    .line 962
    return-void

    #@15
    .line 965
    :cond_0
    const-string/jumbo v0, "BatteryStatsService"

    #@18
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v2, "invalid bluetooth data given: "

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 966
    return-void

    #@30
    .line 969
    :catchall_0
    move-exception v0

    #@31
    monitor-exit v1

    #@32
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
    .line 472
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 473
    iget-object v12, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v12

    #@6
    .line 474
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
    .line 471
    return-void

    #@21
    .line 473
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
    .line 579
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 580
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 581
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteConnectivityChangedLocked(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 578
    return-void

    #@d
    .line 580
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteDeviceIdleMode(ILjava/lang/String;I)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "activeReason"    # Ljava/lang/String;
    .param p3, "activeUid"    # I

    #@0
    .prologue
    .line 903
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 904
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 905
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteDeviceIdleModeLocked(ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 902
    return-void

    #@d
    .line 904
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
    .line 395
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 396
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 397
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteEventLocked(ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 394
    return-void

    #@d
    .line 396
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
    .line 692
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 693
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 694
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFlashlightOffLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 691
    return-void

    #@d
    .line 693
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
    .line 685
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 686
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 687
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFlashlightOnLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 684
    return-void

    #@d
    .line 686
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
    .line 787
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 788
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 789
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockAcquiredLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 786
    return-void

    #@d
    .line 788
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
    .line 829
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 830
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 831
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockAcquiredFromSourceLocked(Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 828
    return-void

    #@d
    .line 830
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
    .line 794
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 795
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 796
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockReleasedLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 793
    return-void

    #@d
    .line 795
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
    .line 836
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 837
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 838
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockReleasedFromSourceLocked(Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 835
    return-void

    #@d
    .line 837
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
    .line 572
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 573
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 574
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteInteractiveLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 571
    return-void

    #@d
    .line 573
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
    .line 423
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 424
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 425
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteJobFinishLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 422
    return-void

    #@d
    .line 424
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
    .line 416
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 417
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 418
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteJobStartLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 415
    return-void

    #@d
    .line 417
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteLongPartialWakelockFinish(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "historyName"    # Ljava/lang/String;
    .param p3, "uid"    # I

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
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteLongPartialWakelockFinish(Ljava/lang/String;Ljava/lang/String;I)V
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

.method public noteLongPartialWakelockStart(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "historyName"    # Ljava/lang/String;
    .param p3, "uid"    # I

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
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteLongPartialWakelockStart(Ljava/lang/String;Ljava/lang/String;I)V
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

.method public noteMobileRadioPowerState(IJI)V
    .locals 2
    .param p1, "powerState"    # I
    .param p2, "timestampNs"    # J
    .param p4, "uid"    # I

    #@0
    .prologue
    .line 586
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 587
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 588
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteMobileRadioPowerState(IJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 585
    return-void

    #@d
    .line 587
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteModemControllerActivity(Landroid/telephony/ModemActivityInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/telephony/ModemActivityInfo;

    #@0
    .prologue
    .line 976
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 978
    if-eqz p1, :cond_0

    #@5
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->isValid()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 983
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@d
    monitor-enter v1

    #@e
    .line 984
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@13
    move-result-wide v2

    #@14
    invoke-virtual {v0, v2, v3, p1}, Lcom/android/internal/os/BatteryStatsImpl;->updateMobileRadioStateLocked(JLandroid/telephony/ModemActivityInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v1

    #@18
    .line 975
    return-void

    #@19
    .line 979
    :cond_0
    const-string/jumbo v0, "BatteryStatsService"

    #@1c
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v2, "invalid modem data given: "

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 980
    return-void

    #@34
    .line 983
    :catchall_0
    move-exception v0

    #@35
    monitor-exit v1

    #@36
    throw v0
.end method

.method public noteNetworkInterfaceType(Ljava/lang/String;I)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "networkType"    # I

    #@0
    .prologue
    .line 887
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 888
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 889
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteNetworkInterfaceTypeLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 886
    return-void

    #@d
    .line 888
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
    .line 895
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 896
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 897
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteNetworkStatsEnabledLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 894
    return-void

    #@d
    .line 896
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
    .line 910
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 911
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 912
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->notePackageInstalledLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 909
    return-void

    #@d
    .line 911
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
    .line 917
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 918
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 919
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->notePackageUninstalledLocked(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 916
    return-void

    #@d
    .line 918
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
    .line 614
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 615
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 616
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneDataConnectionStateLocked(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 613
    return-void

    #@d
    .line 615
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
    .line 600
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 601
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 602
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneOffLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 599
    return-void

    #@d
    .line 601
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
    .line 593
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 594
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 595
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneOnLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 592
    return-void

    #@d
    .line 594
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
    .line 607
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 608
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 609
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneSignalStrengthLocked(Landroid/telephony/SignalStrength;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 606
    return-void

    #@d
    .line 608
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
    .line 621
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 622
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    #@a
    move-result v0

    #@b
    .line 623
    .local v0, "simState":I
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@d
    monitor-enter v2

    #@e
    .line 624
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@10
    invoke-virtual {v1, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneStateLocked(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v2

    #@14
    .line 620
    return-void

    #@15
    .line 623
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
    .line 320
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@2
    monitor-enter v1

    #@3
    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessAnrLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 319
    return-void

    #@a
    .line 320
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
    .line 314
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@2
    monitor-enter v1

    #@3
    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessCrashLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 313
    return-void

    #@a
    .line 314
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
    .line 326
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@2
    monitor-enter v1

    #@3
    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessFinishLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 325
    return-void

    #@a
    .line 326
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
    .line 308
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@2
    monitor-enter v1

    #@3
    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessStartLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 307
    return-void

    #@a
    .line 308
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
    .line 671
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 672
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 673
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetAudioLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 670
    return-void

    #@d
    .line 672
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteResetBleScan()V
    .locals 2

    #@0
    .prologue
    .line 941
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 942
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 943
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetBluetoothScanLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 940
    return-void

    #@d
    .line 942
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
    .line 713
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 714
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 715
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetCameraLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 712
    return-void

    #@d
    .line 714
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
    .line 720
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 721
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 722
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetFlashlightLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 719
    return-void

    #@d
    .line 721
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
    .line 678
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 679
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 680
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetVideoLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 677
    return-void

    #@d
    .line 679
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
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteScreenBrightnessLocked(I)V
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

.method public noteScreenState(I)V
    .locals 2
    .param p1, "state"    # I

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
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteScreenStateLocked(I)V
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

.method public noteStartAudio(I)V
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
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteAudioOnLocked(I)V
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

.method public noteStartCamera(I)V
    .locals 2
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 699
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 700
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 701
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteCameraOnLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 698
    return-void

    #@d
    .line 700
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
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartGpsLocked(I)V
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

.method public noteStartSensor(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "sensor"    # I

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
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartSensorLocked(II)V
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

.method public noteStartVideo(I)V
    .locals 2
    .param p1, "uid"    # I

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
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteVideoOnLocked(I)V
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
    .line 445
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 446
    iget-object v12, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v12

    #@6
    .line 447
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    .line 448
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
    .line 447
    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartWakeLocked(IILjava/lang/String;Ljava/lang/String;IZJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    monitor-exit v12

    #@1e
    .line 444
    return-void

    #@1f
    .line 446
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
    .line 462
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 463
    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v7

    #@6
    .line 464
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
    .line 461
    return-void

    #@13
    .line 463
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
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteAudioOffLocked(I)V
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

.method public noteStopCamera(I)V
    .locals 2
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 706
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 707
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 708
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteCameraOffLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 705
    return-void

    #@d
    .line 707
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
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopGpsLocked(I)V
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

.method public noteStopSensor(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "sensor"    # I

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
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopSensorLocked(II)V
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

.method public noteStopVideo(I)V
    .locals 2
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 664
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 665
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 666
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteVideoOffLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 663
    return-void

    #@d
    .line 665
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
    .line 453
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 454
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v10

    #@6
    .line 455
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    .line 456
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
    .line 455
    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopWakeLocked(IILjava/lang/String;Ljava/lang/String;IJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit v10

    #@1a
    .line 452
    return-void

    #@1b
    .line 454
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
    .line 481
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 482
    iget-object v6, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v6

    #@6
    .line 483
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
    .line 480
    return-void

    #@12
    .line 482
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
    .line 409
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 410
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 411
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteSyncFinishLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 408
    return-void

    #@d
    .line 410
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
    .line 402
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 403
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteSyncStartLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 401
    return-void

    #@d
    .line 403
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method noteUidProcessState(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "state"    # I

    #@0
    .prologue
    .line 332
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@2
    monitor-enter v1

    #@3
    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteUidProcessStateLocked(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 331
    return-void

    #@a
    .line 332
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public noteUserActivity(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "event"    # I

    #@0
    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 559
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 560
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteUserActivityLocked(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 557
    return-void

    #@d
    .line 559
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
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteVibratorOffLocked(I)V
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

.method public noteVibratorOn(IJ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "durationMillis"    # J

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
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteVibratorOnLocked(IJ)V
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

.method public noteWakeUp(Ljava/lang/String;I)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "reasonUid"    # I

    #@0
    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 566
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 567
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWakeUpLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 564
    return-void

    #@d
    .line 566
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
    .line 857
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 858
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 859
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiBatchedScanStartedFromSourceLocked(Landroid/os/WorkSource;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 856
    return-void

    #@d
    .line 858
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
    .line 864
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 865
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 866
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiBatchedScanStoppedFromSourceLocked(Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 863
    return-void

    #@d
    .line 865
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public noteWifiControllerActivity(Landroid/net/wifi/WifiActivityEnergyInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/net/wifi/WifiActivityEnergyInfo;

    #@0
    .prologue
    .line 949
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 951
    if-eqz p1, :cond_0

    #@5
    invoke-virtual {p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->isValid()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 956
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@d
    monitor-enter v1

    #@e
    .line 957
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@10
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->updateWifiStateLocked(Landroid/net/wifi/WifiActivityEnergyInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v1

    #@14
    .line 948
    return-void

    #@15
    .line 952
    :cond_0
    const-string/jumbo v0, "BatteryStatsService"

    #@18
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v2, "invalid wifi data given: "

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 953
    return-void

    #@30
    .line 956
    :catchall_0
    move-exception v0

    #@31
    monitor-exit v1

    #@32
    throw v0
.end method

.method public noteWifiMulticastDisabled(I)V
    .locals 2
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 822
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 823
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 824
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastDisabledLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 821
    return-void

    #@d
    .line 823
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
    .line 879
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 880
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 881
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastDisabledFromSourceLocked(Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 878
    return-void

    #@d
    .line 880
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
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastEnabledLocked(I)V
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

.method public noteWifiMulticastEnabledFromSource(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 871
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 872
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 873
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastEnabledFromSourceLocked(Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 870
    return-void

    #@d
    .line 872
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
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiOffLocked()V
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

.method public noteWifiOn()V
    .locals 2

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
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiOnLocked()V
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

.method public noteWifiRadioPowerState(IJI)V
    .locals 6
    .param p1, "powerState"    # I
    .param p2, "tsNanos"    # J
    .param p4, "uid"    # I

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    .line 728
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@4
    .line 732
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@6
    monitor-enter v2

    #@7
    .line 733
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@9
    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 734
    const/4 v1, 0x3

    #@10
    if-eq p1, v1, :cond_0

    #@12
    .line 735
    if-ne p1, v3, :cond_2

    #@14
    :cond_0
    const-string/jumbo v0, "active"

    #@17
    .line 737
    .local v0, "type":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

    #@19
    new-instance v3, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v4, "wifi-data: "

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    .line 738
    const/4 v4, 0x2

    #@2e
    .line 737
    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->scheduleSync(Ljava/lang/String;I)V

    #@31
    .line 740
    .end local v0    # "type":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@33
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRadioPowerState(IJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    monitor-exit v2

    #@37
    .line 727
    return-void

    #@38
    .line 736
    :cond_2
    :try_start_1
    const-string/jumbo v0, "inactive"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_0

    #@3c
    .line 732
    .end local v0    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v1

    #@3d
    monitor-exit v2

    #@3e
    throw v1
.end method

.method public noteWifiRssiChanged(I)V
    .locals 2
    .param p1, "newRssi"    # I

    #@0
    .prologue
    .line 780
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 781
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 782
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRssiChangedLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 779
    return-void

    #@d
    .line 781
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
    .line 745
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 746
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 747
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRunningLocked(Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 744
    return-void

    #@d
    .line 746
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
    .line 752
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 753
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 754
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRunningChangedLocked(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 751
    return-void

    #@d
    .line 753
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
    .line 801
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 802
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 803
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStartedLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 800
    return-void

    #@d
    .line 802
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
    .line 843
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 844
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 845
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStartedFromSourceLocked(Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 842
    return-void

    #@d
    .line 844
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
    .line 808
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 809
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 810
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStoppedLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 807
    return-void

    #@d
    .line 809
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
    .line 850
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 851
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 852
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStoppedFromSourceLocked(Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 849
    return-void

    #@d
    .line 851
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
    .line 766
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 767
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 768
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiStateLocked(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 765
    return-void

    #@d
    .line 767
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
    .line 759
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 760
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 761
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiStoppedLocked(Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 758
    return-void

    #@d
    .line 760
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
    .line 773
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 774
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    monitor-enter v1

    #@6
    .line 775
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiSupplicantStateChangedLocked(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 772
    return-void

    #@d
    .line 774
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
    .line 262
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@2
    monitor-enter v1

    #@3
    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->notePowerSaveMode(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 261
    return-void

    #@a
    .line 262
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
    .line 220
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    #@2
    .line 221
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@4
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@9
    move-result-object v1

    #@a
    .line 222
    const v2, 0x10e000e

    #@d
    .line 221
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@10
    move-result v1

    #@11
    int-to-long v2, v1

    #@12
    .line 223
    const-wide/16 v4, 0x3e8

    #@14
    .line 221
    mul-long/2addr v2, v4

    #@15
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->setRadioScanningTimeout(J)V

    #@18
    .line 224
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@1a
    new-instance v1, Lcom/android/internal/os/PowerProfile;

    #@1c
    invoke-direct {v1, p1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    #@1f
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->setPowerProfile(Lcom/android/internal/os/PowerProfile;)V

    #@22
    .line 225
    const-string/jumbo v0, "batterystats"

    #@25
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->asBinder()Landroid/os/IBinder;

    #@28
    move-result-object v1

    #@29
    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@2c
    .line 219
    return-void
.end method

.method removeIsolatedUid(II)V
    .locals 2
    .param p1, "isolatedUid"    # I
    .param p2, "appUid"    # I

    #@0
    .prologue
    .line 302
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@2
    monitor-enter v1

    #@3
    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->scheduleRemoveIsolatedUidLocked(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 301
    return-void

    #@a
    .line 302
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
    .line 290
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@2
    monitor-enter v1

    #@3
    .line 291
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->removeUidStatsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 289
    return-void

    #@a
    .line 290
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
    .line 281
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

    #@2
    const/4 v1, 0x2

    #@3
    invoke-virtual {v0, v1}, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->sendEmptyMessage(I)Z

    #@6
    .line 280
    return-void
.end method

.method public setBatteryState(IIIIIII)V
    .locals 10
    .param p1, "status"    # I
    .param p2, "health"    # I
    .param p3, "plugType"    # I
    .param p4, "level"    # I
    .param p5, "temp"    # I
    .param p6, "volt"    # I
    .param p7, "chargeUAh"    # I

    #@0
    .prologue
    .line 995
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    #@3
    .line 999
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

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
    move/from16 v7, p6

    #@f
    move/from16 v8, p7

    #@11
    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/BatteryStatsService$1;-><init>(Lcom/android/server/am/BatteryStatsService;IIIIIII)V

    #@14
    invoke-virtual {v9, v0}, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->post(Ljava/lang/Runnable;)Z

    #@17
    .line 994
    return-void
.end method

.method public shutdown()V
    .locals 2

    #@0
    .prologue
    .line 240
    const-string/jumbo v0, "BatteryStats"

    #@3
    const-string/jumbo v1, "Writing battery stats before shutdown..."

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 242
    const-string/jumbo v0, "shutdown"

    #@c
    const/16 v1, 0xf

    #@e
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BatteryStatsService;->updateExternalStatsSync(Ljava/lang/String;I)V

    #@11
    .line 243
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@13
    monitor-enter v1

    #@14
    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@16
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->shutdownLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit v1

    #@1a
    .line 248
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

    #@1c
    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->getLooper()Landroid/os/Looper;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    #@23
    .line 239
    return-void

    #@24
    .line 243
    :catchall_0
    move-exception v0

    #@25
    monitor-exit v1

    #@26
    throw v0
.end method

.method public takeUidSnapshot(I)Landroid/os/health/HealthStatsParceler;
    .locals 6
    .param p1, "requestUid"    # I

    #@0
    .prologue
    .line 1553
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v1

    #@4
    if-eq p1, v1, :cond_0

    #@6
    .line 1554
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    #@8
    .line 1555
    const-string/jumbo v4, "android.permission.BATTERY_STATS"

    #@b
    const/4 v5, 0x0

    #@c
    .line 1554
    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 1557
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@12
    move-result-wide v2

    #@13
    .line 1559
    .local v2, "ident":J
    :try_start_0
    const-string/jumbo v1, "get-health-stats-for-uid"

    #@16
    .line 1560
    const/16 v4, 0xf

    #@18
    .line 1559
    invoke-virtual {p0, v1, v4}, Lcom/android/server/am/BatteryStatsService;->updateExternalStatsSync(Ljava/lang/String;I)V

    #@1b
    .line 1561
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@1d
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1e
    .line 1562
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/BatteryStatsService;->getHealthStatsForUidLocked(I)Landroid/os/health/HealthStatsParceler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    move-result-object v4

    #@22
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@23
    .line 1568
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@26
    .line 1562
    return-object v4

    #@27
    .line 1561
    :catchall_0
    move-exception v4

    #@28
    :try_start_3
    monitor-exit v1

    #@29
    throw v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@2a
    .line 1564
    :catch_0
    move-exception v0

    #@2b
    .line 1565
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v1, "BatteryStatsService"

    #@2e
    new-instance v4, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v5, "Crashed while writing for takeUidSnapshot("

    #@36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    const-string/jumbo v5, ")"

    #@41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v4

    #@45
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v4

    #@49
    invoke-static {v1, v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4c
    .line 1566
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@4d
    .line 1567
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    #@4e
    .line 1568
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@51
    .line 1567
    throw v1
.end method

.method public takeUidSnapshots([I)[Landroid/os/health/HealthStatsParceler;
    .locals 9
    .param p1, "requestUids"    # [I

    #@0
    .prologue
    .line 1577
    invoke-static {p1}, Lcom/android/server/am/BatteryStatsService;->onlyCaller([I)Z

    #@3
    move-result v6

    #@4
    if-nez v6, :cond_0

    #@6
    .line 1578
    iget-object v6, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    #@8
    .line 1579
    const-string/jumbo v7, "android.permission.BATTERY_STATS"

    #@b
    const/4 v8, 0x0

    #@c
    .line 1578
    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 1581
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@12
    move-result-wide v4

    #@13
    .line 1582
    .local v4, "ident":J
    const/4 v2, -0x1

    #@14
    .line 1584
    .local v2, "i":I
    :try_start_0
    const-string/jumbo v6, "get-health-stats-for-uids"

    #@17
    .line 1585
    const/16 v7, 0xf

    #@19
    .line 1584
    invoke-virtual {p0, v6, v7}, Lcom/android/server/am/BatteryStatsService;->updateExternalStatsSync(Ljava/lang/String;I)V

    #@1c
    .line 1586
    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@1e
    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1f
    .line 1587
    :try_start_1
    array-length v0, p1

    #@20
    .line 1588
    .local v0, "N":I
    new-array v3, v0, [Landroid/os/health/HealthStatsParceler;

    #@22
    .line 1589
    .local v3, "results":[Landroid/os/health/HealthStatsParceler;
    const/4 v2, 0x0

    #@23
    :goto_0
    if-ge v2, v0, :cond_1

    #@25
    .line 1590
    aget v6, p1, v2

    #@27
    invoke-virtual {p0, v6}, Lcom/android/server/am/BatteryStatsService;->getHealthStatsForUidLocked(I)Landroid/os/health/HealthStatsParceler;

    #@2a
    move-result-object v6

    #@2b
    aput-object v6, v3, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    .line 1589
    add-int/lit8 v2, v2, 0x1

    #@2f
    goto :goto_0

    #@30
    :cond_1
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@31
    .line 1599
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@34
    .line 1592
    return-object v3

    #@35
    .line 1586
    .end local v0    # "N":I
    .end local v3    # "results":[Landroid/os/health/HealthStatsParceler;
    :catchall_0
    move-exception v6

    #@36
    :try_start_3
    monitor-exit v7

    #@37
    throw v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@38
    .line 1594
    :catch_0
    move-exception v1

    #@39
    .line 1595
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v6, "BatteryStatsService"

    #@3c
    new-instance v7, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v8, "Crashed while writing for takeUidSnapshots("

    #@44
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v7

    #@48
    .line 1596
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    #@4b
    move-result-object v8

    #@4c
    .line 1595
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v7

    #@50
    .line 1596
    const-string/jumbo v8, ") i="

    #@53
    .line 1595
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v7

    #@57
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v7

    #@5b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v7

    #@5f
    invoke-static {v6, v7, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@62
    .line 1597
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@63
    .line 1598
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_1
    move-exception v6

    #@64
    .line 1599
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@67
    .line 1598
    throw v6
.end method

.method updateExternalStatsSync(Ljava/lang/String;I)V
    .locals 24
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "updateFlags"    # I

    #@0
    .prologue
    .line 1444
    const/16 v20, 0x0

    #@2
    .line 1445
    .local v20, "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    const/4 v12, 0x0

    #@3
    .line 1446
    .local v12, "bluetoothReceiver":Landroid/os/SynchronousResultReceiver;
    const/16 v17, 0x0

    #@5
    .line 1448
    .local v17, "modemReceiver":Landroid/os/SynchronousResultReceiver;
    move-object/from16 v0, p0

    #@7
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mExternalStatsLock:Ljava/lang/Object;

    #@9
    move-object/from16 v22, v0

    #@b
    monitor-enter v22

    #@c
    .line 1449
    :try_start_0
    move-object/from16 v0, p0

    #@e
    iget-object v3, v0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    if-nez v3, :cond_0

    #@12
    monitor-exit v22

    #@13
    .line 1451
    return-void

    #@14
    .line 1454
    :cond_0
    and-int/lit8 v3, p2, 0x2

    #@16
    if-eqz v3, :cond_2

    #@18
    .line 1455
    :try_start_1
    move-object/from16 v0, p0

    #@1a
    iget-object v3, v0, Lcom/android/server/am/BatteryStatsService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    #@1c
    if-nez v3, :cond_1

    #@1e
    .line 1457
    const-string/jumbo v3, "wifi"

    #@21
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@24
    move-result-object v3

    #@25
    .line 1456
    invoke-static {v3}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    #@28
    move-result-object v3

    #@29
    move-object/from16 v0, p0

    #@2b
    iput-object v3, v0, Lcom/android/server/am/BatteryStatsService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    #@2d
    .line 1460
    :cond_1
    move-object/from16 v0, p0

    #@2f
    iget-object v3, v0, Lcom/android/server/am/BatteryStatsService;->mWifiManager:Landroid/net/wifi/IWifiManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    if-eqz v3, :cond_2

    #@33
    .line 1462
    :try_start_2
    new-instance v21, Landroid/os/SynchronousResultReceiver;

    #@35
    invoke-direct/range {v21 .. v21}, Landroid/os/SynchronousResultReceiver;-><init>()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@38
    .line 1463
    .end local v20    # "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    .local v21, "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    :try_start_3
    move-object/from16 v0, p0

    #@3a
    iget-object v3, v0, Lcom/android/server/am/BatteryStatsService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    #@3c
    move-object/from16 v0, v21

    #@3e
    invoke-interface {v3, v0}, Landroid/net/wifi/IWifiManager;->requestActivityInfo(Landroid/os/ResultReceiver;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@41
    move-object/from16 v20, v21

    #@43
    .line 1470
    .end local v21    # "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    :cond_2
    :goto_0
    and-int/lit8 v3, p2, 0x8

    #@45
    if-eqz v3, :cond_3

    #@47
    .line 1471
    :try_start_4
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    #@4a
    move-result-object v2

    #@4b
    .line 1472
    .local v2, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v2, :cond_3

    #@4d
    .line 1473
    new-instance v13, Landroid/os/SynchronousResultReceiver;

    #@4f
    invoke-direct {v13}, Landroid/os/SynchronousResultReceiver;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@52
    .line 1474
    .end local v12    # "bluetoothReceiver":Landroid/os/SynchronousResultReceiver;
    .local v13, "bluetoothReceiver":Landroid/os/SynchronousResultReceiver;
    :try_start_5
    invoke-virtual {v2, v13}, Landroid/bluetooth/BluetoothAdapter;->requestControllerActivityEnergyInfo(Landroid/os/ResultReceiver;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    #@55
    move-object v12, v13

    #@56
    .line 1478
    .end local v2    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v13    # "bluetoothReceiver":Landroid/os/SynchronousResultReceiver;
    :cond_3
    and-int/lit8 v3, p2, 0x4

    #@58
    if-eqz v3, :cond_5

    #@5a
    .line 1479
    :try_start_6
    move-object/from16 v0, p0

    #@5c
    iget-object v3, v0, Lcom/android/server/am/BatteryStatsService;->mTelephony:Landroid/telephony/TelephonyManager;

    #@5e
    if-nez v3, :cond_4

    #@60
    .line 1480
    move-object/from16 v0, p0

    #@62
    iget-object v3, v0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    #@64
    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    #@67
    move-result-object v3

    #@68
    move-object/from16 v0, p0

    #@6a
    iput-object v3, v0, Lcom/android/server/am/BatteryStatsService;->mTelephony:Landroid/telephony/TelephonyManager;

    #@6c
    .line 1483
    :cond_4
    move-object/from16 v0, p0

    #@6e
    iget-object v3, v0, Lcom/android/server/am/BatteryStatsService;->mTelephony:Landroid/telephony/TelephonyManager;

    #@70
    if-eqz v3, :cond_5

    #@72
    .line 1484
    new-instance v18, Landroid/os/SynchronousResultReceiver;

    #@74
    invoke-direct/range {v18 .. v18}, Landroid/os/SynchronousResultReceiver;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@77
    .line 1485
    .local v18, "modemReceiver":Landroid/os/SynchronousResultReceiver;
    :try_start_7
    move-object/from16 v0, p0

    #@79
    iget-object v3, v0, Lcom/android/server/am/BatteryStatsService;->mTelephony:Landroid/telephony/TelephonyManager;

    #@7b
    .end local v17    # "modemReceiver":Landroid/os/SynchronousResultReceiver;
    move-object/from16 v0, v18

    #@7d
    invoke-virtual {v3, v0}, Landroid/telephony/TelephonyManager;->requestModemActivityInfo(Landroid/os/ResultReceiver;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    #@80
    move-object/from16 v17, v18

    #@82
    .line 1489
    .end local v18    # "modemReceiver":Landroid/os/SynchronousResultReceiver;
    :cond_5
    const/16 v19, 0x0

    #@84
    .line 1490
    .local v19, "wifiInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    const/4 v11, 0x0

    #@85
    .line 1491
    .local v11, "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    const/16 v16, 0x0

    #@87
    .line 1493
    .local v16, "modemInfo":Landroid/telephony/ModemActivityInfo;
    :try_start_8
    invoke-static/range {v20 .. v20}, Lcom/android/server/am/BatteryStatsService;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    #@8a
    move-result-object v3

    #@8b
    move-object v0, v3

    #@8c
    check-cast v0, Landroid/net/wifi/WifiActivityEnergyInfo;

    #@8e
    move-object/from16 v19, v0
    :try_end_8
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@90
    .line 1499
    .end local v19    # "wifiInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    :goto_1
    :try_start_9
    invoke-static {v12}, Lcom/android/server/am/BatteryStatsService;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    #@93
    move-result-object v3

    #@94
    move-object v0, v3

    #@95
    check-cast v0, Landroid/bluetooth/BluetoothActivityEnergyInfo;

    #@97
    move-object v11, v0
    :try_end_9
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@98
    .line 1505
    .end local v11    # "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :goto_2
    :try_start_a
    invoke-static/range {v17 .. v17}, Lcom/android/server/am/BatteryStatsService;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    #@9b
    move-result-object v3

    #@9c
    move-object v0, v3

    #@9d
    check-cast v0, Landroid/telephony/ModemActivityInfo;

    #@9f
    move-object/from16 v16, v0
    :try_end_a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@a1
    .line 1510
    .end local v16    # "modemInfo":Landroid/telephony/ModemActivityInfo;
    :goto_3
    :try_start_b
    move-object/from16 v0, p0

    #@a3
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@a5
    move-object/from16 v23, v0

    #@a7
    monitor-enter v23
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    #@a8
    .line 1511
    :try_start_c
    move-object/from16 v0, p0

    #@aa
    iget-object v3, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@ac
    .line 1512
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@af
    move-result-wide v4

    #@b0
    .line 1513
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@b3
    move-result-wide v6

    #@b4
    .line 1514
    const/16 v8, 0xe

    #@b6
    .line 1515
    const/4 v10, 0x0

    #@b7
    move-object/from16 v9, p1

    #@b9
    .line 1511
    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    #@bc
    .line 1517
    move-object/from16 v0, p0

    #@be
    iget-object v3, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@c0
    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl;->updateCpuTimeLocked()V

    #@c3
    .line 1518
    move-object/from16 v0, p0

    #@c5
    iget-object v3, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@c7
    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl;->updateKernelWakelocksLocked()V

    #@ca
    .line 1520
    if-eqz v19, :cond_6

    #@cc
    .line 1521
    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiActivityEnergyInfo;->isValid()Z

    #@cf
    move-result v3

    #@d0
    if-eqz v3, :cond_9

    #@d2
    .line 1522
    move-object/from16 v0, p0

    #@d4
    iget-object v3, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@d6
    move-object/from16 v0, p0

    #@d8
    move-object/from16 v1, v19

    #@da
    invoke-direct {v0, v1}, Lcom/android/server/am/BatteryStatsService;->extractDelta(Landroid/net/wifi/WifiActivityEnergyInfo;)Landroid/net/wifi/WifiActivityEnergyInfo;

    #@dd
    move-result-object v4

    #@de
    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->updateWifiStateLocked(Landroid/net/wifi/WifiActivityEnergyInfo;)V

    #@e1
    .line 1528
    :cond_6
    :goto_4
    if-eqz v11, :cond_7

    #@e3
    .line 1529
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->isValid()Z

    #@e6
    move-result v3

    #@e7
    if-eqz v3, :cond_a

    #@e9
    .line 1530
    move-object/from16 v0, p0

    #@eb
    iget-object v3, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@ed
    invoke-virtual {v3, v11}, Lcom/android/internal/os/BatteryStatsImpl;->updateBluetoothStateLocked(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V

    #@f0
    .line 1536
    :cond_7
    :goto_5
    if-eqz v16, :cond_8

    #@f2
    .line 1537
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/ModemActivityInfo;->isValid()Z

    #@f5
    move-result v3

    #@f6
    if-eqz v3, :cond_b

    #@f8
    .line 1538
    move-object/from16 v0, p0

    #@fa
    iget-object v3, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@fc
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@ff
    move-result-wide v4

    #@100
    move-object/from16 v0, v16

    #@102
    invoke-virtual {v3, v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateMobileRadioStateLocked(JLandroid/telephony/ModemActivityInfo;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    #@105
    :cond_8
    :goto_6
    :try_start_d
    monitor-exit v23
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    #@106
    monitor-exit v22

    #@107
    .line 1443
    return-void

    #@108
    .line 1494
    .restart local v11    # "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .restart local v16    # "modemInfo":Landroid/telephony/ModemActivityInfo;
    .restart local v19    # "wifiInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    :catch_0
    move-exception v15

    #@109
    .line 1495
    .local v15, "e":Ljava/util/concurrent/TimeoutException;
    :try_start_e
    const-string/jumbo v3, "BatteryStatsService"

    #@10c
    const-string/jumbo v4, "Timeout reading wifi stats"

    #@10f
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    #@112
    goto/16 :goto_1

    #@114
    .line 1448
    .end local v11    # "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .end local v15    # "e":Ljava/util/concurrent/TimeoutException;
    .end local v16    # "modemInfo":Landroid/telephony/ModemActivityInfo;
    .end local v19    # "wifiInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    :catchall_0
    move-exception v3

    #@115
    :goto_7
    monitor-exit v22

    #@116
    throw v3

    #@117
    .line 1500
    .restart local v11    # "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .restart local v16    # "modemInfo":Landroid/telephony/ModemActivityInfo;
    :catch_1
    move-exception v15

    #@118
    .line 1501
    .restart local v15    # "e":Ljava/util/concurrent/TimeoutException;
    :try_start_f
    const-string/jumbo v3, "BatteryStatsService"

    #@11b
    const-string/jumbo v4, "Timeout reading bt stats"

    #@11e
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@121
    goto/16 :goto_2

    #@123
    .line 1506
    .end local v11    # "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .end local v15    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_2
    move-exception v15

    #@124
    .line 1507
    .restart local v15    # "e":Ljava/util/concurrent/TimeoutException;
    const-string/jumbo v3, "BatteryStatsService"

    #@127
    const-string/jumbo v4, "Timeout reading modem stats"

    #@12a
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    #@12d
    goto/16 :goto_3

    #@12f
    .line 1524
    .end local v15    # "e":Ljava/util/concurrent/TimeoutException;
    .end local v16    # "modemInfo":Landroid/telephony/ModemActivityInfo;
    :cond_9
    :try_start_10
    const-string/jumbo v3, "BatteryStatsService"

    #@132
    new-instance v4, Ljava/lang/StringBuilder;

    #@134
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@137
    const-string/jumbo v5, "wifi info is invalid: "

    #@13a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13d
    move-result-object v4

    #@13e
    move-object/from16 v0, v19

    #@140
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@143
    move-result-object v4

    #@144
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@147
    move-result-object v4

    #@148
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    #@14b
    goto :goto_4

    #@14c
    .line 1510
    :catchall_1
    move-exception v3

    #@14d
    :try_start_11
    monitor-exit v23

    #@14e
    throw v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    #@14f
    .line 1532
    :cond_a
    :try_start_12
    const-string/jumbo v3, "BatteryStatsService"

    #@152
    new-instance v4, Ljava/lang/StringBuilder;

    #@154
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@157
    const-string/jumbo v5, "bluetooth info is invalid: "

    #@15a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15d
    move-result-object v4

    #@15e
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@161
    move-result-object v4

    #@162
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@165
    move-result-object v4

    #@166
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@169
    goto :goto_5

    #@16a
    .line 1541
    :cond_b
    const-string/jumbo v3, "BatteryStatsService"

    #@16d
    new-instance v4, Ljava/lang/StringBuilder;

    #@16f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@172
    const-string/jumbo v5, "modem info is invalid: "

    #@175
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@178
    move-result-object v4

    #@179
    move-object/from16 v0, v16

    #@17b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17e
    move-result-object v4

    #@17f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@182
    move-result-object v4

    #@183
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    #@186
    goto/16 :goto_6

    #@188
    .line 1448
    .restart local v12    # "bluetoothReceiver":Landroid/os/SynchronousResultReceiver;
    .restart local v17    # "modemReceiver":Landroid/os/SynchronousResultReceiver;
    .restart local v21    # "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    :catchall_2
    move-exception v3

    #@189
    move-object/from16 v20, v21

    #@18b
    .end local v21    # "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    .local v20, "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    goto :goto_7

    #@18c
    .end local v12    # "bluetoothReceiver":Landroid/os/SynchronousResultReceiver;
    .end local v20    # "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    .restart local v2    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .restart local v13    # "bluetoothReceiver":Landroid/os/SynchronousResultReceiver;
    :catchall_3
    move-exception v3

    #@18d
    move-object v12, v13

    #@18e
    .end local v13    # "bluetoothReceiver":Landroid/os/SynchronousResultReceiver;
    .local v12, "bluetoothReceiver":Landroid/os/SynchronousResultReceiver;
    goto :goto_7

    #@18f
    .end local v2    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v12    # "bluetoothReceiver":Landroid/os/SynchronousResultReceiver;
    .end local v17    # "modemReceiver":Landroid/os/SynchronousResultReceiver;
    .restart local v18    # "modemReceiver":Landroid/os/SynchronousResultReceiver;
    :catchall_4
    move-exception v3

    #@190
    move-object/from16 v17, v18

    #@192
    .end local v18    # "modemReceiver":Landroid/os/SynchronousResultReceiver;
    .local v17, "modemReceiver":Landroid/os/SynchronousResultReceiver;
    goto :goto_7

    #@193
    .line 1464
    .local v12, "bluetoothReceiver":Landroid/os/SynchronousResultReceiver;
    .local v17, "modemReceiver":Landroid/os/SynchronousResultReceiver;
    .local v20, "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    :catch_3
    move-exception v14

    #@194
    .local v14, "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    #@196
    .end local v14    # "e":Landroid/os/RemoteException;
    .end local v20    # "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    .restart local v21    # "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    :catch_4
    move-exception v14

    #@197
    .restart local v14    # "e":Landroid/os/RemoteException;
    move-object/from16 v20, v21

    #@199
    .end local v21    # "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    .local v20, "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    goto/16 :goto_0
.end method
