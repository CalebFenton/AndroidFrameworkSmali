.class Lcom/android/server/AlarmManagerService;
.super Lcom/android/server/SystemService;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerService$Constants;,
        Lcom/android/server/AlarmManagerService$PriorityClass;,
        Lcom/android/server/AlarmManagerService$WakeupEvent;,
        Lcom/android/server/AlarmManagerService$Batch;,
        Lcom/android/server/AlarmManagerService$BatchTimeOrder;,
        Lcom/android/server/AlarmManagerService$InFlight;,
        Lcom/android/server/AlarmManagerService$FilterStats;,
        Lcom/android/server/AlarmManagerService$BroadcastStats;,
        Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;,
        Lcom/android/server/AlarmManagerService$Alarm;,
        Lcom/android/server/AlarmManagerService$AlarmThread;,
        Lcom/android/server/AlarmManagerService$AlarmHandler;,
        Lcom/android/server/AlarmManagerService$ClockReceiver;,
        Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;,
        Lcom/android/server/AlarmManagerService$UninstallReceiver;,
        Lcom/android/server/AlarmManagerService$ResultReceiver;,
        Lcom/android/server/AlarmManagerService$1;,
        Lcom/android/server/AlarmManagerService$2;
    }
.end annotation


# static fields
.field static final ALARM_EVENT:I = 0x1

.field static final DEBUG_ALARM_CLOCK:Z = false

.field static final DEBUG_BATCH:Z = false

.field static final DEBUG_VALIDATE:Z = false

.field private static final ELAPSED_REALTIME_MASK:I = 0x8

.field private static final ELAPSED_REALTIME_WAKEUP_MASK:I = 0x4

.field static final IS_WAKEUP_MASK:I = 0x5

.field static final MIN_FUZZABLE_INTERVAL:J = 0x2710L

.field private static final NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

.field static final PRIO_NORMAL:I = 0x2

.field static final PRIO_TICK:I = 0x0

.field static final PRIO_WAKEUP:I = 0x1

.field static final RECORD_ALARMS_IN_HISTORY:Z = true

.field private static final RTC_MASK:I = 0x2

.field private static final RTC_WAKEUP_MASK:I = 0x1

.field static final TAG:Ljava/lang/String; = "AlarmManager"

.field static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"

.field static final TIME_CHANGED_MASK:I = 0x10000

.field static final TYPE_NONWAKEUP_MASK:I = 0x1

.field static final WAKEUP_STATS:Z

.field static final localLOGV:Z

.field static final mBackgroundIntent:Landroid/content/Intent;

.field static final sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

.field static final sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;


# instance fields
.field final RECENT_WAKEUP_PERIOD:J

.field final mAlarmBatches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;"
        }
    .end annotation
.end field

.field final mAlarmDispatchComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field mAllowWhileIdleMinTime:J

.field mBroadcastRefCount:I

.field final mBroadcastStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AlarmManagerService$BroadcastStats;",
            ">;>;"
        }
    .end annotation
.end field

.field mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

.field final mConstants:Lcom/android/server/AlarmManagerService$Constants;

.field mCurrentSeq:I

.field mDateChangeSender:Landroid/app/PendingIntent;

.field final mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

.field private final mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field

.field mIdleOptions:Landroid/os/Bundle;

.field mInFlight:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$InFlight;",
            ">;"
        }
    .end annotation
.end field

.field mInteractive:Z

.field mInteractiveStateReceiver:Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;

.field mLastAlarmDeliveryTime:J

.field final mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

.field mLastTimeChangeClockTime:J

.field mLastTimeChangeRealtime:J

.field mLastWakeLockUnimportantForLogging:Z

.field final mLock:Ljava/lang/Object;

.field final mLog:Lcom/android/internal/util/LocalLog;

.field mMaxDelayTime:J

.field mNativeData:J

.field private final mNextAlarmClockForUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAlarmClockMayChange:Z

.field private mNextNonWakeup:J

.field mNextNonWakeupDeliveryTime:J

.field mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

.field private mNextWakeup:J

.field mNonInteractiveStartTime:J

.field mNonInteractiveTime:J

.field mNumDelayedAlarms:I

.field mNumTimeChanged:I

.field mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

.field mPendingNonWakeupAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

.field mPendingWhileIdleAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field final mPriorities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AlarmManagerService$PriorityClass;",
            ">;"
        }
    .end annotation
.end field

.field mRandom:Ljava/util/Random;

.field final mRecentWakeups:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/AlarmManagerService$WakeupEvent;",
            ">;"
        }
    .end annotation
.end field

.field final mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

.field private final mService:Landroid/os/IBinder;

.field mStartCurrentDelayTime:J

.field mTimeTickSender:Landroid/app/PendingIntent;

.field private final mTmpSparseAlarmClockArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field

.field mTotalDelayTime:J

.field private mUninstallReceiver:Lcom/android/server/AlarmManagerService$UninstallReceiver;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -set0(Lcom/android/server/AlarmManagerService;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .locals 1
    .param p1, "pi"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/AlarmManagerService;JJ)I
    .locals 1
    .param p1, "nativeData"    # J
    .param p3, "millis"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AlarmManagerService;->setKernelTime(JJ)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/AlarmManagerService;JI)I
    .locals 1
    .param p1, "nativeData"    # J
    .param p3, "minuteswest"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AlarmManagerService;->setKernelTimezone(JI)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/AlarmManagerService;J)I
    .locals 1
    .param p1, "nativeData"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->waitForAlarm(J)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/AlarmManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->sendNextAlarmClockChanged()V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/AlarmManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 102
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@5
    const/4 v1, 0x4

    #@6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@9
    move-result-object v0

    #@a
    .line 101
    sput-object v0, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    #@c
    .line 103
    new-instance v0, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    #@e
    invoke-direct {v0}, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;-><init>()V

    #@11
    sput-object v0, Lcom/android/server/AlarmManagerService;->sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    #@13
    .line 107
    new-instance v0, Landroid/content/Intent;

    #@15
    .line 108
    const-string/jumbo v1, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    #@18
    .line 107
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1b
    sput-object v0, Lcom/android/server/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    #@1d
    .line 590
    new-instance v0, Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    #@1f
    invoke-direct {v0}, Lcom/android/server/AlarmManagerService$BatchTimeOrder;-><init>()V

    #@22
    sput-object v0, Lcom/android/server/AlarmManagerService;->sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    #@24
    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    const/4 v2, 0x0

    #@4
    .line 600
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@7
    .line 110
    new-instance v0, Lcom/android/internal/util/LocalLog;

    #@9
    const-string/jumbo v1, "AlarmManager"

    #@c
    invoke-direct {v0, v1}, Lcom/android/internal/util/LocalLog;-><init>(Ljava/lang/String;)V

    #@f
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    #@11
    .line 112
    new-instance v0, Ljava/lang/Object;

    #@13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    #@18
    .line 117
    iput v2, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    #@1a
    .line 120
    new-instance v0, Ljava/util/ArrayList;

    #@1c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1f
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    #@21
    .line 121
    new-instance v0, Ljava/util/ArrayList;

    #@23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@26
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    #@28
    .line 122
    new-instance v0, Lcom/android/server/AlarmManagerService$AlarmHandler;

    #@2a
    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerService$AlarmHandler;-><init>(Lcom/android/server/AlarmManagerService;)V

    #@2d
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    #@2f
    .line 126
    new-instance v0, Lcom/android/server/AlarmManagerService$ResultReceiver;

    #@31
    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerService$ResultReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    #@34
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

    #@36
    .line 130
    const/4 v0, 0x1

    #@37
    iput-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    #@39
    .line 145
    new-instance v0, Landroid/util/SparseLongArray;

    #@3b
    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    #@3e
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    #@40
    .line 153
    new-instance v0, Landroid/util/SparseArray;

    #@42
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@45
    .line 152
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    #@47
    .line 155
    new-instance v0, Landroid/util/SparseArray;

    #@49
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@4c
    .line 154
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

    #@4e
    .line 157
    new-instance v0, Landroid/util/SparseBooleanArray;

    #@50
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    #@53
    .line 156
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    #@55
    .line 162
    new-instance v0, Landroid/util/SparseArray;

    #@57
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@5a
    .line 161
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

    #@5c
    .line 304
    new-instance v0, Ljava/util/HashMap;

    #@5e
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@61
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    #@63
    .line 305
    iput v2, p0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    #@65
    .line 319
    new-instance v0, Ljava/util/LinkedList;

    #@67
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@6a
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mRecentWakeups:Ljava/util/LinkedList;

    #@6c
    .line 320
    const-wide/32 v0, 0x5265c00

    #@6f
    iput-wide v0, p0, Lcom/android/server/AlarmManagerService;->RECENT_WAKEUP_PERIOD:J

    #@71
    .line 529
    new-instance v0, Lcom/android/server/AlarmManagerService$1;

    #@73
    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerService$1;-><init>(Lcom/android/server/AlarmManagerService;)V

    #@76
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    #@78
    .line 591
    new-instance v0, Ljava/util/ArrayList;

    #@7a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@7d
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@7f
    .line 595
    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    #@81
    .line 596
    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    #@83
    .line 597
    new-instance v0, Ljava/util/ArrayList;

    #@85
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@88
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    #@8a
    .line 788
    new-instance v0, Landroid/util/SparseArray;

    #@8c
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@8f
    .line 787
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    #@91
    .line 790
    iput v2, p0, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    #@93
    .line 791
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    #@95
    .line 792
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    #@97
    .line 1069
    new-instance v0, Lcom/android/server/AlarmManagerService$2;

    #@99
    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerService$2;-><init>(Lcom/android/server/AlarmManagerService;)V

    #@9c
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mService:Landroid/os/IBinder;

    #@9e
    .line 601
    new-instance v0, Lcom/android/server/AlarmManagerService$Constants;

    #@a0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    #@a2
    invoke-direct {v0, p0, v1}, Lcom/android/server/AlarmManagerService$Constants;-><init>(Lcom/android/server/AlarmManagerService;Landroid/os/Handler;)V

    #@a5
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    #@a7
    .line 599
    return-void
.end method

