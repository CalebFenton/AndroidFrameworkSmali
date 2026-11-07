.class public Lcom/android/internal/os/BinderCallsStats;
.super Ljava/lang/Object;
.source "BinderCallsStats.java"

# interfaces
.implements Lcom/android/internal/os/BinderInternal$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BinderCallsStats$Injector;,
        Lcom/android/internal/os/BinderCallsStats$UidEntry;,
        Lcom/android/internal/os/BinderCallsStats$CallStat;,
        Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;,
        Lcom/android/internal/os/BinderCallsStats$SettingsObserver;,
        Lcom/android/internal/os/BinderCallsStats$OverflowBinder;,
        Lcom/android/internal/os/BinderCallsStats$CallStatKey;
    }
.end annotation


# static fields
.field private static final blacklist CALL_SESSIONS_POOL_SIZE:I = 0x64

.field private static final blacklist CALL_STATS_OBSERVER_DEBOUNCE_MILLIS:I = 0x1388

.field private static final blacklist DEBUG_ENTRY_PREFIX:Ljava/lang/String; = "__DEBUG_"

.field public static final blacklist DEFAULT_COLLECT_LATENCY_DATA:Z = true

.field public static final blacklist DEFAULT_IGNORE_BATTERY_STATUS:Z = false

.field public static final blacklist DEFAULT_TRACK_DIRECT_CALLING_UID:Z = true

.field public static final blacklist DEFAULT_TRACK_SCREEN_INTERACTIVE:Z = false

.field public static final blacklist DETAILED_TRACKING_DEFAULT:Z = true

.field public static final blacklist ENABLED_DEFAULT:Z = true

.field private static final blacklist EXCEPTION_COUNT_OVERFLOW_NAME:Ljava/lang/String; = "overflow"

.field public static final blacklist MAX_BINDER_CALL_STATS_COUNT_DEFAULT:I = 0x5dc

.field private static final blacklist MAX_EXCEPTION_COUNT_SIZE:I = 0x32

.field private static final blacklist OVERFLOW_BINDER:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/os/Binder;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist OVERFLOW_DIRECT_CALLING_UID:I = -0x1

.field private static final blacklist OVERFLOW_SCREEN_INTERACTIVE:Z = false

.field private static final blacklist OVERFLOW_TRANSACTION_CODE:I = -0x1

.field public static final blacklist PERIODIC_SAMPLING_INTERVAL_DEFAULT:I = 0x3e8

.field public static final blacklist SHARDING_MODULO_DEFAULT:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "BinderCallsStats"


# instance fields
.field private blacklist mAddDebugEntries:Z

.field private blacklist mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

.field private final blacklist mCallSessionsPool:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/internal/os/BinderInternal$CallSession;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCallStatsCount:J

.field private blacklist mCallStatsObserver:Lcom/android/internal/os/BinderInternal$CallStatsObserver;

.field private final blacklist mCallStatsObserverHandler:Landroid/os/Handler;

.field private blacklist mCallStatsObserverRunnable:Ljava/lang/Runnable;

.field private blacklist mCollectLatencyData:Z

.field private blacklist mDetailedTracking:Z

.field private blacklist mDeviceState:Lcom/android/internal/os/CachedDeviceState$Readonly;

.field private final blacklist mExceptionCounts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIgnoreBatteryStatus:Z

.field private blacklist mLatencyObserver:Lcom/android/internal/os/BinderLatencyObserver;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mMaxBinderCallStatsCount:I

.field private volatile blacklist mNativeTids:Landroid/util/IntArray;

.field private final blacklist mNativeTidsLock:Ljava/lang/Object;

.field private blacklist mPeriodicSamplingInterval:I

.field private final blacklist mRandom:Ljava/util/Random;

.field private blacklist mRecordingAllTransactionsForUid:Z

.field private blacklist mSendUidsToObserver:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mShardingModulo:I

.field private blacklist mShardingOffset:I

.field private blacklist mStartCurrentTime:J

.field private blacklist mStartElapsedTime:J

.field private blacklist mTrackDirectCallingUid:Z

.field private blacklist mTrackScreenInteractive:Z

