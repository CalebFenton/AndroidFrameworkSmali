.class Lcom/android/server/AlarmManagerService;
.super Lcom/android/server/SystemService;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerService$1;,
        Lcom/android/server/AlarmManagerService$2;,
        Lcom/android/server/AlarmManagerService$Alarm;,
        Lcom/android/server/AlarmManagerService$AlarmHandler;,
        Lcom/android/server/AlarmManagerService$AlarmThread;,
        Lcom/android/server/AlarmManagerService$Batch;,
        Lcom/android/server/AlarmManagerService$BatchTimeOrder;,
        Lcom/android/server/AlarmManagerService$BroadcastStats;,
        Lcom/android/server/AlarmManagerService$ClockReceiver;,
        Lcom/android/server/AlarmManagerService$Constants;,
        Lcom/android/server/AlarmManagerService$DeliveryTracker;,
        Lcom/android/server/AlarmManagerService$FilterStats;,
        Lcom/android/server/AlarmManagerService$IdleDispatchEntry;,
        Lcom/android/server/AlarmManagerService$InFlight;,
        Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;,
        Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;,
        Lcom/android/server/AlarmManagerService$LocalService;,
        Lcom/android/server/AlarmManagerService$PriorityClass;,
        Lcom/android/server/AlarmManagerService$UidObserver;,
        Lcom/android/server/AlarmManagerService$UninstallReceiver;,
        Lcom/android/server/AlarmManagerService$WakeupEvent;
    }
.end annotation


# static fields
.field static final ALARM_EVENT:I = 0x1

.field static final DEBUG_ALARM_CLOCK:Z = false

.field static final DEBUG_BATCH:Z = false

.field static final DEBUG_LISTENER_CALLBACK:Z = false

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

.field static final RECORD_DEVICE_IDLE_ALARMS:Z = false

.field private static final RTC_MASK:I = 0x2

.field private static final RTC_WAKEUP_MASK:I = 0x1

.field static final TAG:Ljava/lang/String; = "AlarmManager"

.field static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"

.field static final TIME_CHANGED_MASK:I = 0x10000

.field static final TYPE_NONWAKEUP_MASK:I = 0x1

.field static final WAKEUP_STATS:Z

.field static final localLOGV:Z

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

.field final mAllowWhileIdleDispatches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$IdleDispatchEntry;",
            ">;"
        }
    .end annotation
.end field

.field mAllowWhileIdleMinTime:J

.field mAppOps:Landroid/app/AppOpsManager;

.field private final mBackgroundIntent:Landroid/content/Intent;

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

.field final mDeliveryTracker:Lcom/android/server/AlarmManagerService$DeliveryTracker;

