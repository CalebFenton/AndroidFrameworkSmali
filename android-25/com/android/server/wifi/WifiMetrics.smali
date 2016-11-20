.class public Lcom/android/server/wifi/WifiMetrics;
.super Ljava/lang/Object;
.source "WifiMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;,
        Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;
    }
.end annotation


# static fields
.field public static final CLEAN_DUMP_ARG:Ljava/lang/String; = "clean"

.field private static final DBG:Z = false

.field private static final MAX_CONNECTION_EVENTS:I = 0x100

.field private static final MAX_RSSI_POLL:I = 0x0

.field private static final MAX_WIFI_SCORE:I = 0x3c

.field private static final MIN_RSSI_POLL:I = -0x7f

.field private static final MIN_WIFI_SCORE:I = 0x0

.field public static final PROTO_DUMP_ARG:Ljava/lang/String; = "wifiMetricsProto"

.field private static final SCREEN_OFF:I = 0x0

.field private static final SCREEN_ON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiMetrics"


# instance fields
.field private mClock:Lcom/android/server/wifi/Clock;

.field private final mConnectionEventList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

.field private final mLock:Ljava/lang/Object;

.field private mRecordStartTimeSec:J

.field private final mRssiPollCounts:Landroid/util/SparseIntArray;

.field private final mScanReturnEntries:Landroid/util/SparseIntArray;

.field private mScreenOn:Z

.field private final mWifiAlertReasonCounts:Landroid/util/SparseIntArray;

.field private final mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

.field private final mWifiScoreCounts:Landroid/util/SparseIntArray;

.field private mWifiState:I

.field private final mWifiSystemStateEntries:Landroid/util/SparseIntArray;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiMetrics;)Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiMetrics;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/WifiMetrics;Landroid/net/wifi/ScanResult;)V
    .locals 0
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMetrics;->updateMetricsFromScanResult(Landroid/net/wifi/ScanResult;)V

    #@3
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/Clock;)V
    .locals 4
    .param p1, "clock"    # Lcom/android/server/wifi/Clock;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 53
    new-instance v0, Ljava/lang/Object;

    #@6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@b
    .line 64
    new-instance v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@d
    invoke-direct {v0}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;-><init>()V

    #@10
    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@12
    .line 68
    new-instance v0, Ljava/util/ArrayList;

    #@14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@17
    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mConnectionEventList:Ljava/util/List;

    #@19
    .line 76
    new-instance v0, Landroid/util/SparseIntArray;

    #@1b
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@1e
    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mScanReturnEntries:Landroid/util/SparseIntArray;

    #@20
    .line 81
    new-instance v0, Landroid/util/SparseIntArray;

    #@22
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@25
    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiSystemStateEntries:Landroid/util/SparseIntArray;

    #@27
    .line 83
    new-instance v0, Landroid/util/SparseIntArray;

    #@29
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@2c
    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mRssiPollCounts:Landroid/util/SparseIntArray;

    #@2e
    .line 85
    new-instance v0, Landroid/util/SparseIntArray;

    #@30
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@33
    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiAlertReasonCounts:Landroid/util/SparseIntArray;

    #@35
    .line 92
    new-instance v0, Landroid/util/SparseIntArray;

    #@37
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@3a
    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiScoreCounts:Landroid/util/SparseIntArray;

    #@3c
    .line 321
    iput-object p1, p0, Lcom/android/server/wifi/WifiMetrics;->mClock:Lcom/android/server/wifi/Clock;

    #@3e
    .line 322
    const/4 v0, 0x0

    #@3f
    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@41
    .line 323
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiMetrics;->mScreenOn:Z

    #@43
    .line 324
    iput v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiState:I

    #@45
    .line 325
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mClock:Lcom/android/server/wifi/Clock;

    #@47
    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    #@4a
    move-result-wide v0

    #@4b
    const-wide/16 v2, 0x3e8

    #@4d
    div-long/2addr v0, v2

    #@4e
    iput-wide v0, p0, Lcom/android/server/wifi/WifiMetrics;->mRecordStartTimeSec:J

    #@50
    .line 320
    return-void
.end method

.method private clear()V
    .locals 6

    #@0
    .prologue
    .line 1199
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1200
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mConnectionEventList:Ljava/util/List;

    #@5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@8
    .line 1201
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1202
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mConnectionEventList:Ljava/util/List;

    #@e
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@10
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@13
    .line 1204
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mScanReturnEntries:Landroid/util/SparseIntArray;

    #@15
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    #@18
    .line 1205
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiSystemStateEntries:Landroid/util/SparseIntArray;

    #@1a
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    #@1d
    .line 1206
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mClock:Lcom/android/server/wifi/Clock;

    #@1f
    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    #@22
    move-result-wide v2

    #@23
    const-wide/16 v4, 0x3e8

    #@25
    div-long/2addr v2, v4

    #@26
    iput-wide v2, p0, Lcom/android/server/wifi/WifiMetrics;->mRecordStartTimeSec:J

    #@28
    .line 1207
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mRssiPollCounts:Landroid/util/SparseIntArray;

    #@2a
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    #@2d
    .line 1208
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiAlertReasonCounts:Landroid/util/SparseIntArray;

    #@2f
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    #@32
    .line 1209
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiScoreCounts:Landroid/util/SparseIntArray;

    #@34
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    #@37
    .line 1210
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@39
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->clear()Lcom/android/server/wifi/WifiMetricsProto$WifiLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3c
    monitor-exit v1

    #@3d
    .line 1198
    return-void

    #@3e
    .line 1199
    :catchall_0
    move-exception v0

    #@3f
    monitor-exit v1

    #@40
    throw v0
.end method

