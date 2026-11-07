.class public Lcom/android/internal/os/BatteryStatsHistory;
.super Ljava/lang/Object;
.source "BatteryStatsHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;,
        Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;,
        Lcom/android/internal/os/BatteryStatsHistory$EventLogger;,
        Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;,
        Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;,
        Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;
    }
.end annotation


# static fields
.field static final blacklist BATTERY_LEVEL2_TEMP_MASK:I = -0x10000

.field static final blacklist BATTERY_LEVEL2_TEMP_SHIFT:I = 0x10

.field static final blacklist BATTERY_LEVEL2_VOLT_MASK:I = 0xffff

.field static final blacklist BATTERY_LEVEL2_VOLT_SHIFT:I = 0x0

.field static final blacklist BATTERY_LEVEL_DETAILS_FLAG:I = 0x1

.field static final blacklist BATTERY_LEVEL_LEVEL_MASK:I = -0x1000000

.field static final blacklist BATTERY_LEVEL_LEVEL_SHIFT:I = 0x18

.field static final blacklist BATTERY_LEVEL_OVERFLOW_FLAG:I = 0x2

.field static final blacklist BATTERY_LEVEL_TEMP_MASK:I = 0xff8000

.field static final blacklist BATTERY_LEVEL_TEMP_SHIFT:I = 0xf

.field static final blacklist BATTERY_LEVEL_VOLT_MASK:I = 0x7ffc

.field static final blacklist BATTERY_LEVEL_VOLT_SHIFT:I = 0x2

.field private static final blacklist DEBUG:Z = false

.field static final blacklist DELTA_BATTERY_CHARGE_FLAG:I = 0x1000000

.field static final blacklist DELTA_BATTERY_LEVEL_FLAG:I = 0x80000

.field static final blacklist DELTA_EVENT_FLAG:I = 0x800000

.field static final blacklist DELTA_STATE2_FLAG:I = 0x200000

.field static final blacklist DELTA_STATE_FLAG:I = 0x100000

.field static final blacklist DELTA_STATE_MASK:I = -0x2000000

.field static final blacklist DELTA_TIME_ABS:I = 0x7fffd

.field static final blacklist DELTA_TIME_INT:I = 0x7fffe

.field static final blacklist DELTA_TIME_LONG:I = 0x7ffff

.field static final blacklist DELTA_TIME_MASK:I = 0x7ffff

.field static final blacklist DELTA_WAKELOCK_FLAG:I = 0x400000

.field static final blacklist EXTENSION_POWER_STATS_DESCRIPTOR_FLAG:I = 0x1

.field static final blacklist EXTENSION_POWER_STATS_FLAG:I = 0x2

.field static final blacklist EXTENSION_PROCESS_STATE_CHANGE_FLAG:I = 0x4

.field private static final blacklist EXTRA_BUFFER_SIZE_WHEN_DIR_LOCKED:I = 0x186a0

.field static final blacklist HISTORY_TAG_INDEX_LIMIT:I = 0x7ffe

.field private static final blacklist MAX_HISTORY_TAG_STRING_LENGTH:I = 0x400

.field static final blacklist STATE1_TRACE_MASK:I = 0x3fffffff

.field static final blacklist STATE2_TRACE_MASK:I = -0x1

.field static final blacklist STATE_BATTERY_HEALTH_MASK:I = 0x7

.field static final blacklist STATE_BATTERY_HEALTH_SHIFT:I = 0x1a

.field static final blacklist STATE_BATTERY_MASK:I = -0x1000000

.field static final blacklist STATE_BATTERY_PLUG_MASK:I = 0x3

.field static final blacklist STATE_BATTERY_PLUG_SHIFT:I = 0x18

.field static final blacklist STATE_BATTERY_STATUS_MASK:I = 0x7

.field static final blacklist STATE_BATTERY_STATUS_SHIFT:I = 0x1d

.field private static final blacklist TAG:Ljava/lang/String; = "BatteryStatsHistory"

.field static final blacklist TAG_FIRST_OCCURRENCE_FLAG:I = 0x8000

.field private static final blacklist VERSION:I = 0xd6


# instance fields
.field private blacklist mActiveFragment:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

.field private final blacklist mClock:Lcom/android/internal/os/Clock;

.field private final blacklist mEventLogger:Lcom/android/internal/os/BatteryStatsHistory$EventLogger;

.field private blacklist mHaveBatteryLevel:Z

.field private final blacklist mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

.field private final blacklist mHistoryBuffer:Landroid/os/Parcel;

.field private blacklist mHistoryBufferLastPos:I

.field private blacklist mHistoryBufferStartTime:J

.field private final blacklist mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

.field private final blacklist mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

.field private final blacklist mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

.field private blacklist mHistoryMonotonicEndTime:J

.field private blacklist mHistoryParcels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Parcel;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHistoryTagPool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/BatteryStats$HistoryTag;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHistoryTags:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/BatteryStats$HistoryTag;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIteratorCookie:I

.field private blacklist mMaxHistoryBufferSize:I

.field private final blacklist mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

.field private blacklist mMonotonicHistorySize:J

.field private blacklist mMutable:Z

.field private blacklist mNextHistoryTagIdx:I

.field private blacklist mNumHistoryTagChars:I

.field private blacklist mRecordingHistory:Z

.field private final blacklist mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

.field private blacklist mTraceLastState:I

.field private blacklist mTraceLastState2:I

.field private blacklist mTracer:Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;

.field private blacklist mTrackRunningHistoryElapsedRealtimeMs:J

.field private blacklist mTrackRunningHistoryUptimeMs:J

.field private final blacklist mWritableHistory:Lcom/android/internal/os/BatteryStatsHistory;

.field private final blacklist mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final blacklist mWrittenPowerStatsDescriptors:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/internal/os/PowerStats$Descriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    .line 339
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 341
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    .line 349
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    .line 351
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    .line 352
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    .line 353
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    .line 354
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    .line 355
    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    .line 356
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    .line 357
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryElapsedRealtimeMs:J

    .line 358
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryUptimeMs:J

    .line 366
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWrittenPowerStatsDescriptors:Landroid/util/ArraySet;

    .line 367
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    .line 428
    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState:I

    .line 429
    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState2:I

    .line 486
    sget-object v3, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    iput-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mClock:Lcom/android/internal/os/Clock;

    .line 487
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTracer:Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;

    .line 488
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    .line 489
    new-instance v3, Lcom/android/internal/os/BatteryStatsHistory$EventLogger;

    invoke-direct {v3}, Lcom/android/internal/os/BatteryStatsHistory$EventLogger;-><init>()V

    iput-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mEventLogger:Lcom/android/internal/os/BatteryStatsHistory$EventLogger;

    .line 490
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWritableHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 491
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    .line 493
    invoke-virtual {p1}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v3

    .line 495
    .local v3, "historyBlob":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    .line 496
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    array-length v5, v3

    invoke-virtual {v4, v3, v1, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 498
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    .line 499
    invoke-direct {p0, p1, v2}, Lcom/android/internal/os/BatteryStatsHistory;->readFromParcel(Landroid/os/Parcel;Z)V

    .line 500
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;ILcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;Lcom/android/internal/os/Clock;Lcom/android/internal/os/MonotonicClock;Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;Lcom/android/internal/os/BatteryStatsHistory$EventLogger;)V
    .registers 17
    .param p1, "historyBuffer"    # Landroid/os/Parcel;
    .param p2, "maxHistoryBufferSize"    # I
    .param p3, "store"    # Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;
    .param p4, "clock"    # Lcom/android/internal/os/Clock;
    .param p5, "monotonicClock"    # Lcom/android/internal/os/MonotonicClock;
    .param p6, "tracer"    # Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;
    .param p7, "eventLogger"    # Lcom/android/internal/os/BatteryStatsHistory$EventLogger;

    .line 440
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/os/BatteryStatsHistory;-><init>(Landroid/os/Parcel;ILcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;Lcom/android/internal/os/Clock;Lcom/android/internal/os/MonotonicClock;Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;Lcom/android/internal/os/BatteryStatsHistory$EventLogger;Lcom/android/internal/os/BatteryStatsHistory;)V

    .line 442
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;ILcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;Lcom/android/internal/os/Clock;Lcom/android/internal/os/MonotonicClock;Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;Lcom/android/internal/os/BatteryStatsHistory$EventLogger;Lcom/android/internal/os/BatteryStatsHistory;)V
    .registers 13
    .param p1, "historyBuffer"    # Landroid/os/Parcel;
    .param p2, "maxHistoryBufferSize"    # I
    .param p3, "store"    # Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;
    .param p4, "clock"    # Lcom/android/internal/os/Clock;
    .param p5, "monotonicClock"    # Lcom/android/internal/os/MonotonicClock;
    .param p6, "tracer"    # Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;
    .param p7, "eventLogger"    # Lcom/android/internal/os/BatteryStatsHistory$EventLogger;
    .param p8, "writableHistory"    # Lcom/android/internal/os/BatteryStatsHistory;

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    .line 339
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 341
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    .line 349
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    .line 351
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    .line 352
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    .line 353
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    .line 354
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    .line 355
    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    .line 356
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    .line 357
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryElapsedRealtimeMs:J

    .line 358
    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryUptimeMs:J

    .line 366
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWrittenPowerStatsDescriptors:Landroid/util/ArraySet;

    .line 367
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    .line 428
    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState:I

    .line 429
    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState2:I

    .line 448
    iput p2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    .line 449
    iput-object p6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTracer:Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;

    .line 450
    iput-object p4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mClock:Lcom/android/internal/os/Clock;

    .line 451
    iput-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    .line 452
    iput-object p7, p0, Lcom/android/internal/os/BatteryStatsHistory;->mEventLogger:Lcom/android/internal/os/BatteryStatsHistory$EventLogger;

    .line 453
    iput-object p8, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWritableHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 454
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWritableHistory:Lcom/android/internal/os/BatteryStatsHistory;

    if-eqz v1, :cond_6a

    .line 455
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    .line 456
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWritableHistory:Lcom/android/internal/os/BatteryStatsHistory;

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferStartTime:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferStartTime:J

    .line 457
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWritableHistory:Lcom/android/internal/os/BatteryStatsHistory;

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryMonotonicEndTime:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryMonotonicEndTime:J

    .line 460
    :cond_6a
    if-eqz p1, :cond_6f

    .line 461
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    goto :goto_78

    .line 463
    :cond_6f
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    .line 464
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHistory;->initHistoryBuffer()V

    .line 467
    :goto_78
    if-eqz p8, :cond_7f

    .line 468
    iget-object v0, p8, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    goto :goto_9c

    .line 470
    :cond_7f
    iput-object p3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    .line 471
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    if-eqz v0, :cond_9c

    .line 472
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->getLatestFragment()Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    move-result-object v0

    .line 473
    .local v0, "activeFile":Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
    if-nez v0, :cond_99

    .line 474
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    invoke-virtual {v2}, Lcom/android/internal/os/MonotonicClock;->monotonicTime()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->createFragment(J)Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    move-result-object v0

    .line 476
    :cond_99
    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsHistory;->setActiveFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V

    .line 479
    .end local v0    # "activeFile":Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
    :cond_9c
    :goto_9c
    return-void
.end method

.method private blacklist buildBatteryLevelInt(Landroid/os/BatteryStats$HistoryItem;Landroid/os/BatteryStats$HistoryItem;)I
    .registers 13
    .param p1, "cur"    # Landroid/os/BatteryStats$HistoryItem;
    .param p2, "prev"    # Landroid/os/BatteryStats$HistoryItem;

    .line 2105
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iget-byte v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    sub-int/2addr v0, v1

    .line 2106
    .local v0, "levelDelta":I
    iget-short v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    iget-short v2, p2, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    sub-int/2addr v1, v2

    .line 2107
    .local v1, "tempDelta":I
    iget-short v2, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    iget-short v3, p2, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    sub-int/2addr v2, v3

    .line 2108
    .local v2, "voltDelta":I
    nop

    .line 2109
    const v3, 0xff8000

    const/4 v4, 0x2

    invoke-direct {p0, v1, v3, v4}, Lcom/android/internal/os/BatteryStatsHistory;->signedValueFits(III)Z

    move-result v5

    const/16 v6, 0x7ffc

    if-eqz v5, :cond_27

    .line 2110
    const/16 v5, 0xf

    invoke-direct {p0, v2, v6, v5}, Lcom/android/internal/os/BatteryStatsHistory;->signedValueFits(III)Z

    move-result v5

    if-nez v5, :cond_25

    goto :goto_27

    :cond_25
    const/4 v5, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v5, 0x1

    .line 2112
    .local v5, "overflow":Z
    :goto_28
    const/4 v7, 0x0

    .line 2113
    .local v7, "batt":I
    shl-int/lit8 v8, v0, 0x18

    const/high16 v9, -0x1000000

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    .line 2114
    if-eqz v5, :cond_34

    .line 2115
    or-int/lit8 v3, v7, 0x2

    .end local v7    # "batt":I
    .local v3, "batt":I
    goto :goto_3c

    .line 2117
    .end local v3    # "batt":I
    .restart local v7    # "batt":I
    :cond_34
    shl-int/lit8 v4, v1, 0xf

    and-int/2addr v3, v4

    or-int/2addr v3, v7

    .line 2118
    .end local v7    # "batt":I
    .restart local v3    # "batt":I
    shl-int/lit8 v4, v2, 0x2

    and-int/2addr v4, v6

    or-int/2addr v3, v4

    .line 2121
    :goto_3c
    return v3