.field private final blacklist mUidEntries:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/os/BinderCallsStats$UidEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$YZ_MvQpXqsFJ8ZTpGKTiHFfrDMM(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/os/BinderCallsStats;->compareByBinderClassAndCode(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)I

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$glVOinHoNXA5oSPdo2KZ5VIlmMY(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/os/BinderCallsStats;->compareByCpuDesc(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallStatsObserver(Lcom/android/internal/os/BinderCallsStats;)Lcom/android/internal/os/BinderInternal$CallStatsObserver;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserver:Lcom/android/internal/os/BinderInternal$CallStatsObserver;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Lcom/android/internal/os/BinderCallsStats;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSendUidsToObserver(Lcom/android/internal/os/BinderCallsStats;)Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/os/BinderCallsStats;->mSendUidsToObserver:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUidEntries(Lcom/android/internal/os/BinderCallsStats;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mnoteCallsStatsDelayed(Lcom/android/internal/os/BinderCallsStats;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->noteCallsStatsDelayed()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetOVERFLOW_BINDER()Ljava/lang/Class;
    .registers 1

    sget-object v0, Lcom/android/internal/os/BinderCallsStats;->OVERFLOW_BINDER:Ljava/lang/Class;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 80
    const-class v0, Lcom/android/internal/os/BinderCallsStats$OverflowBinder;

    sput-object v0, Lcom/android/internal/os/BinderCallsStats;->OVERFLOW_BINDER:Ljava/lang/Class;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/os/BinderCallsStats$Injector;)V
    .registers 3
    .param p1, "injector"    # Lcom/android/internal/os/BinderCallsStats$Injector;

    .line 181
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BinderCallsStats;-><init>(Lcom/android/internal/os/BinderCallsStats$Injector;I)V

    .line 182
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/os/BinderCallsStats$Injector;I)V
    .registers 6
    .param p1, "injector"    # Lcom/android/internal/os/BinderCallsStats$Injector;
    .param p2, "processSource"    # I

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    .line 93
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    .line 94
    const/16 v1, 0x5dc

    iput v1, p0, Lcom/android/internal/os/BinderCallsStats;->mMaxBinderCallStatsCount:I

    .line 95
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    .line 97
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mExceptionCounts:Landroid/util/ArrayMap;

    .line 99
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCallSessionsPool:Ljava/util/Queue;

    .line 100
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mStartCurrentTime:J

    .line 103
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mStartElapsedTime:J

    .line 104
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsCount:J

    .line 105
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mAddDebugEntries:Z

    .line 106
    iput-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mTrackDirectCallingUid:Z

    .line 107
    iput-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mTrackScreenInteractive:Z

    .line 108
    iput-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mIgnoreBatteryStatus:Z

    .line 109
    iput-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCollectLatencyData:Z

    .line 113
    iput v0, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingModulo:I

    .line 123
    new-instance v0, Landroid/util/ArraySet;

    const/16 v2, 0x20

    invoke-direct {v0, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mSendUidsToObserver:Landroid/util/ArraySet;

    .line 125
    new-instance v0, Lcom/android/internal/os/BinderCallsStats$1;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BinderCallsStats$1;-><init>(Lcom/android/internal/os/BinderCallsStats;)V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserverRunnable:Ljava/lang/Runnable;

    .line 159
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mNativeTidsLock:Ljava/lang/Object;

    .line 162
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mNativeTids:Landroid/util/IntArray;

    .line 185
    invoke-virtual {p1}, Lcom/android/internal/os/BinderCallsStats$Injector;->getRandomGenerator()Ljava/util/Random;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mRandom:Ljava/util/Random;

    .line 186
    invoke-virtual {p1}, Lcom/android/internal/os/BinderCallsStats$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserverHandler:Landroid/os/Handler;

    .line 187
    invoke-virtual {p1, p2}, Lcom/android/internal/os/BinderCallsStats$Injector;->getLatencyObserver(I)Lcom/android/internal/os/BinderLatencyObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLatencyObserver:Lcom/android/internal/os/BinderLatencyObserver;

    .line 188
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mRandom:Ljava/util/Random;

    iget v1, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingModulo:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingOffset:I

    .line 189
    return-void
.end method

.method private blacklist canCollect()Z
    .registers 4

    .line 436
    iget-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mRecordingAllTransactionsForUid:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 437
    return v1

    .line 439
    :cond_6
    iget-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mIgnoreBatteryStatus:Z

    if-eqz v0, :cond_b

    .line 440
    return v1

    .line 442
    :cond_b
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mDeviceState:Lcom/android/internal/os/CachedDeviceState$Readonly;

    const/4 v2, 0x0

    if-nez v0, :cond_11

    .line 443
    return v2

    .line 445
    :cond_11
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mDeviceState:Lcom/android/internal/os/CachedDeviceState$Readonly;

    invoke-virtual {v0}, Lcom/android/internal/os/CachedDeviceState$Readonly;->isCharging()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 446
    return v2

    .line 448
    :cond_1a
    return v1
.end method

.method private static blacklist compareByBinderClassAndCode(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)I
    .registers 5
    .param p0, "a"    # Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    .param p1, "b"    # Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    .line 1156
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 1157
    .local v0, "result":I
    if-eqz v0, :cond_c

    .line 1158
    move v1, v0

    goto :goto_14

    .line 1159
    :cond_c
    iget v1, p0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->transactionCode:I

    iget v2, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->transactionCode:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v1

    .line 1157
    :goto_14
    return v1
.end method

.method private static blacklist compareByCpuDesc(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)I
    .registers 6
    .param p0, "a"    # Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    .param p1, "b"    # Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    .line 1151
    iget-wide v0, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    iget-wide v2, p0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method private blacklist createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    .registers 8
    .param p1, "variableName"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 575
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 576
    .local v0, "uid":I
    new-instance v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    invoke-direct {v1}, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;-><init>()V

    .line 577
    .local v1, "callStat":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    const-string v2, ""

    iput-object v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    .line 578
    iput v0, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->workSourceUid:I

    .line 579
    iput v0, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callingUid:I

    .line 580
    const-wide/16 v2, 0x1

    iput-wide v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    .line 581
    iput-wide v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    .line 582
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "__DEBUG_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->methodName:Ljava/lang/String;

    .line 583
    iput-wide p2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->latencyMicros:J

    .line 584
    return-object v1
.end method

.method private blacklist dumpLocked(Ljava/io/PrintWriter;Lcom/android/internal/os/AppIdToPackageMap;IZ)V
    .registers 31
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageMap"    # Lcom/android/internal/os/AppIdToPackageMap;
    .param p3, "workSourceUid"    # I
    .param p4, "verbose"    # Z

    .line 604
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_d

    .line 605
    const/4 v5, 0x1

    .end local p4    # "verbose":Z
    .local v5, "verbose":Z
    goto :goto_f

    .line 604
    .end local v5    # "verbose":Z
    .restart local p4    # "verbose":Z
    :cond_d
    move/from16 v5, p4

    .line 607
    .end local p4    # "verbose":Z
    .restart local v5    # "verbose":Z
    :goto_f
    const-string v6, "Start time: "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 608
    const-string/jumbo v6, "yyyy-MM-dd HH:mm:ss"

    iget-wide v7, v0, Lcom/android/internal/os/BinderCallsStats;->mStartCurrentTime:J

    invoke-static {v6, v7, v8}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 609
    const-string v6, "On battery time (ms): "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 610
    iget-object v6, v0, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    if-eqz v6, :cond_30

    iget-object v6, v0, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    invoke-virtual {v6}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->getMillis()J

    move-result-wide v6

    goto :goto_32

    :cond_30
    const-wide/16 v6, 0x0

    :goto_32
    invoke-virtual {v1, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    .line 611
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sampling interval period: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 612
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sharding modulo: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/android/internal/os/BinderCallsStats;->mShardingModulo:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 614
    const-string v6, ""

    if-eqz v5, :cond_6b

    move-object v7, v6

    goto :goto_6d

    :cond_6b
    const-string v7, "(top 90% by cpu time) "

    .line 615
    .local v7, "datasetSizeDesc":Ljava/lang/String;
    :goto_6d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 616
    .local v8, "sb":Ljava/lang/StringBuilder;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Per-UID raw data "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "(package/uid, worksource, call_desc, screen_interactive, cpu_time_micros, max_cpu_time_micros, latency_time_micros, max_latency_time_micros, exception_count, max_request_size_bytes, max_reply_size_bytes, recorded_call_count, call_count):"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 623
    const/4 v9, 0x1

    if-eq v3, v4, :cond_96

    .line 624
    invoke-virtual {v0, v3, v9}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStats(IZ)Ljava/util/ArrayList;

    move-result-object v10

    .local v10, "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    goto :goto_9a

    .line 626
    .end local v10    # "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    :cond_96
    invoke-virtual {v0, v9}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStats(Z)Ljava/util/ArrayList;

    move-result-object v10

    .line 628
    .restart local v10    # "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    :goto_9a
    new-instance v11, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda1;

    invoke-direct {v11}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v10, v11}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 629
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_a6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_182

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    .line 630
    .local v12, "e":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    iget-object v13, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->methodName:Ljava/lang/String;

    if-eqz v13, :cond_c1

    iget-object v13, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->methodName:Ljava/lang/String;

    const-string v14, "__DEBUG_"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c1

    .line 632
    goto :goto_a6

    .line 634
    :cond_c1
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 635
    const-string v13, "    "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callingUid:I

    .line 636
    invoke-virtual {v2, v14}, Lcom/android/internal/os/AppIdToPackageMap;->mapUid(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 637
    const/16 v14, 0x2c

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v15, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->workSourceUid:I

    .line 638
    invoke-virtual {v2, v15}, Lcom/android/internal/os/AppIdToPackageMap;->mapUid(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 639
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v15, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 640
    const/16 v15, 0x23

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v15, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->methodName:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 641
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v15, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->screenInteractive:Z

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 642
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v15, v10

    .end local v10    # "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    .local v15, "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    iget-wide v9, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 643
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    move v13, v5

    .end local v5    # "verbose":Z
    .local v13, "verbose":Z
    iget-wide v4, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxCpuTimeMicros:J

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 644
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v11

    iget-wide v10, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->latencyMicros:J

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 645
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v10, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxLatencyMicros:J

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 646
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v10, v0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    const-wide/16 v16, 0x5f

    if-eqz v10, :cond_13d

    iget-wide v10, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->exceptionCount:J

    goto :goto_13f

    :cond_13d
    move-wide/from16 v10, v16

    :goto_13f
    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 647
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v10, v0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    if-eqz v10, :cond_14e

    iget-wide v10, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxRequestSizeBytes:J

    goto :goto_150

    :cond_14e
    move-wide/from16 v10, v16

    :goto_150
    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 648
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v10, v0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    if-eqz v10, :cond_15f

    iget-wide v10, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxReplySizeBytes:J

    goto :goto_161

    :cond_15f
    move-wide/from16 v10, v16

    :goto_161
    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 649
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v10, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 650
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v10, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 651
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 652
    .end local v12    # "e":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    move-object v11, v5

    move v5, v13

    move-object v10, v15

    const/4 v4, -0x1

    const/4 v9, 0x1

    goto/16 :goto_a6

    .line 653
    .end local v13    # "verbose":Z
    .end local v15    # "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    .restart local v5    # "verbose":Z
    .restart local v10    # "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    :cond_182
    move v13, v5

    move-object v15, v10

    .end local v5    # "verbose":Z
    .end local v10    # "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    .restart local v13    # "verbose":Z
    .restart local v15    # "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 654
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 655
    .local v4, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    const-wide/16 v11, 0x0

    .line 656
    .local v11, "totalCallsCount":J
    const-wide/16 v16, 0x0

    .line 657
    .local v16, "totalRecordedCallsCount":J
    const-wide/16 v18, 0x0

    .line 659
    .local v18, "totalCpuTime":J
    const/4 v10, -0x1

    if-eq v3, v10, :cond_1b1

    .line 660
    invoke-direct {v0, v3}, Lcom/android/internal/os/BinderCallsStats;->getUidEntry(I)Lcom/android/internal/os/BinderCallsStats$UidEntry;

    move-result-object v5

    .line 661
    .local v5, "e":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 662
    move-wide/from16 v20, v11

    .end local v11    # "totalCallsCount":J
    .local v20, "totalCallsCount":J
    iget-wide v10, v5, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    add-long v18, v18, v10

    .line 663
    iget-wide v10, v5, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordedCallCount:J

    add-long v16, v16, v10

    .line 664
    iget-wide v10, v5, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    add-long v11, v20, v10

    .line 665
    .end local v5    # "e":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .end local v20    # "totalCallsCount":J
    .restart local v11    # "totalCallsCount":J
    move-wide/from16 v9, v16

    move-wide/from16 v16, v11

    move-wide/from16 v11, v18

    goto :goto_1ef

    .line 666
    :cond_1b1
    move-wide/from16 v20, v11

    .end local v11    # "totalCallsCount":J
    .restart local v20    # "totalCallsCount":J
    iget-object v5, v0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 667
    .local v5, "uidEntriesSize":I
    const/4 v10, 0x0

    .end local v20    # "totalCallsCount":J
    .local v10, "i":I
    .restart local v11    # "totalCallsCount":J
    :goto_1ba
    if-ge v10, v5, :cond_1d7

    .line 668
    iget-object v14, v0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v14, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 669
    .local v14, "e":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    move/from16 v21, v10

    .end local v10    # "i":I
    .local v21, "i":I
    iget-wide v9, v14, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    add-long v18, v18, v9

    .line 671
    iget-wide v9, v14, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordedCallCount:J

    add-long v16, v16, v9

    .line 672
    iget-wide v9, v14, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    add-long/2addr v11, v9

    .line 667
    .end local v14    # "e":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    add-int/lit8 v10, v21, 0x1

    .end local v21    # "i":I
    .restart local v10    # "i":I
    goto :goto_1ba

    :cond_1d7
    move/from16 v21, v10

    .line 674
    .end local v10    # "i":I
    new-instance v9, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda2;

    invoke-direct {v9}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda2;-><init>()V

    .line 675
    invoke-static {v9}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v9

    .line 674
    invoke-interface {v4, v9}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    move-wide/from16 v9, v16

    move-wide/from16 v16, v11

    move-wide/from16 v11, v18

    .line 678
    .end local v5    # "uidEntriesSize":I
    .end local v18    # "totalCpuTime":J
    .local v9, "totalRecordedCallsCount":J
    .local v11, "totalCpuTime":J
    .local v16, "totalCallsCount":J
    :goto_1ef
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Per-UID Summary "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, "(cpu_time, % of total cpu_time, recorded_call_count, call_count, package/uid):"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 680
    if-eqz v13, :cond_212

    move-object v5, v4

    move-object v14, v7

    move-object/from16 v18, v8

    goto :goto_223

    .line 681
    :cond_212
    new-instance v5, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda3;

    invoke-direct {v5}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda3;-><init>()V

    move-object v14, v7

    move-object/from16 v18, v8

    .end local v7    # "datasetSizeDesc":Ljava/lang/String;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    .local v14, "datasetSizeDesc":Ljava/lang/String;
    .local v18, "sb":Ljava/lang/StringBuilder;
    const-wide v7, 0x3feccccccccccccdL    # 0.9

    invoke-static {v4, v5, v7, v8}, Lcom/android/internal/os/BinderCallsStats;->getHighestValues(Ljava/util/List;Ljava/util/function/ToDoubleFunction;D)Ljava/util/List;

    move-result-object v5

    :goto_223
    nop

    .line 682
    .local v5, "summaryEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_228
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_284

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 683
    .local v8, "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    move-object/from16 v19, v4

    .end local v4    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    .local v19, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    iget v4, v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    invoke-virtual {v2, v4}, Lcom/android/internal/os/AppIdToPackageMap;->mapUid(I)Ljava/lang/String;

    move-result-object v4

    .line 684
    .local v4, "uidStr":Ljava/lang/String;
    move/from16 v21, v13

    move-object/from16 v22, v14

    .end local v13    # "verbose":Z
    .end local v14    # "datasetSizeDesc":Ljava/lang/String;
    .local v21, "verbose":Z
    .local v22, "datasetSizeDesc":Ljava/lang/String;
    iget-wide v13, v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    .line 685
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v23, v15

    .end local v15    # "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    .local v23, "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    iget-wide v14, v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    long-to-double v14, v14

    const-wide/high16 v24, 0x4059000000000000L    # 100.0

    mul-double v14, v14, v24

    move-wide/from16 v24, v14

    long-to-double v14, v11

    div-double v14, v24, v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    move-object/from16 v24, v5

    move-object v15, v6

    .end local v5    # "summaryEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    .local v24, "summaryEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    iget-wide v5, v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordedCallCount:J

    .line 686
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v25, v7

    iget-wide v6, v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array {v13, v14, v5, v6, v4}, [Ljava/lang/Object;

    move-result-object v5

    .line 684
    const-string v6, "  %10d %3.0f%% %8d %8d %s"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 687
    .end local v4    # "uidStr":Ljava/lang/String;
    .end local v8    # "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    move-object v6, v15

    move-object/from16 v4, v19

    move/from16 v13, v21

    move-object/from16 v14, v22

    move-object/from16 v15, v23

    move-object/from16 v5, v24

    move-object/from16 v7, v25

    goto :goto_228

    .line 688
    .end local v19    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    .end local v21    # "verbose":Z
    .end local v22    # "datasetSizeDesc":Ljava/lang/String;
    .end local v23    # "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    .end local v24    # "summaryEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    .local v4, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    .restart local v5    # "summaryEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    .restart local v13    # "verbose":Z
    .restart local v14    # "datasetSizeDesc":Ljava/lang/String;
    .restart local v15    # "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    :cond_284
    move-object/from16 v19, v4

    move-object/from16 v24, v5

    move/from16 v21, v13

    move-object/from16 v22, v14

    move-object/from16 v23, v15

    move-object v15, v6

    .end local v4    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    .end local v5    # "summaryEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    .end local v13    # "verbose":Z
    .end local v14    # "datasetSizeDesc":Ljava/lang/String;
    .end local v15    # "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    .restart local v19    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    .restart local v21    # "verbose":Z
    .restart local v22    # "datasetSizeDesc":Ljava/lang/String;
    .restart local v23    # "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    .restart local v24    # "summaryEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 689
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2b5

    .line 690
    nop

    .line 692
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    long-to-double v6, v11

    long-to-double v13, v9

    div-double/2addr v6, v13

    .line 693
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    filled-new-array {v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v4

    .line 690
    const-string v5, "  Summary: total_cpu_time=%d, calls_count=%d, avg_call_cpu_time=%.0f"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 694
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 697
    :cond_2b5
    const-string v4, "Exceptions thrown (exception_count, class_name):"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 698
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 701
    .local v4, "exceptionEntries":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    iget-object v5, v0, Lcom/android/internal/os/BinderCallsStats;->mExceptionCounts:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    new-instance v6, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda4;

    invoke-direct {v6, v4}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda4;-><init>(Ljava/util/List;)V

    invoke-interface {v5, v6}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 703
    new-instance v5, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda5;

    invoke-direct {v5}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 704
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2dd
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2fb

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 705
    .local v6, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget-object v8, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "  %6d %s"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 706
    .end local v6    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_2dd

    .line 708
    :cond_2fb
    iget v5, v0, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_308

    .line 709
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 710
    const-string v5, "/!\\ Displayed data is sampled. See sampling interval at the top."

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 712
    :cond_308
    return-void
.end method

.method private blacklist getExportedCallStat(ILcom/android/internal/os/BinderCallsStats$CallStat;)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    .registers 6
    .param p1, "workSourceUid"    # I
    .param p2, "stat"    # Lcom/android/internal/os/BinderCallsStats$CallStat;

    .line 531
    new-instance v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    invoke-direct {v0}, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;-><init>()V

    .line 532
    .local v0, "exported":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    iput p1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->workSourceUid:I

    .line 533
    iget v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->callingUid:I

    iput v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callingUid:I

    .line 534
    iget-object v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->binderClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    .line 535
    iget-object v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->binderClass:Ljava/lang/Class;

    iput-object v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->binderClass:Ljava/lang/Class;

    .line 536
    iget v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->transactionCode:I

    iput v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->transactionCode:I

    .line 537
    iget-boolean v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->screenInteractive:Z

    iput-boolean v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->screenInteractive:Z

    .line 538
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    .line 539
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxCpuTimeMicros:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxCpuTimeMicros:J

    .line 540
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->latencyMicros:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->latencyMicros:J

    .line 541
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxLatencyMicros:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxLatencyMicros:J

    .line 542
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    .line 543
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    .line 544
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxRequestSizeBytes:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxRequestSizeBytes:J

    .line 545
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxReplySizeBytes:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxReplySizeBytes:J

    .line 546
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->exceptionCount:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->exceptionCount:J

    .line 547
    return-object v0
.end method

.method public static blacklist getHighestValues(Ljava/util/List;Ljava/util/function/ToDoubleFunction;D)Ljava/util/List;
    .registers 14
    .param p2, "percentile"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/function/ToDoubleFunction<",
            "TT;>;D)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1131
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "toDouble":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1132
    .local v0, "sortedList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p1}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1133
    const-wide/16 v1, 0x0

    .line 1134
    .local v1, "total":D
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1135
    .local v4, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v4}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v5

    add-double/2addr v1, v5

    .line 1136
    .end local v4    # "item":Ljava/lang/Object;, "TT;"
    goto :goto_16

    .line 1137
    :cond_26
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1138
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const-wide/16 v4, 0x0

    .line 1139
    .local v4, "runningSum":D
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_31
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 1140
    .local v7, "item":Ljava/lang/Object;, "TT;"
    mul-double v8, p2, v1

    cmpl-double v8, v4, v8

    if-lez v8, :cond_42

    .line 1141
    goto :goto_4b

    .line 1143
    :cond_42
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1144
    invoke-interface {p1, v7}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v8

    add-double/2addr v4, v8

    .line 1145
    .end local v7    # "item":Ljava/lang/Object;, "TT;"
    goto :goto_31

    .line 1146
    :cond_4b
    :goto_4b
    return-object v3
.end method

.method private blacklist getUidEntry(I)Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .registers 4
    .param p1, "uid"    # I

    .line 375
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 376
    .local v0, "uidEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    if-nez v0, :cond_15

    .line 377
    new-instance v1, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    invoke-direct {v1, p1}, Lcom/android/internal/os/BinderCallsStats$UidEntry;-><init>(I)V

    move-object v0, v1

    .line 378
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 380
    :cond_15
    return-object v0
.end method

.method static synthetic blacklist lambda$dumpLocked$0(Lcom/android/internal/os/BinderCallsStats$UidEntry;)D
    .registers 3
    .param p0, "value"    # Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 675
    iget-wide v0, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    long-to-double v0, v0

    return-wide v0
.end method

.method static synthetic blacklist lambda$dumpLocked$1(Lcom/android/internal/os/BinderCallsStats$UidEntry;)D
    .registers 3
    .param p0, "value"    # Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 681
    iget-wide v0, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    long-to-double v0, v0

    return-wide v0
.end method

.method static synthetic blacklist lambda$dumpLocked$2(Ljava/util/List;Ljava/util/Map$Entry;)V
    .registers 4
    .param p0, "exceptionEntries"    # Ljava/util/List;
    .param p1, "e"    # Ljava/util/Map$Entry;

    .line 702
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic blacklist lambda$dumpLocked$3(Landroid/util/Pair;Landroid/util/Pair;)I
    .registers 4
    .param p0, "e1"    # Landroid/util/Pair;
    .param p1, "e2"    # Landroid/util/Pair;

    .line 703
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method private blacklist noteBinderThreadNativeIds()V
    .registers 3

    .line 428
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserver:Lcom/android/internal/os/BinderInternal$CallStatsObserver;

    if-nez v0, :cond_5

    .line 429
    return-void

    .line 432
    :cond_5
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserver:Lcom/android/internal/os/BinderInternal$CallStatsObserver;

    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->getNativeTids()[I

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/os/BinderInternal$CallStatsObserver;->noteBinderThreadNativeIds([I)V

    .line 433
    return-void
.end method

.method private blacklist noteCallsStatsDelayed()V
    .registers 5

    .line 211
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserverHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 212
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserver:Lcom/android/internal/os/BinderInternal$CallStatsObserver;

    if-eqz v0, :cond_14

    .line 213
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserverHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserverRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 216
    :cond_14
    return-void
.end method

.method private blacklist noteNativeThreadId()V
    .registers 7

    .line 405
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->getNativeTid()I

    move-result v0

    .line 406
    .local v0, "tid":I
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mNativeTids:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->binarySearch(I)I

    move-result v1

    .line 407
    .local v1, "index":I
    if-ltz v1, :cond_d

    .line 408
    return-void

    .line 413
    :cond_d
    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mNativeTidsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 414
    :try_start_10
    iget-object v3, p0, Lcom/android/internal/os/BinderCallsStats;->mNativeTids:Landroid/util/IntArray;

    .line 415
    .local v3, "nativeTids":Landroid/util/IntArray;
    invoke-virtual {v3, v0}, Landroid/util/IntArray;->binarySearch(I)I

    move-result v4

    move v1, v4

    .line 416
    if-gez v1, :cond_2f

    .line 417
    new-instance v4, Landroid/util/IntArray;

    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v4, v5}, Landroid/util/IntArray;-><init>(I)V

    .line 418
    .local v4, "copyOnWriteArray":Landroid/util/IntArray;
    invoke-virtual {v4, v3}, Landroid/util/IntArray;->addAll(Landroid/util/IntArray;)V

    .line 419
    neg-int v5, v1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5, v0}, Landroid/util/IntArray;->add(II)V

    .line 420
    iput-object v4, p0, Lcom/android/internal/os/BinderCallsStats;->mNativeTids:Landroid/util/IntArray;

    .line 422
    .end local v3    # "nativeTids":Landroid/util/IntArray;
    .end local v4    # "copyOnWriteArray":Landroid/util/IntArray;
    :cond_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_34

    .line 424
    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->noteBinderThreadNativeIds()V

    .line 425
    return-void

    .line 422
    :catchall_34
    move-exception v3

    :try_start_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v3
.end method

.method private blacklist obtainCallSession()Lcom/android/internal/os/BinderInternal$CallSession;
    .registers 3

    .line 248
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallSessionsPool:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BinderInternal$CallSession;

    .line 249
    .local v0, "s":Lcom/android/internal/os/BinderInternal$CallSession;
    if-nez v0, :cond_10

    new-instance v1, Lcom/android/internal/os/BinderInternal$CallSession;

    invoke-direct {v1}, Lcom/android/internal/os/BinderInternal$CallSession;-><init>()V

    goto :goto_11

    :cond_10
    move-object v1, v0

    :goto_11
    return-object v1
.end method

.method private blacklist processCallEnded(Lcom/android/internal/os/BinderInternal$CallSession;III)V
    .registers 27
    .param p1, "s"    # Lcom/android/internal/os/BinderInternal$CallSession;
    .param p2, "parcelRequestSize"    # I
    .param p3, "parcelReplySize"    # I
    .param p4, "workSourceUid"    # I

    .line 268
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p4

    iget-boolean v0, v1, Lcom/android/internal/os/BinderCallsStats;->mCollectLatencyData:Z

    if-eqz v0, :cond_f

    .line 269
    iget-object v0, v1, Lcom/android/internal/os/BinderCallsStats;->mLatencyObserver:Lcom/android/internal/os/BinderLatencyObserver;

    invoke-virtual {v0, v2}, Lcom/android/internal/os/BinderLatencyObserver;->callEnded(Lcom/android/internal/os/BinderInternal$CallSession;)V

    .line 273
    :cond_f
    invoke-direct {v1}, Lcom/android/internal/os/BinderCallsStats;->canCollect()Z

    move-result v0

    if-nez v0, :cond_16

    .line 274
    return-void

    .line 277
    :cond_16
    const/4 v0, 0x0

    .line 279
    .local v0, "uidEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    iget-boolean v4, v2, Lcom/android/internal/os/BinderInternal$CallSession;->recordedCall:Z

    if-eqz v4, :cond_1f

    .line 280
    const/4 v4, 0x1

    move v5, v4

    move-object v4, v0

    .local v4, "recordCall":Z
    goto :goto_2f

    .line 281
    .end local v4    # "recordCall":Z
    :cond_1f
    iget-boolean v4, v1, Lcom/android/internal/os/BinderCallsStats;->mRecordingAllTransactionsForUid:Z

    if-eqz v4, :cond_2c

    .line 282
    invoke-direct {v1, v3}, Lcom/android/internal/os/BinderCallsStats;->getUidEntry(I)Lcom/android/internal/os/BinderCallsStats$UidEntry;

    move-result-object v0

    .line 283
    iget-boolean v4, v0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordAllTransactions:Z

    move v5, v4

    move-object v4, v0

    .restart local v4    # "recordCall":Z
    goto :goto_2f

    .line 285
    .end local v4    # "recordCall":Z
    :cond_2c
    const/4 v4, 0x0

    move v5, v4

    move-object v4, v0

    .line 290
    .end local v0    # "uidEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .local v4, "uidEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .local v5, "recordCall":Z
    :goto_2f
    if-eqz v5, :cond_40

    .line 291
    invoke-virtual {v1}, Lcom/android/internal/os/BinderCallsStats;->getThreadTimeMicro()J

    move-result-wide v6

    iget-wide v8, v2, Lcom/android/internal/os/BinderInternal$CallSession;->cpuTimeStarted:J

    sub-long/2addr v6, v8

    .line 292
    .local v6, "duration":J
    invoke-virtual {v1}, Lcom/android/internal/os/BinderCallsStats;->getElapsedRealtimeMicro()J

    move-result-wide v8

    iget-wide v10, v2, Lcom/android/internal/os/BinderInternal$CallSession;->timeStarted:J

    sub-long/2addr v8, v10

    .local v8, "latencyDuration":J
    goto :goto_44

    .line 294
    .end local v6    # "duration":J
    .end local v8    # "latencyDuration":J
    :cond_40
    const-wide/16 v6, 0x0

    .line 295
    .restart local v6    # "duration":J
    const-wide/16 v8, 0x0

    .line 297
    .restart local v8    # "latencyDuration":J
    :goto_44
    iget-boolean v0, v1, Lcom/android/internal/os/BinderCallsStats;->mTrackScreenInteractive:Z

    if-eqz v0, :cond_4f

    .line 298
    iget-object v0, v1, Lcom/android/internal/os/BinderCallsStats;->mDeviceState:Lcom/android/internal/os/CachedDeviceState$Readonly;

    invoke-virtual {v0}, Lcom/android/internal/os/CachedDeviceState$Readonly;->isScreenInteractive()Z

    move-result v0

    goto :goto_50

    .line 299
    :cond_4f
    const/4 v0, 0x0

    :goto_50
    move v15, v0

    .line 300
    .local v15, "screenInteractive":Z
    iget-boolean v0, v1, Lcom/android/internal/os/BinderCallsStats;->mTrackDirectCallingUid:Z

    if-eqz v0, :cond_5b

    .line 301
    invoke-virtual {v1}, Lcom/android/internal/os/BinderCallsStats;->getCallingUid()I

    move-result v0

    move v12, v0

    goto :goto_5d

    .line 302
    :cond_5b
    const/4 v0, -0x1

    move v12, v0

    :goto_5d
    nop

    .line 304
    .local v12, "callingUid":I
    iget-object v11, v1, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 306
    :try_start_61
    invoke-direct {v1}, Lcom/android/internal/os/BinderCallsStats;->canCollect()Z

    move-result v0
    :try_end_65
    .catchall {:try_start_61 .. :try_end_65} :catchall_195

    if-nez v0, :cond_74

    .line 307
    :try_start_67
    monitor-exit v11

    return-void

    .line 358
    :catchall_69
    move-exception v0

    move/from16 v13, p2

    move v14, v5

    move-wide/from16 v20, v6

    move-object v10, v11

    move/from16 v5, p3

    goto/16 :goto_19e

    .line 310
    :cond_74
    if-nez v4, :cond_7b

    .line 311
    invoke-direct {v1, v3}, Lcom/android/internal/os/BinderCallsStats;->getUidEntry(I)Lcom/android/internal/os/BinderCallsStats$UidEntry;

    move-result-object v0
    :try_end_7a
    .catchall {:try_start_67 .. :try_end_7a} :catchall_69

    move-object v4, v0

    .line 314
    :cond_7b
    :try_start_7b
    iget-wide v13, v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    const-wide/16 v17, 0x1

    add-long v13, v13, v17

    iput-wide v13, v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    .line 315
    iget-wide v13, v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;->incrementalCallCount:J

    add-long v13, v13, v17

    iput-wide v13, v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;->incrementalCallCount:J

    .line 316
    if-eqz v5, :cond_153

    .line 317
    iget-wide v13, v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    add-long/2addr v13, v6

    iput-wide v13, v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    .line 318
    iget-wide v13, v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordedCallCount:J

    add-long v13, v13, v17

    iput-wide v13, v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordedCallCount:J

    .line 320
    iget-object v13, v2, Lcom/android/internal/os/BinderInternal$CallSession;->binderClass:Ljava/lang/Class;

    iget v14, v2, Lcom/android/internal/os/BinderInternal$CallSession;->transactionCode:I
    :try_end_9a
    .catchall {:try_start_7b .. :try_end_9a} :catchall_18a

    move-object/from16 v16, v11

    :try_start_9c
    iget-wide v10, v1, Lcom/android/internal/os/BinderCallsStats;->mCallStatsCount:J

    iget v0, v1, Lcom/android/internal/os/BinderCallsStats;->mMaxBinderCallStatsCount:I
    :try_end_a0
    .catchall {:try_start_9c .. :try_end_a0} :catchall_147

    move-object/from16 v20, v4

    .end local v4    # "uidEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .local v20, "uidEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    int-to-long v3, v0

    cmp-long v0, v10, v3

    const/4 v3, 0x1

    if-ltz v0, :cond_ad

    move-object/from16 v4, v16

    move/from16 v16, v3

    goto :goto_b1

    :cond_ad
    move-object/from16 v4, v16

    const/16 v16, 0x0

    :goto_b1
    move-object v10, v4

    move-object/from16 v11, v20

    .end local v20    # "uidEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .local v11, "uidEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    :try_start_b4
    invoke-virtual/range {v11 .. v16}, Lcom/android/internal/os/BinderCallsStats$UidEntry;->getOrCreate(ILjava/lang/Class;IZZ)Lcom/android/internal/os/BinderCallsStats$CallStat;

    move-result-object v0

    .line 324
    .local v0, "callStat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    iget-wide v13, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J
    :try_end_ba
    .catchall {:try_start_b4 .. :try_end_ba} :catchall_13c

    const-wide/16 v20, 0x0

    cmp-long v4, v13, v20

    if-nez v4, :cond_c3

    move/from16 v19, v3

    goto :goto_c5

    :cond_c3
    const/16 v19, 0x0

    .line 325
    .local v19, "isNewCallStat":Z
    :goto_c5
    if-eqz v19, :cond_d9

    .line 326
    :try_start_c7
    iget-wide v3, v1, Lcom/android/internal/os/BinderCallsStats;->mCallStatsCount:J

    add-long v3, v3, v17

    iput-wide v3, v1, Lcom/android/internal/os/BinderCallsStats;->mCallStatsCount:J
    :try_end_cd
    .catchall {:try_start_c7 .. :try_end_cd} :catchall_ce

    goto :goto_d9

    .line 358
    .end local v0    # "callStat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    .end local v19    # "isNewCallStat":Z
    :catchall_ce
    move-exception v0

    move/from16 v13, p2

    move v14, v5

    move-wide/from16 v20, v6

    move-object v4, v11

    move/from16 v5, p3

    goto/16 :goto_19e

    .line 329
    .restart local v0    # "callStat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    .restart local v19    # "isNewCallStat":Z
    :cond_d9
    :goto_d9
    :try_start_d9
    iget-wide v3, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    add-long v3, v3, v17

    iput-wide v3, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    .line 330
    iget-wide v3, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->incrementalCallCount:J

    add-long v3, v3, v17

    iput-wide v3, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->incrementalCallCount:J

    .line 331
    iget-wide v3, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    add-long v3, v3, v17

    iput-wide v3, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    .line 332
    iget-wide v3, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    add-long/2addr v3, v6

    iput-wide v3, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    .line 333
    iget-wide v3, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxCpuTimeMicros:J

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxCpuTimeMicros:J

    .line 334
    iget-wide v3, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->latencyMicros:J

    add-long/2addr v3, v8

    iput-wide v3, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->latencyMicros:J

    .line 335
    iget-wide v3, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxLatencyMicros:J

    .line 336
    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxLatencyMicros:J

    .line 337
    iget-boolean v3, v1, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    if-eqz v3, :cond_134

    .line 338
    iget-wide v3, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->exceptionCount:J

    iget-boolean v13, v2, Lcom/android/internal/os/BinderInternal$CallSession;->exceptionThrown:Z

    if-eqz v13, :cond_110

    goto :goto_112

    :cond_110
    move-wide/from16 v17, v20

    :goto_112
    add-long v3, v3, v17

    iput-wide v3, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->exceptionCount:J

    .line 339
    iget-wide v3, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxRequestSizeBytes:J
    :try_end_118
    .catchall {:try_start_d9 .. :try_end_118} :catchall_13c

    move/from16 v13, p2

    move v14, v5

    move-wide/from16 v20, v6

    .end local v5    # "recordCall":Z
    .end local v6    # "duration":J
    .local v14, "recordCall":Z
    .local v20, "duration":J
    int-to-long v5, v13

    .line 340
    :try_start_11e
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxRequestSizeBytes:J

    .line 341
    iget-wide v3, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxReplySizeBytes:J
    :try_end_126
    .catchall {:try_start_11e .. :try_end_126} :catchall_130

    move/from16 v5, p3

    int-to-long v6, v5

    .line 342
    :try_start_129
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxReplySizeBytes:J

    goto :goto_13b

    .line 358
    .end local v0    # "callStat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    .end local v19    # "isNewCallStat":Z
    :catchall_130
    move-exception v0

    move/from16 v5, p3

    goto :goto_188

    .line 337
    .end local v14    # "recordCall":Z
    .end local v20    # "duration":J
    .restart local v0    # "callStat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    .restart local v5    # "recordCall":Z
    .restart local v6    # "duration":J
    .restart local v19    # "isNewCallStat":Z
    :cond_134
    move/from16 v13, p2

    move v14, v5

    move-wide/from16 v20, v6

    move/from16 v5, p3

    .line 344
    .end local v0    # "callStat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    .end local v5    # "recordCall":Z
    .end local v6    # "duration":J
    .end local v19    # "isNewCallStat":Z
    .restart local v14    # "recordCall":Z
    .restart local v20    # "duration":J
    :goto_13b
    goto :goto_172

    .line 358
    .end local v14    # "recordCall":Z
    .end local v20    # "duration":J
    .restart local v5    # "recordCall":Z
    .restart local v6    # "duration":J
    :catchall_13c
    move-exception v0

    move/from16 v13, p2

    move v14, v5

    move-wide/from16 v20, v6

    move/from16 v5, p3

    move-object v4, v11

    .end local v5    # "recordCall":Z
    .end local v6    # "duration":J
    .restart local v14    # "recordCall":Z
    .restart local v20    # "duration":J
    goto/16 :goto_19e

    .end local v11    # "uidEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .end local v14    # "recordCall":Z
    .end local v20    # "duration":J
    .restart local v4    # "uidEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .restart local v5    # "recordCall":Z
    .restart local v6    # "duration":J
    :catchall_147
    move-exception v0

    move/from16 v13, p2

    move-object v11, v4

    move v14, v5

    move-wide/from16 v20, v6

    move-object/from16 v10, v16

    move/from16 v5, p3

    goto :goto_194

    .line 347
    :cond_153
    move/from16 v13, p2

    move v14, v5

    move-wide/from16 v20, v6

    move-object v10, v11

    move/from16 v5, p3

    move-object v11, v4

    .end local v4    # "uidEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .end local v5    # "recordCall":Z
    .end local v6    # "duration":J
    .restart local v11    # "uidEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .restart local v14    # "recordCall":Z
    .restart local v20    # "duration":J
    iget-object v0, v2, Lcom/android/internal/os/BinderInternal$CallSession;->binderClass:Ljava/lang/Class;

    iget v3, v2, Lcom/android/internal/os/BinderInternal$CallSession;->transactionCode:I

    invoke-virtual {v11, v12, v0, v3, v15}, Lcom/android/internal/os/BinderCallsStats$UidEntry;->get(ILjava/lang/Class;IZ)Lcom/android/internal/os/BinderCallsStats$CallStat;

    move-result-object v0

    .line 350
    .restart local v0    # "callStat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    if-eqz v0, :cond_172

    .line 351
    iget-wide v3, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    add-long v3, v3, v17

    iput-wide v3, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    .line 352
    iget-wide v3, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->incrementalCallCount:J

    add-long v3, v3, v17

    iput-wide v3, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->incrementalCallCount:J

    .line 355
    .end local v0    # "callStat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    :cond_172
    :goto_172
    iget-object v0, v1, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserver:Lcom/android/internal/os/BinderInternal$CallStatsObserver;

    if-eqz v0, :cond_185

    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-nez v0, :cond_185

    .line 356
    iget-object v0, v1, Lcom/android/internal/os/BinderCallsStats;->mSendUidsToObserver:Landroid/util/ArraySet;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 358
    :cond_185
    monitor-exit v10
    :try_end_186
    .catchall {:try_start_129 .. :try_end_186} :catchall_187

    .line 359
    return-void

    .line 358
    :catchall_187
    move-exception v0

    :goto_188
    move-object v4, v11

    goto :goto_19e

    .end local v11    # "uidEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .end local v14    # "recordCall":Z
    .end local v20    # "duration":J
    .restart local v4    # "uidEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .restart local v5    # "recordCall":Z
    .restart local v6    # "duration":J
    :catchall_18a
    move-exception v0

    move/from16 v13, p2

    move v14, v5

    move-wide/from16 v20, v6

    move-object v10, v11

    move/from16 v5, p3

    move-object v11, v4

    .end local v4    # "uidEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .end local v5    # "recordCall":Z
    .end local v6    # "duration":J
    .restart local v11    # "uidEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .restart local v14    # "recordCall":Z
    .restart local v20    # "duration":J
    :goto_194
    goto :goto_19e

    .end local v11    # "uidEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .end local v14    # "recordCall":Z
    .end local v20    # "duration":J
    .restart local v4    # "uidEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .restart local v5    # "recordCall":Z
    .restart local v6    # "duration":J
    :catchall_195
    move-exception v0

    move/from16 v13, p2

    move v14, v5

    move-wide/from16 v20, v6

    move-object v10, v11

    move/from16 v5, p3

    .end local v5    # "recordCall":Z
    .end local v6    # "duration":J
    .restart local v14    # "recordCall":Z
    .restart local v20    # "duration":J
    :goto_19e
    :try_start_19e
    monitor-exit v10
    :try_end_19f
    .catchall {:try_start_19e .. :try_end_19f} :catchall_1a0

    throw v0

    :catchall_1a0
    move-exception v0

    goto :goto_19e
.end method

.method private blacklist resolveBinderMethodNames(Ljava/util/ArrayList;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;",
            ">;)V"
        }
    .end annotation

    .line 553
    .local p1, "resultCallStats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    const/4 v0, 0x0

    .line 554
    .local v0, "previous":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    const/4 v1, 0x0

    .line 555
    .local v1, "previousMethodName":Ljava/lang/String;
    new-instance v2, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 556
    new-instance v2, Lcom/android/internal/os/BinderTransactionNameResolver;

    invoke-direct {v2}, Lcom/android/internal/os/BinderTransactionNameResolver;-><init>()V

    .line 557
    .local v2, "resolver":Lcom/android/internal/os/BinderTransactionNameResolver;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    .line 558
    .local v4, "exported":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_30

    iget-object v7, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    iget-object v8, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    .line 559
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2e

    goto :goto_30

    :cond_2e
    move v7, v5

    goto :goto_31

    :cond_30
    :goto_30
    move v7, v6

    .line 560
    .local v7, "isClassDifferent":Z
    :goto_31
    if-eqz v0, :cond_39

    iget v8, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->transactionCode:I

    iget v9, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->transactionCode:I

    if-eq v8, v9, :cond_3a

    :cond_39
    move v5, v6

    .line 563
    .local v5, "isCodeDifferent":Z
    :cond_3a
    if-nez v7, :cond_41

    if-eqz v5, :cond_3f

    goto :goto_41

    .line 566
    :cond_3f
    move-object v6, v1

    .local v6, "methodName":Ljava/lang/String;
    goto :goto_49

    .line 564
    .end local v6    # "methodName":Ljava/lang/String;
    :cond_41
    :goto_41
    iget-object v6, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->binderClass:Ljava/lang/Class;

    iget v8, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->transactionCode:I

    invoke-virtual {v2, v6, v8}, Lcom/android/internal/os/BinderTransactionNameResolver;->getMethodName(Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v6

    .line 568
    .restart local v6    # "methodName":Ljava/lang/String;
    :goto_49
    move-object v1, v6

    .line 569
    iput-object v6, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->methodName:Ljava/lang/String;

    .line 570
    move-object v0, v4

    .line 571
    .end local v4    # "exported":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    .end local v5    # "isCodeDifferent":Z
    .end local v6    # "methodName":Ljava/lang/String;
    .end local v7    # "isClassDifferent":Z
    goto :goto_13

    .line 572
    :cond_4e
    return-void
.end method

.method private blacklist shouldExport(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Z)Z
    .registers 7
    .param p1, "e"    # Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    .param p2, "applySharding"    # Z

    .line 362
    const/4 v0, 0x1

    if-nez p2, :cond_4

    .line 363
    return v0

    .line 366
    :cond_4
    iget-object v1, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->binderClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 367
    .local v1, "hash":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->transactionCode:I

    add-int/2addr v2, v3

    .line 368
    .end local v1    # "hash":I
    .local v2, "hash":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callingUid:I

    add-int/2addr v1, v3

    .line 369
    .end local v2    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->screenInteractive:Z

    if-eqz v3, :cond_1d

    const/16 v3, 0x4cf

    goto :goto_1f

    :cond_1d
    const/16 v3, 0x4d5

    :goto_1f
    add-int/2addr v2, v3

    .line 371
    .end local v1    # "hash":I
    .restart local v2    # "hash":I
    iget v1, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingOffset:I

    add-int/2addr v1, v2

    iget v3, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingModulo:I

    rem-int/2addr v1, v3

    if-nez v1, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    return v0
.end method

.method public static blacklist startForBluetooth(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 1164
    new-instance v0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;

    new-instance v1, Lcom/android/internal/os/BinderCallsStats;

    new-instance v2, Lcom/android/internal/os/BinderCallsStats$Injector;

    invoke-direct {v2}, Lcom/android/internal/os/BinderCallsStats$Injector;-><init>()V

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/android/internal/os/BinderCallsStats;-><init>(Lcom/android/internal/os/BinderCallsStats$Injector;I)V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;-><init>(Landroid/content/Context;Lcom/android/internal/os/BinderCallsStats;)V

    .line 1170
    return-void
.end method


# virtual methods
.method public blacklist callEnded(Lcom/android/internal/os/BinderInternal$CallSession;III)V
    .registers 7
    .param p1, "s"    # Lcom/android/internal/os/BinderInternal$CallSession;
    .param p2, "parcelRequestSize"    # I
    .param p3, "parcelReplySize"    # I
    .param p4, "workSourceUid"    # I

    .line 255
    if-nez p1, :cond_3

    .line 256
    return-void

    .line 259
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BinderCallsStats;->processCallEnded(Lcom/android/internal/os/BinderInternal$CallSession;III)V

    .line 261
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallSessionsPool:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_15

    .line 262
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallSessionsPool:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_15
    return-void
.end method

.method public blacklist callStarted(Landroid/os/Binder;II)Lcom/android/internal/os/BinderInternal$CallSession;
    .registers 8
    .param p1, "binder"    # Landroid/os/Binder;
    .param p2, "code"    # I
    .param p3, "workSourceUid"    # I

    .line 221
    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->noteNativeThreadId()V

    .line 223
    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->canCollect()Z

    move-result v0

    .line 225
    .local v0, "collectCpu":Z
    iget-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCollectLatencyData:Z

    if-nez v1, :cond_f

    if-nez v0, :cond_f

    .line 226
    const/4 v1, 0x0

    return-object v1

    .line 229
    :cond_f
    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->obtainCallSession()Lcom/android/internal/os/BinderInternal$CallSession;

    move-result-object v1

    .line 230
    .local v1, "s":Lcom/android/internal/os/BinderInternal$CallSession;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->binderClass:Ljava/lang/Class;

    .line 231
    iput p2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->transactionCode:I

    .line 232
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->exceptionThrown:Z

    .line 233
    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->cpuTimeStarted:J

    .line 234
    iput-wide v2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->timeStarted:J

    .line 235
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->shouldRecordDetailedData()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->recordedCall:Z

    .line 237
    if-eqz v0, :cond_41

    iget-boolean v2, p0, Lcom/android/internal/os/BinderCallsStats;->mRecordingAllTransactionsForUid:Z

    if-nez v2, :cond_34

    iget-boolean v2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->recordedCall:Z

    if-eqz v2, :cond_41

    .line 238
    :cond_34
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->getThreadTimeMicro()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->cpuTimeStarted:J

    .line 239
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->getElapsedRealtimeMicro()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->timeStarted:J

    goto :goto_4b

    .line 240
    :cond_41
    iget-boolean v2, p0, Lcom/android/internal/os/BinderCallsStats;->mCollectLatencyData:Z

    if-eqz v2, :cond_4b

    .line 241
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->getElapsedRealtimeMicro()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->timeStarted:J

    .line 244
    :cond_4b
    :goto_4b
    return-object v1
.end method

.method public blacklist callThrewException(Lcom/android/internal/os/BinderInternal$CallSession;Ljava/lang/Exception;)V
    .registers 9
    .param p1, "s"    # Lcom/android/internal/os/BinderInternal$CallSession;
    .param p2, "exception"    # Ljava/lang/Exception;

    .line 385
    if-nez p1, :cond_3

    .line 386
    return-void

    .line 388
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/internal/os/BinderInternal$CallSession;->exceptionThrown:Z

    .line 390
    :try_start_6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 391
    .local v1, "className":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_11} :catch_3d

    .line 392
    :try_start_11
    iget-object v3, p0, Lcom/android/internal/os/BinderCallsStats;->mExceptionCounts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/16 v4, 0x32

    if-lt v3, v4, :cond_1e

    .line 393
    const-string v3, "overflow"

    move-object v1, v3

    .line 395
    :cond_1e
    iget-object v3, p0, Lcom/android/internal/os/BinderCallsStats;->mExceptionCounts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 396
    .local v3, "count":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/internal/os/BinderCallsStats;->mExceptionCounts:Landroid/util/ArrayMap;

    if-nez v3, :cond_2b

    goto :goto_30

    :cond_2b
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v0, v5

    :goto_30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    nop

    .end local v3    # "count":Ljava/lang/Integer;
    monitor-exit v2

    .line 401
    .end local v1    # "className":Ljava/lang/String;
    goto :goto_45

    .line 397
    .restart local v1    # "className":Ljava/lang/String;
    :catchall_3a
    move-exception v0

    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_11 .. :try_end_3c} :catchall_3a

    .end local p0    # "this":Lcom/android/internal/os/BinderCallsStats;
    .end local p1    # "s":Lcom/android/internal/os/BinderInternal$CallSession;
    .end local p2    # "exception":Ljava/lang/Exception;
    :try_start_3c
    throw v0
    :try_end_3d
    .catch Ljava/lang/RuntimeException; {:try_start_3c .. :try_end_3d} :catch_3d

    .line 398
    .end local v1    # "className":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/internal/os/BinderCallsStats;
    .restart local p1    # "s":Lcom/android/internal/os/BinderInternal$CallSession;
    .restart local p2    # "exception":Ljava/lang/Exception;
    :catch_3d
    move-exception v0

    .line 400
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "BinderCallsStats"

    const-string v2, "Unexpected exception while updating mExceptionCounts"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_45
    return-void
.end method

.method public blacklist dump(Ljava/io/PrintWriter;Lcom/android/internal/os/AppIdToPackageMap;IZ)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageMap"    # Lcom/android/internal/os/AppIdToPackageMap;
    .param p3, "workSourceUid"    # I
    .param p4, "verbose"    # Z

    .line 597
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 598
    :try_start_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BinderCallsStats;->dumpLocked(Ljava/io/PrintWriter;Lcom/android/internal/os/AppIdToPackageMap;IZ)V

    .line 599
    monitor-exit v0

    .line 600
    return-void

    .line 599
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method protected blacklist getCallingUid()I
    .registers 2

    .line 719
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method public blacklist getCollectLatencyData()Z
    .registers 2

    .line 867
    iget-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCollectLatencyData:Z

    return v0
.end method

.method protected blacklist getElapsedRealtimeMicro()J
    .registers 5

    .line 734
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist getExceptionCounts()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1121
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mExceptionCounts:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public blacklist getExportedCallStats()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;",
            ">;"
        }
    .end annotation

    .line 455
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStats(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExportedCallStats(I)Ljava/util/ArrayList;
    .registers 3
    .param p1, "workSourceUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;",
            ">;"
        }
    .end annotation

    .line 503
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStats(IZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExportedCallStats(IZ)Ljava/util/ArrayList;
    .registers 10
    .param p1, "workSourceUid"    # I
    .param p2, "applySharding"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;",
            ">;"
        }
    .end annotation

    .line 513
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 514
    .local v0, "resultCallStats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 515
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/internal/os/BinderCallsStats;->getUidEntry(I)Lcom/android/internal/os/BinderCallsStats$UidEntry;

    move-result-object v2

    .line 516
    .local v2, "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    invoke-virtual {v2}, Lcom/android/internal/os/BinderCallsStats$UidEntry;->getCallStatsList()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BinderCallsStats$CallStat;

    .line 517
    .local v4, "stat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    invoke-direct {p0, p1, v4}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStat(ILcom/android/internal/os/BinderCallsStats$CallStat;)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v5

    .line 518
    .local v5, "e":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    invoke-direct {p0, v5, p2}, Lcom/android/internal/os/BinderCallsStats;->shouldExport(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Z)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 519
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    .end local v4    # "stat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    .end local v5    # "e":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    :cond_2d
    goto :goto_14

    .line 522
    .end local v2    # "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    :cond_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_33

    .line 525
    invoke-direct {p0, v0}, Lcom/android/internal/os/BinderCallsStats;->resolveBinderMethodNames(Ljava/util/ArrayList;)V

    .line 527
    return-object v0

    .line 522
    :catchall_33
    move-exception v2

    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v2
.end method

.method public blacklist getExportedCallStats(Z)Ljava/util/ArrayList;
    .registers 11
    .param p1, "applySharding"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;",
            ">;"
        }
    .end annotation

    .line 465
    iget-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    if-nez v0, :cond_a

    .line 466
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 469
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 470
    .local v0, "resultCallStats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 471
    :try_start_12
    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 472
    .local v2, "uidEntriesSize":I
    const/4 v3, 0x0

    .local v3, "entryIdx":I
    :goto_19
    if-ge v3, v2, :cond_4a

    .line 473
    iget-object v4, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 474
    .local v4, "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    invoke-virtual {v4}, Lcom/android/internal/os/BinderCallsStats$UidEntry;->getCallStatsList()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_47

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BinderCallsStats$CallStat;

    .line 475
    .local v6, "stat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    iget v7, v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    invoke-direct {p0, v7, v6}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStat(ILcom/android/internal/os/BinderCallsStats$CallStat;)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v7

    .line 476
    .local v7, "e":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    invoke-direct {p0, v7, p1}, Lcom/android/internal/os/BinderCallsStats;->shouldExport(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Z)Z

    move-result v8

    if-eqz v8, :cond_46

    .line 477
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    .end local v6    # "stat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    .end local v7    # "e":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    :cond_46
    goto :goto_2b

    .line 472
    .end local v4    # "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    :cond_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 481
    .end local v2    # "uidEntriesSize":I
    .end local v3    # "entryIdx":I
    :cond_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_12 .. :try_end_4b} :catchall_99

    .line 484
    invoke-direct {p0, v0}, Lcom/android/internal/os/BinderCallsStats;->resolveBinderMethodNames(Ljava/util/ArrayList;)V

    .line 487
    iget-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mAddDebugEntries:Z

    if-eqz v1, :cond_98

    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    if-eqz v1, :cond_98

    .line 488
    const-string/jumbo v1, "start_time_millis"

    iget-wide v2, p0, Lcom/android/internal/os/BinderCallsStats;->mStartElapsedTime:J

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    const-string v1, "end_time_millis"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    const-string v1, "battery_time_millis"

    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    .line 491
    invoke-virtual {v2}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->getMillis()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v1

    .line 490
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    const-string/jumbo v1, "sampling_interval"

    iget v2, p0, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    int-to-long v2, v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    const-string/jumbo v1, "sharding_modulo"

    iget v2, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingModulo:I

    int-to-long v2, v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    :cond_98
    return-object v0

    .line 481
    :catchall_99
    move-exception v2

    :try_start_9a
    monitor-exit v1
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    throw v2
.end method

.method public blacklist getExportedExceptionStats()Landroid/util/ArrayMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 589
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 590
    :try_start_3
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mExceptionCounts:Landroid/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    monitor-exit v0

    return-object v1

    .line 591
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public blacklist getLatencyObserver()Lcom/android/internal/os/BinderLatencyObserver;
    .registers 2

    .line 1125
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLatencyObserver:Lcom/android/internal/os/BinderLatencyObserver;

    return-object v0
.end method

.method protected blacklist getNativeTid()I
    .registers 2

    .line 723
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    return v0
.end method

.method public blacklist getNativeTids()[I
    .registers 2

    .line 730
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mNativeTids:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getThreadTimeMicro()J
    .registers 3

    .line 715
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMicro()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getUidEntries()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/os/BinderCallsStats$UidEntry;",
            ">;"
        }
    .end annotation

    .line 1116
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    return-object v0
.end method

.method public blacklist recordAllCallsForWorkSourceUid(I)V
    .registers 5
    .param p1, "workSourceUid"    # I

    .line 797
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BinderCallsStats;->setDetailedTracking(Z)V

    .line 799
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recording all Binder calls for UID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BinderCallsStats"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    invoke-direct {p0, p1}, Lcom/android/internal/os/BinderCallsStats;->getUidEntry(I)Lcom/android/internal/os/BinderCallsStats$UidEntry;

    move-result-object v1

    .line 801
    .local v1, "uidEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    iput-boolean v0, v1, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordAllTransactions:Z

    .line 802
    iput-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mRecordingAllTransactionsForUid:Z

    .line 803
    return-void
.end method

.method public blacklist reset()V
    .registers 4

    .line 871
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 872
    const-wide/16 v1, 0x0

    :try_start_5
    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsCount:J

    .line 873
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 874
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mExceptionCounts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 875
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mStartCurrentTime:J

    .line 876
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mStartElapsedTime:J

    .line 877
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    if-eqz v1, :cond_26

    .line 878
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    invoke-virtual {v1}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->reset()V

    .line 880
    :cond_26
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mRecordingAllTransactionsForUid:Z

    .line 883
    monitor-exit v0

    .line 884
    return-void

    .line 883
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public blacklist setAddDebugEntries(Z)V
    .registers 2
    .param p1, "addDebugEntries"    # Z

    .line 806
    iput-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats;->mAddDebugEntries:Z

    .line 807
    return-void
.end method

.method public blacklist setCallStatsObserver(Lcom/android/internal/os/BinderInternal$CallStatsObserver;)V
    .registers 2
    .param p1, "callStatsObserver"    # Lcom/android/internal/os/BinderInternal$CallStatsObserver;

    .line 205
    iput-object p1, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserver:Lcom/android/internal/os/BinderInternal$CallStatsObserver;

    .line 206
    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->noteBinderThreadNativeIds()V

    .line 207
    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->noteCallsStatsDelayed()V

    .line 208
    return-void
.end method

.method public blacklist setCollectLatencyData(Z)V
    .registers 2
    .param p1, "collectLatencyData"    # Z

    .line 861
    iput-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats;->mCollectLatencyData:Z

    .line 862
    return-void
.end method

.method public blacklist setDetailedTracking(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 745
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 746
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    if-eq p1, v1, :cond_c

    .line 747
    iput-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    .line 748
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->reset()V

    .line 750
    :cond_c
    monitor-exit v0

    .line 751
    return-void

    .line 750
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public blacklist setDeviceState(Lcom/android/internal/os/CachedDeviceState$Readonly;)V
    .registers 3
    .param p1, "deviceState"    # Lcom/android/internal/os/CachedDeviceState$Readonly;

    .line 192
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    if-eqz v0, :cond_9

    .line 193
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    invoke-virtual {v0}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->close()V

    .line 195
    :cond_9
    iput-object p1, p0, Lcom/android/internal/os/BinderCallsStats;->mDeviceState:Lcom/android/internal/os/CachedDeviceState$Readonly;

    .line 196
    invoke-virtual {p1}, Lcom/android/internal/os/CachedDeviceState$Readonly;->createTimeOnBatteryStopwatch()Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    .line 197
    return-void
.end method

.method public blacklist setIgnoreBatteryStatus(Z)V
    .registers 4
    .param p1, "ignored"    # Z

    .line 781
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 782
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mIgnoreBatteryStatus:Z

    if-eq p1, v1, :cond_c

    .line 783
    iput-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats;->mIgnoreBatteryStatus:Z

    .line 784
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->reset()V

    .line 786
    :cond_c
    monitor-exit v0

    .line 787
    return-void

    .line 786
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public blacklist setMaxBinderCallStats(I)V
    .registers 5
    .param p1, "maxKeys"    # I

    .line 813
    if-gtz p1, :cond_1b

    .line 814
    const-string v0, "BinderCallsStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignored invalid max value (value must be positive): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    return-void

    .line 819
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 820
    :try_start_1e
    iget v1, p0, Lcom/android/internal/os/BinderCallsStats;->mMaxBinderCallStatsCount:I

    if-eq p1, v1, :cond_27

    .line 821
    iput p1, p0, Lcom/android/internal/os/BinderCallsStats;->mMaxBinderCallStatsCount:I

    .line 822
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->reset()V

    .line 824
    :cond_27
    monitor-exit v0

    .line 825
    return-void

    .line 824
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public blacklist setSamplingInterval(I)V
    .registers 5
    .param p1, "samplingInterval"    # I

    .line 828
    if-gtz p1, :cond_1b

    .line 829
    const-string v0, "BinderCallsStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignored invalid sampling interval (value must be positive): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    return-void

    .line 834
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 835
    :try_start_1e
    iget v1, p0, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    if-eq p1, v1, :cond_27

    .line 836
    iput p1, p0, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    .line 837
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->reset()V

    .line 839
    :cond_27
    monitor-exit v0

    .line 840
    return-void

    .line 839
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public blacklist setShardingModulo(I)V
    .registers 5
    .param p1, "shardingModulo"    # I

    .line 844
    if-gtz p1, :cond_1b

    .line 845
    const-string v0, "BinderCallsStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignored invalid sharding modulo (value must be positive): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    return-void

    .line 850
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 851
    :try_start_1e
    iget v1, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingModulo:I

    if-eq p1, v1, :cond_2f

    .line 852
    iput p1, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingModulo:I

    .line 853
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mRandom:Ljava/util/Random;

    invoke-virtual {v1, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingOffset:I

    .line 854
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->reset()V

    .line 856
    :cond_2f
    monitor-exit v0

    .line 857
    return-void

    .line 856
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_1e .. :try_end_33} :catchall_31

    throw v1
.end method

.method public blacklist setTrackDirectCallerUid(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 769
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 770
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mTrackDirectCallingUid:Z

    if-eq p1, v1, :cond_c

    .line 771
    iput-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats;->mTrackDirectCallingUid:Z

    .line 772
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->reset()V

    .line 774
    :cond_c
    monitor-exit v0

    .line 775
    return-void

    .line 774
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public blacklist setTrackScreenInteractive(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 757
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 758
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mTrackScreenInteractive:Z

    if-eq p1, v1, :cond_c

    .line 759
    iput-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats;->mTrackScreenInteractive:Z

    .line 760
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->reset()V

    .line 762
    :cond_c
    monitor-exit v0

    .line 763
    return-void

    .line 762
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method protected blacklist shouldRecordDetailedData()Z
    .registers 3

    .line 738
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mRandom:Ljava/util/Random;

    iget v1, p0, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method