.method static addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z
    .locals 3
    .param p1, "newBatch"    # Lcom/android/server/AlarmManagerService$Batch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ")Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    const/4 v1, 0x0

    #@1
    .line 630
    sget-object v2, Lcom/android/server/AlarmManagerService;->sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    #@3
    invoke-static {p0, p1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    #@6
    move-result v0

    #@7
    .line 631
    .local v0, "index":I
    if-gez v0, :cond_0

    #@9
    .line 632
    rsub-int/lit8 v2, v0, 0x0

    #@b
    add-int/lit8 v0, v2, -0x1

    #@d
    .line 634
    :cond_0
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@10
    .line 635
    if-nez v0, :cond_1

    #@12
    const/4 v1, 0x1

    #@13
    :cond_1
    return v1
.end method

.method private native close(J)V
.end method

.method static convertToElapsed(JI)J
    .locals 6
    .param p0, "when"    # J
    .param p2, "type"    # I

    #@0
    .prologue
    .line 605
    const/4 v1, 0x1

    #@1
    if-eq p2, v1, :cond_0

    #@3
    if-nez p2, :cond_2

    #@5
    :cond_0
    const/4 v0, 0x1

    #@6
    .line 606
    .local v0, "isRtc":Z
    :goto_0
    if-eqz v0, :cond_1

    #@8
    .line 607
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@b
    move-result-wide v2

    #@c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@f
    move-result-wide v4

    #@10
    sub-long/2addr v2, v4

    #@11
    sub-long/2addr p0, v2

    #@12
    .line 609
    :cond_1
    return-wide p0

    #@13
    .line 605
    .end local v0    # "isRtc":Z
    :cond_2
    const/4 v0, 0x0

    #@14
    .restart local v0    # "isRtc":Z
    goto :goto_0
.end method

.method private static final dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V
    .locals 11
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "nowELAPSED"    # J
    .param p5, "nowRTC"    # J
    .param p7, "sdf"    # Ljava/text/SimpleDateFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/text/SimpleDateFormat;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 1815
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v2

    #@4
    add-int/lit8 v0, v2, -0x1

    #@6
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@8
    .line 1816
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    #@e
    .line 1817
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    #@10
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->labelForType(I)Ljava/lang/String;

    #@13
    move-result-object v9

    #@14
    .line 1818
    .local v9, "label":Ljava/lang/String;
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17
    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a
    const-string/jumbo v2, " #"

    #@1d
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    #@23
    .line 1819
    const-string/jumbo v2, ": "

    #@26
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@29
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@2c
    .line 1820
    new-instance v2, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    const-string/jumbo v3, "  "

    #@38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v3

    #@40
    move-object v2, p0

    #@41
    move-wide/from16 v4, p5

    #@43
    move-wide v6, p3

    #@44
    move-object/from16 v8, p7

    #@46
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    #@49
    .line 1815
    add-int/lit8 v0, v0, -0x1

    #@4b
    goto :goto_0

    #@4c
    .line 1814
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v9    # "label":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static final dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V
    .locals 10
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "nowRTC"    # J
    .param p6, "nowELAPSED"    # J
    .param p8, "sdf"    # Ljava/text/SimpleDateFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/text/SimpleDateFormat;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 1793
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v2

    #@4
    add-int/lit8 v0, v2, -0x1

    #@6
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@8
    .line 1794
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    #@e
    .line 1795
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14
    const-string/jumbo v2, " #"

    #@17
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    #@1d
    .line 1796
    const-string/jumbo v2, ": "

    #@20
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@23
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@26
    .line 1797
    new-instance v2, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    const-string/jumbo v3, "  "

    #@32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    move-object v2, p0

    #@3b
    move-wide v4, p4

    #@3c
    move-wide/from16 v6, p6

    #@3e
    move-object/from16 v8, p8

    #@40
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    #@43
    .line 1793
    add-int/lit8 v0, v0, -0x1

    #@45
    goto :goto_0

    #@46
    .line 1792
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_0
    return-void
.end method

.method private findFirstWakeupBatchLocked()Lcom/android/server/AlarmManagerService$Batch;
    .locals 4

    #@0
    .prologue
    .line 1462
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 1463
    .local v0, "N":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@9
    .line 1464
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    #@11
    .line 1465
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Batch;->hasWakeups()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_0

    #@17
    .line 1466
    return-object v1

    #@18
    .line 1463
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 1469
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    const/4 v3, 0x0

    #@1c
    return-object v3
.end method

.method private static formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1601
    invoke-static {p0, p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    const-string/jumbo v1, "EHm"

    #@9
    .line 1602
    .local v1, "skeleton":Ljava/lang/String;
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@c
    move-result-object v2

    #@d
    invoke-static {v2, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 1603
    .local v0, "pattern":Ljava/lang/String;
    if-nez p1, :cond_1

    #@13
    const-string/jumbo v2, ""

    #@16
    :goto_1
    return-object v2

    #@17
    .line 1601
    .end local v0    # "pattern":Ljava/lang/String;
    .end local v1    # "skeleton":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "Ehma"

    #@1a
    .restart local v1    # "skeleton":Ljava/lang/String;
    goto :goto_0

    #@1b
    .line 1604
    .restart local v0    # "pattern":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    #@1e
    move-result-wide v2

    #@1f
    invoke-static {v0, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    #@22
    move-result-object v2

    #@23
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    goto :goto_1
.end method

.method static fuzzForDuration(J)I
    .locals 2
    .param p0, "duration"    # J

    #@0
    .prologue
    .line 2064
    const-wide/32 v0, 0xdbba0

    #@3
    cmp-long v0, p0, v0

    #@5
    if-gez v0, :cond_0

    #@7
    .line 2067
    long-to-int v0, p0

    #@8
    return v0

    #@9
    .line 2068
    :cond_0
    const-wide/32 v0, 0x5265c0

    #@c
    cmp-long v0, p0, v0

    #@e
    if-gez v0, :cond_1

    #@10
    .line 2070
    const v0, 0xdbba0

    #@13
    return v0

    #@14
    .line 2073
    :cond_1
    const v0, 0x1b7740

    #@17
    return v0
.end method

.method private final getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .locals 5
    .param p1, "pi"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 2517
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 2518
    .local v1, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorUid()I

    #@7
    move-result v2

    #@8
    .line 2519
    .local v2, "uid":I
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    #@a
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v3

    #@e
    check-cast v3, Landroid/util/ArrayMap;

    #@10
    .line 2520
    .local v3, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    if-nez v3, :cond_0

    #@12
    .line 2521
    new-instance v3, Landroid/util/ArrayMap;

    #@14
    .end local v3    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    #@17
    .line 2522
    .restart local v3    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    #@19
    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1c
    .line 2524
    :cond_0
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Lcom/android/server/AlarmManagerService$BroadcastStats;

    #@22
    .line 2525
    .local v0, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    if-nez v0, :cond_1

    #@24
    .line 2526
    new-instance v0, Lcom/android/server/AlarmManagerService$BroadcastStats;

    #@26
    .end local v0    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    invoke-direct {v0, v2, v1}, Lcom/android/server/AlarmManagerService$BroadcastStats;-><init>(ILjava/lang/String;)V

    #@29
    .line 2527
    .restart local v0    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    invoke-virtual {v3, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    .line 2529
    :cond_1
    return-object v0
.end method

.method private native init()J
.end method

.method private static final labelForType(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    #@0
    .prologue
    .line 1802
    packed-switch p0, :pswitch_data_0

    #@3
    .line 1810
    const-string/jumbo v0, "--unknown--"

    #@6
    return-object v0

    #@7
    .line 1803
    :pswitch_0
    const-string/jumbo v0, "RTC"

    #@a
    return-object v0

    #@b
    .line 1804
    :pswitch_1
    const-string/jumbo v0, "RTC_WAKEUP"

    #@e
    return-object v0

    #@f
    .line 1805
    :pswitch_2
    const-string/jumbo v0, "ELAPSED"

    #@12
    return-object v0

    #@13
    .line 1806
    :pswitch_3
    const-string/jumbo v0, "ELAPSED_WAKEUP"

    #@16
    return-object v0

    #@17
    .line 1802
    nop

    #@18
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private logBatchesLocked(Ljava/text/SimpleDateFormat;)V
    .locals 12
    .param p1, "sdf"    # Ljava/text/SimpleDateFormat;

    #@0
    .prologue
    .line 1426
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    #@2
    const/16 v2, 0x800

    #@4
    invoke-direct {v9, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@7
    .line 1427
    .local v9, "bs":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/PrintWriter;

    #@9
    invoke-direct {v1, v9}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    #@c
    .line 1428
    .local v1, "pw":Ljava/io/PrintWriter;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@f
    move-result-wide v6

    #@10
    .line 1429
    .local v6, "nowRTC":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@13
    move-result-wide v4

    #@14
    .line 1430
    .local v4, "nowELAPSED":J
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@19
    move-result v0

    #@1a
    .line 1431
    .local v0, "NZ":I
    const/4 v11, 0x0

    #@1b
    .local v11, "iz":I
    :goto_0
    if-ge v11, v0, :cond_0

    #@1d
    .line 1432
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@1f
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v10

    #@23
    check-cast v10, Lcom/android/server/AlarmManagerService$Batch;

    #@25
    .line 1433
    .local v10, "bz":Lcom/android/server/AlarmManagerService$Batch;
    const-string/jumbo v2, "Batch "

    #@28
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@2b
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    #@2e
    const-string/jumbo v2, ": "

    #@31
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@34
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@37
    .line 1434
    iget-object v2, v10, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@39
    const-string/jumbo v3, "  "

    #@3c
    move-object v8, p1

    #@3d
    invoke-static/range {v1 .. v8}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    #@40
    .line 1435
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    #@43
    .line 1436
    const-string/jumbo v2, "AlarmManager"

    #@46
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    #@49
    move-result-object v3

    #@4a
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@4d
    .line 1437
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->reset()V

    #@50
    .line 1431
    add-int/lit8 v11, v11, 0x1

    #@52
    goto :goto_0

    #@53
    .line 1425
    .end local v10    # "bz":Lcom/android/server/AlarmManagerService$Batch;
    :cond_0
    return-void
.end method

.method static maxTriggerTime(JJJ)J
    .locals 6
    .param p0, "now"    # J
    .param p2, "triggerAtTime"    # J
    .param p4, "interval"    # J

    #@0
    .prologue
    .line 619
    const-wide/16 v2, 0x0

    #@2
    cmp-long v2, p4, v2

    #@4
    if-nez v2, :cond_1

    #@6
    .line 620
    sub-long v0, p2, p0

    #@8
    .line 622
    .local v0, "futurity":J
    :goto_0
    const-wide/16 v2, 0x2710

    #@a
    cmp-long v2, v0, v2

    #@c
    if-gez v2, :cond_0

    #@e
    .line 623
    const-wide/16 v0, 0x0

    #@10
    .line 625
    :cond_0
    long-to-double v2, v0

    #@11
    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    #@13
    mul-double/2addr v2, v4

    #@14
    double-to-long v2, v2

    #@15
    add-long/2addr v2, p2

    #@16
    return-wide v2

    #@17
    .line 621
    .end local v0    # "futurity":J
    :cond_1
    move-wide v0, p4

    #@18
    .restart local v0    # "futurity":J
    goto :goto_0
.end method

.method private removeLocked(Landroid/app/PendingIntent;)V
    .locals 6
    .param p1, "operation"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1634
    const/4 v1, 0x0

    #@2
    .line 1635
    .local v1, "didRemove":Z
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v4

    #@8
    add-int/lit8 v2, v4, -0x1

    #@a
    .end local v1    # "didRemove":Z
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    #@c
    .line 1636
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    #@14
    .line 1637
    .local v0, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->remove(Landroid/app/PendingIntent;)Z

    #@17
    move-result v4

    #@18
    or-int/2addr v1, v4

    #@19
    .line 1638
    .local v1, "didRemove":Z
    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    #@1c
    move-result v4

    #@1d
    if-nez v4, :cond_0

    #@1f
    .line 1639
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@24
    .line 1635
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@26
    goto :goto_0

    #@27
    .line 1642
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v1    # "didRemove":Z
    :cond_1
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@2c
    move-result v4

    #@2d
    add-int/lit8 v2, v4, -0x1

    #@2f
    :goto_1
    if-ltz v2, :cond_3

    #@31
    .line 1643
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    #@33
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@36
    move-result-object v4

    #@37
    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    #@39
    iget-object v4, v4, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@3b
    invoke-virtual {v4, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v4

    #@3f
    if-eqz v4, :cond_2

    #@41
    .line 1645
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    #@43
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@46
    .line 1642
    :cond_2
    add-int/lit8 v2, v2, -0x1

    #@48
    goto :goto_1

    #@49
    .line 1649
    :cond_3
    if-eqz v1, :cond_7

    #@4b
    .line 1653
    const/4 v3, 0x0

    #@4c
    .line 1654
    .local v3, "restorePending":Z
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    #@4e
    if-eqz v4, :cond_4

    #@50
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    #@52
    iget-object v4, v4, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@54
    invoke-virtual {v4, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    #@57
    move-result v4

    #@58
    if-eqz v4, :cond_4

    #@5a
    .line 1655
    iput-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    #@5c
    .line 1656
    const/4 v3, 0x1

    #@5d
    .line 1658
    :cond_4
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    #@5f
    if-eqz v4, :cond_5

    #@61
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    #@63
    iget-object v4, v4, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@65
    invoke-virtual {v4, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    #@68
    move-result v4

    #@69
    if-eqz v4, :cond_5

    #@6b
    .line 1659
    iput-object v5, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    #@6d
    .line 1661
    :cond_5
    const/4 v4, 0x1

    #@6e
    invoke-virtual {p0, v4}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    #@71
    .line 1662
    if-eqz v3, :cond_6

    #@73
    .line 1663
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->restorePendingWhileIdleAlarmsLocked()V

    #@76
    .line 1665
    :cond_6
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    #@79
    .line 1633
    .end local v3    # "restorePending":Z
    :cond_7
    return-void
.end method

.method private sendNextAlarmClockChanged()V
    .locals 8

    #@0
    .prologue
    .line 1570
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

    #@2
    .line 1571
    .local v3, "pendingUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/AlarmManager$AlarmClockInfo;>;"
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    #@5
    .line 1573
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    #@7
    monitor-enter v6

    #@8
    .line 1574
    :try_start_0
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    #@a
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    #@d
    move-result v0

    #@e
    .line 1575
    .local v0, "N":I
    const/4 v2, 0x0

    #@f
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@11
    .line 1576
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    #@13
    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@16
    move-result v4

    #@17
    .line 1577
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    #@19
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v5

    #@1d
    check-cast v5, Landroid/app/AlarmManager$AlarmClockInfo;

    #@1f
    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@22
    .line 1575
    add-int/lit8 v2, v2, 0x1

    #@24
    goto :goto_0

    #@25
    .line 1579
    .end local v4    # "userId":I
    :cond_0
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    #@27
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    monitor-exit v6

    #@2b
    .line 1582
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@2e
    move-result v0

    #@2f
    .line 1583
    const/4 v2, 0x0

    #@30
    :goto_1
    if-ge v2, v0, :cond_1

    #@32
    .line 1584
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    #@35
    move-result v4

    #@36
    .line 1585
    .restart local v4    # "userId":I
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@39
    move-result-object v1

    #@3a
    check-cast v1, Landroid/app/AlarmManager$AlarmClockInfo;

    #@3c
    .line 1586
    .local v1, "alarmClock":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    #@3f
    move-result-object v5

    #@40
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@43
    move-result-object v5

    #@44
    .line 1587
    const-string/jumbo v6, "next_alarm_formatted"

    #@47
    .line 1588
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    #@4a
    move-result-object v7

    #@4b
    invoke-static {v7, v1, v4}, Lcom/android/server/AlarmManagerService;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;

    #@4e
    move-result-object v7

    #@4f
    .line 1586
    invoke-static {v5, v6, v7, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@52
    .line 1591
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    #@55
    move-result-object v5

    #@56
    sget-object v6, Lcom/android/server/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    #@58
    .line 1592
    new-instance v7, Landroid/os/UserHandle;

    #@5a
    invoke-direct {v7, v4}, Landroid/os/UserHandle;-><init>(I)V

    #@5d
    .line 1591
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@60
    .line 1583
    add-int/lit8 v2, v2, 0x1

    #@62
    goto :goto_1

    #@63
    .line 1573
    .end local v0    # "N":I
    .end local v1    # "alarmClock":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v2    # "i":I
    .end local v4    # "userId":I
    :catchall_0
    move-exception v5

    #@64
    monitor-exit v6

    #@65
    throw v5

    #@66
    .line 1569
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    return-void
.end method

.method private native set(JIJJ)V
.end method

.method private setImplLocked(IJJJJJLandroid/app/PendingIntent;IZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;I)V
    .locals 20
    .param p1, "type"    # I
    .param p2, "when"    # J
    .param p4, "whenElapsed"    # J
    .param p6, "windowLength"    # J
    .param p8, "maxWhen"    # J
    .param p10, "interval"    # J
    .param p12, "operation"    # Landroid/app/PendingIntent;
    .param p13, "flags"    # I
    .param p14, "doValidate"    # Z
    .param p15, "workSource"    # Landroid/os/WorkSource;
    .param p16, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p17, "uid"    # I

    #@0
    .prologue
    .line 963
    new-instance v2, Lcom/android/server/AlarmManagerService$Alarm;

    #@2
    move/from16 v3, p1

    #@4
    move-wide/from16 v4, p2

    #@6
    move-wide/from16 v6, p4

    #@8
    move-wide/from16 v8, p6

    #@a
    move-wide/from16 v10, p8

    #@c
    move-wide/from16 v12, p10

    #@e
    move-object/from16 v14, p12

    #@10
    move-object/from16 v15, p15

    #@12
    move/from16 v16, p13

    #@14
    move-object/from16 v17, p16

    #@16
    move/from16 v18, p17

    #@18
    invoke-direct/range {v2 .. v18}, Lcom/android/server/AlarmManagerService$Alarm;-><init>(IJJJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;ILandroid/app/AlarmManager$AlarmClockInfo;I)V

    #@1b
    .line 965
    .local v2, "a":Lcom/android/server/AlarmManagerService$Alarm;
    move-object/from16 v0, p0

    #@1d
    move-object/from16 v1, p12

    #@1f
    invoke-direct {v0, v1}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;)V

    #@22
    .line 966
    const/4 v3, 0x0

    #@23
    move-object/from16 v0, p0

    #@25
    move/from16 v1, p14

    #@27
    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/AlarmManagerService;->setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V

    #@2a
    .line 962
    return-void
.end method

.method private setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V
    .locals 12
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "rebatching"    # Z
    .param p3, "doValidate"    # Z

    #@0
    .prologue
    .line 970
    iget v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    #@2
    and-int/lit8 v7, v7, 0x10

    #@4
    if-eqz v7, :cond_8

    #@6
    .line 975
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    #@8
    if-eqz v7, :cond_0

    #@a
    .line 976
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    #@c
    iget-wide v8, v7, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@e
    iput-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    #@10
    iput-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@12
    iput-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    #@14
    .line 979
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@17
    move-result-wide v4

    #@18
    .line 980
    .local v4, "nowElapsed":J
    iget-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@1a
    sub-long/2addr v8, v4

    #@1b
    invoke-static {v8, v9}, Lcom/android/server/AlarmManagerService;->fuzzForDuration(J)I

    #@1e
    move-result v2

    #@1f
    .line 981
    .local v2, "fuzz":I
    if-lez v2, :cond_2

    #@21
    .line 982
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mRandom:Ljava/util/Random;

    #@23
    if-nez v7, :cond_1

    #@25
    .line 983
    new-instance v7, Ljava/util/Random;

    #@27
    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    #@2a
    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mRandom:Ljava/util/Random;

    #@2c
    .line 985
    :cond_1
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mRandom:Ljava/util/Random;

    #@2e
    invoke-virtual {v7, v2}, Ljava/util/Random;->nextInt(I)I

    #@31
    move-result v1

    #@32
    .line 986
    .local v1, "delta":I
    iget-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@34
    int-to-long v10, v1

    #@35
    sub-long/2addr v8, v10

    #@36
    iput-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@38
    .line 994
    iget-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@3a
    iput-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    #@3c
    iput-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    #@3e
    .line 1009
    .end local v1    # "delta":I
    .end local v2    # "fuzz":I
    .end local v4    # "nowElapsed":J
    :cond_2
    iget v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    #@40
    and-int/lit8 v7, v7, 0x1

    #@42
    if-eqz v7, :cond_9

    #@44
    .line 1010
    const/4 v6, -0x1

    #@45
    .line 1011
    .local v6, "whichBatch":I
    :goto_0
    if-gez v6, :cond_a

    #@47
    .line 1012
    new-instance v0, Lcom/android/server/AlarmManagerService$Batch;

    #@49
    invoke-direct {v0, p0, p1}, Lcom/android/server/AlarmManagerService$Batch;-><init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)V

    #@4c
    .line 1013
    .local v0, "batch":Lcom/android/server/AlarmManagerService$Batch;
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@4e
    invoke-static {v7, v0}, Lcom/android/server/AlarmManagerService;->addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z

    #@51
    .line 1024
    :cond_3
    :goto_1
    iget-object v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    #@53
    if-eqz v7, :cond_4

    #@55
    .line 1025
    const/4 v7, 0x1

    #@56
    iput-boolean v7, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    #@58
    .line 1028
    :cond_4
    const/4 v3, 0x0

    #@59
    .line 1030
    .local v3, "needRebatch":Z
    iget v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    #@5b
    and-int/lit8 v7, v7, 0x10

    #@5d
    if-eqz v7, :cond_b

    #@5f
    .line 1031
    iput-object p1, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    #@61
    .line 1032
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    #@63
    invoke-virtual {v7}, Lcom/android/server/AlarmManagerService$Constants;->updateAllowWhileIdleMinTimeLocked()V

    #@66
    .line 1033
    const/4 v3, 0x1

    #@67
    .line 1046
    :cond_5
    :goto_2
    if-nez p2, :cond_7

    #@69
    .line 1060
    if-eqz v3, :cond_6

    #@6b
    .line 1061
    const/4 v7, 0x0

    #@6c
    invoke-virtual {p0, v7}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    #@6f
    .line 1064
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    #@72
    .line 1065
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    #@75
    .line 969
    :cond_7
    return-void

    #@76
    .line 997
    .end local v0    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v3    # "needRebatch":Z
    .end local v6    # "whichBatch":I
    :cond_8
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    #@78
    if-eqz v7, :cond_2

    #@7a
    .line 1000
    iget v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    #@7c
    and-int/lit8 v7, v7, 0xe

    #@7e
    if-nez v7, :cond_2

    #@80
    .line 1004
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    #@82
    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@85
    .line 1005
    return-void

    #@86
    .line 1010
    :cond_9
    iget-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@88
    iget-wide v10, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    #@8a
    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/android/server/AlarmManagerService;->attemptCoalesceLocked(JJ)I

    #@8d
    move-result v6

    #@8e
    .restart local v6    # "whichBatch":I
    goto :goto_0

    #@8f
    .line 1015
    :cond_a
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@91
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@94
    move-result-object v0

    #@95
    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    #@97
    .line 1016
    .restart local v0    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->add(Lcom/android/server/AlarmManagerService$Alarm;)Z

    #@9a
    move-result v7

    #@9b
    if-eqz v7, :cond_3

    #@9d
    .line 1019
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@9f
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@a2
    .line 1020
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@a4
    invoke-static {v7, v0}, Lcom/android/server/AlarmManagerService;->addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z

    #@a7
    goto :goto_1

    #@a8
    .line 1034
    .restart local v3    # "needRebatch":Z
    :cond_b
    iget v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    #@aa
    and-int/lit8 v7, v7, 0x2

    #@ac
    if-eqz v7, :cond_5

    #@ae
    .line 1035
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    #@b0
    if-eqz v7, :cond_c

    #@b2
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    #@b4
    iget-wide v8, v7, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@b6
    iget-wide v10, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@b8
    cmp-long v7, v8, v10

    #@ba
    if-lez v7, :cond_5

    #@bc
    .line 1036
    :cond_c
    iput-object p1, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    #@be
    .line 1040
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    #@c0
    if-eqz v7, :cond_5

    #@c2
    .line 1041
    const/4 v3, 0x1

    #@c3
    goto :goto_2
.end method

.method private native setKernelTime(JJ)I
.end method

.method private native setKernelTimezone(JI)I
.end method

.method private setLocked(IJ)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "when"    # J

    #@0
    .prologue
    const-wide/16 v10, 0x0

    #@2
    const/4 v9, 0x1

    #@3
    const-wide/16 v2, 0x3e8

    #@5
    .line 1769
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    #@7
    cmp-long v0, v0, v10

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 1773
    cmp-long v0, p2, v10

    #@d
    if-gez v0, :cond_0

    #@f
    .line 1774
    const-wide/16 v4, 0x0

    #@11
    .line 1775
    .local v4, "alarmSeconds":J
    const-wide/16 v6, 0x0

    #@13
    .line 1781
    .local v6, "alarmNanoseconds":J
    :goto_0
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    #@15
    move-object v0, p0

    #@16
    move v3, p1

    #@17
    invoke-direct/range {v0 .. v7}, Lcom/android/server/AlarmManagerService;->set(JIJJ)V

    #@1a
    .line 1768
    .end local v4    # "alarmSeconds":J
    .end local v6    # "alarmNanoseconds":J
    :goto_1
    return-void

    #@1b
    .line 1777
    :cond_0
    div-long v4, p2, v2

    #@1d
    .line 1778
    .restart local v4    # "alarmSeconds":J
    rem-long v0, p2, v2

    #@1f
    mul-long/2addr v0, v2

    #@20
    mul-long v6, v0, v2

    #@22
    .restart local v6    # "alarmNanoseconds":J
    goto :goto_0

    #@23
    .line 1783
    .end local v4    # "alarmSeconds":J
    .end local v6    # "alarmNanoseconds":J
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@26
    move-result-object v8

    #@27
    .line 1784
    .local v8, "msg":Landroid/os/Message;
    iput v9, v8, Landroid/os/Message;->what:I

    #@29
    .line 1786
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    #@2b
    invoke-virtual {v0, v9}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    #@2e
    .line 1787
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    #@30
    invoke-virtual {v0, v8, p2, p3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    #@33
    goto :goto_1
.end method

.method private updateNextAlarmClockLocked()V
    .locals 15

    #@0
    .prologue
    const/4 v14, 0x0

    #@1
    const/4 v13, 0x0

    #@2
    .line 1488
    iget-boolean v12, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    #@4
    if-nez v12, :cond_0

    #@6
    .line 1489
    return-void

    #@7
    .line 1491
    :cond_0
    iput-boolean v14, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    #@9
    .line 1493
    iget-object v10, p0, Lcom/android/server/AlarmManagerService;->mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

    #@b
    .line 1494
    .local v10, "nextForUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/AlarmManager$AlarmClockInfo;>;"
    invoke-virtual {v10}, Landroid/util/SparseArray;->clear()V

    #@e
    .line 1496
    iget-object v12, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    #@13
    move-result v1

    #@14
    .line 1497
    .local v1, "N":I
    const/4 v7, 0x0

    #@15
    .local v7, "i":I
    :goto_0
    if-ge v7, v1, :cond_3

    #@17
    .line 1498
    iget-object v12, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v12

    #@1d
    check-cast v12, Lcom/android/server/AlarmManagerService$Batch;

    #@1f
    iget-object v5, v12, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@21
    .line 1499
    .local v5, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@24
    move-result v0

    #@25
    .line 1501
    .local v0, "M":I
    const/4 v8, 0x0

    #@26
    .local v8, "j":I
    :goto_1
    if-ge v8, v0, :cond_2

    #@28
    .line 1502
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2b
    move-result-object v4

    #@2c
    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    #@2e
    .line 1503
    .local v4, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v12, v4, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    #@30
    if-eqz v12, :cond_1

    #@32
    .line 1504
    iget v12, v4, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    #@34
    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    #@37
    move-result v11

    #@38
    .line 1513
    .local v11, "userId":I
    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@3b
    move-result-object v12

    #@3c
    if-nez v12, :cond_1

    #@3e
    .line 1514
    iget-object v12, v4, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    #@40
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@43
    .line 1501
    .end local v11    # "userId":I
    :cond_1
    add-int/lit8 v8, v8, 0x1

    #@45
    goto :goto_1

    #@46
    .line 1497
    .end local v4    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    #@48
    goto :goto_0

    #@49
    .line 1521
    .end local v0    # "M":I
    .end local v5    # "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v8    # "j":I
    :cond_3
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    #@4c
    move-result v2

    #@4d
    .line 1522
    .local v2, "NN":I
    const/4 v7, 0x0

    #@4e
    :goto_2
    if-ge v7, v2, :cond_5

    #@50
    .line 1523
    invoke-virtual {v10, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@53
    move-result-object v9

    #@54
    check-cast v9, Landroid/app/AlarmManager$AlarmClockInfo;

    #@56
    .line 1524
    .local v9, "newAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {v10, v7}, Landroid/util/SparseArray;->keyAt(I)I

    #@59
    move-result v11

    #@5a
    .line 1525
    .restart local v11    # "userId":I
    iget-object v12, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    #@5c
    invoke-virtual {v12, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5f
    move-result-object v6

    #@60
    check-cast v6, Landroid/app/AlarmManager$AlarmClockInfo;

    #@62
    .line 1526
    .local v6, "currentAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {v9, v6}, Landroid/app/AlarmManager$AlarmClockInfo;->equals(Ljava/lang/Object;)Z

    #@65
    move-result v12

    #@66
    if-nez v12, :cond_4

    #@68
    .line 1527
    invoke-direct {p0, v11, v9}, Lcom/android/server/AlarmManagerService;->updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V

    #@6b
    .line 1522
    :cond_4
    add-int/lit8 v7, v7, 0x1

    #@6d
    goto :goto_2

    #@6e
    .line 1532
    .end local v6    # "currentAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v9    # "newAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v11    # "userId":I
    :cond_5
    iget-object v12, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    #@70
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    #@73
    move-result v3

    #@74
    .line 1533
    .local v3, "NNN":I
    add-int/lit8 v7, v3, -0x1

    #@76
    :goto_3
    if-ltz v7, :cond_7

    #@78
    .line 1534
    iget-object v12, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    #@7a
    invoke-virtual {v12, v7}, Landroid/util/SparseArray;->keyAt(I)I

    #@7d
    move-result v11

    #@7e
    .line 1535
    .restart local v11    # "userId":I
    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@81
    move-result-object v12

    #@82
    if-nez v12, :cond_6

    #@84
    .line 1536
    invoke-direct {p0, v11, v13}, Lcom/android/server/AlarmManagerService;->updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V

    #@87
    .line 1533
    :cond_6
    add-int/lit8 v7, v7, -0x1

    #@89
    goto :goto_3

    #@8a
    .line 1487
    .end local v11    # "userId":I
    :cond_7
    return-void
.end method

.method private updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;

    #@0
    .prologue
    const/4 v2, 0x4

    #@1
    .line 1543
    if-eqz p2, :cond_0

    #@3
    .line 1548
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@8
    .line 1556
    :goto_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    #@a
    const/4 v1, 0x1

    #@b
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@e
    .line 1557
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    #@10
    invoke-virtual {v0, v2}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    #@13
    .line 1558
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    #@15
    invoke-virtual {v0, v2}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendEmptyMessage(I)Z

    #@18
    .line 1542
    return-void

    #@19
    .line 1553
    :cond_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    #@1b
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    #@1e
    goto :goto_0
.end method

.method private validateConsistencyLocked()Z
    .locals 1

    #@0
    .prologue
    .line 1458
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method private native waitForAlarm(J)I
.end method


# virtual methods
.method attemptCoalesceLocked(JJ)I
    .locals 5
    .param p1, "whenElapsed"    # J
    .param p3, "maxWhen"    # J

    #@0
    .prologue
    .line 640
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 641
    .local v0, "N":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@9
    .line 642
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    #@11
    .line 643
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget v3, v1, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    #@13
    and-int/lit8 v3, v3, 0x1

    #@15
    if-nez v3, :cond_0

    #@17
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/AlarmManagerService$Batch;->canHold(JJ)Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_0

    #@1d
    .line 644
    return v2

    #@1e
    .line 641
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@20
    goto :goto_0

    #@21
    .line 647
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    const/4 v3, -0x1

    #@22
    return v3
.end method

.method calculateDeliveryPriorities(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 552
    .local p1, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v0

    #@4
    .line 553
    .local v0, "N":I
    const/4 v3, 0x0

    #@5
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_6

    #@7
    .line 554
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    #@d
    .line 557
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    const-string/jumbo v5, "android.intent.action.TIME_TICK"

    #@10
    iget-object v6, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@12
    invoke-virtual {v6}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    #@15
    move-result-object v6

    #@16
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@19
    move-result-object v6

    #@1a
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v5

    #@1e
    if-eqz v5, :cond_3

    #@20
    .line 558
    const/4 v2, 0x0

    #@21
    .line 565
    .local v2, "alarmPrio":I
    :goto_1
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    #@23
    .line 566
    .local v4, "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    if-nez v4, :cond_0

    #@25
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    #@27
    iget-object v6, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@29
    invoke-virtual {v6}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    #@2c
    move-result-object v6

    #@2d
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    move-result-object v4

    #@31
    .end local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    check-cast v4, Lcom/android/server/AlarmManagerService$PriorityClass;

    #@33
    .line 567
    .restart local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    :cond_0
    if-nez v4, :cond_1

    #@35
    .line 568
    new-instance v4, Lcom/android/server/AlarmManagerService$PriorityClass;

    #@37
    .end local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    invoke-direct {v4, p0}, Lcom/android/server/AlarmManagerService$PriorityClass;-><init>(Lcom/android/server/AlarmManagerService;)V

    #@3a
    iput-object v4, v1, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    #@3c
    .line 569
    .restart local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    #@3e
    iget-object v6, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@40
    invoke-virtual {v6}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    #@43
    move-result-object v6

    #@44
    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@47
    .line 571
    :cond_1
    iput-object v4, v1, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    #@49
    .line 573
    iget v5, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->seq:I

    #@4b
    iget v6, p0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    #@4d
    if-eq v5, v6, :cond_5

    #@4f
    .line 575
    iput v2, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    #@51
    .line 576
    iget v5, p0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    #@53
    iput v5, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->seq:I

    #@55
    .line 553
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    #@57
    goto :goto_0

    #@58
    .line 559
    .end local v2    # "alarmPrio":I
    .end local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    :cond_3
    iget-boolean v5, v1, Lcom/android/server/AlarmManagerService$Alarm;->wakeup:Z

    #@5a
    if-eqz v5, :cond_4

    #@5c
    .line 560
    const/4 v2, 0x1

    #@5d
    .restart local v2    # "alarmPrio":I
    goto :goto_1

    #@5e
    .line 562
    .end local v2    # "alarmPrio":I
    :cond_4
    const/4 v2, 0x2

    #@5f
    .restart local v2    # "alarmPrio":I
    goto :goto_1

    #@60
    .line 581
    .restart local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    :cond_5
    iget v5, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    #@62
    if-ge v2, v5, :cond_2

    #@64
    .line 582
    iput v2, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    #@66
    goto :goto_2

    #@67
    .line 551
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v2    # "alarmPrio":I
    .end local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    :cond_6
    return-void
.end method

.method checkAllowNonWakeupDelayLocked(J)Z
    .locals 9
    .param p1, "nowELAPSED"    # J

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2078
    iget-boolean v3, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 2079
    return v2

    #@6
    .line 2081
    :cond_0
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    #@8
    const-wide/16 v6, 0x0

    #@a
    cmp-long v3, v4, v6

    #@c
    if-gtz v3, :cond_1

    #@e
    .line 2082
    return v2

    #@f
    .line 2084
    :cond_1
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@14
    move-result v3

    #@15
    if-lez v3, :cond_2

    #@17
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    #@19
    cmp-long v3, v4, p1

    #@1b
    if-gez v3, :cond_2

    #@1d
    .line 2088
    return v2

    #@1e
    .line 2090
    :cond_2
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    #@20
    sub-long v0, p1, v4

    #@22
    .line 2091
    .local v0, "timeSinceLast":J
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    #@25
    move-result-wide v4

    #@26
    cmp-long v3, v0, v4

    #@28
    if-gtz v3, :cond_3

    #@2a
    const/4 v2, 0x1

    #@2b
    :cond_3
    return v2
.end method

.method currentNonWakeupFuzzLocked(J)J
    .locals 5
    .param p1, "nowELAPSED"    # J

    #@0
    .prologue
    .line 2050
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    #@2
    sub-long v0, p1, v2

    #@4
    .line 2051
    .local v0, "timeSinceOn":J
    const-wide/32 v2, 0x493e0

    #@7
    cmp-long v2, v0, v2

    #@9
    if-gez v2, :cond_0

    #@b
    .line 2053
    const-wide/32 v2, 0x1d4c0

    #@e
    return-wide v2

    #@f
    .line 2054
    :cond_0
    const-wide/32 v2, 0x1b7740

    #@12
    cmp-long v2, v0, v2

    #@14
    if-gez v2, :cond_1

    #@16
    .line 2056
    const-wide/32 v2, 0xdbba0

    #@19
    return-wide v2

    #@1a
    .line 2059
    :cond_1
    const-wide/32 v2, 0x36ee80

    #@1d
    return-wide v2
.end method

.method deliverAlarmsLocked(Ljava/util/ArrayList;J)V
    .locals 20
    .param p2, "nowELAPSED"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;J)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2095
    .local p1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    move-wide/from16 v0, p2

    #@2
    move-object/from16 v2, p0

    #@4
    iput-wide v0, v2, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    #@6
    .line 2096
    const/16 v18, 0x0

    #@8
    .local v18, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v5

    #@c
    move/from16 v0, v18

    #@e
    if-ge v0, v5, :cond_b

    #@10
    .line 2097
    move-object/from16 v0, p1

    #@12
    move/from16 v1, v18

    #@14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v12

    #@18
    check-cast v12, Lcom/android/server/AlarmManagerService$Alarm;

    #@1a
    .line 2098
    .local v12, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    #@1c
    and-int/lit8 v5, v5, 0x4

    #@1e
    if-eqz v5, :cond_0

    #@20
    const/4 v13, 0x1

    #@21
    .line 2104
    .local v13, "allowWhileIdle":Z
    :goto_1
    :try_start_0
    iget-object v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    #@23
    if-eqz v5, :cond_1

    #@25
    iget-object v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    #@27
    invoke-virtual {v5}, Landroid/os/WorkSource;->size()I

    #@2a
    move-result v5

    #@2b
    if-lez v5, :cond_1

    #@2d
    .line 2105
    const/16 v19, 0x0

    #@2f
    .local v19, "wi":I
    :goto_2
    iget-object v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    #@31
    invoke-virtual {v5}, Landroid/os/WorkSource;->size()I

    #@34
    move-result v5

    #@35
    move/from16 v0, v19

    #@37
    if-ge v0, v5, :cond_2

    #@39
    .line 2107
    iget-object v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@3b
    iget-object v6, v12, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    #@3d
    move/from16 v0, v19

    #@3f
    invoke-virtual {v6, v0}, Landroid/os/WorkSource;->get(I)I

    #@42
    move-result v6

    #@43
    iget-object v7, v12, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    #@45
    .line 2106
    invoke-static {v5, v6, v7}, Landroid/app/ActivityManagerNative;->noteAlarmStart(Landroid/app/PendingIntent;ILjava/lang/String;)V

    #@48
    .line 2105
    add-int/lit8 v19, v19, 0x1

    #@4a
    goto :goto_2

    #@4b
    .line 2098
    .end local v13    # "allowWhileIdle":Z
    .end local v19    # "wi":I
    :cond_0
    const/4 v13, 0x0

    #@4c
    .restart local v13    # "allowWhileIdle":Z
    goto :goto_1

    #@4d
    .line 2111
    :cond_1
    iget-object v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@4f
    iget-object v6, v12, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    #@51
    const/4 v7, -0x1

    #@52
    .line 2110
    invoke-static {v5, v7, v6}, Landroid/app/ActivityManagerNative;->noteAlarmStart(Landroid/app/PendingIntent;ILjava/lang/String;)V

    #@55
    .line 2114
    :cond_2
    iget-object v4, v12, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@57
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    #@5a
    move-result-object v5

    #@5b
    .line 2115
    sget-object v6, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    #@5d
    .line 2116
    const-string/jumbo v7, "android.intent.extra.ALARM_COUNT"

    #@60
    iget v8, v12, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    #@62
    .line 2115
    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@65
    move-result-object v7

    #@66
    .line 2117
    move-object/from16 v0, p0

    #@68
    iget-object v8, v0, Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

    #@6a
    move-object/from16 v0, p0

    #@6c
    iget-object v9, v0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    #@6e
    if-eqz v13, :cond_6

    #@70
    move-object/from16 v0, p0

    #@72
    iget-object v11, v0, Lcom/android/server/AlarmManagerService;->mIdleOptions:Landroid/os/Bundle;

    #@74
    .line 2114
    :goto_3
    const/4 v6, 0x0

    #@75
    .line 2117
    const/4 v10, 0x0

    #@76
    .line 2114
    invoke-virtual/range {v4 .. v11}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    #@79
    .line 2120
    move-object/from16 v0, p0

    #@7b
    iget v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    #@7d
    if-nez v5, :cond_3

    #@7f
    .line 2121
    iget-object v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@81
    iget-object v6, v12, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    #@83
    .line 2122
    iget v7, v12, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    #@85
    iget-object v8, v12, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    #@87
    const/4 v9, 0x1

    #@88
    move-object/from16 v4, p0

    #@8a
    .line 2121
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/AlarmManagerService;->setWakelockWorkSource(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;Z)V

    #@8d
    .line 2123
    move-object/from16 v0, p0

    #@8f
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@91
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@94
    .line 2125
    :cond_3
    new-instance v4, Lcom/android/server/AlarmManagerService$InFlight;

    #@96
    .line 2126
    iget-object v6, v12, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@98
    iget-object v7, v12, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    #@9a
    iget v8, v12, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    #@9c
    iget-object v9, v12, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    #@9e
    move-object/from16 v5, p0

    #@a0
    move-wide/from16 v10, p2

    #@a2
    .line 2125
    invoke-direct/range {v4 .. v11}, Lcom/android/server/AlarmManagerService$InFlight;-><init>(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;J)V

    #@a5
    .line 2127
    .local v4, "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    move-object/from16 v0, p0

    #@a7
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    #@a9
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ac
    .line 2128
    move-object/from16 v0, p0

    #@ae
    iget v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    #@b0
    add-int/lit8 v5, v5, 0x1

    #@b2
    move-object/from16 v0, p0

    #@b4
    iput v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    #@b6
    .line 2130
    if-eqz v13, :cond_4

    #@b8
    .line 2132
    move-object/from16 v0, p0

    #@ba
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    #@bc
    iget v6, v12, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    #@be
    move-wide/from16 v0, p2

    #@c0
    invoke-virtual {v5, v6, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    #@c3
    .line 2135
    :cond_4
    iget-object v14, v4, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    #@c5
    .line 2136
    .local v14, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget v5, v14, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    #@c7
    add-int/lit8 v5, v5, 0x1

    #@c9
    iput v5, v14, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    #@cb
    .line 2137
    iget v5, v14, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    #@cd
    if-nez v5, :cond_7

    #@cf
    .line 2138
    const/4 v5, 0x1

    #@d0
    iput v5, v14, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    #@d2
    .line 2139
    move-wide/from16 v0, p2

    #@d4
    iput-wide v0, v14, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    #@d6
    .line 2143
    :goto_4
    iget-object v0, v4, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    #@d8
    move-object/from16 v17, v0

    #@da
    .line 2144
    .local v17, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    move-object/from16 v0, v17

    #@dc
    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    #@de
    add-int/lit8 v5, v5, 0x1

    #@e0
    move-object/from16 v0, v17

    #@e2
    iput v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    #@e4
    .line 2145
    move-object/from16 v0, v17

    #@e6
    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    #@e8
    if-nez v5, :cond_9

    #@ea
    .line 2146
    const/4 v5, 0x1

    #@eb
    move-object/from16 v0, v17

    #@ed
    iput v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    #@ef
    .line 2147
    move-wide/from16 v0, p2

    #@f1
    move-object/from16 v2, v17

    #@f3
    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$FilterStats;->startTime:J

    #@f5
    .line 2151
    :goto_5
    iget v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    #@f7
    const/4 v6, 0x2

    #@f8
    if-eq v5, v6, :cond_5

    #@fa
    .line 2152
    iget v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    #@fc
    if-nez v5, :cond_8

    #@fe
    .line 2153
    :cond_5
    iget v5, v14, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    #@100
    add-int/lit8 v5, v5, 0x1

    #@102
    iput v5, v14, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    #@104
    .line 2154
    move-object/from16 v0, v17

    #@106
    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    #@108
    add-int/lit8 v5, v5, 0x1

    #@10a
    move-object/from16 v0, v17

    #@10c
    iput v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    #@10e
    .line 2155
    iget-object v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    #@110
    if-eqz v5, :cond_a

    #@112
    iget-object v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    #@114
    invoke-virtual {v5}, Landroid/os/WorkSource;->size()I

    #@117
    move-result v5

    #@118
    if-lez v5, :cond_a

    #@11a
    .line 2156
    const/16 v19, 0x0

    #@11c
    .restart local v19    # "wi":I
    :goto_6
    iget-object v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    #@11e
    invoke-virtual {v5}, Landroid/os/WorkSource;->size()I

    #@121
    move-result v5

    #@122
    move/from16 v0, v19

    #@124
    if-ge v0, v5, :cond_8

    #@126
    .line 2158
    iget-object v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@128
    iget-object v6, v12, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    #@12a
    move/from16 v0, v19

    #@12c
    invoke-virtual {v6, v0}, Landroid/os/WorkSource;->get(I)I

    #@12f
    move-result v6

    #@130
    .line 2159
    iget-object v7, v12, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    #@132
    move/from16 v0, v19

    #@134
    invoke-virtual {v7, v0}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    #@137
    move-result-object v7

    #@138
    iget-object v8, v12, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    #@13a
    .line 2157
    invoke-static {v5, v6, v7, v8}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;)V

    #@13d
    .line 2156
    add-int/lit8 v19, v19, 0x1

    #@13f
    goto :goto_6

    #@140
    .line 2117
    .end local v4    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v14    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v17    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v19    # "wi":I
    :cond_6
    const/4 v11, 0x0

    #@141
    goto/16 :goto_3

    #@143
    .line 2141
    .restart local v4    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .restart local v14    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :cond_7
    iget v5, v14, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    #@145
    add-int/lit8 v5, v5, 0x1

    #@147
    iput v5, v14, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    #@149
    goto :goto_4

    #@14a
    .line 2166
    .end local v4    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v14    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :catch_0
    move-exception v15

    #@14b
    .line 2167
    .local v15, "e":Landroid/app/PendingIntent$CanceledException;
    iget-wide v6, v12, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    #@14d
    const-wide/16 v8, 0x0

    #@14f
    cmp-long v5, v6, v8

    #@151
    if-lez v5, :cond_8

    #@153
    .line 2170
    iget-object v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@155
    move-object/from16 v0, p0

    #@157
    invoke-virtual {v0, v5}, Lcom/android/server/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;)V

    #@15a
    .line 2096
    .end local v15    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_8
    :goto_7
    add-int/lit8 v18, v18, 0x1

    #@15c
    goto/16 :goto_0

    #@15e
    .line 2149
    .restart local v4    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .restart local v14    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v17    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_9
    :try_start_1
    move-object/from16 v0, v17

    #@160
    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    #@162
    add-int/lit8 v5, v5, 0x1

    #@164
    move-object/from16 v0, v17

    #@166
    iput v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    #@168
    goto :goto_5

    #@169
    .line 2172
    .end local v4    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v14    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v17    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :catch_1
    move-exception v16

    #@16a
    .line 2173
    .local v16, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v5, "AlarmManager"

    #@16d
    const-string/jumbo v6, "Failure sending alarm."

    #@170
    move-object/from16 v0, v16

    #@172
    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@175
    goto :goto_7

    #@176
    .line 2163
    .end local v16    # "e":Ljava/lang/RuntimeException;
    .restart local v4    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .restart local v14    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v17    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_a
    :try_start_2
    iget-object v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@178
    iget-object v6, v12, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    #@17a
    const/4 v7, -0x1

    #@17b
    const/4 v8, 0x0

    #@17c
    .line 2162
    invoke-static {v5, v7, v8, v6}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    #@17f
    goto :goto_7

    #@180
    .line 2094
    .end local v4    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v12    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v13    # "allowWhileIdle":Z
    .end local v14    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v17    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_b
    return-void
.end method

.method dumpImpl(Ljava/io/PrintWriter;)V
    .locals 47
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 1180
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    #@4
    move-object/from16 v46, v0

    #@6
    monitor-enter v46

    #@7
    .line 1181
    :try_start_0
    const-string/jumbo v5, "Current Alarm Manager state:"

    #@a
    move-object/from16 v0, p1

    #@c
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f
    .line 1182
    move-object/from16 v0, p0

    #@11
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    #@13
    move-object/from16 v0, p1

    #@15
    invoke-virtual {v5, v0}, Lcom/android/server/AlarmManagerService$Constants;->dump(Ljava/io/PrintWriter;)V

    #@18
    .line 1183
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@1b
    .line 1185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1e
    move-result-wide v10

    #@1f
    .line 1186
    .local v10, "nowRTC":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@22
    move-result-wide v8

    #@23
    .line 1187
    .local v8, "nowELAPSED":J
    new-instance v12, Ljava/text/SimpleDateFormat;

    #@25
    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss"

    #@28
    invoke-direct {v12, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@2b
    .line 1189
    .local v12, "sdf":Ljava/text/SimpleDateFormat;
    const-string/jumbo v5, "  nowRTC="

    #@2e
    move-object/from16 v0, p1

    #@30
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@33
    move-object/from16 v0, p1

    #@35
    invoke-virtual {v0, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    #@38
    .line 1190
    const-string/jumbo v5, "="

    #@3b
    move-object/from16 v0, p1

    #@3d
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@40
    new-instance v5, Ljava/util/Date;

    #@42
    invoke-direct {v5, v10, v11}, Ljava/util/Date;-><init>(J)V

    #@45
    invoke-virtual {v12, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@48
    move-result-object v5

    #@49
    move-object/from16 v0, p1

    #@4b
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4e
    .line 1191
    const-string/jumbo v5, " nowELAPSED="

    #@51
    move-object/from16 v0, p1

    #@53
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@56
    move-object/from16 v0, p1

    #@58
    invoke-static {v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@5b
    .line 1192
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@5e
    .line 1193
    const-string/jumbo v5, "  mLastTimeChangeClockTime="

    #@61
    move-object/from16 v0, p1

    #@63
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@66
    move-object/from16 v0, p0

    #@68
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    #@6a
    move-object/from16 v0, p1

    #@6c
    invoke-virtual {v0, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    #@6f
    .line 1194
    const-string/jumbo v5, "="

    #@72
    move-object/from16 v0, p1

    #@74
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@77
    new-instance v5, Ljava/util/Date;

    #@79
    move-object/from16 v0, p0

    #@7b
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    #@7d
    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    #@80
    invoke-virtual {v12, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@83
    move-result-object v5

    #@84
    move-object/from16 v0, p1

    #@86
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@89
    .line 1195
    const-string/jumbo v5, "  mLastTimeChangeRealtime="

    #@8c
    move-object/from16 v0, p1

    #@8e
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@91
    .line 1196
    move-object/from16 v0, p0

    #@93
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mLastTimeChangeRealtime:J

    #@95
    move-object/from16 v0, p1

    #@97
    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@9a
    .line 1197
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@9d
    .line 1198
    move-object/from16 v0, p0

    #@9f
    iget-boolean v5, v0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    #@a1
    if-nez v5, :cond_0

    #@a3
    .line 1199
    const-string/jumbo v5, "  Time since non-interactive: "

    #@a6
    move-object/from16 v0, p1

    #@a8
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ab
    .line 1200
    move-object/from16 v0, p0

    #@ad
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    #@af
    sub-long v6, v8, v6

    #@b1
    move-object/from16 v0, p1

    #@b3
    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@b6
    .line 1201
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@b9
    .line 1202
    const-string/jumbo v5, "  Max wakeup delay: "

    #@bc
    move-object/from16 v0, p1

    #@be
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c1
    .line 1203
    move-object/from16 v0, p0

    #@c3
    invoke-virtual {v0, v8, v9}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    #@c6
    move-result-wide v6

    #@c7
    move-object/from16 v0, p1

    #@c9
    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@cc
    .line 1204
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@cf
    .line 1205
    const-string/jumbo v5, "  Time since last dispatch: "

    #@d2
    move-object/from16 v0, p1

    #@d4
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d7
    .line 1206
    move-object/from16 v0, p0

    #@d9
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    #@db
    sub-long v6, v8, v6

    #@dd
    move-object/from16 v0, p1

    #@df
    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@e2
    .line 1207
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@e5
    .line 1208
    const-string/jumbo v5, "  Next non-wakeup delivery time: "

    #@e8
    move-object/from16 v0, p1

    #@ea
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ed
    .line 1209
    move-object/from16 v0, p0

    #@ef
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    #@f1
    sub-long v6, v8, v6

    #@f3
    move-object/from16 v0, p1

    #@f5
    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@f8
    .line 1210
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@fb
    .line 1213
    :cond_0
    move-object/from16 v0, p0

    #@fd
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    #@ff
    sub-long v14, v10, v8

    #@101
    add-long v34, v6, v14

    #@103
    .line 1214
    .local v34, "nextWakeupRTC":J
    move-object/from16 v0, p0

    #@105
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    #@107
    sub-long v14, v10, v8

    #@109
    add-long v32, v6, v14

    #@10b
    .line 1215
    .local v32, "nextNonWakeupRTC":J
    const-string/jumbo v5, "  Next non-wakeup alarm: "

    #@10e
    move-object/from16 v0, p1

    #@110
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@113
    .line 1216
    move-object/from16 v0, p0

    #@115
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    #@117
    move-object/from16 v0, p1

    #@119
    invoke-static {v6, v7, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@11c
    .line 1217
    const-string/jumbo v5, " = "

    #@11f
    move-object/from16 v0, p1

    #@121
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@124
    new-instance v5, Ljava/util/Date;

    #@126
    move-wide/from16 v0, v32

    #@128
    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    #@12b
    invoke-virtual {v12, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@12e
    move-result-object v5

    #@12f
    move-object/from16 v0, p1

    #@131
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@134
    .line 1218
    const-string/jumbo v5, "  Next wakeup: "

    #@137
    move-object/from16 v0, p1

    #@139
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13c
    move-object/from16 v0, p0

    #@13e
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    #@140
    move-object/from16 v0, p1

    #@142
    invoke-static {v6, v7, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@145
    .line 1219
    const-string/jumbo v5, " = "

    #@148
    move-object/from16 v0, p1

    #@14a
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14d
    new-instance v5, Ljava/util/Date;

    #@14f
    move-wide/from16 v0, v34

    #@151
    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    #@154
    invoke-virtual {v12, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@157
    move-result-object v5

    #@158
    move-object/from16 v0, p1

    #@15a
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@15d
    .line 1220
    const-string/jumbo v5, "  Num time change events: "

    #@160
    move-object/from16 v0, p1

    #@162
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@165
    move-object/from16 v0, p0

    #@167
    iget v5, v0, Lcom/android/server/AlarmManagerService;->mNumTimeChanged:I

    #@169
    move-object/from16 v0, p1

    #@16b
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    #@16e
    .line 1222
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@171
    .line 1223
    const-string/jumbo v5, "  Next alarm clock information: "

    #@174
    move-object/from16 v0, p1

    #@176
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@179
    .line 1224
    new-instance v45, Ljava/util/TreeSet;

    #@17b
    invoke-direct/range {v45 .. v45}, Ljava/util/TreeSet;-><init>()V

    #@17e
    .line 1225
    .local v45, "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    const/16 v26, 0x0

    #@180
    .local v26, "i":I
    :goto_0
    move-object/from16 v0, p0

    #@182
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    #@184
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@187
    move-result v5

    #@188
    move/from16 v0, v26

    #@18a
    if-ge v0, v5, :cond_1

    #@18c
    .line 1226
    move-object/from16 v0, p0

    #@18e
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    #@190
    move/from16 v0, v26

    #@192
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    #@195
    move-result v5

    #@196
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@199
    move-result-object v5

    #@19a
    move-object/from16 v0, v45

    #@19c
    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    #@19f
    .line 1225
    add-int/lit8 v26, v26, 0x1

    #@1a1
    goto :goto_0

    #@1a2
    .line 1228
    :cond_1
    const/16 v26, 0x0

    #@1a4
    :goto_1
    move-object/from16 v0, p0

    #@1a6
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    #@1a8
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    #@1ab
    move-result v5

    #@1ac
    move/from16 v0, v26

    #@1ae
    if-ge v0, v5, :cond_2

    #@1b0
    .line 1229
    move-object/from16 v0, p0

    #@1b2
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    #@1b4
    move/from16 v0, v26

    #@1b6
    invoke-virtual {v5, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@1b9
    move-result v5

    #@1ba
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1bd
    move-result-object v5

    #@1be
    move-object/from16 v0, v45

    #@1c0
    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    #@1c3
    .line 1228
    add-int/lit8 v26, v26, 0x1

    #@1c5
    goto :goto_1

    #@1c6
    .line 1231
    :cond_2
    invoke-interface/range {v45 .. v45}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1c9
    move-result-object v44

    #@1ca
    .local v44, "user$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->hasNext()Z

    #@1cd
    move-result v5

    #@1ce
    if-eqz v5, :cond_5

    #@1d0
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d3
    move-result-object v5

    #@1d4
    check-cast v5, Ljava/lang/Integer;

    #@1d6
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@1d9
    move-result v43

    #@1da
    .line 1232
    .local v43, "user":I
    move-object/from16 v0, p0

    #@1dc
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    #@1de
    move/from16 v0, v43

    #@1e0
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1e3
    move-result-object v31

    #@1e4
    check-cast v31, Landroid/app/AlarmManager$AlarmClockInfo;

    #@1e6
    .line 1233
    .local v31, "next":Landroid/app/AlarmManager$AlarmClockInfo;
    if-eqz v31, :cond_4

    #@1e8
    invoke-virtual/range {v31 .. v31}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    #@1eb
    move-result-wide v38

    #@1ec
    .line 1234
    .local v38, "time":J
    :goto_3
    move-object/from16 v0, p0

    #@1ee
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    #@1f0
    move/from16 v0, v43

    #@1f2
    invoke-virtual {v5, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@1f5
    move-result v36

    #@1f6
    .line 1235
    .local v36, "pendingSend":Z
    const-string/jumbo v5, "    user:"

    #@1f9
    move-object/from16 v0, p1

    #@1fb
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1fe
    move-object/from16 v0, p1

    #@200
    move/from16 v1, v43

    #@202
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@205
    .line 1236
    const-string/jumbo v5, " pendingSend:"

    #@208
    move-object/from16 v0, p1

    #@20a
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20d
    move-object/from16 v0, p1

    #@20f
    move/from16 v1, v36

    #@211
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    #@214
    .line 1237
    const-string/jumbo v5, " time:"

    #@217
    move-object/from16 v0, p1

    #@219
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@21c
    move-object/from16 v0, p1

    #@21e
    move-wide/from16 v1, v38

    #@220
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@223
    .line 1238
    const-wide/16 v6, 0x0

    #@225
    cmp-long v5, v38, v6

    #@227
    if-lez v5, :cond_3

    #@229
    .line 1239
    const-string/jumbo v5, " = "

    #@22c
    move-object/from16 v0, p1

    #@22e
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@231
    new-instance v5, Ljava/util/Date;

    #@233
    move-wide/from16 v0, v38

    #@235
    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    #@238
    invoke-virtual {v12, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@23b
    move-result-object v5

    #@23c
    move-object/from16 v0, p1

    #@23e
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@241
    .line 1240
    const-string/jumbo v5, " = "

    #@244
    move-object/from16 v0, p1

    #@246
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@249
    move-wide/from16 v0, v38

    #@24b
    move-object/from16 v2, p1

    #@24d
    invoke-static {v0, v1, v10, v11, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@250
    .line 1242
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@253
    goto/16 :goto_2

    #@255
    .line 1180
    .end local v8    # "nowELAPSED":J
    .end local v10    # "nowRTC":J
    .end local v12    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v26    # "i":I
    .end local v31    # "next":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v32    # "nextNonWakeupRTC":J
    .end local v34    # "nextWakeupRTC":J
    .end local v36    # "pendingSend":Z
    .end local v38    # "time":J
    .end local v43    # "user":I
    .end local v44    # "user$iterator":Ljava/util/Iterator;
    .end local v45    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v5

    #@256
    monitor-exit v46

    #@257
    throw v5

    #@258
    .line 1233
    .restart local v8    # "nowELAPSED":J
    .restart local v10    # "nowRTC":J
    .restart local v12    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v26    # "i":I
    .restart local v31    # "next":Landroid/app/AlarmManager$AlarmClockInfo;
    .restart local v32    # "nextNonWakeupRTC":J
    .restart local v34    # "nextWakeupRTC":J
    .restart local v43    # "user":I
    .restart local v44    # "user$iterator":Ljava/util/Iterator;
    .restart local v45    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :cond_4
    const-wide/16 v38, 0x0

    #@25a
    .restart local v38    # "time":J
    goto :goto_3

    #@25b
    .line 1244
    .end local v31    # "next":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v38    # "time":J
    .end local v43    # "user":I
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    #@25d
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@25f
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@262
    move-result v5

    #@263
    if-lez v5, :cond_6

    #@265
    .line 1245
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@268
    .line 1246
    const-string/jumbo v5, "  Pending alarm batches: "

    #@26b
    move-object/from16 v0, p1

    #@26d
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@270
    .line 1247
    move-object/from16 v0, p0

    #@272
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@274
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@277
    move-result v5

    #@278
    move-object/from16 v0, p1

    #@27a
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    #@27d
    .line 1248
    move-object/from16 v0, p0

    #@27f
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@281
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@284
    move-result-object v21

    #@285
    .local v21, "b$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    #@288
    move-result v5

    #@289
    if-eqz v5, :cond_6

    #@28b
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28e
    move-result-object v4

    #@28f
    check-cast v4, Lcom/android/server/AlarmManagerService$Batch;

    #@291
    .line 1249
    .local v4, "b":Lcom/android/server/AlarmManagerService$Batch;
    move-object/from16 v0, p1

    #@293
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@296
    const/16 v5, 0x3a

    #@298
    move-object/from16 v0, p1

    #@29a
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(C)V

    #@29d
    .line 1250
    iget-object v6, v4, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@29f
    const-string/jumbo v7, "    "

    #@2a2
    move-object/from16 v5, p1

    #@2a4
    invoke-static/range {v5 .. v12}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    #@2a7
    goto :goto_4

    #@2a8
    .line 1253
    .end local v4    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v21    # "b$iterator":Ljava/util/Iterator;
    :cond_6
    move-object/from16 v0, p0

    #@2aa
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    #@2ac
    if-nez v5, :cond_7

    #@2ae
    move-object/from16 v0, p0

    #@2b0
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    #@2b2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@2b5
    move-result v5

    #@2b6
    if-lez v5, :cond_8

    #@2b8
    .line 1254
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@2bb
    .line 1255
    const-string/jumbo v5, "    Idle mode state:"

    #@2be
    move-object/from16 v0, p1

    #@2c0
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2c3
    .line 1256
    const-string/jumbo v5, "      Idling until: "

    #@2c6
    move-object/from16 v0, p1

    #@2c8
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2cb
    .line 1257
    move-object/from16 v0, p0

    #@2cd
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    #@2cf
    if-eqz v5, :cond_a

    #@2d1
    .line 1258
    move-object/from16 v0, p0

    #@2d3
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    #@2d5
    move-object/from16 v0, p1

    #@2d7
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@2da
    .line 1259
    move-object/from16 v0, p0

    #@2dc
    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    #@2de
    const-string/jumbo v15, "    "

    #@2e1
    move-object/from16 v14, p1

    #@2e3
    move-wide/from16 v16, v10

    #@2e5
    move-wide/from16 v18, v8

    #@2e7
    move-object/from16 v20, v12

    #@2e9
    invoke-virtual/range {v13 .. v20}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    #@2ec
    .line 1263
    :goto_5
    const-string/jumbo v5, "      Pending alarms:"

    #@2ef
    move-object/from16 v0, p1

    #@2f1
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2f4
    .line 1264
    move-object/from16 v0, p0

    #@2f6
    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    #@2f8
    const-string/jumbo v7, "      "

    #@2fb
    move-object/from16 v5, p1

    #@2fd
    invoke-static/range {v5 .. v12}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    #@300
    .line 1266
    :cond_8
    move-object/from16 v0, p0

    #@302
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    #@304
    if-eqz v5, :cond_9

    #@306
    .line 1267
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@309
    .line 1268
    const-string/jumbo v5, "  Next wake from idle: "

    #@30c
    move-object/from16 v0, p1

    #@30e
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@311
    move-object/from16 v0, p0

    #@313
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    #@315
    move-object/from16 v0, p1

    #@317
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@31a
    .line 1269
    move-object/from16 v0, p0

    #@31c
    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    #@31e
    const-string/jumbo v15, "    "

    #@321
    move-object/from16 v14, p1

    #@323
    move-wide/from16 v16, v10

    #@325
    move-wide/from16 v18, v8

    #@327
    move-object/from16 v20, v12

    #@329
    invoke-virtual/range {v13 .. v20}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    #@32c
    .line 1272
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@32f
    .line 1273
    const-string/jumbo v5, "  Past-due non-wakeup alarms: "

    #@332
    move-object/from16 v0, p1

    #@334
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@337
    .line 1274
    move-object/from16 v0, p0

    #@339
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    #@33b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@33e
    move-result v5

    #@33f
    if-lez v5, :cond_b

    #@341
    .line 1275
    move-object/from16 v0, p0

    #@343
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    #@345
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@348
    move-result v5

    #@349
    move-object/from16 v0, p1

    #@34b
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    #@34e
    .line 1276
    move-object/from16 v0, p0

    #@350
    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    #@352
    const-string/jumbo v7, "    "

    #@355
    move-object/from16 v5, p1

    #@357
    invoke-static/range {v5 .. v12}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    #@35a
    .line 1280
    :goto_6
    const-string/jumbo v5, "    Number of delayed alarms: "

    #@35d
    move-object/from16 v0, p1

    #@35f
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@362
    move-object/from16 v0, p0

    #@364
    iget v5, v0, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    #@366
    move-object/from16 v0, p1

    #@368
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    #@36b
    .line 1281
    const-string/jumbo v5, ", total delay time: "

    #@36e
    move-object/from16 v0, p1

    #@370
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@373
    move-object/from16 v0, p0

    #@375
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    #@377
    move-object/from16 v0, p1

    #@379
    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@37c
    .line 1282
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@37f
    .line 1283
    const-string/jumbo v5, "    Max delay time: "

    #@382
    move-object/from16 v0, p1

    #@384
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@387
    move-object/from16 v0, p0

    #@389
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    #@38b
    move-object/from16 v0, p1

    #@38d
    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@390
    .line 1284
    const-string/jumbo v5, ", max non-interactive time: "

    #@393
    move-object/from16 v0, p1

    #@395
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@398
    .line 1285
    move-object/from16 v0, p0

    #@39a
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNonInteractiveTime:J

    #@39c
    move-object/from16 v0, p1

    #@39e
    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@3a1
    .line 1286
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@3a4
    .line 1288
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@3a7
    .line 1289
    const-string/jumbo v5, "  Broadcast ref count: "

    #@3aa
    move-object/from16 v0, p1

    #@3ac
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3af
    move-object/from16 v0, p0

    #@3b1
    iget v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    #@3b3
    move-object/from16 v0, p1

    #@3b5
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    #@3b8
    .line 1290
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@3bb
    .line 1292
    const-string/jumbo v5, "  mAllowWhileIdleMinTime="

    #@3be
    move-object/from16 v0, p1

    #@3c0
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c3
    .line 1293
    move-object/from16 v0, p0

    #@3c5
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mAllowWhileIdleMinTime:J

    #@3c7
    move-object/from16 v0, p1

    #@3c9
    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@3cc
    .line 1294
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@3cf
    .line 1295
    move-object/from16 v0, p0

    #@3d1
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    #@3d3
    invoke-virtual {v5}, Landroid/util/SparseLongArray;->size()I

    #@3d6
    move-result v5

    #@3d7
    if-lez v5, :cond_c

    #@3d9
    .line 1296
    const-string/jumbo v5, "  Last allow while idle dispatch times:"

    #@3dc
    move-object/from16 v0, p1

    #@3de
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3e1
    .line 1297
    const/16 v26, 0x0

    #@3e3
    :goto_7
    move-object/from16 v0, p0

    #@3e5
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    #@3e7
    invoke-virtual {v5}, Landroid/util/SparseLongArray;->size()I

    #@3ea
    move-result v5

    #@3eb
    move/from16 v0, v26

    #@3ed
    if-ge v0, v5, :cond_c

    #@3ef
    .line 1298
    const-string/jumbo v5, "  UID "

    #@3f2
    move-object/from16 v0, p1

    #@3f4
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3f7
    .line 1299
    move-object/from16 v0, p0

    #@3f9
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    #@3fb
    move/from16 v0, v26

    #@3fd
    invoke-virtual {v5, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    #@400
    move-result v5

    #@401
    move-object/from16 v0, p1

    #@403
    invoke-static {v0, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@406
    .line 1300
    const-string/jumbo v5, ": "

    #@409
    move-object/from16 v0, p1

    #@40b
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@40e
    .line 1301
    move-object/from16 v0, p0

    #@410
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    #@412
    move/from16 v0, v26

    #@414
    invoke-virtual {v5, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    #@417
    move-result-wide v6

    #@418
    move-object/from16 v0, p1

    #@41a
    invoke-static {v6, v7, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@41d
    .line 1303
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@420
    .line 1297
    add-int/lit8 v26, v26, 0x1

    #@422
    goto :goto_7

    #@423
    .line 1261
    :cond_a
    const-string/jumbo v5, "null"

    #@426
    move-object/from16 v0, p1

    #@428
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@42b
    goto/16 :goto_5

    #@42d
    .line 1278
    :cond_b
    const-string/jumbo v5, "(none)"

    #@430
    move-object/from16 v0, p1

    #@432
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@435
    goto/16 :goto_6

    #@437
    .line 1306
    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@43a
    .line 1308
    move-object/from16 v0, p0

    #@43c
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    #@43e
    const-string/jumbo v6, "  Recent problems"

    #@441
    const-string/jumbo v7, "    "

    #@444
    move-object/from16 v0, p1

    #@446
    invoke-virtual {v5, v0, v6, v7}, Lcom/android/internal/util/LocalLog;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z

    #@449
    move-result v5

    #@44a
    if-eqz v5, :cond_d

    #@44c
    .line 1309
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@44f
    .line 1312
    :cond_d
    const/16 v5, 0xa

    #@451
    new-array v0, v5, [Lcom/android/server/AlarmManagerService$FilterStats;

    #@453
    move-object/from16 v41, v0

    #@455
    .line 1313
    .local v41, "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    new-instance v23, Lcom/android/server/AlarmManagerService$3;

    #@457
    move-object/from16 v0, v23

    #@459
    move-object/from16 v1, p0

    #@45b
    invoke-direct {v0, v1}, Lcom/android/server/AlarmManagerService$3;-><init>(Lcom/android/server/AlarmManagerService;)V

    #@45e
    .line 1324
    .local v23, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    const/16 v30, 0x0

    #@460
    .line 1325
    .local v30, "len":I
    const/16 v29, 0x0

    #@462
    .local v29, "iu":I
    :goto_8
    move-object/from16 v0, p0

    #@464
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    #@466
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@469
    move-result v5

    #@46a
    move/from16 v0, v29

    #@46c
    if-ge v0, v5, :cond_14

    #@46e
    .line 1326
    move-object/from16 v0, p0

    #@470
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    #@472
    move/from16 v0, v29

    #@474
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@477
    move-result-object v42

    #@478
    check-cast v42, Landroid/util/ArrayMap;

    #@47a
    .line 1327
    .local v42, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    const/16 v27, 0x0

    #@47c
    .local v27, "ip":I
    :goto_9
    invoke-virtual/range {v42 .. v42}, Landroid/util/ArrayMap;->size()I

    #@47f
    move-result v5

    #@480
    move/from16 v0, v27

    #@482
    if-ge v0, v5, :cond_13

    #@484
    .line 1328
    move-object/from16 v0, v42

    #@486
    move/from16 v1, v27

    #@488
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@48b
    move-result-object v22

    #@48c
    check-cast v22, Lcom/android/server/AlarmManagerService$BroadcastStats;

    #@48e
    .line 1329
    .local v22, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    const/16 v28, 0x0

    #@490
    .local v28, "is":I
    :goto_a
    move-object/from16 v0, v22

    #@492
    iget-object v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    #@494
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@497
    move-result v5

    #@498
    move/from16 v0, v28

    #@49a
    if-ge v0, v5, :cond_12

    #@49c
    .line 1330
    move-object/from16 v0, v22

    #@49e
    iget-object v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    #@4a0
    move/from16 v0, v28

    #@4a2
    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@4a5
    move-result-object v25

    #@4a6
    check-cast v25, Lcom/android/server/AlarmManagerService$FilterStats;

    #@4a8
    .line 1331
    .local v25, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    if-lez v30, :cond_11

    #@4aa
    .line 1332
    const/4 v5, 0x0

    #@4ab
    move-object/from16 v0, v41

    #@4ad
    move/from16 v1, v30

    #@4af
    move-object/from16 v2, v25

    #@4b1
    move-object/from16 v3, v23

    #@4b3
    invoke-static {v0, v5, v1, v2, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    #@4b6
    move-result v37

    #@4b7
    .line 1333
    .local v37, "pos":I
    :goto_b
    if-gez v37, :cond_e

    #@4b9
    .line 1334
    move/from16 v0, v37

    #@4bb
    neg-int v5, v0

    #@4bc
    add-int/lit8 v37, v5, -0x1

    #@4be
    .line 1336
    :cond_e
    move-object/from16 v0, v41

    #@4c0
    array-length v5, v0

    #@4c1
    move/from16 v0, v37

    #@4c3
    if-ge v0, v5, :cond_10

    #@4c5
    .line 1337
    move-object/from16 v0, v41

    #@4c7
    array-length v5, v0

    #@4c8
    sub-int v5, v5, v37

    #@4ca
    add-int/lit8 v24, v5, -0x1

    #@4cc
    .line 1338
    .local v24, "copylen":I
    if-lez v24, :cond_f

    #@4ce
    .line 1339
    add-int/lit8 v5, v37, 0x1

    #@4d0
    move-object/from16 v0, v41

    #@4d2
    move/from16 v1, v37

    #@4d4
    move-object/from16 v2, v41

    #@4d6
    move/from16 v3, v24

    #@4d8
    invoke-static {v0, v1, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@4db
    .line 1341
    :cond_f
    aput-object v25, v41, v37

    #@4dd
    .line 1342
    move-object/from16 v0, v41

    #@4df
    array-length v5, v0

    #@4e0
    move/from16 v0, v30

    #@4e2
    if-ge v0, v5, :cond_10

    #@4e4
    .line 1343
    add-int/lit8 v30, v30, 0x1

    #@4e6
    .line 1329
    .end local v24    # "copylen":I
    :cond_10
    add-int/lit8 v28, v28, 0x1

    #@4e8
    goto :goto_a

    #@4e9
    .line 1332
    .end local v37    # "pos":I
    :cond_11
    const/16 v37, 0x0

    #@4eb
    .restart local v37    # "pos":I
    goto :goto_b

    #@4ec
    .line 1327
    .end local v25    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v37    # "pos":I
    :cond_12
    add-int/lit8 v27, v27, 0x1

    #@4ee
    goto :goto_9

    #@4ef
    .line 1325
    .end local v22    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v28    # "is":I
    :cond_13
    add-int/lit8 v29, v29, 0x1

    #@4f1
    goto/16 :goto_8

    #@4f3
    .line 1349
    .end local v27    # "ip":I
    .end local v42    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :cond_14
    if-lez v30, :cond_16

    #@4f5
    .line 1350
    const-string/jumbo v5, "  Top Alarms:"

    #@4f8
    move-object/from16 v0, p1

    #@4fa
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4fd
    .line 1351
    const/16 v26, 0x0

    #@4ff
    :goto_c
    move/from16 v0, v26

    #@501
    move/from16 v1, v30

    #@503
    if-ge v0, v1, :cond_16

    #@505
    .line 1352
    aget-object v25, v41, v26

    #@507
    .line 1353
    .restart local v25    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    const-string/jumbo v5, "    "

    #@50a
    move-object/from16 v0, p1

    #@50c
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@50f
    .line 1354
    move-object/from16 v0, v25

    #@511
    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    #@513
    if-lez v5, :cond_15

    #@515
    const-string/jumbo v5, "*ACTIVE* "

    #@518
    move-object/from16 v0, p1

    #@51a
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@51d
    .line 1355
    :cond_15
    move-object/from16 v0, v25

    #@51f
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    #@521
    move-object/from16 v0, p1

    #@523
    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@526
    .line 1356
    const-string/jumbo v5, " running, "

    #@529
    move-object/from16 v0, p1

    #@52b
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@52e
    move-object/from16 v0, v25

    #@530
    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    #@532
    move-object/from16 v0, p1

    #@534
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    #@537
    .line 1357
    const-string/jumbo v5, " wakeups, "

    #@53a
    move-object/from16 v0, p1

    #@53c
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@53f
    move-object/from16 v0, v25

    #@541
    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    #@543
    move-object/from16 v0, p1

    #@545
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    #@548
    .line 1358
    const-string/jumbo v5, " alarms: "

    #@54b
    move-object/from16 v0, p1

    #@54d
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@550
    move-object/from16 v0, v25

    #@552
    iget-object v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    #@554
    iget v5, v5, Lcom/android/server/AlarmManagerService$BroadcastStats;->mUid:I

    #@556
    move-object/from16 v0, p1

    #@558
    invoke-static {v0, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@55b
    .line 1359
    const-string/jumbo v5, ":"

    #@55e
    move-object/from16 v0, p1

    #@560
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@563
    move-object/from16 v0, v25

    #@565
    iget-object v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    #@567
    iget-object v5, v5, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    #@569
    move-object/from16 v0, p1

    #@56b
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@56e
    .line 1360
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@571
    .line 1361
    const-string/jumbo v5, "      "

    #@574
    move-object/from16 v0, p1

    #@576
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@579
    move-object/from16 v0, v25

    #@57b
    iget-object v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    #@57d
    move-object/from16 v0, p1

    #@57f
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@582
    .line 1362
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@585
    .line 1351
    add-int/lit8 v26, v26, 0x1

    #@587
    goto/16 :goto_c

    #@589
    .line 1366
    .end local v25    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_16
    const-string/jumbo v5, " "

    #@58c
    move-object/from16 v0, p1

    #@58e
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@591
    .line 1367
    const-string/jumbo v5, "  Alarm Stats:"

    #@594
    move-object/from16 v0, p1

    #@596
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@599
    .line 1368
    new-instance v40, Ljava/util/ArrayList;

    #@59b
    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    #@59e
    .line 1369
    .local v40, "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    const/16 v29, 0x0

    #@5a0
    :goto_d
    move-object/from16 v0, p0

    #@5a2
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    #@5a4
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@5a7
    move-result v5

    #@5a8
    move/from16 v0, v29

    #@5aa
    if-ge v0, v5, :cond_1c

    #@5ac
    .line 1370
    move-object/from16 v0, p0

    #@5ae
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    #@5b0
    move/from16 v0, v29

    #@5b2
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@5b5
    move-result-object v42

    #@5b6
    check-cast v42, Landroid/util/ArrayMap;

    #@5b8
    .line 1371
    .restart local v42    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    const/16 v27, 0x0

    #@5ba
    .restart local v27    # "ip":I
    :goto_e
    invoke-virtual/range {v42 .. v42}, Landroid/util/ArrayMap;->size()I

    #@5bd
    move-result v5

    #@5be
    move/from16 v0, v27

    #@5c0
    if-ge v0, v5, :cond_1b

    #@5c2
    .line 1372
    move-object/from16 v0, v42

    #@5c4
    move/from16 v1, v27

    #@5c6
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@5c9
    move-result-object v22

    #@5ca
    check-cast v22, Lcom/android/server/AlarmManagerService$BroadcastStats;

    #@5cc
    .line 1373
    .restart local v22    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    const-string/jumbo v5, "  "

    #@5cf
    move-object/from16 v0, p1

    #@5d1
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5d4
    .line 1374
    move-object/from16 v0, v22

    #@5d6
    iget v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    #@5d8
    if-lez v5, :cond_17

    #@5da
    const-string/jumbo v5, "*ACTIVE* "

    #@5dd
    move-object/from16 v0, p1

    #@5df
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5e2
    .line 1375
    :cond_17
    move-object/from16 v0, v22

    #@5e4
    iget v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->mUid:I

    #@5e6
    move-object/from16 v0, p1

    #@5e8
    invoke-static {v0, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@5eb
    .line 1376
    const-string/jumbo v5, ":"

    #@5ee
    move-object/from16 v0, p1

    #@5f0
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5f3
    .line 1377
    move-object/from16 v0, v22

    #@5f5
    iget-object v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    #@5f7
    move-object/from16 v0, p1

    #@5f9
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5fc
    .line 1378
    const-string/jumbo v5, " "

    #@5ff
    move-object/from16 v0, p1

    #@601
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@604
    move-object/from16 v0, v22

    #@606
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    #@608
    move-object/from16 v0, p1

    #@60a
    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@60d
    .line 1379
    const-string/jumbo v5, " running, "

    #@610
    move-object/from16 v0, p1

    #@612
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@615
    move-object/from16 v0, v22

    #@617
    iget v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    #@619
    move-object/from16 v0, p1

    #@61b
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    #@61e
    .line 1380
    const-string/jumbo v5, " wakeups:"

    #@621
    move-object/from16 v0, p1

    #@623
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@626
    .line 1381
    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->clear()V

    #@629
    .line 1382
    const/16 v28, 0x0

    #@62b
    .restart local v28    # "is":I
    :goto_f
    move-object/from16 v0, v22

    #@62d
    iget-object v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    #@62f
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@632
    move-result v5

    #@633
    move/from16 v0, v28

    #@635
    if-ge v0, v5, :cond_18

    #@637
    .line 1383
    move-object/from16 v0, v22

    #@639
    iget-object v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    #@63b
    move/from16 v0, v28

    #@63d
    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@640
    move-result-object v5

    #@641
    check-cast v5, Lcom/android/server/AlarmManagerService$FilterStats;

    #@643
    move-object/from16 v0, v40

    #@645
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@648
    .line 1382
    add-int/lit8 v28, v28, 0x1

    #@64a
    goto :goto_f

    #@64b
    .line 1385
    :cond_18
    move-object/from16 v0, v40

    #@64d
    move-object/from16 v1, v23

    #@64f
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@652
    .line 1386
    const/16 v26, 0x0

    #@654
    :goto_10
    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    #@657
    move-result v5

    #@658
    move/from16 v0, v26

    #@65a
    if-ge v0, v5, :cond_1a

    #@65c
    .line 1387
    move-object/from16 v0, v40

    #@65e
    move/from16 v1, v26

    #@660
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@663
    move-result-object v25

    #@664
    check-cast v25, Lcom/android/server/AlarmManagerService$FilterStats;

    #@666
    .line 1388
    .restart local v25    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    const-string/jumbo v5, "    "

    #@669
    move-object/from16 v0, p1

    #@66b
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@66e
    .line 1389
    move-object/from16 v0, v25

    #@670
    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    #@672
    if-lez v5, :cond_19

    #@674
    const-string/jumbo v5, "*ACTIVE* "

    #@677
    move-object/from16 v0, p1

    #@679
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@67c
    .line 1390
    :cond_19
    move-object/from16 v0, v25

    #@67e
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    #@680
    move-object/from16 v0, p1

    #@682
    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@685
    .line 1391
    const-string/jumbo v5, " "

    #@688
    move-object/from16 v0, p1

    #@68a
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@68d
    move-object/from16 v0, v25

    #@68f
    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    #@691
    move-object/from16 v0, p1

    #@693
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    #@696
    .line 1392
    const-string/jumbo v5, " wakes "

    #@699
    move-object/from16 v0, p1

    #@69b
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@69e
    move-object/from16 v0, v25

    #@6a0
    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    #@6a2
    move-object/from16 v0, p1

    #@6a4
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    #@6a7
    .line 1393
    const-string/jumbo v5, " alarms, last "

    #@6aa
    move-object/from16 v0, p1

    #@6ac
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6af
    .line 1394
    move-object/from16 v0, v25

    #@6b1
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$FilterStats;->lastTime:J

    #@6b3
    move-object/from16 v0, p1

    #@6b5
    invoke-static {v6, v7, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@6b8
    .line 1395
    const-string/jumbo v5, ":"

    #@6bb
    move-object/from16 v0, p1

    #@6bd
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6c0
    .line 1396
    const-string/jumbo v5, "      "

    #@6c3
    move-object/from16 v0, p1

    #@6c5
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6c8
    .line 1397
    move-object/from16 v0, v25

    #@6ca
    iget-object v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    #@6cc
    move-object/from16 v0, p1

    #@6ce
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6d1
    .line 1398
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6d4
    .line 1386
    add-int/lit8 v26, v26, 0x1

    #@6d6
    goto/16 :goto_10

    #@6d8
    .line 1371
    .end local v25    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_1a
    add-int/lit8 v27, v27, 0x1

    #@6da
    goto/16 :goto_e

    #@6dc
    .line 1369
    .end local v22    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v28    # "is":I
    :cond_1b
    add-int/lit8 v29, v29, 0x1

    #@6de
    goto/16 :goto_d

    #@6e0
    .end local v27    # "ip":I
    .end local v42    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :cond_1c
    monitor-exit v46

    #@6e1
    .line 1179
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 843
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    #@2
    invoke-direct {p0, v0, v1}, Lcom/android/server/AlarmManagerService;->close(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .line 845
    invoke-super {p0}, Lcom/android/server/SystemService;->finalize()V

    #@8
    .line 841
    return-void

    #@9
    .line 844
    :catchall_0
    move-exception v0

    #@a
    .line 845
    invoke-super {p0}, Lcom/android/server/SystemService;->finalize()V

    #@d
    .line 844
    throw v0
.end method

.method getNextAlarmClockImpl(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1479
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1480
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/app/AlarmManager$AlarmClockInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    return-object v0

    #@d
    .line 1479
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method getNextWakeFromIdleTimeImpl()J
    .locals 3

    #@0
    .prologue
    .line 1473
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 1474
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    #@9
    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    :goto_0
    monitor-exit v2

    #@c
    return-wide v0

    #@d
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    #@12
    goto :goto_0

    #@13
    .line 1473
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v2

    #@15
    throw v0
.end method

.method interactiveStateChangedLocked(Z)V
    .locals 10
    .param p1, "interactive"    # Z

    #@0
    .prologue
    .line 1728
    iget-boolean v6, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    #@2
    if-eq v6, p1, :cond_2

    #@4
    .line 1729
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    #@6
    .line 1730
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@9
    move-result-wide v2

    #@a
    .line 1731
    .local v2, "nowELAPSED":J
    if-eqz p1, :cond_3

    #@c
    .line 1732
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@11
    move-result v6

    #@12
    if-lez v6, :cond_1

    #@14
    .line 1733
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    #@16
    sub-long v4, v2, v6

    #@18
    .line 1734
    .local v4, "thisDelayTime":J
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    #@1a
    add-long/2addr v6, v4

    #@1b
    iput-wide v6, p0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    #@1d
    .line 1735
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    #@1f
    cmp-long v6, v6, v4

    #@21
    if-gez v6, :cond_0

    #@23
    .line 1736
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    #@25
    .line 1738
    :cond_0
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    #@27
    invoke-virtual {p0, v6, v2, v3}, Lcom/android/server/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V

    #@2a
    .line 1739
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    #@2c
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    #@2f
    .line 1741
    .end local v4    # "thisDelayTime":J
    :cond_1
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    #@31
    const-wide/16 v8, 0x0

    #@33
    cmp-long v6, v6, v8

    #@35
    if-lez v6, :cond_2

    #@37
    .line 1742
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    #@39
    sub-long v0, v2, v6

    #@3b
    .line 1743
    .local v0, "dur":J
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveTime:J

    #@3d
    cmp-long v6, v0, v6

    #@3f
    if-lez v6, :cond_2

    #@41
    .line 1744
    iput-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveTime:J

    #@43
    .line 1727
    .end local v0    # "dur":J
    .end local v2    # "nowELAPSED":J
    :cond_2
    :goto_0
    return-void

    #@44
    .line 1748
    .restart local v2    # "nowELAPSED":J
    :cond_3
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    #@46
    goto :goto_0
.end method

.method lookForPackageLocked(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1754
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v2

    #@8
    if-ge v1, v2, :cond_1

    #@a
    .line 1755
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    #@12
    .line 1756
    .local v0, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->hasPackage(Ljava/lang/String;)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_0

    #@18
    .line 1757
    return v3

    #@19
    .line 1754
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 1760
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    const/4 v1, 0x0

    #@1d
    :goto_1
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    #@1f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@22
    move-result v2

    #@23
    if-ge v1, v2, :cond_3

    #@25
    .line 1761
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2a
    move-result-object v2

    #@2b
    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    #@2d
    iget-object v2, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@2f
    invoke-virtual {v2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v2

    #@37
    if-eqz v2, :cond_2

    #@39
    .line 1762
    return v3

    #@3a
    .line 1760
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@3c
    goto :goto_1

    #@3d
    .line 1765
    :cond_3
    const/4 v2, 0x0

    #@3e
    return v2
.end method

.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    #@0
    .prologue
    .line 835
    const/16 v0, 0x1f4

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 836
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    #@6
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$Constants;->start(Landroid/content/ContentResolver;)V

    #@11
    .line 834
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 10

    #@0
    .prologue
    const-wide/16 v8, 0x0

    #@2
    const/4 v6, 0x0

    #@3
    .line 796
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->init()J

    #@6
    move-result-wide v4

    #@7
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    #@9
    .line 797
    iput-wide v8, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    #@b
    iput-wide v8, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    #@d
    .line 801
    const-string/jumbo v3, "persist.sys.timezone"

    #@10
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->setTimeZoneImpl(Ljava/lang/String;)V

    #@17
    .line 803
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    #@1a
    move-result-object v3

    #@1b
    const-string/jumbo v4, "power"

    #@1e
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    check-cast v1, Landroid/os/PowerManager;

    #@24
    .line 804
    .local v1, "pm":Landroid/os/PowerManager;
    const-string/jumbo v3, "*alarm*"

    #@27
    const/4 v4, 0x1

    #@28
    invoke-virtual {v1, v4, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@2b
    move-result-object v3

    #@2c
    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2e
    .line 806
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    #@31
    move-result-object v3

    #@32
    .line 807
    new-instance v4, Landroid/content/Intent;

    #@34
    const-string/jumbo v5, "android.intent.action.TIME_TICK"

    #@37
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@3a
    .line 808
    const/high16 v5, 0x50000000

    #@3c
    .line 807
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@3f
    move-result-object v4

    #@40
    .line 810
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@42
    .line 806
    invoke-static {v3, v6, v4, v6, v5}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@45
    move-result-object v3

    #@46
    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    #@48
    .line 811
    new-instance v0, Landroid/content/Intent;

    #@4a
    const-string/jumbo v3, "android.intent.action.DATE_CHANGED"

    #@4d
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@50
    .line 812
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x20000000

    #@52
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@55
    .line 813
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    #@58
    move-result-object v3

    #@59
    .line 814
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@5b
    const/high16 v5, 0x4000000

    #@5d
    .line 813
    invoke-static {v3, v6, v0, v5, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@60
    move-result-object v3

    #@61
    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    #@63
    .line 817
    new-instance v3, Lcom/android/server/AlarmManagerService$ClockReceiver;

    #@65
    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerService$ClockReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    #@68
    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    #@6a
    .line 818
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    #@6c
    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    #@6f
    .line 819
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    #@71
    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    #@74
    .line 820
    new-instance v3, Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;

    #@76
    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    #@79
    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mInteractiveStateReceiver:Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;

    #@7b
    .line 821
    new-instance v3, Lcom/android/server/AlarmManagerService$UninstallReceiver;

    #@7d
    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerService$UninstallReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    #@80
    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mUninstallReceiver:Lcom/android/server/AlarmManagerService$UninstallReceiver;

    #@82
    .line 823
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    #@84
    cmp-long v3, v4, v8

    #@86
    if-eqz v3, :cond_0

    #@88
    .line 824
    new-instance v2, Lcom/android/server/AlarmManagerService$AlarmThread;

    #@8a
    invoke-direct {v2, p0}, Lcom/android/server/AlarmManagerService$AlarmThread;-><init>(Lcom/android/server/AlarmManagerService;)V

    #@8d
    .line 825
    .local v2, "waitThread":Lcom/android/server/AlarmManagerService$AlarmThread;
    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$AlarmThread;->start()V

    #@90
    .line 830
    .end local v2    # "waitThread":Lcom/android/server/AlarmManagerService$AlarmThread;
    :goto_0
    const-string/jumbo v3, "alarm"

    #@93
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mService:Landroid/os/IBinder;

    #@95
    invoke-virtual {p0, v3, v4}, Lcom/android/server/AlarmManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@98
    .line 795
    return-void

    #@99
    .line 827
    :cond_0
    const-string/jumbo v3, "AlarmManager"

    #@9c
    const-string/jumbo v4, "Failed to open alarm driver. Falling back to a handler."

    #@9f
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@a2
    goto :goto_0
.end method

.method reAddAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V
    .locals 10
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "nowElapsed"    # J
    .param p4, "doValidate"    # Z

    #@0
    .prologue
    const-wide/16 v8, 0x0

    #@2
    .line 683
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    #@4
    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    #@6
    .line 684
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    #@8
    iget v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    #@a
    invoke-static {v0, v1, v4}, Lcom/android/server/AlarmManagerService;->convertToElapsed(JI)J

    #@d
    move-result-wide v2

    #@e
    .line 686
    .local v2, "whenElapsed":J
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    #@10
    cmp-long v0, v0, v8

    #@12
    if-nez v0, :cond_0

    #@14
    .line 688
    move-wide v6, v2

    #@15
    .line 697
    .local v6, "maxElapsed":J
    :goto_0
    iput-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@17
    .line 698
    iput-wide v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    #@19
    .line 699
    const/4 v0, 0x1

    #@1a
    invoke-direct {p0, p1, v0, p4}, Lcom/android/server/AlarmManagerService;->setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V

    #@1d
    .line 682
    return-void

    #@1e
    .line 693
    .end local v6    # "maxElapsed":J
    :cond_0
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    #@20
    cmp-long v0, v0, v8

    #@22
    if-lez v0, :cond_1

    #@24
    .line 694
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    #@26
    add-long v6, v2, v0

    #@28
    .restart local v6    # "maxElapsed":J
    goto :goto_0

    #@29
    .line 695
    .end local v6    # "maxElapsed":J
    :cond_1
    iget-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    #@2b
    move-wide v0, p2

    #@2c
    invoke-static/range {v0 .. v5}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    #@2f
    move-result-wide v6

    #@30
    .restart local v6    # "maxElapsed":J
    goto :goto_0
.end method

.method rebatchAllAlarms()V
    .locals 2

    #@0
    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 653
    const/4 v1, 0x1

    #@4
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit v0

    #@8
    .line 651
    return-void

    #@9
    .line 652
    :catchall_0
    move-exception v1

    #@a
    monitor-exit v0

    #@b
    throw v1
.end method

.method rebatchAllAlarmsLocked(Z)V
    .locals 12
    .param p1, "doValidate"    # Z

    #@0
    .prologue
    .line 658
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v9}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@5
    move-result-object v8

    #@6
    check-cast v8, Ljava/util/ArrayList;

    #@8
    .line 659
    .local v8, "oldSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    #@d
    .line 660
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    #@f
    .line 661
    .local v7, "oldPendingIdleUntil":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@12
    move-result-wide v4

    #@13
    .line 662
    .local v4, "nowElapsed":J
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@16
    move-result v6

    #@17
    .line 663
    .local v6, "oldBatches":I
    const/4 v2, 0x0

    #@18
    .local v2, "batchNum":I
    :goto_0
    if-ge v2, v6, :cond_1

    #@1a
    .line 664
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    #@20
    .line 665
    .local v1, "batch":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    #@23
    move-result v0

    #@24
    .line 666
    .local v0, "N":I
    const/4 v3, 0x0

    #@25
    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_0

    #@27
    .line 667
    invoke-virtual {v1, v3}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    #@2a
    move-result-object v9

    #@2b
    invoke-virtual {p0, v9, v4, v5, p1}, Lcom/android/server/AlarmManagerService;->reAddAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V

    #@2e
    .line 666
    add-int/lit8 v3, v3, 0x1

    #@30
    goto :goto_1

    #@31
    .line 663
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@33
    goto :goto_0

    #@34
    .line 670
    .end local v0    # "N":I
    .end local v1    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v3    # "i":I
    :cond_1
    if-eqz v7, :cond_2

    #@36
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    #@38
    if-eq v7, v9, :cond_2

    #@3a
    .line 671
    const-string/jumbo v9, "AlarmManager"

    #@3d
    new-instance v10, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v11, "Rebatching: idle until changed from "

    #@45
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v10

    #@49
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v10

    #@4d
    .line 672
    const-string/jumbo v11, " to "

    #@50
    .line 671
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v10

    #@54
    .line 672
    iget-object v11, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    #@56
    .line 671
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v10

    #@5a
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v10

    #@5e
    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@61
    .line 673
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    #@63
    if-nez v9, :cond_2

    #@65
    .line 675
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->restorePendingWhileIdleAlarmsLocked()V

    #@68
    .line 678
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    #@6b
    .line 679
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    #@6e
    .line 657
    return-void
.end method

.method recordWakeupAlarms(Ljava/util/ArrayList;JJ)V
    .locals 10
    .param p2, "nowELAPSED"    # J
    .param p4, "nowRTC"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;JJ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2031
    .local p1, "batches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v6

    #@4
    .line 2032
    .local v6, "numBatches":I
    const/4 v4, 0x0

    #@5
    .local v4, "nextBatch":I
    :goto_0
    if-ge v4, v6, :cond_0

    #@7
    .line 2033
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    #@d
    .line 2034
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget-wide v8, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    #@f
    cmp-long v7, v8, p2

    #@11
    if-lez v7, :cond_1

    #@13
    .line 2030
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_0
    return-void

    #@14
    .line 2038
    .restart local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    iget-object v7, v1, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@19
    move-result v5

    #@1a
    .line 2039
    .local v5, "numAlarms":I
    const/4 v3, 0x0

    #@1b
    .local v3, "nextAlarm":I
    :goto_1
    if-ge v3, v5, :cond_2

    #@1d
    .line 2040
    iget-object v7, v1, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@1f
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    #@25
    .line 2041
    .local v0, "a":Lcom/android/server/AlarmManagerService$Alarm;
    new-instance v2, Lcom/android/server/AlarmManagerService$WakeupEvent;

    #@27
    .line 2042
    iget-object v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@29
    invoke-virtual {v7}, Landroid/app/PendingIntent;->getCreatorUid()I

    #@2c
    move-result v7

    #@2d
    .line 2043
    iget-object v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@2f
    invoke-virtual {v8}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    #@32
    move-result-object v8

    #@33
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@36
    move-result-object v8

    #@37
    .line 2041
    invoke-direct {v2, p4, p5, v7, v8}, Lcom/android/server/AlarmManagerService$WakeupEvent;-><init>(JILjava/lang/String;)V

    #@3a
    .line 2044
    .local v2, "e":Lcom/android/server/AlarmManagerService$WakeupEvent;
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mRecentWakeups:Ljava/util/LinkedList;

    #@3c
    invoke-virtual {v7, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@3f
    .line 2039
    add-int/lit8 v3, v3, 0x1

    #@41
    goto :goto_1

    #@42
    .line 2032
    .end local v0    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v2    # "e":Lcom/android/server/AlarmManagerService$WakeupEvent;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@44
    goto :goto_0
.end method

.method removeImpl(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "operation"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 885
    if-nez p1, :cond_0

    #@2
    .line 886
    return-void

    #@3
    .line 888
    :cond_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v0

    #@6
    .line 889
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v0

    #@a
    .line 884
    return-void

    #@b
    .line 888
    :catchall_0
    move-exception v1

    #@c
    monitor-exit v0

    #@d
    throw v1
.end method

.method removeLocked(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1670
    const/4 v1, 0x0

    #@1
    .line 1671
    .local v1, "didRemove":Z
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v3

    #@7
    add-int/lit8 v2, v3, -0x1

    #@9
    .end local v1    # "didRemove":Z
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    #@b
    .line 1672
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    #@13
    .line 1673
    .local v0, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->remove(Ljava/lang/String;)Z

    #@16
    move-result v3

    #@17
    or-int/2addr v1, v3

    #@18
    .line 1674
    .local v1, "didRemove":Z
    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    #@1b
    move-result v3

    #@1c
    if-nez v3, :cond_0

    #@1e
    .line 1675
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@23
    .line 1671
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@25
    goto :goto_0

    #@26
    .line 1678
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v1    # "didRemove":Z
    :cond_1
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    #@28
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@2b
    move-result v3

    #@2c
    add-int/lit8 v2, v3, -0x1

    #@2e
    :goto_1
    if-ltz v2, :cond_3

    #@30
    .line 1679
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    #@32
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@35
    move-result-object v3

    #@36
    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    #@38
    iget-object v3, v3, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@3a
    invoke-virtual {v3}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@41
    move-result v3

    #@42
    if-eqz v3, :cond_2

    #@44
    .line 1681
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    #@46
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@49
    .line 1678
    :cond_2
    add-int/lit8 v2, v2, -0x1

    #@4b
    goto :goto_1

    #@4c
    .line 1685
    :cond_3
    if-eqz v1, :cond_4

    #@4e
    .line 1689
    const/4 v3, 0x1

    #@4f
    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    #@52
    .line 1690
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    #@55
    .line 1691
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    #@58
    .line 1669
    :cond_4
    return-void
.end method

.method removeUserLocked(I)V
    .locals 4
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 1696
    const/4 v1, 0x0

    #@1
    .line 1697
    .local v1, "didRemove":Z
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v3

    #@7
    add-int/lit8 v2, v3, -0x1

    #@9
    .end local v1    # "didRemove":Z
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    #@b
    .line 1698
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    #@13
    .line 1699
    .local v0, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->remove(I)Z

    #@16
    move-result v3

    #@17
    or-int/2addr v1, v3

    #@18
    .line 1700
    .local v1, "didRemove":Z
    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    #@1b
    move-result v3

    #@1c
    if-nez v3, :cond_0

    #@1e
    .line 1701
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@23
    .line 1697
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@25
    goto :goto_0

    #@26
    .line 1704
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v1    # "didRemove":Z
    :cond_1
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    #@28
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@2b
    move-result v3

    #@2c
    add-int/lit8 v2, v3, -0x1

    #@2e
    :goto_1
    if-ltz v2, :cond_3

    #@30
    .line 1705
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    #@32
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@35
    move-result-object v3

    #@36
    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    #@38
    iget-object v3, v3, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@3a
    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorUid()I

    #@3d
    move-result v3

    #@3e
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    #@41
    move-result v3

    #@42
    if-ne v3, p1, :cond_2

    #@44
    .line 1708
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    #@46
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@49
    .line 1704
    :cond_2
    add-int/lit8 v2, v2, -0x1

    #@4b
    goto :goto_1

    #@4c
    .line 1711
    :cond_3
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    #@4e
    invoke-virtual {v3}, Landroid/util/SparseLongArray;->size()I

    #@51
    move-result v3

    #@52
    add-int/lit8 v2, v3, -0x1

    #@54
    :goto_2
    if-ltz v2, :cond_5

    #@56
    .line 1712
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    #@58
    invoke-virtual {v3, v2}, Landroid/util/SparseLongArray;->keyAt(I)I

    #@5b
    move-result v3

    #@5c
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    #@5f
    move-result v3

    #@60
    if-ne v3, p1, :cond_4

    #@62
    .line 1713
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    #@64
    invoke-virtual {v3, v2}, Landroid/util/SparseLongArray;->removeAt(I)V

    #@67
    .line 1711
    :cond_4
    add-int/lit8 v2, v2, -0x1

    #@69
    goto :goto_2

    #@6a
    .line 1717
    :cond_5
    if-eqz v1, :cond_6

    #@6c
    .line 1721
    const/4 v3, 0x1

    #@6d
    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    #@70
    .line 1722
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    #@73
    .line 1723
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    #@76
    .line 1695
    :cond_6
    return-void
.end method

.method rescheduleKernelAlarmsLocked()V
    .locals 10

    #@0
    .prologue
    const-wide/16 v8, 0x0

    #@2
    const/4 v5, 0x0

    #@3
    .line 1610
    const-wide/16 v2, 0x0

    #@5
    .line 1611
    .local v2, "nextNonWakeup":J
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v4

    #@b
    if-lez v4, :cond_1

    #@d
    .line 1612
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->findFirstWakeupBatchLocked()Lcom/android/server/AlarmManagerService$Batch;

    #@10
    move-result-object v1

    #@11
    .line 1613
    .local v1, "firstWakeup":Lcom/android/server/AlarmManagerService$Batch;
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    #@19
    .line 1614
    .local v0, "firstBatch":Lcom/android/server/AlarmManagerService$Batch;
    if-eqz v1, :cond_0

    #@1b
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    #@1d
    iget-wide v6, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    #@1f
    cmp-long v4, v4, v6

    #@21
    if-eqz v4, :cond_0

    #@23
    .line 1615
    iget-wide v4, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    #@25
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    #@27
    .line 1616
    iget-wide v4, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    #@29
    const/4 v6, 0x2

    #@2a
    invoke-direct {p0, v6, v4, v5}, Lcom/android/server/AlarmManagerService;->setLocked(IJ)V

    #@2d
    .line 1618
    :cond_0
    if-eq v0, v1, :cond_1

    #@2f
    .line 1619
    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    #@31
    .line 1622
    .end local v0    # "firstBatch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v1    # "firstWakeup":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    #@33
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@36
    move-result v4

    #@37
    if-lez v4, :cond_3

    #@39
    .line 1623
    cmp-long v4, v2, v8

    #@3b
    if-eqz v4, :cond_2

    #@3d
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    #@3f
    cmp-long v4, v4, v2

    #@41
    if-gez v4, :cond_3

    #@43
    .line 1624
    :cond_2
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    #@45
    .line 1627
    :cond_3
    cmp-long v4, v2, v8

    #@47
    if-eqz v4, :cond_4

    #@49
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    #@4b
    cmp-long v4, v4, v2

    #@4d
    if-eqz v4, :cond_4

    #@4f
    .line 1628
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    #@51
    .line 1629
    const/4 v4, 0x3

    #@52
    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/AlarmManagerService;->setLocked(IJ)V

    #@55
    .line 1607
    :cond_4
    return-void
.end method

.method restorePendingWhileIdleAlarmsLocked()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 704
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v6

    #@7
    if-lez v6, :cond_0

    #@9
    .line 705
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    #@b
    .line 706
    .local v1, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    new-instance v6, Ljava/util/ArrayList;

    #@d
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@10
    iput-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    #@12
    .line 707
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@15
    move-result-wide v4

    #@16
    .line 708
    .local v4, "nowElapsed":J
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@19
    move-result v6

    #@1a
    add-int/lit8 v3, v6, -0x1

    #@1c
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    #@1e
    .line 709
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    #@24
    .line 710
    .local v0, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {p0, v0, v4, v5, v7}, Lcom/android/server/AlarmManagerService;->reAddAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V

    #@27
    .line 708
    add-int/lit8 v3, v3, -0x1

    #@29
    goto :goto_0

    #@2a
    .line 715
    .end local v0    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v1    # "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v3    # "i":I
    .end local v4    # "nowElapsed":J
    :cond_0
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    #@2c
    invoke-virtual {v6}, Lcom/android/server/AlarmManagerService$Constants;->updateAllowWhileIdleMinTimeLocked()V

    #@2f
    .line 718
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    #@32
    .line 719
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    #@35
    .line 723
    :try_start_0
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    #@37
    invoke-virtual {v6}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    #@3a
    .line 702
    :goto_1
    return-void

    #@3b
    .line 724
    :catch_0
    move-exception v2

    #@3c
    .local v2, "e":Landroid/app/PendingIntent$CanceledException;
    goto :goto_1
.end method

.method setImpl(IJJJLandroid/app/PendingIntent;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;I)V
    .locals 36
    .param p1, "type"    # I
    .param p2, "triggerAtTime"    # J
    .param p4, "windowLength"    # J
    .param p6, "interval"    # J
    .param p8, "operation"    # Landroid/app/PendingIntent;
    .param p9, "flags"    # I
    .param p10, "workSource"    # Landroid/os/WorkSource;
    .param p11, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p12, "callingUid"    # I

    #@0
    .prologue
    .line 896
    if-nez p8, :cond_0

    #@2
    .line 897
    const-string/jumbo v8, "AlarmManager"

    #@5
    const-string/jumbo v9, "set/setRepeating ignored because there is no intent"

    #@8
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    .line 898
    return-void

    #@c
    .line 903
    :cond_0
    const-wide/32 v8, 0x2932e00

    #@f
    cmp-long v8, p4, v8

    #@11
    if-lez v8, :cond_1

    #@13
    .line 904
    const-string/jumbo v8, "AlarmManager"

    #@16
    new-instance v9, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v10, "Window length "

    #@1e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v9

    #@22
    move-wide/from16 v0, p4

    #@24
    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@27
    move-result-object v9

    #@28
    .line 905
    const-string/jumbo v10, "ms suspiciously long; limiting to 1 hour"

    #@2b
    .line 904
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v9

    #@2f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v9

    #@33
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 906
    const-wide/32 p4, 0x36ee80

    #@39
    .line 911
    :cond_1
    move-object/from16 v0, p0

    #@3b
    iget-object v8, v0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    #@3d
    iget-wide v0, v8, Lcom/android/server/AlarmManagerService$Constants;->MIN_INTERVAL:J

    #@3f
    move-wide/from16 v26, v0

    #@41
    .line 912
    .local v26, "minInterval":J
    const-wide/16 v8, 0x0

    #@43
    cmp-long v8, p6, v8

    #@45
    if-lez v8, :cond_2

    #@47
    cmp-long v8, p6, v26

    #@49
    if-gez v8, :cond_2

    #@4b
    .line 913
    const-string/jumbo v8, "AlarmManager"

    #@4e
    new-instance v9, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v10, "Suspiciously short interval "

    #@56
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v9

    #@5a
    move-wide/from16 v0, p6

    #@5c
    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v9

    #@60
    .line 914
    const-string/jumbo v10, " millis; expanding to "

    #@63
    .line 913
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v9

    #@67
    .line 914
    const-wide/16 v10, 0x3e8

    #@69
    div-long v10, v26, v10

    #@6b
    .line 913
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v9

    #@6f
    .line 915
    const-string/jumbo v10, " seconds"

    #@72
    .line 913
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v9

    #@76
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v9

    #@7a
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7d
    .line 916
    move-wide/from16 p6, v26

    #@7f
    .line 919
    :cond_2
    if-ltz p1, :cond_3

    #@81
    const/4 v8, 0x3

    #@82
    move/from16 v0, p1

    #@84
    if-le v0, v8, :cond_4

    #@86
    .line 920
    :cond_3
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@88
    new-instance v9, Ljava/lang/StringBuilder;

    #@8a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@8d
    const-string/jumbo v10, "Invalid alarm type "

    #@90
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v9

    #@94
    move/from16 v0, p1

    #@96
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@99
    move-result-object v9

    #@9a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v9

    #@9e
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a1
    throw v8

    #@a2
    .line 923
    :cond_4
    const-wide/16 v8, 0x0

    #@a4
    cmp-long v8, p2, v8

    #@a6
    if-gez v8, :cond_5

    #@a8
    .line 924
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@ab
    move-result v8

    #@ac
    int-to-long v0, v8

    #@ad
    move-wide/from16 v32, v0

    #@af
    .line 925
    .local v32, "what":J
    const-string/jumbo v8, "AlarmManager"

    #@b2
    new-instance v9, Ljava/lang/StringBuilder;

    #@b4
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@b7
    const-string/jumbo v10, "Invalid alarm trigger time! "

    #@ba
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v9

    #@be
    move-wide/from16 v0, p2

    #@c0
    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v9

    #@c4
    const-string/jumbo v10, " from uid="

    #@c7
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v9

    #@cb
    move/from16 v0, p12

    #@cd
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v9

    #@d1
    .line 926
    const-string/jumbo v10, " pid="

    #@d4
    .line 925
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v9

    #@d8
    move-wide/from16 v0, v32

    #@da
    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v9

    #@de
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e1
    move-result-object v9

    #@e2
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e5
    .line 927
    const-wide/16 p2, 0x0

    #@e7
    .line 930
    .end local v32    # "what":J
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@ea
    move-result-wide v4

    #@eb
    .line 931
    .local v4, "nowElapsed":J
    move-wide/from16 v0, p2

    #@ed
    move/from16 v2, p1

    #@ef
    invoke-static {v0, v1, v2}, Lcom/android/server/AlarmManagerService;->convertToElapsed(JI)J

    #@f2
    move-result-wide v30

    #@f3
    .line 933
    .local v30, "nominalTrigger":J
    move-object/from16 v0, p0

    #@f5
    iget-object v8, v0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    #@f7
    iget-wide v8, v8, Lcom/android/server/AlarmManagerService$Constants;->MIN_FUTURITY:J

    #@f9
    add-long v28, v4, v8

    #@fb
    .line 934
    .local v28, "minTrigger":J
    cmp-long v8, v30, v28

    #@fd
    if-lez v8, :cond_6

    #@ff
    move-wide/from16 v6, v30

    #@101
    .line 937
    .local v6, "triggerElapsed":J
    :goto_0
    const-wide/16 v8, 0x0

    #@103
    cmp-long v8, p4, v8

    #@105
    if-nez v8, :cond_7

    #@107
    .line 938
    move-wide/from16 v16, v6

    #@109
    .line 947
    .local v16, "maxElapsed":J
    :goto_1
    move-object/from16 v0, p0

    #@10b
    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    #@10d
    move-object/from16 v34, v0

    #@10f
    monitor-enter v34

    #@110
    .line 955
    const/16 v22, 0x1

    #@112
    move-object/from16 v8, p0

    #@114
    move/from16 v9, p1

    #@116
    move-wide/from16 v10, p2

    #@118
    move-wide v12, v6

    #@119
    move-wide/from16 v14, p4

    #@11b
    move-wide/from16 v18, p6

    #@11d
    move-object/from16 v20, p8

    #@11f
    move/from16 v21, p9

    #@121
    move-object/from16 v23, p10

    #@123
    move-object/from16 v24, p11

    #@125
    move/from16 v25, p12

    #@127
    .line 954
    :try_start_0
    invoke-direct/range {v8 .. v25}, Lcom/android/server/AlarmManagerService;->setImplLocked(IJJJJJLandroid/app/PendingIntent;IZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12a
    monitor-exit v34

    #@12b
    .line 895
    return-void

    #@12c
    .line 934
    .end local v6    # "triggerElapsed":J
    .end local v16    # "maxElapsed":J
    :cond_6
    move-wide/from16 v6, v28

    #@12e
    .restart local v6    # "triggerElapsed":J
    goto :goto_0

    #@12f
    .line 939
    :cond_7
    const-wide/16 v8, 0x0

    #@131
    cmp-long v8, p4, v8

    #@133
    if-gez v8, :cond_8

    #@135
    move-wide/from16 v8, p6

    #@137
    .line 940
    invoke-static/range {v4 .. v9}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    #@13a
    move-result-wide v16

    #@13b
    .line 942
    .restart local v16    # "maxElapsed":J
    sub-long p4, v16, v6

    #@13d
    goto :goto_1

    #@13e
    .line 944
    .end local v16    # "maxElapsed":J
    :cond_8
    add-long v16, v6, p4

    #@140
    .restart local v16    # "maxElapsed":J
    goto :goto_1

    #@141
    .line 947
    :catchall_0
    move-exception v8

    #@142
    monitor-exit v34

    #@143
    throw v8
.end method

.method setTimeZoneImpl(Ljava/lang/String;)V
    .locals 9
    .param p1, "tz"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 850
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4
    move-result v5

    #@5
    if-eqz v5, :cond_0

    #@7
    .line 851
    return-void

    #@8
    .line 854
    :cond_0
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@b
    move-result-object v4

    #@c
    .line 857
    .local v4, "zone":Ljava/util/TimeZone;
    const/4 v3, 0x0

    #@d
    .line 858
    .local v3, "timeZoneWasChanged":Z
    monitor-enter p0

    #@e
    .line 859
    :try_start_0
    const-string/jumbo v5, "persist.sys.timezone"

    #@11
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    .line 860
    .local v0, "current":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@17
    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@1a
    move-result-object v5

    #@1b
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v5

    #@1f
    if-eqz v5, :cond_2

    #@21
    .line 870
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@24
    move-result-wide v6

    #@25
    invoke-virtual {v4, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    #@28
    move-result v1

    #@29
    .line 871
    .local v1, "gmtOffset":I
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    #@2b
    const v5, 0xea60

    #@2e
    div-int v5, v1, v5

    #@30
    neg-int v5, v5

    #@31
    invoke-direct {p0, v6, v7, v5}, Lcom/android/server/AlarmManagerService;->setKernelTimezone(JI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    monitor-exit p0

    #@35
    .line 874
    invoke-static {v8}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    #@38
    .line 876
    if-eqz v3, :cond_1

    #@3a
    .line 877
    new-instance v2, Landroid/content/Intent;

    #@3c
    const-string/jumbo v5, "android.intent.action.TIMEZONE_CHANGED"

    #@3f
    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@42
    .line 878
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v5, 0x20000000

    #@44
    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@47
    .line 879
    const-string/jumbo v5, "time-zone"

    #@4a
    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@4d
    move-result-object v6

    #@4e
    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@51
    .line 880
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    #@54
    move-result-object v5

    #@55
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@57
    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@5a
    .line 849
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    return-void

    #@5b
    .line 864
    .end local v1    # "gmtOffset":I
    :cond_2
    const/4 v3, 0x1

    #@5c
    .line 865
    :try_start_1
    const-string/jumbo v5, "persist.sys.timezone"

    #@5f
    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@62
    move-result-object v6

    #@63
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@66
    goto :goto_0

    #@67
    .line 858
    .end local v0    # "current":Ljava/lang/String;
    :catchall_0
    move-exception v5

    #@68
    monitor-exit p0

    #@69
    throw v5
.end method

.method setWakelockWorkSource(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;Z)V
    .locals 6
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "ws"    # Landroid/os/WorkSource;
    .param p3, "type"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "first"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2305
    :try_start_0
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    #@3
    if-ne p1, v3, :cond_1

    #@5
    const/4 v2, 0x1

    #@6
    .line 2306
    .local v2, "unimportant":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@8
    invoke-virtual {v3, v2}, Landroid/os/PowerManager$WakeLock;->setUnimportantForLogging(Z)V

    #@b
    .line 2307
    if-nez p5, :cond_0

    #@d
    iget-boolean v3, p0, Lcom/android/server/AlarmManagerService;->mLastWakeLockUnimportantForLogging:Z

    #@f
    if-eqz v3, :cond_2

    #@11
    .line 2308
    :cond_0
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@13
    invoke-virtual {v3, p4}, Landroid/os/PowerManager$WakeLock;->setHistoryTag(Ljava/lang/String;)V

    #@16
    .line 2312
    :goto_1
    iput-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mLastWakeLockUnimportantForLogging:Z

    #@18
    .line 2313
    if-eqz p2, :cond_4

    #@1a
    .line 2314
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@1c
    invoke-virtual {v3, p2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    #@1f
    .line 2315
    return-void

    #@20
    .line 2305
    .end local v2    # "unimportant":Z
    :cond_1
    const/4 v2, 0x0

    #@21
    .restart local v2    # "unimportant":Z
    goto :goto_0

    #@22
    .line 2310
    :cond_2
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@24
    const/4 v4, 0x0

    #@25
    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setHistoryTag(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    goto :goto_1

    #@29
    .line 2324
    .end local v2    # "unimportant":Z
    :catch_0
    move-exception v0

    #@2a
    .line 2328
    :cond_3
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2c
    invoke-virtual {v3, v5}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    #@2f
    .line 2303
    return-void

    #@30
    .line 2318
    .restart local v2    # "unimportant":Z
    :cond_4
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@33
    move-result-object v3

    #@34
    .line 2319
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    #@37
    move-result-object v4

    #@38
    .line 2318
    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    #@3b
    move-result v1

    #@3c
    .line 2320
    .local v1, "uid":I
    if-ltz v1, :cond_3

    #@3e
    .line 2321
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@40
    new-instance v4, Landroid/os/WorkSource;

    #@42
    invoke-direct {v4, v1}, Landroid/os/WorkSource;-><init>(I)V

    #@45
    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@48
    .line 2322
    return-void
.end method

.method triggerAlarmsLocked(Ljava/util/ArrayList;JJ)Z
    .locals 38
    .param p2, "nowELAPSED"    # J
    .param p4, "nowRTC"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;JJ)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 1833
    .local p1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const/16 v29, 0x0

    #@2
    .line 1837
    .local v29, "hasWakeup":Z
    :cond_0
    move-object/from16 v0, p0

    #@4
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v4

    #@a
    if-lez v4, :cond_1

    #@c
    .line 1838
    move-object/from16 v0, p0

    #@e
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@10
    const/4 v5, 0x0

    #@11
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v28

    #@15
    check-cast v28, Lcom/android/server/AlarmManagerService$Batch;

    #@17
    .line 1839
    .local v28, "batch":Lcom/android/server/AlarmManagerService$Batch;
    move-object/from16 v0, v28

    #@19
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    #@1b
    cmp-long v4, v4, p2

    #@1d
    if-lez v4, :cond_2

    #@1f
    .line 1915
    .end local v28    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    move-object/from16 v0, p0

    #@21
    iget v4, v0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    #@23
    add-int/lit8 v4, v4, 0x1

    #@25
    move-object/from16 v0, p0

    #@27
    iput v4, v0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    #@29
    .line 1916
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    #@2c
    .line 1917
    move-object/from16 v0, p0

    #@2e
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    #@30
    move-object/from16 v0, p1

    #@32
    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@35
    .line 1925
    return v29

    #@36
    .line 1846
    .restart local v28    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    :cond_2
    move-object/from16 v0, p0

    #@38
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@3a
    const/4 v5, 0x0

    #@3b
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@3e
    .line 1848
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    #@41
    move-result v26

    #@42
    .line 1849
    .local v26, "N":I
    const/16 v32, 0x0

    #@44
    .local v32, "i":I
    :goto_0
    move/from16 v0, v32

    #@46
    move/from16 v1, v26

    #@48
    if-ge v0, v1, :cond_0

    #@4a
    .line 1850
    move-object/from16 v0, v28

    #@4c
    move/from16 v1, v32

    #@4e
    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    #@51
    move-result-object v27

    #@52
    .line 1852
    .local v27, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    move-object/from16 v0, v27

    #@54
    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    #@56
    and-int/lit8 v4, v4, 0x4

    #@58
    if-eqz v4, :cond_5

    #@5a
    .line 1855
    move-object/from16 v0, p0

    #@5c
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    #@5e
    move-object/from16 v0, v27

    #@60
    iget v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    #@62
    const-wide/16 v8, 0x0

    #@64
    invoke-virtual {v4, v5, v8, v9}, Landroid/util/SparseLongArray;->get(IJ)J

    #@67
    move-result-wide v34

    #@68
    .line 1856
    .local v34, "lastTime":J
    move-object/from16 v0, p0

    #@6a
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService;->mAllowWhileIdleMinTime:J

    #@6c
    add-long v36, v34, v4

    #@6e
    .line 1857
    .local v36, "minTime":J
    cmp-long v4, p2, v36

    #@70
    if-gez v4, :cond_5

    #@72
    .line 1861
    move-wide/from16 v0, v36

    #@74
    move-object/from16 v2, v27

    #@76
    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@78
    .line 1862
    move-object/from16 v0, v27

    #@7a
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    #@7c
    cmp-long v4, v4, v36

    #@7e
    if-gez v4, :cond_3

    #@80
    .line 1863
    move-wide/from16 v0, v36

    #@82
    move-object/from16 v2, v27

    #@84
    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    #@86
    .line 1865
    :cond_3
    const/4 v4, 0x1

    #@87
    const/4 v5, 0x0

    #@88
    move-object/from16 v0, p0

    #@8a
    move-object/from16 v1, v27

    #@8c
    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/AlarmManagerService;->setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V

    #@8f
    .line 1849
    .end local v34    # "lastTime":J
    .end local v36    # "minTime":J
    :cond_4
    :goto_1
    add-int/lit8 v32, v32, 0x1

    #@91
    goto :goto_0

    #@92
    .line 1870
    :cond_5
    const/4 v4, 0x1

    #@93
    move-object/from16 v0, v27

    #@95
    iput v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    #@97
    .line 1871
    move-object/from16 v0, p1

    #@99
    move-object/from16 v1, v27

    #@9b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@9e
    .line 1872
    move-object/from16 v0, v27

    #@a0
    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    #@a2
    and-int/lit8 v4, v4, 0x2

    #@a4
    if-eqz v4, :cond_6

    #@a6
    .line 1873
    move-object/from16 v0, p0

    #@a8
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    #@aa
    if-eqz v4, :cond_b

    #@ac
    const/4 v4, 0x1

    #@ad
    .line 1874
    :goto_2
    move-object/from16 v0, v27

    #@af
    iget-object v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    #@b1
    .line 1873
    invoke-static {v4, v5}, Lcom/android/server/EventLogTags;->writeDeviceIdleWakeFromIdle(ILjava/lang/String;)V

    #@b4
    .line 1876
    :cond_6
    move-object/from16 v0, p0

    #@b6
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    #@b8
    move-object/from16 v0, v27

    #@ba
    if-ne v4, v0, :cond_7

    #@bc
    .line 1877
    const/4 v4, 0x0

    #@bd
    move-object/from16 v0, p0

    #@bf
    iput-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    #@c1
    .line 1878
    const/4 v4, 0x0

    #@c2
    move-object/from16 v0, p0

    #@c4
    invoke-virtual {v0, v4}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    #@c7
    .line 1879
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->restorePendingWhileIdleAlarmsLocked()V

    #@ca
    .line 1881
    :cond_7
    move-object/from16 v0, p0

    #@cc
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    #@ce
    move-object/from16 v0, v27

    #@d0
    if-ne v4, v0, :cond_8

    #@d2
    .line 1882
    const/4 v4, 0x0

    #@d3
    move-object/from16 v0, p0

    #@d5
    iput-object v4, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    #@d7
    .line 1883
    const/4 v4, 0x0

    #@d8
    move-object/from16 v0, p0

    #@da
    invoke-virtual {v0, v4}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    #@dd
    .line 1888
    :cond_8
    move-object/from16 v0, v27

    #@df
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    #@e1
    const-wide/16 v8, 0x0

    #@e3
    cmp-long v4, v4, v8

    #@e5
    if-lez v4, :cond_9

    #@e7
    .line 1891
    move-object/from16 v0, v27

    #@e9
    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    #@eb
    int-to-long v4, v4

    #@ec
    move-object/from16 v0, v27

    #@ee
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@f0
    sub-long v8, p2, v8

    #@f2
    move-object/from16 v0, v27

    #@f4
    iget-wide v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    #@f6
    div-long/2addr v8, v10

    #@f7
    add-long/2addr v4, v8

    #@f8
    long-to-int v4, v4

    #@f9
    move-object/from16 v0, v27

    #@fb
    iput v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    #@fd
    .line 1894
    move-object/from16 v0, v27

    #@ff
    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    #@101
    int-to-long v4, v4

    #@102
    move-object/from16 v0, v27

    #@104
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    #@106
    mul-long v30, v4, v8

    #@108
    .line 1895
    .local v30, "delta":J
    move-object/from16 v0, v27

    #@10a
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@10c
    add-long v6, v4, v30

    #@10e
    .line 1896
    .local v6, "nextElapsed":J
    move-object/from16 v0, v27

    #@110
    iget v12, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    #@112
    move-object/from16 v0, v27

    #@114
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    #@116
    add-long v10, v4, v30

    #@118
    move-object/from16 v0, v27

    #@11a
    iget-wide v14, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    #@11c
    .line 1897
    move-object/from16 v0, v27

    #@11e
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    #@120
    move-wide/from16 v4, p2

    #@122
    invoke-static/range {v4 .. v9}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    #@125
    move-result-wide v16

    #@126
    .line 1898
    move-object/from16 v0, v27

    #@128
    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    #@12a
    move-wide/from16 v18, v0

    #@12c
    move-object/from16 v0, v27

    #@12e
    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@130
    move-object/from16 v20, v0

    #@132
    move-object/from16 v0, v27

    #@134
    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    #@136
    move/from16 v21, v0

    #@138
    .line 1899
    move-object/from16 v0, v27

    #@13a
    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    #@13c
    move-object/from16 v23, v0

    #@13e
    move-object/from16 v0, v27

    #@140
    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    #@142
    move-object/from16 v24, v0

    #@144
    move-object/from16 v0, v27

    #@146
    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    #@148
    move/from16 v25, v0

    #@14a
    .line 1898
    const/16 v22, 0x1

    #@14c
    move-object/from16 v8, p0

    #@14e
    move v9, v12

    #@14f
    move-wide v12, v6

    #@150
    .line 1896
    invoke-direct/range {v8 .. v25}, Lcom/android/server/AlarmManagerService;->setImplLocked(IJJJJJLandroid/app/PendingIntent;IZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;I)V

    #@153
    .line 1902
    .end local v6    # "nextElapsed":J
    .end local v30    # "delta":J
    :cond_9
    move-object/from16 v0, v27

    #@155
    iget-boolean v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->wakeup:Z

    #@157
    if-eqz v4, :cond_a

    #@159
    .line 1903
    const/16 v29, 0x1

    #@15b
    .line 1907
    :cond_a
    move-object/from16 v0, v27

    #@15d
    iget-object v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    #@15f
    if-eqz v4, :cond_4

    #@161
    .line 1908
    const/4 v4, 0x1

    #@162
    move-object/from16 v0, p0

    #@164
    iput-boolean v4, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    #@166
    goto/16 :goto_1

    #@168
    .line 1873
    :cond_b
    const/4 v4, 0x0

    #@169
    goto/16 :goto_2
.end method