.end method

.method private blacklist buildExtendedBatteryLevelInt(Landroid/os/BatteryStats$HistoryItem;)I
    .registers 5
    .param p1, "cur"    # Landroid/os/BatteryStats$HistoryItem;

    .line 2125
    const/4 v0, 0x0

    .line 2126
    .local v0, "battExt":I
    iget-short v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, -0x10000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 2127
    iget-short v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    shl-int/lit8 v1, v1, 0x0

    const v2, 0xffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 2128
    return v0
.end method

.method private blacklist buildStateInt(Landroid/os/BatteryStats$HistoryItem;)I
    .registers 6
    .param p1, "h"    # Landroid/os/BatteryStats$HistoryItem;

    .line 2132
    const/4 v0, 0x0

    .line 2133
    .local v0, "plugType":I
    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_9

    .line 2134
    const/4 v0, 0x1

    goto :goto_18

    .line 2135
    :cond_9
    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_11

    .line 2136
    const/4 v0, 0x2

    goto :goto_18

    .line 2137
    :cond_11
    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_18

    .line 2138
    const/4 v0, 0x3

    .line 2140
    :cond_18
    :goto_18
    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x1d

    iget-byte v2, p1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    and-int/lit8 v2, v2, 0x7

    shl-int/lit8 v2, v2, 0x1a

    or-int/2addr v1, v2

    and-int/lit8 v2, v0, 0x3

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    iget v2, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v3, 0xffffff

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    return v1
.end method

