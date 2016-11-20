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
.field private static final DBG:Z = false

.field private static final MAX_CONNECTION_EVENTS:I = 0x100

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

.field private mScanReturnEntries:Landroid/util/SparseIntArray;

.field private mScreenOn:Z

.field private final mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

.field private mWifiState:I

.field private mWifiSystemStateEntries:Landroid/util/SparseIntArray;


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
    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 45
    new-instance v0, Ljava/lang/Object;

    #@6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@b
    .line 306
    iput-object p1, p0, Lcom/android/server/wifi/WifiMetrics;->mClock:Lcom/android/server/wifi/Clock;

    #@d
    .line 307
    new-instance v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@f
    invoke-direct {v0}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;-><init>()V

    #@12
    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@14
    .line 308
    new-instance v0, Ljava/util/ArrayList;

    #@16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@19
    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mConnectionEventList:Ljava/util/List;

    #@1b
    .line 309
    new-instance v0, Landroid/util/SparseIntArray;

    #@1d
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@20
    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mScanReturnEntries:Landroid/util/SparseIntArray;

    #@22
    .line 310
    new-instance v0, Landroid/util/SparseIntArray;

    #@24
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@27
    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiSystemStateEntries:Landroid/util/SparseIntArray;

    #@29
    .line 311
    const/4 v0, 0x0

    #@2a
    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@2c
    .line 312
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiMetrics;->mScreenOn:Z

    #@2e
    .line 313
    iput v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiState:I

    #@30
    .line 314
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mClock:Lcom/android/server/wifi/Clock;

    #@32
    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    #@35
    move-result-wide v0

    #@36
    const-wide/16 v2, 0x3e8

    #@38
    div-long/2addr v0, v2

    #@39
    iput-wide v0, p0, Lcom/android/server/wifi/WifiMetrics;->mRecordStartTimeSec:J

    #@3b
    .line 305
    return-void
.end method

.method private clear()V
    .locals 6

    #@0
    .prologue
    .line 974
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 975
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mConnectionEventList:Ljava/util/List;

    #@5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@8
    .line 976
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 977
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mConnectionEventList:Ljava/util/List;

    #@e
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@10
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@13
    .line 979
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mScanReturnEntries:Landroid/util/SparseIntArray;

    #@15
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    #@18
    .line 980
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiSystemStateEntries:Landroid/util/SparseIntArray;

    #@1a
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    #@1d
    .line 981
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
    .line 982
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@2a
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->clear()Lcom/android/server/wifi/WifiMetricsProto$WifiLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    monitor-exit v1

    #@2e
    .line 973
    return-void

    #@2f
    .line 974
    :catchall_0
    move-exception v0

    #@30
    monitor-exit v1

    #@31
    throw v0
.end method