.method private consolidateProto(Z)V
    .locals 20
    .param p1, "incremental"    # Z

    #@0
    .prologue
    .line 1108
    new-instance v5, Ljava/util/ArrayList;

    #@2
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1109
    .local v5, "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;>;"
    new-instance v10, Ljava/util/ArrayList;

    #@7
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 1110
    .local v10, "rssis":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;>;"
    new-instance v2, Ljava/util/ArrayList;

    #@c
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@f
    .line 1111
    .local v2, "alertReasons":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;>;"
    new-instance v12, Ljava/util/ArrayList;

    #@11
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    #@14
    .line 1112
    .local v12, "scores":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;>;"
    move-object/from16 v0, p0

    #@16
    iget-object v14, v0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@18
    monitor-enter v14

    #@19
    .line 1113
    :try_start_0
    move-object/from16 v0, p0

    #@1b
    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mConnectionEventList:Ljava/util/List;

    #@1d
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v4

    #@21
    .local v4, "event$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v13

    #@25
    if-eqz v13, :cond_2

    #@27
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v3

    #@2b
    check-cast v3, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@2d
    .line 1116
    .local v3, "event":Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;
    if-eqz p1, :cond_1

    #@2f
    move-object/from16 v0, p0

    #@31
    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@33
    if-eq v13, v3, :cond_0

    #@35
    .line 1117
    iget-object v13, v3, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@37
    iget-boolean v13, v13, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->automaticBugReportTaken:Z

    #@39
    if-nez v13, :cond_0

    #@3b
    .line 1120
    :cond_1
    iget-object v13, v3, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@3d
    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@40
    .line 1121
    if-eqz p1, :cond_0

    #@42
    .line 1122
    iget-object v13, v3, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@44
    const/4 v15, 0x1

    #@45
    iput-boolean v15, v13, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->automaticBugReportTaken:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@47
    goto :goto_0

    #@48
    .line 1112
    .end local v3    # "event":Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;
    .end local v4    # "event$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v13

    #@49
    monitor-exit v14

    #@4a
    throw v13

    #@4b
    .line 1126
    .restart local v4    # "event$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@4e
    move-result v13

    #@4f
    if-lez v13, :cond_3

    #@51
    .line 1127
    move-object/from16 v0, p0

    #@53
    iget-object v15, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@55
    move-object/from16 v0, p0

    #@57
    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@59
    iget-object v13, v13, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@5b
    invoke-interface {v5, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@5e
    move-result-object v13

    #@5f
    check-cast v13, [Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@61
    iput-object v13, v15, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@63
    .line 1131
    :cond_3
    move-object/from16 v0, p0

    #@65
    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@67
    .line 1132
    move-object/from16 v0, p0

    #@69
    iget-object v15, v0, Lcom/android/server/wifi/WifiMetrics;->mScanReturnEntries:Landroid/util/SparseIntArray;

    #@6b
    invoke-virtual {v15}, Landroid/util/SparseIntArray;->size()I

    #@6e
    move-result v15

    #@6f
    new-array v15, v15, [Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@71
    .line 1131
    iput-object v15, v13, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@73
    .line 1133
    const/4 v6, 0x0

    #@74
    .local v6, "i":I
    :goto_1
    move-object/from16 v0, p0

    #@76
    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mScanReturnEntries:Landroid/util/SparseIntArray;

    #@78
    invoke-virtual {v13}, Landroid/util/SparseIntArray;->size()I

    #@7b
    move-result v13

    #@7c
    if-ge v6, v13, :cond_4

    #@7e
    .line 1134
    move-object/from16 v0, p0

    #@80
    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@82
    iget-object v13, v13, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@84
    new-instance v15, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@86
    invoke-direct {v15}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    #@89
    aput-object v15, v13, v6

    #@8b
    .line 1135
    move-object/from16 v0, p0

    #@8d
    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@8f
    iget-object v13, v13, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@91
    aget-object v13, v13, v6

    #@93
    move-object/from16 v0, p0

    #@95
    iget-object v15, v0, Lcom/android/server/wifi/WifiMetrics;->mScanReturnEntries:Landroid/util/SparseIntArray;

    #@97
    invoke-virtual {v15, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@9a
    move-result v15

    #@9b
    iput v15, v13, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;->scanReturnCode:I

    #@9d
    .line 1136
    move-object/from16 v0, p0

    #@9f
    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@a1
    iget-object v13, v13, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@a3
    aget-object v13, v13, v6

    #@a5
    move-object/from16 v0, p0

    #@a7
    iget-object v15, v0, Lcom/android/server/wifi/WifiMetrics;->mScanReturnEntries:Landroid/util/SparseIntArray;

    #@a9
    invoke-virtual {v15, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@ac
    move-result v15

    #@ad
    iput v15, v13, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;->scanResultsCount:I

    #@af
    .line 1133
    add-int/lit8 v6, v6, 0x1

    #@b1
    goto :goto_1

    #@b2
    .line 1142
    :cond_4
    move-object/from16 v0, p0

    #@b4
    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@b6
    .line 1144
    move-object/from16 v0, p0

    #@b8
    iget-object v15, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiSystemStateEntries:Landroid/util/SparseIntArray;

    #@ba
    invoke-virtual {v15}, Landroid/util/SparseIntArray;->size()I

    #@bd
    move-result v15

    #@be
    .line 1143
    new-array v15, v15, [Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@c0
    .line 1142
    iput-object v15, v13, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@c2
    .line 1145
    const/4 v6, 0x0

    #@c3
    :goto_2
    move-object/from16 v0, p0

    #@c5
    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiSystemStateEntries:Landroid/util/SparseIntArray;

    #@c7
    invoke-virtual {v13}, Landroid/util/SparseIntArray;->size()I

    #@ca
    move-result v13

    #@cb
    if-ge v6, v13, :cond_6

    #@cd
    .line 1146
    move-object/from16 v0, p0

    #@cf
    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@d1
    iget-object v13, v13, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@d3
    .line 1147
    new-instance v15, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@d5
    invoke-direct {v15}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    #@d8
    .line 1146
    aput-object v15, v13, v6

    #@da
    .line 1148
    move-object/from16 v0, p0

    #@dc
    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@de
    iget-object v13, v13, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@e0
    aget-object v13, v13, v6

    #@e2
    .line 1149
    move-object/from16 v0, p0

    #@e4
    iget-object v15, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiSystemStateEntries:Landroid/util/SparseIntArray;

    #@e6
    invoke-virtual {v15, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@e9
    move-result v15

    #@ea
    div-int/lit8 v15, v15, 0x2

    #@ec
    .line 1148
    iput v15, v13, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->wifiState:I

    #@ee
    .line 1150
    move-object/from16 v0, p0

    #@f0
    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@f2
    iget-object v13, v13, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@f4
    aget-object v13, v13, v6

    #@f6
    .line 1151
    move-object/from16 v0, p0

    #@f8
    iget-object v15, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiSystemStateEntries:Landroid/util/SparseIntArray;

    #@fa
    invoke-virtual {v15, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@fd
    move-result v15

    #@fe
    .line 1150
    iput v15, v13, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->wifiStateCount:I

    #@100
    .line 1152
    move-object/from16 v0, p0

    #@102
    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@104
    iget-object v13, v13, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@106
    aget-object v15, v13, v6

    #@108
    .line 1153
    move-object/from16 v0, p0

    #@10a
    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiSystemStateEntries:Landroid/util/SparseIntArray;

    #@10c
    invoke-virtual {v13, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@10f
    move-result v13

    #@110
    rem-int/lit8 v13, v13, 0x2

    #@112
    if-lez v13, :cond_5

    #@114
    const/4 v13, 0x1

    #@115
    .line 1152
    :goto_3
    iput-boolean v13, v15, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->isScreenOn:Z

    #@117
    .line 1145
    add-int/lit8 v6, v6, 0x1

    #@119
    goto :goto_2

    #@11a
    .line 1153
    :cond_5
    const/4 v13, 0x0

    #@11b
    goto :goto_3

    #@11c
    .line 1155
    :cond_6
    move-object/from16 v0, p0

    #@11e
    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@120
    move-object/from16 v0, p0

    #@122
    iget-object v15, v0, Lcom/android/server/wifi/WifiMetrics;->mClock:Lcom/android/server/wifi/Clock;

    #@124
    invoke-virtual {v15}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    #@127
    move-result-wide v16

    #@128
    const-wide/16 v18, 0x3e8

    #@12a
    div-long v16, v16, v18

    #@12c
    .line 1156
    move-object/from16 v0, p0

    #@12e
    iget-wide v0, v0, Lcom/android/server/wifi/WifiMetrics;->mRecordStartTimeSec:J

    #@130
    move-wide/from16 v18, v0

    #@132
    .line 1155
    sub-long v16, v16, v18

    #@134
    move-wide/from16 v0, v16

    #@136
    long-to-int v15, v0

    #@137
    iput v15, v13, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->recordDurationSec:I

    #@139
    .line 1162
    const/4 v6, 0x0

    #@13a
    :goto_4
    move-object/from16 v0, p0

    #@13c
    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mRssiPollCounts:Landroid/util/SparseIntArray;

    #@13e
    invoke-virtual {v13}, Landroid/util/SparseIntArray;->size()I

    #@141
    move-result v13

    #@142
    if-ge v6, v13, :cond_7

    #@144
    .line 1163
    new-instance v8, Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    #@146
    invoke-direct {v8}, Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;-><init>()V

    #@149
    .line 1164
    .local v8, "keyVal":Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;
    move-object/from16 v0, p0

    #@14b
    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mRssiPollCounts:Landroid/util/SparseIntArray;

    #@14d
    invoke-virtual {v13, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@150
    move-result v13

    #@151
    iput v13, v8, Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;->rssi:I

    #@153
    .line 1165
    move-object/from16 v0, p0

    #@155
    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mRssiPollCounts:Landroid/util/SparseIntArray;

    #@157
    invoke-virtual {v13, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@15a
    move-result v13

    #@15b
    iput v13, v8, Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;->count:I

    #@15d
    .line 1166
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@160
    .line 1162
    add-int/lit8 v6, v6, 0x1

    #@162
    goto :goto_4

    #@163
    .line 1168
    .end local v8    # "keyVal":Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;
    :cond_7
    move-object/from16 v0, p0

    #@165
    iget-object v15, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@167
    move-object/from16 v0, p0

    #@169
    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@16b
    iget-object v13, v13, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    #@16d
    invoke-interface {v10, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@170
    move-result-object v13

    #@171
    check-cast v13, [Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    #@173
    iput-object v13, v15, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    #@175
    .line 1174
    const/4 v6, 0x0

    #@176
    :goto_5
    move-object/from16 v0, p0

    #@178
    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiAlertReasonCounts:Landroid/util/SparseIntArray;

    #@17a
    invoke-virtual {v13}, Landroid/util/SparseIntArray;->size()I

    #@17d
    move-result v13

    #@17e
    if-ge v6, v13, :cond_8

    #@180
    .line 1175
    new-instance v7, Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    #@182
    invoke-direct {v7}, Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;-><init>()V

    #@185
    .line 1176
    .local v7, "keyVal":Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;
    move-object/from16 v0, p0

    #@187
    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiAlertReasonCounts:Landroid/util/SparseIntArray;

    #@189
    invoke-virtual {v13, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@18c
    move-result v13

    #@18d
    iput v13, v7, Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;->reason:I

    #@18f
    .line 1177
    move-object/from16 v0, p0

    #@191
    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiAlertReasonCounts:Landroid/util/SparseIntArray;

    #@193
    invoke-virtual {v13, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@196
    move-result v13

    #@197
    iput v13, v7, Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;->count:I

    #@199
    .line 1178
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@19c
    .line 1174
    add-int/lit8 v6, v6, 0x1

    #@19e
    goto :goto_5

    #@19f
    .line 1180
    .end local v7    # "keyVal":Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;
    :cond_8
    move-object/from16 v0, p0

    #@1a1
    iget-object v15, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@1a3
    move-object/from16 v0, p0

    #@1a5
    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@1a7
    iget-object v13, v13, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    #@1a9
    invoke-interface {v2, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@1ac
    move-result-object v13

    #@1ad
    check-cast v13, [Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    #@1af
    iput-object v13, v15, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    #@1b1
    .line 1185
    const/4 v11, 0x0

    #@1b2
    .local v11, "score":I
    :goto_6
    move-object/from16 v0, p0

    #@1b4
    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiScoreCounts:Landroid/util/SparseIntArray;

    #@1b6
    invoke-virtual {v13}, Landroid/util/SparseIntArray;->size()I

    #@1b9
    move-result v13

    #@1ba
    if-ge v11, v13, :cond_9

    #@1bc
    .line 1186
    new-instance v9, Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    #@1be
    invoke-direct {v9}, Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;-><init>()V

    #@1c1
    .line 1187
    .local v9, "keyVal":Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;
    move-object/from16 v0, p0

    #@1c3
    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiScoreCounts:Landroid/util/SparseIntArray;

    #@1c5
    invoke-virtual {v13, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@1c8
    move-result v13

    #@1c9
    iput v13, v9, Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;->score:I

    #@1cb
    .line 1188
    move-object/from16 v0, p0

    #@1cd
    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiScoreCounts:Landroid/util/SparseIntArray;

    #@1cf
    invoke-virtual {v13, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@1d2
    move-result v13

    #@1d3
    iput v13, v9, Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;->count:I

    #@1d5
    .line 1189
    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1d8
    .line 1185
    add-int/lit8 v11, v11, 0x1

    #@1da
    goto :goto_6

    #@1db
    .line 1191
    .end local v9    # "keyVal":Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;
    :cond_9
    move-object/from16 v0, p0

    #@1dd
    iget-object v15, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@1df
    move-object/from16 v0, p0

    #@1e1
    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@1e3
    iget-object v13, v13, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    #@1e5
    invoke-interface {v12, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@1e8
    move-result-object v13

    #@1e9
    check-cast v13, [Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    #@1eb
    iput-object v13, v15, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1ed
    monitor-exit v14

    #@1ee
    .line 1107
    return-void
.end method

.method private returnCodeToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "scanReturnCode"    # I

    #@0
    .prologue
    .line 619
    packed-switch p1, :pswitch_data_0

    #@3
    .line 631
    const-string/jumbo v0, "<UNKNOWN>"

    #@6
    return-object v0

    #@7
    .line 621
    :pswitch_0
    const-string/jumbo v0, "SCAN_UNKNOWN"

    #@a
    return-object v0

    #@b
    .line 623
    :pswitch_1
    const-string/jumbo v0, "SCAN_SUCCESS"

    #@e
    return-object v0

    #@f
    .line 625
    :pswitch_2
    const-string/jumbo v0, "SCAN_FAILURE_INTERRUPTED"

    #@12
    return-object v0

    #@13
    .line 627
    :pswitch_3
    const-string/jumbo v0, "SCAN_FAILURE_INVALID_CONFIGURATION"

    #@16
    return-object v0

    #@17
    .line 629
    :pswitch_4
    const-string/jumbo v0, "FAILURE_WIFI_DISABLED"

    #@1a
    return-object v0

    #@1b
    .line 619
    nop

    #@1c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private updateMetricsFromNetworkDetail(Lcom/android/server/wifi/hotspot2/NetworkDetail;)V
    .locals 3
    .param p1, "networkDetail"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@0
    .prologue
    .line 443
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getDtimInterval()I

    #@3
    move-result v1

    #@4
    .line 444
    .local v1, "dtimInterval":I
    if-lez v1, :cond_0

    #@6
    .line 445
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@8
    iget-object v2, v2, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    #@a
    invoke-static {v2}, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->-get0(Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;)Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@d
    move-result-object v2

    #@e
    iput v1, v2, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->dtim:I

    #@10
    .line 449
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getWifiMode()I

    #@13
    move-result v2

    #@14
    packed-switch v2, :pswitch_data_0

    #@17
    .line 469
    const/4 v0, 0x6

    #@18
    .line 472
    .local v0, "connectionWifiMode":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@1a
    iget-object v2, v2, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    #@1c
    invoke-static {v2}, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->-get0(Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;)Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@1f
    move-result-object v2

    #@20
    iput v0, v2, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->routerTechnology:I

    #@22
    .line 442
    return-void

    #@23
    .line 451
    .end local v0    # "connectionWifiMode":I
    :pswitch_0
    const/4 v0, 0x0

    #@24
    .line 452
    .restart local v0    # "connectionWifiMode":I
    goto :goto_0

    #@25
    .line 454
    .end local v0    # "connectionWifiMode":I
    :pswitch_1
    const/4 v0, 0x1

    #@26
    .line 455
    .restart local v0    # "connectionWifiMode":I
    goto :goto_0

    #@27
    .line 457
    .end local v0    # "connectionWifiMode":I
    :pswitch_2
    const/4 v0, 0x2

    #@28
    .line 458
    .restart local v0    # "connectionWifiMode":I
    goto :goto_0

    #@29
    .line 460
    .end local v0    # "connectionWifiMode":I
    :pswitch_3
    const/4 v0, 0x3

    #@2a
    .line 461
    .restart local v0    # "connectionWifiMode":I
    goto :goto_0

    #@2b
    .line 463
    .end local v0    # "connectionWifiMode":I
    :pswitch_4
    const/4 v0, 0x4

    #@2c
    .line 464
    .restart local v0    # "connectionWifiMode":I
    goto :goto_0

    #@2d
    .line 466
    .end local v0    # "connectionWifiMode":I
    :pswitch_5
    const/4 v0, 0x5

    #@2e
    .line 467
    .restart local v0    # "connectionWifiMode":I
    goto :goto_0

    #@2f
    .line 449
    nop

    #@30
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateMetricsFromScanResult(Landroid/net/wifi/ScanResult;)V
    .locals 3
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    .line 480
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@3
    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@5
    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    #@7
    iput v1, v0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->signalStrength:I

    #@9
    .line 481
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@b
    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    #@d
    invoke-static {v0}, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->-get0(Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;)Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@10
    move-result-object v0

    #@11
    .line 482
    const/4 v1, 0x1

    #@12
    .line 481
    iput v1, v0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->authentication:I

    #@14
    .line 483
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@16
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@18
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-set0(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;Ljava/lang/String;)Ljava/lang/String;

    #@1b
    .line 484
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@1d
    if-eqz v0, :cond_0

    #@1f
    .line 485
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@21
    const-string/jumbo v1, "WEP"

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_1

    #@2a
    .line 486
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@2c
    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    #@2e
    invoke-static {v0}, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->-get0(Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;)Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@31
    move-result-object v0

    #@32
    iput v2, v0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->authentication:I

    #@34
    .line 496
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@36
    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    #@38
    invoke-static {v0}, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->-get0(Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;)Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@3b
    move-result-object v0

    #@3c
    .line 497
    iget v1, p1, Landroid/net/wifi/ScanResult;->frequency:I

    #@3e
    .line 496
    iput v1, v0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->channelInfo:I

    #@40
    .line 479
    return-void

    #@41
    .line 488
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@43
    const-string/jumbo v1, "PSK"

    #@46
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@49
    move-result v0

    #@4a
    if-eqz v0, :cond_2

    #@4c
    .line 489
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@4e
    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    #@50
    invoke-static {v0}, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->-get0(Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;)Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@53
    move-result-object v0

    #@54
    iput v2, v0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->authentication:I

    #@56
    goto :goto_0

    #@57
    .line 491
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@59
    const-string/jumbo v1, "EAP"

    #@5c
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@5f
    move-result v0

    #@60
    if-eqz v0, :cond_0

    #@62
    .line 492
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@64
    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    #@66
    invoke-static {v0}, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->-get0(Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;)Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@69
    move-result-object v0

    #@6a
    .line 493
    const/4 v1, 0x3

    #@6b
    .line 492
    iput v1, v0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->authentication:I

    #@6d
    goto :goto_0
.end method

.method private wifiSystemStateToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # I

    #@0
    .prologue
    .line 659
    packed-switch p1, :pswitch_data_0

    #@3
    .line 669
    const-string/jumbo v0, "default"

    #@6
    return-object v0

    #@7
    .line 661
    :pswitch_0
    const-string/jumbo v0, "WIFI_UNKNOWN"

    #@a
    return-object v0

    #@b
    .line 663
    :pswitch_1
    const-string/jumbo v0, "WIFI_DISABLED"

    #@e
    return-object v0

    #@f
    .line 665
    :pswitch_2
    const-string/jumbo v0, "WIFI_DISCONNECTED"

    #@12
    return-object v0

    #@13
    .line 667
    :pswitch_3
    const-string/jumbo v0, "WIFI_ASSOCIATED"

    #@16
    return-object v0

    #@17
    .line 659
    nop

    #@18
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public addCountToNumLastResortWatchdogAvailableNetworksTotal(I)V
    .locals 3
    .param p1, "count"    # I

    #@0
    .prologue
    .line 746
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 747
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@5
    iget v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    #@7
    add-int/2addr v2, p1

    #@8
    iput v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit v1

    #@b
    .line 745
    return-void

    #@c
    .line 746
    :catchall_0
    move-exception v0

    #@d
    monitor-exit v1

    #@e
    throw v0
.end method

.method public addCountToNumLastResortWatchdogBadAssociationNetworksTotal(I)V
    .locals 3
    .param p1, "count"    # I

    #@0
    .prologue
    .line 714
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 715
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@5
    iget v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    #@7
    add-int/2addr v2, p1

    #@8
    iput v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit v1

    #@b
    .line 713
    return-void

    #@c
    .line 714
    :catchall_0
    move-exception v0

    #@d
    monitor-exit v1

    #@e
    throw v0
.end method

.method public addCountToNumLastResortWatchdogBadAuthenticationNetworksTotal(I)V
    .locals 3
    .param p1, "count"    # I

    #@0
    .prologue
    .line 722
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 723
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@5
    iget v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    #@7
    add-int/2addr v2, p1

    #@8
    iput v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit v1

    #@b
    .line 721
    return-void

    #@c
    .line 722
    :catchall_0
    move-exception v0

    #@d
    monitor-exit v1

    #@e
    throw v0
.end method

.method public addCountToNumLastResortWatchdogBadDhcpNetworksTotal(I)V
    .locals 3
    .param p1, "count"    # I

    #@0
    .prologue
    .line 730
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 731
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@5
    iget v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    #@7
    add-int/2addr v2, p1

    #@8
    iput v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit v1

    #@b
    .line 729
    return-void

    #@c
    .line 730
    :catchall_0
    move-exception v0

    #@d
    monitor-exit v1

    #@e
    throw v0
.end method

.method public addCountToNumLastResortWatchdogBadOtherNetworksTotal(I)V
    .locals 3
    .param p1, "count"    # I

    #@0
    .prologue
    .line 738
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 739
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@5
    iget v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    #@7
    add-int/2addr v2, p1

    #@8
    iput v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit v1

    #@b
    .line 737
    return-void

    #@c
    .line 738
    :catchall_0
    move-exception v0

    #@d
    monitor-exit v1

    #@e
    throw v0
.end method

.method public countScanResults(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 859
    .local p1, "scanDetails":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    if-nez p1, :cond_0

    #@2
    .line 860
    return-void

    #@3
    .line 862
    :cond_0
    const/4 v10, 0x0

    #@4
    .line 863
    .local v10, "totalResults":I
    const/4 v5, 0x0

    #@5
    .line 864
    .local v5, "openNetworks":I
    const/4 v6, 0x0

    #@6
    .line 865
    .local v6, "personalNetworks":I
    const/4 v0, 0x0

    #@7
    .line 866
    .local v0, "enterpriseNetworks":I
    const/4 v1, 0x0

    #@8
    .line 867
    .local v1, "hiddenNetworks":I
    const/4 v2, 0x0

    #@9
    .line 868
    .local v2, "hotspot2r1Networks":I
    const/4 v3, 0x0

    #@a
    .line 869
    .local v3, "hotspot2r2Networks":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v8

    #@e
    .local v8, "scanDetail$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v11

    #@12
    if-eqz v11, :cond_8

    #@14
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v7

    #@18
    check-cast v7, Lcom/android/server/wifi/ScanDetail;

    #@1a
    .line 870
    .local v7, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v7}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@1d
    move-result-object v4

    #@1e
    .line 871
    .local v4, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    invoke-virtual {v7}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    #@21
    move-result-object v9

    #@22
    .line 872
    .local v9, "scanResult":Landroid/net/wifi/ScanResult;
    add-int/lit8 v10, v10, 0x1

    #@24
    .line 873
    if-eqz v4, :cond_3

    #@26
    .line 874
    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->isHiddenBeaconFrame()Z

    #@29
    move-result v11

    #@2a
    if-eqz v11, :cond_2

    #@2c
    .line 875
    add-int/lit8 v1, v1, 0x1

    #@2e
    .line 877
    :cond_2
    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getHSRelease()Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@31
    move-result-object v11

    #@32
    if-eqz v11, :cond_3

    #@34
    .line 878
    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getHSRelease()Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@37
    move-result-object v11

    #@38
    sget-object v12, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->R1:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@3a
    if-ne v11, v12, :cond_4

    #@3c
    .line 879
    add-int/lit8 v2, v2, 0x1

    #@3e
    .line 885
    :cond_3
    :goto_1
    if-eqz v9, :cond_1

    #@40
    iget-object v11, v9, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@42
    if-eqz v11, :cond_1

    #@44
    .line 886
    iget-object v11, v9, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@46
    const-string/jumbo v12, "EAP"

    #@49
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@4c
    move-result v11

    #@4d
    if-eqz v11, :cond_5

    #@4f
    .line 887
    add-int/lit8 v0, v0, 0x1

    #@51
    goto :goto_0

    #@52
    .line 880
    :cond_4
    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getHSRelease()Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@55
    move-result-object v11

    #@56
    sget-object v12, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->R2:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@58
    if-ne v11, v12, :cond_3

    #@5a
    .line 881
    add-int/lit8 v3, v3, 0x1

    #@5c
    goto :goto_1

    #@5d
    .line 888
    :cond_5
    iget-object v11, v9, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@5f
    const-string/jumbo v12, "PSK"

    #@62
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@65
    move-result v11

    #@66
    if-nez v11, :cond_6

    #@68
    .line 889
    iget-object v11, v9, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@6a
    const-string/jumbo v12, "WEP"

    #@6d
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@70
    move-result v11

    #@71
    .line 888
    if-eqz v11, :cond_7

    #@73
    .line 890
    :cond_6
    add-int/lit8 v6, v6, 0x1

    #@75
    goto :goto_0

    #@76
    .line 892
    :cond_7
    add-int/lit8 v5, v5, 0x1

    #@78
    goto :goto_0

    #@79
    .line 896
    .end local v4    # "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .end local v7    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v9    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_8
    iget-object v12, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@7b
    monitor-enter v12

    #@7c
    .line 897
    :try_start_0
    iget-object v11, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@7e
    iget v13, v11, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    #@80
    add-int/2addr v13, v10

    #@81
    iput v13, v11, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    #@83
    .line 898
    iget-object v11, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@85
    iget v13, v11, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    #@87
    add-int/2addr v13, v5

    #@88
    iput v13, v11, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    #@8a
    .line 899
    iget-object v11, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@8c
    iget v13, v11, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    #@8e
    add-int/2addr v13, v6

    #@8f
    iput v13, v11, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    #@91
    .line 900
    iget-object v11, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@93
    iget v13, v11, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    #@95
    add-int/2addr v13, v0

    #@96
    iput v13, v11, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    #@98
    .line 901
    iget-object v11, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@9a
    iget v13, v11, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    #@9c
    add-int/2addr v13, v1

    #@9d
    iput v13, v11, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    #@9f
    .line 902
    iget-object v11, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@a1
    iget v13, v11, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    #@a3
    add-int/2addr v13, v2

    #@a4
    iput v13, v11, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    #@a6
    .line 903
    iget-object v11, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@a8
    iget v13, v11, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    #@aa
    add-int/2addr v13, v3

    #@ab
    iput v13, v11, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    #@ad
    .line 904
    iget-object v11, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@af
    iget v13, v11, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numScans:I

    #@b1
    add-int/lit8 v13, v13, 0x1

    #@b3
    iput v13, v11, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numScans:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b5
    monitor-exit v12

    #@b6
    .line 858
    return-void

    #@b7
    .line 896
    :catchall_0
    move-exception v11

    #@b8
    monitor-exit v12

    #@b9
    throw v11
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 935
    move-object/from16 v0, p0

    #@2
    iget-object v11, v0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v11

    #@5
    .line 936
    :try_start_0
    move-object/from16 v0, p3

    #@7
    array-length v10, v0

    #@8
    if-lez v10, :cond_3

    #@a
    const-string/jumbo v10, "wifiMetricsProto"

    #@d
    const/4 v12, 0x0

    #@e
    aget-object v12, p3, v12

    #@10
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v10

    #@14
    if-eqz v10, :cond_3

    #@16
    .line 938
    const/4 v10, 0x1

    #@17
    move-object/from16 v0, p0

    #@19
    invoke-direct {v0, v10}, Lcom/android/server/wifi/WifiMetrics;->consolidateProto(Z)V

    #@1c
    .line 939
    move-object/from16 v0, p0

    #@1e
    iget-object v10, v0, Lcom/android/server/wifi/WifiMetrics;->mConnectionEventList:Ljava/util/List;

    #@20
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@23
    move-result-object v4

    #@24
    .local v4, "event$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@27
    move-result v10

    #@28
    if-eqz v10, :cond_1

    #@2a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2d
    move-result-object v3

    #@2e
    check-cast v3, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@30
    .line 940
    .local v3, "event":Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;
    move-object/from16 v0, p0

    #@32
    iget-object v10, v0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@34
    if-eq v10, v3, :cond_0

    #@36
    .line 943
    iget-object v10, v3, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@38
    const/4 v12, 0x1

    #@39
    iput-boolean v12, v10, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->automaticBugReportTaken:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3b
    goto :goto_0

    #@3c
    .line 935
    .end local v3    # "event":Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;
    .end local v4    # "event$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v10

    #@3d
    monitor-exit v11

    #@3e
    throw v10

    #@3f
    .line 946
    .restart local v4    # "event$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    #@41
    iget-object v10, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@43
    invoke-static {v10}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    #@46
    move-result-object v9

    #@47
    .line 947
    .local v9, "wifiMetricsProto":[B
    const/4 v10, 0x0

    #@48
    invoke-static {v9, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    #@4b
    move-result-object v7

    #@4c
    .line 948
    .local v7, "metricsProtoDump":Ljava/lang/String;
    move-object/from16 v0, p3

    #@4e
    array-length v10, v0

    #@4f
    const/4 v12, 0x1

    #@50
    if-le v10, v12, :cond_2

    #@52
    const-string/jumbo v10, "clean"

    #@55
    const/4 v12, 0x1

    #@56
    aget-object v12, p3, v12

    #@58
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5b
    move-result v10

    #@5c
    if-eqz v10, :cond_2

    #@5e
    .line 950
    move-object/from16 v0, p2

    #@60
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@63
    .line 957
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiMetrics;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@66
    .end local v7    # "metricsProtoDump":Ljava/lang/String;
    .end local v9    # "wifiMetricsProto":[B
    :goto_2
    monitor-exit v11

    #@67
    .line 934
    return-void

    #@68
    .line 953
    .restart local v7    # "metricsProtoDump":Ljava/lang/String;
    .restart local v9    # "wifiMetricsProto":[B
    :cond_2
    :try_start_2
    const-string/jumbo v10, "WifiMetrics:"

    #@6b
    move-object/from16 v0, p2

    #@6d
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@70
    .line 954
    move-object/from16 v0, p2

    #@72
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@75
    .line 955
    const-string/jumbo v10, "EndWifiMetrics"

    #@78
    move-object/from16 v0, p2

    #@7a
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7d
    goto :goto_1

    #@7e
    .line 959
    .end local v4    # "event$iterator":Ljava/util/Iterator;
    .end local v7    # "metricsProtoDump":Ljava/lang/String;
    .end local v9    # "wifiMetricsProto":[B
    :cond_3
    const-string/jumbo v10, "WifiMetrics:"

    #@81
    move-object/from16 v0, p2

    #@83
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@86
    .line 960
    const-string/jumbo v10, "mConnectionEvents:"

    #@89
    move-object/from16 v0, p2

    #@8b
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8e
    .line 961
    move-object/from16 v0, p0

    #@90
    iget-object v10, v0, Lcom/android/server/wifi/WifiMetrics;->mConnectionEventList:Ljava/util/List;

    #@92
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@95
    move-result-object v4

    #@96
    .restart local v4    # "event$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@99
    move-result v10

    #@9a
    if-eqz v10, :cond_5

    #@9c
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@9f
    move-result-object v3

    #@a0
    check-cast v3, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@a2
    .line 962
    .restart local v3    # "event":Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->toString()Ljava/lang/String;

    #@a5
    move-result-object v5

    #@a6
    .line 963
    .local v5, "eventLine":Ljava/lang/String;
    move-object/from16 v0, p0

    #@a8
    iget-object v10, v0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@aa
    if-ne v3, v10, :cond_4

    #@ac
    .line 964
    new-instance v10, Ljava/lang/StringBuilder;

    #@ae
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@b1
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v10

    #@b5
    const-string/jumbo v12, "CURRENTLY OPEN EVENT"

    #@b8
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v10

    #@bc
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bf
    move-result-object v5

    #@c0
    .line 966
    :cond_4
    move-object/from16 v0, p2

    #@c2
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c5
    goto :goto_3

    #@c6
    .line 968
    .end local v3    # "event":Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;
    .end local v5    # "eventLine":Ljava/lang/String;
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    #@c8
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@cb
    const-string/jumbo v12, "mWifiLogProto.numSavedNetworks="

    #@ce
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v10

    #@d2
    move-object/from16 v0, p0

    #@d4
    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@d6
    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    #@d8
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@db
    move-result-object v10

    #@dc
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@df
    move-result-object v10

    #@e0
    move-object/from16 v0, p2

    #@e2
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@e5
    .line 969
    new-instance v10, Ljava/lang/StringBuilder;

    #@e7
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@ea
    const-string/jumbo v12, "mWifiLogProto.numOpenNetworks="

    #@ed
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v10

    #@f1
    move-object/from16 v0, p0

    #@f3
    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@f5
    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    #@f7
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v10

    #@fb
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fe
    move-result-object v10

    #@ff
    move-object/from16 v0, p2

    #@101
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@104
    .line 970
    new-instance v10, Ljava/lang/StringBuilder;

    #@106
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@109
    const-string/jumbo v12, "mWifiLogProto.numPersonalNetworks="

    #@10c
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v10

    #@110
    .line 971
    move-object/from16 v0, p0

    #@112
    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@114
    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    #@116
    .line 970
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@119
    move-result-object v10

    #@11a
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11d
    move-result-object v10

    #@11e
    move-object/from16 v0, p2

    #@120
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@123
    .line 972
    new-instance v10, Ljava/lang/StringBuilder;

    #@125
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@128
    const-string/jumbo v12, "mWifiLogProto.numEnterpriseNetworks="

    #@12b
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12e
    move-result-object v10

    #@12f
    .line 973
    move-object/from16 v0, p0

    #@131
    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@133
    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    #@135
    .line 972
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@138
    move-result-object v10

    #@139
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13c
    move-result-object v10

    #@13d
    move-object/from16 v0, p2

    #@13f
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@142
    .line 974
    new-instance v10, Ljava/lang/StringBuilder;

    #@144
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@147
    const-string/jumbo v12, "mWifiLogProto.numHiddenNetworks="

    #@14a
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14d
    move-result-object v10

    #@14e
    move-object/from16 v0, p0

    #@150
    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@152
    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    #@154
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@157
    move-result-object v10

    #@158
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15b
    move-result-object v10

    #@15c
    move-object/from16 v0, p2

    #@15e
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@161
    .line 975
    new-instance v10, Ljava/lang/StringBuilder;

    #@163
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@166
    const-string/jumbo v12, "mWifiLogProto.numPasspointNetworks="

    #@169
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16c
    move-result-object v10

    #@16d
    .line 976
    move-object/from16 v0, p0

    #@16f
    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@171
    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    #@173
    .line 975
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@176
    move-result-object v10

    #@177
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17a
    move-result-object v10

    #@17b
    move-object/from16 v0, p2

    #@17d
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@180
    .line 977
    new-instance v10, Ljava/lang/StringBuilder;

    #@182
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@185
    const-string/jumbo v12, "mWifiLogProto.isLocationEnabled="

    #@188
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18b
    move-result-object v10

    #@18c
    move-object/from16 v0, p0

    #@18e
    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@190
    iget-boolean v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    #@192
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@195
    move-result-object v10

    #@196
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@199
    move-result-object v10

    #@19a
    move-object/from16 v0, p2

    #@19c
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@19f
    .line 978
    new-instance v10, Ljava/lang/StringBuilder;

    #@1a1
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@1a4
    const-string/jumbo v12, "mWifiLogProto.isScanningAlwaysEnabled="

    #@1a7
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1aa
    move-result-object v10

    #@1ab
    .line 979
    move-object/from16 v0, p0

    #@1ad
    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@1af
    iget-boolean v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    #@1b1
    .line 978
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1b4
    move-result-object v10

    #@1b5
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b8
    move-result-object v10

    #@1b9
    move-object/from16 v0, p2

    #@1bb
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1be
    .line 980
    new-instance v10, Ljava/lang/StringBuilder;

    #@1c0
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@1c3
    const-string/jumbo v12, "mWifiLogProto.numNetworksAddedByUser="

    #@1c6
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c9
    move-result-object v10

    #@1ca
    .line 981
    move-object/from16 v0, p0

    #@1cc
    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@1ce
    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    #@1d0
    .line 980
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d3
    move-result-object v10

    #@1d4
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d7
    move-result-object v10

    #@1d8
    move-object/from16 v0, p2

    #@1da
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1dd
    .line 982
    new-instance v10, Ljava/lang/StringBuilder;

    #@1df
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@1e2
    const-string/jumbo v12, "mWifiLogProto.numNetworksAddedByApps="

    #@1e5
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e8
    move-result-object v10

    #@1e9
    .line 983
    move-object/from16 v0, p0

    #@1eb
    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@1ed
    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    #@1ef
    .line 982
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f2
    move-result-object v10

    #@1f3
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f6
    move-result-object v10

    #@1f7
    move-object/from16 v0, p2

    #@1f9
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1fc
    .line 984
    new-instance v10, Ljava/lang/StringBuilder;

    #@1fe
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@201
    const-string/jumbo v12, "mWifiLogProto.numNonEmptyScanResults="

    #@204
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@207
    move-result-object v10

    #@208
    .line 985
    move-object/from16 v0, p0

    #@20a
    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@20c
    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    #@20e
    .line 984
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@211
    move-result-object v10

    #@212
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@215
    move-result-object v10

    #@216
    move-object/from16 v0, p2

    #@218
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@21b
    .line 986
    new-instance v10, Ljava/lang/StringBuilder;

    #@21d
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@220
    const-string/jumbo v12, "mWifiLogProto.numEmptyScanResults="

    #@223
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@226
    move-result-object v10

    #@227
    .line 987
    move-object/from16 v0, p0

    #@229
    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@22b
    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    #@22d
    .line 986
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@230
    move-result-object v10

    #@231
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@234
    move-result-object v10

    #@235
    move-object/from16 v0, p2

    #@237
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@23a
    .line 988
    new-instance v10, Ljava/lang/StringBuilder;

    #@23c
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@23f
    const-string/jumbo v12, "mWifiLogProto.numOneshotScans="

    #@242
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@245
    move-result-object v10

    #@246
    .line 989
    move-object/from16 v0, p0

    #@248
    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@24a
    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOneshotScans:I

    #@24c
    .line 988
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24f
    move-result-object v10

    #@250
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@253
    move-result-object v10

    #@254
    move-object/from16 v0, p2

    #@256
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@259
    .line 990
    new-instance v10, Ljava/lang/StringBuilder;

    #@25b
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@25e
    const-string/jumbo v12, "mWifiLogProto.numBackgroundScans="

    #@261
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@264
    move-result-object v10

    #@265
    .line 991
    move-object/from16 v0, p0

    #@267
    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@269
    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    #@26b
    .line 990
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26e
    move-result-object v10

    #@26f
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@272
    move-result-object v10

    #@273
    move-object/from16 v0, p2

    #@275
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@278
    .line 993
    const-string/jumbo v10, "mScanReturnEntries:"

    #@27b
    move-object/from16 v0, p2

    #@27d
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@280
    .line 994
    new-instance v10, Ljava/lang/StringBuilder;

    #@282
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@285
    const-string/jumbo v12, "  SCAN_UNKNOWN: "

    #@288
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28b
    move-result-object v10

    #@28c
    .line 995
    const/4 v12, 0x0

    #@28d
    .line 994
    move-object/from16 v0, p0

    #@28f
    invoke-virtual {v0, v12}, Lcom/android/server/wifi/WifiMetrics;->getScanReturnEntry(I)I

    #@292
    move-result v12

    #@293
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@296
    move-result-object v10

    #@297
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29a
    move-result-object v10

    #@29b
    move-object/from16 v0, p2

    #@29d
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2a0
    .line 996
    new-instance v10, Ljava/lang/StringBuilder;

    #@2a2
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@2a5
    const-string/jumbo v12, "  SCAN_SUCCESS: "

    #@2a8
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ab
    move-result-object v10

    #@2ac
    .line 997
    const/4 v12, 0x1

    #@2ad
    .line 996
    move-object/from16 v0, p0

    #@2af
    invoke-virtual {v0, v12}, Lcom/android/server/wifi/WifiMetrics;->getScanReturnEntry(I)I

    #@2b2
    move-result v12

    #@2b3
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b6
    move-result-object v10

    #@2b7
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2ba
    move-result-object v10

    #@2bb
    move-object/from16 v0, p2

    #@2bd
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2c0
    .line 998
    new-instance v10, Ljava/lang/StringBuilder;

    #@2c2
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@2c5
    const-string/jumbo v12, "  SCAN_FAILURE_INTERRUPTED: "

    #@2c8
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2cb
    move-result-object v10

    #@2cc
    .line 999
    const/4 v12, 0x2

    #@2cd
    .line 998
    move-object/from16 v0, p0

    #@2cf
    invoke-virtual {v0, v12}, Lcom/android/server/wifi/WifiMetrics;->getScanReturnEntry(I)I

    #@2d2
    move-result v12

    #@2d3
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d6
    move-result-object v10

    #@2d7
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2da
    move-result-object v10

    #@2db
    move-object/from16 v0, p2

    #@2dd
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2e0
    .line 1000
    new-instance v10, Ljava/lang/StringBuilder;

    #@2e2
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@2e5
    const-string/jumbo v12, "  SCAN_FAILURE_INVALID_CONFIGURATION: "

    #@2e8
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2eb
    move-result-object v10

    #@2ec
    .line 1001
    const/4 v12, 0x3

    #@2ed
    .line 1000
    move-object/from16 v0, p0

    #@2ef
    invoke-virtual {v0, v12}, Lcom/android/server/wifi/WifiMetrics;->getScanReturnEntry(I)I

    #@2f2
    move-result v12

    #@2f3
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f6
    move-result-object v10

    #@2f7
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2fa
    move-result-object v10

    #@2fb
    move-object/from16 v0, p2

    #@2fd
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@300
    .line 1002
    new-instance v10, Ljava/lang/StringBuilder;

    #@302
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@305
    const-string/jumbo v12, "  FAILURE_WIFI_DISABLED: "

    #@308
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30b
    move-result-object v10

    #@30c
    .line 1003
    const/4 v12, 0x4

    #@30d
    .line 1002
    move-object/from16 v0, p0

    #@30f
    invoke-virtual {v0, v12}, Lcom/android/server/wifi/WifiMetrics;->getScanReturnEntry(I)I

    #@312
    move-result v12

    #@313
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@316
    move-result-object v10

    #@317
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31a
    move-result-object v10

    #@31b
    move-object/from16 v0, p2

    #@31d
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@320
    .line 1005
    const-string/jumbo v10, "mSystemStateEntries: <state><screenOn> : <scansInitiated>"

    #@323
    move-object/from16 v0, p2

    #@325
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@328
    .line 1006
    new-instance v10, Ljava/lang/StringBuilder;

    #@32a
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@32d
    const-string/jumbo v12, "  WIFI_UNKNOWN       ON: "

    #@330
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@333
    move-result-object v10

    #@334
    .line 1007
    const/4 v12, 0x0

    #@335
    const/4 v13, 0x1

    #@336
    move-object/from16 v0, p0

    #@338
    invoke-virtual {v0, v12, v13}, Lcom/android/server/wifi/WifiMetrics;->getSystemStateCount(IZ)I

    #@33b
    move-result v12

    #@33c
    .line 1006
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33f
    move-result-object v10

    #@340
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@343
    move-result-object v10

    #@344
    move-object/from16 v0, p2

    #@346
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@349
    .line 1008
    new-instance v10, Ljava/lang/StringBuilder;

    #@34b
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@34e
    const-string/jumbo v12, "  WIFI_DISABLED      ON: "

    #@351
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@354
    move-result-object v10

    #@355
    .line 1009
    const/4 v12, 0x1

    #@356
    const/4 v13, 0x1

    #@357
    move-object/from16 v0, p0

    #@359
    invoke-virtual {v0, v12, v13}, Lcom/android/server/wifi/WifiMetrics;->getSystemStateCount(IZ)I

    #@35c
    move-result v12

    #@35d
    .line 1008
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@360
    move-result-object v10

    #@361
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@364
    move-result-object v10

    #@365
    move-object/from16 v0, p2

    #@367
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@36a
    .line 1010
    new-instance v10, Ljava/lang/StringBuilder;

    #@36c
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@36f
    const-string/jumbo v12, "  WIFI_DISCONNECTED  ON: "

    #@372
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@375
    move-result-object v10

    #@376
    .line 1011
    const/4 v12, 0x2

    #@377
    const/4 v13, 0x1

    #@378
    move-object/from16 v0, p0

    #@37a
    invoke-virtual {v0, v12, v13}, Lcom/android/server/wifi/WifiMetrics;->getSystemStateCount(IZ)I

    #@37d
    move-result v12

    #@37e
    .line 1010
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@381
    move-result-object v10

    #@382
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@385
    move-result-object v10

    #@386
    move-object/from16 v0, p2

    #@388
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@38b
    .line 1012
    new-instance v10, Ljava/lang/StringBuilder;

    #@38d
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@390
    const-string/jumbo v12, "  WIFI_ASSOCIATED    ON: "

    #@393
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@396
    move-result-object v10

    #@397
    .line 1013
    const/4 v12, 0x3

    #@398
    const/4 v13, 0x1

    #@399
    move-object/from16 v0, p0

    #@39b
    invoke-virtual {v0, v12, v13}, Lcom/android/server/wifi/WifiMetrics;->getSystemStateCount(IZ)I

    #@39e
    move-result v12

    #@39f
    .line 1012
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a2
    move-result-object v10

    #@3a3
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a6
    move-result-object v10

    #@3a7
    move-object/from16 v0, p2

    #@3a9
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3ac
    .line 1014
    new-instance v10, Ljava/lang/StringBuilder;

    #@3ae
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@3b1
    const-string/jumbo v12, "  WIFI_UNKNOWN      OFF: "

    #@3b4
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b7
    move-result-object v10

    #@3b8
    .line 1015
    const/4 v12, 0x0

    #@3b9
    const/4 v13, 0x0

    #@3ba
    move-object/from16 v0, p0

    #@3bc
    invoke-virtual {v0, v12, v13}, Lcom/android/server/wifi/WifiMetrics;->getSystemStateCount(IZ)I

    #@3bf
    move-result v12

    #@3c0
    .line 1014
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c3
    move-result-object v10

    #@3c4
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c7
    move-result-object v10

    #@3c8
    move-object/from16 v0, p2

    #@3ca
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3cd
    .line 1016
    new-instance v10, Ljava/lang/StringBuilder;

    #@3cf
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@3d2
    const-string/jumbo v12, "  WIFI_DISABLED     OFF: "

    #@3d5
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d8
    move-result-object v10

    #@3d9
    .line 1017
    const/4 v12, 0x1

    #@3da
    const/4 v13, 0x0

    #@3db
    move-object/from16 v0, p0

    #@3dd
    invoke-virtual {v0, v12, v13}, Lcom/android/server/wifi/WifiMetrics;->getSystemStateCount(IZ)I

    #@3e0
    move-result v12

    #@3e1
    .line 1016
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e4
    move-result-object v10

    #@3e5
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e8
    move-result-object v10

    #@3e9
    move-object/from16 v0, p2

    #@3eb
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3ee
    .line 1018
    new-instance v10, Ljava/lang/StringBuilder;

    #@3f0
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@3f3
    const-string/jumbo v12, "  WIFI_DISCONNECTED OFF: "

    #@3f6
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f9
    move-result-object v10

    #@3fa
    .line 1019
    const/4 v12, 0x2

    #@3fb
    const/4 v13, 0x0

    #@3fc
    move-object/from16 v0, p0

    #@3fe
    invoke-virtual {v0, v12, v13}, Lcom/android/server/wifi/WifiMetrics;->getSystemStateCount(IZ)I

    #@401
    move-result v12

    #@402
    .line 1018
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@405
    move-result-object v10

    #@406
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@409
    move-result-object v10

    #@40a
    move-object/from16 v0, p2

    #@40c
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@40f
    .line 1020
    new-instance v10, Ljava/lang/StringBuilder;

    #@411
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@414
    const-string/jumbo v12, "  WIFI_ASSOCIATED   OFF: "

    #@417
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41a
    move-result-object v10

    #@41b
    .line 1021
    const/4 v12, 0x3

    #@41c
    const/4 v13, 0x0

    #@41d
    move-object/from16 v0, p0

    #@41f
    invoke-virtual {v0, v12, v13}, Lcom/android/server/wifi/WifiMetrics;->getSystemStateCount(IZ)I

    #@422
    move-result v12

    #@423
    .line 1020
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@426
    move-result-object v10

    #@427
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42a
    move-result-object v10

    #@42b
    move-object/from16 v0, p2

    #@42d
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@430
    .line 1022
    new-instance v10, Ljava/lang/StringBuilder;

    #@432
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@435
    const-string/jumbo v12, "mWifiLogProto.numConnectivityWatchdogPnoGood="

    #@438
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43b
    move-result-object v10

    #@43c
    .line 1023
    move-object/from16 v0, p0

    #@43e
    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@440
    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    #@442
    .line 1022
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@445
    move-result-object v10

    #@446
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@449
    move-result-object v10

    #@44a
    move-object/from16 v0, p2

    #@44c
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@44f
    .line 1024
    new-instance v10, Ljava/lang/StringBuilder;

    #@451
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@454
    const-string/jumbo v12, "mWifiLogProto.numConnectivityWatchdogPnoBad="

    #@457
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45a
    move-result-object v10

    #@45b
    .line 1025
    move-object/from16 v0, p0

    #@45d
    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@45f
    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    #@461
    .line 1024
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@464
    move-result-object v10

    #@465
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@468
    move-result-object v10

    #@469
    move-object/from16 v0, p2

    #@46b
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@46e
    .line 1026
    new-instance v10, Ljava/lang/StringBuilder;

    #@470
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@473
    const-string/jumbo v12, "mWifiLogProto.numConnectivityWatchdogBackgroundGood="

    #@476
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@479
    move-result-object v10

    #@47a
    .line 1027
    move-object/from16 v0, p0

    #@47c
    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@47e
    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    #@480
    .line 1026
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@483
    move-result-object v10

    #@484
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@487
    move-result-object v10

    #@488
    move-object/from16 v0, p2

    #@48a
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@48d
    .line 1028
    new-instance v10, Ljava/lang/StringBuilder;

    #@48f
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@492
    const-string/jumbo v12, "mWifiLogProto.numConnectivityWatchdogBackgroundBad="

    #@495
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@498
    move-result-object v10

    #@499
    .line 1029
    move-object/from16 v0, p0

    #@49b
    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@49d
    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    #@49f
    .line 1028
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4a2
    move-result-object v10

    #@4a3
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a6
    move-result-object v10

    #@4a7
    move-object/from16 v0, p2

    #@4a9
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4ac
    .line 1030
    new-instance v10, Ljava/lang/StringBuilder;

    #@4ae
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@4b1
    const-string/jumbo v12, "mWifiLogProto.numLastResortWatchdogTriggers="

    #@4b4
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b7
    move-result-object v10

    #@4b8
    .line 1031
    move-object/from16 v0, p0

    #@4ba
    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@4bc
    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    #@4be
    .line 1030
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c1
    move-result-object v10

    #@4c2
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c5
    move-result-object v10

    #@4c6
    move-object/from16 v0, p2

    #@4c8
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4cb
    .line 1032
    new-instance v10, Ljava/lang/StringBuilder;

    #@4cd
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@4d0
    const-string/jumbo v12, "mWifiLogProto.numLastResortWatchdogBadAssociationNetworksTotal="

    #@4d3
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d6
    move-result-object v10

    #@4d7
    .line 1033
    move-object/from16 v0, p0

    #@4d9
    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@4db
    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    #@4dd
    .line 1032
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e0
    move-result-object v10

    #@4e1
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e4
    move-result-object v10

    #@4e5
    move-object/from16 v0, p2

    #@4e7
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4ea
    .line 1034
    new-instance v10, Ljava/lang/StringBuilder;

    #@4ec
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@4ef
    const-string/jumbo v12, "mWifiLogProto.numLastResortWatchdogBadAuthenticationNetworksTotal="

    #@4f2
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f5
    move-result-object v10

    #@4f6
    .line 1035
    move-object/from16 v0, p0

    #@4f8
    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@4fa
    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    #@4fc
    .line 1034
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4ff
    move-result-object v10

    #@500
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@503
    move-result-object v10

    #@504
    move-object/from16 v0, p2

    #@506
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@509
    .line 1036
    new-instance v10, Ljava/lang/StringBuilder;

    #@50b
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@50e
    const-string/jumbo v12, "mWifiLogProto.numLastResortWatchdogBadDhcpNetworksTotal="

    #@511
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@514
    move-result-object v10

    #@515
    .line 1037
    move-object/from16 v0, p0

    #@517
    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@519
    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    #@51b
    .line 1036
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@51e
    move-result-object v10

    #@51f
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@522
    move-result-object v10

    #@523
    move-object/from16 v0, p2

    #@525
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@528
    .line 1038
    new-instance v10, Ljava/lang/StringBuilder;

    #@52a
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@52d
    const-string/jumbo v12, "mWifiLogProto.numLastResortWatchdogBadOtherNetworksTotal="

    #@530
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@533
    move-result-object v10

    #@534
    .line 1039
    move-object/from16 v0, p0

    #@536
    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@538
    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    #@53a
    .line 1038
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@53d
    move-result-object v10

    #@53e
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@541
    move-result-object v10

    #@542
    move-object/from16 v0, p2

    #@544
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@547
    .line 1040
    new-instance v10, Ljava/lang/StringBuilder;

    #@549
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@54c
    const-string/jumbo v12, "mWifiLogProto.numLastResortWatchdogAvailableNetworksTotal="

    #@54f
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@552
    move-result-object v10

    #@553
    .line 1041
    move-object/from16 v0, p0

    #@555
    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@557
    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    #@559
    .line 1040
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@55c
    move-result-object v10

    #@55d
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@560
    move-result-object v10

    #@561
    move-object/from16 v0, p2

    #@563
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@566
    .line 1042
    new-instance v10, Ljava/lang/StringBuilder;

    #@568
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@56b
    const-string/jumbo v12, "mWifiLogProto.numLastResortWatchdogTriggersWithBadAssociation="

    #@56e
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@571
    move-result-object v10

    #@572
    .line 1043
    move-object/from16 v0, p0

    #@574
    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@576
    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    #@578
    .line 1042
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@57b
    move-result-object v10

    #@57c
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57f
    move-result-object v10

    #@580
    move-object/from16 v0, p2

    #@582
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@585
    .line 1044
    new-instance v10, Ljava/lang/StringBuilder;

    #@587
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@58a
    const-string/jumbo v12, "mWifiLogProto.numLastResortWatchdogTriggersWithBadAuthentication="

    #@58d
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@590
    move-result-object v10

    #@591
    .line 1045
    move-object/from16 v0, p0

    #@593
    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@595
    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    #@597
    .line 1044
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@59a
    move-result-object v10

    #@59b
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59e
    move-result-object v10

    #@59f
    move-object/from16 v0, p2

    #@5a1
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5a4
    .line 1046
    new-instance v10, Ljava/lang/StringBuilder;

    #@5a6
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@5a9
    const-string/jumbo v12, "mWifiLogProto.numLastResortWatchdogTriggersWithBadDhcp="

    #@5ac
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5af
    move-result-object v10

    #@5b0
    .line 1047
    move-object/from16 v0, p0

    #@5b2
    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@5b4
    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    #@5b6
    .line 1046
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5b9
    move-result-object v10

    #@5ba
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5bd
    move-result-object v10

    #@5be
    move-object/from16 v0, p2

    #@5c0
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5c3
    .line 1048
    new-instance v10, Ljava/lang/StringBuilder;

    #@5c5
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@5c8
    const-string/jumbo v12, "mWifiLogProto.numLastResortWatchdogTriggersWithBadOther="

    #@5cb
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5ce
    move-result-object v10

    #@5cf
    .line 1049
    move-object/from16 v0, p0

    #@5d1
    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@5d3
    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    #@5d5
    .line 1048
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5d8
    move-result-object v10

    #@5d9
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5dc
    move-result-object v10

    #@5dd
    move-object/from16 v0, p2

    #@5df
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5e2
    .line 1050
    new-instance v10, Ljava/lang/StringBuilder;

    #@5e4
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@5e7
    const-string/jumbo v12, "mWifiLogProto.numLastResortWatchdogSuccesses="

    #@5ea
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5ed
    move-result-object v10

    #@5ee
    .line 1051
    move-object/from16 v0, p0

    #@5f0
    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@5f2
    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    #@5f4
    .line 1050
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5f7
    move-result-object v10

    #@5f8
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5fb
    move-result-object v10

    #@5fc
    move-object/from16 v0, p2

    #@5fe
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@601
    .line 1052
    new-instance v10, Ljava/lang/StringBuilder;

    #@603
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@606
    const-string/jumbo v12, "mWifiLogProto.recordDurationSec="

    #@609
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60c
    move-result-object v10

    #@60d
    .line 1053
    move-object/from16 v0, p0

    #@60f
    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mClock:Lcom/android/server/wifi/Clock;

    #@611
    invoke-virtual {v12}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    #@614
    move-result-wide v12

    #@615
    const-wide/16 v14, 0x3e8

    #@617
    div-long/2addr v12, v14

    #@618
    move-object/from16 v0, p0

    #@61a
    iget-wide v14, v0, Lcom/android/server/wifi/WifiMetrics;->mRecordStartTimeSec:J

    #@61c
    sub-long/2addr v12, v14

    #@61d
    .line 1052
    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@620
    move-result-object v10

    #@621
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@624
    move-result-object v10

    #@625
    move-object/from16 v0, p2

    #@627
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@62a
    .line 1054
    const-string/jumbo v10, "mWifiLogProto.rssiPollRssiCount: Printing counts for [-127, 0]"

    #@62d
    move-object/from16 v0, p2

    #@62f
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@632
    .line 1056
    new-instance v8, Ljava/lang/StringBuilder;

    #@634
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@637
    .line 1057
    .local v8, "sb":Ljava/lang/StringBuilder;
    const/16 v6, -0x7f

    #@639
    .local v6, "i":I
    :goto_4
    if-gtz v6, :cond_6

    #@63b
    .line 1058
    move-object/from16 v0, p0

    #@63d
    iget-object v10, v0, Lcom/android/server/wifi/WifiMetrics;->mRssiPollCounts:Landroid/util/SparseIntArray;

    #@63f
    invoke-virtual {v10, v6}, Landroid/util/SparseIntArray;->get(I)I

    #@642
    move-result v10

    #@643
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@646
    move-result-object v10

    #@647
    const-string/jumbo v12, " "

    #@64a
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64d
    .line 1057
    add-int/lit8 v6, v6, 0x1

    #@64f
    goto :goto_4

    #@650
    .line 1060
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    #@652
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@655
    const-string/jumbo v12, "  "

    #@658
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65b
    move-result-object v10

    #@65c
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65f
    move-result-object v12

    #@660
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@663
    move-result-object v10

    #@664
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@667
    move-result-object v10

    #@668
    move-object/from16 v0, p2

    #@66a
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@66d
    .line 1061
    const-string/jumbo v10, "mWifiLogProto.alertReasonCounts="

    #@670
    move-object/from16 v0, p2

    #@672
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@675
    .line 1062
    const/4 v10, 0x0

    #@676
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    #@679
    .line 1063
    const/4 v6, 0x0

    #@67a
    .line 1064
    :goto_5
    const/16 v10, 0x40

    #@67c
    .line 1063
    if-gt v6, v10, :cond_8

    #@67e
    .line 1065
    move-object/from16 v0, p0

    #@680
    iget-object v10, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiAlertReasonCounts:Landroid/util/SparseIntArray;

    #@682
    invoke-virtual {v10, v6}, Landroid/util/SparseIntArray;->get(I)I

    #@685
    move-result v2

    #@686
    .line 1066
    .local v2, "count":I
    if-lez v2, :cond_7

    #@688
    .line 1067
    const-string/jumbo v10, "("

    #@68b
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68e
    move-result-object v10

    #@68f
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@692
    move-result-object v10

    #@693
    const-string/jumbo v12, ","

    #@696
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@699
    move-result-object v10

    #@69a
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@69d
    move-result-object v10

    #@69e
    const-string/jumbo v12, "),"

    #@6a1
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a4
    .line 1064
    :cond_7
    add-int/lit8 v6, v6, 0x1

    #@6a6
    goto :goto_5

    #@6a7
    .line 1070
    .end local v2    # "count":I
    :cond_8
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    #@6aa
    move-result v10

    #@6ab
    const/4 v12, 0x1

    #@6ac
    if-le v10, v12, :cond_9

    #@6ae
    .line 1071
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    #@6b1
    move-result v10

    #@6b2
    add-int/lit8 v10, v10, -0x1

    #@6b4
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    #@6b7
    .line 1072
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6ba
    move-result-object v10

    #@6bb
    move-object/from16 v0, p2

    #@6bd
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6c0
    .line 1076
    :goto_6
    new-instance v10, Ljava/lang/StringBuilder;

    #@6c2
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@6c5
    const-string/jumbo v12, "mWifiLogProto.numTotalScanResults="

    #@6c8
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6cb
    move-result-object v10

    #@6cc
    .line 1077
    move-object/from16 v0, p0

    #@6ce
    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@6d0
    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    #@6d2
    .line 1076
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6d5
    move-result-object v10

    #@6d6
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d9
    move-result-object v10

    #@6da
    move-object/from16 v0, p2

    #@6dc
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6df
    .line 1078
    new-instance v10, Ljava/lang/StringBuilder;

    #@6e1
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@6e4
    const-string/jumbo v12, "mWifiLogProto.numOpenNetworkScanResults="

    #@6e7
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6ea
    move-result-object v10

    #@6eb
    .line 1079
    move-object/from16 v0, p0

    #@6ed
    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@6ef
    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    #@6f1
    .line 1078
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6f4
    move-result-object v10

    #@6f5
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f8
    move-result-object v10

    #@6f9
    move-object/from16 v0, p2

    #@6fb
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6fe
    .line 1080
    new-instance v10, Ljava/lang/StringBuilder;

    #@700
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@703
    const-string/jumbo v12, "mWifiLogProto.numPersonalNetworkScanResults="

    #@706
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@709
    move-result-object v10

    #@70a
    .line 1081
    move-object/from16 v0, p0

    #@70c
    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@70e
    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    #@710
    .line 1080
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@713
    move-result-object v10

    #@714
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@717
    move-result-object v10

    #@718
    move-object/from16 v0, p2

    #@71a
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@71d
    .line 1082
    new-instance v10, Ljava/lang/StringBuilder;

    #@71f
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@722
    const-string/jumbo v12, "mWifiLogProto.numEnterpriseNetworkScanResults="

    #@725
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@728
    move-result-object v10

    #@729
    .line 1083
    move-object/from16 v0, p0

    #@72b
    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@72d
    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    #@72f
    .line 1082
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@732
    move-result-object v10

    #@733
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@736
    move-result-object v10

    #@737
    move-object/from16 v0, p2

    #@739
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@73c
    .line 1084
    new-instance v10, Ljava/lang/StringBuilder;

    #@73e
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@741
    const-string/jumbo v12, "mWifiLogProto.numHiddenNetworkScanResults="

    #@744
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@747
    move-result-object v10

    #@748
    .line 1085
    move-object/from16 v0, p0

    #@74a
    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@74c
    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    #@74e
    .line 1084
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@751
    move-result-object v10

    #@752
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@755
    move-result-object v10

    #@756
    move-object/from16 v0, p2

    #@758
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@75b
    .line 1086
    new-instance v10, Ljava/lang/StringBuilder;

    #@75d
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@760
    const-string/jumbo v12, "mWifiLogProto.numHotspot2R1NetworkScanResults="

    #@763
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@766
    move-result-object v10

    #@767
    .line 1087
    move-object/from16 v0, p0

    #@769
    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@76b
    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    #@76d
    .line 1086
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@770
    move-result-object v10

    #@771
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@774
    move-result-object v10

    #@775
    move-object/from16 v0, p2

    #@777
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@77a
    .line 1088
    new-instance v10, Ljava/lang/StringBuilder;

    #@77c
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@77f
    const-string/jumbo v12, "mWifiLogProto.numHotspot2R2NetworkScanResults="

    #@782
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@785
    move-result-object v10

    #@786
    .line 1089
    move-object/from16 v0, p0

    #@788
    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@78a
    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    #@78c
    .line 1088
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@78f
    move-result-object v10

    #@790
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@793
    move-result-object v10

    #@794
    move-object/from16 v0, p2

    #@796
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@799
    .line 1090
    new-instance v10, Ljava/lang/StringBuilder;

    #@79b
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@79e
    const-string/jumbo v12, "mWifiLogProto.numScans="

    #@7a1
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a4
    move-result-object v10

    #@7a5
    move-object/from16 v0, p0

    #@7a7
    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@7a9
    iget v12, v12, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numScans:I

    #@7ab
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7ae
    move-result-object v10

    #@7af
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b2
    move-result-object v10

    #@7b3
    move-object/from16 v0, p2

    #@7b5
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7b8
    .line 1091
    const-string/jumbo v10, "mWifiLogProto.WifiScoreCount: [0, 60]"

    #@7bb
    move-object/from16 v0, p2

    #@7bd
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7c0
    .line 1093
    const/4 v6, 0x0

    #@7c1
    :goto_7
    const/16 v10, 0x3c

    #@7c3
    if-gt v6, v10, :cond_a

    #@7c5
    .line 1094
    new-instance v10, Ljava/lang/StringBuilder;

    #@7c7
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@7ca
    move-object/from16 v0, p0

    #@7cc
    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiScoreCounts:Landroid/util/SparseIntArray;

    #@7ce
    invoke-virtual {v12, v6}, Landroid/util/SparseIntArray;->get(I)I

    #@7d1
    move-result v12

    #@7d2
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7d5
    move-result-object v10

    #@7d6
    const-string/jumbo v12, " "

    #@7d9
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7dc
    move-result-object v10

    #@7dd
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e0
    move-result-object v10

    #@7e1
    move-object/from16 v0, p2

    #@7e3
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7e6
    .line 1093
    add-int/lit8 v6, v6, 0x1

    #@7e8
    goto :goto_7

    #@7e9
    .line 1074
    :cond_9
    const-string/jumbo v10, "()"

    #@7ec
    move-object/from16 v0, p2

    #@7ee
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7f1
    goto/16 :goto_6

    #@7f3
    .line 1096
    :cond_a
    const-string/jumbo v10, "\n"

    #@7f6
    move-object/from16 v0, p2

    #@7f8
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@7fb
    goto/16 :goto_2
.end method

.method public endConnectionEvent(II)V
    .locals 8
    .param p1, "level2FailureCode"    # I
    .param p2, "connectivityFailureCode"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 421
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 422
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 423
    if-ne p1, v1, :cond_2

    #@a
    .line 424
    if-ne p2, v1, :cond_1

    #@c
    const/4 v0, 0x1

    #@d
    .line 425
    .local v0, "result":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@f
    iget-object v3, v3, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@11
    if-eqz v0, :cond_3

    #@13
    :goto_1
    iput v1, v3, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->connectionResult:I

    #@15
    .line 426
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@17
    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics;->mClock:Lcom/android/server/wifi/Clock;

    #@19
    invoke-virtual {v3}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    #@1c
    move-result-wide v4

    #@1d
    invoke-static {v1, v4, v5}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-set2(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;J)J

    #@20
    .line 427
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@22
    iget-object v1, v1, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@24
    .line 428
    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@26
    invoke-static {v3}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-get2(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)J

    #@29
    move-result-wide v4

    #@2a
    .line 429
    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@2c
    invoke-static {v3}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-get3(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)J

    #@2f
    move-result-wide v6

    #@30
    .line 428
    sub-long/2addr v4, v6

    #@31
    .line 427
    long-to-int v3, v4

    #@32
    iput v3, v1, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->durationTakenToConnectMillis:I

    #@34
    .line 430
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@36
    iget-object v1, v1, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@38
    iput p1, v1, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->level2FailureCode:I

    #@3a
    .line 431
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@3c
    iget-object v1, v1, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@3e
    iput p2, v1, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->connectivityLevelFailureCode:I

    #@40
    .line 434
    const/4 v1, 0x0

    #@41
    iput-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@43
    .end local v0    # "result":Z
    :cond_0
    monitor-exit v2

    #@44
    .line 420
    return-void

    #@45
    .line 424
    :cond_1
    const/4 v0, 0x0

    #@46
    .restart local v0    # "result":Z
    goto :goto_0

    #@47
    .line 423
    .end local v0    # "result":Z
    :cond_2
    const/4 v0, 0x0

    #@48
    .restart local v0    # "result":Z
    goto :goto_0

    #@49
    .line 425
    :cond_3
    const/4 v1, 0x0

    #@4a
    goto :goto_1

    #@4b
    .line 421
    .end local v0    # "result":Z
    :catchall_0
    move-exception v1

    #@4c
    monitor-exit v2

    #@4d
    throw v1
.end method

.method public getBackgroundScanCount()I
    .locals 2

    #@0
    .prologue
    .line 594
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 595
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@5
    iget v0, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numBackgroundScans:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit v1

    #@8
    return v0

    #@9
    .line 594
    :catchall_0
    move-exception v0

    #@a
    monitor-exit v1

    #@b
    throw v0
.end method

.method public getOneshotScanCount()I
    .locals 2

    #@0
    .prologue
    .line 613
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 614
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@5
    iget v0, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOneshotScans:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit v1

    #@8
    return v0

    #@9
    .line 613
    :catchall_0
    move-exception v0

    #@a
    monitor-exit v1

    #@b
    throw v0
.end method

.method public getScanReturnEntry(I)I
    .locals 2
    .param p1, "scanReturnCode"    # I

    #@0
    .prologue
    .line 653
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 654
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mScanReturnEntries:Landroid/util/SparseIntArray;

    #@5
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    .line 653
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public getSystemStateCount(IZ)I
    .locals 4
    .param p1, "state"    # I
    .param p2, "screenOn"    # Z

    #@0
    .prologue
    .line 696
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 697
    mul-int/lit8 v3, p1, 0x2

    #@5
    if-eqz p2, :cond_0

    #@7
    const/4 v1, 0x1

    #@8
    :goto_0
    add-int v0, v3, v1

    #@a
    .line 698
    .local v0, "index":I
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiSystemStateEntries:Landroid/util/SparseIntArray;

    #@c
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result v1

    #@10
    monitor-exit v2

    #@11
    return v1

    #@12
    .line 697
    .end local v0    # "index":I
    :cond_0
    const/4 v1, 0x0

    #@13
    goto :goto_0

    #@14
    .line 696
    .restart local v0    # "index":I
    :catchall_0
    move-exception v1

    #@15
    monitor-exit v2

    #@16
    throw v1
.end method

.method public incrementAlertReasonCount(I)V
    .locals 4
    .param p1, "reason"    # I

    #@0
    .prologue
    .line 845
    const/16 v1, 0x40

    #@2
    if-gt p1, v1, :cond_0

    #@4
    .line 846
    if-gez p1, :cond_1

    #@6
    .line 847
    :cond_0
    const/4 p1, 0x0

    #@7
    .line 849
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@9
    monitor-enter v2

    #@a
    .line 850
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiAlertReasonCounts:Landroid/util/SparseIntArray;

    #@c
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    #@f
    move-result v0

    #@10
    .line 851
    .local v0, "alertCount":I
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiAlertReasonCounts:Landroid/util/SparseIntArray;

    #@12
    add-int/lit8 v3, v0, 0x1

    #@14
    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v2

    #@18
    .line 844
    return-void

    #@19
    .line 849
    .end local v0    # "alertCount":I
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit v2

    #@1b
    throw v1
.end method

.method public incrementBackgroundScanCount()V
    .locals 3

    #@0
    .prologue
    .line 585
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 586
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@5
    iget v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    #@7
    add-int/lit8 v2, v2, 0x1

    #@9
    iput v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numBackgroundScans:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 583
    return-void

    #@d
    .line 585
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public incrementEmptyScanResultCount()V
    .locals 3

    #@0
    .prologue
    .line 575
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 576
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@5
    iget v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    #@7
    add-int/lit8 v2, v2, 0x1

    #@9
    iput v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEmptyScanResults:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 573
    return-void

    #@d
    .line 575
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public incrementNonEmptyScanResultCount()V
    .locals 3

    #@0
    .prologue
    .line 565
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 566
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@5
    iget v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    #@7
    add-int/lit8 v2, v2, 0x1

    #@9
    iput v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 563
    return-void

    #@d
    .line 565
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public incrementNumConnectivityWatchdogBackgroundBad()V
    .locals 3

    #@0
    .prologue
    .line 811
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 812
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@5
    iget v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    #@7
    add-int/lit8 v2, v2, 0x1

    #@9
    iput v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 810
    return-void

    #@d
    .line 811
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public incrementNumConnectivityWatchdogBackgroundGood()V
    .locals 3

    #@0
    .prologue
    .line 803
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 804
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@5
    iget v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    #@7
    add-int/lit8 v2, v2, 0x1

    #@9
    iput v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 802
    return-void

    #@d
    .line 803
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public incrementNumConnectivityWatchdogPnoBad()V
    .locals 3

    #@0
    .prologue
    .line 795
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 796
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@5
    iget v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    #@7
    add-int/lit8 v2, v2, 0x1

    #@9
    iput v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 794
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

.method public incrementNumConnectivityWatchdogPnoGood()V
    .locals 3

    #@0
    .prologue
    .line 787
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 788
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@5
    iget v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    #@7
    add-int/lit8 v2, v2, 0x1

    #@9
    iput v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 786
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

.method public incrementNumLastResortWatchdogSuccesses()V
    .locals 3

    #@0
    .prologue
    .line 834
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 835
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@5
    iget v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    #@7
    add-int/lit8 v2, v2, 0x1

    #@9
    iput v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 833
    return-void

    #@d
    .line 834
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public incrementNumLastResortWatchdogTriggers()V
    .locals 3

    #@0
    .prologue
    .line 706
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 707
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@5
    iget v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    #@7
    add-int/lit8 v2, v2, 0x1

    #@9
    iput v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 705
    return-void

    #@d
    .line 706
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public incrementNumLastResortWatchdogTriggersWithBadAssociation()V
    .locals 3

    #@0
    .prologue
    .line 754
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 755
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@5
    iget v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    #@7
    add-int/lit8 v2, v2, 0x1

    #@9
    iput v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 753
    return-void

    #@d
    .line 754
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public incrementNumLastResortWatchdogTriggersWithBadAuthentication()V
    .locals 3

    #@0
    .prologue
    .line 762
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 763
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@5
    iget v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    #@7
    add-int/lit8 v2, v2, 0x1

    #@9
    iput v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 761
    return-void

    #@d
    .line 762
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public incrementNumLastResortWatchdogTriggersWithBadDhcp()V
    .locals 3

    #@0
    .prologue
    .line 770
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 771
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@5
    iget v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    #@7
    add-int/lit8 v2, v2, 0x1

    #@9
    iput v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 769
    return-void

    #@d
    .line 770
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public incrementNumLastResortWatchdogTriggersWithBadOther()V
    .locals 3

    #@0
    .prologue
    .line 778
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 779
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@5
    iget v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    #@7
    add-int/lit8 v2, v2, 0x1

    #@9
    iput v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 777
    return-void

    #@d
    .line 778
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public incrementOneshotScanCount()V
    .locals 3

    #@0
    .prologue
    .line 603
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 604
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@5
    iget v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOneshotScans:I

    #@7
    add-int/lit8 v2, v2, 0x1

    #@9
    iput v2, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOneshotScans:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 606
    iget v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiState:I

    #@e
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiMetrics;->mScreenOn:Z

    #@10
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiMetrics;->incrementWifiSystemScanStateCount(IZ)V

    #@13
    .line 602
    return-void

    #@14
    .line 603
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public incrementRssiPollRssiCount(I)V
    .locals 4
    .param p1, "rssi"    # I

    #@0
    .prologue
    .line 821
    const/16 v1, -0x7f

    #@2
    if-lt p1, v1, :cond_0

    #@4
    if-lez p1, :cond_1

    #@6
    .line 822
    :cond_0
    return-void

    #@7
    .line 824
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@9
    monitor-enter v2

    #@a
    .line 825
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mRssiPollCounts:Landroid/util/SparseIntArray;

    #@c
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    #@f
    move-result v0

    #@10
    .line 826
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mRssiPollCounts:Landroid/util/SparseIntArray;

    #@12
    add-int/lit8 v3, v0, 0x1

    #@14
    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v2

    #@18
    .line 820
    return-void

    #@19
    .line 824
    .end local v0    # "count":I
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit v2

    #@1b
    throw v1
.end method

.method public incrementScanReturnEntry(II)V
    .locals 3
    .param p1, "scanReturnCode"    # I
    .param p2, "countToAdd"    # I

    #@0
    .prologue
    .line 641
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 643
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mScanReturnEntries:Landroid/util/SparseIntArray;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    #@8
    move-result v0

    #@9
    .line 644
    .local v0, "entry":I
    add-int/2addr v0, p2

    #@a
    .line 645
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mScanReturnEntries:Landroid/util/SparseIntArray;

    #@c
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit v2

    #@10
    .line 640
    return-void

    #@11
    .line 641
    .end local v0    # "entry":I
    :catchall_0
    move-exception v1

    #@12
    monitor-exit v2

    #@13
    throw v1
.end method

.method public incrementWifiScoreCount(I)V
    .locals 4
    .param p1, "score"    # I

    #@0
    .prologue
    .line 914
    if-ltz p1, :cond_0

    #@2
    const/16 v1, 0x3c

    #@4
    if-le p1, v1, :cond_1

    #@6
    .line 915
    :cond_0
    return-void

    #@7
    .line 917
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@9
    monitor-enter v2

    #@a
    .line 918
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiScoreCounts:Landroid/util/SparseIntArray;

    #@c
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    #@f
    move-result v0

    #@10
    .line 919
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiScoreCounts:Landroid/util/SparseIntArray;

    #@12
    add-int/lit8 v3, v0, 0x1

    #@14
    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v2

    #@18
    .line 913
    return-void

    #@19
    .line 917
    .end local v0    # "count":I
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit v2

    #@1b
    throw v1
.end method

.method public incrementWifiSystemScanStateCount(IZ)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "screenOn"    # Z

    #@0
    .prologue
    .line 680
    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 685
    mul-int/lit8 v4, p1, 0x2

    #@5
    if-eqz p2, :cond_0

    #@7
    const/4 v2, 0x1

    #@8
    :goto_0
    add-int v1, v4, v2

    #@a
    .line 686
    .local v1, "index":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiSystemStateEntries:Landroid/util/SparseIntArray;

    #@c
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    #@f
    move-result v0

    #@10
    .line 687
    .local v0, "entry":I
    add-int/lit8 v0, v0, 0x1

    #@12
    .line 688
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiSystemStateEntries:Landroid/util/SparseIntArray;

    #@14
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v3

    #@18
    .line 679
    return-void

    #@19
    .line 685
    .end local v0    # "entry":I
    .end local v1    # "index":I
    :cond_0
    const/4 v2, 0x0

    #@1a
    goto :goto_0

    #@1b
    .line 680
    .restart local v1    # "index":I
    :catchall_0
    move-exception v2

    #@1c
    monitor-exit v3

    #@1d
    throw v2
.end method

.method public setConnectionEventRoamType(I)V
    .locals 2
    .param p1, "roamType"    # I

    #@0
    .prologue
    .line 384
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 385
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 386
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@9
    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@b
    iput p1, v0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->roamType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    :cond_0
    monitor-exit v1

    #@e
    .line 383
    return-void

    #@f
    .line 384
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method public setConnectionScanDetail(Lcom/android/server/wifi/ScanDetail;)V
    .locals 6
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;

    #@0
    .prologue
    .line 395
    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 396
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@5
    if-eqz v2, :cond_0

    #@7
    if-eqz p1, :cond_0

    #@9
    .line 397
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@c
    move-result-object v0

    #@d
    .line 398
    .local v0, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    #@10
    move-result-object v1

    #@11
    .line 401
    .local v1, "scanResult":Landroid/net/wifi/ScanResult;
    if-eqz v0, :cond_0

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 402
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@17
    invoke-static {v2}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-get1(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    if-eqz v2, :cond_0

    #@1d
    .line 403
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@1f
    invoke-static {v2}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-get1(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    .line 404
    new-instance v4, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v5, "\""

    #@2b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getSSID()Ljava/lang/String;

    #@32
    move-result-object v5

    #@33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    const-string/jumbo v5, "\""

    #@3a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v4

    #@42
    .line 403
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v2

    #@46
    .line 401
    if-eqz v2, :cond_0

    #@48
    .line 405
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiMetrics;->updateMetricsFromNetworkDetail(Lcom/android/server/wifi/hotspot2/NetworkDetail;)V

    #@4b
    .line 406
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiMetrics;->updateMetricsFromScanResult(Landroid/net/wifi/ScanResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4e
    .end local v0    # "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .end local v1    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_0
    monitor-exit v3

    #@4f
    .line 394
    return-void

    #@50
    .line 395
    :catchall_0
    move-exception v2

    #@51
    monitor-exit v3

    #@52
    throw v2
.end method

.method setIsLocationEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 549
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 550
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@5
    iput-boolean p1, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isLocationEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit v1

    #@8
    .line 548
    return-void

    #@9
    .line 549
    :catchall_0
    move-exception v0

    #@a
    monitor-exit v1

    #@b
    throw v0
.end method

.method setIsScanningAlwaysEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 555
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 556
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@5
    iput-boolean p1, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit v1

    #@8
    .line 554
    return-void

    #@9
    .line 555
    :catchall_0
    move-exception v0

    #@a
    monitor-exit v1

    #@b
    throw v0
.end method

.method setNumEnterpriseNetworks(I)V
    .locals 2
    .param p1, "num"    # I

    #@0
    .prologue
    .line 519
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 520
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@5
    iput p1, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit v1

    #@8
    .line 518
    return-void

    #@9
    .line 519
    :catchall_0
    move-exception v0

    #@a
    monitor-exit v1

    #@b
    throw v0
.end method

.method setNumHiddenNetworks(I)V
    .locals 2
    .param p1, "num"    # I

    #@0
    .prologue
    .line 525
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 526
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@5
    iput p1, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHiddenNetworks:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit v1

    #@8
    .line 524
    return-void

    #@9
    .line 525
    :catchall_0
    move-exception v0

    #@a
    monitor-exit v1

    #@b
    throw v0
.end method

.method setNumNetworksAddedByApps(I)V
    .locals 2
    .param p1, "num"    # I

    #@0
    .prologue
    .line 543
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 544
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@5
    iput p1, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit v1

    #@8
    .line 542
    return-void

    #@9
    .line 543
    :catchall_0
    move-exception v0

    #@a
    monitor-exit v1

    #@b
    throw v0
.end method

.method setNumNetworksAddedByUser(I)V
    .locals 2
    .param p1, "num"    # I

    #@0
    .prologue
    .line 537
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 538
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@5
    iput p1, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit v1

    #@8
    .line 536
    return-void

    #@9
    .line 537
    :catchall_0
    move-exception v0

    #@a
    monitor-exit v1

    #@b
    throw v0
.end method

.method setNumOpenNetworks(I)V
    .locals 2
    .param p1, "num"    # I

    #@0
    .prologue
    .line 507
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 508
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@5
    iput p1, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworks:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit v1

    #@8
    .line 506
    return-void

    #@9
    .line 507
    :catchall_0
    move-exception v0

    #@a
    monitor-exit v1

    #@b
    throw v0
.end method

.method setNumPasspointNetworks(I)V
    .locals 2
    .param p1, "num"    # I

    #@0
    .prologue
    .line 531
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 532
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@5
    iput p1, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPasspointNetworks:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit v1

    #@8
    .line 530
    return-void

    #@9
    .line 531
    :catchall_0
    move-exception v0

    #@a
    monitor-exit v1

    #@b
    throw v0
.end method

.method setNumPersonalNetworks(I)V
    .locals 2
    .param p1, "num"    # I

    #@0
    .prologue
    .line 513
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 514
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@5
    iput p1, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworks:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit v1

    #@8
    .line 512
    return-void

    #@9
    .line 513
    :catchall_0
    move-exception v0

    #@a
    monitor-exit v1

    #@b
    throw v0
.end method

.method setNumSavedNetworks(I)V
    .locals 2
    .param p1, "num"    # I

    #@0
    .prologue
    .line 501
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 502
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@5
    iput p1, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numSavedNetworks:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit v1

    #@8
    .line 500
    return-void

    #@9
    .line 501
    :catchall_0
    move-exception v0

    #@a
    monitor-exit v1

    #@b
    throw v0
.end method

.method public setScreenState(Z)V
    .locals 2
    .param p1, "screenOn"    # Z

    #@0
    .prologue
    .line 1218
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 1219
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiMetrics;->mScreenOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 1217
    return-void

    #@7
    .line 1218
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public setWifiState(I)V
    .locals 2
    .param p1, "wifiState"    # I

    #@0
    .prologue
    .line 1227
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 1228
    :try_start_0
    iput p1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 1226
    return-void

    #@7
    .line 1227
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public startConnectionEvent(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;I)V
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "targetBSSID"    # Ljava/lang/String;
    .param p3, "roamType"    # I

    #@0
    .prologue
    .line 342
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 344
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@5
    if-eqz v0, :cond_1

    #@7
    .line 346
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@9
    invoke-static {v0}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-get1(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    if-eqz v0, :cond_2

    #@f
    .line 347
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@11
    invoke-static {v0}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-get0(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    if-eqz v0, :cond_2

    #@17
    .line 348
    if-eqz p1, :cond_2

    #@19
    .line 349
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@1b
    invoke-static {v0}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-get1(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@21
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v0

    #@25
    .line 346
    if-eqz v0, :cond_2

    #@27
    .line 350
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@29
    invoke-static {v0}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-get0(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    const-string/jumbo v2, "any"

    #@30
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v0

    #@34
    if-nez v0, :cond_0

    #@36
    .line 351
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@38
    invoke-static {v0}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-get0(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result v0

    #@40
    .line 346
    if-eqz v0, :cond_2

    #@42
    .line 352
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@44
    invoke-static {v0, p2}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-set0(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;Ljava/lang/String;)Ljava/lang/String;

    #@47
    .line 354
    const/16 v0, 0x8

    #@49
    .line 355
    const/4 v2, 0x1

    #@4a
    .line 354
    invoke-virtual {p0, v0, v2}, Lcom/android/server/wifi/WifiMetrics;->endConnectionEvent(II)V

    #@4d
    .line 363
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mConnectionEventList:Ljava/util/List;

    #@4f
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@52
    move-result v0

    #@53
    const/16 v2, 0x100

    #@55
    if-lt v0, v2, :cond_3

    #@57
    .line 364
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mConnectionEventList:Ljava/util/List;

    #@59
    const/4 v2, 0x0

    #@5a
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5d
    goto :goto_0

    #@5e
    .line 342
    :catchall_0
    move-exception v0

    #@5f
    monitor-exit v1

    #@60
    throw v0

    #@61
    .line 358
    :cond_2
    const/4 v0, 0x7

    #@62
    .line 359
    const/4 v2, 0x1

    #@63
    .line 358
    :try_start_1
    invoke-virtual {p0, v0, v2}, Lcom/android/server/wifi/WifiMetrics;->endConnectionEvent(II)V

    #@66
    goto :goto_0

    #@67
    .line 366
    :cond_3
    new-instance v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@69
    const/4 v2, 0x0

    #@6a
    invoke-direct {v0, p0, v2}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;-><init>(Lcom/android/server/wifi/WifiMetrics;Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)V

    #@6d
    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@6f
    .line 367
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@71
    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@73
    .line 368
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mClock:Lcom/android/server/wifi/Clock;

    #@75
    invoke-virtual {v2}, Lcom/android/server/wifi/Clock;->currentTimeMillis()J

    #@78
    move-result-wide v2

    #@79
    .line 367
    iput-wide v2, v0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->startTimeMillis:J

    #@7b
    .line 369
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@7d
    invoke-static {v0, p2}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-set0(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;Ljava/lang/String;)Ljava/lang/String;

    #@80
    .line 370
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@82
    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@84
    iput p3, v0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->roamType:I

    #@86
    .line 371
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@88
    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    #@8a
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->updateFromWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    #@8d
    .line 372
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@8f
    const-string/jumbo v2, "any"

    #@92
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-set0(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;Ljava/lang/String;)Ljava/lang/String;

    #@95
    .line 373
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@97
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mClock:Lcom/android/server/wifi/Clock;

    #@99
    invoke-virtual {v2}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    #@9c
    move-result-wide v2

    #@9d
    invoke-static {v0, v2, v3}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-set3(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;J)J

    #@a0
    .line 374
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@a2
    iget v2, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiState:I

    #@a4
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-set5(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;I)I

    #@a7
    .line 375
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@a9
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiMetrics;->mScreenOn:Z

    #@ab
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-set4(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;Z)Z

    #@ae
    .line 376
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mConnectionEventList:Ljava/util/List;

    #@b0
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@b2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b5
    monitor-exit v1

    #@b6
    .line 341
    return-void
.end method