.method public static blacklist createFromBatteryUsageStatsParcel(Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsHistory;
    .registers 2
    .param p0, "in"    # Landroid/os/Parcel;

    .line 931
    new-instance v0, Lcom/android/internal/os/BatteryStatsHistory;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsHistory;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private blacklist ensureHistoryTagArray()V
    .registers 6

    .line 2344
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTags:Landroid/util/SparseArray;

    if-eqz v0, :cond_5

    .line 2345
    return-void

    .line 2348
    :cond_5
    new-instance v0, Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTags:Landroid/util/SparseArray;

    .line 2349
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2350
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/BatteryStats$HistoryTag;Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTags:Landroid/util/SparseArray;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v4, -0x8001

    and-int/2addr v3, v4

    .line 2351
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$HistoryTag;

    .line 2350
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2352
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/BatteryStats$HistoryTag;Ljava/lang/Integer;>;"
    goto :goto_1c

    .line 2353
    :cond_42
    return-void
.end method

.method private blacklist initHistoryBuffer()V
    .registers 4

    .line 503
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryElapsedRealtimeMs:J

    .line 504
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryUptimeMs:J

    .line 505
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWrittenPowerStatsDescriptors:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 507
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    invoke-virtual {v0}, Lcom/android/internal/os/MonotonicClock;->monotonicTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferStartTime:J

    .line 508
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataSize(I)V

    .line 509
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 510
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataCapacity(I)V

    .line 511
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    .line 512
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    .line 513
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 514
    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    .line 515
    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    .line 516
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    .line 517
    return-void
.end method

.method private blacklist maybeFlushBufferAndWriteHistoryItem(Landroid/os/BatteryStats$HistoryItem;JJ)Z
    .registers 16
    .param p1, "cur"    # Landroid/os/BatteryStats$HistoryItem;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "uptimeMs"    # J

    .line 1730
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v8

    .line 1731
    .local v8, "dataSize":I
    iget v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    const/4 v2, 0x0

    if-ge v8, v0, :cond_c

    .line 1732
    return v2

    .line 1735
    :cond_c
    iget v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    const-string v3, "BatteryStatsHistory"

    if-nez v0, :cond_1b

    .line 1736
    const-string v0, "mMaxHistoryBufferSize should not be zero when writing history"

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    const/16 v0, 0x400

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    .line 1740
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->tryLock()Z

    move-result v9

    .line 1741
    .local v9, "successfullyLocked":Z
    if-nez v9, :cond_31

    .line 1743
    iget v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    const v4, 0x186a0

    add-int/2addr v0, v4

    if-ge v8, v0, :cond_2c

    .line 1744
    return v2

    .line 1749
    :cond_2c
    const-string v0, "History buffer overflow exceeds 100000 bytes"

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    :cond_31
    new-instance v6, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v6}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    move-object v7, v6

    .line 1755
    .local v7, "copy":Landroid/os/BatteryStats$HistoryItem;
    invoke-virtual {v7, p1}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    .line 1758
    :try_start_3a
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/os/BatteryStatsHistory;->startNextFragment(J)V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_52

    .line 1760
    if-eqz v9, :cond_44

    .line 1761
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->unlock()V

    .line 1766
    :cond_44
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->startRecordingHistory(JJZ)V

    .line 1769
    move-object v6, v7

    .end local v7    # "copy":Landroid/os/BatteryStats$HistoryItem;
    .local v6, "copy":Landroid/os/BatteryStats$HistoryItem;
    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;B)V

    .line 1770
    const/4 v0, 0x1

    return v0

    .line 1760
    .end local v6    # "copy":Landroid/os/BatteryStats$HistoryItem;
    .restart local v7    # "copy":Landroid/os/BatteryStats$HistoryItem;
    :catchall_52
    move-exception v0

    move-object v6, v7

    .end local v7    # "copy":Landroid/os/BatteryStats$HistoryItem;
    .restart local v6    # "copy":Landroid/os/BatteryStats$HistoryItem;
    if-eqz v9, :cond_5b

    .line 1761
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v2}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->unlock()V

    .line 1763
    :cond_5b
    throw v0
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;Z)V
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "useBlobs"    # Z

    .line 976
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 977
    .local v0, "start":J
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    .line 978
    :cond_b
    :goto_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 979
    if-eqz p2, :cond_18

    invoke-virtual {p1}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v2

    goto :goto_1c

    :cond_18
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 980
    .local v2, "temp":[B
    :goto_1c
    if-eqz v2, :cond_b

    array-length v3, v2

    if-nez v3, :cond_22

    .line 981
    goto :goto_b

    .line 983
    :cond_22
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 984
    .local v3, "p":Landroid/os/Parcel;
    array-length v4, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 985
    invoke-virtual {v3, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 986
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 987
    .end local v2    # "temp":[B
    .end local v3    # "p":Landroid/os/Parcel;
    goto :goto_b

    .line 991
    :cond_34
    return-void
.end method

.method private blacklist recordTraceCounters(III[Landroid/os/BatteryStats$BitDescription;)V
    .registers 12
    .param p1, "oldval"    # I
    .param p2, "newval"    # I
    .param p3, "mask"    # I
    .param p4, "descriptions"    # [Landroid/os/BatteryStats$BitDescription;

    .line 1540
    xor-int v0, p1, p2

    and-int/2addr v0, p3

    .line 1541
    .local v0, "diff":I
    if-nez v0, :cond_6

    return-void

    .line 1543
    :cond_6
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, p4

    if-ge v1, v2, :cond_42

    .line 1544
    aget-object v2, p4, v1

    .line 1545
    .local v2, "bd":Landroid/os/BatteryStats$BitDescription;
    iget v3, v2, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v3, v0

    if-nez v3, :cond_12

    goto :goto_3f

    .line 1548
    :cond_12
    iget v3, v2, Landroid/os/BatteryStats$BitDescription;->shift:I

    if-gez v3, :cond_1f

    .line 1549
    iget v3, v2, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v3, p2

    if-eqz v3, :cond_1d

    const/4 v3, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v3, 0x0

    .local v3, "value":I
    :goto_1e
    goto :goto_25

    .line 1551
    .end local v3    # "value":I
    :cond_1f
    iget v3, v2, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v3, p2

    iget v4, v2, Landroid/os/BatteryStats$BitDescription;->shift:I

    shr-int/2addr v3, v4

    .line 1553
    .restart local v3    # "value":I
    :goto_25
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTracer:Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "battery_stats."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;->traceCounter(Ljava/lang/String;I)V

    .line 1543
    .end local v2    # "bd":Landroid/os/BatteryStats$BitDescription;
    .end local v3    # "value":I
    :goto_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1555
    .end local v1    # "i":I
    :cond_42
    return-void
.end method

.method private blacklist recordTraceEvents(ILandroid/os/BatteryStats$HistoryTag;)V
    .registers 9
    .param p1, "code"    # I
    .param p2, "tag"    # Landroid/os/BatteryStats$HistoryTag;

    .line 1521
    if-nez p1, :cond_3

    return-void

    .line 1523
    :cond_3
    const v0, -0xc001

    and-int/2addr v0, p1

    .line 1524
    .local v0, "idx":I
    const v1, 0x8000

    and-int/2addr v1, p1

    if-eqz v1, :cond_10

    const-string v1, "+"

    goto :goto_19

    .line 1525
    :cond_10
    and-int/lit16 v1, p1, 0x4000

    if-eqz v1, :cond_17

    const-string v1, "-"

    goto :goto_19

    :cond_17
    const-string v1, ""

    :goto_19
    nop

    .line 1527
    .local v1, "prefix":Ljava/lang/String;
    sget-object v2, Landroid/os/BatteryStats;->HISTORY_EVENT_NAMES:[Ljava/lang/String;

    .line 1528
    .local v2, "names":[Ljava/lang/String;
    if-ltz v0, :cond_6e

    array-length v3, v2

    if-lt v0, v3, :cond_22

    goto :goto_6e

    .line 1530
    :cond_22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "battery_stats."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1531
    .local v3, "track":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p2, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1532
    .local v4, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTracer:Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;

    invoke-virtual {v5, v3, v4}, Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;->traceInstantEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    return-void

    .line 1528
    .end local v3    # "track":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    :cond_6e
    :goto_6e
    return-void
.end method

.method private blacklist setActiveFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V
    .registers 2
    .param p1, "file"    # Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    .line 573
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mActiveFragment:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    .line 577
    return-void
.end method

.method private blacklist setBitField(IIII)I
    .registers 8
    .param p1, "bits"    # I
    .param p2, "value"    # I
    .param p3, "shift"    # I
    .param p4, "mask"    # I

    .line 1558
    shl-int v0, p2, p3

    .line 1559
    .local v0, "shiftedValue":I
    not-int v1, p4

    and-int/2addr v1, v0

    if-eqz v1, :cond_31

    .line 1560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not fit in the bit field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1561
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1560
    const-string v2, "BatteryStatsHistory"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    and-int/2addr v0, p4

    .line 1564
    :cond_31
    not-int v1, p4

    and-int/2addr v1, p1

    or-int/2addr v1, v0

    return v1
.end method

.method private blacklist signedValueFits(III)Z
    .registers 7
    .param p1, "value"    # I
    .param p2, "mask"    # I
    .param p3, "shift"    # I

    .line 2093
    ushr-int/2addr p2, p3

    .line 2098
    ushr-int/lit8 v0, p2, 0x1

    not-int v0, v0

    .line 2099
    .local v0, "msbAndLostBitsMask":I
    and-int v1, p1, v0

    .line 2101
    .local v1, "msbAndLostBits":I
    if-eqz v1, :cond_d

    if-ne v1, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v2, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v2, 0x1

    :goto_e
    return v2
.end method

.method private blacklist startNextFragmentLocked(J)V
    .registers 11
    .param p1, "elapsedRealtimeMs"    # J

    .line 591
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 592
    .local v0, "start":J
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistory(Z)V

    .line 597
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/os/MonotonicClock;->monotonicTime(J)J

    move-result-wide v2

    .line 598
    .local v2, "monotonicStartTime":J
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v4, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->createFragment(J)Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/os/BatteryStatsHistory;->setActiveFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V

    .line 599
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferStartTime:J

    .line 600
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->setDataSize(I)V

    .line 601
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 602
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->setDataCapacity(I)V

    .line 603
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    .line 604
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v4}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    .line 605
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v4}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    .line 609
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_44
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_66

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 610
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/BatteryStats$HistoryTag;Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const v7, 0x8000

    or-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/BatteryStats$HistoryTag;Ljava/lang/Integer;>;"
    goto :goto_44

    .line 613
    :cond_66
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWrittenPowerStatsDescriptors:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V

    .line 614
    return-void
.end method

.method private blacklist verifyVersion(Landroid/os/Parcel;)Z
    .registers 5
    .param p1, "p"    # Landroid/os/Parcel;

    .line 797
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 798
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 799
    .local v1, "version":I
    const/16 v2, 0xd6

    if-ne v1, v2, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0
.end method

.method private blacklist writeHistory(Z)V
    .registers 6
    .param p1, "fragmentComplete"    # Z

    .line 2212
    monitor-enter p0

    .line 2213
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistory;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2214
    const-string v0, "BatteryStatsHistory"

    const-string/jumbo v1, "writeHistory: this instance instance is read-only"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    monitor-exit p0

    return-void

    .line 2220
    :cond_11
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    invoke-virtual {v0}, Lcom/android/internal/os/MonotonicClock;->write()V

    .line 2222
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_32

    .line 2224
    .local v0, "p":Landroid/os/Parcel;
    :try_start_1a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2225
    .local v1, "start":J
    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryBuffer(Landroid/os/Parcel;)V

    .line 2230
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mActiveFragment:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    invoke-direct {p0, v0, v3, p1}, Lcom/android/internal/os/BatteryStatsHistory;->writeParcelLocked(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;Z)V
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_2c

    .line 2232
    .end local v1    # "start":J
    :try_start_26
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2233
    nop

    .line 2234
    .end local v0    # "p":Landroid/os/Parcel;
    monitor-exit p0

    .line 2235
    return-void

    .line 2232
    .restart local v0    # "p":Landroid/os/Parcel;
    :catchall_2c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2233
    nop

    .end local p0    # "this":Lcom/android/internal/os/BatteryStatsHistory;
    .end local p1    # "fragmentComplete":Z
    throw v1

    .line 2234
    .end local v0    # "p":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/android/internal/os/BatteryStatsHistory;
    .restart local p1    # "fragmentComplete":Z
    :catchall_32
    move-exception v0

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_32

    throw v0
.end method

.method private blacklist writeHistoryBuffer(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;

    .line 2277
    const/16 v0, 0xd6

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2278
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2279
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryMonotonicEndTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2280
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicHistorySize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2281
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2286
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 2287
    return-void
.end method

.method private blacklist writeHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;Landroid/os/BatteryStats$HistoryItem;)V
    .registers 26
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "cur"    # Landroid/os/BatteryStats$HistoryItem;
    .param p3, "last"    # Landroid/os/BatteryStats$HistoryItem;

    .line 1898
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-wide v4, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryMonotonicEndTime:J

    .line 1900
    if-eqz v3, :cond_1cd

    iget-byte v5, v2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-eqz v5, :cond_14

    goto/16 :goto_1cd

    .line 1906
    :cond_14
    const/4 v5, 0x0

    .line 1907
    .local v5, "extensionFlags":I
    iget-wide v6, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v8, v3, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long/2addr v6, v8

    .line 1908
    .local v6, "deltaTime":J
    invoke-direct {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->buildBatteryLevelInt(Landroid/os/BatteryStats$HistoryItem;Landroid/os/BatteryStats$HistoryItem;)I

    move-result v8

    .line 1909
    .local v8, "batteryLevelInt":I
    invoke-direct {v0, v3}, Lcom/android/internal/os/BatteryStatsHistory;->buildStateInt(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v9

    .line 1912
    .local v9, "lastStateInt":I
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-ltz v10, :cond_3d

    const-wide/32 v10, 0x7fffffff

    cmp-long v10, v6, v10

    if-lez v10, :cond_30

    goto :goto_3d

    .line 1914
    :cond_30
    const-wide/32 v10, 0x7fffd

    cmp-long v10, v6, v10

    if-ltz v10, :cond_3b

    .line 1915
    const v10, 0x7fffe

    .local v10, "deltaTimeToken":I
    goto :goto_40

    .line 1917
    .end local v10    # "deltaTimeToken":I
    :cond_3b
    long-to-int v10, v6

    .restart local v10    # "deltaTimeToken":I
    goto :goto_40

    .line 1913
    .end local v10    # "deltaTimeToken":I
    :cond_3d
    :goto_3d
    const v10, 0x7ffff

    .line 1919
    .restart local v10    # "deltaTimeToken":I
    :goto_40
    iget v11, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v12, -0x2000000

    and-int/2addr v11, v12

    or-int/2addr v11, v10

    .line 1921
    .local v11, "firstToken":I
    iget-object v12, v2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    if-eqz v12, :cond_4c

    .line 1922
    or-int/lit8 v8, v8, 0x1

    .line 1925
    :cond_4c
    if-eqz v8, :cond_50

    const/4 v13, 0x1

    goto :goto_51

    :cond_50
    const/4 v13, 0x0

    .line 1926
    .local v13, "batteryLevelIntChanged":Z
    :goto_51
    if-eqz v13, :cond_56

    .line 1927
    const/high16 v14, 0x80000

    or-int/2addr v11, v14

    .line 1929
    :cond_56
    invoke-direct {v0, v2}, Lcom/android/internal/os/BatteryStatsHistory;->buildStateInt(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v14

    .line 1930
    .local v14, "stateInt":I
    if-eq v14, v9, :cond_5e

    const/4 v15, 0x1

    goto :goto_5f

    :cond_5e
    const/4 v15, 0x0

    .line 1931
    .local v15, "stateIntChanged":Z
    :goto_5f
    if-eqz v15, :cond_65

    .line 1932
    const/high16 v16, 0x100000

    or-int v11, v11, v16

    .line 1934
    :cond_65
    iget-object v12, v2, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    if-eqz v12, :cond_79

    .line 1935
    or-int/lit8 v5, v5, 0x2

    .line 1936
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsHistory;->mWrittenPowerStatsDescriptors:Landroid/util/ArraySet;

    iget-object v4, v2, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    iget-object v4, v4, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {v12, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_79

    .line 1937
    or-int/lit8 v5, v5, 0x1

    .line 1940
    :cond_79
    iget-object v4, v2, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    if-eqz v4, :cond_7f

    .line 1941
    or-int/lit8 v5, v5, 0x4

    .line 1943
    :cond_7f
    if-eqz v5, :cond_89

    .line 1944
    iget v4, v2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v12, 0x20000

    or-int/2addr v4, v12

    iput v4, v2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    goto :goto_91

    .line 1946
    :cond_89
    iget v4, v2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v12, -0x20001

    and-int/2addr v4, v12

    iput v4, v2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1948
    :goto_91
    iget v4, v2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iget v12, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    if-ne v4, v12, :cond_9c

    if-eqz v5, :cond_9a

    goto :goto_9c

    :cond_9a
    const/4 v4, 0x0

    goto :goto_9d

    :cond_9c
    :goto_9c
    const/4 v4, 0x1

    .line 1949
    .local v4, "state2IntChanged":Z
    :goto_9d
    if-eqz v4, :cond_a2

    .line 1950
    const/high16 v12, 0x200000

    or-int/2addr v11, v12

    .line 1952
    :cond_a2
    iget-object v12, v2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-nez v12, :cond_aa

    iget-object v12, v2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v12, :cond_ad

    .line 1953
    :cond_aa
    const/high16 v12, 0x400000

    or-int/2addr v11, v12

    .line 1955
    :cond_ad
    iget v12, v2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v12, :cond_b4

    .line 1956
    const/high16 v12, 0x800000

    or-int/2addr v11, v12

    .line 1959
    :cond_b4
    iget v12, v2, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    move/from16 v17, v4

    .end local v4    # "state2IntChanged":Z
    .local v17, "state2IntChanged":Z
    iget v4, v3, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    if-eq v12, v4, :cond_be

    const/4 v4, 0x1

    goto :goto_bf

    :cond_be
    const/4 v4, 0x0

    .line 1960
    .local v4, "batteryChargeChanged":Z
    :goto_bf
    if-eqz v4, :cond_c4

    .line 1961
    const/high16 v12, 0x1000000

    or-int/2addr v11, v12

    .line 1963
    :cond_c4
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1969
    const v12, 0x7fffe

    if-lt v10, v12, :cond_d6

    .line 1970
    if-ne v10, v12, :cond_d3

    .line 1972
    long-to-int v12, v6

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d6

    .line 1975
    :cond_d3
    invoke-virtual {v1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 1978
    :cond_d6
    :goto_d6
    if-eqz v13, :cond_ed

    .line 1979
    and-int/lit8 v12, v8, 0x2

    if-eqz v12, :cond_de

    const/4 v12, 0x1

    goto :goto_df

    :cond_de
    const/4 v12, 0x0

    .line 1980
    .local v12, "overflow":Z
    :goto_df
    const/16 v18, 0x0

    .line 1982
    .local v18, "extendedBatteryLevelInt":I
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1983
    if-eqz v12, :cond_ed

    .line 1984
    invoke-direct {v0, v2}, Lcom/android/internal/os/BatteryStatsHistory;->buildExtendedBatteryLevelInt(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v3

    .line 1985
    .end local v18    # "extendedBatteryLevelInt":I
    .local v3, "extendedBatteryLevelInt":I
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1999
    .end local v3    # "extendedBatteryLevelInt":I
    .end local v12    # "overflow":Z
    :cond_ed
    if-eqz v15, :cond_f2

    .line 2000
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 2010
    :cond_f2
    if-eqz v17, :cond_f9

    .line 2011
    iget v3, v2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2017
    :cond_f9
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    .line 2018
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-nez v3, :cond_10b

    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v3, :cond_105

    goto :goto_10b

    :cond_105
    move/from16 v19, v4

    const v18, 0x8000

    goto :goto_15a

    .line 2021
    :cond_10b
    :goto_10b
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v3, :cond_116

    .line 2022
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0, v3}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryTag(Landroid/os/BatteryStats$HistoryTag;)I

    move-result v3

    .local v3, "wakeLockIndex":I
    goto :goto_119

    .line 2028
    .end local v3    # "wakeLockIndex":I
    :cond_116
    const v3, 0xffff

    .line 2030
    .restart local v3    # "wakeLockIndex":I
    :goto_119
    const v18, 0x8000

    iget-object v12, v2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v12, :cond_127

    .line 2031
    iget-object v12, v2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0, v12}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryTag(Landroid/os/BatteryStats$HistoryTag;)I

    move-result v12

    .local v12, "wakeReasonIndex":I
    goto :goto_12a

    .line 2037
    .end local v12    # "wakeReasonIndex":I
    :cond_127
    const v12, 0xffff

    .line 2039
    .restart local v12    # "wakeReasonIndex":I
    :goto_12a
    shl-int/lit8 v19, v12, 0x10

    move/from16 v20, v3

    .end local v3    # "wakeLockIndex":I
    .local v20, "wakeLockIndex":I
    or-int v3, v19, v20

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2040
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v3, :cond_147

    and-int v3, v20, v18

    if-eqz v3, :cond_147

    .line 2042
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move/from16 v19, v4

    const/4 v4, 0x0

    .end local v4    # "batteryChargeChanged":Z
    .local v19, "batteryChargeChanged":Z
    invoke-virtual {v3, v1, v4}, Landroid/os/BatteryStats$HistoryTag;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2043
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    goto :goto_149

    .line 2040
    .end local v19    # "batteryChargeChanged":Z
    .restart local v4    # "batteryChargeChanged":Z
    :cond_147
    move/from16 v19, v4

    .line 2045
    .end local v4    # "batteryChargeChanged":Z
    .restart local v19    # "batteryChargeChanged":Z
    :goto_149
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v3, :cond_15a

    and-int v3, v12, v18

    if-eqz v3, :cond_15a

    .line 2047
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/os/BatteryStats$HistoryTag;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2048
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    .line 2051
    .end local v12    # "wakeReasonIndex":I
    .end local v20    # "wakeLockIndex":I
    :cond_15a
    :goto_15a
    iget v3, v2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v3, :cond_185

    .line 2052
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0, v3}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryTag(Landroid/os/BatteryStats$HistoryTag;)I

    move-result v3

    .line 2053
    .local v3, "index":I
    iget v4, v2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    const v12, 0xffff

    and-int/2addr v4, v12

    const/high16 v12, -0x10000

    move-wide/from16 v20, v6

    .end local v6    # "deltaTime":J
    .local v20, "deltaTime":J
    const/16 v6, 0x10

    invoke-direct {v0, v4, v3, v6, v12}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result v4

    .line 2054
    .local v4, "codeAndIndex":I
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2055
    and-int v6, v3, v18

    if-eqz v6, :cond_187

    .line 2056
    iget-object v6, v2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Landroid/os/BatteryStats$HistoryTag;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2057
    const/4 v6, 0x1

    iput-boolean v6, v2, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    goto :goto_187

    .line 2051
    .end local v3    # "index":I
    .end local v4    # "codeAndIndex":I
    .end local v20    # "deltaTime":J
    .restart local v6    # "deltaTime":J
    :cond_185
    move-wide/from16 v20, v6

    .line 2066
    .end local v6    # "deltaTime":J
    .restart local v20    # "deltaTime":J
    :cond_187
    :goto_187
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    if-eqz v3, :cond_190

    .line 2067
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-virtual {v3, v1}, Landroid/os/BatteryStats$HistoryStepDetails;->writeToParcel(Landroid/os/Parcel;)V

    .line 2070
    :cond_190
    if-eqz v19, :cond_197

    .line 2072
    iget v3, v2, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2074
    :cond_197
    iget-wide v3, v2, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 2075
    iget-wide v3, v2, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 2076
    if-eqz v5, :cond_1cc

    .line 2077
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2078
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    if-eqz v3, :cond_1c3

    .line 2079
    and-int/lit8 v3, v5, 0x1

    if-eqz v3, :cond_1be

    .line 2081
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    iget-object v3, v3, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {v3, v1}, Lcom/android/internal/os/PowerStats$Descriptor;->writeSummaryToParcel(Landroid/os/Parcel;)V

    .line 2082
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHistory;->mWrittenPowerStatsDescriptors:Landroid/util/ArraySet;

    iget-object v4, v2, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    iget-object v4, v4, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2084
    :cond_1be
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    invoke-virtual {v3, v1}, Lcom/android/internal/os/PowerStats;->writeToParcel(Landroid/os/Parcel;)V

    .line 2086
    :cond_1c3
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    if-eqz v3, :cond_1cc

    .line 2087
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    invoke-virtual {v3, v1}, Landroid/os/BatteryStats$ProcessStateChange;->writeToParcel(Landroid/os/Parcel;)V

    .line 2090
    :cond_1cc
    return-void

    .line 1901
    .end local v5    # "extensionFlags":I
    .end local v8    # "batteryLevelInt":I
    .end local v9    # "lastStateInt":I
    .end local v10    # "deltaTimeToken":I
    .end local v11    # "firstToken":I
    .end local v13    # "batteryLevelIntChanged":Z
    .end local v14    # "stateInt":I
    .end local v15    # "stateIntChanged":Z
    .end local v17    # "state2IntChanged":Z
    .end local v19    # "batteryChargeChanged":Z
    .end local v20    # "deltaTime":J
    :cond_1cd
    :goto_1cd
    const v3, 0x7fffd

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1902
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Landroid/os/BatteryStats$HistoryItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1903
    return-void
.end method

.method private blacklist writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;)V
    .registers 21
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "cur"    # Landroid/os/BatteryStats$HistoryItem;

    .line 1614
    move-wide/from16 v1, p1

    move-object/from16 v5, p5

    iget v3, v5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v3, :cond_32

    iget-object v3, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    if-nez v3, :cond_32

    .line 1615
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " without a name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BatteryStatsHistory"

    invoke-static {v4, v3}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    :cond_32
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTracer:Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;

    const/4 v4, -0x1

    if-eqz v3, :cond_63

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTracer:Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;->tracingEnabled()Z

    move-result v3

    if-eqz v3, :cond_63

    .line 1619
    iget v3, v5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iget-object v6, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {p0, v3, v6}, Lcom/android/internal/os/BatteryStatsHistory;->recordTraceEvents(ILandroid/os/BatteryStats$HistoryTag;)V

    .line 1620
    iget v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState:I

    iget v6, v5, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v7, 0x3fffffff    # 1.9999999f

    sget-object v8, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    invoke-direct {p0, v3, v6, v7, v8}, Lcom/android/internal/os/BatteryStatsHistory;->recordTraceCounters(III[Landroid/os/BatteryStats$BitDescription;)V

    .line 1622
    iget v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState2:I

    iget v6, v5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    sget-object v7, Landroid/os/BatteryStats;->HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    invoke-direct {p0, v3, v6, v4, v7}, Lcom/android/internal/os/BatteryStatsHistory;->recordTraceCounters(III[Landroid/os/BatteryStats$BitDescription;)V

    .line 1624
    iget v3, v5, Landroid/os/BatteryStats$HistoryItem;->states:I

    iput v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState:I

    .line 1625
    iget v3, v5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iput v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState2:I

    .line 1628
    :cond_63
    iget-boolean v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHaveBatteryLevel:Z

    if-eqz v3, :cond_6b

    iget-boolean v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordingHistory:Z

    if-nez v3, :cond_74

    :cond_6b
    iget-object v3, v5, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    if-nez v3, :cond_74

    iget-object v3, v5, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    if-nez v3, :cond_74

    .line 1631
    return-void

    .line 1634
    :cond_74
    iget-boolean v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    if-eqz v3, :cond_1dc

    .line 1638
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    invoke-virtual {v3, v1, v2}, Lcom/android/internal/os/MonotonicClock;->monotonicTime(J)J

    move-result-wide v6

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v8, v3, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v7, v6, v8

    .line 1640
    .local v7, "timeDiffMs":J
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget v6, v5, Landroid/os/BatteryStats$HistoryItem;->states:I

    xor-int v9, v3, v6

    .line 1641
    .local v9, "diffStates":I
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iget v6, v5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    xor-int v10, v3, v6

    .line 1642
    .local v10, "diffStates2":I
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    xor-int v11, v3, v6

    .line 1643
    .local v11, "lastDiffStates":I
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v6, Landroid/os/BatteryStats$HistoryItem;->states2:I

    xor-int v12, v3, v6

    .line 1652
    .local v12, "lastDiffStates2":I
    iget v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    if-ltz v3, :cond_196

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-nez v3, :cond_196

    const-wide/16 v13, 0x3e8

    cmp-long v3, v7, v13

    if-gez v3, :cond_196

    and-int v3, v9, v11

    if-nez v3, :cond_196

    and-int v3, v10, v12

    if-nez v3, :cond_196

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-boolean v3, v3, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    if-nez v3, :cond_196

    iget-boolean v3, v5, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    if-nez v3, :cond_196

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v3, :cond_d4

    iget-object v3, v5, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-nez v3, :cond_196

    :cond_d4
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v3, :cond_de

    iget-object v3, v5, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-nez v3, :cond_196

    :cond_de
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    if-nez v3, :cond_196

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v3, :cond_ee

    iget v3, v5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-nez v3, :cond_196

    :cond_ee
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iget-byte v6, v5, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-ne v3, v6, :cond_196

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iget-byte v6, v5, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    if-ne v3, v6, :cond_196

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iget-byte v6, v5, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    if-ne v3, v6, :cond_196

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iget-byte v6, v5, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    if-ne v3, v6, :cond_196

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-short v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    iget-short v6, v5, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    if-ne v3, v6, :cond_196

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-short v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    iget-short v6, v5, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    if-ne v3, v6, :cond_196

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    if-nez v3, :cond_196

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    if-nez v3, :cond_196

    .line 1674
    iget-wide v13, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicHistorySize:J

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    iget v6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    sub-int/2addr v3, v6

    int-to-long v4, v3

    sub-long/2addr v13, v4

    iput-wide v13, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicHistorySize:J

    .line 1675
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->setDataSize(I)V

    .line 1676
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1677
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    .line 1679
    sub-long/2addr v1, v7

    .line 1684
    .end local p1    # "elapsedRealtimeMs":J
    .local v1, "elapsedRealtimeMs":J
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v3, :cond_161

    .line 1685
    move-object/from16 v5, p5

    iget-object v3, v5, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v3, v5, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1686
    iget-object v3, v5, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v3, v4}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    goto :goto_163

    .line 1684
    :cond_161
    move-object/from16 v5, p5

    .line 1691
    :goto_163
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v3, :cond_176

    .line 1692
    iget-object v3, v5, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v3, v5, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1693
    iget-object v3, v5, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v3, v4}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    .line 1698
    :cond_176
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v3, :cond_18f

    .line 1699
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iput v3, v5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 1700
    iget-object v3, v5, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v3, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1701
    iget-object v3, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v3, v4}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    .line 1703
    :cond_18f
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v3, v4}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    .line 1706
    :cond_196
    move-object v0, p0

    move-wide v2, v1

    move-object v1, v5

    move-wide/from16 v4, p3

    .end local v1    # "elapsedRealtimeMs":J
    .local v2, "elapsedRealtimeMs":J
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHistory;->maybeFlushBufferAndWriteHistoryItem(Landroid/os/BatteryStats$HistoryItem;JJ)Z

    move-result v6

    move-object v13, v1

    move-wide v1, v2

    .end local v2    # "elapsedRealtimeMs":J
    .restart local v1    # "elapsedRealtimeMs":J
    if-eqz v6, :cond_1a4

    .line 1707
    return-void

    .line 1710
    :cond_1a4
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    if-nez v3, :cond_1d3

    .line 1712
    new-instance v5, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v5}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 1713
    .local v5, "copy":Landroid/os/BatteryStats$HistoryItem;
    invoke-virtual {v5, v13}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    .line 1714
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v3}, Lcom/android/internal/os/Clock;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v5, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 1715
    const/4 v3, 0x0

    iput-object v3, v5, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1716
    iput-object v3, v5, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1717
    const/4 v4, 0x0

    iput v4, v5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 1718
    iput-object v3, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1719
    iput-boolean v4, v5, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    .line 1720
    iput-object v3, v5, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    .line 1721
    iput-object v3, v5, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    .line 1722
    const/4 v6, 0x7

    move-object v0, p0

    move-wide/from16 v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;B)V

    .line 1724
    .end local v5    # "copy":Landroid/os/BatteryStats$HistoryItem;
    :cond_1d3
    const/4 v6, 0x0

    move-object v0, p0

    move-wide/from16 v3, p3

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;B)V

    .line 1725
    return-void

    .line 1635
    .end local v1    # "elapsedRealtimeMs":J
    .end local v7    # "timeDiffMs":J
    .end local v9    # "diffStates":I
    .end local v10    # "diffStates2":I
    .end local v11    # "lastDiffStates":I
    .end local v12    # "lastDiffStates2":I
    .restart local p1    # "elapsedRealtimeMs":J
    :cond_1dc
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string v3, "Battery history is not writable"

    invoke-direct {v0, v3}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;B)V
    .registers 15
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "cur"    # Landroid/os/BatteryStats$HistoryItem;
    .param p6, "cmd"    # B

    .line 1776
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    if-eqz v0, :cond_93

    .line 1779
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    .line 1780
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    .line 1781
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-boolean v0, v0, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    const/4 v1, 0x0

    if-nez v0, :cond_21

    iget-boolean v0, p5, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    if-eqz v0, :cond_1f

    goto :goto_21

    :cond_1f
    move v0, v1

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v0, 0x1

    .line 1782
    .local v0, "hasTags":Z
    :goto_22
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/os/MonotonicClock;->monotonicTime(J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, p6, p5}, Landroid/os/BatteryStats$HistoryItem;->setTo(JBLandroid/os/BatteryStats$HistoryItem;)V

    .line 1783
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v2, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v4, v4, Landroid/os/BatteryStats$HistoryItem;->time:J

    const-wide/32 v6, 0xea60

    sub-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_67

    .line 1784
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Significantly earlier event written to battery history: time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v3, v3, Landroid/os/BatteryStats$HistoryItem;->time:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " previous="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v3, v3, Landroid/os/BatteryStats$HistoryItem;->time:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BatteryStatsHistory"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    :cond_67
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iput-boolean v0, v2, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    .line 1789
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;Landroid/os/BatteryStats$HistoryItem;)V

    .line 1790
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicHistorySize:J

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    iget v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicHistorySize:J

    .line 1791
    const/4 v2, 0x0

    iput-object v2, p5, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1792
    iput-object v2, p5, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1793
    iput v1, p5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 1794
    iput-object v2, p5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1795
    iput-boolean v1, p5, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    .line 1796
    iput-object v2, p5, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    .line 1797
    iput-object v2, p5, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    .line 1803
    return-void

    .line 1777
    .end local v0    # "hasTags":Z
    :cond_93
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string v1, "Battery history is not writable"

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist writeHistoryTag(Landroid/os/BatteryStats$HistoryTag;)I
    .registers 9
    .param p1, "tag"    # Landroid/os/BatteryStats$HistoryTag;

    .line 2156
    iget-object v0, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    const-string v1, "BatteryStatsHistory"

    if-nez v0, :cond_10

    .line 2157
    const-string/jumbo v0, "writeHistoryTag called with null name"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 2158
    const-string v0, ""

    iput-object v0, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 2161
    :cond_10
    iget-object v0, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2162
    .local v0, "stringLength":I
    const/16 v2, 0x400

    if-le v0, v2, :cond_3b

    .line 2163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Long battery history tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    iget-object v1, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 2167
    :cond_3b
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2169
    .local v1, "idxObj":Ljava/lang/Integer;
    const v2, 0x8000

    if-eqz v1, :cond_5d

    .line 2170
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2171
    .local v3, "idx":I
    and-int/2addr v2, v3

    if-eqz v2, :cond_5c

    .line 2172
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    const v4, -0x8001

    and-int/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2174
    :cond_5c
    return v3

    .line 2175
    .end local v3    # "idx":I
    :cond_5d
    iget v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    const/16 v4, 0x7ffe

    if-ge v3, v4, :cond_90

    .line 2176
    iget v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    .line 2177
    .restart local v3    # "idx":I
    new-instance v4, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v4}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    .line 2178
    .local v4, "key":Landroid/os/BatteryStats$HistoryTag;
    invoke-virtual {v4, p1}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    .line 2179
    iput v3, p1, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 2180
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2181
    iget v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    .line 2183
    iget v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    add-int/lit8 v6, v0, 0x1

    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    .line 2184
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTags:Landroid/util/SparseArray;

    if-eqz v5, :cond_8e

    .line 2185
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTags:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2187
    :cond_8e
    or-int/2addr v2, v3

    return v2

    .line 2189
    .end local v3    # "idx":I
    .end local v4    # "key":Landroid/os/BatteryStats$HistoryTag;
    :cond_90
    const/4 v2, -0x1

    iput v2, p1, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 2191
    const v2, 0xfffe

    return v2