.field mDeviceIdleUserWhitelist:[I

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

.field private mLastWakeup:J

.field private mLastWakeupSet:J

.field mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

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
.method static synthetic -get0(Lcom/android/server/AlarmManagerService;)Landroid/content/Intent;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/AlarmManagerService;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->mLastWakeup:J

    #@2
    return-wide p1
.end method

.method static synthetic -set1(Lcom/android/server/AlarmManagerService;Z)Z
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

.method static synthetic -wrap1(Lcom/android/server/AlarmManagerService;ILjava/lang/String;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .locals 1
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->getStatsLocked(ILjava/lang/String;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/AlarmManagerService;JJ)I
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

.method static synthetic -wrap3(Lcom/android/server/AlarmManagerService;JI)I
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

.method static synthetic -wrap4(Lcom/android/server/AlarmManagerService;J)I
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

.method static synthetic -wrap5(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    .locals 0
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .param p2, "directReceiver"    # Landroid/app/IAlarmListener;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/AlarmManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->sendNextAlarmClockChanged()V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/AlarmManagerService;)V
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
    .line 110
    new-instance v0, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    #@2
    invoke-direct {v0}, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;-><init>()V

    #@5
    sput-object v0, Lcom/android/server/AlarmManagerService;->sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    #@7
    .line 115
    new-instance v0, Landroid/content/Intent;

    #@9
    const-string/jumbo v1, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    #@c
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@f
    .line 116
    const/high16 v1, 0x20000000

    #@11
    .line 115
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@14
    move-result-object v0

    #@15
    .line 114
    sput-object v0, Lcom/android/server/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    #@17
    .line 684
    new-instance v0, Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    #@19
    invoke-direct {v0}, Lcom/android/server/AlarmManagerService$BatchTimeOrder;-><init>()V

    #@1c
    sput-object v0, Lcom/android/server/AlarmManagerService;->sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    #@1e
    .line 86
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
    .line 694
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@7
    .line 109
    new-instance v0, Landroid/content/Intent;

    #@9
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@c
    const/4 v1, 0x4

    #@d
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@10
    move-result-object v0

    #@11
    .line 108
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    #@13
    .line 118
    new-instance v0, Lcom/android/internal/util/LocalLog;

    #@15
    const-string/jumbo v1, "AlarmManager"

    #@18
    invoke-direct {v0, v1}, Lcom/android/internal/util/LocalLog;-><init>(Ljava/lang/String;)V

    #@1b
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    #@1d
    .line 123
    new-instance v0, Ljava/lang/Object;

    #@1f
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@22
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    #@24
    .line 130
    iput v2, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    #@26
    .line 133
    new-instance v0, Ljava/util/ArrayList;

    #@28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@2b
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    #@2d
    .line 134
    new-instance v0, Ljava/util/ArrayList;

    #@2f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@32
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    #@34
    .line 135
    new-instance v0, Lcom/android/server/AlarmManagerService$AlarmHandler;

    #@36
    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerService$AlarmHandler;-><init>(Lcom/android/server/AlarmManagerService;)V

    #@39
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    #@3b
    .line 139
    new-instance v0, Lcom/android/server/AlarmManagerService$DeliveryTracker;

    #@3d
    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerService$DeliveryTracker;-><init>(Lcom/android/server/AlarmManagerService;)V

    #@40
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/AlarmManagerService$DeliveryTracker;

    #@42
    .line 143
    const/4 v0, 0x1

    #@43
    iput-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    #@45
    .line 158
    new-array v0, v2, [I

    #@47
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mDeviceIdleUserWhitelist:[I

    #@49
    .line 164
    new-instance v0, Landroid/util/SparseLongArray;

    #@4b
    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    #@4e
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    #@50
    .line 174
    new-instance v0, Ljava/util/ArrayList;

    #@52
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@55
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mAllowWhileIdleDispatches:Ljava/util/ArrayList;

    #@57
    .line 182
    new-instance v0, Landroid/util/SparseArray;

    #@59
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@5c
    .line 181
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    #@5e
    .line 184
    new-instance v0, Landroid/util/SparseArray;

    #@60
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@63
    .line 183
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

    #@65
    .line 186
    new-instance v0, Landroid/util/SparseBooleanArray;

    #@67
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    #@6a
    .line 185
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    #@6c
    .line 191
    new-instance v0, Landroid/util/SparseArray;

    #@6e
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@71
    .line 190
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

    #@73
    .line 345
    new-instance v0, Ljava/util/HashMap;

    #@75
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@78
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    #@7a
    .line 346
    iput v2, p0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    #@7c
    .line 360
    new-instance v0, Ljava/util/LinkedList;

    #@7e
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@81
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mRecentWakeups:Ljava/util/LinkedList;

    #@83
    .line 361
    const-wide/32 v0, 0x5265c00

    #@86
    iput-wide v0, p0, Lcom/android/server/AlarmManagerService;->RECENT_WAKEUP_PERIOD:J

    #@88
    .line 619
    new-instance v0, Lcom/android/server/AlarmManagerService$1;

    #@8a
    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerService$1;-><init>(Lcom/android/server/AlarmManagerService;)V

    #@8d
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    #@8f
    .line 685
    new-instance v0, Ljava/util/ArrayList;

    #@91
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@94
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@96
    .line 689
    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    #@98
    .line 690
    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    #@9a
    .line 691
    new-instance v0, Ljava/util/ArrayList;

    #@9c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9f
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    #@a1
    .line 897
    new-instance v0, Landroid/util/SparseArray;

    #@a3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@a6
    .line 896
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    #@a8
    .line 899
    iput v2, p0, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    #@aa
    .line 900
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    #@ac
    .line 901
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    #@ae
    .line 1227
    new-instance v0, Lcom/android/server/AlarmManagerService$2;

    #@b0
    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerService$2;-><init>(Lcom/android/server/AlarmManagerService;)V

    #@b3
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mService:Landroid/os/IBinder;

    #@b5
    .line 695
    new-instance v0, Lcom/android/server/AlarmManagerService$Constants;

    #@b7
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    #@b9
    invoke-direct {v0, p0, v1}, Lcom/android/server/AlarmManagerService$Constants;-><init>(Lcom/android/server/AlarmManagerService;Landroid/os/Handler;)V

    #@bc
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    #@be
    .line 693
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
    .line 724
    sget-object v2, Lcom/android/server/AlarmManagerService;->sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    #@3
    invoke-static {p0, p1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    #@6
    move-result v0

    #@7
    .line 725
    .local v0, "index":I
    if-gez v0, :cond_0

    #@9
    .line 726
    rsub-int/lit8 v2, v0, 0x0

    #@b
    add-int/lit8 v0, v2, -0x1

    #@d
    .line 728
    :cond_0
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@10
    .line 729
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
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    .line 699
    if-eq p2, v0, :cond_0

    #@4
    if-nez p2, :cond_2

    #@6
    .line 700
    .local v0, "isRtc":Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    #@8
    .line 701
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
    .line 703
    :cond_1
    return-wide p0

    #@13
    .end local v0    # "isRtc":Z
    :cond_2
    move v0, v1

    #@14
    .line 699
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
    .line 2084
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
    .line 2085
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    #@e
    .line 2086
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    #@10
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->labelForType(I)Ljava/lang/String;

    #@13
    move-result-object v9

    #@14
    .line 2087
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
    .line 2088
    const-string/jumbo v2, ": "

    #@26
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@29
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@2c
    .line 2089
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
    .line 2084
    add-int/lit8 v0, v0, -0x1

    #@4b
    goto :goto_0

    #@4c
    .line 2083
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
    .line 2062
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
    .line 2063
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    #@e
    .line 2064
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
    .line 2065
    const-string/jumbo v2, ": "

    #@20
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@23
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@26
    .line 2066
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
    .line 2062
    add-int/lit8 v0, v0, -0x1

    #@45
    goto :goto_0

    #@46
    .line 2061
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_0
    return-void
.end method

.method private findFirstWakeupBatchLocked()Lcom/android/server/AlarmManagerService$Batch;
    .locals 4

    #@0
    .prologue
    .line 1686
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 1687
    .local v0, "N":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@9
    .line 1688
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    #@11
    .line 1689
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Batch;->hasWakeups()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_0

    #@17
    .line 1690
    return-object v1

    #@18
    .line 1687
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 1693
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
    .line 1836
    invoke-static {p0, p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    const-string/jumbo v1, "EHm"

    #@9
    .line 1837
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
    .line 1838
    .local v0, "pattern":Ljava/lang/String;
    if-nez p1, :cond_1

    #@13
    const-string/jumbo v2, ""

    #@16
    :goto_1
    return-object v2

    #@17
    .line 1836
    .end local v0    # "pattern":Ljava/lang/String;
    .end local v1    # "skeleton":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "Ehma"

    #@1a
    .restart local v1    # "skeleton":Ljava/lang/String;
    goto :goto_0

    #@1b
    .line 1839
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
    .line 2379
    const-wide/32 v0, 0xdbba0

    #@3
    cmp-long v0, p0, v0

    #@5
    if-gez v0, :cond_0

    #@7
    .line 2382
    long-to-int v0, p0

    #@8
    return v0

    #@9
    .line 2383
    :cond_0
    const-wide/32 v0, 0x5265c0

    #@c
    cmp-long v0, p0, v0

    #@e
    if-gez v0, :cond_1

    #@10
    .line 2385
    const v0, 0xdbba0

    #@13
    return v0

    #@14
    .line 2388
    :cond_1
    const v0, 0x1b7740

    #@17
    return v0
.end method

.method private final getStatsLocked(ILjava/lang/String;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2830
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/util/ArrayMap;

    #@8
    .line 2831
    .local v1, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    if-nez v1, :cond_0

    #@a
    .line 2832
    new-instance v1, Landroid/util/ArrayMap;

    #@c
    .end local v1    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@f
    .line 2833
    .restart local v1    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@14
    .line 2835
    :cond_0
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lcom/android/server/AlarmManagerService$BroadcastStats;

    #@1a
    .line 2836
    .local v0, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    if-nez v0, :cond_1

    #@1c
    .line 2837
    new-instance v0, Lcom/android/server/AlarmManagerService$BroadcastStats;

    #@1e
    .end local v0    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    invoke-direct {v0, p1, p2}, Lcom/android/server/AlarmManagerService$BroadcastStats;-><init>(ILjava/lang/String;)V

    #@21
    .line 2838
    .restart local v0    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    .line 2840
    :cond_1
    return-object v0
.end method

.method private final getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .locals 3
    .param p1, "pi"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 2824
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 2825
    .local v0, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorUid()I

    #@7
    move-result v1

    #@8
    .line 2826
    .local v1, "uid":I
    invoke-direct {p0, v1, v0}, Lcom/android/server/AlarmManagerService;->getStatsLocked(ILjava/lang/String;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    #@b
    move-result-object v2

    #@c
    return-object v2
.end method

.method private native init()J
.end method

.method private static final labelForType(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    #@0
    .prologue
    .line 2071
    packed-switch p0, :pswitch_data_0

    #@3
    .line 2079
    const-string/jumbo v0, "--unknown--"

    #@6
    return-object v0

    #@7
    .line 2072
    :pswitch_0
    const-string/jumbo v0, "RTC"

    #@a
    return-object v0

    #@b
    .line 2073
    :pswitch_1
    const-string/jumbo v0, "RTC_WAKEUP"

    #@e
    return-object v0

    #@f
    .line 2074
    :pswitch_2
    const-string/jumbo v0, "ELAPSED"

    #@12
    return-object v0

    #@13
    .line 2075
    :pswitch_3
    const-string/jumbo v0, "ELAPSED_WAKEUP"

    #@16
    return-object v0

    #@17
    .line 2071
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
    .line 1650
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    #@2
    const/16 v2, 0x800

    #@4
    invoke-direct {v9, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@7
    .line 1651
    .local v9, "bs":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/PrintWriter;

    #@9
    invoke-direct {v1, v9}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    #@c
    .line 1652
    .local v1, "pw":Ljava/io/PrintWriter;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@f
    move-result-wide v6

    #@10
    .line 1653
    .local v6, "nowRTC":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@13
    move-result-wide v4

    #@14
    .line 1654
    .local v4, "nowELAPSED":J
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@19
    move-result v0

    #@1a
    .line 1655
    .local v0, "NZ":I
    const/4 v11, 0x0

    #@1b
    .local v11, "iz":I
    :goto_0
    if-ge v11, v0, :cond_0

    #@1d
    .line 1656
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@1f
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v10

    #@23
    check-cast v10, Lcom/android/server/AlarmManagerService$Batch;

    #@25
    .line 1657
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
    .line 1658
    iget-object v2, v10, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@39
    const-string/jumbo v3, "  "

    #@3c
    move-object v8, p1

    #@3d
    invoke-static/range {v1 .. v8}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    #@40
    .line 1659
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    #@43
    .line 1660
    const-string/jumbo v2, "AlarmManager"

    #@46
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    #@49
    move-result-object v3

    #@4a
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@4d
    .line 1661
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->reset()V

    #@50
    .line 1655
    add-int/lit8 v11, v11, 0x1

    #@52
    goto :goto_0

    #@53
    .line 1649
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
    .line 713
    const-wide/16 v2, 0x0

    #@2
    cmp-long v2, p4, v2

    #@4
    if-nez v2, :cond_1

    #@6
    .line 714
    sub-long v0, p2, p0

    #@8
    .line 716
    .local v0, "futurity":J
    :goto_0
    const-wide/16 v2, 0x2710

    #@a
    cmp-long v2, v0, v2

    #@c
    if-gez v2, :cond_0

    #@e
    .line 717
    const-wide/16 v0, 0x0

    #@10
    .line 719
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
    .end local v0    # "futurity":J
    :cond_1
    move-wide v0, p4

    #@18
    .line 715
    goto :goto_0
.end method

.method private removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    .locals 6
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .param p2, "directReceiver"    # Landroid/app/IAlarmListener;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1870
    const/4 v1, 0x0

    #@2
    .line 1871
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
    .line 1872
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    #@14
    .line 1873
    .local v0, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v0, p1, p2}, Lcom/android/server/AlarmManagerService$Batch;->remove(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    #@17
    move-result v4

    #@18
    or-int/2addr v1, v4

    #@19
    .line 1874
    .local v1, "didRemove":Z
    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    #@1c
    move-result v4

    #@1d
    if-nez v4, :cond_0

    #@1f
    .line 1875
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@24
    .line 1871
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@26
    goto :goto_0

    #@27
    .line 1878
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
    .line 1879
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    #@33
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@36
    move-result-object v4

    #@37
    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    #@39
    invoke-virtual {v4, p1, p2}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    #@3c
    move-result v4

    #@3d
    if-eqz v4, :cond_2

    #@3f
    .line 1881
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    #@41
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@44
    .line 1878
    :cond_2
    add-int/lit8 v2, v2, -0x1

    #@46
    goto :goto_1

    #@47
    .line 1885
    :cond_3
    if-eqz v1, :cond_7

    #@49
    .line 1889
    const/4 v3, 0x0

    #@4a
    .line 1890
    .local v3, "restorePending":Z
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    #@4c
    if-eqz v4, :cond_4

    #@4e
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    #@50
    invoke-virtual {v4, p1, p2}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    #@53
    move-result v4

    #@54
    if-eqz v4, :cond_4

    #@56
    .line 1891
    iput-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    #@58
    .line 1892
    const/4 v3, 0x1

    #@59
    .line 1894
    :cond_4
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    #@5b
    if-eqz v4, :cond_5

    #@5d
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    #@5f
    invoke-virtual {v4, p1, p2}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    #@62
    move-result v4

    #@63
    if-eqz v4, :cond_5

    #@65
    .line 1895
    iput-object v5, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    #@67
    .line 1897
    :cond_5
    const/4 v4, 0x1

    #@68
    invoke-virtual {p0, v4}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    #@6b
    .line 1898
    if-eqz v3, :cond_6

    #@6d
    .line 1899
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->restorePendingWhileIdleAlarmsLocked()V

    #@70
    .line 1901
    :cond_6
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    #@73
    .line 1869
    .end local v3    # "restorePending":Z
    :cond_7
    return-void
.end method

.method private sendNextAlarmClockChanged()V
    .locals 8

    #@0
    .prologue
    .line 1805
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

    #@2
    .line 1806
    .local v3, "pendingUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/AlarmManager$AlarmClockInfo;>;"
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    #@5
    .line 1808
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    #@7
    monitor-enter v6

    #@8
    .line 1809
    :try_start_0
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    #@a
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    #@d
    move-result v0

    #@e
    .line 1810
    .local v0, "N":I
    const/4 v2, 0x0

    #@f
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@11
    .line 1811
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    #@13
    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@16
    move-result v4

    #@17
    .line 1812
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
    .line 1810
    add-int/lit8 v2, v2, 0x1

    #@24
    goto :goto_0

    #@25
    .line 1814
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
    .line 1817
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@2e
    move-result v0

    #@2f
    .line 1818
    const/4 v2, 0x0

    #@30
    :goto_1
    if-ge v2, v0, :cond_1

    #@32
    .line 1819
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    #@35
    move-result v4

    #@36
    .line 1820
    .restart local v4    # "userId":I
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@39
    move-result-object v1

    #@3a
    check-cast v1, Landroid/app/AlarmManager$AlarmClockInfo;

    #@3c
    .line 1821
    .local v1, "alarmClock":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    #@3f
    move-result-object v5

    #@40
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@43
    move-result-object v5

    #@44
    .line 1822
    const-string/jumbo v6, "next_alarm_formatted"

    #@47
    .line 1823
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    #@4a
    move-result-object v7

    #@4b
    invoke-static {v7, v1, v4}, Lcom/android/server/AlarmManagerService;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;

    #@4e
    move-result-object v7

    #@4f
    .line 1821
    invoke-static {v5, v6, v7, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@52
    .line 1826
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    #@55
    move-result-object v5

    #@56
    sget-object v6, Lcom/android/server/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    #@58
    .line 1827
    new-instance v7, Landroid/os/UserHandle;

    #@5a
    invoke-direct {v7, v4}, Landroid/os/UserHandle;-><init>(I)V

    #@5d
    .line 1826
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@60
    .line 1818
    add-int/lit8 v2, v2, 0x1

    #@62
    goto :goto_1

    #@63
    .line 1808
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
    .line 1804
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    return-void
.end method

.method private native set(JIJJ)V
.end method

.method private setImplLocked(IJJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;IZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V
    .locals 26
    .param p1, "type"    # I
    .param p2, "when"    # J
    .param p4, "whenElapsed"    # J
    .param p6, "windowLength"    # J
    .param p8, "maxWhen"    # J
    .param p10, "interval"    # J
    .param p12, "operation"    # Landroid/app/PendingIntent;
    .param p13, "directReceiver"    # Landroid/app/IAlarmListener;
    .param p14, "listenerTag"    # Ljava/lang/String;
    .param p15, "flags"    # I
    .param p16, "doValidate"    # Z
    .param p17, "workSource"    # Landroid/os/WorkSource;
    .param p18, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p19, "callingUid"    # I
    .param p20, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1089
    new-instance v4, Lcom/android/server/AlarmManagerService$Alarm;

    #@2
    move/from16 v5, p1

    #@4
    move-wide/from16 v6, p2

    #@6
    move-wide/from16 v8, p4

    #@8
    move-wide/from16 v10, p6

    #@a
    move-wide/from16 v12, p8

    #@c
    move-wide/from16 v14, p10

    #@e
    move-object/from16 v16, p12

    #@10
    move-object/from16 v17, p13

    #@12
    move-object/from16 v18, p14

    #@14
    move-object/from16 v19, p17

    #@16
    move/from16 v20, p15

    #@18
    move-object/from16 v21, p18

    #@1a
    move/from16 v22, p19

    #@1c
    move-object/from16 v23, p20

    #@1e
    invoke-direct/range {v4 .. v23}, Lcom/android/server/AlarmManagerService$Alarm;-><init>(IJJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;ILandroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V

    #@21
    .line 1093
    .local v4, "a":Lcom/android/server/AlarmManagerService$Alarm;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@24
    move-result-object v5

    #@25
    move/from16 v0, p19

    #@27
    move-object/from16 v1, p20

    #@29
    invoke-interface {v5, v0, v1}, Landroid/app/IActivityManager;->getAppStartMode(ILjava/lang/String;)I

    #@2c
    move-result v5

    #@2d
    .line 1094
    const/4 v6, 0x2

    #@2e
    .line 1093
    if-ne v5, v6, :cond_0

    #@30
    .line 1095
    const-string/jumbo v5, "AlarmManager"

    #@33
    new-instance v6, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v7, "Not setting alarm from "

    #@3b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v6

    #@3f
    move/from16 v0, p19

    #@41
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object v6

    #@45
    const-string/jumbo v7, ":"

    #@48
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v6

    #@4c
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v6

    #@50
    .line 1096
    const-string/jumbo v7, " -- package not allowed to start"

    #@53
    .line 1095
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v6

    #@57
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v6

    #@5b
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5e
    .line 1097
    return-void

    #@5f
    .line 1099
    :catch_0
    move-exception v24

    #@60
    .line 1101
    :cond_0
    move-object/from16 v0, p0

    #@62
    move-object/from16 v1, p12

    #@64
    move-object/from16 v2, p13

    #@66
    invoke-direct {v0, v1, v2}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    #@69
    .line 1102
    const/4 v5, 0x0

    #@6a
    move-object/from16 v0, p0

    #@6c
    move/from16 v1, p16

    #@6e
    invoke-direct {v0, v4, v5, v1}, Lcom/android/server/AlarmManagerService;->setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V

    #@71
    .line 1088
    return-void
.end method

.method private setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V
    .locals 12
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "rebatching"    # Z
    .param p3, "doValidate"    # Z

    #@0
    .prologue
    .line 1106
    iget v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    #@2
    and-int/lit8 v7, v7, 0x10

    #@4
    if-eqz v7, :cond_8

    #@6
    .line 1111
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    #@8
    if-eqz v7, :cond_0

    #@a
    iget-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@c
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    #@e
    iget-wide v10, v7, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@10
    cmp-long v7, v8, v10

    #@12
    if-lez v7, :cond_0

    #@14
    .line 1112
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    #@16
    iget-wide v8, v7, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@18
    iput-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    #@1a
    iput-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@1c
    iput-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    #@1e
    .line 1115
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@21
    move-result-wide v4

    #@22
    .line 1116
    .local v4, "nowElapsed":J
    iget-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@24
    sub-long/2addr v8, v4

    #@25
    invoke-static {v8, v9}, Lcom/android/server/AlarmManagerService;->fuzzForDuration(J)I

    #@28
    move-result v2

    #@29
    .line 1117
    .local v2, "fuzz":I
    if-lez v2, :cond_2

    #@2b
    .line 1118
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mRandom:Ljava/util/Random;

    #@2d
    if-nez v7, :cond_1

    #@2f
    .line 1119
    new-instance v7, Ljava/util/Random;

    #@31
    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    #@34
    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mRandom:Ljava/util/Random;

    #@36
    .line 1121
    :cond_1
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mRandom:Ljava/util/Random;

    #@38
    invoke-virtual {v7, v2}, Ljava/util/Random;->nextInt(I)I

    #@3b
    move-result v1

    #@3c
    .line 1122
    .local v1, "delta":I
    iget-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@3e
    int-to-long v10, v1

    #@3f
    sub-long/2addr v8, v10

    #@40
    iput-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@42
    .line 1130
    iget-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@44
    iput-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    #@46
    iput-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    #@48
    .line 1158
    .end local v1    # "delta":I
    .end local v2    # "fuzz":I
    .end local v4    # "nowElapsed":J
    :cond_2
    iget v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    #@4a
    and-int/lit8 v7, v7, 0x1

    #@4c
    if-eqz v7, :cond_9

    #@4e
    .line 1159
    const/4 v6, -0x1

    #@4f
    .line 1160
    .local v6, "whichBatch":I
    :goto_0
    if-gez v6, :cond_a

    #@51
    .line 1161
    new-instance v0, Lcom/android/server/AlarmManagerService$Batch;

    #@53
    invoke-direct {v0, p0, p1}, Lcom/android/server/AlarmManagerService$Batch;-><init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)V

    #@56
    .line 1162
    .local v0, "batch":Lcom/android/server/AlarmManagerService$Batch;
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@58
    invoke-static {v7, v0}, Lcom/android/server/AlarmManagerService;->addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z

    #@5b
    .line 1173
    :cond_3
    :goto_1
    iget-object v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    #@5d
    if-eqz v7, :cond_4

    #@5f
    .line 1174
    const/4 v7, 0x1

    #@60
    iput-boolean v7, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    #@62
    .line 1177
    :cond_4
    const/4 v3, 0x0

    #@63
    .line 1179
    .local v3, "needRebatch":Z
    iget v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    #@65
    and-int/lit8 v7, v7, 0x10

    #@67
    if-eqz v7, :cond_b

    #@69
    .line 1189
    iput-object p1, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    #@6b
    .line 1190
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    #@6d
    invoke-virtual {v7}, Lcom/android/server/AlarmManagerService$Constants;->updateAllowWhileIdleMinTimeLocked()V

    #@70
    .line 1191
    const/4 v3, 0x1

    #@71
    .line 1204
    :cond_5
    :goto_2
    if-nez p2, :cond_7

    #@73
    .line 1218
    if-eqz v3, :cond_6

    #@75
    .line 1219
    const/4 v7, 0x0

    #@76
    invoke-virtual {p0, v7}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    #@79
    .line 1222
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    #@7c
    .line 1223
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    #@7f
    .line 1105
    :cond_7
    return-void

    #@80
    .line 1133
    .end local v0    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v3    # "needRebatch":Z
    .end local v6    # "whichBatch":I
    :cond_8
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    #@82
    if-eqz v7, :cond_2

    #@84
    .line 1136
    iget v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    #@86
    and-int/lit8 v7, v7, 0xe

    #@88
    if-nez v7, :cond_2

    #@8a
    .line 1140
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    #@8c
    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8f
    .line 1141
    return-void

    #@90
    .line 1159
    :cond_9
    iget-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@92
    iget-wide v10, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    #@94
    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/android/server/AlarmManagerService;->attemptCoalesceLocked(JJ)I

    #@97
    move-result v6

    #@98
    goto :goto_0

    #@99
    .line 1164
    .restart local v6    # "whichBatch":I
    :cond_a
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@9b
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@9e
    move-result-object v0

    #@9f
    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    #@a1
    .line 1165
    .restart local v0    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->add(Lcom/android/server/AlarmManagerService$Alarm;)Z

    #@a4
    move-result v7

    #@a5
    if-eqz v7, :cond_3

    #@a7
    .line 1168
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@a9
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@ac
    .line 1169
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@ae
    invoke-static {v7, v0}, Lcom/android/server/AlarmManagerService;->addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z

    #@b1
    goto :goto_1

    #@b2
    .line 1192
    .restart local v3    # "needRebatch":Z
    :cond_b
    iget v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    #@b4
    and-int/lit8 v7, v7, 0x2

    #@b6
    if-eqz v7, :cond_5

    #@b8
    .line 1193
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    #@ba
    if-eqz v7, :cond_c

    #@bc
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    #@be
    iget-wide v8, v7, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@c0
    iget-wide v10, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@c2
    cmp-long v7, v8, v10

    #@c4
    if-lez v7, :cond_5

    #@c6
    .line 1194
    :cond_c
    iput-object p1, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    #@c8
    .line 1198
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    #@ca
    if-eqz v7, :cond_5

    #@cc
    .line 1199
    const/4 v3, 0x1

    #@cd
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
    .line 2038
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    #@7
    cmp-long v0, v0, v10

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 2042
    cmp-long v0, p2, v10

    #@d
    if-gez v0, :cond_0

    #@f
    .line 2043
    const-wide/16 v4, 0x0

    #@11
    .line 2044
    .local v4, "alarmSeconds":J
    const-wide/16 v6, 0x0

    #@13
    .line 2050
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
    .line 2037
    .end local v4    # "alarmSeconds":J
    .end local v6    # "alarmNanoseconds":J
    :goto_1
    return-void

    #@1b
    .line 2046
    :cond_0
    div-long v4, p2, v2

    #@1d
    .line 2047
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
    .line 2052
    .end local v4    # "alarmSeconds":J
    .end local v6    # "alarmNanoseconds":J
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@26
    move-result-object v8

    #@27
    .line 2053
    .local v8, "msg":Landroid/os/Message;
    iput v9, v8, Landroid/os/Message;->what:I

    #@29
    .line 2055
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    #@2b
    invoke-virtual {v0, v9}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    #@2e
    .line 2056
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    #@30
    invoke-virtual {v0, v8, p2, p3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    #@33
    goto :goto_1
.end method

.method private updateNextAlarmClockLocked()V
    .locals 20

    #@0
    .prologue
    .line 1718
    move-object/from16 v0, p0

    #@2
    iget-boolean v15, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    #@4
    if-nez v15, :cond_0

    #@6
    .line 1719
    return-void

    #@7
    .line 1721
    :cond_0
    const/4 v15, 0x0

    #@8
    move-object/from16 v0, p0

    #@a
    iput-boolean v15, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    #@c
    .line 1723
    move-object/from16 v0, p0

    #@e
    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

    #@10
    .line 1724
    .local v13, "nextForUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/AlarmManager$AlarmClockInfo;>;"
    invoke-virtual {v13}, Landroid/util/SparseArray;->clear()V

    #@13
    .line 1726
    move-object/from16 v0, p0

    #@15
    iget-object v15, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    #@1a
    move-result v3

    #@1b
    .line 1727
    .local v3, "N":I
    const/4 v10, 0x0

    #@1c
    .local v10, "i":I
    :goto_0
    if-ge v10, v3, :cond_4

    #@1e
    .line 1728
    move-object/from16 v0, p0

    #@20
    iget-object v15, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@25
    move-result-object v15

    #@26
    check-cast v15, Lcom/android/server/AlarmManagerService$Batch;

    #@28
    iget-object v7, v15, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@2a
    .line 1729
    .local v7, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@2d
    move-result v2

    #@2e
    .line 1731
    .local v2, "M":I
    const/4 v11, 0x0

    #@2f
    .local v11, "j":I
    :goto_1
    if-ge v11, v2, :cond_3

    #@31
    .line 1732
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@34
    move-result-object v6

    #@35
    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    #@37
    .line 1733
    .local v6, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v15, v6, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    #@39
    if-eqz v15, :cond_1

    #@3b
    .line 1734
    iget v15, v6, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    #@3d
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    #@40
    move-result v14

    #@41
    .line 1735
    .local v14, "userId":I
    move-object/from16 v0, p0

    #@43
    iget-object v15, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    #@45
    invoke-virtual {v15, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@48
    move-result-object v8

    #@49
    check-cast v8, Landroid/app/AlarmManager$AlarmClockInfo;

    #@4b
    .line 1744
    .local v8, "current":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@4e
    move-result-object v15

    #@4f
    if-nez v15, :cond_2

    #@51
    .line 1745
    iget-object v15, v6, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    #@53
    invoke-virtual {v13, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@56
    .line 1731
    .end local v8    # "current":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v14    # "userId":I
    :cond_1
    :goto_2
    add-int/lit8 v11, v11, 0x1

    #@58
    goto :goto_1

    #@59
    .line 1746
    .restart local v8    # "current":Landroid/app/AlarmManager$AlarmClockInfo;
    .restart local v14    # "userId":I
    :cond_2
    iget-object v15, v6, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    #@5b
    invoke-virtual {v15, v8}, Landroid/app/AlarmManager$AlarmClockInfo;->equals(Ljava/lang/Object;)Z

    #@5e
    move-result v15

    #@5f
    if-eqz v15, :cond_1

    #@61
    .line 1747
    invoke-virtual {v8}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    #@64
    move-result-wide v16

    #@65
    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@68
    move-result-object v15

    #@69
    check-cast v15, Landroid/app/AlarmManager$AlarmClockInfo;

    #@6b
    invoke-virtual {v15}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    #@6e
    move-result-wide v18

    #@6f
    cmp-long v15, v16, v18

    #@71
    if-gtz v15, :cond_1

    #@73
    .line 1749
    invoke-virtual {v13, v14, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@76
    goto :goto_2

    #@77
    .line 1727
    .end local v6    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v8    # "current":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v14    # "userId":I
    :cond_3
    add-int/lit8 v10, v10, 0x1

    #@79
    goto :goto_0

    #@7a
    .line 1756
    .end local v2    # "M":I
    .end local v7    # "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v11    # "j":I
    :cond_4
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    #@7d
    move-result v4

    #@7e
    .line 1757
    .local v4, "NN":I
    const/4 v10, 0x0

    #@7f
    :goto_3
    if-ge v10, v4, :cond_6

    #@81
    .line 1758
    invoke-virtual {v13, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@84
    move-result-object v12

    #@85
    check-cast v12, Landroid/app/AlarmManager$AlarmClockInfo;

    #@87
    .line 1759
    .local v12, "newAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {v13, v10}, Landroid/util/SparseArray;->keyAt(I)I

    #@8a
    move-result v14

    #@8b
    .line 1760
    .restart local v14    # "userId":I
    move-object/from16 v0, p0

    #@8d
    iget-object v15, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    #@8f
    invoke-virtual {v15, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@92
    move-result-object v9

    #@93
    check-cast v9, Landroid/app/AlarmManager$AlarmClockInfo;

    #@95
    .line 1761
    .local v9, "currentAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {v12, v9}, Landroid/app/AlarmManager$AlarmClockInfo;->equals(Ljava/lang/Object;)Z

    #@98
    move-result v15

    #@99
    if-nez v15, :cond_5

    #@9b
    .line 1762
    move-object/from16 v0, p0

    #@9d
    invoke-direct {v0, v14, v12}, Lcom/android/server/AlarmManagerService;->updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V

    #@a0
    .line 1757
    :cond_5
    add-int/lit8 v10, v10, 0x1

    #@a2
    goto :goto_3

    #@a3
    .line 1767
    .end local v9    # "currentAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v12    # "newAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v14    # "userId":I
    :cond_6
    move-object/from16 v0, p0

    #@a5
    iget-object v15, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    #@a7
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    #@aa
    move-result v5

    #@ab
    .line 1768
    .local v5, "NNN":I
    add-int/lit8 v10, v5, -0x1

    #@ad
    :goto_4
    if-ltz v10, :cond_8

    #@af
    .line 1769
    move-object/from16 v0, p0

    #@b1
    iget-object v15, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    #@b3
    invoke-virtual {v15, v10}, Landroid/util/SparseArray;->keyAt(I)I

    #@b6
    move-result v14

    #@b7
    .line 1770
    .restart local v14    # "userId":I
    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@ba
    move-result-object v15

    #@bb
    if-nez v15, :cond_7

    #@bd
    .line 1771
    const/4 v15, 0x0

    #@be
    move-object/from16 v0, p0

    #@c0
    invoke-direct {v0, v14, v15}, Lcom/android/server/AlarmManagerService;->updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V

    #@c3
    .line 1768
    :cond_7
    add-int/lit8 v10, v10, -0x1

    #@c5
    goto :goto_4

    #@c6
    .line 1717
    .end local v14    # "userId":I
    :cond_8
    return-void
.end method

.method private updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    .line 1778
    if-eqz p2, :cond_0

    #@3
    .line 1783
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@8
    .line 1791
    :goto_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    #@a
    const/4 v1, 0x1

    #@b
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@e
    .line 1792
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    #@10
    invoke-virtual {v0, v2}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    #@13
    .line 1793
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    #@15
    invoke-virtual {v0, v2}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendEmptyMessage(I)Z

    #@18
    .line 1777
    return-void

    #@19
    .line 1788
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
    .line 1682
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
    .line 734
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 735
    .local v0, "N":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@9
    .line 736
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    #@11
    .line 737
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
    .line 738
    return v2

    #@1e
    .line 735
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@20
    goto :goto_0

    #@21
    .line 741
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    const/4 v3, -0x1

    #@22
    return v3
.end method

.method calculateDeliveryPriorities(Ljava/util/ArrayList;)V
    .locals 8
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
    .line 642
    .local p1, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v0

    #@4
    .line 643
    .local v0, "N":I
    const/4 v4, 0x0

    #@5
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_7

    #@7
    .line 644
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    #@d
    .line 647
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v6, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@f
    if-eqz v6, :cond_3

    #@11
    .line 648
    const-string/jumbo v6, "android.intent.action.TIME_TICK"

    #@14
    iget-object v7, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@16
    invoke-virtual {v7}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    #@19
    move-result-object v7

    #@1a
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@1d
    move-result-object v7

    #@1e
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v6

    #@22
    .line 647
    if-eqz v6, :cond_3

    #@24
    .line 649
    const/4 v3, 0x0

    #@25
    .line 656
    .local v3, "alarmPrio":I
    :goto_1
    iget-object v5, v1, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    #@27
    .line 657
    .local v5, "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    iget-object v6, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@29
    if-eqz v6, :cond_5

    #@2b
    .line 658
    iget-object v6, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@2d
    invoke-virtual {v6}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    .line 660
    .local v2, "alarmPackage":Ljava/lang/String;
    :goto_2
    if-nez v5, :cond_0

    #@33
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    #@35
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    move-result-object v5

    #@39
    .end local v5    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    check-cast v5, Lcom/android/server/AlarmManagerService$PriorityClass;

    #@3b
    .line 661
    .restart local v5    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    :cond_0
    if-nez v5, :cond_1

    #@3d
    .line 662
    new-instance v5, Lcom/android/server/AlarmManagerService$PriorityClass;

    #@3f
    .end local v5    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    invoke-direct {v5, p0}, Lcom/android/server/AlarmManagerService$PriorityClass;-><init>(Lcom/android/server/AlarmManagerService;)V

    #@42
    iput-object v5, v1, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    #@44
    .line 663
    .restart local v5    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    #@46
    invoke-virtual {v6, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@49
    .line 665
    :cond_1
    iput-object v5, v1, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    #@4b
    .line 667
    iget v6, v5, Lcom/android/server/AlarmManagerService$PriorityClass;->seq:I

    #@4d
    iget v7, p0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    #@4f
    if-eq v6, v7, :cond_6

    #@51
    .line 669
    iput v3, v5, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    #@53
    .line 670
    iget v6, p0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    #@55
    iput v6, v5, Lcom/android/server/AlarmManagerService$PriorityClass;->seq:I

    #@57
    .line 643
    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    #@59
    goto :goto_0

    #@5a
    .line 650
    .end local v2    # "alarmPackage":Ljava/lang/String;
    .end local v3    # "alarmPrio":I
    .end local v5    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    :cond_3
    iget-boolean v6, v1, Lcom/android/server/AlarmManagerService$Alarm;->wakeup:Z

    #@5c
    if-eqz v6, :cond_4

    #@5e
    .line 651
    const/4 v3, 0x1

    #@5f
    .restart local v3    # "alarmPrio":I
    goto :goto_1

    #@60
    .line 653
    .end local v3    # "alarmPrio":I
    :cond_4
    const/4 v3, 0x2

    #@61
    .restart local v3    # "alarmPrio":I
    goto :goto_1

    #@62
    .line 659
    .restart local v5    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    :cond_5
    iget-object v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    #@64
    .restart local v2    # "alarmPackage":Ljava/lang/String;
    goto :goto_2

    #@65
    .line 675
    :cond_6
    iget v6, v5, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    #@67
    if-ge v3, v6, :cond_2

    #@69
    .line 676
    iput v3, v5, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    #@6b
    goto :goto_3

    #@6c
    .line 641
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v2    # "alarmPackage":Ljava/lang/String;
    .end local v3    # "alarmPrio":I
    .end local v5    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    :cond_7
    return-void
.end method

.method checkAllowNonWakeupDelayLocked(J)Z
    .locals 9
    .param p1, "nowELAPSED"    # J

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2393
    iget-boolean v3, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 2394
    return v2

    #@6
    .line 2396
    :cond_0
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    #@8
    const-wide/16 v6, 0x0

    #@a
    cmp-long v3, v4, v6

    #@c
    if-gtz v3, :cond_1

    #@e
    .line 2397
    return v2

    #@f
    .line 2399
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
    .line 2403
    return v2

    #@1e
    .line 2405
    :cond_2
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    #@20
    sub-long v0, p1, v4

    #@22
    .line 2406
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
    .line 2365
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    #@2
    sub-long v0, p1, v2

    #@4
    .line 2366
    .local v0, "timeSinceOn":J
    const-wide/32 v2, 0x493e0

    #@7
    cmp-long v2, v0, v2

    #@9
    if-gez v2, :cond_0

    #@b
    .line 2368
    const-wide/32 v2, 0x1d4c0

    #@e
    return-wide v2

    #@f
    .line 2369
    :cond_0
    const-wide/32 v2, 0x1b7740

    #@12
    cmp-long v2, v0, v2

    #@14
    if-gez v2, :cond_1

    #@16
    .line 2371
    const-wide/32 v2, 0xdbba0

    #@19
    return-wide v2

    #@1a
    .line 2374
    :cond_1
    const-wide/32 v2, 0x36ee80

    #@1d
    return-wide v2
.end method

.method deliverAlarmsLocked(Ljava/util/ArrayList;J)V
    .locals 8
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
    .line 2410
    .local p1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    iput-wide p2, p0, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    #@2
    .line 2411
    const/4 v3, 0x0

    #@3
    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v5

    #@7
    if-ge v3, v5, :cond_3

    #@9
    .line 2412
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    #@f
    .line 2413
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    #@11
    and-int/lit8 v5, v5, 0x4

    #@13
    if-eqz v5, :cond_0

    #@15
    const/4 v1, 0x1

    #@16
    .line 2419
    .local v1, "allowWhileIdle":Z
    :goto_1
    :try_start_0
    iget-object v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    #@18
    if-eqz v5, :cond_1

    #@1a
    iget-object v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    #@1c
    invoke-virtual {v5}, Landroid/os/WorkSource;->size()I

    #@1f
    move-result v5

    #@20
    if-lez v5, :cond_1

    #@22
    .line 2420
    const/4 v4, 0x0

    #@23
    .local v4, "wi":I
    :goto_2
    iget-object v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    #@25
    invoke-virtual {v5}, Landroid/os/WorkSource;->size()I

    #@28
    move-result v5

    #@29
    if-ge v4, v5, :cond_2

    #@2b
    .line 2422
    iget-object v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@2d
    iget-object v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    #@2f
    invoke-virtual {v6, v4}, Landroid/os/WorkSource;->get(I)I

    #@32
    move-result v6

    #@33
    iget-object v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    #@35
    .line 2421
    invoke-static {v5, v6, v7}, Landroid/app/ActivityManagerNative;->noteAlarmStart(Landroid/app/PendingIntent;ILjava/lang/String;)V

    #@38
    .line 2420
    add-int/lit8 v4, v4, 0x1

    #@3a
    goto :goto_2

    #@3b
    .line 2413
    .end local v1    # "allowWhileIdle":Z
    .end local v4    # "wi":I
    :cond_0
    const/4 v1, 0x0

    #@3c
    .restart local v1    # "allowWhileIdle":Z
    goto :goto_1

    #@3d
    .line 2426
    :cond_1
    iget-object v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@3f
    iget v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    #@41
    iget-object v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    #@43
    .line 2425
    invoke-static {v5, v6, v7}, Landroid/app/ActivityManagerNative;->noteAlarmStart(Landroid/app/PendingIntent;ILjava/lang/String;)V

    #@46
    .line 2429
    :cond_2
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/AlarmManagerService$DeliveryTracker;

    #@48
    invoke-virtual {v5, v0, p2, p3, v1}, Lcom/android/server/AlarmManagerService$DeliveryTracker;->deliverLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@4b
    .line 2411
    :goto_3
    add-int/lit8 v3, v3, 0x1

    #@4d
    goto :goto_0

    #@4e
    .line 2430
    :catch_0
    move-exception v2

    #@4f
    .line 2431
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v5, "AlarmManager"

    #@52
    const-string/jumbo v6, "Failure sending alarm."

    #@55
    invoke-static {v5, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@58
    goto :goto_3

    #@59
    .line 2409
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v1    # "allowWhileIdle":Z
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_3
    return-void
.end method

.method dumpImpl(Ljava/io/PrintWriter;)V
    .locals 47
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 1365
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    #@4
    move-object/from16 v46, v0

    #@6
    monitor-enter v46

    #@7
    .line 1366
    :try_start_0
    const-string/jumbo v5, "Current Alarm Manager state:"

    #@a
    move-object/from16 v0, p1

    #@c
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f
    .line 1367
    move-object/from16 v0, p0

    #@11
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    #@13
    move-object/from16 v0, p1

    #@15
    invoke-virtual {v5, v0}, Lcom/android/server/AlarmManagerService$Constants;->dump(Ljava/io/PrintWriter;)V

    #@18
    .line 1368
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@1b
    .line 1370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1e
    move-result-wide v10

    #@1f
    .line 1371
    .local v10, "nowRTC":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@22
    move-result-wide v8

    #@23
    .line 1372
    .local v8, "nowELAPSED":J
    new-instance v12, Ljava/text/SimpleDateFormat;

    #@25
    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss"

    #@28
    invoke-direct {v12, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@2b
    .line 1374
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
    .line 1375
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
    .line 1376
    const-string/jumbo v5, " nowELAPSED="

    #@51
    move-object/from16 v0, p1

    #@53
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@56
    move-object/from16 v0, p1

    #@58
    invoke-virtual {v0, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    #@5b
    .line 1377
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@5e
    .line 1378
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
    .line 1379
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
    .line 1380
    const-string/jumbo v5, "  mLastTimeChangeRealtime="

    #@8c
    move-object/from16 v0, p1

    #@8e
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@91
    .line 1381
    move-object/from16 v0, p0

    #@93
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mLastTimeChangeRealtime:J

    #@95
    move-object/from16 v0, p1

    #@97
    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@9a
    .line 1382
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@9d
    .line 1383
    move-object/from16 v0, p0

    #@9f
    iget-boolean v5, v0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    #@a1
    if-nez v5, :cond_0

    #@a3
    .line 1384
    const-string/jumbo v5, "  Time since non-interactive: "

    #@a6
    move-object/from16 v0, p1

    #@a8
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ab
    .line 1385
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
    .line 1386
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@b9
    .line 1387
    const-string/jumbo v5, "  Max wakeup delay: "

    #@bc
    move-object/from16 v0, p1

    #@be
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c1
    .line 1388
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
    .line 1389
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@cf
    .line 1390
    const-string/jumbo v5, "  Time since last dispatch: "

    #@d2
    move-object/from16 v0, p1

    #@d4
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d7
    .line 1391
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
    .line 1392
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@e5
    .line 1393
    const-string/jumbo v5, "  Next non-wakeup delivery time: "

    #@e8
    move-object/from16 v0, p1

    #@ea
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ed
    .line 1394
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
    .line 1395
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@fb
    .line 1398
    :cond_0
    move-object/from16 v0, p0

    #@fd
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    #@ff
    sub-long v14, v10, v8

    #@101
    add-long v34, v6, v14

    #@103
    .line 1399
    .local v34, "nextWakeupRTC":J
    move-object/from16 v0, p0

    #@105
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    #@107
    sub-long v14, v10, v8

    #@109
    add-long v32, v6, v14

    #@10b
    .line 1400
    .local v32, "nextNonWakeupRTC":J
    const-string/jumbo v5, "  Next non-wakeup alarm: "

    #@10e
    move-object/from16 v0, p1

    #@110
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@113
    .line 1401
    move-object/from16 v0, p0

    #@115
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    #@117
    move-object/from16 v0, p1

    #@119
    invoke-static {v6, v7, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@11c
    .line 1402
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
    .line 1403
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
    .line 1404
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
    .line 1405
    const-string/jumbo v5, "  Last wakeup: "

    #@160
    move-object/from16 v0, p1

    #@162
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@165
    move-object/from16 v0, p0

    #@167
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mLastWakeup:J

    #@169
    move-object/from16 v0, p1

    #@16b
    invoke-static {v6, v7, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@16e
    .line 1406
    const-string/jumbo v5, " set at "

    #@171
    move-object/from16 v0, p1

    #@173
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@176
    move-object/from16 v0, p0

    #@178
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mLastWakeupSet:J

    #@17a
    move-object/from16 v0, p1

    #@17c
    invoke-static {v6, v7, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@17f
    .line 1407
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@182
    .line 1408
    const-string/jumbo v5, "  Num time change events: "

    #@185
    move-object/from16 v0, p1

    #@187
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18a
    move-object/from16 v0, p0

    #@18c
    iget v5, v0, Lcom/android/server/AlarmManagerService;->mNumTimeChanged:I

    #@18e
    move-object/from16 v0, p1

    #@190
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    #@193
    .line 1409
    new-instance v5, Ljava/lang/StringBuilder;

    #@195
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@198
    const-string/jumbo v6, "  mDeviceIdleUserWhitelist="

    #@19b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19e
    move-result-object v5

    #@19f
    move-object/from16 v0, p0

    #@1a1
    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mDeviceIdleUserWhitelist:[I

    #@1a3
    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    #@1a6
    move-result-object v6

    #@1a7
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1aa
    move-result-object v5

    #@1ab
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ae
    move-result-object v5

    #@1af
    move-object/from16 v0, p1

    #@1b1
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1b4
    .line 1411
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@1b7
    .line 1412
    const-string/jumbo v5, "  Next alarm clock information: "

    #@1ba
    move-object/from16 v0, p1

    #@1bc
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1bf
    .line 1413
    new-instance v45, Ljava/util/TreeSet;

    #@1c1
    invoke-direct/range {v45 .. v45}, Ljava/util/TreeSet;-><init>()V

    #@1c4
    .line 1414
    .local v45, "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    const/16 v26, 0x0

    #@1c6
    .local v26, "i":I
    :goto_0
    move-object/from16 v0, p0

    #@1c8
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    #@1ca
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@1cd
    move-result v5

    #@1ce
    move/from16 v0, v26

    #@1d0
    if-ge v0, v5, :cond_1

    #@1d2
    .line 1415
    move-object/from16 v0, p0

    #@1d4
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    #@1d6
    move/from16 v0, v26

    #@1d8
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    #@1db
    move-result v5

    #@1dc
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1df
    move-result-object v5

    #@1e0
    move-object/from16 v0, v45

    #@1e2
    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    #@1e5
    .line 1414
    add-int/lit8 v26, v26, 0x1

    #@1e7
    goto :goto_0

    #@1e8
    .line 1417
    :cond_1
    const/16 v26, 0x0

    #@1ea
    :goto_1
    move-object/from16 v0, p0

    #@1ec
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    #@1ee
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    #@1f1
    move-result v5

    #@1f2
    move/from16 v0, v26

    #@1f4
    if-ge v0, v5, :cond_2

    #@1f6
    .line 1418
    move-object/from16 v0, p0

    #@1f8
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    #@1fa
    move/from16 v0, v26

    #@1fc
    invoke-virtual {v5, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@1ff
    move-result v5

    #@200
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@203
    move-result-object v5

    #@204
    move-object/from16 v0, v45

    #@206
    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    #@209
    .line 1417
    add-int/lit8 v26, v26, 0x1

    #@20b
    goto :goto_1

    #@20c
    .line 1420
    :cond_2
    invoke-interface/range {v45 .. v45}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20f
    move-result-object v44

    #@210
    .local v44, "user$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->hasNext()Z

    #@213
    move-result v5

    #@214
    if-eqz v5, :cond_5

    #@216
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@219
    move-result-object v5

    #@21a
    check-cast v5, Ljava/lang/Integer;

    #@21c
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@21f
    move-result v43

    #@220
    .line 1421
    .local v43, "user":I
    move-object/from16 v0, p0

    #@222
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    #@224
    move/from16 v0, v43

    #@226
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@229
    move-result-object v31

    #@22a
    check-cast v31, Landroid/app/AlarmManager$AlarmClockInfo;

    #@22c
    .line 1422
    .local v31, "next":Landroid/app/AlarmManager$AlarmClockInfo;
    if-eqz v31, :cond_4

    #@22e
    invoke-virtual/range {v31 .. v31}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    #@231
    move-result-wide v38

    #@232
    .line 1423
    .local v38, "time":J
    :goto_3
    move-object/from16 v0, p0

    #@234
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    #@236
    move/from16 v0, v43

    #@238
    invoke-virtual {v5, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@23b
    move-result v36

    #@23c
    .line 1424
    .local v36, "pendingSend":Z
    const-string/jumbo v5, "    user:"

    #@23f
    move-object/from16 v0, p1

    #@241
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@244
    move-object/from16 v0, p1

    #@246
    move/from16 v1, v43

    #@248
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@24b
    .line 1425
    const-string/jumbo v5, " pendingSend:"

    #@24e
    move-object/from16 v0, p1

    #@250
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@253
    move-object/from16 v0, p1

    #@255
    move/from16 v1, v36

    #@257
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    #@25a
    .line 1426
    const-string/jumbo v5, " time:"

    #@25d
    move-object/from16 v0, p1

    #@25f
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@262
    move-object/from16 v0, p1

    #@264
    move-wide/from16 v1, v38

    #@266
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@269
    .line 1427
    const-wide/16 v6, 0x0

    #@26b
    cmp-long v5, v38, v6

    #@26d
    if-lez v5, :cond_3

    #@26f
    .line 1428
    const-string/jumbo v5, " = "

    #@272
    move-object/from16 v0, p1

    #@274
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@277
    new-instance v5, Ljava/util/Date;

    #@279
    move-wide/from16 v0, v38

    #@27b
    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    #@27e
    invoke-virtual {v12, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@281
    move-result-object v5

    #@282
    move-object/from16 v0, p1

    #@284
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@287
    .line 1429
    const-string/jumbo v5, " = "

    #@28a
    move-object/from16 v0, p1

    #@28c
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@28f
    move-wide/from16 v0, v38

    #@291
    move-object/from16 v2, p1

    #@293
    invoke-static {v0, v1, v10, v11, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@296
    .line 1431
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@299
    goto/16 :goto_2

    #@29b
    .line 1365
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

    #@29c
    monitor-exit v46

    #@29d
    throw v5

    #@29e
    .line 1422
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

    #@2a0
    .restart local v38    # "time":J
    goto :goto_3

    #@2a1
    .line 1433
    .end local v31    # "next":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v38    # "time":J
    .end local v43    # "user":I
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    #@2a3
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@2a5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@2a8
    move-result v5

    #@2a9
    if-lez v5, :cond_6

    #@2ab
    .line 1434
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@2ae
    .line 1435
    const-string/jumbo v5, "  Pending alarm batches: "

    #@2b1
    move-object/from16 v0, p1

    #@2b3
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2b6
    .line 1436
    move-object/from16 v0, p0

    #@2b8
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@2ba
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@2bd
    move-result v5

    #@2be
    move-object/from16 v0, p1

    #@2c0
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    #@2c3
    .line 1437
    move-object/from16 v0, p0

    #@2c5
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@2c7
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2ca
    move-result-object v21

    #@2cb
    .local v21, "b$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    #@2ce
    move-result v5

    #@2cf
    if-eqz v5, :cond_6

    #@2d1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2d4
    move-result-object v4

    #@2d5
    check-cast v4, Lcom/android/server/AlarmManagerService$Batch;

    #@2d7
    .line 1438
    .local v4, "b":Lcom/android/server/AlarmManagerService$Batch;
    move-object/from16 v0, p1

    #@2d9
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@2dc
    const/16 v5, 0x3a

    #@2de
    move-object/from16 v0, p1

    #@2e0
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(C)V

    #@2e3
    .line 1439
    iget-object v6, v4, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@2e5
    const-string/jumbo v7, "    "

    #@2e8
    move-object/from16 v5, p1

    #@2ea
    invoke-static/range {v5 .. v12}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    #@2ed
    goto :goto_4

    #@2ee
    .line 1442
    .end local v4    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v21    # "b$iterator":Ljava/util/Iterator;
    :cond_6
    move-object/from16 v0, p0

    #@2f0
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    #@2f2
    if-nez v5, :cond_7

    #@2f4
    move-object/from16 v0, p0

    #@2f6
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    #@2f8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@2fb
    move-result v5

    #@2fc
    if-lez v5, :cond_8

    #@2fe
    .line 1443
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@301
    .line 1444
    const-string/jumbo v5, "    Idle mode state:"

    #@304
    move-object/from16 v0, p1

    #@306
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@309
    .line 1445
    const-string/jumbo v5, "      Idling until: "

    #@30c
    move-object/from16 v0, p1

    #@30e
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@311
    .line 1446
    move-object/from16 v0, p0

    #@313
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    #@315
    if-eqz v5, :cond_a

    #@317
    .line 1447
    move-object/from16 v0, p0

    #@319
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    #@31b
    move-object/from16 v0, p1

    #@31d
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@320
    .line 1448
    move-object/from16 v0, p0

    #@322
    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    #@324
    const-string/jumbo v15, "        "

    #@327
    move-object/from16 v14, p1

    #@329
    move-wide/from16 v16, v10

    #@32b
    move-wide/from16 v18, v8

    #@32d
    move-object/from16 v20, v12

    #@32f
    invoke-virtual/range {v13 .. v20}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    #@332
    .line 1452
    :goto_5
    const-string/jumbo v5, "      Pending alarms:"

    #@335
    move-object/from16 v0, p1

    #@337
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@33a
    .line 1453
    move-object/from16 v0, p0

    #@33c
    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    #@33e
    const-string/jumbo v7, "      "

    #@341
    move-object/from16 v5, p1

    #@343
    invoke-static/range {v5 .. v12}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    #@346
    .line 1455
    :cond_8
    move-object/from16 v0, p0

    #@348
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    #@34a
    if-eqz v5, :cond_9

    #@34c
    .line 1456
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@34f
    .line 1457
    const-string/jumbo v5, "  Next wake from idle: "

    #@352
    move-object/from16 v0, p1

    #@354
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@357
    move-object/from16 v0, p0

    #@359
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    #@35b
    move-object/from16 v0, p1

    #@35d
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@360
    .line 1458
    move-object/from16 v0, p0

    #@362
    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    #@364
    const-string/jumbo v15, "    "

    #@367
    move-object/from16 v14, p1

    #@369
    move-wide/from16 v16, v10

    #@36b
    move-wide/from16 v18, v8

    #@36d
    move-object/from16 v20, v12

    #@36f
    invoke-virtual/range {v13 .. v20}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    #@372
    .line 1461
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@375
    .line 1462
    const-string/jumbo v5, "  Past-due non-wakeup alarms: "

    #@378
    move-object/from16 v0, p1

    #@37a
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@37d
    .line 1463
    move-object/from16 v0, p0

    #@37f
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    #@381
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@384
    move-result v5

    #@385
    if-lez v5, :cond_b

    #@387
    .line 1464
    move-object/from16 v0, p0

    #@389
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    #@38b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@38e
    move-result v5

    #@38f
    move-object/from16 v0, p1

    #@391
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    #@394
    .line 1465
    move-object/from16 v0, p0

    #@396
    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    #@398
    const-string/jumbo v7, "    "

    #@39b
    move-object/from16 v5, p1

    #@39d
    invoke-static/range {v5 .. v12}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    #@3a0
    .line 1469
    :goto_6
    const-string/jumbo v5, "    Number of delayed alarms: "

    #@3a3
    move-object/from16 v0, p1

    #@3a5
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3a8
    move-object/from16 v0, p0

    #@3aa
    iget v5, v0, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    #@3ac
    move-object/from16 v0, p1

    #@3ae
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    #@3b1
    .line 1470
    const-string/jumbo v5, ", total delay time: "

    #@3b4
    move-object/from16 v0, p1

    #@3b6
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3b9
    move-object/from16 v0, p0

    #@3bb
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    #@3bd
    move-object/from16 v0, p1

    #@3bf
    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@3c2
    .line 1471
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@3c5
    .line 1472
    const-string/jumbo v5, "    Max delay time: "

    #@3c8
    move-object/from16 v0, p1

    #@3ca
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3cd
    move-object/from16 v0, p0

    #@3cf
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    #@3d1
    move-object/from16 v0, p1

    #@3d3
    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@3d6
    .line 1473
    const-string/jumbo v5, ", max non-interactive time: "

    #@3d9
    move-object/from16 v0, p1

    #@3db
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3de
    .line 1474
    move-object/from16 v0, p0

    #@3e0
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNonInteractiveTime:J

    #@3e2
    move-object/from16 v0, p1

    #@3e4
    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@3e7
    .line 1475
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@3ea
    .line 1477
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@3ed
    .line 1478
    const-string/jumbo v5, "  Broadcast ref count: "

    #@3f0
    move-object/from16 v0, p1

    #@3f2
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3f5
    move-object/from16 v0, p0

    #@3f7
    iget v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    #@3f9
    move-object/from16 v0, p1

    #@3fb
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    #@3fe
    .line 1479
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@401
    .line 1481
    move-object/from16 v0, p0

    #@403
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    #@405
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@408
    move-result v5

    #@409
    if-lez v5, :cond_d

    #@40b
    .line 1482
    const-string/jumbo v5, "Outstanding deliveries:"

    #@40e
    move-object/from16 v0, p1

    #@410
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@413
    .line 1483
    const/16 v26, 0x0

    #@415
    :goto_7
    move-object/from16 v0, p0

    #@417
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    #@419
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@41c
    move-result v5

    #@41d
    move/from16 v0, v26

    #@41f
    if-ge v0, v5, :cond_c

    #@421
    .line 1484
    const-string/jumbo v5, "   #"

    #@424
    move-object/from16 v0, p1

    #@426
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@429
    move-object/from16 v0, p1

    #@42b
    move/from16 v1, v26

    #@42d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@430
    const-string/jumbo v5, ": "

    #@433
    move-object/from16 v0, p1

    #@435
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@438
    .line 1485
    move-object/from16 v0, p0

    #@43a
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    #@43c
    move/from16 v0, v26

    #@43e
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@441
    move-result-object v5

    #@442
    move-object/from16 v0, p1

    #@444
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@447
    .line 1483
    add-int/lit8 v26, v26, 0x1

    #@449
    goto :goto_7

    #@44a
    .line 1450
    :cond_a
    const-string/jumbo v5, "null"

    #@44d
    move-object/from16 v0, p1

    #@44f
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@452
    goto/16 :goto_5

    #@454
    .line 1467
    :cond_b
    const-string/jumbo v5, "(none)"

    #@457
    move-object/from16 v0, p1

    #@459
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@45c
    goto/16 :goto_6

    #@45e
    .line 1487
    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@461
    .line 1490
    :cond_d
    const-string/jumbo v5, "  mAllowWhileIdleMinTime="

    #@464
    move-object/from16 v0, p1

    #@466
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@469
    .line 1491
    move-object/from16 v0, p0

    #@46b
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mAllowWhileIdleMinTime:J

    #@46d
    move-object/from16 v0, p1

    #@46f
    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@472
    .line 1492
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@475
    .line 1493
    move-object/from16 v0, p0

    #@477
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    #@479
    invoke-virtual {v5}, Landroid/util/SparseLongArray;->size()I

    #@47c
    move-result v5

    #@47d
    if-lez v5, :cond_e

    #@47f
    .line 1494
    const-string/jumbo v5, "  Last allow while idle dispatch times:"

    #@482
    move-object/from16 v0, p1

    #@484
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@487
    .line 1495
    const/16 v26, 0x0

    #@489
    :goto_8
    move-object/from16 v0, p0

    #@48b
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    #@48d
    invoke-virtual {v5}, Landroid/util/SparseLongArray;->size()I

    #@490
    move-result v5

    #@491
    move/from16 v0, v26

    #@493
    if-ge v0, v5, :cond_e

    #@495
    .line 1496
    const-string/jumbo v5, "  UID "

    #@498
    move-object/from16 v0, p1

    #@49a
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@49d
    .line 1497
    move-object/from16 v0, p0

    #@49f
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    #@4a1
    move/from16 v0, v26

    #@4a3
    invoke-virtual {v5, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    #@4a6
    move-result v5

    #@4a7
    move-object/from16 v0, p1

    #@4a9
    invoke-static {v0, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@4ac
    .line 1498
    const-string/jumbo v5, ": "

    #@4af
    move-object/from16 v0, p1

    #@4b1
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4b4
    .line 1499
    move-object/from16 v0, p0

    #@4b6
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    #@4b8
    move/from16 v0, v26

    #@4ba
    invoke-virtual {v5, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    #@4bd
    move-result-wide v6

    #@4be
    move-object/from16 v0, p1

    #@4c0
    invoke-static {v6, v7, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@4c3
    .line 1501
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@4c6
    .line 1495
    add-int/lit8 v26, v26, 0x1

    #@4c8
    goto :goto_8

    #@4c9
    .line 1504
    :cond_e
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@4cc
    .line 1506
    move-object/from16 v0, p0

    #@4ce
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    #@4d0
    const-string/jumbo v6, "  Recent problems"

    #@4d3
    const-string/jumbo v7, "    "

    #@4d6
    move-object/from16 v0, p1

    #@4d8
    invoke-virtual {v5, v0, v6, v7}, Lcom/android/internal/util/LocalLog;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z

    #@4db
    move-result v5

    #@4dc
    if-eqz v5, :cond_f

    #@4de
    .line 1507
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@4e1
    .line 1510
    :cond_f
    const/16 v5, 0xa

    #@4e3
    new-array v0, v5, [Lcom/android/server/AlarmManagerService$FilterStats;

    #@4e5
    move-object/from16 v41, v0

    #@4e7
    .line 1511
    .local v41, "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    new-instance v23, Lcom/android/server/AlarmManagerService$3;

    #@4e9
    move-object/from16 v0, v23

    #@4eb
    move-object/from16 v1, p0

    #@4ed
    invoke-direct {v0, v1}, Lcom/android/server/AlarmManagerService$3;-><init>(Lcom/android/server/AlarmManagerService;)V

    #@4f0
    .line 1522
    .local v23, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    const/16 v30, 0x0

    #@4f2
    .line 1523
    .local v30, "len":I
    const/16 v29, 0x0

    #@4f4
    .local v29, "iu":I
    :goto_9
    move-object/from16 v0, p0

    #@4f6
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    #@4f8
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@4fb
    move-result v5

    #@4fc
    move/from16 v0, v29

    #@4fe
    if-ge v0, v5, :cond_16

    #@500
    .line 1524
    move-object/from16 v0, p0

    #@502
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    #@504
    move/from16 v0, v29

    #@506
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@509
    move-result-object v42

    #@50a
    check-cast v42, Landroid/util/ArrayMap;

    #@50c
    .line 1525
    .local v42, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    const/16 v27, 0x0

    #@50e
    .local v27, "ip":I
    :goto_a
    invoke-virtual/range {v42 .. v42}, Landroid/util/ArrayMap;->size()I

    #@511
    move-result v5

    #@512
    move/from16 v0, v27

    #@514
    if-ge v0, v5, :cond_15

    #@516
    .line 1526
    move-object/from16 v0, v42

    #@518
    move/from16 v1, v27

    #@51a
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@51d
    move-result-object v22

    #@51e
    check-cast v22, Lcom/android/server/AlarmManagerService$BroadcastStats;

    #@520
    .line 1527
    .local v22, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    const/16 v28, 0x0

    #@522
    .local v28, "is":I
    :goto_b
    move-object/from16 v0, v22

    #@524
    iget-object v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    #@526
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@529
    move-result v5

    #@52a
    move/from16 v0, v28

    #@52c
    if-ge v0, v5, :cond_14

    #@52e
    .line 1528
    move-object/from16 v0, v22

    #@530
    iget-object v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    #@532
    move/from16 v0, v28

    #@534
    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@537
    move-result-object v25

    #@538
    check-cast v25, Lcom/android/server/AlarmManagerService$FilterStats;

    #@53a
    .line 1529
    .local v25, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    if-lez v30, :cond_13

    #@53c
    .line 1530
    const/4 v5, 0x0

    #@53d
    move-object/from16 v0, v41

    #@53f
    move/from16 v1, v30

    #@541
    move-object/from16 v2, v25

    #@543
    move-object/from16 v3, v23

    #@545
    invoke-static {v0, v5, v1, v2, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    #@548
    move-result v37

    #@549
    .line 1531
    .local v37, "pos":I
    :goto_c
    if-gez v37, :cond_10

    #@54b
    .line 1532
    move/from16 v0, v37

    #@54d
    neg-int v5, v0

    #@54e
    add-int/lit8 v37, v5, -0x1

    #@550
    .line 1534
    :cond_10
    move-object/from16 v0, v41

    #@552
    array-length v5, v0

    #@553
    move/from16 v0, v37

    #@555
    if-ge v0, v5, :cond_12

    #@557
    .line 1535
    move-object/from16 v0, v41

    #@559
    array-length v5, v0

    #@55a
    sub-int v5, v5, v37

    #@55c
    add-int/lit8 v24, v5, -0x1

    #@55e
    .line 1536
    .local v24, "copylen":I
    if-lez v24, :cond_11

    #@560
    .line 1537
    add-int/lit8 v5, v37, 0x1

    #@562
    move-object/from16 v0, v41

    #@564
    move/from16 v1, v37

    #@566
    move-object/from16 v2, v41

    #@568
    move/from16 v3, v24

    #@56a
    invoke-static {v0, v1, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@56d
    .line 1539
    :cond_11
    aput-object v25, v41, v37

    #@56f
    .line 1540
    move-object/from16 v0, v41

    #@571
    array-length v5, v0

    #@572
    move/from16 v0, v30

    #@574
    if-ge v0, v5, :cond_12

    #@576
    .line 1541
    add-int/lit8 v30, v30, 0x1

    #@578
    .line 1527
    .end local v24    # "copylen":I
    :cond_12
    add-int/lit8 v28, v28, 0x1

    #@57a
    goto :goto_b

    #@57b
    .line 1530
    .end local v37    # "pos":I
    :cond_13
    const/16 v37, 0x0

    #@57d
    goto :goto_c

    #@57e
    .line 1525
    .end local v25    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_14
    add-int/lit8 v27, v27, 0x1

    #@580
    goto :goto_a

    #@581
    .line 1523
    .end local v22    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v28    # "is":I
    :cond_15
    add-int/lit8 v29, v29, 0x1

    #@583
    goto/16 :goto_9

    #@585
    .line 1547
    .end local v27    # "ip":I
    .end local v42    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :cond_16
    if-lez v30, :cond_18

    #@587
    .line 1548
    const-string/jumbo v5, "  Top Alarms:"

    #@58a
    move-object/from16 v0, p1

    #@58c
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@58f
    .line 1549
    const/16 v26, 0x0

    #@591
    :goto_d
    move/from16 v0, v26

    #@593
    move/from16 v1, v30

    #@595
    if-ge v0, v1, :cond_18

    #@597
    .line 1550
    aget-object v25, v41, v26

    #@599
    .line 1551
    .restart local v25    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    const-string/jumbo v5, "    "

    #@59c
    move-object/from16 v0, p1

    #@59e
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5a1
    .line 1552
    move-object/from16 v0, v25

    #@5a3
    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    #@5a5
    if-lez v5, :cond_17

    #@5a7
    const-string/jumbo v5, "*ACTIVE* "

    #@5aa
    move-object/from16 v0, p1

    #@5ac
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5af
    .line 1553
    :cond_17
    move-object/from16 v0, v25

    #@5b1
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    #@5b3
    move-object/from16 v0, p1

    #@5b5
    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@5b8
    .line 1554
    const-string/jumbo v5, " running, "

    #@5bb
    move-object/from16 v0, p1

    #@5bd
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5c0
    move-object/from16 v0, v25

    #@5c2
    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    #@5c4
    move-object/from16 v0, p1

    #@5c6
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    #@5c9
    .line 1555
    const-string/jumbo v5, " wakeups, "

    #@5cc
    move-object/from16 v0, p1

    #@5ce
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5d1
    move-object/from16 v0, v25

    #@5d3
    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    #@5d5
    move-object/from16 v0, p1

    #@5d7
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    #@5da
    .line 1556
    const-string/jumbo v5, " alarms: "

    #@5dd
    move-object/from16 v0, p1

    #@5df
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5e2
    move-object/from16 v0, v25

    #@5e4
    iget-object v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    #@5e6
    iget v5, v5, Lcom/android/server/AlarmManagerService$BroadcastStats;->mUid:I

    #@5e8
    move-object/from16 v0, p1

    #@5ea
    invoke-static {v0, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@5ed
    .line 1557
    const-string/jumbo v5, ":"

    #@5f0
    move-object/from16 v0, p1

    #@5f2
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5f5
    move-object/from16 v0, v25

    #@5f7
    iget-object v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    #@5f9
    iget-object v5, v5, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    #@5fb
    move-object/from16 v0, p1

    #@5fd
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@600
    .line 1558
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@603
    .line 1559
    const-string/jumbo v5, "      "

    #@606
    move-object/from16 v0, p1

    #@608
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@60b
    move-object/from16 v0, v25

    #@60d
    iget-object v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    #@60f
    move-object/from16 v0, p1

    #@611
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@614
    .line 1560
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@617
    .line 1549
    add-int/lit8 v26, v26, 0x1

    #@619
    goto/16 :goto_d

    #@61b
    .line 1564
    .end local v25    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_18
    const-string/jumbo v5, " "

    #@61e
    move-object/from16 v0, p1

    #@620
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@623
    .line 1565
    const-string/jumbo v5, "  Alarm Stats:"

    #@626
    move-object/from16 v0, p1

    #@628
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@62b
    .line 1566
    new-instance v40, Ljava/util/ArrayList;

    #@62d
    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    #@630
    .line 1567
    .local v40, "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    const/16 v29, 0x0

    #@632
    :goto_e
    move-object/from16 v0, p0

    #@634
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    #@636
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@639
    move-result v5

    #@63a
    move/from16 v0, v29

    #@63c
    if-ge v0, v5, :cond_1e

    #@63e
    .line 1568
    move-object/from16 v0, p0

    #@640
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    #@642
    move/from16 v0, v29

    #@644
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@647
    move-result-object v42

    #@648
    check-cast v42, Landroid/util/ArrayMap;

    #@64a
    .line 1569
    .restart local v42    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    const/16 v27, 0x0

    #@64c
    .restart local v27    # "ip":I
    :goto_f
    invoke-virtual/range {v42 .. v42}, Landroid/util/ArrayMap;->size()I

    #@64f
    move-result v5

    #@650
    move/from16 v0, v27

    #@652
    if-ge v0, v5, :cond_1d

    #@654
    .line 1570
    move-object/from16 v0, v42

    #@656
    move/from16 v1, v27

    #@658
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@65b
    move-result-object v22

    #@65c
    check-cast v22, Lcom/android/server/AlarmManagerService$BroadcastStats;

    #@65e
    .line 1571
    .restart local v22    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    const-string/jumbo v5, "  "

    #@661
    move-object/from16 v0, p1

    #@663
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@666
    .line 1572
    move-object/from16 v0, v22

    #@668
    iget v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    #@66a
    if-lez v5, :cond_19

    #@66c
    const-string/jumbo v5, "*ACTIVE* "

    #@66f
    move-object/from16 v0, p1

    #@671
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@674
    .line 1573
    :cond_19
    move-object/from16 v0, v22

    #@676
    iget v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->mUid:I

    #@678
    move-object/from16 v0, p1

    #@67a
    invoke-static {v0, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@67d
    .line 1574
    const-string/jumbo v5, ":"

    #@680
    move-object/from16 v0, p1

    #@682
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@685
    .line 1575
    move-object/from16 v0, v22

    #@687
    iget-object v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    #@689
    move-object/from16 v0, p1

    #@68b
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@68e
    .line 1576
    const-string/jumbo v5, " "

    #@691
    move-object/from16 v0, p1

    #@693
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@696
    move-object/from16 v0, v22

    #@698
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    #@69a
    move-object/from16 v0, p1

    #@69c
    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@69f
    .line 1577
    const-string/jumbo v5, " running, "

    #@6a2
    move-object/from16 v0, p1

    #@6a4
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6a7
    move-object/from16 v0, v22

    #@6a9
    iget v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    #@6ab
    move-object/from16 v0, p1

    #@6ad
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    #@6b0
    .line 1578
    const-string/jumbo v5, " wakeups:"

    #@6b3
    move-object/from16 v0, p1

    #@6b5
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6b8
    .line 1579
    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->clear()V

    #@6bb
    .line 1580
    const/16 v28, 0x0

    #@6bd
    .restart local v28    # "is":I
    :goto_10
    move-object/from16 v0, v22

    #@6bf
    iget-object v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    #@6c1
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@6c4
    move-result v5

    #@6c5
    move/from16 v0, v28

    #@6c7
    if-ge v0, v5, :cond_1a

    #@6c9
    .line 1581
    move-object/from16 v0, v22

    #@6cb
    iget-object v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    #@6cd
    move/from16 v0, v28

    #@6cf
    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@6d2
    move-result-object v5

    #@6d3
    check-cast v5, Lcom/android/server/AlarmManagerService$FilterStats;

    #@6d5
    move-object/from16 v0, v40

    #@6d7
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@6da
    .line 1580
    add-int/lit8 v28, v28, 0x1

    #@6dc
    goto :goto_10

    #@6dd
    .line 1583
    :cond_1a
    move-object/from16 v0, v40

    #@6df
    move-object/from16 v1, v23

    #@6e1
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@6e4
    .line 1584
    const/16 v26, 0x0

    #@6e6
    :goto_11
    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    #@6e9
    move-result v5

    #@6ea
    move/from16 v0, v26

    #@6ec
    if-ge v0, v5, :cond_1c

    #@6ee
    .line 1585
    move-object/from16 v0, v40

    #@6f0
    move/from16 v1, v26

    #@6f2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6f5
    move-result-object v25

    #@6f6
    check-cast v25, Lcom/android/server/AlarmManagerService$FilterStats;

    #@6f8
    .line 1586
    .restart local v25    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    const-string/jumbo v5, "    "

    #@6fb
    move-object/from16 v0, p1

    #@6fd
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@700
    .line 1587
    move-object/from16 v0, v25

    #@702
    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    #@704
    if-lez v5, :cond_1b

    #@706
    const-string/jumbo v5, "*ACTIVE* "

    #@709
    move-object/from16 v0, p1

    #@70b
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@70e
    .line 1588
    :cond_1b
    move-object/from16 v0, v25

    #@710
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    #@712
    move-object/from16 v0, p1

    #@714
    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@717
    .line 1589
    const-string/jumbo v5, " "

    #@71a
    move-object/from16 v0, p1

    #@71c
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@71f
    move-object/from16 v0, v25

    #@721
    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    #@723
    move-object/from16 v0, p1

    #@725
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    #@728
    .line 1590
    const-string/jumbo v5, " wakes "

    #@72b
    move-object/from16 v0, p1

    #@72d
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@730
    move-object/from16 v0, v25

    #@732
    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    #@734
    move-object/from16 v0, p1

    #@736
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    #@739
    .line 1591
    const-string/jumbo v5, " alarms, last "

    #@73c
    move-object/from16 v0, p1

    #@73e
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@741
    .line 1592
    move-object/from16 v0, v25

    #@743
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$FilterStats;->lastTime:J

    #@745
    move-object/from16 v0, p1

    #@747
    invoke-static {v6, v7, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@74a
    .line 1593
    const-string/jumbo v5, ":"

    #@74d
    move-object/from16 v0, p1

    #@74f
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@752
    .line 1594
    const-string/jumbo v5, "      "

    #@755
    move-object/from16 v0, p1

    #@757
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@75a
    .line 1595
    move-object/from16 v0, v25

    #@75c
    iget-object v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    #@75e
    move-object/from16 v0, p1

    #@760
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@763
    .line 1596
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@766
    .line 1584
    add-int/lit8 v26, v26, 0x1

    #@768
    goto/16 :goto_11

    #@76a
    .line 1569
    .end local v25    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_1c
    add-int/lit8 v27, v27, 0x1

    #@76c
    goto/16 :goto_f

    #@76e
    .line 1567
    .end local v22    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v28    # "is":I
    :cond_1d
    add-int/lit8 v29, v29, 0x1

    #@770
    goto/16 :goto_e

    #@772
    .end local v27    # "ip":I
    .end local v42    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :cond_1e
    monitor-exit v46

    #@773
    .line 1364
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
    .line 963
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    #@2
    invoke-direct {p0, v0, v1}, Lcom/android/server/AlarmManagerService;->close(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .line 965
    invoke-super {p0}, Lcom/android/server/SystemService;->finalize()V

    #@8
    .line 961
    return-void

    #@9
    .line 964
    :catchall_0
    move-exception v0

    #@a
    .line 965
    invoke-super {p0}, Lcom/android/server/SystemService;->finalize()V

    #@d
    .line 964
    throw v0
.end method

.method getNextAlarmClockImpl(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1709
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1710
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
    .line 1709
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
    .line 1697
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 1698
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
    .line 1697
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
    .line 1996
    iget-boolean v6, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    #@2
    if-eq v6, p1, :cond_2

    #@4
    .line 1997
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    #@6
    .line 1998
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@9
    move-result-wide v2

    #@a
    .line 1999
    .local v2, "nowELAPSED":J
    if-eqz p1, :cond_3

    #@c
    .line 2000
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@11
    move-result v6

    #@12
    if-lez v6, :cond_1

    #@14
    .line 2001
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    #@16
    sub-long v4, v2, v6

    #@18
    .line 2002
    .local v4, "thisDelayTime":J
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    #@1a
    add-long/2addr v6, v4

    #@1b
    iput-wide v6, p0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    #@1d
    .line 2003
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    #@1f
    cmp-long v6, v6, v4

    #@21
    if-gez v6, :cond_0

    #@23
    .line 2004
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    #@25
    .line 2006
    :cond_0
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    #@27
    invoke-virtual {p0, v6, v2, v3}, Lcom/android/server/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V

    #@2a
    .line 2007
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    #@2c
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    #@2f
    .line 2009
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
    .line 2010
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    #@39
    sub-long v0, v2, v6

    #@3b
    .line 2011
    .local v0, "dur":J
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveTime:J

    #@3d
    cmp-long v6, v0, v6

    #@3f
    if-lez v6, :cond_2

    #@41
    .line 2012
    iput-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveTime:J

    #@43
    .line 1995
    .end local v0    # "dur":J
    .end local v2    # "nowELAPSED":J
    :cond_2
    :goto_0
    return-void

    #@44
    .line 2016
    .restart local v2    # "nowELAPSED":J
    :cond_3
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    #@46
    goto :goto_0
.end method

.method lookForPackageLocked(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 2022
    const/4 v2, 0x0

    #@2
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v3

    #@8
    if-ge v2, v3, :cond_1

    #@a
    .line 2023
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    #@12
    .line 2024
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v1, p1}, Lcom/android/server/AlarmManagerService$Batch;->hasPackage(Ljava/lang/String;)Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_0

    #@18
    .line 2025
    return v4

    #@19
    .line 2022
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 2028
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    const/4 v2, 0x0

    #@1d
    :goto_1
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    #@1f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@22
    move-result v3

    #@23
    if-ge v2, v3, :cond_3

    #@25
    .line 2029
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    #@2d
    .line 2030
    .local v0, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    #@30
    move-result v3

    #@31
    if-eqz v3, :cond_2

    #@33
    .line 2031
    return v4

    #@34
    .line 2028
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@36
    goto :goto_1

    #@37
    .line 2034
    .end local v0    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_3
    const/4 v3, 0x0

    #@38
    return v3
.end method

.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    #@0
    .prologue
    .line 952
    const/16 v0, 0x1f4

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 953
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
    .line 954
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    #@14
    move-result-object v0

    #@15
    const-string/jumbo v1, "appops"

    #@18
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Landroid/app/AppOpsManager;

    #@1e
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mAppOps:Landroid/app/AppOpsManager;

    #@20
    .line 956
    const-class v0, Lcom/android/server/DeviceIdleController$LocalService;

    #@22
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Lcom/android/server/DeviceIdleController$LocalService;

    #@28
    .line 955
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    #@2a
    .line 951
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 10

    #@0
    .prologue
    const-wide/16 v8, 0x0

    #@2
    const/4 v7, 0x0

    #@3
    .line 905
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->init()J

    #@6
    move-result-wide v4

    #@7
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    #@9
    .line 906
    iput-wide v8, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    #@b
    iput-wide v8, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    #@d
    .line 910
    const-string/jumbo v4, "persist.sys.timezone"

    #@10
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {p0, v4}, Lcom/android/server/AlarmManagerService;->setTimeZoneImpl(Ljava/lang/String;)V

    #@17
    .line 912
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    #@1a
    move-result-object v4

    #@1b
    const-string/jumbo v5, "power"

    #@1e
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    check-cast v2, Landroid/os/PowerManager;

    #@24
    .line 913
    .local v2, "pm":Landroid/os/PowerManager;
    const-string/jumbo v4, "*alarm*"

    #@27
    const/4 v5, 0x1

    #@28
    invoke-virtual {v2, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@2b
    move-result-object v4

    #@2c
    iput-object v4, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2e
    .line 915
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    #@31
    move-result-object v4

    #@32
    .line 916
    new-instance v5, Landroid/content/Intent;

    #@34
    const-string/jumbo v6, "android.intent.action.TIME_TICK"

    #@37
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@3a
    .line 917
    const/high16 v6, 0x50000000

    #@3c
    .line 916
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@3f
    move-result-object v5

    #@40
    .line 919
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@42
    .line 915
    invoke-static {v4, v7, v5, v7, v6}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@45
    move-result-object v4

    #@46
    iput-object v4, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    #@48
    .line 920
    new-instance v1, Landroid/content/Intent;

    #@4a
    const-string/jumbo v4, "android.intent.action.DATE_CHANGED"

    #@4d
    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@50
    .line 921
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x20000000

    #@52
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@55
    .line 922
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    #@58
    move-result-object v4

    #@59
    .line 923
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@5b
    const/high16 v6, 0x4000000

    #@5d
    .line 922
    invoke-static {v4, v7, v1, v6, v5}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@60
    move-result-object v4

    #@61
    iput-object v4, p0, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    #@63
    .line 926
    new-instance v4, Lcom/android/server/AlarmManagerService$ClockReceiver;

    #@65
    invoke-direct {v4, p0}, Lcom/android/server/AlarmManagerService$ClockReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    #@68
    iput-object v4, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    #@6a
    .line 927
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    #@6c
    invoke-virtual {v4}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    #@6f
    .line 928
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    #@71
    invoke-virtual {v4}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    #@74
    .line 929
    new-instance v4, Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;

    #@76
    invoke-direct {v4, p0}, Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    #@79
    iput-object v4, p0, Lcom/android/server/AlarmManagerService;->mInteractiveStateReceiver:Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;

    #@7b
    .line 930
    new-instance v4, Lcom/android/server/AlarmManagerService$UninstallReceiver;

    #@7d
    invoke-direct {v4, p0}, Lcom/android/server/AlarmManagerService$UninstallReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    #@80
    iput-object v4, p0, Lcom/android/server/AlarmManagerService;->mUninstallReceiver:Lcom/android/server/AlarmManagerService$UninstallReceiver;

    #@82
    .line 932
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    #@84
    cmp-long v4, v4, v8

    #@86
    if-eqz v4, :cond_0

    #@88
    .line 933
    new-instance v3, Lcom/android/server/AlarmManagerService$AlarmThread;

    #@8a
    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerService$AlarmThread;-><init>(Lcom/android/server/AlarmManagerService;)V

    #@8d
    .line 934
    .local v3, "waitThread":Lcom/android/server/AlarmManagerService$AlarmThread;
    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$AlarmThread;->start()V

    #@90
    .line 940
    .end local v3    # "waitThread":Lcom/android/server/AlarmManagerService$AlarmThread;
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@93
    move-result-object v4

    #@94
    new-instance v5, Lcom/android/server/AlarmManagerService$UidObserver;

    #@96
    invoke-direct {v5, p0}, Lcom/android/server/AlarmManagerService$UidObserver;-><init>(Lcom/android/server/AlarmManagerService;)V

    #@99
    .line 941
    const/4 v6, 0x4

    #@9a
    .line 940
    invoke-interface {v4, v5, v6}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9d
    .line 946
    :goto_1
    const-string/jumbo v4, "alarm"

    #@a0
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mService:Landroid/os/IBinder;

    #@a2
    invoke-virtual {p0, v4, v5}, Lcom/android/server/AlarmManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@a5
    .line 947
    const-class v4, Lcom/android/server/AlarmManagerService$LocalService;

    #@a7
    new-instance v5, Lcom/android/server/AlarmManagerService$LocalService;

    #@a9
    invoke-direct {v5, p0}, Lcom/android/server/AlarmManagerService$LocalService;-><init>(Lcom/android/server/AlarmManagerService;)V

    #@ac
    invoke-virtual {p0, v4, v5}, Lcom/android/server/AlarmManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    #@af
    .line 904
    return-void

    #@b0
    .line 936
    :cond_0
    const-string/jumbo v4, "AlarmManager"

    #@b3
    const-string/jumbo v5, "Failed to open alarm driver. Falling back to a handler."

    #@b6
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@b9
    goto :goto_0

    #@ba
    .line 942
    :catch_0
    move-exception v0

    #@bb
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
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
    .line 777
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    #@4
    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    #@6
    .line 778
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    #@8
    iget v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    #@a
    invoke-static {v0, v1, v4}, Lcom/android/server/AlarmManagerService;->convertToElapsed(JI)J

    #@d
    move-result-wide v2

    #@e
    .line 780
    .local v2, "whenElapsed":J
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    #@10
    cmp-long v0, v0, v8

    #@12
    if-nez v0, :cond_0

    #@14
    .line 782
    move-wide v6, v2

    #@15
    .line 791
    .local v6, "maxElapsed":J
    :goto_0
    iput-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@17
    .line 792
    iput-wide v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    #@19
    .line 793
    const/4 v0, 0x1

    #@1a
    invoke-direct {p0, p1, v0, p4}, Lcom/android/server/AlarmManagerService;->setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V

    #@1d
    .line 776
    return-void

    #@1e
    .line 787
    .end local v6    # "maxElapsed":J
    :cond_0
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    #@20
    cmp-long v0, v0, v8

    #@22
    if-lez v0, :cond_1

    #@24
    .line 788
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    #@26
    add-long v6, v2, v0

    #@28
    .restart local v6    # "maxElapsed":J
    goto :goto_0

    #@29
    .line 789
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
    .line 746
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 747
    const/4 v1, 0x1

    #@4
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit v0

    #@8
    .line 745
    return-void

    #@9
    .line 746
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
    .line 752
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v9}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@5
    move-result-object v8

    #@6
    check-cast v8, Ljava/util/ArrayList;

    #@8
    .line 753
    .local v8, "oldSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    #@d
    .line 754
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    #@f
    .line 755
    .local v7, "oldPendingIdleUntil":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@12
    move-result-wide v4

    #@13
    .line 756
    .local v4, "nowElapsed":J
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@16
    move-result v6

    #@17
    .line 757
    .local v6, "oldBatches":I
    const/4 v2, 0x0

    #@18
    .local v2, "batchNum":I
    :goto_0
    if-ge v2, v6, :cond_1

    #@1a
    .line 758
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    #@20
    .line 759
    .local v1, "batch":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    #@23
    move-result v0

    #@24
    .line 760
    .local v0, "N":I
    const/4 v3, 0x0

    #@25
    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_0

    #@27
    .line 761
    invoke-virtual {v1, v3}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    #@2a
    move-result-object v9

    #@2b
    invoke-virtual {p0, v9, v4, v5, p1}, Lcom/android/server/AlarmManagerService;->reAddAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V

    #@2e
    .line 760
    add-int/lit8 v3, v3, 0x1

    #@30
    goto :goto_1

    #@31
    .line 757
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@33
    goto :goto_0

    #@34
    .line 764
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
    .line 765
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
    .line 766
    const-string/jumbo v11, " to "

    #@50
    .line 765
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v10

    #@54
    .line 766
    iget-object v11, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    #@56
    .line 765
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
    .line 767
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    #@63
    if-nez v9, :cond_2

    #@65
    .line 769
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->restorePendingWhileIdleAlarmsLocked()V

    #@68
    .line 772
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    #@6b
    .line 773
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    #@6e
    .line 751
    return-void
.end method

.method recordWakeupAlarms(Ljava/util/ArrayList;JJ)V
    .locals 8
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
    .line 2349
    .local p1, "batches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v5

    #@4
    .line 2350
    .local v5, "numBatches":I
    const/4 v3, 0x0

    #@5
    .local v3, "nextBatch":I
    :goto_0
    if-ge v3, v5, :cond_0

    #@7
    .line 2351
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    #@d
    .line 2352
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget-wide v6, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    #@f
    cmp-long v6, v6, p2

    #@11
    if-lez v6, :cond_1

    #@13
    .line 2348
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_0
    return-void

    #@14
    .line 2356
    .restart local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    iget-object v6, v1, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@19
    move-result v4

    #@1a
    .line 2357
    .local v4, "numAlarms":I
    const/4 v2, 0x0

    #@1b
    .local v2, "nextAlarm":I
    :goto_1
    if-ge v2, v4, :cond_2

    #@1d
    .line 2358
    iget-object v6, v1, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    #@1f
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    #@25
    .line 2359
    .local v0, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mRecentWakeups:Ljava/util/LinkedList;

    #@27
    invoke-virtual {v0, p4, p5}, Lcom/android/server/AlarmManagerService$Alarm;->makeWakeupEvent(J)Lcom/android/server/AlarmManagerService$WakeupEvent;

    #@2a
    move-result-object v7

    #@2b
    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@2e
    .line 2357
    add-int/lit8 v2, v2, 0x1

    #@30
    goto :goto_1

    #@31
    .line 2350
    .end local v0    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@33
    goto :goto_0
.end method

.method removeForStoppedLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 1933
    const/4 v2, 0x0

    #@1
    .line 1934
    .local v2, "didRemove":Z
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v5

    #@7
    add-int/lit8 v4, v5, -0x1

    #@9
    .end local v2    # "didRemove":Z
    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_1

    #@b
    .line 1935
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    #@13
    .line 1936
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v1, p1}, Lcom/android/server/AlarmManagerService$Batch;->removeForStopped(I)Z

    #@16
    move-result v5

    #@17
    or-int/2addr v2, v5

    #@18
    .line 1937
    .local v2, "didRemove":Z
    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    #@1b
    move-result v5

    #@1c
    if-nez v5, :cond_0

    #@1e
    .line 1938
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@23
    .line 1934
    :cond_0
    add-int/lit8 v4, v4, -0x1

    #@25
    goto :goto_0

    #@26
    .line 1941
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v2    # "didRemove":Z
    :cond_1
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    #@28
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@2b
    move-result v5

    #@2c
    add-int/lit8 v4, v5, -0x1

    #@2e
    :goto_1
    if-ltz v4, :cond_3

    #@30
    .line 1942
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    #@32
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@35
    move-result-object v0

    #@36
    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    #@38
    .line 1944
    .local v0, "a":Lcom/android/server/AlarmManagerService$Alarm;
    :try_start_0
    iget v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    #@3a
    if-ne v5, p1, :cond_2

    #@3c
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3f
    move-result-object v5

    #@40
    .line 1945
    iget-object v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    #@42
    .line 1944
    invoke-interface {v5, p1, v6}, Landroid/app/IActivityManager;->getAppStartMode(ILjava/lang/String;)I

    #@45
    move-result v5

    #@46
    .line 1945
    const/4 v6, 0x2

    #@47
    .line 1944
    if-ne v5, v6, :cond_2

    #@49
    .line 1947
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    #@4b
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@4e
    .line 1941
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, -0x1

    #@50
    goto :goto_1

    #@51
    .line 1953
    .end local v0    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_3
    if-eqz v2, :cond_4

    #@53
    .line 1957
    const/4 v5, 0x1

    #@54
    invoke-virtual {p0, v5}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    #@57
    .line 1958
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    #@5a
    .line 1959
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    #@5d
    .line 1932
    :cond_4
    return-void

    #@5e
    .line 1949
    .restart local v0    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :catch_0
    move-exception v3

    #@5f
    .local v3, "e":Landroid/os/RemoteException;
    goto :goto_2
.end method

.method removeImpl(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "operation"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 1005
    if-nez p1, :cond_0

    #@2
    .line 1006
    return-void

    #@3
    .line 1008
    :cond_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v0

    #@6
    .line 1009
    const/4 v1, 0x0

    #@7
    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit v0

    #@b
    .line 1004
    return-void

    #@c
    .line 1008
    :catchall_0
    move-exception v1

    #@d
    monitor-exit v0

    #@e
    throw v1
.end method

.method removeLocked(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1906
    const/4 v2, 0x0

    #@1
    .line 1907
    .local v2, "didRemove":Z
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v4

    #@7
    add-int/lit8 v3, v4, -0x1

    #@9
    .end local v2    # "didRemove":Z
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    #@b
    .line 1908
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    #@13
    .line 1909
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v1, p1}, Lcom/android/server/AlarmManagerService$Batch;->remove(Ljava/lang/String;)Z

    #@16
    move-result v4

    #@17
    or-int/2addr v2, v4

    #@18
    .line 1910
    .local v2, "didRemove":Z
    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    #@1b
    move-result v4

    #@1c
    if-nez v4, :cond_0

    #@1e
    .line 1911
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@23
    .line 1907
    :cond_0
    add-int/lit8 v3, v3, -0x1

    #@25
    goto :goto_0

    #@26
    .line 1914
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v2    # "didRemove":Z
    :cond_1
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    #@28
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@2b
    move-result v4

    #@2c
    add-int/lit8 v3, v4, -0x1

    #@2e
    :goto_1
    if-ltz v3, :cond_3

    #@30
    .line 1915
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    #@32
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@35
    move-result-object v0

    #@36
    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    #@38
    .line 1916
    .local v0, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    #@3b
    move-result v4

    #@3c
    if-eqz v4, :cond_2

    #@3e
    .line 1918
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    #@40
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@43
    .line 1914
    :cond_2
    add-int/lit8 v3, v3, -0x1

    #@45
    goto :goto_1

    #@46
    .line 1922
    .end local v0    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_3
    if-eqz v2, :cond_4

    #@48
    .line 1926
    const/4 v4, 0x1

    #@49
    invoke-virtual {p0, v4}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    #@4c
    .line 1927
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    #@4f
    .line 1928
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    #@52
    .line 1905
    :cond_4
    return-void
.end method

.method removeUserLocked(I)V
    .locals 4
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 1964
    const/4 v1, 0x0

    #@1
    .line 1965
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
    .line 1966
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    #@13
    .line 1967
    .local v0, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->remove(I)Z

    #@16
    move-result v3

    #@17
    or-int/2addr v1, v3

    #@18
    .line 1968
    .local v1, "didRemove":Z
    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    #@1b
    move-result v3

    #@1c
    if-nez v3, :cond_0

    #@1e
    .line 1969
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@23
    .line 1965
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@25
    goto :goto_0

    #@26
    .line 1972
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
    .line 1973
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    #@32
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@35
    move-result-object v3

    #@36
    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    #@38
    iget v3, v3, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    #@3a
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    #@3d
    move-result v3

    #@3e
    if-ne v3, p1, :cond_2

    #@40
    .line 1976
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    #@42
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@45
    .line 1972
    :cond_2
    add-int/lit8 v2, v2, -0x1

    #@47
    goto :goto_1

    #@48
    .line 1979
    :cond_3
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    #@4a
    invoke-virtual {v3}, Landroid/util/SparseLongArray;->size()I

    #@4d
    move-result v3

    #@4e
    add-int/lit8 v2, v3, -0x1

    #@50
    :goto_2
    if-ltz v2, :cond_5

    #@52
    .line 1980
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    #@54
    invoke-virtual {v3, v2}, Landroid/util/SparseLongArray;->keyAt(I)I

    #@57
    move-result v3

    #@58
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    #@5b
    move-result v3

    #@5c
    if-ne v3, p1, :cond_4

    #@5e
    .line 1981
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    #@60
    invoke-virtual {v3, v2}, Landroid/util/SparseLongArray;->removeAt(I)V

    #@63
    .line 1979
    :cond_4
    add-int/lit8 v2, v2, -0x1

    #@65
    goto :goto_2

    #@66
    .line 1985
    :cond_5
    if-eqz v1, :cond_6

    #@68
    .line 1989
    const/4 v3, 0x1

    #@69
    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    #@6c
    .line 1990
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    #@6f
    .line 1991
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    #@72
    .line 1963
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
    .line 1845
    const-wide/16 v2, 0x0

    #@5
    .line 1846
    .local v2, "nextNonWakeup":J
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v4

    #@b
    if-lez v4, :cond_1

    #@d
    .line 1847
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->findFirstWakeupBatchLocked()Lcom/android/server/AlarmManagerService$Batch;

    #@10
    move-result-object v1

    #@11
    .line 1848
    .local v1, "firstWakeup":Lcom/android/server/AlarmManagerService$Batch;
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    #@19
    .line 1849
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
    .line 1850
    iget-wide v4, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    #@25
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    #@27
    .line 1851
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@2a
    move-result-wide v4

    #@2b
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mLastWakeupSet:J

    #@2d
    .line 1852
    iget-wide v4, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    #@2f
    const/4 v6, 0x2

    #@30
    invoke-direct {p0, v6, v4, v5}, Lcom/android/server/AlarmManagerService;->setLocked(IJ)V

    #@33
    .line 1854
    :cond_0
    if-eq v0, v1, :cond_1

    #@35
    .line 1855
    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    #@37
    .line 1858
    .end local v0    # "firstBatch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v1    # "firstWakeup":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    #@39
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@3c
    move-result v4

    #@3d
    if-lez v4, :cond_3

    #@3f
    .line 1859
    cmp-long v4, v2, v8

    #@41
    if-eqz v4, :cond_2

    #@43
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    #@45
    cmp-long v4, v4, v2

    #@47
    if-gez v4, :cond_3

    #@49
    .line 1860
    :cond_2
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    #@4b
    .line 1863
    :cond_3
    cmp-long v4, v2, v8

    #@4d
    if-eqz v4, :cond_4

    #@4f
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    #@51
    cmp-long v4, v4, v2

    #@53
    if-eqz v4, :cond_4

    #@55
    .line 1864
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    #@57
    .line 1865
    const/4 v4, 0x3

    #@58
    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/AlarmManagerService;->setLocked(IJ)V

    #@5b
    .line 1842
    :cond_4
    return-void
.end method

.method restorePendingWhileIdleAlarmsLocked()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 806
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v6

    #@7
    if-lez v6, :cond_0

    #@9
    .line 807
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    #@b
    .line 808
    .local v1, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    new-instance v6, Ljava/util/ArrayList;

    #@d
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@10
    iput-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    #@12
    .line 809
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@15
    move-result-wide v4

    #@16
    .line 810
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
    .line 811
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    #@24
    .line 812
    .local v0, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {p0, v0, v4, v5, v7}, Lcom/android/server/AlarmManagerService;->reAddAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V

    #@27
    .line 810
    add-int/lit8 v3, v3, -0x1

    #@29
    goto :goto_0

    #@2a
    .line 817
    .end local v0    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v1    # "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v3    # "i":I
    .end local v4    # "nowElapsed":J
    :cond_0
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    #@2c
    invoke-virtual {v6}, Lcom/android/server/AlarmManagerService$Constants;->updateAllowWhileIdleMinTimeLocked()V

    #@2f
    .line 820
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    #@32
    .line 821
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    #@35
    .line 825
    :try_start_0
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    #@37
    invoke-virtual {v6}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    #@3a
    .line 796
    :goto_1
    return-void

    #@3b
    .line 826
    :catch_0
    move-exception v2

    #@3c
    .local v2, "e":Landroid/app/PendingIntent$CanceledException;
    goto :goto_1
.end method

.method setDeviceIdleUserWhitelistImpl([I)V
    .locals 2
    .param p1, "appids"    # [I

    #@0
    .prologue
    .line 1703
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 1704
    :try_start_0
    iput-object p1, p0, Lcom/android/server/AlarmManagerService;->mDeviceIdleUserWhitelist:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 1702
    return-void

    #@7
    .line 1703
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method setImpl(IJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V
    .locals 38
    .param p1, "type"    # I
    .param p2, "triggerAtTime"    # J
    .param p4, "windowLength"    # J
    .param p6, "interval"    # J
    .param p8, "operation"    # Landroid/app/PendingIntent;
    .param p9, "directReceiver"    # Landroid/app/IAlarmListener;
    .param p10, "listenerTag"    # Ljava/lang/String;
    .param p11, "flags"    # I
    .param p12, "workSource"    # Landroid/os/WorkSource;
    .param p13, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p14, "callingUid"    # I
    .param p15, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1018
    if-nez p8, :cond_1

    #@2
    if-nez p9, :cond_1

    #@4
    .line 1020
    :cond_0
    const-string/jumbo v8, "AlarmManager"

    #@7
    const-string/jumbo v9, "Alarms must either supply a PendingIntent or an AlarmReceiver"

    #@a
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 1023
    return-void

    #@e
    .line 1019
    :cond_1
    if-eqz p8, :cond_2

    #@10
    if-nez p9, :cond_0

    #@12
    .line 1028
    :cond_2
    const-wide/32 v8, 0x2932e00

    #@15
    cmp-long v8, p4, v8

    #@17
    if-lez v8, :cond_3

    #@19
    .line 1029
    const-string/jumbo v8, "AlarmManager"

    #@1c
    new-instance v9, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v10, "Window length "

    #@24
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v9

    #@28
    move-wide/from16 v0, p4

    #@2a
    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v9

    #@2e
    .line 1030
    const-string/jumbo v10, "ms suspiciously long; limiting to 1 hour"

    #@31
    .line 1029
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v9

    #@35
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v9

    #@39
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 1031
    const-wide/32 p4, 0x36ee80

    #@3f
    .line 1036
    :cond_3
    move-object/from16 v0, p0

    #@41
    iget-object v8, v0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    #@43
    iget-wide v0, v8, Lcom/android/server/AlarmManagerService$Constants;->MIN_INTERVAL:J

    #@45
    move-wide/from16 v30, v0

    #@47
    .line 1037
    .local v30, "minInterval":J
    const-wide/16 v8, 0x0

    #@49
    cmp-long v8, p6, v8

    #@4b
    if-lez v8, :cond_4

    #@4d
    cmp-long v8, p6, v30

    #@4f
    if-gez v8, :cond_4

    #@51
    .line 1038
    const-string/jumbo v8, "AlarmManager"

    #@54
    new-instance v9, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v10, "Suspiciously short interval "

    #@5c
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v9

    #@60
    move-wide/from16 v0, p6

    #@62
    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@65
    move-result-object v9

    #@66
    .line 1039
    const-string/jumbo v10, " millis; expanding to "

    #@69
    .line 1038
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v9

    #@6d
    .line 1039
    const-wide/16 v10, 0x3e8

    #@6f
    div-long v10, v30, v10

    #@71
    .line 1038
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@74
    move-result-object v9

    #@75
    .line 1040
    const-string/jumbo v10, " seconds"

    #@78
    .line 1038
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v9

    #@7c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v9

    #@80
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@83
    .line 1041
    move-wide/from16 p6, v30

    #@85
    .line 1044
    :cond_4
    if-ltz p1, :cond_5

    #@87
    const/4 v8, 0x3

    #@88
    move/from16 v0, p1

    #@8a
    if-le v0, v8, :cond_6

    #@8c
    .line 1045
    :cond_5
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@8e
    new-instance v9, Ljava/lang/StringBuilder;

    #@90
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@93
    const-string/jumbo v10, "Invalid alarm type "

    #@96
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v9

    #@9a
    move/from16 v0, p1

    #@9c
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v9

    #@a0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a3
    move-result-object v9

    #@a4
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a7
    throw v8

    #@a8
    .line 1048
    :cond_6
    const-wide/16 v8, 0x0

    #@aa
    cmp-long v8, p2, v8

    #@ac
    if-gez v8, :cond_7

    #@ae
    .line 1049
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@b1
    move-result v8

    #@b2
    int-to-long v0, v8

    #@b3
    move-wide/from16 v36, v0

    #@b5
    .line 1050
    .local v36, "what":J
    const-string/jumbo v8, "AlarmManager"

    #@b8
    new-instance v9, Ljava/lang/StringBuilder;

    #@ba
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@bd
    const-string/jumbo v10, "Invalid alarm trigger time! "

    #@c0
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v9

    #@c4
    move-wide/from16 v0, p2

    #@c6
    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v9

    #@ca
    const-string/jumbo v10, " from uid="

    #@cd
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v9

    #@d1
    move/from16 v0, p14

    #@d3
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v9

    #@d7
    .line 1051
    const-string/jumbo v10, " pid="

    #@da
    .line 1050
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v9

    #@de
    move-wide/from16 v0, v36

    #@e0
    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v9

    #@e4
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e7
    move-result-object v9

    #@e8
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@eb
    .line 1052
    const-wide/16 p2, 0x0

    #@ed
    .line 1055
    .end local v36    # "what":J
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@f0
    move-result-wide v4

    #@f1
    .line 1056
    .local v4, "nowElapsed":J
    move-wide/from16 v0, p2

    #@f3
    move/from16 v2, p1

    #@f5
    invoke-static {v0, v1, v2}, Lcom/android/server/AlarmManagerService;->convertToElapsed(JI)J

    #@f8
    move-result-wide v34

    #@f9
    .line 1058
    .local v34, "nominalTrigger":J
    move-object/from16 v0, p0

    #@fb
    iget-object v8, v0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    #@fd
    iget-wide v8, v8, Lcom/android/server/AlarmManagerService$Constants;->MIN_FUTURITY:J

    #@ff
    add-long v32, v4, v8

    #@101
    .line 1059
    .local v32, "minTrigger":J
    cmp-long v8, v34, v32

    #@103
    if-lez v8, :cond_8

    #@105
    move-wide/from16 v6, v34

    #@107
    .line 1062
    .local v6, "triggerElapsed":J
    :goto_0
    const-wide/16 v8, 0x0

    #@109
    cmp-long v8, p4, v8

    #@10b
    if-nez v8, :cond_9

    #@10d
    .line 1063
    move-wide/from16 v16, v6

    #@10f
    .line 1072
    .local v16, "maxElapsed":J
    :goto_1
    move-object/from16 v0, p0

    #@111
    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    #@113
    move-object/from16 v29, v0

    #@115
    monitor-enter v29

    #@116
    .line 1080
    const/16 v24, 0x1

    #@118
    move-object/from16 v8, p0

    #@11a
    move/from16 v9, p1

    #@11c
    move-wide/from16 v10, p2

    #@11e
    move-wide v12, v6

    #@11f
    move-wide/from16 v14, p4

    #@121
    move-wide/from16 v18, p6

    #@123
    move-object/from16 v20, p8

    #@125
    move-object/from16 v21, p9

    #@127
    move-object/from16 v22, p10

    #@129
    move/from16 v23, p11

    #@12b
    move-object/from16 v25, p12

    #@12d
    move-object/from16 v26, p13

    #@12f
    move/from16 v27, p14

    #@131
    move-object/from16 v28, p15

    #@133
    .line 1079
    :try_start_0
    invoke-direct/range {v8 .. v28}, Lcom/android/server/AlarmManagerService;->setImplLocked(IJJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;IZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@136
    monitor-exit v29

    #@137
    .line 1016
    return-void

    #@138
    .line 1059
    .end local v6    # "triggerElapsed":J
    .end local v16    # "maxElapsed":J
    :cond_8
    move-wide/from16 v6, v32

    #@13a
    .restart local v6    # "triggerElapsed":J
    goto :goto_0

    #@13b
    .line 1064
    :cond_9
    const-wide/16 v8, 0x0

    #@13d
    cmp-long v8, p4, v8

    #@13f
    if-gez v8, :cond_a

    #@141
    move-wide/from16 v8, p6

    #@143
    .line 1065
    invoke-static/range {v4 .. v9}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    #@146
    move-result-wide v16

    #@147
    .line 1067
    .restart local v16    # "maxElapsed":J
    sub-long p4, v16, v6

    #@149
    goto :goto_1

    #@14a
    .line 1069
    .end local v16    # "maxElapsed":J
    :cond_a
    add-long v16, v6, p4

    #@14c
    .restart local v16    # "maxElapsed":J
    goto :goto_1

    #@14d
    .line 1072
    :catchall_0
    move-exception v8

    #@14e
    monitor-exit v29

    #@14f
    throw v8
.end method

.method setTimeZoneImpl(Ljava/lang/String;)V
    .locals 9
    .param p1, "tz"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 970
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4
    move-result v5

    #@5
    if-eqz v5, :cond_0

    #@7
    .line 971
    return-void

    #@8
    .line 974
    :cond_0
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@b
    move-result-object v4

    #@c
    .line 977
    .local v4, "zone":Ljava/util/TimeZone;
    const/4 v3, 0x0

    #@d
    .line 978
    .local v3, "timeZoneWasChanged":Z
    monitor-enter p0

    #@e
    .line 979
    :try_start_0
    const-string/jumbo v5, "persist.sys.timezone"

    #@11
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    .line 980
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
    .line 990
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@24
    move-result-wide v6

    #@25
    invoke-virtual {v4, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    #@28
    move-result v1

    #@29
    .line 991
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
    .line 994
    invoke-static {v8}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    #@38
    .line 996
    if-eqz v3, :cond_1

    #@3a
    .line 997
    new-instance v2, Landroid/content/Intent;

    #@3c
    const-string/jumbo v5, "android.intent.action.TIMEZONE_CHANGED"

    #@3f
    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@42
    .line 998
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v5, 0x20000000

    #@44
    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@47
    .line 999
    const-string/jumbo v5, "time-zone"

    #@4a
    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@4d
    move-result-object v6

    #@4e
    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@51
    .line 1000
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    #@54
    move-result-object v5

    #@55
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@57
    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@5a
    .line 969
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    return-void

    #@5b
    .line 984
    .end local v1    # "gmtOffset":I
    :cond_2
    const/4 v3, 0x1

    #@5c
    .line 985
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
    .line 978
    .end local v0    # "current":Ljava/lang/String;
    :catchall_0
    move-exception v5

    #@68
    monitor-exit p0

    #@69
    throw v5
.end method

.method setWakelockWorkSource(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;IZ)V
    .locals 6
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "ws"    # Landroid/os/WorkSource;
    .param p3, "type"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "knownUid"    # I
    .param p6, "first"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2574
    :try_start_0
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    #@3
    if-ne p1, v3, :cond_1

    #@5
    const/4 v2, 0x1

    #@6
    .line 2575
    .local v2, "unimportant":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@8
    invoke-virtual {v3, v2}, Landroid/os/PowerManager$WakeLock;->setUnimportantForLogging(Z)V

    #@b
    .line 2576
    if-nez p6, :cond_0

    #@d
    iget-boolean v3, p0, Lcom/android/server/AlarmManagerService;->mLastWakeLockUnimportantForLogging:Z

    #@f
    if-eqz v3, :cond_2

    #@11
    .line 2577
    :cond_0
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@13
    invoke-virtual {v3, p4}, Landroid/os/PowerManager$WakeLock;->setHistoryTag(Ljava/lang/String;)V

    #@16
    .line 2581
    :goto_1
    iput-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mLastWakeLockUnimportantForLogging:Z

    #@18
    .line 2582
    if-eqz p2, :cond_4

    #@1a
    .line 2583
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@1c
    invoke-virtual {v3, p2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    #@1f
    .line 2584
    return-void

    #@20
    .line 2574
    .end local v2    # "unimportant":Z
    :cond_1
    const/4 v2, 0x0

    #@21
    .restart local v2    # "unimportant":Z
    goto :goto_0

    #@22
    .line 2579
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
    .line 2594
    .end local v2    # "unimportant":Z
    :catch_0
    move-exception v0

    #@2a
    .line 2598
    :cond_3
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2c
    invoke-virtual {v3, v5}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    #@2f
    .line 2572
    return-void

    #@30
    .line 2587
    .restart local v2    # "unimportant":Z
    :cond_4
    if-ltz p5, :cond_5

    #@32
    move v1, p5

    #@33
    .line 2590
    .local v1, "uid":I
    :goto_2
    if-ltz v1, :cond_3

    #@35
    .line 2591
    :try_start_1
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@37
    new-instance v4, Landroid/os/WorkSource;

    #@39
    invoke-direct {v4, v1}, Landroid/os/WorkSource;-><init>(I)V

    #@3c
    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    #@3f
    .line 2592
    return-void

    #@40
    .line 2589
    .end local v1    # "uid":I
    :cond_5
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    #@47
    move-result-object v4

    #@48
    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->getUidForIntentSender(Landroid/content/IIntentSender;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@4b
    move-result v1

    #@4c
    goto :goto_2
.end method

.method triggerAlarmsLocked(Ljava/util/ArrayList;JJ)Z
    .locals 40
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
    .line 2102
    .local p1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const/16 v34, 0x0

    #@2
    .line 2106
    .local v34, "hasWakeup":Z
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
    .line 2107
    move-object/from16 v0, p0

    #@e
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@10
    const/4 v5, 0x0

    #@11
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v31

    #@15
    check-cast v31, Lcom/android/server/AlarmManagerService$Batch;

    #@17
    .line 2108
    .local v31, "batch":Lcom/android/server/AlarmManagerService$Batch;
    move-object/from16 v0, v31

    #@19
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    #@1b
    cmp-long v4, v4, p2

    #@1d
    if-lez v4, :cond_2

    #@1f
    .line 2194
    .end local v31    # "batch":Lcom/android/server/AlarmManagerService$Batch;
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
    .line 2195
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    #@2c
    .line 2196
    move-object/from16 v0, p0

    #@2e
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    #@30
    move-object/from16 v0, p1

    #@32
    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@35
    .line 2204
    return v34

    #@36
    .line 2115
    .restart local v31    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    :cond_2
    move-object/from16 v0, p0

    #@38
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    #@3a
    const/4 v5, 0x0

    #@3b
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@3e
    .line 2117
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    #@41
    move-result v29

    #@42
    .line 2118
    .local v29, "N":I
    const/16 v35, 0x0

    #@44
    .local v35, "i":I
    :goto_0
    move/from16 v0, v35

    #@46
    move/from16 v1, v29

    #@48
    if-ge v0, v1, :cond_0

    #@4a
    .line 2119
    move-object/from16 v0, v31

    #@4c
    move/from16 v1, v35

    #@4e
    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    #@51
    move-result-object v30

    #@52
    .line 2121
    .local v30, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    move-object/from16 v0, v30

    #@54
    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    #@56
    and-int/lit8 v4, v4, 0x4

    #@58
    if-eqz v4, :cond_5

    #@5a
    .line 2124
    move-object/from16 v0, p0

    #@5c
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    #@5e
    move-object/from16 v0, v30

    #@60
    iget v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    #@62
    const-wide/16 v8, 0x0

    #@64
    invoke-virtual {v4, v5, v8, v9}, Landroid/util/SparseLongArray;->get(IJ)J

    #@67
    move-result-wide v36

    #@68
    .line 2125
    .local v36, "lastTime":J
    move-object/from16 v0, p0

    #@6a
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService;->mAllowWhileIdleMinTime:J

    #@6c
    add-long v38, v36, v4

    #@6e
    .line 2126
    .local v38, "minTime":J
    cmp-long v4, p2, v38

    #@70
    if-gez v4, :cond_5

    #@72
    .line 2130
    move-wide/from16 v0, v38

    #@74
    move-object/from16 v2, v30

    #@76
    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@78
    .line 2131
    move-object/from16 v0, v30

    #@7a
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    #@7c
    cmp-long v4, v4, v38

    #@7e
    if-gez v4, :cond_3

    #@80
    .line 2132
    move-wide/from16 v0, v38

    #@82
    move-object/from16 v2, v30

    #@84
    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    #@86
    .line 2144
    :cond_3
    const/4 v4, 0x1

    #@87
    const/4 v5, 0x0

    #@88
    move-object/from16 v0, p0

    #@8a
    move-object/from16 v1, v30

    #@8c
    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/AlarmManagerService;->setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V

    #@8f
    .line 2118
    .end local v36    # "lastTime":J
    .end local v38    # "minTime":J
    :cond_4
    :goto_1
    add-int/lit8 v35, v35, 0x1

    #@91
    goto :goto_0

    #@92
    .line 2149
    :cond_5
    const/4 v4, 0x1

    #@93
    move-object/from16 v0, v30

    #@95
    iput v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    #@97
    .line 2150
    move-object/from16 v0, p1

    #@99
    move-object/from16 v1, v30

    #@9b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@9e
    .line 2151
    move-object/from16 v0, v30

    #@a0
    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    #@a2
    and-int/lit8 v4, v4, 0x2

    #@a4
    if-eqz v4, :cond_6

    #@a6
    .line 2152
    move-object/from16 v0, p0

    #@a8
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    #@aa
    if-eqz v4, :cond_b

    #@ac
    const/4 v4, 0x1

    #@ad
    .line 2153
    :goto_2
    move-object/from16 v0, v30

    #@af
    iget-object v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    #@b1
    .line 2152
    invoke-static {v4, v5}, Lcom/android/server/EventLogTags;->writeDeviceIdleWakeFromIdle(ILjava/lang/String;)V

    #@b4
    .line 2155
    :cond_6
    move-object/from16 v0, p0

    #@b6
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    #@b8
    move-object/from16 v0, v30

    #@ba
    if-ne v4, v0, :cond_7

    #@bc
    .line 2156
    const/4 v4, 0x0

    #@bd
    move-object/from16 v0, p0

    #@bf
    iput-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    #@c1
    .line 2157
    const/4 v4, 0x0

    #@c2
    move-object/from16 v0, p0

    #@c4
    invoke-virtual {v0, v4}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    #@c7
    .line 2158
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->restorePendingWhileIdleAlarmsLocked()V

    #@ca
    .line 2160
    :cond_7
    move-object/from16 v0, p0

    #@cc
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    #@ce
    move-object/from16 v0, v30

    #@d0
    if-ne v4, v0, :cond_8

    #@d2
    .line 2161
    const/4 v4, 0x0

    #@d3
    move-object/from16 v0, p0

    #@d5
    iput-object v4, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    #@d7
    .line 2162
    const/4 v4, 0x0

    #@d8
    move-object/from16 v0, p0

    #@da
    invoke-virtual {v0, v4}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    #@dd
    .line 2167
    :cond_8
    move-object/from16 v0, v30

    #@df
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    #@e1
    const-wide/16 v8, 0x0

    #@e3
    cmp-long v4, v4, v8

    #@e5
    if-lez v4, :cond_9

    #@e7
    .line 2170
    move-object/from16 v0, v30

    #@e9
    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    #@eb
    int-to-long v4, v4

    #@ec
    move-object/from16 v0, v30

    #@ee
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@f0
    sub-long v8, p2, v8

    #@f2
    move-object/from16 v0, v30

    #@f4
    iget-wide v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    #@f6
    div-long/2addr v8, v10

    #@f7
    add-long/2addr v4, v8

    #@f8
    long-to-int v4, v4

    #@f9
    move-object/from16 v0, v30

    #@fb
    iput v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    #@fd
    .line 2173
    move-object/from16 v0, v30

    #@ff
    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    #@101
    int-to-long v4, v4

    #@102
    move-object/from16 v0, v30

    #@104
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    #@106
    mul-long v32, v4, v8

    #@108
    .line 2174
    .local v32, "delta":J
    move-object/from16 v0, v30

    #@10a
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    #@10c
    add-long v6, v4, v32

    #@10e
    .line 2175
    .local v6, "nextElapsed":J
    move-object/from16 v0, v30

    #@110
    iget v12, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    #@112
    move-object/from16 v0, v30

    #@114
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    #@116
    add-long v10, v4, v32

    #@118
    move-object/from16 v0, v30

    #@11a
    iget-wide v14, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    #@11c
    .line 2176
    move-object/from16 v0, v30

    #@11e
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    #@120
    move-wide/from16 v4, p2

    #@122
    invoke-static/range {v4 .. v9}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    #@125
    move-result-wide v16

    #@126
    .line 2177
    move-object/from16 v0, v30

    #@128
    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    #@12a
    move-wide/from16 v18, v0

    #@12c
    move-object/from16 v0, v30

    #@12e
    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #@130
    move-object/from16 v20, v0

    #@132
    move-object/from16 v0, v30

    #@134
    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    #@136
    move/from16 v23, v0

    #@138
    .line 2178
    move-object/from16 v0, v30

    #@13a
    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    #@13c
    move-object/from16 v25, v0

    #@13e
    move-object/from16 v0, v30

    #@140
    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    #@142
    move-object/from16 v26, v0

    #@144
    move-object/from16 v0, v30

    #@146
    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    #@148
    move/from16 v27, v0

    #@14a
    move-object/from16 v0, v30

    #@14c
    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    #@14e
    move-object/from16 v28, v0

    #@150
    .line 2177
    const/16 v21, 0x0

    #@152
    const/16 v22, 0x0

    #@154
    const/16 v24, 0x1

    #@156
    move-object/from16 v8, p0

    #@158
    move v9, v12

    #@159
    move-wide v12, v6

    #@15a
    .line 2175
    invoke-direct/range {v8 .. v28}, Lcom/android/server/AlarmManagerService;->setImplLocked(IJJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;IZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V

    #@15d
    .line 2181
    .end local v6    # "nextElapsed":J
    .end local v32    # "delta":J
    :cond_9
    move-object/from16 v0, v30

    #@15f
    iget-boolean v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->wakeup:Z

    #@161
    if-eqz v4, :cond_a

    #@163
    .line 2182
    const/16 v34, 0x1

    #@165
    .line 2186
    :cond_a
    move-object/from16 v0, v30

    #@167
    iget-object v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    #@169
    if-eqz v4, :cond_4

    #@16b
    .line 2187
    const/4 v4, 0x1

    #@16c
    move-object/from16 v0, p0

    #@16e
    iput-boolean v4, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    #@170
    goto/16 :goto_1

    #@172
    .line 2152
    :cond_b
    const/4 v4, 0x0

    #@173
    goto/16 :goto_2
.end method