.method private consolidateProto(Z)V
    .locals 12
    .param p1, "incremental"    # Z

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 921
    new-instance v2, Ljava/util/ArrayList;

    #@4
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@7
    .line 922
    .local v2, "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;>;"
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@9
    monitor-enter v7

    #@a
    .line 923
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiMetrics;->mConnectionEventList:Ljava/util/List;

    #@c
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v1

    #@10
    .local v1, "event$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v4

    #@14
    if-eqz v4, :cond_2

    #@16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@1c
    .line 926
    .local v0, "event":Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;
    if-eqz p1, :cond_1

    #@1e
    iget-object v4, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@20
    if-eq v4, v0, :cond_0

    #@22
    .line 927
    iget-object v4, v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@24
    iget-boolean v4, v4, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->automaticBugReportTaken:Z

    #@26
    if-nez v4, :cond_0

    #@28
    .line 930
    :cond_1
    iget-object v4, v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@2a
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2d
    .line 931
    if-eqz p1, :cond_0

    #@2f
    .line 932
    iget-object v4, v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@31
    const/4 v8, 0x1

    #@32
    iput-boolean v8, v4, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->automaticBugReportTaken:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 922
    .end local v0    # "event":Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;
    .end local v1    # "event$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    #@36
    monitor-exit v7

    #@37
    throw v4

    #@38
    .line 936
    .restart local v1    # "event$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@3b
    move-result v4

    #@3c
    if-lez v4, :cond_3

    #@3e
    .line 937
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@40
    iget-object v4, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@42
    iget-object v4, v4, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@44
    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@47
    move-result-object v4

    #@48
    check-cast v4, [Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@4a
    iput-object v4, v8, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@4c
    .line 941
    :cond_3
    iget-object v4, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@4e
    .line 942
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetrics;->mScanReturnEntries:Landroid/util/SparseIntArray;

    #@50
    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    #@53
    move-result v8

    #@54
    new-array v8, v8, [Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@56
    .line 941
    iput-object v8, v4, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@58
    .line 943
    const/4 v3, 0x0

    #@59
    .local v3, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiMetrics;->mScanReturnEntries:Landroid/util/SparseIntArray;

    #@5b
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    #@5e
    move-result v4

    #@5f
    if-ge v3, v4, :cond_4

    #@61
    .line 944
    iget-object v4, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@63
    iget-object v4, v4, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@65
    new-instance v8, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@67
    invoke-direct {v8}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    #@6a
    aput-object v8, v4, v3

    #@6c
    .line 945
    iget-object v4, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@6e
    iget-object v4, v4, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@70
    aget-object v4, v4, v3

    #@72
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetrics;->mScanReturnEntries:Landroid/util/SparseIntArray;

    #@74
    invoke-virtual {v8, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@77
    move-result v8

    #@78
    iput v8, v4, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;->scanReturnCode:I

    #@7a
    .line 946
    iget-object v4, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@7c
    iget-object v4, v4, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    #@7e
    aget-object v4, v4, v3

    #@80
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetrics;->mScanReturnEntries:Landroid/util/SparseIntArray;

    #@82
    invoke-virtual {v8, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@85
    move-result v8

    #@86
    iput v8, v4, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;->scanResultsCount:I

    #@88
    .line 943
    add-int/lit8 v3, v3, 0x1

    #@8a
    goto :goto_1

    #@8b
    .line 952
    :cond_4
    iget-object v4, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@8d
    .line 954
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiSystemStateEntries:Landroid/util/SparseIntArray;

    #@8f
    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    #@92
    move-result v8

    #@93
    .line 953
    new-array v8, v8, [Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@95
    .line 952
    iput-object v8, v4, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@97
    .line 955
    const/4 v3, 0x0

    #@98
    :goto_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiSystemStateEntries:Landroid/util/SparseIntArray;

    #@9a
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    #@9d
    move-result v4

    #@9e
    if-ge v3, v4, :cond_6

    #@a0
    .line 956
    iget-object v4, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@a2
    iget-object v4, v4, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@a4
    .line 957
    new-instance v8, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@a6
    invoke-direct {v8}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    #@a9
    .line 956
    aput-object v8, v4, v3

    #@ab
    .line 958
    iget-object v4, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@ad
    iget-object v4, v4, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@af
    aget-object v4, v4, v3

    #@b1
    .line 959
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiSystemStateEntries:Landroid/util/SparseIntArray;

    #@b3
    invoke-virtual {v8, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@b6
    move-result v8

    #@b7
    div-int/lit8 v8, v8, 0x2

    #@b9
    .line 958
    iput v8, v4, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->wifiState:I

    #@bb
    .line 960
    iget-object v4, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@bd
    iget-object v4, v4, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@bf
    aget-object v4, v4, v3

    #@c1
    .line 961
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiSystemStateEntries:Landroid/util/SparseIntArray;

    #@c3
    invoke-virtual {v8, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@c6
    move-result v8

    #@c7
    .line 960
    iput v8, v4, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->wifiStateCount:I

    #@c9
    .line 962
    iget-object v4, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@cb
    iget-object v4, v4, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@cd
    aget-object v8, v4, v3

    #@cf
    .line 963
    iget-object v4, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiSystemStateEntries:Landroid/util/SparseIntArray;

    #@d1
    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@d4
    move-result v4

    #@d5
    rem-int/lit8 v4, v4, 0x2

    #@d7
    if-lez v4, :cond_5

    #@d9
    move v4, v5

    #@da
    .line 962
    :goto_3
    iput-boolean v4, v8, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->isScreenOn:Z

    #@dc
    .line 955
    add-int/lit8 v3, v3, 0x1

    #@de
    goto :goto_2

    #@df
    :cond_5
    move v4, v6

    #@e0
    .line 963
    goto :goto_3

    #@e1
    .line 965
    :cond_6
    iget-object v4, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@e3
    iget-object v5, p0, Lcom/android/server/wifi/WifiMetrics;->mClock:Lcom/android/server/wifi/Clock;

    #@e5
    invoke-virtual {v5}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    #@e8
    move-result-wide v8

    #@e9
    const-wide/16 v10, 0x3e8

    #@eb
    div-long/2addr v8, v10

    #@ec
    .line 966
    iget-wide v10, p0, Lcom/android/server/wifi/WifiMetrics;->mRecordStartTimeSec:J

    #@ee
    .line 965
    sub-long/2addr v8, v10

    #@ef
    long-to-int v5, v8

    #@f0
    iput v5, v4, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->recordDurationSec:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f2
    monitor-exit v7

    #@f3
    .line 920
    return-void
.end method

.method private returnCodeToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "scanReturnCode"    # I

    #@0
    .prologue
    .line 596
    packed-switch p1, :pswitch_data_0

    #@3
    .line 608
    const-string/jumbo v0, "<UNKNOWN>"

    #@6
    return-object v0

    #@7
    .line 598
    :pswitch_0
    const-string/jumbo v0, "SCAN_UNKNOWN"

    #@a
    return-object v0

    #@b
    .line 600
    :pswitch_1
    const-string/jumbo v0, "SCAN_SUCCESS"

    #@e
    return-object v0

    #@f
    .line 602
    :pswitch_2
    const-string/jumbo v0, "SCAN_FAILURE_INTERRUPTED"

    #@12
    return-object v0

    #@13
    .line 604
    :pswitch_3
    const-string/jumbo v0, "SCAN_FAILURE_INVALID_CONFIGURATION"

    #@16
    return-object v0

    #@17
    .line 606
    :pswitch_4
    const-string/jumbo v0, "FAILURE_WIFI_DISABLED"

    #@1a
    return-object v0

    #@1b
    .line 596
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
    .line 432
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getDtimInterval()I

    #@3
    move-result v1

    #@4
    .line 433
    .local v1, "dtimInterval":I
    if-lez v1, :cond_0

    #@6
    .line 434
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
    .line 438
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getWifiMode()I

    #@13
    move-result v2

    #@14
    packed-switch v2, :pswitch_data_0

    #@17
    .line 458
    const/4 v0, 0x6

    #@18
    .line 461
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
    .line 431
    return-void

    #@23
    .line 440
    .end local v0    # "connectionWifiMode":I
    :pswitch_0
    const/4 v0, 0x0

    #@24
    .line 441
    .restart local v0    # "connectionWifiMode":I
    goto :goto_0

    #@25
    .line 443
    .end local v0    # "connectionWifiMode":I
    :pswitch_1
    const/4 v0, 0x1

    #@26
    .line 444
    .restart local v0    # "connectionWifiMode":I
    goto :goto_0

    #@27
    .line 446
    .end local v0    # "connectionWifiMode":I
    :pswitch_2
    const/4 v0, 0x2

    #@28
    .line 447
    .restart local v0    # "connectionWifiMode":I
    goto :goto_0

    #@29
    .line 449
    .end local v0    # "connectionWifiMode":I
    :pswitch_3
    const/4 v0, 0x3

    #@2a
    .line 450
    .restart local v0    # "connectionWifiMode":I
    goto :goto_0

    #@2b
    .line 452
    .end local v0    # "connectionWifiMode":I
    :pswitch_4
    const/4 v0, 0x4

    #@2c
    .line 453
    .restart local v0    # "connectionWifiMode":I
    goto :goto_0

    #@2d
    .line 455
    .end local v0    # "connectionWifiMode":I
    :pswitch_5
    const/4 v0, 0x5

    #@2e
    .line 456
    .restart local v0    # "connectionWifiMode":I
    goto :goto_0

    #@2f
    .line 438
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
    .line 469
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@3
    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@5
    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    #@7
    iput v1, v0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->signalStrength:I

    #@9
    .line 470
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@b
    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    #@d
    invoke-static {v0}, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->-get0(Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;)Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@10
    move-result-object v0

    #@11
    .line 471
    const/4 v1, 0x1

    #@12
    .line 470
    iput v1, v0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->authentication:I

    #@14
    .line 472
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@16
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@18
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-set0(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;Ljava/lang/String;)Ljava/lang/String;

    #@1b
    .line 473
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@1d
    if-eqz v0, :cond_0

    #@1f
    .line 474
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
    .line 475
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
    .line 485
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
    .line 486
    iget v1, p1, Landroid/net/wifi/ScanResult;->frequency:I

    #@3e
    .line 485
    iput v1, v0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->channelInfo:I

    #@40
    .line 468
    return-void

    #@41
    .line 477
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
    .line 478
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
    .line 480
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
    .line 481
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@64
    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    #@66
    invoke-static {v0}, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->-get0(Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;)Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@69
    move-result-object v0

    #@6a
    .line 482
    const/4 v1, 0x3

    #@6b
    .line 481
    iput v1, v0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->authentication:I

    #@6d
    goto :goto_0
.end method

.method private wifiSystemStateToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # I

    #@0
    .prologue
    .line 636
    packed-switch p1, :pswitch_data_0

    #@3
    .line 646
    const-string/jumbo v0, "default"

    #@6
    return-object v0

    #@7
    .line 638
    :pswitch_0
    const-string/jumbo v0, "WIFI_UNKNOWN"

    #@a
    return-object v0

    #@b
    .line 640
    :pswitch_1
    const-string/jumbo v0, "WIFI_DISABLED"

    #@e
    return-object v0

    #@f
    .line 642
    :pswitch_2
    const-string/jumbo v0, "WIFI_DISCONNECTED"

    #@12
    return-object v0

    #@13
    .line 644
    :pswitch_3
    const-string/jumbo v0, "WIFI_ASSOCIATED"

    #@16
    return-object v0

    #@17
    .line 636
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
    .line 723
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 724
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
    .line 722
    return-void

    #@c
    .line 723
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
    .line 691
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 692
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
    .line 690
    return-void

    #@c
    .line 691
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
    .line 699
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 700
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
    .line 698
    return-void

    #@c
    .line 699
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
    .line 707
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 708
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
    .line 706
    return-void

    #@c
    .line 707
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
    .line 715
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 716
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
    .line 714
    return-void

    #@c
    .line 715
    :catchall_0
    move-exception v0

    #@d
    monitor-exit v1

    #@e
    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 803
    iget-object v6, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v6

    #@3
    .line 804
    :try_start_0
    const-string/jumbo v5, "WifiMetrics:"

    #@6
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9
    .line 805
    array-length v5, p3

    #@a
    if-lez v5, :cond_2

    #@c
    const-string/jumbo v5, "wifiMetricsProto"

    #@f
    const/4 v7, 0x0

    #@10
    aget-object v7, p3, v7

    #@12
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v5

    #@16
    if-eqz v5, :cond_2

    #@18
    .line 807
    const/4 v5, 0x1

    #@19
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiMetrics;->consolidateProto(Z)V

    #@1c
    .line 808
    iget-object v5, p0, Lcom/android/server/wifi/WifiMetrics;->mConnectionEventList:Ljava/util/List;

    #@1e
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@21
    move-result-object v1

    #@22
    .local v1, "event$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v5

    #@26
    if-eqz v5, :cond_1

    #@28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@2e
    .line 809
    .local v0, "event":Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;
    iget-object v5, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@30
    if-eq v5, v0, :cond_0

    #@32
    .line 812
    iget-object v5, v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@34
    const/4 v7, 0x1

    #@35
    iput-boolean v7, v5, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->automaticBugReportTaken:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    goto :goto_0

    #@38
    .line 803
    .end local v0    # "event":Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;
    .end local v1    # "event$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    #@39
    monitor-exit v6

    #@3a
    throw v5

    #@3b
    .line 815
    .restart local v1    # "event$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@3d
    invoke-static {v5}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    #@40
    move-result-object v4

    #@41
    .line 816
    .local v4, "wifiMetricsProto":[B
    const/4 v5, 0x0

    #@42
    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    #@45
    move-result-object v3

    #@46
    .line 817
    .local v3, "metricsProtoDump":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@49
    .line 818
    const-string/jumbo v5, "EndWifiMetrics"

    #@4c
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4f
    .line 819
    invoke-direct {p0}, Lcom/android/server/wifi/WifiMetrics;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@52
    .end local v3    # "metricsProtoDump":Ljava/lang/String;
    .end local v4    # "wifiMetricsProto":[B
    :goto_1
    monitor-exit v6

    #@53
    .line 802
    return-void

    #@54
    .line 821
    .end local v1    # "event$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_2
    const-string/jumbo v5, "mConnectionEvents:"

    #@57
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5a
    .line 822
    iget-object v5, p0, Lcom/android/server/wifi/WifiMetrics;->mConnectionEventList:Ljava/util/List;

    #@5c
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5f
    move-result-object v1

    #@60
    .restart local v1    # "event$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@63
    move-result v5

    #@64
    if-eqz v5, :cond_4

    #@66
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@69
    move-result-object v0

    #@6a
    check-cast v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@6c
    .line 823
    .restart local v0    # "event":Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->toString()Ljava/lang/String;

    #@6f
    move-result-object v2

    #@70
    .line 824
    .local v2, "eventLine":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@72
    if-ne v0, v5, :cond_3

    #@74
    .line 825
    new-instance v5, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v5

    #@7d
    const-string/jumbo v7, "CURRENTLY OPEN EVENT"

    #@80
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v5

    #@84
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v2

    #@88
    .line 827
    :cond_3
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8b
    goto :goto_2

    #@8c
    .line 829
    .end local v0    # "event":Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;
    .end local v2    # "eventLine":Ljava/lang/String;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    #@8e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@91
    const-string/jumbo v7, "mWifiLogProto.numSavedNetworks="

    #@94
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v5

    #@98
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@9a
    iget v7, v7, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    #@9c
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v5

    #@a0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a3
    move-result-object v5

    #@a4
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a7
    .line 830
    new-instance v5, Ljava/lang/StringBuilder;

    #@a9
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@ac
    const-string/jumbo v7, "mWifiLogProto.numOpenNetworks="

    #@af
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v5

    #@b3
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@b5
    iget v7, v7, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    #@b7
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v5

    #@bb
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@be
    move-result-object v5

    #@bf
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c2
    .line 831
    new-instance v5, Ljava/lang/StringBuilder;

    #@c4
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@c7
    const-string/jumbo v7, "mWifiLogProto.numPersonalNetworks="

    #@ca
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v5

    #@ce
    .line 832
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@d0
    iget v7, v7, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    #@d2
    .line 831
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v5

    #@d6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d9
    move-result-object v5

    #@da
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@dd
    .line 833
    new-instance v5, Ljava/lang/StringBuilder;

    #@df
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@e2
    const-string/jumbo v7, "mWifiLogProto.numEnterpriseNetworks="

    #@e5
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v5

    #@e9
    .line 834
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@eb
    iget v7, v7, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    #@ed
    .line 833
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v5

    #@f1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f4
    move-result-object v5

    #@f5
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f8
    .line 835
    new-instance v5, Ljava/lang/StringBuilder;

    #@fa
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@fd
    const-string/jumbo v7, "mWifiLogProto.isLocationEnabled="

    #@100
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v5

    #@104
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@106
    iget-boolean v7, v7, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    #@108
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v5

    #@10c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10f
    move-result-object v5

    #@110
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@113
    .line 836
    new-instance v5, Ljava/lang/StringBuilder;

    #@115
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@118
    const-string/jumbo v7, "mWifiLogProto.isScanningAlwaysEnabled="

    #@11b
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v5

    #@11f
    .line 837
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@121
    iget-boolean v7, v7, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    #@123
    .line 836
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@126
    move-result-object v5

    #@127
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12a
    move-result-object v5

    #@12b
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@12e
    .line 838
    new-instance v5, Ljava/lang/StringBuilder;

    #@130
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@133
    const-string/jumbo v7, "mWifiLogProto.numNetworksAddedByUser="

    #@136
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@139
    move-result-object v5

    #@13a
    .line 839
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@13c
    iget v7, v7, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    #@13e
    .line 838
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@141
    move-result-object v5

    #@142
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@145
    move-result-object v5

    #@146
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@149
    .line 840
    new-instance v5, Ljava/lang/StringBuilder;

    #@14b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@14e
    const-string/jumbo v7, "mWifiLogProto.numNetworksAddedByApps="

    #@151
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@154
    move-result-object v5

    #@155
    .line 841
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@157
    iget v7, v7, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    #@159
    .line 840
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15c
    move-result-object v5

    #@15d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@160
    move-result-object v5

    #@161
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@164
    .line 842
    new-instance v5, Ljava/lang/StringBuilder;

    #@166
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@169
    const-string/jumbo v7, "mWifiLogProto.numNonEmptyScanResults="

    #@16c
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16f
    move-result-object v5

    #@170
    .line 843
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@172
    iget v7, v7, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    #@174
    .line 842
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@177
    move-result-object v5

    #@178
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17b
    move-result-object v5

    #@17c
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@17f
    .line 844
    new-instance v5, Ljava/lang/StringBuilder;

    #@181
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@184
    const-string/jumbo v7, "mWifiLogProto.numEmptyScanResults="

    #@187
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18a
    move-result-object v5

    #@18b
    .line 845
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@18d
    iget v7, v7, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    #@18f
    .line 844
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@192
    move-result-object v5

    #@193
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@196
    move-result-object v5

    #@197
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@19a
    .line 846
    new-instance v5, Ljava/lang/StringBuilder;

    #@19c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@19f
    const-string/jumbo v7, "mWifiLogProto.numOneshotScans="

    #@1a2
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a5
    move-result-object v5

    #@1a6
    .line 847
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@1a8
    iget v7, v7, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOneshotScans:I

    #@1aa
    .line 846
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1ad
    move-result-object v5

    #@1ae
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b1
    move-result-object v5

    #@1b2
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1b5
    .line 848
    new-instance v5, Ljava/lang/StringBuilder;

    #@1b7
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1ba
    const-string/jumbo v7, "mWifiLogProto.numBackgroundScans="

    #@1bd
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c0
    move-result-object v5

    #@1c1
    .line 849
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@1c3
    iget v7, v7, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    #@1c5
    .line 848
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c8
    move-result-object v5

    #@1c9
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1cc
    move-result-object v5

    #@1cd
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d0
    .line 851
    const-string/jumbo v5, "mScanReturnEntries:"

    #@1d3
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d6
    .line 852
    new-instance v5, Ljava/lang/StringBuilder;

    #@1d8
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1db
    const-string/jumbo v7, "  SCAN_UNKNOWN: "

    #@1de
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e1
    move-result-object v5

    #@1e2
    .line 853
    const/4 v7, 0x0

    #@1e3
    .line 852
    invoke-virtual {p0, v7}, Lcom/android/server/wifi/WifiMetrics;->getScanReturnEntry(I)I

    #@1e6
    move-result v7

    #@1e7
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1ea
    move-result-object v5

    #@1eb
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ee
    move-result-object v5

    #@1ef
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1f2
    .line 854
    new-instance v5, Ljava/lang/StringBuilder;

    #@1f4
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1f7
    const-string/jumbo v7, "  SCAN_SUCCESS: "

    #@1fa
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fd
    move-result-object v5

    #@1fe
    .line 855
    const/4 v7, 0x1

    #@1ff
    .line 854
    invoke-virtual {p0, v7}, Lcom/android/server/wifi/WifiMetrics;->getScanReturnEntry(I)I

    #@202
    move-result v7

    #@203
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@206
    move-result-object v5

    #@207
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20a
    move-result-object v5

    #@20b
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@20e
    .line 856
    new-instance v5, Ljava/lang/StringBuilder;

    #@210
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@213
    const-string/jumbo v7, "  SCAN_FAILURE_INTERRUPTED: "

    #@216
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@219
    move-result-object v5

    #@21a
    .line 857
    const/4 v7, 0x2

    #@21b
    .line 856
    invoke-virtual {p0, v7}, Lcom/android/server/wifi/WifiMetrics;->getScanReturnEntry(I)I

    #@21e
    move-result v7

    #@21f
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@222
    move-result-object v5

    #@223
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@226
    move-result-object v5

    #@227
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@22a
    .line 858
    new-instance v5, Ljava/lang/StringBuilder;

    #@22c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@22f
    const-string/jumbo v7, "  SCAN_FAILURE_INVALID_CONFIGURATION: "

    #@232
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@235
    move-result-object v5

    #@236
    .line 859
    const/4 v7, 0x3

    #@237
    .line 858
    invoke-virtual {p0, v7}, Lcom/android/server/wifi/WifiMetrics;->getScanReturnEntry(I)I

    #@23a
    move-result v7

    #@23b
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23e
    move-result-object v5

    #@23f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@242
    move-result-object v5

    #@243
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@246
    .line 860
    new-instance v5, Ljava/lang/StringBuilder;

    #@248
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@24b
    const-string/jumbo v7, "  FAILURE_WIFI_DISABLED: "

    #@24e
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@251
    move-result-object v5

    #@252
    .line 861
    const/4 v7, 0x4

    #@253
    .line 860
    invoke-virtual {p0, v7}, Lcom/android/server/wifi/WifiMetrics;->getScanReturnEntry(I)I

    #@256
    move-result v7

    #@257
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25a
    move-result-object v5

    #@25b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25e
    move-result-object v5

    #@25f
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@262
    .line 863
    const-string/jumbo v5, "mSystemStateEntries: <state><screenOn> : <scansInitiated>"

    #@265
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@268
    .line 864
    new-instance v5, Ljava/lang/StringBuilder;

    #@26a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@26d
    const-string/jumbo v7, "  WIFI_UNKNOWN       ON: "

    #@270
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@273
    move-result-object v5

    #@274
    .line 865
    const/4 v7, 0x0

    #@275
    const/4 v8, 0x1

    #@276
    invoke-virtual {p0, v7, v8}, Lcom/android/server/wifi/WifiMetrics;->getSystemStateCount(IZ)I

    #@279
    move-result v7

    #@27a
    .line 864
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27d
    move-result-object v5

    #@27e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@281
    move-result-object v5

    #@282
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@285
    .line 866
    new-instance v5, Ljava/lang/StringBuilder;

    #@287
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@28a
    const-string/jumbo v7, "  WIFI_DISABLED      ON: "

    #@28d
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@290
    move-result-object v5

    #@291
    .line 867
    const/4 v7, 0x1

    #@292
    const/4 v8, 0x1

    #@293
    invoke-virtual {p0, v7, v8}, Lcom/android/server/wifi/WifiMetrics;->getSystemStateCount(IZ)I

    #@296
    move-result v7

    #@297
    .line 866
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29a
    move-result-object v5

    #@29b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29e
    move-result-object v5

    #@29f
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2a2
    .line 868
    new-instance v5, Ljava/lang/StringBuilder;

    #@2a4
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2a7
    const-string/jumbo v7, "  WIFI_DISCONNECTED  ON: "

    #@2aa
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ad
    move-result-object v5

    #@2ae
    .line 869
    const/4 v7, 0x2

    #@2af
    const/4 v8, 0x1

    #@2b0
    invoke-virtual {p0, v7, v8}, Lcom/android/server/wifi/WifiMetrics;->getSystemStateCount(IZ)I

    #@2b3
    move-result v7

    #@2b4
    .line 868
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b7
    move-result-object v5

    #@2b8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2bb
    move-result-object v5

    #@2bc
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2bf
    .line 870
    new-instance v5, Ljava/lang/StringBuilder;

    #@2c1
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2c4
    const-string/jumbo v7, "  WIFI_ASSOCIATED    ON: "

    #@2c7
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ca
    move-result-object v5

    #@2cb
    .line 871
    const/4 v7, 0x3

    #@2cc
    const/4 v8, 0x1

    #@2cd
    invoke-virtual {p0, v7, v8}, Lcom/android/server/wifi/WifiMetrics;->getSystemStateCount(IZ)I

    #@2d0
    move-result v7

    #@2d1
    .line 870
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d4
    move-result-object v5

    #@2d5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d8
    move-result-object v5

    #@2d9
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2dc
    .line 872
    new-instance v5, Ljava/lang/StringBuilder;

    #@2de
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2e1
    const-string/jumbo v7, "  WIFI_UNKNOWN      OFF: "

    #@2e4
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e7
    move-result-object v5

    #@2e8
    .line 873
    const/4 v7, 0x0

    #@2e9
    const/4 v8, 0x0

    #@2ea
    invoke-virtual {p0, v7, v8}, Lcom/android/server/wifi/WifiMetrics;->getSystemStateCount(IZ)I

    #@2ed
    move-result v7

    #@2ee
    .line 872
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f1
    move-result-object v5

    #@2f2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f5
    move-result-object v5

    #@2f6
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2f9
    .line 874
    new-instance v5, Ljava/lang/StringBuilder;

    #@2fb
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2fe
    const-string/jumbo v7, "  WIFI_DISABLED     OFF: "

    #@301
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@304
    move-result-object v5

    #@305
    .line 875
    const/4 v7, 0x1

    #@306
    const/4 v8, 0x0

    #@307
    invoke-virtual {p0, v7, v8}, Lcom/android/server/wifi/WifiMetrics;->getSystemStateCount(IZ)I

    #@30a
    move-result v7

    #@30b
    .line 874
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30e
    move-result-object v5

    #@30f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@312
    move-result-object v5

    #@313
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@316
    .line 876
    new-instance v5, Ljava/lang/StringBuilder;

    #@318
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@31b
    const-string/jumbo v7, "  WIFI_DISCONNECTED OFF: "

    #@31e
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@321
    move-result-object v5

    #@322
    .line 877
    const/4 v7, 0x2

    #@323
    const/4 v8, 0x0

    #@324
    invoke-virtual {p0, v7, v8}, Lcom/android/server/wifi/WifiMetrics;->getSystemStateCount(IZ)I

    #@327
    move-result v7

    #@328
    .line 876
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32b
    move-result-object v5

    #@32c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32f
    move-result-object v5

    #@330
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@333
    .line 878
    new-instance v5, Ljava/lang/StringBuilder;

    #@335
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@338
    const-string/jumbo v7, "  WIFI_ASSOCIATED   OFF: "

    #@33b
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33e
    move-result-object v5

    #@33f
    .line 879
    const/4 v7, 0x3

    #@340
    const/4 v8, 0x0

    #@341
    invoke-virtual {p0, v7, v8}, Lcom/android/server/wifi/WifiMetrics;->getSystemStateCount(IZ)I

    #@344
    move-result v7

    #@345
    .line 878
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@348
    move-result-object v5

    #@349
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34c
    move-result-object v5

    #@34d
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@350
    .line 880
    new-instance v5, Ljava/lang/StringBuilder;

    #@352
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@355
    const-string/jumbo v7, "mWifiLogProto.numConnectivityWatchdogPnoGood="

    #@358
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35b
    move-result-object v5

    #@35c
    .line 881
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@35e
    iget v7, v7, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    #@360
    .line 880
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@363
    move-result-object v5

    #@364
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@367
    move-result-object v5

    #@368
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@36b
    .line 882
    new-instance v5, Ljava/lang/StringBuilder;

    #@36d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@370
    const-string/jumbo v7, "mWifiLogProto.numConnectivityWatchdogPnoBad="

    #@373
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@376
    move-result-object v5

    #@377
    .line 883
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@379
    iget v7, v7, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    #@37b
    .line 882
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37e
    move-result-object v5

    #@37f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@382
    move-result-object v5

    #@383
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@386
    .line 884
    new-instance v5, Ljava/lang/StringBuilder;

    #@388
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@38b
    const-string/jumbo v7, "mWifiLogProto.numConnectivityWatchdogBackgroundGood="

    #@38e
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@391
    move-result-object v5

    #@392
    .line 885
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@394
    iget v7, v7, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    #@396
    .line 884
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@399
    move-result-object v5

    #@39a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39d
    move-result-object v5

    #@39e
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3a1
    .line 886
    new-instance v5, Ljava/lang/StringBuilder;

    #@3a3
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3a6
    const-string/jumbo v7, "mWifiLogProto.numConnectivityWatchdogBackgroundBad="

    #@3a9
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ac
    move-result-object v5

    #@3ad
    .line 887
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@3af
    iget v7, v7, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    #@3b1
    .line 886
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b4
    move-result-object v5

    #@3b5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b8
    move-result-object v5

    #@3b9
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3bc
    .line 888
    new-instance v5, Ljava/lang/StringBuilder;

    #@3be
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3c1
    const-string/jumbo v7, "mWifiLogProto.numLastResortWatchdogTriggers="

    #@3c4
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c7
    move-result-object v5

    #@3c8
    .line 889
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@3ca
    iget v7, v7, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    #@3cc
    .line 888
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3cf
    move-result-object v5

    #@3d0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d3
    move-result-object v5

    #@3d4
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3d7
    .line 890
    new-instance v5, Ljava/lang/StringBuilder;

    #@3d9
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3dc
    const-string/jumbo v7, "mWifiLogProto.numLastResortWatchdogBadAssociationNetworksTotal="

    #@3df
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e2
    move-result-object v5

    #@3e3
    .line 891
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@3e5
    iget v7, v7, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    #@3e7
    .line 890
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3ea
    move-result-object v5

    #@3eb
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3ee
    move-result-object v5

    #@3ef
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3f2
    .line 892
    new-instance v5, Ljava/lang/StringBuilder;

    #@3f4
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3f7
    const-string/jumbo v7, "mWifiLogProto.numLastResortWatchdogBadAuthenticationNetworksTotal="

    #@3fa
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3fd
    move-result-object v5

    #@3fe
    .line 893
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@400
    iget v7, v7, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    #@402
    .line 892
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@405
    move-result-object v5

    #@406
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@409
    move-result-object v5

    #@40a
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@40d
    .line 894
    new-instance v5, Ljava/lang/StringBuilder;

    #@40f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@412
    const-string/jumbo v7, "mWifiLogProto.numLastResortWatchdogBadDhcpNetworksTotal="

    #@415
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@418
    move-result-object v5

    #@419
    .line 895
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@41b
    iget v7, v7, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    #@41d
    .line 894
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@420
    move-result-object v5

    #@421
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@424
    move-result-object v5

    #@425
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@428
    .line 896
    new-instance v5, Ljava/lang/StringBuilder;

    #@42a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@42d
    const-string/jumbo v7, "mWifiLogProto.numLastResortWatchdogBadOtherNetworksTotal="

    #@430
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@433
    move-result-object v5

    #@434
    .line 897
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@436
    iget v7, v7, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    #@438
    .line 896
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43b
    move-result-object v5

    #@43c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43f
    move-result-object v5

    #@440
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@443
    .line 898
    new-instance v5, Ljava/lang/StringBuilder;

    #@445
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@448
    const-string/jumbo v7, "mWifiLogProto.numLastResortWatchdogAvailableNetworksTotal="

    #@44b
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44e
    move-result-object v5

    #@44f
    .line 899
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@451
    iget v7, v7, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    #@453
    .line 898
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@456
    move-result-object v5

    #@457
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45a
    move-result-object v5

    #@45b
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@45e
    .line 900
    new-instance v5, Ljava/lang/StringBuilder;

    #@460
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@463
    const-string/jumbo v7, "mWifiLogProto.numLastResortWatchdogTriggersWithBadAssociation="

    #@466
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@469
    move-result-object v5

    #@46a
    .line 901
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@46c
    iget v7, v7, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    #@46e
    .line 900
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@471
    move-result-object v5

    #@472
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@475
    move-result-object v5

    #@476
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@479
    .line 902
    new-instance v5, Ljava/lang/StringBuilder;

    #@47b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@47e
    const-string/jumbo v7, "mWifiLogProto.numLastResortWatchdogTriggersWithBadAuthentication="

    #@481
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@484
    move-result-object v5

    #@485
    .line 903
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@487
    iget v7, v7, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    #@489
    .line 902
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48c
    move-result-object v5

    #@48d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@490
    move-result-object v5

    #@491
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@494
    .line 904
    new-instance v5, Ljava/lang/StringBuilder;

    #@496
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@499
    const-string/jumbo v7, "mWifiLogProto.numLastResortWatchdogTriggersWithBadDhcp="

    #@49c
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49f
    move-result-object v5

    #@4a0
    .line 905
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@4a2
    iget v7, v7, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    #@4a4
    .line 904
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4a7
    move-result-object v5

    #@4a8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4ab
    move-result-object v5

    #@4ac
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4af
    .line 906
    new-instance v5, Ljava/lang/StringBuilder;

    #@4b1
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4b4
    const-string/jumbo v7, "mWifiLogProto.numLastResortWatchdogTriggersWithBadOther="

    #@4b7
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ba
    move-result-object v5

    #@4bb
    .line 907
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@4bd
    iget v7, v7, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    #@4bf
    .line 906
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c2
    move-result-object v5

    #@4c3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c6
    move-result-object v5

    #@4c7
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4ca
    .line 908
    new-instance v5, Ljava/lang/StringBuilder;

    #@4cc
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4cf
    const-string/jumbo v7, "mWifiLogProto.recordDurationSec="

    #@4d2
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d5
    move-result-object v5

    #@4d6
    .line 909
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetrics;->mClock:Lcom/android/server/wifi/Clock;

    #@4d8
    invoke-virtual {v7}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    #@4db
    move-result-wide v8

    #@4dc
    const-wide/16 v10, 0x3e8

    #@4de
    div-long/2addr v8, v10

    #@4df
    iget-wide v10, p0, Lcom/android/server/wifi/WifiMetrics;->mRecordStartTimeSec:J

    #@4e1
    sub-long/2addr v8, v10

    #@4e2
    .line 908
    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@4e5
    move-result-object v5

    #@4e6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e9
    move-result-object v5

    #@4ea
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4ed
    goto/16 :goto_1
.end method

.method public endConnectionEvent(II)V
    .locals 8
    .param p1, "level2FailureCode"    # I
    .param p2, "connectivityFailureCode"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 410
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 411
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 412
    if-ne p1, v1, :cond_2

    #@a
    .line 413
    if-ne p2, v1, :cond_1

    #@c
    const/4 v0, 0x1

    #@d
    .line 414
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
    .line 415
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
    .line 416
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@22
    iget-object v1, v1, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@24
    .line 417
    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@26
    invoke-static {v3}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-get2(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)J

    #@29
    move-result-wide v4

    #@2a
    .line 418
    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@2c
    invoke-static {v3}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-get3(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)J

    #@2f
    move-result-wide v6

    #@30
    .line 417
    sub-long/2addr v4, v6

    #@31
    .line 416
    long-to-int v3, v4

    #@32
    iput v3, v1, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->durationTakenToConnectMillis:I

    #@34
    .line 419
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@36
    iget-object v1, v1, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@38
    iput p1, v1, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->level2FailureCode:I

    #@3a
    .line 420
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@3c
    iget-object v1, v1, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@3e
    iput p2, v1, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->connectivityLevelFailureCode:I

    #@40
    .line 423
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
    .line 409
    return-void

    #@45
    .line 413
    :cond_1
    const/4 v0, 0x0

    #@46
    .restart local v0    # "result":Z
    goto :goto_0

    #@47
    .line 412
    .end local v0    # "result":Z
    :cond_2
    const/4 v0, 0x0

    #@48
    .restart local v0    # "result":Z
    goto :goto_0

    #@49
    .line 414
    :cond_3
    const/4 v1, 0x0

    #@4a
    goto :goto_1

    #@4b
    .line 410
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
    .line 571
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 572
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
    .line 571
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
    .line 590
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 591
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
    .line 590
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
    .line 630
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 631
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
    .line 630
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
    .line 673
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 674
    mul-int/lit8 v3, p1, 0x2

    #@5
    if-eqz p2, :cond_0

    #@7
    const/4 v1, 0x1

    #@8
    :goto_0
    add-int v0, v3, v1

    #@a
    .line 675
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
    .line 674
    .end local v0    # "index":I
    :cond_0
    const/4 v1, 0x0

    #@13
    goto :goto_0

    #@14
    .line 673
    .restart local v0    # "index":I
    :catchall_0
    move-exception v1

    #@15
    monitor-exit v2

    #@16
    throw v1
.end method

.method public incrementBackgroundScanCount()V
    .locals 3

    #@0
    .prologue
    .line 562
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 563
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
    .line 560
    return-void

    #@d
    .line 562
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
    .line 552
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 553
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

.method public incrementNonEmptyScanResultCount()V
    .locals 3

    #@0
    .prologue
    .line 542
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 543
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
    .line 540
    return-void

    #@d
    .line 542
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
    .line 788
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 789
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
    .line 787
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

.method public incrementNumConnectivityWatchdogBackgroundGood()V
    .locals 3

    #@0
    .prologue
    .line 780
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 781
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

.method public incrementNumConnectivityWatchdogPnoBad()V
    .locals 3

    #@0
    .prologue
    .line 772
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 773
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
    .line 771
    return-void

    #@d
    .line 772
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
    .line 764
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 765
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
    .line 763
    return-void

    #@d
    .line 764
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
    .line 683
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 684
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
    .line 682
    return-void

    #@d
    .line 683
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
    .line 731
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 732
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
    .line 730
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

.method public incrementNumLastResortWatchdogTriggersWithBadAuthentication()V
    .locals 3

    #@0
    .prologue
    .line 739
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 740
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
    .line 738
    return-void

    #@d
    .line 739
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
    .line 747
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 748
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
    .line 746
    return-void

    #@d
    .line 747
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
    .line 755
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 756
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
    .line 754
    return-void

    #@d
    .line 755
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
    .line 580
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 581
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
    .line 583
    iget v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiState:I

    #@e
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiMetrics;->mScreenOn:Z

    #@10
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiMetrics;->incrementWifiSystemScanStateCount(IZ)V

    #@13
    .line 579
    return-void

    #@14
    .line 580
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public incrementScanReturnEntry(II)V
    .locals 3
    .param p1, "scanReturnCode"    # I
    .param p2, "countToAdd"    # I

    #@0
    .prologue
    .line 618
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 620
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mScanReturnEntries:Landroid/util/SparseIntArray;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    #@8
    move-result v0

    #@9
    .line 621
    .local v0, "entry":I
    add-int/2addr v0, p2

    #@a
    .line 622
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mScanReturnEntries:Landroid/util/SparseIntArray;

    #@c
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit v2

    #@10
    .line 617
    return-void

    #@11
    .line 618
    .end local v0    # "entry":I
    :catchall_0
    move-exception v1

    #@12
    monitor-exit v2

    #@13
    throw v1
.end method

.method public incrementWifiSystemScanStateCount(IZ)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "screenOn"    # Z

    #@0
    .prologue
    .line 657
    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 662
    mul-int/lit8 v4, p1, 0x2

    #@5
    if-eqz p2, :cond_0

    #@7
    const/4 v2, 0x1

    #@8
    :goto_0
    add-int v1, v4, v2

    #@a
    .line 663
    .local v1, "index":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiSystemStateEntries:Landroid/util/SparseIntArray;

    #@c
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    #@f
    move-result v0

    #@10
    .line 664
    .local v0, "entry":I
    add-int/lit8 v0, v0, 0x1

    #@12
    .line 665
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiSystemStateEntries:Landroid/util/SparseIntArray;

    #@14
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v3

    #@18
    .line 656
    return-void

    #@19
    .line 662
    .end local v0    # "entry":I
    .end local v1    # "index":I
    :cond_0
    const/4 v2, 0x0

    #@1a
    goto :goto_0

    #@1b
    .line 657
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
    .line 373
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 374
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 375
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
    .line 372
    return-void

    #@f
    .line 373
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
    .line 384
    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 385
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@5
    if-eqz v2, :cond_0

    #@7
    if-eqz p1, :cond_0

    #@9
    .line 386
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@c
    move-result-object v0

    #@d
    .line 387
    .local v0, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    #@10
    move-result-object v1

    #@11
    .line 390
    .local v1, "scanResult":Landroid/net/wifi/ScanResult;
    if-eqz v0, :cond_0

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 391
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@17
    invoke-static {v2}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-get1(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    if-eqz v2, :cond_0

    #@1d
    .line 392
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@1f
    invoke-static {v2}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-get1(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    .line 393
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
    .line 392
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v2

    #@46
    .line 390
    if-eqz v2, :cond_0

    #@48
    .line 394
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiMetrics;->updateMetricsFromNetworkDetail(Lcom/android/server/wifi/hotspot2/NetworkDetail;)V

    #@4b
    .line 395
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiMetrics;->updateMetricsFromScanResult(Landroid/net/wifi/ScanResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4e
    .end local v0    # "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .end local v1    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_0
    monitor-exit v3

    #@4f
    .line 383
    return-void

    #@50
    .line 384
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
    .line 526
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 527
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@5
    iput-boolean p1, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isLocationEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit v1

    #@8
    .line 525
    return-void

    #@9
    .line 526
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
    .line 532
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 533
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@5
    iput-boolean p1, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit v1

    #@8
    .line 531
    return-void

    #@9
    .line 532
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
    .line 508
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 509
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@5
    iput p1, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit v1

    #@8
    .line 507
    return-void

    #@9
    .line 508
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
    .line 520
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 521
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@5
    iput p1, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit v1

    #@8
    .line 519
    return-void

    #@9
    .line 520
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
    .line 514
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 515
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@5
    iput p1, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit v1

    #@8
    .line 513
    return-void

    #@9
    .line 514
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
    .line 496
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 497
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@5
    iput p1, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworks:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit v1

    #@8
    .line 495
    return-void

    #@9
    .line 496
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
    .line 502
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 503
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@5
    iput p1, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworks:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit v1

    #@8
    .line 501
    return-void

    #@9
    .line 502
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
    .line 490
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 491
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    #@5
    iput p1, v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numSavedNetworks:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit v1

    #@8
    .line 489
    return-void

    #@9
    .line 490
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
    .line 990
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 991
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiMetrics;->mScreenOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 989
    return-void

    #@7
    .line 990
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
    .line 999
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 1000
    :try_start_0
    iput p1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 998
    return-void

    #@7
    .line 999
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
    .line 331
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@5
    if-eqz v0, :cond_1

    #@7
    .line 335
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@9
    invoke-static {v0}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-get1(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    if-eqz v0, :cond_2

    #@f
    .line 336
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@11
    invoke-static {v0}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-get0(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    if-eqz v0, :cond_2

    #@17
    .line 337
    if-eqz p1, :cond_2

    #@19
    .line 338
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
    .line 335
    if-eqz v0, :cond_2

    #@27
    .line 339
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
    .line 340
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
    .line 335
    if-eqz v0, :cond_2

    #@42
    .line 341
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@44
    invoke-static {v0, p2}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-set0(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;Ljava/lang/String;)Ljava/lang/String;

    #@47
    .line 343
    const/16 v0, 0x8

    #@49
    .line 344
    const/4 v2, 0x1

    #@4a
    .line 343
    invoke-virtual {p0, v0, v2}, Lcom/android/server/wifi/WifiMetrics;->endConnectionEvent(II)V

    #@4d
    .line 352
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
    .line 353
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
    .line 331
    :catchall_0
    move-exception v0

    #@5f
    monitor-exit v1

    #@60
    throw v0

    #@61
    .line 347
    :cond_2
    const/4 v0, 0x7

    #@62
    .line 348
    const/4 v2, 0x1

    #@63
    .line 347
    :try_start_1
    invoke-virtual {p0, v0, v2}, Lcom/android/server/wifi/WifiMetrics;->endConnectionEvent(II)V

    #@66
    goto :goto_0

    #@67
    .line 355
    :cond_3
    new-instance v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@69
    const/4 v2, 0x0

    #@6a
    invoke-direct {v0, p0, v2}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;-><init>(Lcom/android/server/wifi/WifiMetrics;Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)V

    #@6d
    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@6f
    .line 356
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@71
    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@73
    .line 357
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mClock:Lcom/android/server/wifi/Clock;

    #@75
    invoke-virtual {v2}, Lcom/android/server/wifi/Clock;->currentTimeMillis()J

    #@78
    move-result-wide v2

    #@79
    .line 356
    iput-wide v2, v0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->startTimeMillis:J

    #@7b
    .line 358
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@7d
    invoke-static {v0, p2}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-set0(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;Ljava/lang/String;)Ljava/lang/String;

    #@80
    .line 359
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@82
    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@84
    iput p3, v0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->roamType:I

    #@86
    .line 360
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@88
    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    #@8a
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->updateFromWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    #@8d
    .line 361
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@8f
    const-string/jumbo v2, "any"

    #@92
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-set0(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;Ljava/lang/String;)Ljava/lang/String;

    #@95
    .line 362
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
    .line 363
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@a2
    iget v2, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiState:I

    #@a4
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-set5(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;I)I

    #@a7
    .line 364
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    #@a9
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiMetrics;->mScreenOn:Z

    #@ab
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-set4(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;Z)Z

    #@ae
    .line 365
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
    .line 330
    return-void
.end method