.end method

.method private blacklist writeParcelLocked(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;Z)V
    .registers 8
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "fragment"    # Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
    .param p3, "fragmentComplete"    # Z

    .line 2292
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2294
    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2295
    .local v0, "startTimeMs":J
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-virtual {p1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    invoke-interface {v2, p2, v3, p3}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->writeFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;[BZ)V

    .line 2296
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mEventLogger:Lcom/android/internal/os/BatteryStatsHistory$EventLogger;

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/os/BatteryStatsHistory$EventLogger;->writeCommitSysConfigFile(J)V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_1e

    .line 2298
    .end local v0    # "startTimeMs":J
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2299
    nop

    .line 2300
    return-void

    .line 2298
    :catchall_1e
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2299
    throw v0
.end method

.method private blacklist writeToParcel(Landroid/os/Parcel;ZJ)V
    .registers 18
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "useBlobs"    # Z
    .param p3, "preferredEarliestIncludedTimestampMs"    # J

    .line 883
    const-string v0, "BatteryStatsHistory.writeToParcel"

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 884
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->lock()V

    .line 886
    :try_start_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 887
    .local v3, "start":J
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->getFragments()Ljava/util/List;

    move-result-object v0

    .line 888
    .local v0, "fragments":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    const/4 v8, 0x0

    if-ge v5, v6, :cond_7d

    .line 889
    const-wide v9, 0x7fffffffffffffffL

    .line 890
    .local v9, "monotonicEndTime":J
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v7

    if-ge v5, v6, :cond_38

    .line 891
    add-int/lit8 v6, v5, 0x1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    iget-wide v11, v6, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;->monotonicTimeMs:J

    move-wide v9, v11

    .line 894
    :cond_38
    cmp-long v6, v9, p3

    if-gez v6, :cond_3d

    .line 895
    goto :goto_7a

    .line 898
    :cond_3d
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    invoke-interface {v6, v11}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->readFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)[B

    move-result-object v6

    .line 899
    .local v6, "data":[B
    if-nez v6, :cond_68

    .line 900
    const-string v7, "BatteryStatsHistory"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error reading history fragment "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    goto :goto_7a

    .line 904
    :cond_68
    array-length v11, v6

    if-nez v11, :cond_6c

    .line 905
    goto :goto_7a

    .line 908
    :cond_6c
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 909
    if-eqz p2, :cond_76

    .line 910
    array-length v7, v6

    invoke-virtual {p1, v6, v8, v7}, Landroid/os/Parcel;->writeBlob([BII)V

    goto :goto_7a

    .line 913
    :cond_76
    array-length v7, v6

    invoke-virtual {p1, v6, v8, v7}, Landroid/os/Parcel;->writeByteArray([BII)V

    .line 888
    .end local v6    # "data":[B
    .end local v9    # "monotonicEndTime":J
    :goto_7a
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 916
    .end local v5    # "i":I
    :cond_7d
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_80
    .catchall {:try_start_d .. :try_end_80} :catchall_8a

    .line 921
    .end local v0    # "fragments":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;>;"
    .end local v3    # "start":J
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->unlock()V

    .line 922
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 923
    nop

    .line 924
    return-void

    .line 921
    :catchall_8a
    move-exception v0

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v3}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->unlock()V

    .line 922
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 923
    throw v0
.end method


# virtual methods
.method public blacklist commitCurrentHistoryBatchLocked()V
    .registers 3

    .line 2199
    monitor-enter p0

    .line 2200
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    const/4 v1, -0x1

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 2201
    monitor-exit p0

    .line 2202
    return-void

    .line 2201
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public blacklist continueRecordingHistory()V
    .registers 10

    .line 1064
    monitor-enter p0

    .line 1065
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-gtz v0, :cond_13

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->hasCompletedFragments()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1066
    monitor-exit p0

    return-void

    .line 1069
    :cond_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordingHistory:Z

    .line 1070
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    move-wide v3, v0

    .line 1071
    .local v3, "elapsedRealtimeMs":J
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v5

    .line 1072
    .local v5, "uptimeMs":J
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_31

    const/4 v8, 0x4

    move-object v2, p0

    :try_start_27
    invoke-direct/range {v2 .. v8}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;B)V

    .line 1073
    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsHistory;->startRecordingHistory(JJZ)V

    .line 1074
    .end local v3    # "elapsedRealtimeMs":J
    .end local v5    # "uptimeMs":J
    monitor-exit p0

    .line 1075
    return-void

    .line 1074
    :catchall_31
    move-exception v0

    move-object v2, p0

    :goto_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_27 .. :try_end_34} :catchall_35

    throw v0

    :catchall_35
    move-exception v0

    goto :goto_33
.end method

.method public blacklist copy()Lcom/android/internal/os/BatteryStatsHistory;
    .registers 13

    .line 547
    const-string v0, "BatteryStatsHistory.copy"

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 549
    :try_start_8
    monitor-enter p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_35

    .line 551
    :try_start_9
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    move-object v4, v0

    .line 552
    .local v4, "historyBufferCopy":Landroid/os/Parcel;
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v3}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 554
    new-instance v3, Lcom/android/internal/os/BatteryStatsHistory;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsHistory;->mEventLogger:Lcom/android/internal/os/BatteryStatsHistory$EventLogger;
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_2d

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v11, p0

    :try_start_25
    invoke-direct/range {v3 .. v11}, Lcom/android/internal/os/BatteryStatsHistory;-><init>(Landroid/os/Parcel;ILcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;Lcom/android/internal/os/Clock;Lcom/android/internal/os/MonotonicClock;Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;Lcom/android/internal/os/BatteryStatsHistory$EventLogger;Lcom/android/internal/os/BatteryStatsHistory;)V

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_33

    .line 558
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 554
    return-object v3

    .line 556
    .end local v4    # "historyBufferCopy":Landroid/os/Parcel;
    :catchall_2d
    move-exception v0

    move-object v11, p0

    :goto_2f
    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_33

    .end local p0    # "this":Lcom/android/internal/os/BatteryStatsHistory;
    :try_start_30
    throw v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    .line 558
    .restart local p0    # "this":Lcom/android/internal/os/BatteryStatsHistory;
    :catchall_31
    move-exception v0

    goto :goto_37

    .line 556
    :catchall_33
    move-exception v0

    goto :goto_2f

    .line 558
    :catchall_35
    move-exception v0

    move-object v11, p0

    :goto_37
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 559
    throw v0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;JJ)V
    .registers 15
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "startTimeMs"    # J
    .param p4, "endTimeMs"    # J

    .line 2367
    new-instance v0, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    move-object v1, v0

    .line 2368
    .local v1, "printer":Landroid/os/BatteryStats$HistoryPrinter;
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/internal/os/BatteryStatsHistory;->iterate(JJ)Lcom/android/internal/os/BatteryStatsHistoryIterator;

    move-result-object v8

    .line 2369
    .local v8, "iterate":Lcom/android/internal/os/BatteryStatsHistoryIterator;
    :goto_a
    :try_start_a
    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2370
    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->next()Landroid/os/BatteryStats$HistoryItem;

    move-result-object v3
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_2b

    .line 2371
    .local v3, "next":Landroid/os/BatteryStats$HistoryItem;
    const/4 v6, 0x0

    const/4 v7, 0x1

    const-wide/16 v4, 0x0

    move-object v2, p1

    .end local p1    # "pw":Ljava/io/PrintWriter;
    .local v2, "pw":Ljava/io/PrintWriter;
    :try_start_19
    invoke-virtual/range {v1 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1e

    .line 2372
    .end local v3    # "next":Landroid/os/BatteryStats$HistoryItem;
    move-object p1, v2

    goto :goto_a

    .line 2368
    :catchall_1e
    move-exception v0

    move-object p1, v0

    goto :goto_2e

    .line 2373
    .end local v2    # "pw":Ljava/io/PrintWriter;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    :cond_21
    move-object v2, p1

    .end local p1    # "pw":Ljava/io/PrintWriter;
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    if-eqz v8, :cond_27

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->close()V

    .line 2374
    .end local v8    # "iterate":Lcom/android/internal/os/BatteryStatsHistoryIterator;
    :cond_27
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 2375
    return-void

    .line 2368
    .end local v2    # "pw":Ljava/io/PrintWriter;
    .restart local v8    # "iterate":Lcom/android/internal/os/BatteryStatsHistoryIterator;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    :catchall_2b
    move-exception v0

    move-object v2, p1

    move-object p1, v0

    .end local p1    # "pw":Ljava/io/PrintWriter;
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    :goto_2e
    if-eqz v8, :cond_38

    :try_start_30
    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    goto :goto_38

    :catchall_34
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_38
    :goto_38
    throw p1
.end method

.method public blacklist forceRecordAllHistory()V
    .registers 2

    .line 1040
    monitor-enter p0

    .line 1041
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHaveBatteryLevel:Z

    .line 1042
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordingHistory:Z

    .line 1043
    monitor-exit p0

    .line 1044
    return-void

    .line 1043
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public blacklist getActiveFragment()Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
    .registers 2

    .line 1000
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mActiveFragment:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    return-object v0
.end method

.method public blacklist getBatteryHistoryStore()Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;
    .registers 2

    .line 995
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    return-object v0
.end method

.method public blacklist getEstimatedItemCount()I
    .registers 4

    .line 530
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    .line 531
    .local v0, "estimatedBytes":I
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    if-eqz v1, :cond_13

    .line 532
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->getMaxHistorySize()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    .line 534
    :cond_13
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    if-eqz v1, :cond_31

    .line 535
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_1f
    if-ltz v1, :cond_31

    .line 536
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 535
    add-int/lit8 v1, v1, -0x1

    goto :goto_1f

    .line 539
    .end local v1    # "i":I
    :cond_31
    div-int/lit8 v1, v0, 0x4

    return v1
.end method

.method public blacklist getHistoryStringPoolBytes()I
    .registers 2

    .line 2315
    monitor-enter p0

    .line 2316
    :try_start_1
    iget v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    monitor-exit p0

    return v0

    .line 2317
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public blacklist getHistoryStringPoolSize()I
    .registers 2

    .line 2306
    monitor-enter p0

    .line 2307
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    monitor-exit p0

    return v0

    .line 2308
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public blacklist getHistoryTagPoolString(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .line 2324
    monitor-enter p0

    .line 2325
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHistory;->ensureHistoryTagArray()V

    .line 2326
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$HistoryTag;

    .line 2327
    .local v0, "historyTag":Landroid/os/BatteryStats$HistoryTag;
    if-eqz v0, :cond_11

    iget-object v1, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    monitor-exit p0

    return-object v1

    .line 2328
    .end local v0    # "historyTag":Landroid/os/BatteryStats$HistoryTag;
    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public blacklist getHistoryTagPoolUid(I)I
    .registers 4
    .param p1, "index"    # I

    .line 2335
    monitor-enter p0

    .line 2336
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHistory;->ensureHistoryTagArray()V

    .line 2337
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$HistoryTag;

    .line 2338
    .local v0, "historyTag":Landroid/os/BatteryStats$HistoryTag;
    if-eqz v0, :cond_11

    iget v1, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    goto :goto_12

    :cond_11
    const/4 v1, -0x1

    :goto_12
    monitor-exit p0

    return v1

    .line 2339
    .end local v0    # "historyTag":Landroid/os/BatteryStats$HistoryTag;
    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public blacklist getHistoryUsedSize()I
    .registers 4

    .line 1007
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->getSize()I

    move-result v0

    .line 1008
    .local v0, "ret":I
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1009
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    if-eqz v1, :cond_2a

    .line 1010
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 1011
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 1010
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1014
    .end local v1    # "i":I
    :cond_2a
    return v0
.end method

.method public blacklist getMonotonicHistorySize()J
    .registers 3

    .line 2360
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicHistorySize:J

    return-wide v0
.end method

.method blacklist getParcelContainers(JJ)Ljava/util/Queue;
    .registers 13
    .param p1, "startTimeMs"    # J
    .param p3, "endTimeMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/Queue<",
            "Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;",
            ">;"
        }
    .end annotation

    .line 696
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    if-nez v0, :cond_bb

    .line 700
    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-eqz v0, :cond_10

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_15

    .line 701
    :cond_10
    const-wide p3, 0x7fffffffffffffffL

    .line 704
    :cond_15
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 706
    .local v0, "containers":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;>;"
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    if-eqz v1, :cond_63

    .line 707
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->getFragments()Ljava/util/List;

    move-result-object v1

    .line 708
    .local v1, "fragments":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_25
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_63

    .line 709
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    .line 710
    .local v3, "fragment":Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
    iget-wide v4, v3, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;->monotonicTimeMs:J

    cmp-long v4, v4, p3

    if-ltz v4, :cond_38

    .line 711
    goto :goto_63

    .line 714
    :cond_38
    iget-wide v4, v3, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;->monotonicTimeMs:J

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferStartTime:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_41

    .line 717
    goto :goto_60

    .line 720
    :cond_41
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_58

    add-int/lit8 v4, v2, 0x1

    .line 721
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    iget-wide v4, v4, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;->monotonicTimeMs:J

    cmp-long v4, v4, p1

    if-gez v4, :cond_58

    .line 724
    goto :goto_60

    .line 727
    :cond_58
    new-instance v4, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;

    invoke-direct {v4, p0, v3}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;-><init>(Lcom/android/internal/os/BatteryStatsHistory;Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V

    invoke-interface {v0, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 708
    .end local v3    # "fragment":Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
    :goto_60
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 731
    .end local v1    # "fragments":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;>;"
    .end local v2    # "i":I
    :cond_63
    :goto_63
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    if-eqz v1, :cond_a2

    .line 732
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_68
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_a2

    .line 733
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcel;

    .line 734
    .local v2, "p":Landroid/os/Parcel;
    invoke-direct {p0, v2}, Lcom/android/internal/os/BatteryStatsHistory;->verifyVersion(Landroid/os/Parcel;)Z

    move-result v3

    if-nez v3, :cond_7f

    .line 735
    goto :goto_9f

    .line 738
    :cond_7f
    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 739
    .local v3, "monotonicStartTime":J
    cmp-long v5, v3, p3

    if-ltz v5, :cond_88

    .line 740
    goto :goto_9f

    .line 743
    :cond_88
    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 744
    .local v5, "monotonicEndTime":J
    cmp-long v7, v5, p1

    if-gez v7, :cond_91

    .line 745
    goto :goto_9f

    .line 749
    :cond_91
    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    .line 751
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    .line 753
    new-instance v7, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;

    invoke-direct {v7, p0, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;-><init>(Lcom/android/internal/os/BatteryStatsHistory;Landroid/os/Parcel;J)V

    invoke-interface {v0, v7}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 732
    .end local v2    # "p":Landroid/os/Parcel;
    .end local v3    # "monotonicStartTime":J
    .end local v5    # "monotonicEndTime":J
    :goto_9f
    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    .line 757
    .end local v1    # "i":I
    :cond_a2
    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferStartTime:J

    cmp-long v1, v1, p3

    if-gez v1, :cond_ba

    .line 758
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 759
    new-instance v1, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget-wide v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferStartTime:J

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;-><init>(Lcom/android/internal/os/BatteryStatsHistory;Landroid/os/Parcel;J)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 762
    :cond_ba
    return-object v0

    .line 697
    .end local v0    # "containers":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;>;"
    :cond_bb
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterating over a mutable battery history"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getStartTime()J
    .registers 4

    .line 643
    monitor-enter p0

    .line 644
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->getEarliestFragment()Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    move-result-object v0

    .line 645
    .local v0, "firstFragment":Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
    if-eqz v0, :cond_d

    .line 646
    iget-wide v1, v0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;->monotonicTimeMs:J

    monitor-exit p0

    return-wide v1

    .line 648
    :cond_d
    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferStartTime:J

    monitor-exit p0

    return-wide v1

    .line 650
    .end local v0    # "firstFragment":Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public blacklist isReadOnly()Z
    .registers 2

    .line 566
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mActiveFragment:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public blacklist isRecordingHistory()Z
    .registers 2

    .line 1030
    monitor-enter p0

    .line 1031
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordingHistory:Z

    monitor-exit p0

    return v0

    .line 1032
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public blacklist isResetEnabled()Z
    .registers 2

    .line 621
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->isLocked()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public blacklist iterate(JJ)Lcom/android/internal/os/BatteryStatsHistoryIterator;
    .registers 12
    .param p1, "startTimeMs"    # J
    .param p3, "endTimeMs"    # J

    .line 663
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    if-nez v0, :cond_2e

    iget v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mIteratorCookie:I

    if-eqz v0, :cond_c

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    goto :goto_31

    .line 667
    :cond_c
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    if-eqz v0, :cond_15

    .line 668
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->lock()V

    .line 670
    :cond_15
    new-instance v1, Lcom/android/internal/os/BatteryStatsHistoryIterator;

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    .end local p1    # "startTimeMs":J
    .end local p3    # "endTimeMs":J
    .local v3, "startTimeMs":J
    .local v5, "endTimeMs":J
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistoryIterator;-><init>(Lcom/android/internal/os/BatteryStatsHistory;JJ)V

    .line 672
    .local v1, "iterator":Lcom/android/internal/os/BatteryStatsHistoryIterator;
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    iput p1, v2, Lcom/android/internal/os/BatteryStatsHistory;->mIteratorCookie:I

    .line 673
    const-string p1, "BatteryStatsHistory.iterate"

    iget p2, v2, Lcom/android/internal/os/BatteryStatsHistory;->mIteratorCookie:I

    const-wide/32 p3, 0x80000

    invoke-static {p3, p4, p1, p2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 675
    return-object v1

    .line 663
    .end local v1    # "iterator":Lcom/android/internal/os/BatteryStatsHistoryIterator;
    .end local v3    # "startTimeMs":J
    .end local v5    # "endTimeMs":J
    .restart local p1    # "startTimeMs":J
    .restart local p3    # "endTimeMs":J
    :cond_2e
    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    .line 664
    .end local p1    # "startTimeMs":J
    .end local p3    # "endTimeMs":J
    .restart local v3    # "startTimeMs":J
    .restart local v5    # "endTimeMs":J
    :goto_31
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistory;->copy()Lcom/android/internal/os/BatteryStatsHistory;

    move-result-object p1

    invoke-virtual {p1, v3, v4, v5, v6}, Lcom/android/internal/os/BatteryStatsHistory;->iterate(JJ)Lcom/android/internal/os/BatteryStatsHistoryIterator;

    move-result-object p1

    return-object p1
.end method

.method blacklist iteratorFinished()V
    .registers 5

    .line 682
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 683
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    if-eqz v0, :cond_14

    .line 684
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->unlock()V

    .line 686
    :cond_14
    const-string v0, "BatteryStatsHistory.iterate"

    iget v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mIteratorCookie:I

    const-wide/32 v2, 0x80000

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 688
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mIteratorCookie:I

    .line 689
    return-void
.end method

.method public blacklist maybeUpdateWakelockTag(JJLjava/lang/String;I)Z
    .registers 9
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "historyName"    # Ljava/lang/String;
    .param p6, "uid"    # I

    .line 1250
    monitor-enter p0

    .line 1251
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-eqz v0, :cond_a

    .line 1252
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 1254
    :cond_a
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_2c

    .line 1256
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1257
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1258
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p5, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 1259
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput p6, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 1260
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1262
    :cond_2c
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 1263
    :catchall_2f
    move-exception v0

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public blacklist readFragmentToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)Z
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "fragment"    # Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    .line 773
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0, p2}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->readFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)[B

    move-result-object v0

    .line 774
    .local v0, "data":[B
    const/4 v1, 0x0

    if-eqz v0, :cond_26

    array-length v2, v0

    if-nez v2, :cond_d

    goto :goto_26

    .line 777
    :cond_d
    array-length v2, v0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 778
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 779
    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsHistory;->verifyVersion(Landroid/os/Parcel;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 780
    return v1

    .line 783
    :cond_1b
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 785
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 787
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 788
    const/4 v1, 0x1

    return v1

    .line 775
    :cond_26
    :goto_26
    return v1
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 971
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsHistory;->readHistoryBuffer(Landroid/os/Parcel;)V

    .line 972
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsHistory;->readFromParcel(Landroid/os/Parcel;Z)V

    .line 973
    return-void
.end method

.method public blacklist readHistoryBuffer(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ParcelFormatException;
        }
    .end annotation

    .line 2241
    monitor-enter p0

    .line 2242
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2243
    .local v0, "version":I
    const/16 v1, 0xd6

    if-eq v0, v1, :cond_34

    .line 2244
    const-string v2, "BatteryStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readHistoryBuffer: version got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; erasing old stats"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    monitor-exit p0

    return-void

    .line 2249
    :cond_34
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferStartTime:J

    .line 2250
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryMonotonicEndTime:J

    .line 2251
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicHistorySize:J

    .line 2253
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataSize(I)V

    .line 2254
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2256
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2257
    .local v1, "bufSize":I
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 2258
    .local v2, "curPos":I
    iget v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    mul-int/lit8 v3, v3, 0x64

    if-ge v1, v3, :cond_88

    .line 2261
    and-int/lit8 v3, v1, -0x4

    if-ne v3, v1, :cond_6f

    .line 2269
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v3, p1, v2, v1}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 2270
    add-int v3, v2, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2272
    .end local v0    # "version":I
    .end local v1    # "bufSize":I
    .end local v2    # "curPos":I
    monitor-exit p0

    .line 2273
    return-void

    .line 2262
    .restart local v0    # "version":I
    .restart local v1    # "bufSize":I
    .restart local v2    # "curPos":I
    :cond_6f
    new-instance v3, Landroid/os/ParcelFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File corrupt: history data buffer not aligned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/internal/os/BatteryStatsHistory;
    .end local p1    # "in":Landroid/os/Parcel;
    throw v3

    .line 2259
    .restart local p0    # "this":Lcom/android/internal/os/BatteryStatsHistory;
    .restart local p1    # "in":Landroid/os/Parcel;
    :cond_88
    new-instance v3, Landroid/os/ParcelFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File corrupt: history data buffer too large "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/internal/os/BatteryStatsHistory;
    .end local p1    # "in":Landroid/os/Parcel;
    throw v3

    .line 2272
    .end local v0    # "version":I
    .end local v1    # "bufSize":I
    .end local v2    # "curPos":I
    .restart local p0    # "this":Lcom/android/internal/os/BatteryStatsHistory;
    .restart local p1    # "in":Landroid/os/Parcel;
    :catchall_a1
    move-exception v0

    monitor-exit p0
    :try_end_a3
    .catchall {:try_start_1 .. :try_end_a3} :catchall_a1

    throw v0
.end method

.method public blacklist readSummary()Z
    .registers 6

    .line 938
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mActiveFragment:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    const-string v1, "BatteryStatsHistory"

    const/4 v2, 0x0

    if-nez v0, :cond_e

    .line 939
    const-string/jumbo v0, "readSummary: no history file associated with this instance"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    return v2

    .line 943
    :cond_e
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 945
    .local v0, "parcel":Landroid/os/Parcel;
    :try_start_12
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mActiveFragment:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    invoke-interface {v3, v4}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->readFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)[B

    move-result-object v3
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1a} :catch_36
    .catchall {:try_start_12 .. :try_end_1a} :catchall_34

    .line 946
    .local v3, "data":[B
    if-nez v3, :cond_21

    .line 947
    nop

    .line 960
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 947
    return v2

    .line 950
    :cond_21
    :try_start_21
    array-length v4, v3

    if-lez v4, :cond_2e

    .line 951
    array-length v4, v3

    invoke-virtual {v0, v3, v2, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 952
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 953
    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsHistory;->readHistoryBuffer(Landroid/os/Parcel;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2e} :catch_36
    .catchall {:try_start_21 .. :try_end_2e} :catchall_34

    .line 960
    .end local v3    # "data":[B
    :cond_2e
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 961
    nop

    .line 962
    const/4 v1, 0x1

    return v1

    .line 960
    :catchall_34
    move-exception v1

    goto :goto_44

    .line 955
    :catch_36
    move-exception v3

    .line 956
    .local v3, "e":Ljava/lang/Exception;
    :try_start_37
    const-string v4, "Error reading battery history"

    invoke-static {v1, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 957
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistory;->reset()V
    :try_end_3f
    .catchall {:try_start_37 .. :try_end_3f} :catchall_34

    .line 958
    nop

    .line 960
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 958
    return v2

    .line 960
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_44
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 961
    throw v1
.end method

.method public blacklist readSummaryFromParcel(Landroid/os/Parcel;)V
    .registers 11
    .param p1, "in"    # Landroid/os/Parcel;

    .line 824
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 825
    .local v0, "inclHistory":Z
    if-eqz v0, :cond_9

    .line 826
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsHistory;->readFromParcel(Landroid/os/Parcel;)V

    .line 829
    :cond_9
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 830
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    .line 831
    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    .line 833
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 834
    .local v1, "numTags":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    if-ge v2, v1, :cond_52

    .line 835
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 836
    .local v3, "idx":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 837
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 838
    .local v5, "uid":I
    new-instance v6, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v6}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    .line 839
    .local v6, "tag":Landroid/os/BatteryStats$HistoryTag;
    iput-object v4, v6, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 840
    iput v5, v6, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 841
    iput v3, v6, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 842
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    iget v7, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    if-lt v3, v7, :cond_42

    .line 844
    add-int/lit8 v7, v3, 0x1

    iput v7, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    .line 846
    :cond_42
    iget v7, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    iget-object v8, v6, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v7, v8

    iput v7, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    .line 834
    .end local v3    # "idx":I
    .end local v4    # "str":Ljava/lang/String;
    .end local v5    # "uid":I
    .end local v6    # "tag":Landroid/os/BatteryStats$HistoryTag;
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 848
    .end local v2    # "i":I
    :cond_52
    return-void
.end method

.method public blacklist recordBatteryState(JJIZ)V
    .registers 9
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "batteryLevel"    # I
    .param p6, "isPlugged"    # Z

    .line 1183
    monitor-enter p0

    .line 1184
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte v1, p5

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 1185
    invoke-virtual {p0, p6}, Lcom/android/internal/os/BatteryStatsHistory;->setPluggedInState(Z)V

    .line 1190
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1191
    monitor-exit p0

    .line 1192
    return-void

    .line 1191
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public blacklist recordCurrentTimeChange(JJJ)V
    .registers 15
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "currentTimeMs"    # J

    .line 1151
    monitor-enter p0

    .line 1152
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordingHistory:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_21

    if-nez v0, :cond_c

    .line 1153
    :try_start_5
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_5 .. :try_end_6} :catchall_7

    return-void

    .line 1160
    :catchall_7
    move-exception v0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    goto :goto_25

    .line 1156
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput-wide p5, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 1157
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_21

    const/4 v7, 0x5

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "elapsedRealtimeMs":J
    .end local p3    # "uptimeMs":J
    .local v2, "elapsedRealtimeMs":J
    .local v4, "uptimeMs":J
    :try_start_16
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;B)V

    .line 1159
    iget-object p1, v1, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const-wide/16 p2, 0x0

    iput-wide p2, p1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 1160
    monitor-exit p0

    .line 1161
    return-void

    .line 1160
    .end local v2    # "elapsedRealtimeMs":J
    .end local v4    # "uptimeMs":J
    .restart local p1    # "elapsedRealtimeMs":J
    .restart local p3    # "uptimeMs":J
    :catchall_21
    move-exception v0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "elapsedRealtimeMs":J
    .end local p3    # "uptimeMs":J
    .restart local v2    # "elapsedRealtimeMs":J
    .restart local v4    # "uptimeMs":J
    :goto_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_16 .. :try_end_26} :catchall_27

    throw v0

    :catchall_27
    move-exception v0

    goto :goto_25
.end method

.method public blacklist recordDataConnectionTypeChangeEvent(JJI)V
    .registers 10
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "dataConnectionType"    # I

    .line 1468
    monitor-enter p0

    .line 1469
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v2, 0x9

    const/16 v3, 0x3e00

    invoke-direct {p0, v1, p5, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1472
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1473
    monitor-exit p0

    .line 1474
    return-void

    .line 1473
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public blacklist recordDeviceIdleEvent(JJI)V
    .registers 10
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "mode"    # I

    .line 1432
    monitor-enter p0

    .line 1433
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/16 v2, 0x19

    const/high16 v3, 0x6000000

    invoke-direct {p0, v1, p5, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1436
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1437
    monitor-exit p0

    .line 1438
    return-void

    .line 1437
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public blacklist recordEvent(JJILjava/lang/String;I)V
    .registers 10
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "code"    # I
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "uid"    # I

    .line 1138
    monitor-enter p0

    .line 1139
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput p5, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 1140
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1141
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p6, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 1142
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput p7, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 1143
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1144
    monitor-exit p0

    .line 1145
    return-void

    .line 1144
    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public blacklist recordGpsSignalQualityEvent(JJI)V
    .registers 10
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "signalLevel"    # I

    .line 1420
    monitor-enter p0

    .line 1421
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/4 v2, 0x7

    const/16 v3, 0x180

    invoke-direct {p0, v1, p5, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1424
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1425
    monitor-exit p0

    .line 1426
    return-void

    .line 1425
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public blacklist recordHistoryStepDetails(Landroid/os/BatteryStats$HistoryStepDetails;JJ)V
    .registers 8
    .param p1, "details"    # Landroid/os/BatteryStats$HistoryStepDetails;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "uptimeMs"    # J

    .line 1572
    invoke-virtual {p1}, Landroid/os/BatteryStats$HistoryStepDetails;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1573
    return-void

    .line 1575
    :cond_7
    monitor-enter p0

    .line 1576
    :try_start_8
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput-object p1, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 1577
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1578
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 1579
    monitor-exit p0

    .line 1580
    return-void

    .line 1579
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public blacklist recordNrStateChangeEvent(JJI)V
    .registers 10
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "nrState"    # I

    .line 1481
    monitor-enter p0

    .line 1482
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/16 v2, 0x9

    const/16 v3, 0x600

    invoke-direct {p0, v1, p5, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1485
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1486
    monitor-exit p0

    .line 1487
    return-void

    .line 1486
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public blacklist recordPhoneStateChangeEvent(JJIIII)V
    .registers 14
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "addStateFlag"    # I
    .param p6, "removeStateFlag"    # I
    .param p7, "state"    # I
    .param p8, "signalStrength"    # I

    .line 1445
    monitor-enter p0

    .line 1446
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    or-int/2addr v1, p5

    not-int v2, p6

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1447
    const/4 v0, -0x1

    if-eq p7, v0, :cond_1e

    .line 1448
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1449
    const/4 v3, 0x6

    const/16 v4, 0x1c0

    invoke-direct {p0, v2, p7, v3, v4}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result v2

    iput v2, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1453
    :cond_1e
    if-eq p8, v0, :cond_2f

    .line 1454
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1455
    const/4 v2, 0x3

    const/16 v3, 0x38

    invoke-direct {p0, v1, p8, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1459
    :cond_2f
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1460
    monitor-exit p0

    .line 1461
    return-void

    .line 1460
    :catchall_34
    move-exception v0

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_34

    throw v0
.end method

.method public blacklist recordPowerStats(JJLcom/android/internal/os/PowerStats;)V
    .registers 9
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "powerStats"    # Lcom/android/internal/os/PowerStats;

    .line 1199
    monitor-enter p0

    .line 1200
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput-object p5, v0, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    .line 1201
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1202
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1203
    monitor-exit p0

    .line 1204
    return-void

    .line 1203
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public blacklist recordProcessStateChange(JJII)V
    .registers 10
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "uid"    # I
    .param p6, "processState"    # I

    .line 1211
    monitor-enter p0

    .line 1212
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryItem;->localProcessStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    .line 1213
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    iput p5, v0, Landroid/os/BatteryStats$ProcessStateChange;->uid:I

    .line 1214
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    iput p6, v0, Landroid/os/BatteryStats$ProcessStateChange;->processState:I

    .line 1215
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1216
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1217
    monitor-exit p0

    .line 1218
    return-void

    .line 1217
    :catchall_23
    move-exception v0

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public blacklist recordScreenBrightnessEvent(JJI)V
    .registers 10
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "brightnessBin"    # I

    .line 1407
    monitor-enter p0

    .line 1408
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-direct {p0, v1, p5, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1411
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1412
    monitor-exit p0

    .line 1413
    return-void

    .line 1412
    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public blacklist recordShutdownEvent(JJJ)V
    .registers 15
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "currentTimeMs"    # J

    .line 1167
    monitor-enter p0

    .line 1168
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordingHistory:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_22

    if-nez v0, :cond_c

    .line 1169
    :try_start_5
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_5 .. :try_end_6} :catchall_7

    return-void

    .line 1175
    :catchall_7
    move-exception v0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    goto :goto_26

    .line 1172
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput-wide p5, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 1173
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_22

    const/16 v7, 0x8

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "elapsedRealtimeMs":J
    .end local p3    # "uptimeMs":J
    .local v2, "elapsedRealtimeMs":J
    .local v4, "uptimeMs":J
    :try_start_17
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;B)V

    .line 1174
    iget-object p1, v1, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const-wide/16 p2, 0x0

    iput-wide p2, p1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 1175
    monitor-exit p0

    .line 1176
    return-void

    .line 1175
    .end local v2    # "elapsedRealtimeMs":J
    .end local v4    # "uptimeMs":J
    .restart local p1    # "elapsedRealtimeMs":J
    .restart local p3    # "uptimeMs":J
    :catchall_22
    move-exception v0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "elapsedRealtimeMs":J
    .end local p3    # "uptimeMs":J
    .restart local v2    # "elapsedRealtimeMs":J
    .restart local v4    # "uptimeMs":J
    :goto_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_17 .. :try_end_27} :catchall_28

    throw v0

    :catchall_28
    move-exception v0

    goto :goto_26
.end method

.method public blacklist recordState2StartEvent(JJI)V
    .registers 8
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "stateFlags"    # I

    .line 1344
    monitor-enter p0

    .line 1345
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    or-int/2addr v1, p5

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1346
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1347
    monitor-exit p0

    .line 1348
    return-void

    .line 1347
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public blacklist recordState2StartEvent(JJIILjava/lang/String;)V
    .registers 10
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "stateFlags"    # I
    .param p6, "uid"    # I
    .param p7, "name"    # Ljava/lang/String;

    .line 1355
    monitor-enter p0

    .line 1356
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    or-int/2addr v1, p5

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1357
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const v1, 0x8015

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 1358
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1359
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput p6, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 1360
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p7, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 1361
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1362
    monitor-exit p0

    .line 1363
    return-void

    .line 1362
    :catchall_28
    move-exception v0

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public blacklist recordState2StopEvent(JJI)V
    .registers 9
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "stateFlags"    # I

    .line 1384
    monitor-enter p0

    .line 1385
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    not-int v2, p5

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1386
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1387
    monitor-exit p0

    .line 1388
    return-void

    .line 1387
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public blacklist recordState2StopEvent(JJIILjava/lang/String;)V
    .registers 11
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "stateFlags"    # I
    .param p6, "uid"    # I
    .param p7, "name"    # Ljava/lang/String;

    .line 1370
    monitor-enter p0

    .line 1371
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    not-int v2, p5

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1372
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const/16 v1, 0x4015

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 1373
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1374
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput p6, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 1375
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p7, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 1376
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1377
    monitor-exit p0

    .line 1378
    return-void

    .line 1377
    :catchall_28
    move-exception v0

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public blacklist recordStateChangeEvent(JJII)V
    .registers 10
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "stateStartFlags"    # I
    .param p6, "stateStopFlags"    # I

    .line 1334
    monitor-enter p0

    .line 1335
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    or-int/2addr v1, p5

    not-int v2, p6

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1336
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1337
    monitor-exit p0

    .line 1338
    return-void

    .line 1337
    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public blacklist recordStateStartEvent(JJI)V
    .registers 8
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "stateFlags"    # I

    .line 1283
    monitor-enter p0

    .line 1284
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    or-int/2addr v1, p5

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1285
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1286
    monitor-exit p0

    .line 1287
    return-void

    .line 1286
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public blacklist recordStateStartEvent(JJIILjava/lang/String;)V
    .registers 10
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "stateFlags"    # I
    .param p6, "uid"    # I
    .param p7, "name"    # Ljava/lang/String;

    .line 1294
    monitor-enter p0

    .line 1295
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    or-int/2addr v1, p5

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1296
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const v1, 0x8015

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 1297
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1298
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput p6, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 1299
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p7, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 1300
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1301
    monitor-exit p0

    .line 1302
    return-void

    .line 1301
    :catchall_28
    move-exception v0

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public blacklist recordStateStopEvent(JJI)V
    .registers 9
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "stateFlags"    # I

    .line 1308
    monitor-enter p0

    .line 1309
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    not-int v2, p5

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1310
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1311
    monitor-exit p0

    .line 1312
    return-void

    .line 1311
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public blacklist recordStateStopEvent(JJIILjava/lang/String;)V
    .registers 11
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "stateFlags"    # I
    .param p6, "uid"    # I
    .param p7, "name"    # Ljava/lang/String;

    .line 1319
    monitor-enter p0

    .line 1320
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    not-int v2, p5

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1321
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const/16 v1, 0x4015

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 1322
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1323
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput p6, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 1324
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p7, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 1325
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1326
    monitor-exit p0

    .line 1327
    return-void

    .line 1326
    :catchall_28
    move-exception v0

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public blacklist recordWakelockStartEvent(JJLjava/lang/String;I)V
    .registers 14
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "historyName"    # Ljava/lang/String;
    .param p6, "uid"    # I

    .line 1237
    monitor-enter p0

    .line 1238
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1239
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p5, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 1240
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput p6, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1f

    .line 1241
    const/high16 v6, 0x40000000    # 2.0f

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "elapsedRealtimeMs":J
    .end local p3    # "uptimeMs":J
    .local v2, "elapsedRealtimeMs":J
    .local v4, "uptimeMs":J
    :try_start_1a
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->recordStateStartEvent(JJI)V

    .line 1242
    monitor-exit p0

    .line 1243
    return-void

    .line 1242
    .end local v2    # "elapsedRealtimeMs":J
    .end local v4    # "uptimeMs":J
    .restart local p1    # "elapsedRealtimeMs":J
    .restart local p3    # "uptimeMs":J
    :catchall_1f
    move-exception v0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object p1, v0

    .end local p1    # "elapsedRealtimeMs":J
    .end local p3    # "uptimeMs":J
    .restart local v2    # "elapsedRealtimeMs":J
    .restart local v4    # "uptimeMs":J
    :goto_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_26

    throw p1

    :catchall_26
    move-exception v0

    move-object p1, v0

    goto :goto_24
.end method

.method public blacklist recordWakelockStopEvent(JJLjava/lang/String;I)V
    .registers 14
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "historyName"    # Ljava/lang/String;
    .param p6, "uid"    # I

    .line 1271
    monitor-enter p0

    .line 1272
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1273
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz p5, :cond_11

    move-object v1, p5

    goto :goto_13

    :cond_11
    const-string v1, ""

    :goto_13
    iput-object v1, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 1274
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput p6, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_25

    .line 1275
    const/high16 v6, 0x40000000    # 2.0f

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "elapsedRealtimeMs":J
    .end local p3    # "uptimeMs":J
    .local v2, "elapsedRealtimeMs":J
    .local v4, "uptimeMs":J
    :try_start_20
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->recordStateStopEvent(JJI)V

    .line 1276
    monitor-exit p0

    .line 1277
    return-void

    .line 1276
    .end local v2    # "elapsedRealtimeMs":J
    .end local v4    # "uptimeMs":J
    .restart local p1    # "elapsedRealtimeMs":J
    .restart local p3    # "uptimeMs":J
    :catchall_25
    move-exception v0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object p1, v0

    .end local p1    # "elapsedRealtimeMs":J
    .end local p3    # "uptimeMs":J
    .restart local v2    # "elapsedRealtimeMs":J
    .restart local v4    # "uptimeMs":J
    :goto_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_20 .. :try_end_2b} :catchall_2c

    throw p1

    :catchall_2c
    move-exception v0

    move-object p1, v0

    goto :goto_2a
.end method

.method public blacklist recordWakeupEvent(JJLjava/lang/String;)V
    .registers 8
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "reason"    # Ljava/lang/String;

    .line 1394
    monitor-enter p0

    .line 1395
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1396
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p5, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 1397
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 1398
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1399
    monitor-exit p0

    .line 1400
    return-void

    .line 1399
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public blacklist recordWifiConsumedCharge(JJD)V
    .registers 10
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "monitoredRailChargeMah"    # D

    .line 1226
    monitor-enter p0

    .line 1227
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v1, v0, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    add-double/2addr v1, p5

    iput-wide v1, v0, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    .line 1228
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1229
    monitor-exit p0

    .line 1230
    return-void

    .line 1229
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public blacklist recordWifiSignalStrengthChangeEvent(JJI)V
    .registers 10
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "strengthBin"    # I

    .line 1508
    monitor-enter p0

    .line 1509
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1510
    const/4 v2, 0x4

    const/16 v3, 0x70

    invoke-direct {p0, v1, p5, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1513
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1514
    monitor-exit p0

    .line 1515
    return-void

    .line 1514
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public blacklist recordWifiSupplicantStateChangeEvent(JJI)V
    .registers 10
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "supplState"    # I

    .line 1494
    monitor-enter p0

    .line 1495
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1496
    const/4 v2, 0x0

    const/16 v3, 0xf

    invoke-direct {p0, v1, p5, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1499
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1500
    monitor-exit p0

    .line 1501
    return-void

    .line 1500
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public blacklist reset()V
    .registers 4

    .line 629
    monitor-enter p0

    .line 630
    const-wide/16 v0, 0x0

    :try_start_3
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicHistorySize:J

    .line 631
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHistory;->initHistoryBuffer()V

    .line 632
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    if-eqz v0, :cond_1c

    .line 633
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->reset()V

    .line 634
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferStartTime:J

    invoke-interface {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->createFragment(J)Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsHistory;->setActiveFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V

    .line 636
    :cond_1c
    monitor-exit p0

    .line 637
    return-void

    .line 636
    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public blacklist setBatteryState(IIIIIII)V
    .registers 10
    .param p1, "status"    # I
    .param p2, "level"    # I
    .param p3, "health"    # I
    .param p4, "plugType"    # I
    .param p5, "temperature"    # I
    .param p6, "voltageMv"    # I
    .param p7, "chargeUah"    # I

    .line 1095
    monitor-enter p0

    .line 1096
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHaveBatteryLevel:Z

    .line 1097
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte v1, p1

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 1098
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte v1, p2

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 1099
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte v1, p3

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 1100
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte v1, p4

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 1101
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-short v1, p5

    iput-short v1, v0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    .line 1102
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-short v1, p6

    iput-short v1, v0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    .line 1103
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput p7, v0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    .line 1104
    monitor-exit p0

    .line 1105
    return-void

    .line 1104
    :catchall_28
    move-exception v0

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_2 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public blacklist setBatteryState(ZIII)V
    .registers 7
    .param p1, "charging"    # Z
    .param p2, "status"    # I
    .param p3, "level"    # I
    .param p4, "chargeUah"    # I

    .line 1081
    monitor-enter p0

    .line 1082
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHaveBatteryLevel:Z

    .line 1083
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsHistory;->setChargingState(Z)V

    .line 1084
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte v1, p2

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 1085
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte v1, p3

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 1086
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput p4, v0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    .line 1087
    monitor-exit p0

    .line 1088
    return-void

    .line 1087
    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public blacklist setChargingState(Z)V
    .registers 5
    .param p1, "charging"    # Z

    .line 1124
    monitor-enter p0

    .line 1125
    if-eqz p1, :cond_d

    .line 1126
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    goto :goto_17

    .line 1128
    :cond_d
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v2, -0x1000001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1130
    :goto_17
    monitor-exit p0

    .line 1131
    return-void

    .line 1130
    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public blacklist setHistoryRecordingEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 1021
    monitor-enter p0

    .line 1022
    :try_start_1
    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordingHistory:Z

    .line 1023
    monitor-exit p0

    .line 1024
    return-void

    .line 1023
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public blacklist setMaxHistoryBufferSize(I)V
    .registers 2
    .param p1, "maxHistoryBufferSize"    # I

    .line 523
    iput p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    .line 524
    return-void
.end method

.method public blacklist setPluggedInState(Z)V
    .registers 5
    .param p1, "pluggedIn"    # Z

    .line 1111
    monitor-enter p0

    .line 1112
    if-eqz p1, :cond_d

    .line 1113
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    goto :goto_17

    .line 1115
    :cond_d
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v2, -0x80001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1117
    :goto_17
    monitor-exit p0

    .line 1118
    return-void

    .line 1117
    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public blacklist startNextFragment(J)V
    .registers 4
    .param p1, "elapsedRealtimeMs"    # J

    .line 584
    monitor-enter p0

    .line 585
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsHistory;->startNextFragmentLocked(J)V

    .line 586
    monitor-exit p0

    .line 587
    return-void

    .line 586
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public blacklist startRecordingHistory(JJZ)V
    .registers 16
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "reset"    # Z

    .line 1051
    monitor-enter p0

    .line 1052
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordingHistory:Z

    .line 1053
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 1054
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_24

    .line 1055
    if-eqz p5, :cond_14

    const/4 v0, 0x7

    goto :goto_15

    :cond_14
    const/4 v0, 0x5

    :goto_15
    move v9, v0

    .line 1054
    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    .end local p1    # "elapsedRealtimeMs":J
    .end local p3    # "uptimeMs":J
    .local v4, "elapsedRealtimeMs":J
    .local v6, "uptimeMs":J
    :try_start_19
    invoke-direct/range {v3 .. v9}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;B)V

    .line 1056
    iget-object p1, v3, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const-wide/16 p2, 0x0

    iput-wide p2, p1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 1057
    monitor-exit p0

    .line 1058
    return-void

    .line 1057
    .end local v4    # "elapsedRealtimeMs":J
    .end local v6    # "uptimeMs":J
    .restart local p1    # "elapsedRealtimeMs":J
    .restart local p3    # "uptimeMs":J
    :catchall_24
    move-exception v0

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    move-object p1, v0

    .end local p1    # "elapsedRealtimeMs":J
    .end local p3    # "uptimeMs":J
    .restart local v4    # "elapsedRealtimeMs":J
    .restart local v6    # "uptimeMs":J
    :goto_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_2b

    throw p1

    :catchall_2b
    move-exception v0

    move-object p1, v0

    goto :goto_29
.end method

.method public blacklist writeHistory()V
    .registers 2

    .line 2208
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistory(Z)V

    .line 2209
    return-void
.end method

.method public blacklist writeHistoryItem(JJ)V
    .registers 16
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J

    .line 1586
    monitor-enter p0

    .line 1587
    :try_start_1
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryElapsedRealtimeMs:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_6c

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_55

    .line 1588
    :try_start_9
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryElapsedRealtimeMs:J

    sub-long v7, p1, v2

    .line 1590
    .local v7, "diffElapsedMs":J
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryUptimeMs:J

    sub-long v9, p3, v2

    .line 1591
    .local v9, "diffUptimeMs":J
    const-wide/16 v2, 0x14

    sub-long v2, v7, v2

    cmp-long v0, v9, v2

    if-gez v0, :cond_50

    .line 1592
    sub-long v2, v7, v9

    sub-long v2, p1, v2

    .line 1594
    .local v2, "wakeElapsedTimeMs":J
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    .line 1595
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    const/4 v4, 0x0

    iput-object v4, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1596
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    iput-object v4, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1597
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    iput-object v4, v0, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    .line 1598
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    iput-object v4, v0, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    .line 1599
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    const/4 v5, 0x0

    iput v5, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 1600
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v6, 0x7fffffff

    and-int/2addr v5, v6

    iput v5, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1601
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    iput-object v4, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 1602
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;
    :try_end_4a
    .catchall {:try_start_9 .. :try_end_4a} :catchall_52

    move-object v1, p0

    move-wide v4, p3

    :try_start_4c
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;)V

    goto :goto_56

    .line 1591
    .end local v2    # "wakeElapsedTimeMs":J
    :cond_50
    move-wide v4, p3

    goto :goto_56

    .line 1609
    .end local v7    # "diffElapsedMs":J
    .end local v9    # "diffUptimeMs":J
    :catchall_52
    move-exception v0

    move-wide v4, p3

    goto :goto_6d

    .line 1587
    :cond_55
    move-wide v4, p3

    .line 1605
    :goto_56
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, -0x80000000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1606
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryElapsedRealtimeMs:J

    .line 1607
    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryUptimeMs:J

    .line 1608
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;)V

    .line 1609
    monitor-exit p0

    .line 1610
    return-void

    .line 1609
    :catchall_6c
    move-exception v0

    :goto_6d
    monitor-exit p0
    :try_end_6e
    .catchall {:try_start_4c .. :try_end_6e} :catchall_6c

    throw v0
.end method

.method public blacklist writeSummaryToParcel(Landroid/os/Parcel;Z)V
    .registers 7
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "inclHistory"    # Z

    .line 806
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 807
    if-eqz p2, :cond_8

    .line 808
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsHistory;->writeToParcel(Landroid/os/Parcel;)V

    .line 811
    :cond_8
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 812
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 813
    .local v1, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/BatteryStats$HistoryTag;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$HistoryTag;

    .line 814
    .local v2, "tag":Landroid/os/BatteryStats$HistoryTag;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 815
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 816
    iget v3, v2, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 817
    .end local v1    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/BatteryStats$HistoryTag;Ljava/lang/Integer;>;"
    .end local v2    # "tag":Landroid/os/BatteryStats$HistoryTag;
    goto :goto_1b

    .line 818
    :cond_45
    return-void
.end method

.method public blacklist writeToBatteryUsageStatsParcel(Landroid/os/Parcel;J)V
    .registers 7
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "preferredHistoryDurationMs"    # J

    .line 872
    monitor-enter p0

    .line 873
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBlob([B)V

    .line 874
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    if-eqz v0, :cond_15

    .line 875
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryMonotonicEndTime:J

    sub-long/2addr v0, p2

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/BatteryStatsHistory;->writeToParcel(Landroid/os/Parcel;ZJ)V

    .line 878
    :cond_15
    monitor-exit p0

    .line 879
    return-void

    .line 878
    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;

    .line 857
    monitor-enter p0

    .line 858
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryBuffer(Landroid/os/Parcel;)V

    .line 859
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    if-eqz v0, :cond_e

    .line 860
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/BatteryStatsHistory;->writeToParcel(Landroid/os/Parcel;ZJ)V

    .line 862
    :cond_e
    monitor-exit p0

    .line 863
    return-void

    .line 862
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method
