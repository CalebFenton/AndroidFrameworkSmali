.class public final Lcom/android/internal/os/BatteryStatsImpl;
.super Landroid/os/BatteryStats;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;,
        Lcom/android/internal/os/BatteryStatsImpl$MyHandler;,
        Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;,
        Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;,
        Lcom/android/internal/os/BatteryStatsImpl$TimeBase;,
        Lcom/android/internal/os/BatteryStatsImpl$Counter;,
        Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;,
        Lcom/android/internal/os/BatteryStatsImpl$Timer;,
        Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;,
        Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;,
        Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;,
        Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid;,
        Lcom/android/internal/os/BatteryStatsImpl$1;
    }
.end annotation


# static fields
.field static final BATTERY_DELTA_LEVEL_FLAG:I = 0x1

.field public static final BATTERY_PLUGGED_NONE:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field public static final DEBUG_ENERGY:Z = false

.field private static final DEBUG_ENERGY_CPU:Z = false

.field private static final DEBUG_HISTORY:Z = false

.field static final DELAY_UPDATE_WAKELOCKS:J = 0x1388L

.field static final DELTA_BATTERY_LEVEL_FLAG:I = 0x80000

.field static final DELTA_EVENT_FLAG:I = 0x800000

.field static final DELTA_STATE2_FLAG:I = 0x200000

.field static final DELTA_STATE_FLAG:I = 0x100000

.field static final DELTA_STATE_MASK:I = -0x1000000

.field static final DELTA_TIME_ABS:I = 0x7fffd

.field static final DELTA_TIME_INT:I = 0x7fffe

.field static final DELTA_TIME_LONG:I = 0x7ffff

.field static final DELTA_TIME_MASK:I = 0x7ffff

.field static final DELTA_WAKELOCK_FLAG:I = 0x400000

.field private static final MAGIC:I = -0x458a8b8b

.field static final MAX_DAILY_ITEMS:I = 0xa

.field static final MAX_HISTORY_BUFFER:I = 0x40000

.field private static final MAX_HISTORY_ITEMS:I = 0x7d0

.field static final MAX_LEVEL_STEPS:I = 0xc8

.field static final MAX_MAX_HISTORY_BUFFER:I = 0x50000

.field private static final MAX_MAX_HISTORY_ITEMS:I = 0xbb8

.field private static final MAX_WAKELOCKS_PER_UID:I = 0x64

.field static final MSG_REPORT_CHARGING:I = 0x3

.field static final MSG_REPORT_POWER_CHANGE:I = 0x2

.field static final MSG_UPDATE_WAKELOCKS:I = 0x1

.field private static final NETWORK_STATS_DELTA:I = 0x2

.field private static final NETWORK_STATS_LAST:I = 0x0

.field private static final NETWORK_STATS_NEXT:I = 0x1

.field static final STATE_BATTERY_HEALTH_MASK:I = 0x7

.field static final STATE_BATTERY_HEALTH_SHIFT:I = 0x1a

.field static final STATE_BATTERY_PLUG_MASK:I = 0x3

.field static final STATE_BATTERY_PLUG_SHIFT:I = 0x18

.field static final STATE_BATTERY_STATUS_MASK:I = 0x7

.field static final STATE_BATTERY_STATUS_SHIFT:I = 0x1d

.field private static final TAG:Ljava/lang/String; = "BatteryStatsImpl"

.field private static final USE_OLD_HISTORY:Z = false

.field private static final VERSION:I = 0x82

.field private static sNumSpeedSteps:I


# instance fields
.field final mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

.field mActiveHistoryStates:I

.field mActiveHistoryStates2:I

.field mAudioOnNesting:I

.field mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mAudioTurnedOnTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field final mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field private mCallback:Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;

.field mCameraOnNesting:I

.field mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mCameraTurnedOnTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mChangedStates:I

.field mChangedStates2:I

.field final mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

.field mCharging:Z

.field public final mCheckinFile:Lcom/android/internal/os/AtomicFile;

.field final mCurHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

.field mCurStepCpuSystemTime:J

.field mCurStepCpuUserTime:J

.field mCurStepMode:I

.field mCurStepStatIOWaitTime:J

.field mCurStepStatIdleTime:J

.field mCurStepStatIrqTime:J

.field mCurStepStatSoftIrqTime:J

.field mCurStepStatSystemTime:J

.field mCurStepStatUserTime:J

.field mCurrentBatteryLevel:I

.field final mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

.field final mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

.field public final mDailyFile:Lcom/android/internal/os/AtomicFile;

.field final mDailyItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/BatteryStats$DailyItem;",
            ">;"
        }
    .end annotation
.end field

.field mDailyPackageChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/BatteryStats$PackageChange;",
            ">;"
        }
    .end annotation
.end field

.field mDailyStartTime:J

.field mDeviceIdleModeEnabled:Z

.field mDeviceIdleModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mDeviceIdling:Z

.field mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mDischargeAmountScreenOff:I

.field mDischargeAmountScreenOffSinceCharge:I

.field mDischargeAmountScreenOn:I

.field mDischargeAmountScreenOnSinceCharge:I

.field mDischargeCurrentLevel:I

.field mDischargePlugLevel:I

.field mDischargeScreenOffUnplugLevel:I

.field mDischargeScreenOnUnplugLevel:I

.field mDischargeStartLevel:I

.field final mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

.field mDischargeUnplugLevel:I

.field mDistributeWakelockCpu:Z

.field final mDrawTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mEndPlatformVersion:Ljava/lang/String;

.field private final mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

.field private final mFile:Lcom/android/internal/util/JournaledFile;

.field mFlashlightOnNesting:I

.field mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mFlashlightTurnedOnTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field final mFullTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field final mFullWifiLockTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mGlobalWifiRunning:Z

.field mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mGpsNesting:I

.field public final mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

.field private mHasBluetoothEnergyReporting:Z

.field private mHasWifiEnergyReporting:Z

.field mHaveBatteryLevel:Z

.field mHighDischargeAmountSinceCharge:I

.field mHistory:Landroid/os/BatteryStats$HistoryItem;

.field final mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

.field mHistoryBaseTime:J

.field final mHistoryBuffer:Landroid/os/Parcel;

.field mHistoryBufferLastPos:I

.field mHistoryCache:Landroid/os/BatteryStats$HistoryItem;

.field final mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

.field mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

.field private mHistoryIterator:Landroid/os/BatteryStats$HistoryItem;

.field mHistoryLastEnd:Landroid/os/BatteryStats$HistoryItem;

.field final mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

.field final mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

.field mHistoryOverflow:Z

.field final mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

.field final mHistoryTagPool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/BatteryStats$HistoryTag;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mInitStepMode:I

.field private mInitialAcquireWakeName:Ljava/lang/String;

.field private mInitialAcquireWakeUid:I

.field mInteractive:Z

.field mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mIsolatedUids:Landroid/util/SparseIntArray;

.field private mIteratingHistory:Z

.field private final mKernelCpuSpeedReader:Lcom/android/internal/os/KernelCpuSpeedReader;

.field private final mKernelUidCpuTimeReader:Lcom/android/internal/os/KernelUidCpuTimeReader;

.field private final mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

.field private final mKernelWakelockStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;",
            ">;"
        }
    .end annotation
.end field

.field mLastChargeStepLevel:I

.field mLastChargingStateLevel:I

.field mLastDischargeStepLevel:I

.field mLastHistoryElapsedRealtime:J

.field mLastHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

.field mLastHistoryStepLevel:B

.field final mLastPartialTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mLastStepCpuSystemTime:J

.field mLastStepCpuUserTime:J

.field mLastStepStatIOWaitTime:J

.field mLastStepStatIdleTime:J

.field mLastStepStatIrqTime:J

.field mLastStepStatSoftIrqTime:J

.field mLastStepStatSystemTime:J

.field mLastStepStatUserTime:J

.field mLastWakeupReason:Ljava/lang/String;

.field mLastWakeupUptimeMs:J

.field mLastWriteTime:J

.field private mLoadedNumConnectivityChange:I

.field mLowDischargeAmountSinceCharge:I

.field mMaxChargeStepLevel:I

.field mMinDischargeStepLevel:I

.field private mMobileIfaces:[Ljava/lang/String;

.field private final mMobileNetworkStats:[Landroid/net/NetworkStats;

.field mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mMobileRadioActiveStartTime:J

.field mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mMobileRadioPowerState:I

.field mModStepMode:I

.field final mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field final mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field private final mNetworkStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

.field mNextHistoryTagIdx:I

.field mNextMaxDailyDeadline:J

.field mNextMinDailyDeadline:J

.field mNoAutoReset:Z

.field private mNumConnectivityChange:I

.field mNumHistoryItems:I

.field mNumHistoryTagChars:I

.field mOnBattery:Z

.field mOnBatteryInternal:Z

.field final mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

.field final mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

.field final mPartialTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mPendingWrite:Landroid/os/Parcel;

.field mPhoneDataConnectionType:I

.field final mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mPhoneOn:Z

.field mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field private mPhoneServiceState:I

.field private mPhoneServiceStateRaw:I

.field mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mPhoneSignalStrengthBin:I

.field mPhoneSignalStrengthBinRaw:I

.field final mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field private mPhoneSimStateRaw:I

.field private mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field mPowerSaveModeEnabled:Z

.field mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mReadHistoryChars:I

.field final mReadHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

.field mReadHistoryStrings:[Ljava/lang/String;

.field mReadHistoryUids:[I

.field private mReadOverflow:Z

.field mRealtime:J

.field mRealtimeStart:J

.field public mRecordAllHistory:Z

.field mRecordingHistory:Z

.field mScreenBrightnessBin:I

.field final mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mScreenState:I

.field mSensorNesting:I

.field final mSensorTimers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;>;"
        }
    .end annotation
.end field

.field mShuttingDown:Z

.field mStartClockTime:J

.field mStartCount:I

.field mStartPlatformVersion:Ljava/lang/String;

.field mTempTotalCpuSystemTimeUs:J

.field mTempTotalCpuUserTimeUs:J

.field final mTmpHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

.field private final mTmpNetworkStatsEntry:Landroid/net/NetworkStats$Entry;

.field private final mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

.field mTrackRunningHistoryElapsedRealtime:J

.field mTrackRunningHistoryUptime:J

.field final mUidStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid;",
            ">;"
        }
    .end annotation
.end field

.field private mUnpluggedNumConnectivityChange:I

.field mUptime:J

.field mUptimeStart:J

.field mVideoOnNesting:I

.field mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mVideoTurnedOnTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mWakeLockImportant:Z

.field mWakeLockNesting:I

.field private final mWakeupReasonStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;",
            ">;"
        }
    .end annotation
.end field

.field final mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field final mWifiBatchedScanTimers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;>;"
        }
    .end annotation
.end field

.field mWifiFullLockNesting:I

.field private mWifiIfaces:[Ljava/lang/String;

.field mWifiMulticastNesting:I

.field final mWifiMulticastTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiNetworkStats:[Landroid/net/NetworkStats;

.field mWifiOn:Z

.field mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mWifiRadioPowerState:I

.field final mWifiRunningTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mWifiScanNesting:I

.field final mWifiScanTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mWifiSignalStrengthBin:I

.field final mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mWifiState:I

.field final mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mWifiSupplState:I

.field final mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mWindowTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field final mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static synthetic -get0(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCallback:Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 10058
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$1;

    #@2
    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsImpl$1;-><init>()V

    #@5
    .line 10057
    sput-object v0, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 95
    return-void
.end method

.method public constructor <init>()V
    .locals 9

    #@0
    .prologue
    const/16 v8, 0x32

    #@2
    const-wide/16 v6, 0x0

    #@4
    const/4 v5, 0x0

    #@5
    const/4 v2, -0x1

    #@6
    const/4 v4, 0x0

    #@7
    .line 498
    invoke-direct {p0}, Landroid/os/BatteryStats;-><init>()V

    #@a
    .line 133
    new-instance v0, Lcom/android/internal/os/KernelWakelockReader;

    #@c
    invoke-direct {v0}, Lcom/android/internal/os/KernelWakelockReader;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

    #@11
    .line 134
    new-instance v0, Lcom/android/internal/os/KernelWakelockStats;

    #@13
    invoke-direct {v0}, Lcom/android/internal/os/KernelWakelockStats;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

    #@18
    .line 136
    new-instance v0, Lcom/android/internal/os/KernelUidCpuTimeReader;

    #@1a
    invoke-direct {v0}, Lcom/android/internal/os/KernelUidCpuTimeReader;-><init>()V

    #@1d
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelUidCpuTimeReader:Lcom/android/internal/os/KernelUidCpuTimeReader;

    #@1f
    .line 137
    new-instance v0, Lcom/android/internal/os/KernelCpuSpeedReader;

    #@21
    invoke-direct {v0}, Lcom/android/internal/os/KernelCpuSpeedReader;-><init>()V

    #@24
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelCpuSpeedReader:Lcom/android/internal/os/KernelCpuSpeedReader;

    #@26
    .line 197
    new-instance v0, Landroid/util/SparseIntArray;

    #@28
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@2b
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIsolatedUids:Landroid/util/SparseIntArray;

    #@2d
    .line 203
    new-instance v0, Landroid/util/SparseArray;

    #@2f
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@32
    .line 202
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    #@34
    .line 209
    new-instance v0, Ljava/util/ArrayList;

    #@36
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@39
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    #@3b
    .line 210
    new-instance v0, Ljava/util/ArrayList;

    #@3d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@40
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFullTimers:Ljava/util/ArrayList;

    #@42
    .line 211
    new-instance v0, Ljava/util/ArrayList;

    #@44
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@47
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWindowTimers:Ljava/util/ArrayList;

    #@49
    .line 212
    new-instance v0, Ljava/util/ArrayList;

    #@4b
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@4e
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDrawTimers:Ljava/util/ArrayList;

    #@50
    .line 213
    new-instance v0, Landroid/util/SparseArray;

    #@52
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@55
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    #@57
    .line 214
    new-instance v0, Ljava/util/ArrayList;

    #@59
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5c
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    #@5e
    .line 215
    new-instance v0, Ljava/util/ArrayList;

    #@60
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@63
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    #@65
    .line 216
    new-instance v0, Ljava/util/ArrayList;

    #@67
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@6a
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    #@6c
    .line 217
    new-instance v0, Ljava/util/ArrayList;

    #@6e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@71
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    #@73
    .line 218
    new-instance v0, Landroid/util/SparseArray;

    #@75
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@78
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiBatchedScanTimers:Landroid/util/SparseArray;

    #@7a
    .line 219
    new-instance v0, Ljava/util/ArrayList;

    #@7c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@7f
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioTurnedOnTimers:Ljava/util/ArrayList;

    #@81
    .line 220
    new-instance v0, Ljava/util/ArrayList;

    #@83
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@86
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoTurnedOnTimers:Ljava/util/ArrayList;

    #@88
    .line 221
    new-instance v0, Ljava/util/ArrayList;

    #@8a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8d
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightTurnedOnTimers:Ljava/util/ArrayList;

    #@8f
    .line 222
    new-instance v0, Ljava/util/ArrayList;

    #@91
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@94
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraTurnedOnTimers:Ljava/util/ArrayList;

    #@96
    .line 225
    new-instance v0, Ljava/util/ArrayList;

    #@98
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9b
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    #@9d
    .line 229
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@9f
    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    #@a2
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@a4
    .line 233
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@a6
    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    #@a9
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@ab
    .line 241
    new-instance v0, Landroid/os/BatteryStats$HistoryEventTracker;

    #@ad
    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryEventTracker;-><init>()V

    #@b0
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    #@b2
    .line 244
    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHaveBatteryLevel:Z

    #@b4
    .line 245
    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    #@b6
    .line 250
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@b9
    move-result-object v0

    #@ba
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    #@bc
    .line 251
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    #@be
    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    #@c1
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@c3
    .line 252
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    #@c5
    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    #@c8
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@ca
    .line 253
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    #@cc
    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    #@cf
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    #@d1
    .line 254
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    #@d3
    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    #@d6
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    #@d8
    .line 255
    new-instance v0, Ljava/util/HashMap;

    #@da
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@dd
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    #@df
    .line 259
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    #@e1
    .line 260
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryTagChars:I

    #@e3
    .line 261
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    #@e5
    .line 262
    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryOverflow:Z

    #@e7
    .line 263
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates:I

    #@e9
    .line 264
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates2:I

    #@eb
    .line 265
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryElapsedRealtime:J

    #@ed
    .line 266
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryElapsedRealtime:J

    #@ef
    .line 267
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryUptime:J

    #@f1
    .line 269
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    #@f3
    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    #@f6
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@f8
    .line 277
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@fa
    .line 278
    iput-byte v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepLevel:B

    #@fc
    .line 279
    new-instance v0, Landroid/os/BatteryStats$HistoryStepDetails;

    #@fe
    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    #@101
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@103
    .line 280
    new-instance v0, Landroid/os/BatteryStats$HistoryStepDetails;

    #@105
    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    #@108
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@10a
    .line 281
    new-instance v0, Landroid/os/BatteryStats$HistoryStepDetails;

    #@10c
    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    #@10f
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@111
    .line 329
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    #@113
    .line 332
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    #@115
    .line 333
    const/4 v0, 0x5

    #@116
    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@118
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@11a
    .line 362
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    #@11c
    .line 363
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBinRaw:I

    #@11e
    .line 365
    const/4 v0, 0x5

    #@11f
    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@121
    .line 364
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@123
    .line 369
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionType:I

    #@125
    .line 371
    const/16 v0, 0x11

    #@127
    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@129
    .line 370
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@12b
    .line 374
    const/4 v0, 0x4

    #@12c
    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@12e
    .line 373
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@130
    .line 376
    const/4 v0, 0x4

    #@131
    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@133
    .line 375
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@135
    .line 379
    const/4 v0, 0x4

    #@136
    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@138
    .line 378
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@13a
    .line 382
    const/4 v0, 0x4

    #@13b
    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@13d
    .line 381
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@13f
    .line 390
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiState:I

    #@141
    .line 391
    const/16 v0, 0x8

    #@143
    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@145
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@147
    .line 393
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplState:I

    #@149
    .line 394
    const/16 v0, 0xd

    #@14b
    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@14d
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@14f
    .line 396
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthBin:I

    #@151
    .line 398
    const/4 v0, 0x5

    #@152
    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@154
    .line 397
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@156
    .line 400
    sget v0, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    #@158
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioPowerState:I

    #@15a
    .line 408
    sget v0, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    #@15c
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRadioPowerState:I

    #@15e
    .line 420
    const/4 v0, 0x1

    #@15f
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCharging:Z

    #@161
    .line 442
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitStepMode:I

    #@163
    .line 443
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    #@165
    .line 444
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    #@167
    .line 448
    new-instance v0, Landroid/os/BatteryStats$LevelStepTracker;

    #@169
    const/16 v1, 0xc8

    #@16b
    invoke-direct {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    #@16e
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@170
    .line 449
    new-instance v0, Landroid/os/BatteryStats$LevelStepTracker;

    #@172
    const/16 v1, 0x190

    #@174
    invoke-direct {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    #@177
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@179
    .line 454
    new-instance v0, Landroid/os/BatteryStats$LevelStepTracker;

    #@17b
    const/16 v1, 0xc8

    #@17d
    invoke-direct {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    #@180
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@182
    .line 455
    new-instance v0, Landroid/os/BatteryStats$LevelStepTracker;

    #@184
    const/16 v1, 0x190

    #@186
    invoke-direct {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    #@189
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@18b
    .line 459
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyStartTime:J

    #@18d
    .line 460
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMinDailyDeadline:J

    #@18f
    .line 461
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMaxDailyDeadline:J

    #@191
    .line 463
    new-instance v0, Ljava/util/ArrayList;

    #@193
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@196
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyItems:Ljava/util/ArrayList;

    #@198
    .line 465
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWriteTime:J

    #@19a
    .line 467
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceState:I

    #@19c
    .line 468
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceStateRaw:I

    #@19e
    .line 469
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSimStateRaw:I

    #@1a0
    .line 475
    new-instance v0, Landroid/net/NetworkStats$Entry;

    #@1a2
    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    #@1a5
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpNetworkStatsEntry:Landroid/net/NetworkStats$Entry;

    #@1a7
    .line 478
    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHasWifiEnergyReporting:Z

    #@1a9
    .line 479
    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHasBluetoothEnergyReporting:Z

    #@1ab
    .line 484
    new-instance v0, Ljava/util/HashMap;

    #@1ad
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1b0
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    #@1b2
    .line 490
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupReason:Ljava/lang/String;

    #@1b4
    .line 491
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupUptimeMs:J

    #@1b6
    .line 492
    new-instance v0, Ljava/util/HashMap;

    #@1b8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1bb
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    #@1bd
    .line 2358
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChangedStates:I

    #@1bf
    .line 2359
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChangedStates2:I

    #@1c1
    .line 2763
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitialAcquireWakeUid:I

    #@1c3
    .line 3910
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    #@1c5
    .line 3940
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanNesting:I

    #@1c7
    .line 3982
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    #@1c9
    .line 7557
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    #@1cb
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileIfaces:[Ljava/lang/String;

    #@1cd
    .line 7558
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    #@1cf
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiIfaces:[Ljava/lang/String;

    #@1d1
    .line 7560
    new-instance v0, Lcom/android/internal/net/NetworkStatsFactory;

    #@1d3
    invoke-direct {v0}, Lcom/android/internal/net/NetworkStatsFactory;-><init>()V

    #@1d6
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    #@1d8
    .line 7566
    const/4 v0, 0x3

    #@1d9
    new-array v0, v0, [Landroid/net/NetworkStats;

    #@1db
    .line 7567
    new-instance v1, Landroid/net/NetworkStats;

    #@1dd
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@1e0
    move-result-wide v2

    #@1e1
    invoke-direct {v1, v2, v3, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    #@1e4
    aput-object v1, v0, v4

    #@1e6
    .line 7568
    new-instance v1, Landroid/net/NetworkStats;

    #@1e8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@1eb
    move-result-wide v2

    #@1ec
    invoke-direct {v1, v2, v3, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    #@1ef
    const/4 v2, 0x1

    #@1f0
    aput-object v1, v0, v2

    #@1f2
    .line 7569
    new-instance v1, Landroid/net/NetworkStats;

    #@1f4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@1f7
    move-result-wide v2

    #@1f8
    invoke-direct {v1, v2, v3, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    #@1fb
    const/4 v2, 0x2

    #@1fc
    aput-object v1, v0, v2

    #@1fe
    .line 7566
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileNetworkStats:[Landroid/net/NetworkStats;

    #@200
    .line 7572
    const/4 v0, 0x3

    #@201
    new-array v0, v0, [Landroid/net/NetworkStats;

    #@203
    .line 7573
    new-instance v1, Landroid/net/NetworkStats;

    #@205
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@208
    move-result-wide v2

    #@209
    invoke-direct {v1, v2, v3, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    #@20c
    aput-object v1, v0, v4

    #@20e
    .line 7574
    new-instance v1, Landroid/net/NetworkStats;

    #@210
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@213
    move-result-wide v2

    #@214
    invoke-direct {v1, v2, v3, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    #@217
    const/4 v2, 0x1

    #@218
    aput-object v1, v0, v2

    #@21a
    .line 7575
    new-instance v1, Landroid/net/NetworkStats;

    #@21c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@21f
    move-result-wide v2

    #@220
    invoke-direct {v1, v2, v3, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    #@223
    const/4 v2, 0x2

    #@224
    aput-object v1, v0, v2

    #@226
    .line 7572
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiNetworkStats:[Landroid/net/NetworkStats;

    #@228
    .line 8841
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPendingWrite:Landroid/os/Parcel;

    #@22a
    .line 8842
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    #@22c
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@22f
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@231
    .line 499
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    #@233
    .line 500
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    #@235
    .line 501
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyFile:Lcom/android/internal/os/AtomicFile;

    #@237
    .line 502
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    #@239
    .line 503
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    #@23b
    .line 504
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->clearHistoryLocked()V

    #@23e
    .line 498
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 9
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/16 v8, 0x32

    #@2
    const-wide/16 v6, 0x0

    #@4
    const/4 v5, 0x0

    #@5
    const/4 v2, -0x1

    #@6
    const/4 v4, 0x0

    #@7
    .line 6865
    invoke-direct {p0}, Landroid/os/BatteryStats;-><init>()V

    #@a
    .line 133
    new-instance v0, Lcom/android/internal/os/KernelWakelockReader;

    #@c
    invoke-direct {v0}, Lcom/android/internal/os/KernelWakelockReader;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

    #@11
    .line 134
    new-instance v0, Lcom/android/internal/os/KernelWakelockStats;

    #@13
    invoke-direct {v0}, Lcom/android/internal/os/KernelWakelockStats;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

    #@18
    .line 136
    new-instance v0, Lcom/android/internal/os/KernelUidCpuTimeReader;

    #@1a
    invoke-direct {v0}, Lcom/android/internal/os/KernelUidCpuTimeReader;-><init>()V

    #@1d
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelUidCpuTimeReader:Lcom/android/internal/os/KernelUidCpuTimeReader;

    #@1f
    .line 137
    new-instance v0, Lcom/android/internal/os/KernelCpuSpeedReader;

    #@21
    invoke-direct {v0}, Lcom/android/internal/os/KernelCpuSpeedReader;-><init>()V

    #@24
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelCpuSpeedReader:Lcom/android/internal/os/KernelCpuSpeedReader;

    #@26
    .line 197
    new-instance v0, Landroid/util/SparseIntArray;

    #@28
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@2b
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIsolatedUids:Landroid/util/SparseIntArray;

    #@2d
    .line 203
    new-instance v0, Landroid/util/SparseArray;

    #@2f
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@32
    .line 202
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    #@34
    .line 209
    new-instance v0, Ljava/util/ArrayList;

    #@36
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@39
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    #@3b
    .line 210
    new-instance v0, Ljava/util/ArrayList;

    #@3d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@40
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFullTimers:Ljava/util/ArrayList;

    #@42
    .line 211
    new-instance v0, Ljava/util/ArrayList;

    #@44
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@47
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWindowTimers:Ljava/util/ArrayList;

    #@49
    .line 212
    new-instance v0, Ljava/util/ArrayList;

    #@4b
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@4e
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDrawTimers:Ljava/util/ArrayList;

    #@50
    .line 213
    new-instance v0, Landroid/util/SparseArray;

    #@52
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@55
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    #@57
    .line 214
    new-instance v0, Ljava/util/ArrayList;

    #@59
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5c
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    #@5e
    .line 215
    new-instance v0, Ljava/util/ArrayList;

    #@60
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@63
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    #@65
    .line 216
    new-instance v0, Ljava/util/ArrayList;

    #@67
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@6a
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    #@6c
    .line 217
    new-instance v0, Ljava/util/ArrayList;

    #@6e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@71
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    #@73
    .line 218
    new-instance v0, Landroid/util/SparseArray;

    #@75
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@78
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiBatchedScanTimers:Landroid/util/SparseArray;

    #@7a
    .line 219
    new-instance v0, Ljava/util/ArrayList;

    #@7c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@7f
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioTurnedOnTimers:Ljava/util/ArrayList;

    #@81
    .line 220
    new-instance v0, Ljava/util/ArrayList;

    #@83
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@86
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoTurnedOnTimers:Ljava/util/ArrayList;

    #@88
    .line 221
    new-instance v0, Ljava/util/ArrayList;

    #@8a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8d
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightTurnedOnTimers:Ljava/util/ArrayList;

    #@8f
    .line 222
    new-instance v0, Ljava/util/ArrayList;

    #@91
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@94
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraTurnedOnTimers:Ljava/util/ArrayList;

    #@96
    .line 225
    new-instance v0, Ljava/util/ArrayList;

    #@98
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9b
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    #@9d
    .line 229
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@9f
    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    #@a2
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@a4
    .line 233
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@a6
    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    #@a9
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@ab
    .line 241
    new-instance v0, Landroid/os/BatteryStats$HistoryEventTracker;

    #@ad
    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryEventTracker;-><init>()V

    #@b0
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    #@b2
    .line 244
    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHaveBatteryLevel:Z

    #@b4
    .line 245
    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    #@b6
    .line 250
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@b9
    move-result-object v0

    #@ba
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    #@bc
    .line 251
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    #@be
    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    #@c1
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@c3
    .line 252
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    #@c5
    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    #@c8
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@ca
    .line 253
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    #@cc
    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    #@cf
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    #@d1
    .line 254
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    #@d3
    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    #@d6
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    #@d8
    .line 255
    new-instance v0, Ljava/util/HashMap;

    #@da
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@dd
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    #@df
    .line 259
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    #@e1
    .line 260
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryTagChars:I

    #@e3
    .line 261
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    #@e5
    .line 262
    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryOverflow:Z

    #@e7
    .line 263
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates:I

    #@e9
    .line 264
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates2:I

    #@eb
    .line 265
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryElapsedRealtime:J

    #@ed
    .line 266
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryElapsedRealtime:J

    #@ef
    .line 267
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryUptime:J

    #@f1
    .line 269
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    #@f3
    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    #@f6
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@f8
    .line 277
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@fa
    .line 278
    iput-byte v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepLevel:B

    #@fc
    .line 279
    new-instance v0, Landroid/os/BatteryStats$HistoryStepDetails;

    #@fe
    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    #@101
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@103
    .line 280
    new-instance v0, Landroid/os/BatteryStats$HistoryStepDetails;

    #@105
    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    #@108
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@10a
    .line 281
    new-instance v0, Landroid/os/BatteryStats$HistoryStepDetails;

    #@10c
    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    #@10f
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@111
    .line 329
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    #@113
    .line 332
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    #@115
    .line 333
    const/4 v0, 0x5

    #@116
    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@118
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@11a
    .line 362
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    #@11c
    .line 363
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBinRaw:I

    #@11e
    .line 365
    const/4 v0, 0x5

    #@11f
    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@121
    .line 364
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@123
    .line 369
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionType:I

    #@125
    .line 371
    const/16 v0, 0x11

    #@127
    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@129
    .line 370
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@12b
    .line 374
    const/4 v0, 0x4

    #@12c
    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@12e
    .line 373
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@130
    .line 376
    const/4 v0, 0x4

    #@131
    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@133
    .line 375
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@135
    .line 379
    const/4 v0, 0x4

    #@136
    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@138
    .line 378
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@13a
    .line 382
    const/4 v0, 0x4

    #@13b
    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@13d
    .line 381
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@13f
    .line 390
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiState:I

    #@141
    .line 391
    const/16 v0, 0x8

    #@143
    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@145
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@147
    .line 393
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplState:I

    #@149
    .line 394
    const/16 v0, 0xd

    #@14b
    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@14d
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@14f
    .line 396
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthBin:I

    #@151
    .line 398
    const/4 v0, 0x5

    #@152
    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@154
    .line 397
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@156
    .line 400
    sget v0, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    #@158
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioPowerState:I

    #@15a
    .line 408
    sget v0, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    #@15c
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRadioPowerState:I

    #@15e
    .line 420
    const/4 v0, 0x1

    #@15f
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCharging:Z

    #@161
    .line 442
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitStepMode:I

    #@163
    .line 443
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    #@165
    .line 444
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    #@167
    .line 448
    new-instance v0, Landroid/os/BatteryStats$LevelStepTracker;

    #@169
    const/16 v1, 0xc8

    #@16b
    invoke-direct {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    #@16e
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@170
    .line 449
    new-instance v0, Landroid/os/BatteryStats$LevelStepTracker;

    #@172
    const/16 v1, 0x190

    #@174
    invoke-direct {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    #@177
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@179
    .line 454
    new-instance v0, Landroid/os/BatteryStats$LevelStepTracker;

    #@17b
    const/16 v1, 0xc8

    #@17d
    invoke-direct {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    #@180
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@182
    .line 455
    new-instance v0, Landroid/os/BatteryStats$LevelStepTracker;

    #@184
    const/16 v1, 0x190

    #@186
    invoke-direct {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    #@189
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@18b
    .line 459
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyStartTime:J

    #@18d
    .line 460
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMinDailyDeadline:J

    #@18f
    .line 461
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMaxDailyDeadline:J

    #@191
    .line 463
    new-instance v0, Ljava/util/ArrayList;

    #@193
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@196
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyItems:Ljava/util/ArrayList;

    #@198
    .line 465
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWriteTime:J

    #@19a
    .line 467
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceState:I

    #@19c
    .line 468
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceStateRaw:I

    #@19e
    .line 469
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSimStateRaw:I

    #@1a0
    .line 475
    new-instance v0, Landroid/net/NetworkStats$Entry;

    #@1a2
    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    #@1a5
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpNetworkStatsEntry:Landroid/net/NetworkStats$Entry;

    #@1a7
    .line 478
    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHasWifiEnergyReporting:Z

    #@1a9
    .line 479
    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHasBluetoothEnergyReporting:Z

    #@1ab
    .line 484
    new-instance v0, Ljava/util/HashMap;

    #@1ad
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1b0
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    #@1b2
    .line 490
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupReason:Ljava/lang/String;

    #@1b4
    .line 491
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupUptimeMs:J

    #@1b6
    .line 492
    new-instance v0, Ljava/util/HashMap;

    #@1b8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1bb
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    #@1bd
    .line 2358
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChangedStates:I

    #@1bf
    .line 2359
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChangedStates2:I

    #@1c1
    .line 2763
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitialAcquireWakeUid:I

    #@1c3
    .line 3910
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    #@1c5
    .line 3940
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanNesting:I

    #@1c7
    .line 3982
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    #@1c9
    .line 7557
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    #@1cb
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileIfaces:[Ljava/lang/String;

    #@1cd
    .line 7558
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    #@1cf
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiIfaces:[Ljava/lang/String;

    #@1d1
    .line 7560
    new-instance v0, Lcom/android/internal/net/NetworkStatsFactory;

    #@1d3
    invoke-direct {v0}, Lcom/android/internal/net/NetworkStatsFactory;-><init>()V

    #@1d6
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    #@1d8
    .line 7566
    const/4 v0, 0x3

    #@1d9
    new-array v0, v0, [Landroid/net/NetworkStats;

    #@1db
    .line 7567
    new-instance v1, Landroid/net/NetworkStats;

    #@1dd
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@1e0
    move-result-wide v2

    #@1e1
    invoke-direct {v1, v2, v3, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    #@1e4
    aput-object v1, v0, v4

    #@1e6
    .line 7568
    new-instance v1, Landroid/net/NetworkStats;

    #@1e8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@1eb
    move-result-wide v2

    #@1ec
    invoke-direct {v1, v2, v3, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    #@1ef
    const/4 v2, 0x1

    #@1f0
    aput-object v1, v0, v2

    #@1f2
    .line 7569
    new-instance v1, Landroid/net/NetworkStats;

    #@1f4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@1f7
    move-result-wide v2

    #@1f8
    invoke-direct {v1, v2, v3, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    #@1fb
    const/4 v2, 0x2

    #@1fc
    aput-object v1, v0, v2

    #@1fe
    .line 7566
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileNetworkStats:[Landroid/net/NetworkStats;

    #@200
    .line 7572
    const/4 v0, 0x3

    #@201
    new-array v0, v0, [Landroid/net/NetworkStats;

    #@203
    .line 7573
    new-instance v1, Landroid/net/NetworkStats;

    #@205
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@208
    move-result-wide v2

    #@209
    invoke-direct {v1, v2, v3, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    #@20c
    aput-object v1, v0, v4

    #@20e
    .line 7574
    new-instance v1, Landroid/net/NetworkStats;

    #@210
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@213
    move-result-wide v2

    #@214
    invoke-direct {v1, v2, v3, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    #@217
    const/4 v2, 0x1

    #@218
    aput-object v1, v0, v2

    #@21a
    .line 7575
    new-instance v1, Landroid/net/NetworkStats;

    #@21c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@21f
    move-result-wide v2

    #@220
    invoke-direct {v1, v2, v3, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    #@223
    const/4 v2, 0x2

    #@224
    aput-object v1, v0, v2

    #@226
    .line 7572
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiNetworkStats:[Landroid/net/NetworkStats;

    #@228
    .line 8841
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPendingWrite:Landroid/os/Parcel;

    #@22a
    .line 8842
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    #@22c
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@22f
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@231
    .line 6866
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    #@233
    .line 6867
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    #@235
    .line 6868
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyFile:Lcom/android/internal/os/AtomicFile;

    #@237
    .line 6869
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    #@239
    .line 6870
    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    #@23b
    .line 6871
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->clearHistoryLocked()V

    #@23e
    .line 6872
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->readFromParcel(Landroid/os/Parcel;)V

    #@241
    .line 6865
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Landroid/os/Handler;Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;)V
    .locals 11
    .param p1, "systemDir"    # Ljava/io/File;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "externalSync"    # Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    #@0
    .prologue
    .line 6791
    invoke-direct {p0}, Landroid/os/BatteryStats;-><init>()V

    #@3
    .line 133
    new-instance v1, Lcom/android/internal/os/KernelWakelockReader;

    #@5
    invoke-direct {v1}, Lcom/android/internal/os/KernelWakelockReader;-><init>()V

    #@8
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

    #@a
    .line 134
    new-instance v1, Lcom/android/internal/os/KernelWakelockStats;

    #@c
    invoke-direct {v1}, Lcom/android/internal/os/KernelWakelockStats;-><init>()V

    #@f
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

    #@11
    .line 136
    new-instance v1, Lcom/android/internal/os/KernelUidCpuTimeReader;

    #@13
    invoke-direct {v1}, Lcom/android/internal/os/KernelUidCpuTimeReader;-><init>()V

    #@16
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelUidCpuTimeReader:Lcom/android/internal/os/KernelUidCpuTimeReader;

    #@18
    .line 137
    new-instance v1, Lcom/android/internal/os/KernelCpuSpeedReader;

    #@1a
    invoke-direct {v1}, Lcom/android/internal/os/KernelCpuSpeedReader;-><init>()V

    #@1d
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelCpuSpeedReader:Lcom/android/internal/os/KernelCpuSpeedReader;

    #@1f
    .line 197
    new-instance v1, Landroid/util/SparseIntArray;

    #@21
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    #@24
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIsolatedUids:Landroid/util/SparseIntArray;

    #@26
    .line 203
    new-instance v1, Landroid/util/SparseArray;

    #@28
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@2b
    .line 202
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    #@2d
    .line 209
    new-instance v1, Ljava/util/ArrayList;

    #@2f
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@32
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    #@34
    .line 210
    new-instance v1, Ljava/util/ArrayList;

    #@36
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@39
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFullTimers:Ljava/util/ArrayList;

    #@3b
    .line 211
    new-instance v1, Ljava/util/ArrayList;

    #@3d
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@40
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWindowTimers:Ljava/util/ArrayList;

    #@42
    .line 212
    new-instance v1, Ljava/util/ArrayList;

    #@44
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@47
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDrawTimers:Ljava/util/ArrayList;

    #@49
    .line 213
    new-instance v1, Landroid/util/SparseArray;

    #@4b
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@4e
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    #@50
    .line 214
    new-instance v1, Ljava/util/ArrayList;

    #@52
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@55
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    #@57
    .line 215
    new-instance v1, Ljava/util/ArrayList;

    #@59
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5c
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    #@5e
    .line 216
    new-instance v1, Ljava/util/ArrayList;

    #@60
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@63
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    #@65
    .line 217
    new-instance v1, Ljava/util/ArrayList;

    #@67
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@6a
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    #@6c
    .line 218
    new-instance v1, Landroid/util/SparseArray;

    #@6e
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@71
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiBatchedScanTimers:Landroid/util/SparseArray;

    #@73
    .line 219
    new-instance v1, Ljava/util/ArrayList;

    #@75
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@78
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioTurnedOnTimers:Ljava/util/ArrayList;

    #@7a
    .line 220
    new-instance v1, Ljava/util/ArrayList;

    #@7c
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@7f
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoTurnedOnTimers:Ljava/util/ArrayList;

    #@81
    .line 221
    new-instance v1, Ljava/util/ArrayList;

    #@83
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@86
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightTurnedOnTimers:Ljava/util/ArrayList;

    #@88
    .line 222
    new-instance v1, Ljava/util/ArrayList;

    #@8a
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@8d
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraTurnedOnTimers:Ljava/util/ArrayList;

    #@8f
    .line 225
    new-instance v1, Ljava/util/ArrayList;

    #@91
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@94
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    #@96
    .line 229
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@98
    invoke-direct {v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    #@9b
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@9d
    .line 233
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@9f
    invoke-direct {v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    #@a2
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@a4
    .line 241
    new-instance v1, Landroid/os/BatteryStats$HistoryEventTracker;

    #@a6
    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryEventTracker;-><init>()V

    #@a9
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    #@ab
    .line 244
    const/4 v1, 0x0

    #@ac
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHaveBatteryLevel:Z

    #@ae
    .line 245
    const/4 v1, 0x0

    #@af
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    #@b1
    .line 250
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@b4
    move-result-object v1

    #@b5
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    #@b7
    .line 251
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    #@b9
    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    #@bc
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@be
    .line 252
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    #@c0
    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    #@c3
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@c5
    .line 253
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    #@c7
    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    #@ca
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    #@cc
    .line 254
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    #@ce
    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    #@d1
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    #@d3
    .line 255
    new-instance v1, Ljava/util/HashMap;

    #@d5
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@d8
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    #@da
    .line 259
    const/4 v1, 0x0

    #@db
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    #@dd
    .line 260
    const/4 v1, 0x0

    #@de
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryTagChars:I

    #@e0
    .line 261
    const/4 v1, -0x1

    #@e1
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    #@e3
    .line 262
    const/4 v1, 0x0

    #@e4
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryOverflow:Z

    #@e6
    .line 263
    const/4 v1, -0x1

    #@e7
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates:I

    #@e9
    .line 264
    const/4 v1, -0x1

    #@ea
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates2:I

    #@ec
    .line 265
    const-wide/16 v6, 0x0

    #@ee
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryElapsedRealtime:J

    #@f0
    .line 266
    const-wide/16 v6, 0x0

    #@f2
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryElapsedRealtime:J

    #@f4
    .line 267
    const-wide/16 v6, 0x0

    #@f6
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryUptime:J

    #@f8
    .line 269
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    #@fa
    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    #@fd
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@ff
    .line 277
    const/4 v1, 0x0

    #@100
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@102
    .line 278
    const/4 v1, 0x0

    #@103
    iput-byte v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepLevel:B

    #@105
    .line 279
    new-instance v1, Landroid/os/BatteryStats$HistoryStepDetails;

    #@107
    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    #@10a
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@10c
    .line 280
    new-instance v1, Landroid/os/BatteryStats$HistoryStepDetails;

    #@10e
    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    #@111
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@113
    .line 281
    new-instance v1, Landroid/os/BatteryStats$HistoryStepDetails;

    #@115
    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    #@118
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@11a
    .line 329
    const/4 v1, 0x0

    #@11b
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    #@11d
    .line 332
    const/4 v1, -0x1

    #@11e
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    #@120
    .line 333
    const/4 v1, 0x5

    #@121
    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@123
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@125
    .line 362
    const/4 v1, -0x1

    #@126
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    #@128
    .line 363
    const/4 v1, -0x1

    #@129
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBinRaw:I

    #@12b
    .line 365
    const/4 v1, 0x5

    #@12c
    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@12e
    .line 364
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@130
    .line 369
    const/4 v1, -0x1

    #@131
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionType:I

    #@133
    .line 371
    const/16 v1, 0x11

    #@135
    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@137
    .line 370
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@139
    .line 374
    const/4 v1, 0x4

    #@13a
    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@13c
    .line 373
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@13e
    .line 376
    const/4 v1, 0x4

    #@13f
    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@141
    .line 375
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@143
    .line 379
    const/4 v1, 0x4

    #@144
    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@146
    .line 378
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@148
    .line 382
    const/4 v1, 0x4

    #@149
    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@14b
    .line 381
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@14d
    .line 390
    const/4 v1, -0x1

    #@14e
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiState:I

    #@150
    .line 391
    const/16 v1, 0x8

    #@152
    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@154
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@156
    .line 393
    const/4 v1, -0x1

    #@157
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplState:I

    #@159
    .line 394
    const/16 v1, 0xd

    #@15b
    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@15d
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@15f
    .line 396
    const/4 v1, -0x1

    #@160
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthBin:I

    #@162
    .line 398
    const/4 v1, 0x5

    #@163
    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@165
    .line 397
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@167
    .line 400
    sget v1, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    #@169
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioPowerState:I

    #@16b
    .line 408
    sget v1, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    #@16d
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRadioPowerState:I

    #@16f
    .line 420
    const/4 v1, 0x1

    #@170
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCharging:Z

    #@172
    .line 442
    const/4 v1, 0x0

    #@173
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitStepMode:I

    #@175
    .line 443
    const/4 v1, 0x0

    #@176
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    #@178
    .line 444
    const/4 v1, 0x0

    #@179
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    #@17b
    .line 448
    new-instance v1, Landroid/os/BatteryStats$LevelStepTracker;

    #@17d
    const/16 v6, 0xc8

    #@17f
    invoke-direct {v1, v6}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    #@182
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@184
    .line 449
    new-instance v1, Landroid/os/BatteryStats$LevelStepTracker;

    #@186
    const/16 v6, 0x190

    #@188
    invoke-direct {v1, v6}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    #@18b
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@18d
    .line 454
    new-instance v1, Landroid/os/BatteryStats$LevelStepTracker;

    #@18f
    const/16 v6, 0xc8

    #@191
    invoke-direct {v1, v6}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    #@194
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@196
    .line 455
    new-instance v1, Landroid/os/BatteryStats$LevelStepTracker;

    #@198
    const/16 v6, 0x190

    #@19a
    invoke-direct {v1, v6}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    #@19d
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@19f
    .line 459
    const-wide/16 v6, 0x0

    #@1a1
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyStartTime:J

    #@1a3
    .line 460
    const-wide/16 v6, 0x0

    #@1a5
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMinDailyDeadline:J

    #@1a7
    .line 461
    const-wide/16 v6, 0x0

    #@1a9
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMaxDailyDeadline:J

    #@1ab
    .line 463
    new-instance v1, Ljava/util/ArrayList;

    #@1ad
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@1b0
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyItems:Ljava/util/ArrayList;

    #@1b2
    .line 465
    const-wide/16 v6, 0x0

    #@1b4
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWriteTime:J

    #@1b6
    .line 467
    const/4 v1, -0x1

    #@1b7
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceState:I

    #@1b9
    .line 468
    const/4 v1, -0x1

    #@1ba
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceStateRaw:I

    #@1bc
    .line 469
    const/4 v1, -0x1

    #@1bd
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSimStateRaw:I

    #@1bf
    .line 475
    new-instance v1, Landroid/net/NetworkStats$Entry;

    #@1c1
    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    #@1c4
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpNetworkStatsEntry:Landroid/net/NetworkStats$Entry;

    #@1c6
    .line 478
    const/4 v1, 0x0

    #@1c7
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHasWifiEnergyReporting:Z

    #@1c9
    .line 479
    const/4 v1, 0x0

    #@1ca
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHasBluetoothEnergyReporting:Z

    #@1cc
    .line 484
    new-instance v1, Ljava/util/HashMap;

    #@1ce
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@1d1
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    #@1d3
    .line 490
    const/4 v1, 0x0

    #@1d4
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupReason:Ljava/lang/String;

    #@1d6
    .line 491
    const-wide/16 v6, 0x0

    #@1d8
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupUptimeMs:J

    #@1da
    .line 492
    new-instance v1, Ljava/util/HashMap;

    #@1dc
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@1df
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    #@1e1
    .line 2358
    const/4 v1, 0x0

    #@1e2
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChangedStates:I

    #@1e4
    .line 2359
    const/4 v1, 0x0

    #@1e5
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChangedStates2:I

    #@1e7
    .line 2763
    const/4 v1, -0x1

    #@1e8
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitialAcquireWakeUid:I

    #@1ea
    .line 3910
    const/4 v1, 0x0

    #@1eb
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    #@1ed
    .line 3940
    const/4 v1, 0x0

    #@1ee
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanNesting:I

    #@1f0
    .line 3982
    const/4 v1, 0x0

    #@1f1
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    #@1f3
    .line 7557
    sget-object v1, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    #@1f5
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileIfaces:[Ljava/lang/String;

    #@1f7
    .line 7558
    sget-object v1, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    #@1f9
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiIfaces:[Ljava/lang/String;

    #@1fb
    .line 7560
    new-instance v1, Lcom/android/internal/net/NetworkStatsFactory;

    #@1fd
    invoke-direct {v1}, Lcom/android/internal/net/NetworkStatsFactory;-><init>()V

    #@200
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    #@202
    .line 7566
    const/4 v1, 0x3

    #@203
    new-array v1, v1, [Landroid/net/NetworkStats;

    #@205
    .line 7567
    new-instance v6, Landroid/net/NetworkStats;

    #@207
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@20a
    move-result-wide v8

    #@20b
    const/16 v7, 0x32

    #@20d
    invoke-direct {v6, v8, v9, v7}, Landroid/net/NetworkStats;-><init>(JI)V

    #@210
    const/4 v7, 0x0

    #@211
    aput-object v6, v1, v7

    #@213
    .line 7568
    new-instance v6, Landroid/net/NetworkStats;

    #@215
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@218
    move-result-wide v8

    #@219
    const/16 v7, 0x32

    #@21b
    invoke-direct {v6, v8, v9, v7}, Landroid/net/NetworkStats;-><init>(JI)V

    #@21e
    const/4 v7, 0x1

    #@21f
    aput-object v6, v1, v7

    #@221
    .line 7569
    new-instance v6, Landroid/net/NetworkStats;

    #@223
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@226
    move-result-wide v8

    #@227
    const/16 v7, 0x32

    #@229
    invoke-direct {v6, v8, v9, v7}, Landroid/net/NetworkStats;-><init>(JI)V

    #@22c
    const/4 v7, 0x2

    #@22d
    aput-object v6, v1, v7

    #@22f
    .line 7566
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileNetworkStats:[Landroid/net/NetworkStats;

    #@231
    .line 7572
    const/4 v1, 0x3

    #@232
    new-array v1, v1, [Landroid/net/NetworkStats;

    #@234
    .line 7573
    new-instance v6, Landroid/net/NetworkStats;

    #@236
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@239
    move-result-wide v8

    #@23a
    const/16 v7, 0x32

    #@23c
    invoke-direct {v6, v8, v9, v7}, Landroid/net/NetworkStats;-><init>(JI)V

    #@23f
    const/4 v7, 0x0

    #@240
    aput-object v6, v1, v7

    #@242
    .line 7574
    new-instance v6, Landroid/net/NetworkStats;

    #@244
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@247
    move-result-wide v8

    #@248
    const/16 v7, 0x32

    #@24a
    invoke-direct {v6, v8, v9, v7}, Landroid/net/NetworkStats;-><init>(JI)V

    #@24d
    const/4 v7, 0x1

    #@24e
    aput-object v6, v1, v7

    #@250
    .line 7575
    new-instance v6, Landroid/net/NetworkStats;

    #@252
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@255
    move-result-wide v8

    #@256
    const/16 v7, 0x32

    #@258
    invoke-direct {v6, v8, v9, v7}, Landroid/net/NetworkStats;-><init>(JI)V

    #@25b
    const/4 v7, 0x2

    #@25c
    aput-object v6, v1, v7

    #@25e
    .line 7572
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiNetworkStats:[Landroid/net/NetworkStats;

    #@260
    .line 8841
    const/4 v1, 0x0

    #@261
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPendingWrite:Landroid/os/Parcel;

    #@263
    .line 8842
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    #@265
    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@268
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@26a
    .line 6792
    if-eqz p1, :cond_0

    #@26c
    .line 6793
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    #@26e
    new-instance v6, Ljava/io/File;

    #@270
    const-string/jumbo v7, "batterystats.bin"

    #@273
    invoke-direct {v6, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@276
    .line 6794
    new-instance v7, Ljava/io/File;

    #@278
    const-string/jumbo v8, "batterystats.bin.tmp"

    #@27b
    invoke-direct {v7, p1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@27e
    .line 6793
    invoke-direct {v1, v6, v7}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    #@281
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    #@283
    .line 6798
    :goto_0
    new-instance v1, Lcom/android/internal/os/AtomicFile;

    #@285
    new-instance v6, Ljava/io/File;

    #@287
    const-string/jumbo v7, "batterystats-checkin.bin"

    #@28a
    invoke-direct {v6, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@28d
    invoke-direct {v1, v6}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    #@290
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    #@292
    .line 6799
    new-instance v1, Lcom/android/internal/os/AtomicFile;

    #@294
    new-instance v6, Ljava/io/File;

    #@296
    const-string/jumbo v7, "batterystats-daily.xml"

    #@299
    invoke-direct {v6, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@29c
    invoke-direct {v1, v6}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    #@29f
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyFile:Lcom/android/internal/os/AtomicFile;

    #@2a1
    .line 6800
    iput-object p3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    #@2a3
    .line 6801
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    #@2a5
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@2a8
    move-result-object v6

    #@2a9
    invoke-direct {v1, p0, v6}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Landroid/os/Looper;)V

    #@2ac
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    #@2ae
    .line 6802
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    #@2b0
    add-int/lit8 v1, v1, 0x1

    #@2b2
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    #@2b4
    .line 6803
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2b6
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@2b8
    const/4 v7, 0x0

    #@2b9
    const/4 v8, -0x1

    #@2ba
    const/4 v9, 0x0

    #@2bb
    invoke-direct {v1, v7, v8, v9, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@2be
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2c0
    .line 6804
    const/4 v0, 0x0

    #@2c1
    .local v0, "i":I
    :goto_1
    const/4 v1, 0x5

    #@2c2
    if-ge v0, v1, :cond_1

    #@2c4
    .line 6805
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2c6
    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2c8
    rsub-int/lit8 v7, v0, -0x64

    #@2ca
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@2cc
    const/4 v9, 0x0

    #@2cd
    const/4 v10, 0x0

    #@2ce
    invoke-direct {v6, v9, v7, v10, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@2d1
    aput-object v6, v1, v0

    #@2d3
    .line 6804
    add-int/lit8 v0, v0, 0x1

    #@2d5
    goto :goto_1

    #@2d6
    .line 6796
    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x0

    #@2d7
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    #@2d9
    goto :goto_0

    #@2da
    .line 6807
    .restart local v0    # "i":I
    :cond_1
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2dc
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@2de
    const/4 v7, 0x0

    #@2df
    const/16 v8, -0xa

    #@2e1
    const/4 v9, 0x0

    #@2e2
    invoke-direct {v1, v7, v8, v9, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@2e5
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2e7
    .line 6808
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2e9
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@2eb
    const/4 v7, 0x0

    #@2ec
    const/4 v8, -0x2

    #@2ed
    const/4 v9, 0x0

    #@2ee
    invoke-direct {v1, v7, v8, v9, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@2f1
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2f3
    .line 6809
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2f5
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@2f7
    const/4 v7, 0x0

    #@2f8
    const/16 v8, -0xb

    #@2fa
    const/4 v9, 0x0

    #@2fb
    invoke-direct {v1, v7, v8, v9, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@2fe
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@300
    .line 6810
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@302
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@304
    const/4 v7, 0x0

    #@305
    const/16 v8, -0xc

    #@307
    const/4 v9, 0x0

    #@308
    invoke-direct {v1, v7, v8, v9, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@30b
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@30d
    .line 6811
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@30f
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@311
    const/4 v7, 0x0

    #@312
    const/4 v8, -0x3

    #@313
    const/4 v9, 0x0

    #@314
    invoke-direct {v1, v7, v8, v9, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@317
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@319
    .line 6812
    const/4 v0, 0x0

    #@31a
    :goto_2
    const/4 v1, 0x5

    #@31b
    if-ge v0, v1, :cond_2

    #@31d
    .line 6813
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@31f
    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@321
    rsub-int v7, v0, -0xc8

    #@323
    .line 6814
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@325
    .line 6813
    const/4 v9, 0x0

    #@326
    const/4 v10, 0x0

    #@327
    invoke-direct {v6, v9, v7, v10, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@32a
    aput-object v6, v1, v0

    #@32c
    .line 6812
    add-int/lit8 v0, v0, 0x1

    #@32e
    goto :goto_2

    #@32f
    .line 6816
    :cond_2
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@331
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@333
    const/4 v7, 0x0

    #@334
    const/16 v8, -0xc7

    #@336
    const/4 v9, 0x0

    #@337
    invoke-direct {v1, v7, v8, v9, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@33a
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@33c
    .line 6817
    const/4 v0, 0x0

    #@33d
    :goto_3
    const/16 v1, 0x11

    #@33f
    if-ge v0, v1, :cond_3

    #@341
    .line 6818
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@343
    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@345
    rsub-int v7, v0, -0x12c

    #@347
    .line 6819
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@349
    .line 6818
    const/4 v9, 0x0

    #@34a
    const/4 v10, 0x0

    #@34b
    invoke-direct {v6, v9, v7, v10, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@34e
    aput-object v6, v1, v0

    #@350
    .line 6817
    add-int/lit8 v0, v0, 0x1

    #@352
    goto :goto_3

    #@353
    .line 6821
    :cond_3
    const/4 v0, 0x0

    #@354
    :goto_4
    const/4 v1, 0x4

    #@355
    if-ge v0, v1, :cond_4

    #@357
    .line 6822
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@359
    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@35b
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@35d
    invoke-direct {v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@360
    aput-object v6, v1, v0

    #@362
    .line 6823
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@364
    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@366
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@368
    invoke-direct {v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@36b
    aput-object v6, v1, v0

    #@36d
    .line 6821
    add-int/lit8 v0, v0, 0x1

    #@36f
    goto :goto_4

    #@370
    .line 6825
    :cond_4
    const/4 v0, 0x0

    #@371
    :goto_5
    const/4 v1, 0x4

    #@372
    if-ge v0, v1, :cond_5

    #@374
    .line 6826
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@376
    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@378
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@37a
    invoke-direct {v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@37d
    aput-object v6, v1, v0

    #@37f
    .line 6827
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@381
    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@383
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@385
    invoke-direct {v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@388
    aput-object v6, v1, v0

    #@38a
    .line 6825
    add-int/lit8 v0, v0, 0x1

    #@38c
    goto :goto_5

    #@38d
    .line 6829
    :cond_5
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@38f
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@391
    const/4 v7, 0x0

    #@392
    const/16 v8, -0x190

    #@394
    const/4 v9, 0x0

    #@395
    invoke-direct {v1, v7, v8, v9, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@398
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@39a
    .line 6830
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@39c
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@39e
    const/4 v7, 0x0

    #@39f
    const/16 v8, -0x191

    #@3a1
    const/4 v9, 0x0

    #@3a2
    invoke-direct {v1, v7, v8, v9, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@3a5
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@3a7
    .line 6831
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@3a9
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@3ab
    invoke-direct {v1, v6}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@3ae
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@3b0
    .line 6832
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@3b2
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@3b4
    invoke-direct {v1, v6}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@3b7
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@3b9
    .line 6833
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@3bb
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@3bd
    invoke-direct {v1, v6}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@3c0
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@3c2
    .line 6834
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@3c4
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@3c6
    const/4 v7, 0x0

    #@3c7
    const/4 v8, -0x4

    #@3c8
    const/4 v9, 0x0

    #@3c9
    invoke-direct {v1, v7, v8, v9, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@3cc
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@3ce
    .line 6835
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@3d0
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@3d2
    const/4 v7, 0x0

    #@3d3
    const/4 v8, -0x5

    #@3d4
    const/4 v9, 0x0

    #@3d5
    invoke-direct {v1, v7, v8, v9, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@3d8
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@3da
    .line 6836
    const/4 v0, 0x0

    #@3db
    :goto_6
    const/16 v1, 0x8

    #@3dd
    if-ge v0, v1, :cond_6

    #@3df
    .line 6837
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@3e1
    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@3e3
    rsub-int v7, v0, -0x258

    #@3e5
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@3e7
    const/4 v9, 0x0

    #@3e8
    const/4 v10, 0x0

    #@3e9
    invoke-direct {v6, v9, v7, v10, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@3ec
    aput-object v6, v1, v0

    #@3ee
    .line 6836
    add-int/lit8 v0, v0, 0x1

    #@3f0
    goto :goto_6

    #@3f1
    .line 6839
    :cond_6
    const/4 v0, 0x0

    #@3f2
    :goto_7
    const/16 v1, 0xd

    #@3f4
    if-ge v0, v1, :cond_7

    #@3f6
    .line 6840
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@3f8
    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@3fa
    rsub-int v7, v0, -0x2bc

    #@3fc
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@3fe
    const/4 v9, 0x0

    #@3ff
    const/4 v10, 0x0

    #@400
    invoke-direct {v6, v9, v7, v10, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@403
    aput-object v6, v1, v0

    #@405
    .line 6839
    add-int/lit8 v0, v0, 0x1

    #@407
    goto :goto_7

    #@408
    .line 6842
    :cond_7
    const/4 v0, 0x0

    #@409
    :goto_8
    const/4 v1, 0x5

    #@40a
    if-ge v0, v1, :cond_8

    #@40c
    .line 6843
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@40e
    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@410
    rsub-int v7, v0, -0x320

    #@412
    .line 6844
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@414
    .line 6843
    const/4 v9, 0x0

    #@415
    const/4 v10, 0x0

    #@416
    invoke-direct {v6, v9, v7, v10, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@419
    aput-object v6, v1, v0

    #@41b
    .line 6842
    add-int/lit8 v0, v0, 0x1

    #@41d
    goto :goto_8

    #@41e
    .line 6846
    :cond_8
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@420
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@422
    const/4 v7, 0x0

    #@423
    const/4 v8, -0x7

    #@424
    const/4 v9, 0x0

    #@425
    invoke-direct {v1, v7, v8, v9, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@428
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@42a
    .line 6847
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@42c
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@42e
    const/4 v7, 0x0

    #@42f
    const/4 v8, -0x8

    #@430
    const/4 v9, 0x0

    #@431
    invoke-direct {v1, v7, v8, v9, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@434
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@436
    .line 6848
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@438
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@43a
    const/4 v7, 0x0

    #@43b
    const/16 v8, -0x9

    #@43d
    const/4 v9, 0x0

    #@43e
    invoke-direct {v1, v7, v8, v9, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@441
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@443
    .line 6849
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@445
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@447
    const/4 v7, 0x0

    #@448
    const/16 v8, -0xd

    #@44a
    const/4 v9, 0x0

    #@44b
    invoke-direct {v1, v7, v8, v9, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@44e
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@450
    .line 6850
    const/4 v1, 0x0

    #@451
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    #@453
    const/4 v1, 0x0

    #@454
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    #@456
    .line 6851
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@459
    move-result-wide v6

    #@45a
    const-wide/16 v8, 0x3e8

    #@45c
    mul-long v4, v6, v8

    #@45e
    .line 6852
    .local v4, "uptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@461
    move-result-wide v6

    #@462
    const-wide/16 v8, 0x3e8

    #@464
    mul-long v2, v6, v8

    #@466
    .line 6853
    .local v2, "realtime":J
    invoke-virtual {p0, v4, v5, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->initTimes(JJ)V

    #@469
    .line 6854
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    #@46b
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mEndPlatformVersion:Ljava/lang/String;

    #@46d
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartPlatformVersion:Ljava/lang/String;

    #@46f
    .line 6855
    const/4 v1, 0x0

    #@470
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStartLevel:I

    #@472
    .line 6856
    const/4 v1, 0x0

    #@473
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    #@475
    .line 6857
    const/4 v1, -0x1

    #@476
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargePlugLevel:I

    #@478
    .line 6858
    const/4 v1, 0x0

    #@479
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    #@47b
    .line 6859
    const/4 v1, 0x0

    #@47c
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    #@47e
    .line 6860
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->initDischarge()V

    #@481
    .line 6861
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->clearHistoryLocked()V

    #@484
    .line 6862
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->updateDailyDeadlineLocked()V

    #@487
    .line 6791
    return-void
.end method

.method private addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V
    .locals 5
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "cmd"    # B
    .param p6, "cur"    # Landroid/os/BatteryStats$HistoryItem;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2339
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIteratingHistory:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 2340
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "Can\'t do this while iterating history!"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 2342
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    #@10
    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    #@13
    move-result v0

    #@14
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    #@16
    .line 2343
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@18
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@1a
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    #@1d
    .line 2344
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@1f
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    #@21
    add-long/2addr v2, p1

    #@22
    invoke-virtual {v0, v2, v3, p5, p6}, Landroid/os/BatteryStats$HistoryItem;->setTo(JBLandroid/os/BatteryStats$HistoryItem;)V

    #@25
    .line 2345
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@27
    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@29
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates:I

    #@2b
    and-int/2addr v1, v2

    #@2c
    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@2e
    .line 2346
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@30
    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@32
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates2:I

    #@34
    and-int/2addr v1, v2

    #@35
    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@37
    .line 2347
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    #@39
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@3b
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@3d
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->writeHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;Landroid/os/BatteryStats$HistoryItem;)V

    #@40
    .line 2348
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryElapsedRealtime:J

    #@42
    .line 2349
    iput-object v4, p6, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@44
    .line 2350
    iput-object v4, p6, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@46
    .line 2351
    const/4 v0, 0x0

    #@47
    iput v0, p6, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    #@49
    .line 2352
    iput-object v4, p6, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    #@4b
    .line 2338
    return-void
.end method

.method private addPackageChange(Landroid/os/BatteryStats$PackageChange;)V
    .locals 1
    .param p1, "pc"    # Landroid/os/BatteryStats$PackageChange;

    #@0
    .prologue
    .line 3288
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 3289
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    #@b
    .line 3291
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 3287
    return-void
.end method

.method private buildBatteryLevelInt(Landroid/os/BatteryStats$HistoryItem;)I
    .locals 3
    .param p1, "h"    # Landroid/os/BatteryStats$HistoryItem;

    #@0
    .prologue
    .line 1973
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    #@2
    shl-int/lit8 v0, v0, 0x19

    #@4
    const/high16 v1, -0x2000000

    #@6
    and-int/2addr v0, v1

    #@7
    .line 1974
    iget-short v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    #@9
    shl-int/lit8 v1, v1, 0xe

    #@b
    const v2, 0x1ff8000

    #@e
    and-int/2addr v1, v2

    #@f
    .line 1973
    or-int/2addr v0, v1

    #@10
    .line 1975
    iget-char v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    #@12
    shl-int/lit8 v1, v1, 0x1

    #@14
    and-int/lit16 v1, v1, 0x7fff

    #@16
    .line 1973
    or-int/2addr v0, v1

    #@17
    return v0
.end method

.method private buildStateInt(Landroid/os/BatteryStats$HistoryItem;)I
    .locals 4
    .param p1, "h"    # Landroid/os/BatteryStats$HistoryItem;

    #@0
    .prologue
    .line 1979
    const/4 v0, 0x0

    #@1
    .line 1980
    .local v0, "plugType":I
    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    #@3
    and-int/lit8 v1, v1, 0x1

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 1981
    const/4 v0, 0x1

    #@8
    .line 1987
    :cond_0
    :goto_0
    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    #@a
    and-int/lit8 v1, v1, 0x7

    #@c
    shl-int/lit8 v1, v1, 0x1d

    #@e
    .line 1988
    iget-byte v2, p1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    #@10
    and-int/lit8 v2, v2, 0x7

    #@12
    shl-int/lit8 v2, v2, 0x1a

    #@14
    .line 1987
    or-int/2addr v1, v2

    #@15
    .line 1989
    and-int/lit8 v2, v0, 0x3

    #@17
    shl-int/lit8 v2, v2, 0x18

    #@19
    .line 1987
    or-int/2addr v1, v2

    #@1a
    .line 1990
    iget v2, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@1c
    const v3, 0xffffff

    #@1f
    and-int/2addr v2, v3

    #@20
    .line 1987
    or-int/2addr v1, v2

    #@21
    return v1

    #@22
    .line 1982
    :cond_1
    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    #@24
    and-int/lit8 v1, v1, 0x2

    #@26
    if-eqz v1, :cond_2

    #@28
    .line 1983
    const/4 v0, 0x2

    #@29
    goto :goto_0

    #@2a
    .line 1984
    :cond_2
    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    #@2c
    and-int/lit8 v1, v1, 0x4

    #@2e
    if-eqz v1, :cond_0

    #@30
    .line 1985
    const/4 v0, 0x3

    #@31
    goto :goto_0
.end method

.method private computeHistoryStepDetails(Landroid/os/BatteryStats$HistoryStepDetails;Landroid/os/BatteryStats$HistoryStepDetails;)V
    .locals 12
    .param p1, "out"    # Landroid/os/BatteryStats$HistoryStepDetails;
    .param p2, "last"    # Landroid/os/BatteryStats$HistoryStepDetails;

    #@0
    .prologue
    .line 1995
    if-eqz p2, :cond_0

    #@2
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@4
    .line 1999
    .local v2, "tmp":Landroid/os/BatteryStats$HistoryStepDetails;
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl;->requestImmediateCpuUpdate()V

    #@7
    .line 2001
    if-nez p2, :cond_2

    #@9
    .line 2004
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    #@b
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    #@e
    move-result v0

    #@f
    .line 2005
    .local v0, "NU":I
    const/4 v1, 0x0

    #@10
    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    #@12
    .line 2006
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    #@14
    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@17
    move-result-object v6

    #@18
    check-cast v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@1a
    .line 2007
    .local v6, "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    iget-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepUserTime:J

    #@1c
    iput-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepUserTime:J

    #@1e
    .line 2008
    iget-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepSystemTime:J

    #@20
    iput-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepSystemTime:J

    #@22
    .line 2005
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_1

    #@25
    .line 1995
    .end local v0    # "NU":I
    .end local v1    # "i":I
    .end local v2    # "tmp":Landroid/os/BatteryStats$HistoryStepDetails;
    .end local v6    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_0
    move-object v2, p1

    #@26
    .restart local v2    # "tmp":Landroid/os/BatteryStats$HistoryStepDetails;
    goto :goto_0

    #@27
    .line 2010
    .restart local v0    # "NU":I
    .restart local v1    # "i":I
    :cond_1
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuUserTime:J

    #@29
    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepCpuUserTime:J

    #@2b
    .line 2011
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuSystemTime:J

    #@2d
    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepCpuSystemTime:J

    #@2f
    .line 2012
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatUserTime:J

    #@31
    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatUserTime:J

    #@33
    .line 2013
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatSystemTime:J

    #@35
    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatSystemTime:J

    #@37
    .line 2014
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIOWaitTime:J

    #@39
    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatIOWaitTime:J

    #@3b
    .line 2015
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIrqTime:J

    #@3d
    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatIrqTime:J

    #@3f
    .line 2016
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatSoftIrqTime:J

    #@41
    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatSoftIrqTime:J

    #@43
    .line 2017
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIdleTime:J

    #@45
    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatIdleTime:J

    #@47
    .line 2018
    invoke-virtual {v2}, Landroid/os/BatteryStats$HistoryStepDetails;->clear()V

    #@4a
    .line 2019
    return-void

    #@4b
    .line 2031
    .end local v0    # "NU":I
    .end local v1    # "i":I
    :cond_2
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuUserTime:J

    #@4d
    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepCpuUserTime:J

    #@4f
    sub-long/2addr v8, v10

    #@50
    long-to-int v7, v8

    #@51
    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    #@53
    .line 2032
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuSystemTime:J

    #@55
    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepCpuSystemTime:J

    #@57
    sub-long/2addr v8, v10

    #@58
    long-to-int v7, v8

    #@59
    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    #@5b
    .line 2033
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatUserTime:J

    #@5d
    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatUserTime:J

    #@5f
    sub-long/2addr v8, v10

    #@60
    long-to-int v7, v8

    #@61
    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    #@63
    .line 2034
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatSystemTime:J

    #@65
    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatSystemTime:J

    #@67
    sub-long/2addr v8, v10

    #@68
    long-to-int v7, v8

    #@69
    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    #@6b
    .line 2035
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIOWaitTime:J

    #@6d
    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatIOWaitTime:J

    #@6f
    sub-long/2addr v8, v10

    #@70
    long-to-int v7, v8

    #@71
    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    #@73
    .line 2036
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIrqTime:J

    #@75
    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatIrqTime:J

    #@77
    sub-long/2addr v8, v10

    #@78
    long-to-int v7, v8

    #@79
    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    #@7b
    .line 2037
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatSoftIrqTime:J

    #@7d
    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatSoftIrqTime:J

    #@7f
    sub-long/2addr v8, v10

    #@80
    long-to-int v7, v8

    #@81
    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    #@83
    .line 2038
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIdleTime:J

    #@85
    iget-wide v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatIdleTime:J

    #@87
    sub-long/2addr v8, v10

    #@88
    long-to-int v7, v8

    #@89
    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    #@8b
    .line 2039
    const/4 v7, -0x1

    #@8c
    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    #@8e
    const/4 v7, -0x1

    #@8f
    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    #@91
    const/4 v7, -0x1

    #@92
    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    #@94
    .line 2040
    const/4 v7, 0x0

    #@95
    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    #@97
    const/4 v7, 0x0

    #@98
    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    #@9a
    const/4 v7, 0x0

    #@9b
    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    #@9d
    .line 2041
    const/4 v7, 0x0

    #@9e
    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    #@a0
    const/4 v7, 0x0

    #@a1
    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    #@a3
    const/4 v7, 0x0

    #@a4
    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    #@a6
    .line 2042
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    #@a8
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    #@ab
    move-result v0

    #@ac
    .line 2043
    .restart local v0    # "NU":I
    const/4 v1, 0x0

    #@ad
    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v0, :cond_6

    #@af
    .line 2044
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    #@b1
    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@b4
    move-result-object v6

    #@b5
    check-cast v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@b7
    .line 2045
    .restart local v6    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    iget-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepUserTime:J

    #@b9
    iget-wide v10, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepUserTime:J

    #@bb
    sub-long/2addr v8, v10

    #@bc
    long-to-int v5, v8

    #@bd
    .line 2046
    .local v5, "totalUTime":I
    iget-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepSystemTime:J

    #@bf
    iget-wide v10, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepSystemTime:J

    #@c1
    sub-long/2addr v8, v10

    #@c2
    long-to-int v3, v8

    #@c3
    .line 2047
    .local v3, "totalSTime":I
    add-int v4, v5, v3

    #@c5
    .line 2048
    .local v4, "totalTime":I
    iget-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepUserTime:J

    #@c7
    iput-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepUserTime:J

    #@c9
    .line 2049
    iget-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepSystemTime:J

    #@cb
    iput-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepSystemTime:J

    #@cd
    .line 2050
    iget v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    #@cf
    iget v8, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    #@d1
    add-int/2addr v7, v8

    #@d2
    if-gt v4, v7, :cond_3

    #@d4
    .line 2043
    :goto_3
    add-int/lit8 v1, v1, 0x1

    #@d6
    goto :goto_2

    #@d7
    .line 2053
    :cond_3
    iget v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    #@d9
    iget v8, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    #@db
    add-int/2addr v7, v8

    #@dc
    if-gt v4, v7, :cond_4

    #@de
    .line 2054
    iget v7, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    #@e0
    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    #@e2
    .line 2055
    iput v5, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    #@e4
    .line 2056
    iput v3, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    #@e6
    goto :goto_3

    #@e7
    .line 2058
    :cond_4
    iget v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    #@e9
    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    #@eb
    .line 2059
    iget v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    #@ed
    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    #@ef
    .line 2060
    iget v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    #@f1
    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    #@f3
    .line 2061
    iget v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    #@f5
    iget v8, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    #@f7
    add-int/2addr v7, v8

    #@f8
    if-gt v4, v7, :cond_5

    #@fa
    .line 2062
    iget v7, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    #@fc
    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    #@fe
    .line 2063
    iput v5, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    #@100
    .line 2064
    iput v3, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    #@102
    goto :goto_3

    #@103
    .line 2066
    :cond_5
    iget v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    #@105
    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    #@107
    .line 2067
    iget v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    #@109
    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    #@10b
    .line 2068
    iget v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    #@10d
    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    #@10f
    .line 2069
    iget v7, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    #@111
    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    #@113
    .line 2070
    iput v5, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    #@115
    .line 2071
    iput v3, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    #@117
    goto :goto_3

    #@118
    .line 2075
    .end local v3    # "totalSTime":I
    .end local v4    # "totalTime":I
    .end local v5    # "totalUTime":I
    .end local v6    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_6
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuUserTime:J

    #@11a
    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepCpuUserTime:J

    #@11c
    .line 2076
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuSystemTime:J

    #@11e
    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepCpuSystemTime:J

    #@120
    .line 2077
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatUserTime:J

    #@122
    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatUserTime:J

    #@124
    .line 2078
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatSystemTime:J

    #@126
    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatSystemTime:J

    #@128
    .line 2079
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIOWaitTime:J

    #@12a
    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatIOWaitTime:J

    #@12c
    .line 2080
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIrqTime:J

    #@12e
    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatIrqTime:J

    #@130
    .line 2081
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatSoftIrqTime:J

    #@132
    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatSoftIrqTime:J

    #@134
    .line 2082
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIdleTime:J

    #@136
    iput-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatIdleTime:J

    #@138
    .line 1994
    return-void
.end method

.method private computeTimePerLevel([JI)J
    .locals 8
    .param p1, "steps"    # [J
    .param p2, "numSteps"    # I

    #@0
    .prologue
    .line 8549
    if-gtz p2, :cond_0

    #@2
    .line 8550
    const-wide/16 v4, -0x1

    #@4
    return-wide v4

    #@5
    .line 8552
    :cond_0
    const-wide/16 v2, 0x0

    #@7
    .line 8553
    .local v2, "total":J
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    #@a
    .line 8554
    aget-wide v4, p1, v0

    #@c
    const-wide v6, 0xffffffffffL

    #@11
    and-long/2addr v4, v6

    #@12
    add-long/2addr v2, v4

    #@13
    .line 8553
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 8556
    :cond_1
    int-to-long v4, p2

    #@17
    div-long v4, v2, v4

    #@19
    return-wide v4
.end method

.method private static excludeFromStringArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 4079
    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    #@4
    move-result v0

    #@5
    .line 4080
    .local v0, "index":I
    if-ltz v0, :cond_2

    #@7
    .line 4081
    array-length v2, p0

    #@8
    add-int/lit8 v2, v2, -0x1

    #@a
    new-array v1, v2, [Ljava/lang/String;

    #@c
    .line 4082
    .local v1, "newArray":[Ljava/lang/String;
    if-lez v0, :cond_0

    #@e
    .line 4083
    invoke-static {p0, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@11
    .line 4085
    :cond_0
    array-length v2, p0

    #@12
    add-int/lit8 v2, v2, -0x1

    #@14
    if-ge v0, v2, :cond_1

    #@16
    .line 4086
    add-int/lit8 v2, v0, 0x1

    #@18
    array-length v3, p0

    #@19
    sub-int/2addr v3, v0

    #@1a
    add-int/lit8 v3, v3, -0x1

    #@1c
    invoke-static {p0, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1f
    .line 4088
    :cond_1
    return-object v1

    #@20
    .line 4090
    .end local v1    # "newArray":[Ljava/lang/String;
    :cond_2
    return-object p0
.end method

.method private fixPhoneServiceState(II)I
    .locals 2
    .param p1, "state"    # I
    .param p2, "signalBin"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 3333
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSimStateRaw:I

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 3336
    if-ne p1, v1, :cond_0

    #@7
    .line 3337
    if-lez p2, :cond_0

    #@9
    .line 3338
    const/4 p1, 0x0

    #@a
    .line 3342
    :cond_0
    return p1
.end method

.method private getNetworkStatsDeltaLocked([Ljava/lang/String;[Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 8
    .param p1, "ifaces"    # [Ljava/lang/String;
    .param p2, "networkStatsBuffer"    # [Landroid/net/NetworkStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x0

    #@4
    .line 7585
    const-string/jumbo v1, "net.qtaguid_enabled"

    #@7
    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    .line 7587
    return-object v6

    #@e
    .line 7590
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    #@10
    .line 7591
    aget-object v2, p2, v7

    #@12
    .line 7590
    const/4 v3, -0x1

    #@13
    invoke-virtual {v1, v3, p1, v4, v2}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;

    #@16
    move-result-object v0

    #@17
    .line 7593
    .local v0, "stats":Landroid/net/NetworkStats;
    aget-object v1, p2, v4

    #@19
    .line 7594
    aget-object v2, p2, v5

    #@1b
    .line 7592
    invoke-static {v0, v1, v6, v6, v2}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    #@1e
    move-result-object v1

    #@1f
    aput-object v1, p2, v5

    #@21
    .line 7595
    aget-object v1, p2, v4

    #@23
    aput-object v1, p2, v7

    #@25
    .line 7596
    aput-object v0, p2, v4

    #@27
    .line 7597
    aget-object v1, p2, v5

    #@29
    return-object v1
.end method

.method private static includeInStringArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 4069
    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    #@4
    move-result v1

    #@5
    if-ltz v1, :cond_0

    #@7
    .line 4070
    return-object p0

    #@8
    .line 4072
    :cond_0
    array-length v1, p0

    #@9
    add-int/lit8 v1, v1, 0x1

    #@b
    new-array v0, v1, [Ljava/lang/String;

    #@d
    .line 4073
    .local v0, "newArray":[Ljava/lang/String;
    array-length v1, p0

    #@e
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@11
    .line 4074
    array-length v1, p0

    #@12
    aput-object p1, v0, v1

    #@14
    .line 4075
    return-object v0
.end method

.method private initActiveHistoryEventsLocked(JJ)V
    .locals 13
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J

    #@0
    .prologue
    .line 7508
    const/4 v6, 0x0

    #@1
    .local v6, "i":I
    :goto_0
    const/16 v1, 0x13

    #@3
    if-ge v6, v1, :cond_3

    #@5
    .line 7509
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordAllHistory:Z

    #@7
    if-nez v1, :cond_1

    #@9
    const/4 v1, 0x1

    #@a
    if-ne v6, v1, :cond_1

    #@c
    .line 7508
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@e
    goto :goto_0

    #@f
    .line 7513
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    #@11
    invoke-virtual {v1, v6}, Landroid/os/BatteryStats$HistoryEventTracker;->getStateForEvent(I)Ljava/util/HashMap;

    #@14
    move-result-object v0

    #@15
    .line 7514
    .local v0, "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    if-eqz v0, :cond_0

    #@17
    .line 7517
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@1a
    move-result-object v1

    #@1b
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v10

    #@1f
    .local v10, "ent$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v1

    #@23
    if-eqz v1, :cond_0

    #@25
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v9

    #@29
    check-cast v9, Ljava/util/Map$Entry;

    #@2b
    .line 7518
    .local v9, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2e
    move-result-object v12

    #@2f
    check-cast v12, Landroid/util/SparseIntArray;

    #@31
    .line 7519
    .local v12, "uids":Landroid/util/SparseIntArray;
    const/4 v11, 0x0

    #@32
    .local v11, "j":I
    :goto_1
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    #@35
    move-result v1

    #@36
    if-ge v11, v1, :cond_2

    #@38
    .line 7520
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@3b
    move-result-object v7

    #@3c
    check-cast v7, Ljava/lang/String;

    #@3e
    .line 7521
    invoke-virtual {v12, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@41
    move-result v8

    #@42
    move-object v1, p0

    #@43
    move-wide v2, p1

    #@44
    move-wide/from16 v4, p3

    #@46
    .line 7520
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    #@49
    .line 7519
    add-int/lit8 v11, v11, 0x1

    #@4b
    goto :goto_1

    #@4c
    .line 7507
    .end local v0    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v9    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v10    # "ent$iterator":Ljava/util/Iterator;
    .end local v11    # "j":I
    .end local v12    # "uids":Landroid/util/SparseIntArray;
    :cond_3
    return-void
.end method

.method private readDailyItemsLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 14
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    #@0
    .prologue
    const/4 v13, 0x3

    #@1
    const/4 v9, 0x2

    #@2
    const/4 v12, 0x1

    #@3
    .line 7057
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@6
    move-result v8

    #@7
    .local v8, "type":I
    if-eq v8, v9, :cond_1

    #@9
    .line 7058
    if-ne v8, v12, :cond_0

    #@b
    .line 7062
    :cond_1
    if-eq v8, v9, :cond_3

    #@d
    .line 7063
    new-instance v9, Ljava/lang/IllegalStateException;

    #@f
    const-string/jumbo v10, "no start tag found"

    #@12
    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@15
    throw v9
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3

    #@16
    .line 7083
    .end local v8    # "type":I
    :catch_0
    move-exception v1

    #@17
    .line 7084
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v9, "BatteryStatsImpl"

    #@1a
    new-instance v10, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v11, "Failed parsing daily "

    #@22
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v10

    #@26
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v10

    #@2a
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v10

    #@2e
    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 7054
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_2
    :goto_0
    return-void

    #@32
    .line 7066
    .restart local v8    # "type":I
    :cond_3
    :try_start_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@35
    move-result v6

    #@36
    .line 7067
    .local v6, "outerDepth":I
    :cond_4
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@39
    move-result v8

    #@3a
    if-eq v8, v12, :cond_2

    #@3c
    .line 7068
    if-ne v8, v13, :cond_5

    #@3e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@41
    move-result v9

    #@42
    if-le v9, v6, :cond_2

    #@44
    .line 7069
    :cond_5
    if-eq v8, v13, :cond_4

    #@46
    const/4 v9, 0x4

    #@47
    if-eq v8, v9, :cond_4

    #@49
    .line 7073
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@4c
    move-result-object v7

    #@4d
    .line 7074
    .local v7, "tagName":Ljava/lang/String;
    const-string/jumbo v9, "item"

    #@50
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@53
    move-result v9

    #@54
    if-eqz v9, :cond_6

    #@56
    .line 7075
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->readDailyItemTagLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3

    #@59
    goto :goto_1

    #@5a
    .line 7085
    .end local v6    # "outerDepth":I
    .end local v7    # "tagName":Ljava/lang/String;
    .end local v8    # "type":I
    :catch_1
    move-exception v3

    #@5b
    .line 7086
    .local v3, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v9, "BatteryStatsImpl"

    #@5e
    new-instance v10, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v11, "Failed parsing daily "

    #@66
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v10

    #@6a
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v10

    #@6e
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v10

    #@72
    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@75
    goto :goto_0

    #@76
    .line 7077
    .end local v3    # "e":Ljava/lang/NullPointerException;
    .restart local v6    # "outerDepth":I
    .restart local v7    # "tagName":Ljava/lang/String;
    .restart local v8    # "type":I
    :cond_6
    :try_start_2
    const-string/jumbo v9, "BatteryStatsImpl"

    #@79
    new-instance v10, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    const-string/jumbo v11, "Unknown element under <daily-items>: "

    #@81
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v10

    #@85
    .line 7078
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@88
    move-result-object v11

    #@89
    .line 7077
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v10

    #@8d
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@90
    move-result-object v10

    #@91
    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@94
    .line 7079
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3

    #@97
    goto :goto_1

    #@98
    .line 7087
    .end local v6    # "outerDepth":I
    .end local v7    # "tagName":Ljava/lang/String;
    .end local v8    # "type":I
    :catch_2
    move-exception v4

    #@99
    .line 7088
    .local v4, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v9, "BatteryStatsImpl"

    #@9c
    new-instance v10, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    const-string/jumbo v11, "Failed parsing daily "

    #@a4
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v10

    #@a8
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v10

    #@ac
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@af
    move-result-object v10

    #@b0
    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@b3
    goto/16 :goto_0

    #@b5
    .line 7093
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v2

    #@b6
    .line 7094
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v9, "BatteryStatsImpl"

    #@b9
    new-instance v10, Ljava/lang/StringBuilder;

    #@bb
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@be
    const-string/jumbo v11, "Failed parsing daily "

    #@c1
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v10

    #@c5
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v10

    #@c9
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cc
    move-result-object v10

    #@cd
    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d0
    goto/16 :goto_0

    #@d2
    .line 7091
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_4
    move-exception v0

    #@d3
    .line 7092
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v9, "BatteryStatsImpl"

    #@d6
    new-instance v10, Ljava/lang/StringBuilder;

    #@d8
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@db
    const-string/jumbo v11, "Failed parsing daily "

    #@de
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v10

    #@e2
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v10

    #@e6
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e9
    move-result-object v10

    #@ea
    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@ed
    goto/16 :goto_0

    #@ef
    .line 7089
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v5

    #@f0
    .line 7090
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v9, "BatteryStatsImpl"

    #@f3
    new-instance v10, Ljava/lang/StringBuilder;

    #@f5
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@f8
    const-string/jumbo v11, "Failed parsing daily "

    #@fb
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v10

    #@ff
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v10

    #@103
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@106
    move-result-object v10

    #@107
    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@10a
    goto/16 :goto_0
.end method

.method private readHistoryTag(ILandroid/os/BatteryStats$HistoryTag;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "tag"    # Landroid/os/BatteryStats$HistoryTag;

    #@0
    .prologue
    .line 1813
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStrings:[Ljava/lang/String;

    #@2
    aget-object v0, v0, p1

    #@4
    iput-object v0, p2, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    #@6
    .line 1814
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryUids:[I

    #@8
    aget v0, v0, p1

    #@a
    iput v0, p2, Landroid/os/BatteryStats$HistoryTag;->uid:I

    #@c
    .line 1815
    iput p1, p2, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    #@e
    .line 1812
    return-void
.end method

.method private recordCurrentTimeChangeLocked(JJJ)V
    .locals 9
    .param p1, "currentTime"    # J
    .param p3, "elapsedRealtimeMs"    # J
    .param p5, "uptimeMs"    # J

    #@0
    .prologue
    .line 8322
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 8323
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@6
    iput-wide p1, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    #@8
    .line 8325
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@a
    .line 8324
    const/4 v6, 0x5

    #@b
    move-object v1, p0

    #@c
    move-wide v2, p3

    #@d
    move-wide v4, p5

    #@e
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    #@11
    .line 8326
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@13
    const-wide/16 v2, 0x0

    #@15
    iput-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    #@17
    .line 8321
    :cond_0
    return-void
.end method

.method private recordShutdownLocked(JJ)V
    .locals 9
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J

    #@0
    .prologue
    .line 8331
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 8332
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@9
    move-result-wide v2

    #@a
    iput-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    #@c
    .line 8334
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@e
    .line 8333
    const/16 v6, 0x8

    #@10
    move-object v1, p0

    #@11
    move-wide v2, p1

    #@12
    move-wide v4, p3

    #@13
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    #@16
    .line 8335
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@18
    const-wide/16 v2, 0x0

    #@1a
    iput-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    #@1c
    .line 8330
    :cond_0
    return-void
.end method

.method private requestImmediateCpuUpdate()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 2715
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    #@3
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->removeMessages(I)V

    #@6
    .line 2716
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    #@8
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->sendEmptyMessage(I)Z

    #@b
    .line 2714
    return-void
.end method

.method private requestWakelockCpuUpdate()V
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 2708
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    #@3
    invoke-virtual {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->hasMessages(I)Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 2709
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    #@b
    invoke-virtual {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->obtainMessage(I)Landroid/os/Message;

    #@e
    move-result-object v0

    #@f
    .line 2710
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    #@11
    const-wide/16 v2, 0x1388

    #@13
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@16
    .line 2707
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private resetAllStatsLocked()V
    .locals 10

    #@0
    .prologue
    .line 7421
    const/4 v3, 0x0

    #@1
    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    #@3
    .line 7422
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@6
    move-result-wide v4

    #@7
    const-wide/16 v6, 0x3e8

    #@9
    mul-long/2addr v4, v6

    #@a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@d
    move-result-wide v6

    #@e
    const-wide/16 v8, 0x3e8

    #@10
    mul-long/2addr v6, v8

    #@11
    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->initTimes(JJ)V

    #@14
    .line 7423
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@16
    const/4 v4, 0x0

    #@17
    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@1a
    .line 7424
    const/4 v0, 0x0

    #@1b
    .local v0, "i":I
    :goto_0
    const/4 v3, 0x5

    #@1c
    if-ge v0, v3, :cond_0

    #@1e
    .line 7425
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@20
    aget-object v3, v3, v0

    #@22
    const/4 v4, 0x0

    #@23
    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@26
    .line 7424
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_0

    #@29
    .line 7427
    :cond_0
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2b
    const/4 v4, 0x0

    #@2c
    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@2f
    .line 7428
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@31
    const/4 v4, 0x0

    #@32
    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@35
    .line 7429
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@37
    const/4 v4, 0x0

    #@38
    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@3b
    .line 7430
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@3d
    const/4 v4, 0x0

    #@3e
    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@41
    .line 7431
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@43
    const/4 v4, 0x0

    #@44
    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@47
    .line 7432
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@49
    const/4 v4, 0x0

    #@4a
    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@4d
    .line 7433
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@4f
    const/4 v4, 0x0

    #@50
    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@53
    .line 7434
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@55
    const/4 v4, 0x0

    #@56
    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@59
    .line 7435
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@5b
    const/4 v4, 0x0

    #@5c
    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@5f
    .line 7436
    const/4 v0, 0x0

    #@60
    :goto_1
    const/4 v3, 0x5

    #@61
    if-ge v0, v3, :cond_1

    #@63
    .line 7437
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@65
    aget-object v3, v3, v0

    #@67
    const/4 v4, 0x0

    #@68
    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@6b
    .line 7436
    add-int/lit8 v0, v0, 0x1

    #@6d
    goto :goto_1

    #@6e
    .line 7439
    :cond_1
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@70
    const/4 v4, 0x0

    #@71
    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@74
    .line 7440
    const/4 v0, 0x0

    #@75
    :goto_2
    const/16 v3, 0x11

    #@77
    if-ge v0, v3, :cond_2

    #@79
    .line 7441
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@7b
    aget-object v3, v3, v0

    #@7d
    const/4 v4, 0x0

    #@7e
    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@81
    .line 7440
    add-int/lit8 v0, v0, 0x1

    #@83
    goto :goto_2

    #@84
    .line 7443
    :cond_2
    const/4 v0, 0x0

    #@85
    :goto_3
    const/4 v3, 0x4

    #@86
    if-ge v0, v3, :cond_3

    #@88
    .line 7444
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@8a
    aget-object v3, v3, v0

    #@8c
    const/4 v4, 0x0

    #@8d
    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    #@90
    .line 7445
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@92
    aget-object v3, v3, v0

    #@94
    const/4 v4, 0x0

    #@95
    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    #@98
    .line 7443
    add-int/lit8 v0, v0, 0x1

    #@9a
    goto :goto_3

    #@9b
    .line 7447
    :cond_3
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@9d
    const/4 v4, 0x0

    #@9e
    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@a1
    .line 7448
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@a3
    const/4 v4, 0x0

    #@a4
    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@a7
    .line 7449
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@a9
    const/4 v4, 0x0

    #@aa
    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    #@ad
    .line 7450
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@af
    const/4 v4, 0x0

    #@b0
    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    #@b3
    .line 7451
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@b5
    const/4 v4, 0x0

    #@b6
    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    #@b9
    .line 7452
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@bb
    const/4 v4, 0x0

    #@bc
    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@bf
    .line 7453
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@c1
    const/4 v4, 0x0

    #@c2
    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@c5
    .line 7454
    const/4 v0, 0x0

    #@c6
    :goto_4
    const/16 v3, 0x8

    #@c8
    if-ge v0, v3, :cond_4

    #@ca
    .line 7455
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@cc
    aget-object v3, v3, v0

    #@ce
    const/4 v4, 0x0

    #@cf
    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@d2
    .line 7454
    add-int/lit8 v0, v0, 0x1

    #@d4
    goto :goto_4

    #@d5
    .line 7457
    :cond_4
    const/4 v0, 0x0

    #@d6
    :goto_5
    const/16 v3, 0xd

    #@d8
    if-ge v0, v3, :cond_5

    #@da
    .line 7458
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@dc
    aget-object v3, v3, v0

    #@de
    const/4 v4, 0x0

    #@df
    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@e2
    .line 7457
    add-int/lit8 v0, v0, 0x1

    #@e4
    goto :goto_5

    #@e5
    .line 7460
    :cond_5
    const/4 v0, 0x0

    #@e6
    :goto_6
    const/4 v3, 0x5

    #@e7
    if-ge v0, v3, :cond_6

    #@e9
    .line 7461
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@eb
    aget-object v3, v3, v0

    #@ed
    const/4 v4, 0x0

    #@ee
    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@f1
    .line 7460
    add-int/lit8 v0, v0, 0x1

    #@f3
    goto :goto_6

    #@f4
    .line 7463
    :cond_6
    const/4 v0, 0x0

    #@f5
    :goto_7
    const/4 v3, 0x4

    #@f6
    if-ge v0, v3, :cond_7

    #@f8
    .line 7464
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@fa
    aget-object v3, v3, v0

    #@fc
    const/4 v4, 0x0

    #@fd
    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    #@100
    .line 7465
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@102
    aget-object v3, v3, v0

    #@104
    const/4 v4, 0x0

    #@105
    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    #@108
    .line 7463
    add-int/lit8 v0, v0, 0x1

    #@10a
    goto :goto_7

    #@10b
    .line 7467
    :cond_7
    const/4 v3, 0x0

    #@10c
    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggedNumConnectivityChange:I

    #@10e
    const/4 v3, 0x0

    #@10f
    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLoadedNumConnectivityChange:I

    #@111
    const/4 v3, 0x0

    #@112
    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumConnectivityChange:I

    #@114
    .line 7469
    const/4 v0, 0x0

    #@115
    :goto_8
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    #@117
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@11a
    move-result v3

    #@11b
    if-ge v0, v3, :cond_9

    #@11d
    .line 7470
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    #@11f
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@122
    move-result-object v3

    #@123
    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@125
    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->reset()Z

    #@128
    move-result v3

    #@129
    if-eqz v3, :cond_8

    #@12b
    .line 7471
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    #@12d
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    #@12f
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    #@132
    move-result v4

    #@133
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    #@136
    .line 7472
    add-int/lit8 v0, v0, -0x1

    #@138
    .line 7469
    :cond_8
    add-int/lit8 v0, v0, 0x1

    #@13a
    goto :goto_8

    #@13b
    .line 7476
    :cond_9
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    #@13d
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    #@140
    move-result v3

    #@141
    if-lez v3, :cond_b

    #@143
    .line 7477
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    #@145
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@148
    move-result-object v3

    #@149
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14c
    move-result-object v2

    #@14d
    .local v2, "timer$iterator":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@150
    move-result v3

    #@151
    if-eqz v3, :cond_a

    #@153
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@156
    move-result-object v1

    #@157
    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    #@159
    .line 7478
    .local v1, "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@15b
    invoke-virtual {v3, v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    #@15e
    goto :goto_9

    #@15f
    .line 7480
    .end local v1    # "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_a
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    #@161
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    #@164
    .line 7483
    .end local v2    # "timer$iterator":Ljava/util/Iterator;
    :cond_b
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    #@166
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    #@169
    move-result v3

    #@16a
    if-lez v3, :cond_d

    #@16c
    .line 7484
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    #@16e
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@171
    move-result-object v3

    #@172
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@175
    move-result-object v2

    #@176
    .restart local v2    # "timer$iterator":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@179
    move-result v3

    #@17a
    if-eqz v3, :cond_c

    #@17c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17f
    move-result-object v1

    #@180
    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    #@182
    .line 7485
    .restart local v1    # "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@184
    invoke-virtual {v3, v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    #@187
    goto :goto_a

    #@188
    .line 7487
    .end local v1    # "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_c
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    #@18a
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    #@18d
    .line 7490
    .end local v2    # "timer$iterator":Ljava/util/Iterator;
    :cond_d
    const/4 v3, 0x0

    #@18e
    iput-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@190
    .line 7491
    const-wide/16 v4, 0x0

    #@192
    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepCpuSystemTime:J

    #@194
    const-wide/16 v4, 0x0

    #@196
    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepCpuUserTime:J

    #@198
    .line 7492
    const-wide/16 v4, 0x0

    #@19a
    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuSystemTime:J

    #@19c
    const-wide/16 v4, 0x0

    #@19e
    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuUserTime:J

    #@1a0
    .line 7493
    const-wide/16 v4, 0x0

    #@1a2
    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuUserTime:J

    #@1a4
    const-wide/16 v4, 0x0

    #@1a6
    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepCpuUserTime:J

    #@1a8
    .line 7494
    const-wide/16 v4, 0x0

    #@1aa
    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuSystemTime:J

    #@1ac
    const-wide/16 v4, 0x0

    #@1ae
    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepCpuSystemTime:J

    #@1b0
    .line 7495
    const-wide/16 v4, 0x0

    #@1b2
    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatUserTime:J

    #@1b4
    const-wide/16 v4, 0x0

    #@1b6
    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatUserTime:J

    #@1b8
    .line 7496
    const-wide/16 v4, 0x0

    #@1ba
    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatSystemTime:J

    #@1bc
    const-wide/16 v4, 0x0

    #@1be
    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatSystemTime:J

    #@1c0
    .line 7497
    const-wide/16 v4, 0x0

    #@1c2
    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIOWaitTime:J

    #@1c4
    const-wide/16 v4, 0x0

    #@1c6
    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatIOWaitTime:J

    #@1c8
    .line 7498
    const-wide/16 v4, 0x0

    #@1ca
    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIrqTime:J

    #@1cc
    const-wide/16 v4, 0x0

    #@1ce
    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatIrqTime:J

    #@1d0
    .line 7499
    const-wide/16 v4, 0x0

    #@1d2
    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatSoftIrqTime:J

    #@1d4
    const-wide/16 v4, 0x0

    #@1d6
    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatSoftIrqTime:J

    #@1d8
    .line 7500
    const-wide/16 v4, 0x0

    #@1da
    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIdleTime:J

    #@1dc
    const-wide/16 v4, 0x0

    #@1de
    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastStepStatIdleTime:J

    #@1e0
    .line 7502
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->initDischarge()V

    #@1e3
    .line 7504
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->clearHistoryLocked()V

    #@1e6
    .line 7420
    return-void
.end method

.method private scheduleSyncExternalStatsLocked(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 8340
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 8341
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    #@6
    invoke-interface {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;->scheduleSync(Ljava/lang/String;)V

    #@9
    .line 8339
    :cond_0
    return-void
.end method

.method private scheduleSyncExternalWifiStatsLocked(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 8346
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 8347
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    #@6
    invoke-interface {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;->scheduleWifiSync(Ljava/lang/String;)V

    #@9
    .line 8345
    :cond_0
    return-void
.end method

.method private startRecordingHistory(JJZ)V
    .locals 9
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "reset"    # Z

    #@0
    .prologue
    .line 8309
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    #@3
    .line 8310
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@8
    move-result-wide v2

    #@9
    iput-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    #@b
    .line 8312
    if-eqz p5, :cond_1

    #@d
    const/4 v6, 0x7

    #@e
    .line 8313
    :goto_0
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@10
    move-object v1, p0

    #@11
    move-wide v2, p1

    #@12
    move-wide v4, p3

    #@13
    .line 8311
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    #@16
    .line 8314
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@18
    const-wide/16 v2, 0x0

    #@1a
    iput-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    #@1c
    .line 8315
    if-eqz p5, :cond_0

    #@1e
    .line 8316
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->initActiveHistoryEventsLocked(JJ)V

    #@21
    .line 8308
    :cond_0
    return-void

    #@22
    .line 8312
    :cond_1
    const/4 v6, 0x5

    #@23
    goto :goto_0
.end method

.method private updateAllPhoneStateLocked(III)V
    .locals 9
    .param p1, "state"    # I
    .param p2, "simState"    # I
    .param p3, "strengthBin"    # I

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 3346
    const/4 v3, 0x0

    #@2
    .line 3347
    .local v3, "scanning":Z
    const/4 v2, 0x0

    #@3
    .line 3349
    .local v2, "newHistory":Z
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceStateRaw:I

    #@5
    .line 3350
    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSimStateRaw:I

    #@7
    .line 3351
    iput p3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBinRaw:I

    #@9
    .line 3353
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@c
    move-result-wide v0

    #@d
    .line 3354
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@10
    move-result-wide v4

    #@11
    .line 3356
    .local v4, "uptime":J
    if-ne p2, v7, :cond_0

    #@13
    .line 3359
    if-ne p1, v7, :cond_0

    #@15
    .line 3360
    if-lez p3, :cond_0

    #@17
    .line 3361
    const/4 p1, 0x0

    #@18
    .line 3366
    :cond_0
    const/4 v6, 0x3

    #@19
    if-ne p1, v6, :cond_8

    #@1b
    .line 3367
    const/4 p3, -0x1

    #@1c
    .line 3387
    :cond_1
    :goto_0
    if-nez v3, :cond_2

    #@1e
    .line 3389
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@20
    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    #@23
    move-result v6

    #@24
    if-eqz v6, :cond_2

    #@26
    .line 3390
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@28
    iget v7, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@2a
    const v8, -0x200001

    #@2d
    and-int/2addr v7, v8

    #@2e
    iput v7, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@30
    .line 3393
    const/4 v2, 0x1

    #@31
    .line 3394
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@33
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@36
    .line 3398
    :cond_2
    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceState:I

    #@38
    if-eq v6, p1, :cond_3

    #@3a
    .line 3399
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@3c
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@3e
    iget v7, v7, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@40
    and-int/lit16 v7, v7, -0x1c1

    #@42
    .line 3400
    shl-int/lit8 v8, p1, 0x6

    #@44
    .line 3399
    or-int/2addr v7, v8

    #@45
    iput v7, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@47
    .line 3403
    const/4 v2, 0x1

    #@48
    .line 3404
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceState:I

    #@4a
    .line 3407
    :cond_3
    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    #@4c
    if-eq v6, p3, :cond_6

    #@4e
    .line 3408
    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    #@50
    if-ltz v6, :cond_4

    #@52
    .line 3409
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@54
    iget v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    #@56
    aget-object v6, v6, v7

    #@58
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@5b
    .line 3412
    :cond_4
    if-ltz p3, :cond_9

    #@5d
    .line 3413
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@5f
    aget-object v6, v6, p3

    #@61
    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    #@64
    move-result v6

    #@65
    if-nez v6, :cond_5

    #@67
    .line 3414
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@69
    aget-object v6, v6, p3

    #@6b
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@6e
    .line 3416
    :cond_5
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@70
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@72
    iget v7, v7, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@74
    and-int/lit8 v7, v7, -0x39

    #@76
    .line 3417
    shl-int/lit8 v8, p3, 0x3

    #@78
    .line 3416
    or-int/2addr v7, v8

    #@79
    iput v7, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@7b
    .line 3420
    const/4 v2, 0x1

    #@7c
    .line 3424
    :goto_1
    iput p3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBin:I

    #@7e
    .line 3427
    :cond_6
    if-eqz v2, :cond_7

    #@80
    .line 3428
    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    #@83
    .line 3345
    :cond_7
    return-void

    #@84
    .line 3370
    :cond_8
    if-eqz p1, :cond_1

    #@86
    .line 3375
    if-ne p1, v7, :cond_1

    #@88
    .line 3376
    const/4 v3, 0x1

    #@89
    .line 3377
    const/4 p3, 0x0

    #@8a
    .line 3378
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@8c
    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    #@8f
    move-result v6

    #@90
    if-nez v6, :cond_1

    #@92
    .line 3379
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@94
    iget v7, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@96
    const/high16 v8, 0x200000

    #@98
    or-int/2addr v7, v8

    #@99
    iput v7, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@9b
    .line 3380
    const/4 v2, 0x1

    #@9c
    .line 3383
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@9e
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@a1
    goto/16 :goto_0

    #@a3
    .line 3422
    :cond_9
    const/4 v6, -0x1

    #@a4
    invoke-virtual {p0, v6}, Lcom/android/internal/os/BatteryStatsImpl;->stopAllPhoneSignalStrengthTimersLocked(I)V

    #@a7
    goto :goto_1
.end method

.method private writeDailyItemsLocked(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 9
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 6985
    new-instance v4, Ljava/lang/StringBuilder;

    #@3
    const/16 v5, 0x40

    #@5
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    #@8
    .line 6986
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v5, 0x1

    #@9
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@c
    move-result-object v5

    #@d
    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@10
    .line 6987
    const-string/jumbo v5, "daily-items"

    #@13
    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@16
    .line 6988
    const/4 v1, 0x0

    #@17
    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyItems:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@1c
    move-result v5

    #@1d
    if-ge v1, v5, :cond_2

    #@1f
    .line 6989
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyItems:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Landroid/os/BatteryStats$DailyItem;

    #@27
    .line 6990
    .local v0, "dit":Landroid/os/BatteryStats$DailyItem;
    const-string/jumbo v5, "item"

    #@2a
    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2d
    .line 6991
    const-string/jumbo v5, "start"

    #@30
    iget-wide v6, v0, Landroid/os/BatteryStats$DailyItem;->mStartTime:J

    #@32
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@35
    move-result-object v6

    #@36
    invoke-interface {p1, v8, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@39
    .line 6992
    const-string/jumbo v5, "end"

    #@3c
    iget-wide v6, v0, Landroid/os/BatteryStats$DailyItem;->mEndTime:J

    #@3e
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@41
    move-result-object v6

    #@42
    invoke-interface {p1, v8, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@45
    .line 6993
    const-string/jumbo v5, "dis"

    #@48
    iget-object v6, v0, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    #@4a
    invoke-direct {p0, p1, v5, v6, v4}, Lcom/android/internal/os/BatteryStatsImpl;->writeDailyLevelSteps(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;)V

    #@4d
    .line 6994
    const-string/jumbo v5, "chg"

    #@50
    iget-object v6, v0, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    #@52
    invoke-direct {p0, p1, v5, v6, v4}, Lcom/android/internal/os/BatteryStatsImpl;->writeDailyLevelSteps(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;)V

    #@55
    .line 6995
    iget-object v5, v0, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    #@57
    if-eqz v5, :cond_1

    #@59
    .line 6996
    const/4 v2, 0x0

    #@5a
    .local v2, "j":I
    :goto_1
    iget-object v5, v0, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    #@5c
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@5f
    move-result v5

    #@60
    if-ge v2, v5, :cond_1

    #@62
    .line 6997
    iget-object v5, v0, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    #@64
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@67
    move-result-object v3

    #@68
    check-cast v3, Landroid/os/BatteryStats$PackageChange;

    #@6a
    .line 6998
    .local v3, "pc":Landroid/os/BatteryStats$PackageChange;
    iget-boolean v5, v3, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    #@6c
    if-eqz v5, :cond_0

    #@6e
    .line 6999
    const-string/jumbo v5, "upd"

    #@71
    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@74
    .line 7000
    const-string/jumbo v5, "pkg"

    #@77
    iget-object v6, v3, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    #@79
    invoke-interface {p1, v8, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7c
    .line 7001
    const-string/jumbo v5, "ver"

    #@7f
    iget v6, v3, Landroid/os/BatteryStats$PackageChange;->mVersionCode:I

    #@81
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@84
    move-result-object v6

    #@85
    invoke-interface {p1, v8, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@88
    .line 7002
    const-string/jumbo v5, "upd"

    #@8b
    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@8e
    .line 6996
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@90
    goto :goto_1

    #@91
    .line 7004
    :cond_0
    const-string/jumbo v5, "rem"

    #@94
    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@97
    .line 7005
    const-string/jumbo v5, "pkg"

    #@9a
    iget-object v6, v3, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    #@9c
    invoke-interface {p1, v8, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@9f
    .line 7006
    const-string/jumbo v5, "rem"

    #@a2
    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@a5
    goto :goto_2

    #@a6
    .line 7010
    .end local v2    # "j":I
    .end local v3    # "pc":Landroid/os/BatteryStats$PackageChange;
    :cond_1
    const-string/jumbo v5, "item"

    #@a9
    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@ac
    .line 6988
    add-int/lit8 v1, v1, 0x1

    #@ae
    goto/16 :goto_0

    #@b0
    .line 7012
    .end local v0    # "dit":Landroid/os/BatteryStats$DailyItem;
    :cond_2
    const-string/jumbo v5, "daily-items"

    #@b3
    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@b6
    .line 7013
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@b9
    .line 6984
    return-void
.end method

.method private writeDailyLevelSteps(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "steps"    # Landroid/os/BatteryStats$LevelStepTracker;
    .param p4, "tmpBuilder"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 7018
    if-eqz p3, :cond_1

    #@3
    .line 7019
    invoke-interface {p1, v3, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@6
    .line 7020
    const-string/jumbo v1, "n"

    #@9
    iget v2, p3, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    #@b
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@12
    .line 7021
    const/4 v0, 0x0

    #@13
    .local v0, "i":I
    :goto_0
    iget v1, p3, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    #@15
    if-ge v0, v1, :cond_0

    #@17
    .line 7022
    const-string/jumbo v1, "s"

    #@1a
    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1d
    .line 7023
    const/4 v1, 0x0

    #@1e
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    #@21
    .line 7024
    invoke-virtual {p3, v0, p4}, Landroid/os/BatteryStats$LevelStepTracker;->encodeEntryAt(ILjava/lang/StringBuilder;)V

    #@24
    .line 7025
    const-string/jumbo v1, "v"

    #@27
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2e
    .line 7026
    const-string/jumbo v1, "s"

    #@31
    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@34
    .line 7021
    add-int/lit8 v0, v0, 0x1

    #@36
    goto :goto_0

    #@37
    .line 7028
    :cond_0
    invoke-interface {p1, v3, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3a
    .line 7017
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private writeHistoryTag(Landroid/os/BatteryStats$HistoryTag;)I
    .locals 5
    .param p1, "tag"    # Landroid/os/BatteryStats$HistoryTag;

    #@0
    .prologue
    .line 1796
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    #@2
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Ljava/lang/Integer;

    #@8
    .line 1798
    .local v1, "idxObj":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    #@a
    .line 1799
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@d
    move-result v0

    #@e
    .line 1809
    .local v0, "idx":I
    :goto_0
    return v0

    #@f
    .line 1801
    .end local v0    # "idx":I
    :cond_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    #@11
    .line 1802
    .restart local v0    # "idx":I
    new-instance v2, Landroid/os/BatteryStats$HistoryTag;

    #@13
    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    #@16
    .line 1803
    .local v2, "key":Landroid/os/BatteryStats$HistoryTag;
    invoke-virtual {v2, p1}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    #@19
    .line 1804
    iput v0, p1, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    #@1b
    .line 1805
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    #@1d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    .line 1806
    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    #@26
    add-int/lit8 v3, v3, 0x1

    #@28
    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    #@2a
    .line 1807
    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryTagChars:I

    #@2c
    iget-object v4, v2, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    #@2e
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@31
    move-result v4

    #@32
    add-int/lit8 v4, v4, 0x1

    #@34
    add-int/2addr v3, v4

    #@35
    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryTagChars:I

    #@37
    goto :goto_0
.end method


# virtual methods
.method addHistoryBufferLocked(JJLandroid/os/BatteryStats$HistoryItem;)V
    .locals 21
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "cur"    # Landroid/os/BatteryStats$HistoryItem;

    #@0
    .prologue
    .line 2220
    move-object/from16 v0, p0

    #@2
    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHaveBatteryLevel:Z

    #@4
    if-eqz v3, :cond_7

    #@6
    move-object/from16 v0, p0

    #@8
    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    #@a
    if-eqz v3, :cond_7

    #@c
    .line 2224
    move-object/from16 v0, p0

    #@e
    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    #@10
    add-long v4, v4, p1

    #@12
    move-object/from16 v0, p0

    #@14
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@16
    iget-wide v6, v3, Landroid/os/BatteryStats$HistoryItem;->time:J

    #@18
    sub-long v18, v4, v6

    #@1a
    .line 2225
    .local v18, "timeDiff":J
    move-object/from16 v0, p0

    #@1c
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@1e
    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@20
    move-object/from16 v0, p5

    #@22
    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@24
    move-object/from16 v0, p0

    #@26
    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates:I

    #@28
    and-int/2addr v4, v5

    #@29
    xor-int v12, v3, v4

    #@2b
    .line 2226
    .local v12, "diffStates":I
    move-object/from16 v0, p0

    #@2d
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@2f
    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@31
    move-object/from16 v0, p5

    #@33
    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@35
    move-object/from16 v0, p0

    #@37
    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates2:I

    #@39
    and-int/2addr v4, v5

    #@3a
    xor-int v13, v3, v4

    #@3c
    .line 2227
    .local v13, "diffStates2":I
    move-object/from16 v0, p0

    #@3e
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@40
    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@42
    move-object/from16 v0, p0

    #@44
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@46
    iget v4, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@48
    xor-int v14, v3, v4

    #@4a
    .line 2228
    .local v14, "lastDiffStates":I
    move-object/from16 v0, p0

    #@4c
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@4e
    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@50
    move-object/from16 v0, p0

    #@52
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@54
    iget v4, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@56
    xor-int v15, v3, v4

    #@58
    .line 2234
    .local v15, "lastDiffStates2":I
    move-object/from16 v0, p0

    #@5a
    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    #@5c
    if-ltz v3, :cond_6

    #@5e
    move-object/from16 v0, p0

    #@60
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@62
    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@64
    if-nez v3, :cond_6

    #@66
    .line 2235
    const-wide/16 v4, 0x3e8

    #@68
    cmp-long v3, v18, v4

    #@6a
    if-gez v3, :cond_6

    #@6c
    and-int v3, v12, v14

    #@6e
    if-nez v3, :cond_6

    #@70
    .line 2236
    and-int v3, v13, v15

    #@72
    if-nez v3, :cond_6

    #@74
    .line 2237
    move-object/from16 v0, p0

    #@76
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@78
    iget-object v3, v3, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@7a
    if-eqz v3, :cond_0

    #@7c
    move-object/from16 v0, p5

    #@7e
    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@80
    if-nez v3, :cond_6

    #@82
    .line 2238
    :cond_0
    move-object/from16 v0, p0

    #@84
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@86
    iget-object v3, v3, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@88
    if-eqz v3, :cond_1

    #@8a
    move-object/from16 v0, p5

    #@8c
    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@8e
    if-nez v3, :cond_6

    #@90
    .line 2239
    :cond_1
    move-object/from16 v0, p0

    #@92
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@94
    iget-object v3, v3, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@96
    if-nez v3, :cond_6

    #@98
    .line 2240
    move-object/from16 v0, p0

    #@9a
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@9c
    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    #@9e
    if-eqz v3, :cond_2

    #@a0
    .line 2241
    move-object/from16 v0, p5

    #@a2
    iget v3, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    #@a4
    if-nez v3, :cond_6

    #@a6
    .line 2242
    :cond_2
    move-object/from16 v0, p0

    #@a8
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@aa
    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    #@ac
    move-object/from16 v0, p5

    #@ae
    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    #@b0
    if-ne v3, v4, :cond_6

    #@b2
    .line 2243
    move-object/from16 v0, p0

    #@b4
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@b6
    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    #@b8
    move-object/from16 v0, p5

    #@ba
    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    #@bc
    if-ne v3, v4, :cond_6

    #@be
    .line 2244
    move-object/from16 v0, p0

    #@c0
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@c2
    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    #@c4
    move-object/from16 v0, p5

    #@c6
    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    #@c8
    if-ne v3, v4, :cond_6

    #@ca
    .line 2245
    move-object/from16 v0, p0

    #@cc
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@ce
    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    #@d0
    move-object/from16 v0, p5

    #@d2
    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    #@d4
    if-ne v3, v4, :cond_6

    #@d6
    .line 2246
    move-object/from16 v0, p0

    #@d8
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@da
    iget-short v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    #@dc
    move-object/from16 v0, p5

    #@de
    iget-short v4, v0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    #@e0
    if-ne v3, v4, :cond_6

    #@e2
    .line 2247
    move-object/from16 v0, p0

    #@e4
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@e6
    iget-char v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    #@e8
    move-object/from16 v0, p5

    #@ea
    iget-char v4, v0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    #@ec
    if-ne v3, v4, :cond_6

    #@ee
    .line 2253
    move-object/from16 v0, p0

    #@f0
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    #@f2
    move-object/from16 v0, p0

    #@f4
    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    #@f6
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->setDataSize(I)V

    #@f9
    .line 2254
    move-object/from16 v0, p0

    #@fb
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    #@fd
    move-object/from16 v0, p0

    #@ff
    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    #@101
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    #@104
    .line 2255
    const/4 v3, -0x1

    #@105
    move-object/from16 v0, p0

    #@107
    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    #@109
    .line 2256
    move-object/from16 v0, p0

    #@10b
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@10d
    iget-wide v4, v3, Landroid/os/BatteryStats$HistoryItem;->time:J

    #@10f
    move-object/from16 v0, p0

    #@111
    iget-wide v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    #@113
    sub-long p1, v4, v6

    #@115
    .line 2260
    move-object/from16 v0, p0

    #@117
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@119
    iget-object v3, v3, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@11b
    if-eqz v3, :cond_3

    #@11d
    .line 2261
    move-object/from16 v0, p5

    #@11f
    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@121
    move-object/from16 v0, p5

    #@123
    iput-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@125
    .line 2262
    move-object/from16 v0, p5

    #@127
    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@129
    move-object/from16 v0, p0

    #@12b
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@12d
    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@12f
    invoke-virtual {v3, v4}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    #@132
    .line 2267
    :cond_3
    move-object/from16 v0, p0

    #@134
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@136
    iget-object v3, v3, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@138
    if-eqz v3, :cond_4

    #@13a
    .line 2268
    move-object/from16 v0, p5

    #@13c
    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@13e
    move-object/from16 v0, p5

    #@140
    iput-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@142
    .line 2269
    move-object/from16 v0, p5

    #@144
    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@146
    move-object/from16 v0, p0

    #@148
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@14a
    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@14c
    invoke-virtual {v3, v4}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    #@14f
    .line 2274
    :cond_4
    move-object/from16 v0, p0

    #@151
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@153
    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    #@155
    if-eqz v3, :cond_5

    #@157
    .line 2275
    move-object/from16 v0, p0

    #@159
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@15b
    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    #@15d
    move-object/from16 v0, p5

    #@15f
    iput v3, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    #@161
    .line 2276
    move-object/from16 v0, p5

    #@163
    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    #@165
    move-object/from16 v0, p5

    #@167
    iput-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    #@169
    .line 2277
    move-object/from16 v0, p5

    #@16b
    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    #@16d
    move-object/from16 v0, p0

    #@16f
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@171
    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    #@173
    invoke-virtual {v3, v4}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    #@176
    .line 2279
    :cond_5
    move-object/from16 v0, p0

    #@178
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@17a
    move-object/from16 v0, p0

    #@17c
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@17e
    invoke-virtual {v3, v4}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    #@181
    .line 2282
    :cond_6
    move-object/from16 v0, p0

    #@183
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    #@185
    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    #@188
    move-result v11

    #@189
    .line 2283
    .local v11, "dataSize":I
    const/high16 v3, 0x40000

    #@18b
    if-lt v11, v3, :cond_10

    #@18d
    .line 2284
    move-object/from16 v0, p0

    #@18f
    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryOverflow:Z

    #@191
    if-nez v3, :cond_8

    #@193
    .line 2285
    const/4 v3, 0x1

    #@194
    move-object/from16 v0, p0

    #@196
    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryOverflow:Z

    #@198
    .line 2286
    const/4 v8, 0x0

    #@199
    move-object/from16 v3, p0

    #@19b
    move-wide/from16 v4, p1

    #@19d
    move-wide/from16 v6, p3

    #@19f
    move-object/from16 v9, p5

    #@1a1
    invoke-direct/range {v3 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    #@1a4
    .line 2287
    const/4 v8, 0x6

    #@1a5
    move-object/from16 v3, p0

    #@1a7
    move-wide/from16 v4, p1

    #@1a9
    move-wide/from16 v6, p3

    #@1ab
    move-object/from16 v9, p5

    #@1ad
    invoke-direct/range {v3 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    #@1b0
    .line 2288
    return-void

    #@1b1
    .line 2221
    .end local v11    # "dataSize":I
    .end local v12    # "diffStates":I
    .end local v13    # "diffStates2":I
    .end local v14    # "lastDiffStates":I
    .end local v15    # "lastDiffStates2":I
    .end local v18    # "timeDiff":J
    :cond_7
    return-void

    #@1b2
    .line 2292
    .restart local v11    # "dataSize":I
    .restart local v12    # "diffStates":I
    .restart local v13    # "diffStates2":I
    .restart local v14    # "lastDiffStates":I
    .restart local v15    # "lastDiffStates2":I
    .restart local v18    # "timeDiff":J
    :cond_8
    const/16 v17, 0x0

    #@1b4
    .line 2293
    .local v17, "writeAnyway":Z
    move-object/from16 v0, p5

    #@1b6
    iget v3, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@1b8
    const/high16 v4, -0x190000

    #@1ba
    and-int/2addr v3, v4

    #@1bb
    .line 2294
    move-object/from16 v0, p0

    #@1bd
    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates:I

    #@1bf
    .line 2293
    and-int v2, v3, v4

    #@1c1
    .line 2295
    .local v2, "curStates":I
    move-object/from16 v0, p0

    #@1c3
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@1c5
    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@1c7
    if-eq v3, v2, :cond_9

    #@1c9
    .line 2298
    move-object/from16 v0, p0

    #@1cb
    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates:I

    #@1cd
    move/from16 v16, v0

    #@1cf
    .line 2299
    .local v16, "old":I
    move-object/from16 v0, p0

    #@1d1
    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates:I

    #@1d3
    const v4, 0x18ffff

    #@1d6
    or-int/2addr v4, v2

    #@1d7
    and-int/2addr v3, v4

    #@1d8
    move-object/from16 v0, p0

    #@1da
    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates:I

    #@1dc
    .line 2300
    move-object/from16 v0, p0

    #@1de
    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates:I

    #@1e0
    move/from16 v0, v16

    #@1e2
    if-eq v0, v3, :cond_c

    #@1e4
    const/16 v17, 0x1

    #@1e6
    .line 2302
    .end local v16    # "old":I
    .end local v17    # "writeAnyway":Z
    :cond_9
    :goto_0
    move-object/from16 v0, p5

    #@1e8
    iget v3, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@1ea
    const/high16 v4, 0x687f0000

    #@1ec
    and-int/2addr v3, v4

    #@1ed
    .line 2303
    move-object/from16 v0, p0

    #@1ef
    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates2:I

    #@1f1
    .line 2302
    and-int v10, v3, v4

    #@1f3
    .line 2304
    .local v10, "curStates2":I
    move-object/from16 v0, p0

    #@1f5
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@1f7
    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@1f9
    if-eq v3, v10, :cond_a

    #@1fb
    .line 2307
    move-object/from16 v0, p0

    #@1fd
    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates2:I

    #@1ff
    move/from16 v16, v0

    #@201
    .line 2308
    .restart local v16    # "old":I
    move-object/from16 v0, p0

    #@203
    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates2:I

    #@205
    const v4, -0x687f0001

    #@208
    or-int/2addr v4, v10

    #@209
    and-int/2addr v3, v4

    #@20a
    move-object/from16 v0, p0

    #@20c
    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates2:I

    #@20e
    .line 2309
    move-object/from16 v0, p0

    #@210
    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates2:I

    #@212
    move/from16 v0, v16

    #@214
    if-eq v0, v3, :cond_d

    #@216
    const/4 v3, 0x1

    #@217
    :goto_1
    or-int v17, v17, v3

    #@219
    .line 2316
    .end local v16    # "old":I
    :cond_a
    if-nez v17, :cond_f

    #@21b
    move-object/from16 v0, p0

    #@21d
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@21f
    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    #@221
    move-object/from16 v0, p5

    #@223
    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    #@225
    if-ne v3, v4, :cond_f

    #@227
    .line 2317
    const/high16 v3, 0x50000

    #@229
    if-ge v11, v3, :cond_b

    #@22b
    .line 2318
    move-object/from16 v0, p0

    #@22d
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@22f
    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@231
    move-object/from16 v0, p5

    #@233
    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@235
    xor-int/2addr v3, v4

    #@236
    .line 2319
    const/high16 v4, 0x180000

    #@238
    .line 2318
    and-int/2addr v3, v4

    #@239
    if-nez v3, :cond_e

    #@23b
    .line 2322
    :cond_b
    return-void

    #@23c
    .line 2300
    .end local v10    # "curStates2":I
    .restart local v16    # "old":I
    .restart local v17    # "writeAnyway":Z
    :cond_c
    const/16 v17, 0x0

    #@23e
    goto :goto_0

    #@23f
    .line 2309
    .end local v17    # "writeAnyway":Z
    .restart local v10    # "curStates2":I
    :cond_d
    const/4 v3, 0x0

    #@240
    goto :goto_1

    #@241
    .line 2320
    .end local v16    # "old":I
    :cond_e
    move-object/from16 v0, p0

    #@243
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@245
    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@247
    move-object/from16 v0, p5

    #@249
    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@24b
    xor-int/2addr v3, v4

    #@24c
    .line 2321
    const/high16 v4, -0x68800000

    #@24e
    .line 2320
    and-int/2addr v3, v4

    #@24f
    if-eqz v3, :cond_b

    #@251
    .line 2325
    :cond_f
    const/4 v8, 0x0

    #@252
    move-object/from16 v3, p0

    #@254
    move-wide/from16 v4, p1

    #@256
    move-wide/from16 v6, p3

    #@258
    move-object/from16 v9, p5

    #@25a
    invoke-direct/range {v3 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    #@25d
    .line 2326
    return-void

    #@25e
    .line 2329
    .end local v2    # "curStates":I
    .end local v10    # "curStates2":I
    :cond_10
    if-nez v11, :cond_11

    #@260
    .line 2331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@263
    move-result-wide v4

    #@264
    move-object/from16 v0, p5

    #@266
    iput-wide v4, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    #@268
    .line 2332
    const/4 v8, 0x7

    #@269
    move-object/from16 v3, p0

    #@26b
    move-wide/from16 v4, p1

    #@26d
    move-wide/from16 v6, p3

    #@26f
    move-object/from16 v9, p5

    #@271
    invoke-direct/range {v3 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    #@274
    .line 2334
    :cond_11
    const/4 v8, 0x0

    #@275
    move-object/from16 v3, p0

    #@277
    move-wide/from16 v4, p1

    #@279
    move-wide/from16 v6, p3

    #@27b
    move-object/from16 v9, p5

    #@27d
    invoke-direct/range {v3 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    #@280
    .line 2219
    return-void
.end method

.method public addHistoryEventLocked(JJILjava/lang/String;I)V
    .locals 3
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "code"    # I
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "uid"    # I

    #@0
    .prologue
    .line 2445
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@2
    iput p5, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    #@4
    .line 2446
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@6
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@8
    iget-object v1, v1, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    #@a
    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    #@c
    .line 2447
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@e
    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    #@10
    iput-object p6, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    #@12
    .line 2448
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@14
    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    #@16
    iput p7, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    #@18
    .line 2449
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    #@1b
    .line 2444
    return-void
.end method

.method addHistoryRecordInnerLocked(JJLandroid/os/BatteryStats$HistoryItem;)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "cur"    # Landroid/os/BatteryStats$HistoryItem;

    #@0
    .prologue
    .line 2382
    invoke-virtual/range {p0 .. p5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJLandroid/os/BatteryStats$HistoryItem;)V

    #@3
    .line 2385
    return-void
.end method

.method addHistoryRecordLocked(JJ)V
    .locals 21
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J

    #@0
    .prologue
    .line 2362
    move-object/from16 v0, p0

    #@2
    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryElapsedRealtime:J

    #@4
    const-wide/16 v8, 0x0

    #@6
    cmp-long v4, v4, v8

    #@8
    if-eqz v4, :cond_0

    #@a
    .line 2363
    move-object/from16 v0, p0

    #@c
    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryElapsedRealtime:J

    #@e
    sub-long v16, p1, v4

    #@10
    .line 2364
    .local v16, "diffElapsed":J
    move-object/from16 v0, p0

    #@12
    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryUptime:J

    #@14
    sub-long v18, p3, v4

    #@16
    .line 2365
    .local v18, "diffUptime":J
    const-wide/16 v4, 0x14

    #@18
    sub-long v4, v16, v4

    #@1a
    cmp-long v4, v18, v4

    #@1c
    if-gez v4, :cond_0

    #@1e
    .line 2366
    sub-long v4, v16, v18

    #@20
    sub-long v6, p1, v4

    #@22
    .line 2367
    .local v6, "wakeElapsedTime":J
    move-object/from16 v0, p0

    #@24
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    #@26
    move-object/from16 v0, p0

    #@28
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@2a
    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    #@2d
    .line 2368
    move-object/from16 v0, p0

    #@2f
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    #@31
    const/4 v5, 0x0

    #@32
    iput-object v5, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@34
    .line 2369
    move-object/from16 v0, p0

    #@36
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    #@38
    const/4 v5, 0x0

    #@39
    iput-object v5, v4, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@3b
    .line 2370
    move-object/from16 v0, p0

    #@3d
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    #@3f
    const/4 v5, 0x0

    #@40
    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    #@42
    .line 2371
    move-object/from16 v0, p0

    #@44
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    #@46
    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@48
    const v8, 0x7fffffff

    #@4b
    and-int/2addr v5, v8

    #@4c
    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@4e
    .line 2372
    move-object/from16 v0, p0

    #@50
    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    #@52
    move-object/from16 v5, p0

    #@54
    move-wide/from16 v8, p3

    #@56
    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordInnerLocked(JJLandroid/os/BatteryStats$HistoryItem;)V

    #@59
    .line 2375
    .end local v6    # "wakeElapsedTime":J
    .end local v16    # "diffElapsed":J
    .end local v18    # "diffUptime":J
    :cond_0
    move-object/from16 v0, p0

    #@5b
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@5d
    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@5f
    const/high16 v8, -0x80000000

    #@61
    or-int/2addr v5, v8

    #@62
    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@64
    .line 2376
    move-wide/from16 v0, p1

    #@66
    move-object/from16 v2, p0

    #@68
    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryElapsedRealtime:J

    #@6a
    .line 2377
    move-wide/from16 v0, p3

    #@6c
    move-object/from16 v2, p0

    #@6e
    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryUptime:J

    #@70
    .line 2378
    move-object/from16 v0, p0

    #@72
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@74
    move-object/from16 v9, p0

    #@76
    move-wide/from16 v10, p1

    #@78
    move-wide/from16 v12, p3

    #@7a
    invoke-virtual/range {v9 .. v14}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordInnerLocked(JJLandroid/os/BatteryStats$HistoryItem;)V

    #@7d
    .line 2361
    return-void
.end method

.method addHistoryRecordLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V
    .locals 5
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "cmd"    # B
    .param p6, "cur"    # Landroid/os/BatteryStats$HistoryItem;

    #@0
    .prologue
    .line 2453
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCache:Landroid/os/BatteryStats$HistoryItem;

    #@2
    .line 2454
    .local v0, "rec":Landroid/os/BatteryStats$HistoryItem;
    if-eqz v0, :cond_0

    #@4
    .line 2455
    iget-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->next:Landroid/os/BatteryStats$HistoryItem;

    #@6
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCache:Landroid/os/BatteryStats$HistoryItem;

    #@8
    .line 2459
    :goto_0
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    #@a
    add-long/2addr v2, p1

    #@b
    invoke-virtual {v0, v2, v3, p5, p6}, Landroid/os/BatteryStats$HistoryItem;->setTo(JBLandroid/os/BatteryStats$HistoryItem;)V

    #@e
    .line 2461
    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(Landroid/os/BatteryStats$HistoryItem;)V

    #@11
    .line 2452
    return-void

    #@12
    .line 2457
    :cond_0
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    #@14
    .end local v0    # "rec":Landroid/os/BatteryStats$HistoryItem;
    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    #@17
    .restart local v0    # "rec":Landroid/os/BatteryStats$HistoryItem;
    goto :goto_0
.end method

.method addHistoryRecordLocked(Landroid/os/BatteryStats$HistoryItem;)V
    .locals 2
    .param p1, "rec"    # Landroid/os/BatteryStats$HistoryItem;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2465
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryItems:I

    #@3
    add-int/lit8 v0, v0, 0x1

    #@5
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryItems:I

    #@7
    .line 2466
    iput-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->next:Landroid/os/BatteryStats$HistoryItem;

    #@9
    .line 2467
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    #@b
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastEnd:Landroid/os/BatteryStats$HistoryItem;

    #@d
    .line 2468
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 2469
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    #@13
    iput-object p1, v0, Landroid/os/BatteryStats$HistoryItem;->next:Landroid/os/BatteryStats$HistoryItem;

    #@15
    .line 2470
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    #@17
    .line 2464
    :goto_0
    return-void

    #@18
    .line 2472
    :cond_0
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    #@1a
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistory:Landroid/os/BatteryStats$HistoryItem;

    #@1c
    goto :goto_0
.end method

.method public addIsolatedUidLocked(II)V
    .locals 1
    .param p1, "isolatedUid"    # I
    .param p2, "appUid"    # I

    #@0
    .prologue
    .line 2523
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIsolatedUids:Landroid/util/SparseIntArray;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    #@5
    .line 2522
    return-void
.end method

.method aggregateLastWakeupUptimeLocked(J)V
    .locals 7
    .param p1, "uptimeMs"    # J

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 2894
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupReason:Ljava/lang/String;

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 2895
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupUptimeMs:J

    #@7
    sub-long v0, p1, v4

    #@9
    .line 2896
    .local v0, "deltaUptime":J
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupReason:Ljava/lang/String;

    #@b
    invoke-virtual {p0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getWakeupReasonTimerLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    #@e
    move-result-object v2

    #@f
    .line 2897
    .local v2, "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    const/4 v3, 0x1

    #@10
    invoke-virtual {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->addCurrentReportedCount(I)V

    #@13
    .line 2898
    const-wide/16 v4, 0x3e8

    #@15
    mul-long/2addr v4, v0

    #@16
    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->addCurrentReportedTotalTime(J)V

    #@19
    .line 2899
    iput-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupReason:Ljava/lang/String;

    #@1b
    .line 2893
    .end local v0    # "deltaUptime":J
    .end local v2    # "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_0
    return-void
.end method

.method clearHistoryLocked()V
    .locals 4

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    const-wide/16 v0, 0x0

    #@3
    const/4 v2, 0x0

    #@4
    .line 2487
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    #@6
    .line 2488
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryElapsedRealtime:J

    #@8
    .line 2489
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryElapsedRealtime:J

    #@a
    .line 2490
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTrackRunningHistoryUptime:J

    #@c
    .line 2492
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    #@e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataSize(I)V

    #@11
    .line 2493
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    #@13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    #@16
    .line 2494
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    #@18
    const/high16 v1, 0x20000

    #@1a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataCapacity(I)V

    #@1d
    .line 2495
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@1f
    invoke-virtual {v0}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    #@22
    .line 2496
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@24
    invoke-virtual {v0}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    #@27
    .line 2497
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    #@29
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@2c
    .line 2498
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    #@2e
    .line 2499
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryTagChars:I

    #@30
    .line 2500
    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBufferLastPos:I

    #@32
    .line 2501
    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryOverflow:Z

    #@34
    .line 2502
    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates:I

    #@36
    .line 2503
    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveHistoryStates2:I

    #@38
    .line 2476
    return-void
.end method

.method public commitCurrentHistoryBatchLocked()V
    .locals 2

    #@0
    .prologue
    .line 2216
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@2
    const/4 v1, -0x1

    #@3
    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@5
    .line 2215
    return-void
.end method

.method public commitPendingDataToDisk()V
    .locals 5

    #@0
    .prologue
    .line 8884
    monitor-enter p0

    #@1
    .line 8885
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPendingWrite:Landroid/os/Parcel;

    #@3
    .line 8886
    .local v1, "next":Landroid/os/Parcel;
    const/4 v3, 0x0

    #@4
    iput-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPendingWrite:Landroid/os/Parcel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    .line 8887
    if-nez v1, :cond_0

    #@8
    monitor-exit p0

    #@9
    .line 8888
    return-void

    #@a
    .line 8891
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@c
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    monitor-exit p0

    #@10
    .line 8895
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    #@12
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    #@14
    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    #@17
    move-result-object v3

    #@18
    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@1b
    .line 8896
    .local v2, "stream":Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    #@22
    .line 8897
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    #@25
    .line 8898
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    #@28
    .line 8899
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    #@2b
    .line 8900
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    #@2d
    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@30
    .line 8905
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 8906
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@35
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@38
    .line 8882
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    #@39
    .line 8884
    .end local v1    # "next":Landroid/os/Parcel;
    :catchall_0
    move-exception v3

    #@3a
    monitor-exit p0

    #@3b
    throw v3

    #@3c
    .line 8901
    .restart local v1    # "next":Landroid/os/Parcel;
    :catch_0
    move-exception v0

    #@3d
    .line 8902
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v3, "BatteryStats"

    #@40
    const-string/jumbo v4, "Error writing battery statistics"

    #@43
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@46
    .line 8903
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    #@48
    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->rollback()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@4b
    .line 8905
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4e
    .line 8906
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@50
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@53
    goto :goto_0

    #@54
    .line 8904
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    #@55
    .line 8905
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@58
    .line 8906
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@5a
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@5d
    .line 8904
    throw v3
.end method

.method public computeBatteryRealtime(JI)J
    .locals 3
    .param p1, "curTime"    # J
    .param p3, "which"    # I

    #@0
    .prologue
    .line 8534
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->computeRealtime(JI)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public computeBatteryScreenOffRealtime(JI)J
    .locals 3
    .param p1, "curTime"    # J
    .param p3, "which"    # I

    #@0
    .prologue
    .line 8544
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->computeRealtime(JI)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public computeBatteryScreenOffUptime(JI)J
    .locals 3
    .param p1, "curTime"    # J
    .param p3, "which"    # I

    #@0
    .prologue
    .line 8539
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->computeUptime(JI)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public computeBatteryTimeRemaining(J)J
    .locals 6
    .param p1, "curTime"    # J

    #@0
    .prologue
    const-wide/16 v4, -0x1

    #@2
    .line 8587
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    #@4
    if-nez v2, :cond_0

    #@6
    .line 8588
    return-wide v4

    #@7
    .line 8603
    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@9
    iget v2, v2, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    #@b
    const/4 v3, 0x1

    #@c
    if-ge v2, v3, :cond_1

    #@e
    .line 8604
    return-wide v4

    #@f
    .line 8606
    :cond_1
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@11
    invoke-virtual {v2}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimePerLevel()J

    #@14
    move-result-wide v0

    #@15
    .line 8607
    .local v0, "msPerLevel":J
    const-wide/16 v2, 0x0

    #@17
    cmp-long v2, v0, v2

    #@19
    if-gtz v2, :cond_2

    #@1b
    .line 8608
    return-wide v4

    #@1c
    .line 8610
    :cond_2
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    #@1e
    int-to-long v2, v2

    #@1f
    mul-long/2addr v2, v0

    #@20
    const-wide/16 v4, 0x3e8

    #@22
    mul-long/2addr v2, v4

    #@23
    return-wide v2
.end method

.method public computeBatteryUptime(JI)J
    .locals 3
    .param p1, "curTime"    # J
    .param p3, "which"    # I

    #@0
    .prologue
    .line 8529
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->computeUptime(JI)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public computeChargeTimeRemaining(J)J
    .locals 6
    .param p1, "curTime"    # J

    #@0
    .prologue
    const-wide/16 v4, -0x1

    #@2
    .line 8625
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 8627
    return-wide v4

    #@7
    .line 8642
    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@9
    iget v2, v2, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    #@b
    const/4 v3, 0x1

    #@c
    if-ge v2, v3, :cond_1

    #@e
    .line 8643
    return-wide v4

    #@f
    .line 8645
    :cond_1
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@11
    invoke-virtual {v2}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimePerLevel()J

    #@14
    move-result-wide v0

    #@15
    .line 8646
    .local v0, "msPerLevel":J
    const-wide/16 v2, 0x0

    #@17
    cmp-long v2, v0, v2

    #@19
    if-gtz v2, :cond_2

    #@1b
    .line 8647
    return-wide v4

    #@1c
    .line 8649
    :cond_2
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    #@1e
    rsub-int/lit8 v2, v2, 0x64

    #@20
    int-to-long v2, v2

    #@21
    mul-long/2addr v2, v0

    #@22
    const-wide/16 v4, 0x3e8

    #@24
    mul-long/2addr v2, v4

    #@25
    return-wide v2
.end method

.method public computeRealtime(JI)J
    .locals 5
    .param p1, "curTime"    # J
    .param p3, "which"    # I

    #@0
    .prologue
    .line 8519
    packed-switch p3, :pswitch_data_0

    #@3
    .line 8524
    const-wide/16 v0, 0x0

    #@5
    return-wide v0

    #@6
    .line 8520
    :pswitch_0
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtime:J

    #@8
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtimeStart:J

    #@a
    sub-long v2, p1, v2

    #@c
    add-long/2addr v0, v2

    #@d
    return-wide v0

    #@e
    .line 8521
    :pswitch_1
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtimeStart:J

    #@10
    sub-long v0, p1, v0

    #@12
    return-wide v0

    #@13
    .line 8522
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@15
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtimeStart()J

    #@18
    move-result-wide v0

    #@19
    sub-long v0, p1, v0

    #@1b
    return-wide v0

    #@1c
    .line 8519
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public computeUptime(JI)J
    .locals 5
    .param p1, "curTime"    # J
    .param p3, "which"    # I

    #@0
    .prologue
    .line 8509
    packed-switch p3, :pswitch_data_0

    #@3
    .line 8514
    const-wide/16 v0, 0x0

    #@5
    return-wide v0

    #@6
    .line 8510
    :pswitch_0
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUptime:J

    #@8
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUptimeStart:J

    #@a
    sub-long v2, p1, v2

    #@c
    add-long/2addr v0, v2

    #@d
    return-wide v0

    #@e
    .line 8511
    :pswitch_1
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUptimeStart:J

    #@10
    sub-long v0, p1, v0

    #@12
    return-wide v0

    #@13
    .line 8512
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@15
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptimeStart()J

    #@18
    move-result-wide v0

    #@19
    sub-long v0, p1, v0

    #@1b
    return-wide v0

    #@1c
    .line 8509
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 8958
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIJ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "flags"    # I
    .param p4, "reqUid"    # I
    .param p5, "histStart"    # J

    #@0
    .prologue
    .line 10137
    invoke-super/range {p0 .. p6}, Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIJ)V

    #@3
    .line 10077
    return-void
.end method

.method ensureStartClockTime(J)Z
    .locals 9
    .param p1, "currentTime"    # J

    #@0
    .prologue
    const-wide v4, 0x757b12c00L

    #@5
    .line 2564
    const-wide v0, 0x757b12c00L

    #@a
    .line 2565
    .local v0, "ABOUT_ONE_YEAR":J
    cmp-long v2, p1, v4

    #@c
    if-lez v2, :cond_0

    #@e
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartClockTime:J

    #@10
    sub-long v4, p1, v4

    #@12
    cmp-long v2, v2, v4

    #@14
    if-gez v2, :cond_0

    #@16
    .line 2569
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@19
    move-result-wide v2

    #@1a
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtimeStart:J

    #@1c
    const-wide/16 v6, 0x3e8

    #@1e
    div-long/2addr v4, v6

    #@1f
    sub-long/2addr v2, v4

    #@20
    sub-long v2, p1, v2

    #@22
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartClockTime:J

    #@24
    .line 2570
    const/4 v2, 0x1

    #@25
    return v2

    #@26
    .line 2572
    :cond_0
    const/4 v2, 0x0

    #@27
    return v2
.end method

.method public finishAddingCpuLocked(IIIIIIII)V
    .locals 4
    .param p1, "totalUTime"    # I
    .param p2, "totalSTime"    # I
    .param p3, "statUserTime"    # I
    .param p4, "statSystemTime"    # I
    .param p5, "statIOWaitTime"    # I
    .param p6, "statIrqTime"    # I
    .param p7, "statSoftIrqTime"    # I
    .param p8, "statIdleTime"    # I

    #@0
    .prologue
    .line 2929
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuUserTime:J

    #@2
    int-to-long v2, p1

    #@3
    add-long/2addr v0, v2

    #@4
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuUserTime:J

    #@6
    .line 2930
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuSystemTime:J

    #@8
    int-to-long v2, p2

    #@9
    add-long/2addr v0, v2

    #@a
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepCpuSystemTime:J

    #@c
    .line 2931
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatUserTime:J

    #@e
    int-to-long v2, p3

    #@f
    add-long/2addr v0, v2

    #@10
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatUserTime:J

    #@12
    .line 2932
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatSystemTime:J

    #@14
    int-to-long v2, p4

    #@15
    add-long/2addr v0, v2

    #@16
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatSystemTime:J

    #@18
    .line 2933
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIOWaitTime:J

    #@1a
    int-to-long v2, p5

    #@1b
    add-long/2addr v0, v2

    #@1c
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIOWaitTime:J

    #@1e
    .line 2934
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIrqTime:J

    #@20
    int-to-long v2, p6

    #@21
    add-long/2addr v0, v2

    #@22
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIrqTime:J

    #@24
    .line 2935
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatSoftIrqTime:J

    #@26
    int-to-long v2, p7

    #@27
    add-long/2addr v0, v2

    #@28
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatSoftIrqTime:J

    #@2a
    .line 2936
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIdleTime:J

    #@2c
    int-to-long v2, p8

    #@2d
    add-long/2addr v0, v2

    #@2e
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepStatIdleTime:J

    #@30
    .line 2924
    return-void
.end method

.method public finishIteratingHistoryLocked()V
    .locals 2

    #@0
    .prologue
    .line 7345
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIteratingHistory:Z

    #@3
    .line 7346
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    #@5
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    #@7
    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    #@a
    move-result v1

    #@b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@e
    .line 7347
    const/4 v0, 0x0

    #@f
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStrings:[Ljava/lang/String;

    #@11
    .line 7344
    return-void
.end method

.method public finishIteratingOldHistoryLocked()V
    .locals 2

    #@0
    .prologue
    .line 7264
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIteratingHistory:Z

    #@3
    .line 7265
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    #@5
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    #@7
    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    #@a
    move-result v1

    #@b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@e
    .line 7266
    const/4 v0, 0x0

    #@f
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryIterator:Landroid/os/BatteryStats$HistoryItem;

    #@11
    .line 7263
    return-void
.end method

.method public getAwakeTimeBattery()J
    .locals 3

    #@0
    .prologue
    .line 8500
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked()J

    #@3
    move-result-wide v0

    #@4
    const/4 v2, 0x1

    #@5
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryUptime(JI)J

    #@8
    move-result-wide v0

    #@9
    return-wide v0
.end method

.method public getAwakeTimePlugged()J
    .locals 4

    #@0
    .prologue
    .line 8504
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v0

    #@4
    const-wide/16 v2, 0x3e8

    #@6
    mul-long/2addr v0, v2

    #@7
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getAwakeTimeBattery()J

    #@a
    move-result-wide v2

    #@b
    sub-long/2addr v0, v2

    #@c
    return-wide v0
.end method

.method public getBatteryRealtime(J)J
    .locals 3
    .param p1, "curTime"    # J

    #@0
    .prologue
    .line 8678
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getBatteryUptime(J)J
    .locals 3
    .param p1, "curTime"    # J

    #@0
    .prologue
    .line 8673
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method getBatteryUptimeLocked()J
    .locals 6

    #@0
    .prologue
    .line 8668
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@5
    move-result-wide v2

    #@6
    const-wide/16 v4, 0x3e8

    #@8
    mul-long/2addr v2, v4

    #@9
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    #@c
    move-result-wide v0

    #@d
    return-wide v0
.end method

.method public getBluetoothControllerActivity(II)J
    .locals 2
    .param p1, "type"    # I
    .param p2, "which"    # I

    #@0
    .prologue
    .line 4269
    if-ltz p1, :cond_0

    #@2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@4
    array-length v0, v0

    #@5
    if-ge p1, v0, :cond_0

    #@7
    .line 4270
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@9
    aget-object v0, v0, p1

    #@b
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    #@e
    move-result-wide v0

    #@f
    return-wide v0

    #@10
    .line 4272
    :cond_0
    const-wide/16 v0, 0x0

    #@12
    return-wide v0
.end method

.method public getCameraOnTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    #@0
    .prologue
    .line 4298
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
    .locals 1

    #@0
    .prologue
    .line 8654
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@2
    return-object v0
.end method

.method public getCpuSpeedSteps()I
    .locals 1

    #@0
    .prologue
    .line 8782
    sget v0, Lcom/android/internal/os/BatteryStatsImpl;->sNumSpeedSteps:I

    #@2
    return v0
.end method

.method public getCurrentDailyStartTime()J
    .locals 2

    #@0
    .prologue
    .line 7202
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyStartTime:J

    #@2
    return-wide v0
.end method

.method public getDailyChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
    .locals 1

    #@0
    .prologue
    .line 8659
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@2
    return-object v0
.end method

.method public getDailyDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
    .locals 1

    #@0
    .prologue
    .line 8620
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@2
    return-object v0
.end method

.method public getDailyItemLocked(I)Landroid/os/BatteryStats$DailyItem;
    .locals 2
    .param p1, "daysAgo"    # I

    #@0
    .prologue
    .line 7196
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyItems:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    add-int/lit8 v1, v1, -0x1

    #@8
    sub-int v0, v1, p1

    #@a
    .line 7197
    .local v0, "index":I
    if-ltz v0, :cond_0

    #@c
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyItems:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroid/os/BatteryStats$DailyItem;

    #@14
    :goto_0
    return-object v1

    #@15
    :cond_0
    const/4 v1, 0x0

    #@16
    goto :goto_0
.end method

.method public getDailyPackageChanges()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/BatteryStats$PackageChange;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 8664
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public getDeviceIdleModeEnabledCount(I)I
    .locals 1
    .param p1, "which"    # I

    #@0
    .prologue
    .line 4151
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getDeviceIdleModeEnabledTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    #@0
    .prologue
    .line 4147
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getDeviceIdlingCount(I)I
    .locals 1
    .param p1, "which"    # I

    #@0
    .prologue
    .line 4159
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getDeviceIdlingTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    #@0
    .prologue
    .line 4155
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getDischargeAmount(I)I
    .locals 3
    .param p1, "which"    # I

    #@0
    .prologue
    .line 8727
    if-nez p1, :cond_1

    #@2
    .line 8728
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getHighDischargeAmountSinceCharge()I

    #@5
    move-result v0

    #@6
    .line 8730
    .local v0, "dischargeAmount":I
    :goto_0
    if-gez v0, :cond_0

    #@8
    .line 8731
    const/4 v0, 0x0

    #@9
    .line 8733
    :cond_0
    return v0

    #@a
    .line 8729
    .end local v0    # "dischargeAmount":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeStartLevel()I

    #@d
    move-result v1

    #@e
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeCurrentLevel()I

    #@11
    move-result v2

    #@12
    sub-int v0, v1, v2

    #@14
    .restart local v0    # "dischargeAmount":I
    goto :goto_0
.end method

.method public getDischargeAmountScreenOff()I
    .locals 3

    #@0
    .prologue
    .line 8759
    monitor-enter p0

    #@1
    .line 8760
    :try_start_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOff:I

    #@3
    .line 8761
    .local v0, "val":I
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    #@5
    if-eqz v1, :cond_0

    #@7
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    #@9
    const/4 v2, 0x2

    #@a
    if-eq v1, v2, :cond_0

    #@c
    .line 8762
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    #@e
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    #@10
    if-ge v1, v2, :cond_0

    #@12
    .line 8763
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    #@14
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    sub-int/2addr v1, v2

    #@17
    add-int/2addr v0, v1

    #@18
    :cond_0
    monitor-exit p0

    #@19
    .line 8765
    return v0

    #@1a
    .line 8759
    .end local v0    # "val":I
    :catchall_0
    move-exception v1

    #@1b
    monitor-exit p0

    #@1c
    throw v1
.end method

.method public getDischargeAmountScreenOffSinceCharge()I
    .locals 3

    #@0
    .prologue
    .line 8770
    monitor-enter p0

    #@1
    .line 8771
    :try_start_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOffSinceCharge:I

    #@3
    .line 8772
    .local v0, "val":I
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    #@5
    if-eqz v1, :cond_0

    #@7
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    #@9
    const/4 v2, 0x2

    #@a
    if-eq v1, v2, :cond_0

    #@c
    .line 8773
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    #@e
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    #@10
    if-ge v1, v2, :cond_0

    #@12
    .line 8774
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    #@14
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    sub-int/2addr v1, v2

    #@17
    add-int/2addr v0, v1

    #@18
    :cond_0
    monitor-exit p0

    #@19
    .line 8776
    return v0

    #@1a
    .line 8770
    .end local v0    # "val":I
    :catchall_0
    move-exception v1

    #@1b
    monitor-exit p0

    #@1c
    throw v1
.end method

.method public getDischargeAmountScreenOn()I
    .locals 3

    #@0
    .prologue
    .line 8737
    monitor-enter p0

    #@1
    .line 8738
    :try_start_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOn:I

    #@3
    .line 8739
    .local v0, "val":I
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    #@5
    if-eqz v1, :cond_0

    #@7
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    #@9
    const/4 v2, 0x2

    #@a
    if-ne v1, v2, :cond_0

    #@c
    .line 8740
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    #@e
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    #@10
    if-ge v1, v2, :cond_0

    #@12
    .line 8741
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    #@14
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    sub-int/2addr v1, v2

    #@17
    add-int/2addr v0, v1

    #@18
    :cond_0
    monitor-exit p0

    #@19
    .line 8743
    return v0

    #@1a
    .line 8737
    .end local v0    # "val":I
    :catchall_0
    move-exception v1

    #@1b
    monitor-exit p0

    #@1c
    throw v1
.end method

.method public getDischargeAmountScreenOnSinceCharge()I
    .locals 3

    #@0
    .prologue
    .line 8748
    monitor-enter p0

    #@1
    .line 8749
    :try_start_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOnSinceCharge:I

    #@3
    .line 8750
    .local v0, "val":I
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    #@5
    if-eqz v1, :cond_0

    #@7
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    #@9
    const/4 v2, 0x2

    #@a
    if-ne v1, v2, :cond_0

    #@c
    .line 8751
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    #@e
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    #@10
    if-ge v1, v2, :cond_0

    #@12
    .line 8752
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    #@14
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    sub-int/2addr v1, v2

    #@17
    add-int/2addr v0, v1

    #@18
    :cond_0
    monitor-exit p0

    #@19
    .line 8754
    return v0

    #@1a
    .line 8748
    .end local v0    # "val":I
    :catchall_0
    move-exception v1

    #@1b
    monitor-exit p0

    #@1c
    throw v1
.end method

.method public getDischargeCurrentLevel()I
    .locals 1

    #@0
    .prologue
    .line 8694
    monitor-enter p0

    #@1
    .line 8695
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeCurrentLevelLocked()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result v0

    #@5
    monitor-exit p0

    #@6
    return v0

    #@7
    .line 8694
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method public getDischargeCurrentLevelLocked()I
    .locals 1

    #@0
    .prologue
    .line 8700
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    #@2
    return v0
.end method

.method public getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
    .locals 1

    #@0
    .prologue
    .line 8615
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@2
    return-object v0
.end method

.method public getDischargeStartLevel()I
    .locals 1

    #@0
    .prologue
    .line 8683
    monitor-enter p0

    #@1
    .line 8684
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeStartLevelLocked()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result v0

    #@5
    monitor-exit p0

    #@6
    return v0

    #@7
    .line 8683
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method public getDischargeStartLevelLocked()I
    .locals 1

    #@0
    .prologue
    .line 8689
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    #@2
    return v0
.end method

.method public getEndPlatformVersion()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 4333
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mEndPlatformVersion:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getFlashlightOnCount(I)J
    .locals 2
    .param p1, "which"    # I

    #@0
    .prologue
    .line 4293
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    #@5
    move-result v0

    #@6
    int-to-long v0, v0

    #@7
    return-wide v0
.end method

.method public getFlashlightOnTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    #@0
    .prologue
    .line 4288
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getGlobalWifiRunningTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    #@0
    .prologue
    .line 4231
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getHighDischargeAmountSinceCharge()I
    .locals 3

    #@0
    .prologue
    .line 8716
    monitor-enter p0

    #@1
    .line 8717
    :try_start_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHighDischargeAmountSinceCharge:I

    #@3
    .line 8718
    .local v0, "val":I
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    #@5
    if-eqz v1, :cond_0

    #@7
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    #@9
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    #@b
    if-ge v1, v2, :cond_0

    #@d
    .line 8719
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    #@f
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    sub-int/2addr v1, v2

    #@12
    add-int/2addr v0, v1

    #@13
    :cond_0
    monitor-exit p0

    #@14
    .line 8721
    return v0

    #@15
    .line 8716
    .end local v0    # "val":I
    :catchall_0
    move-exception v1

    #@16
    monitor-exit p0

    #@17
    throw v1
.end method

.method public getHistoryBaseTime()J
    .locals 2

    #@0
    .prologue
    .line 7352
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    #@2
    return-wide v0
.end method

.method public getHistoryStringPoolBytes()I
    .locals 2

    #@0
    .prologue
    .line 7309
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStrings:[Ljava/lang/String;

    #@2
    array-length v0, v0

    #@3
    mul-int/lit8 v0, v0, 0xc

    #@5
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryChars:I

    #@7
    mul-int/lit8 v1, v1, 0x2

    #@9
    add-int/2addr v0, v1

    #@a
    return v0
.end method

.method public getHistoryStringPoolSize()I
    .locals 1

    #@0
    .prologue
    .line 7302
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStrings:[Ljava/lang/String;

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public getHistoryTagPoolString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 7314
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStrings:[Ljava/lang/String;

    #@2
    aget-object v0, v0, p1

    #@4
    return-object v0
.end method

.method public getHistoryTagPoolUid(I)I
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 7319
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryUids:[I

    #@2
    aget v0, v0, p1

    #@4
    return v0
.end method

.method public getHistoryTotalSize()I
    .locals 1

    #@0
    .prologue
    .line 7270
    const/high16 v0, 0x40000

    #@2
    return v0
.end method

.method public getHistoryUsedSize()I
    .locals 1

    #@0
    .prologue
    .line 7274
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    #@2
    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getInteractiveTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    #@0
    .prologue
    .line 4135
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getIsOnBattery()Z
    .locals 1

    #@0
    .prologue
    .line 4341
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    #@2
    return v0
.end method

.method public getKernelWakelockStats()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/internal/os/BatteryStatsImpl$Timer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method public getKernelWakelockTimerLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1787
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    #@8
    .line 1788
    .local v0, "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    if-nez v0, :cond_0

    #@a
    .line 1789
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    #@c
    .end local v0    # "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@e
    const/4 v2, 0x1

    #@f
    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Z)V

    #@12
    .line 1790
    .restart local v0    # "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    #@14
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 1792
    :cond_0
    return-object v0
.end method

.method public getLowDischargeAmountSinceCharge()I
    .locals 3

    #@0
    .prologue
    .line 8705
    monitor-enter p0

    #@1
    .line 8706
    :try_start_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLowDischargeAmountSinceCharge:I

    #@3
    .line 8707
    .local v0, "val":I
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    #@5
    if-eqz v1, :cond_0

    #@7
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    #@9
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    #@b
    if-ge v1, v2, :cond_0

    #@d
    .line 8708
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    #@f
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    sub-int/2addr v1, v2

    #@12
    add-int/lit8 v1, v1, -0x1

    #@14
    add-int/2addr v0, v1

    #@15
    :cond_0
    monitor-exit p0

    #@16
    .line 8710
    return v0

    #@17
    .line 8705
    .end local v0    # "val":I
    :catchall_0
    move-exception v1

    #@18
    monitor-exit p0

    #@19
    throw v1
.end method

.method public getMobileRadioActiveAdjustedTime(I)J
    .locals 2
    .param p1, "which"    # I

    #@0
    .prologue
    .line 4215
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getMobileRadioActiveCount(I)I
    .locals 1
    .param p1, "which"    # I

    #@0
    .prologue
    .line 4211
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getMobileRadioActiveTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    #@0
    .prologue
    .line 4207
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getMobileRadioActiveUnknownCount(I)I
    .locals 2
    .param p1, "which"    # I

    #@0
    .prologue
    .line 4223
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    #@5
    move-result-wide v0

    #@6
    long-to-int v0, v0

    #@7
    return v0
.end method

.method public getMobileRadioActiveUnknownTime(I)J
    .locals 2
    .param p1, "which"    # I

    #@0
    .prologue
    .line 4219
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getNetworkActivityBytes(II)J
    .locals 2
    .param p1, "type"    # I
    .param p2, "which"    # I

    #@0
    .prologue
    .line 4303
    if-ltz p1, :cond_0

    #@2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@4
    array-length v0, v0

    #@5
    if-ge p1, v0, :cond_0

    #@7
    .line 4304
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@9
    aget-object v0, v0, p1

    #@b
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    #@e
    move-result-wide v0

    #@f
    return-wide v0

    #@10
    .line 4306
    :cond_0
    const-wide/16 v0, 0x0

    #@12
    return-wide v0
.end method

.method public getNetworkActivityPackets(II)J
    .locals 2
    .param p1, "type"    # I
    .param p2, "which"    # I

    #@0
    .prologue
    .line 4312
    if-ltz p1, :cond_0

    #@2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@4
    array-length v0, v0

    #@5
    if-ge p1, v0, :cond_0

    #@7
    .line 4313
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@9
    aget-object v0, v0, p1

    #@b
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    #@e
    move-result-wide v0

    #@f
    return-wide v0

    #@10
    .line 4315
    :cond_0
    const-wide/16 v0, 0x0

    #@12
    return-wide v0
.end method

.method public getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z
    .locals 8
    .param p1, "out"    # Landroid/os/BatteryStats$HistoryItem;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 7324
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    #@3
    invoke-virtual {v6}, Landroid/os/Parcel;->dataPosition()I

    #@6
    move-result v1

    #@7
    .line 7325
    .local v1, "pos":I
    if-nez v1, :cond_0

    #@9
    .line 7326
    invoke-virtual {p1}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    #@c
    .line 7328
    :cond_0
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    #@e
    invoke-virtual {v6}, Landroid/os/Parcel;->dataSize()I

    #@11
    move-result v6

    #@12
    if-lt v1, v6, :cond_1

    #@14
    const/4 v0, 0x1

    #@15
    .line 7329
    .local v0, "end":Z
    :goto_0
    if-eqz v0, :cond_2

    #@17
    .line 7330
    return v7

    #@18
    .line 7328
    .end local v0    # "end":Z
    :cond_1
    const/4 v0, 0x0

    #@19
    .restart local v0    # "end":Z
    goto :goto_0

    #@1a
    .line 7333
    :cond_2
    iget-wide v2, p1, Landroid/os/BatteryStats$HistoryItem;->time:J

    #@1c
    .line 7334
    .local v2, "lastRealtime":J
    iget-wide v4, p1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    #@1e
    .line 7335
    .local v4, "lastWalltime":J
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    #@20
    invoke-virtual {p0, v6, p1}, Lcom/android/internal/os/BatteryStatsImpl;->readHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;)V

    #@23
    .line 7336
    iget-byte v6, p1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@25
    const/4 v7, 0x5

    #@26
    if-eq v6, v7, :cond_3

    #@28
    .line 7337
    iget-byte v6, p1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@2a
    const/4 v7, 0x7

    #@2b
    if-eq v6, v7, :cond_3

    #@2d
    const-wide/16 v6, 0x0

    #@2f
    cmp-long v6, v4, v6

    #@31
    if-eqz v6, :cond_3

    #@33
    .line 7338
    iget-wide v6, p1, Landroid/os/BatteryStats$HistoryItem;->time:J

    #@35
    sub-long/2addr v6, v2

    #@36
    add-long/2addr v6, v4

    #@37
    iput-wide v6, p1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    #@39
    .line 7340
    :cond_3
    const/4 v6, 0x1

    #@3a
    return v6
.end method

.method public getNextMaxDailyDeadline()J
    .locals 2

    #@0
    .prologue
    .line 7212
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMaxDailyDeadline:J

    #@2
    return-wide v0
.end method

.method public getNextMinDailyDeadline()J
    .locals 2

    #@0
    .prologue
    .line 7207
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMinDailyDeadline:J

    #@2
    return-wide v0
.end method

.method public getNextOldHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z
    .locals 10
    .param p1, "out"    # Landroid/os/BatteryStats$HistoryItem;

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    const/4 v7, 0x1

    #@3
    const/4 v6, 0x0

    #@4
    .line 7231
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    #@6
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    #@9
    move-result v1

    #@a
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    #@c
    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    #@f
    move-result v3

    #@10
    if-lt v1, v3, :cond_2

    #@12
    const/4 v8, 0x1

    #@13
    .line 7232
    .local v8, "end":Z
    :goto_0
    if-nez v8, :cond_0

    #@15
    .line 7233
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    #@17
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    #@19
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->readHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;)V

    #@1c
    .line 7234
    iget-boolean v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadOverflow:Z

    #@1e
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    #@20
    iget-byte v1, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@22
    const/4 v9, 0x6

    #@23
    if-ne v1, v9, :cond_3

    #@25
    move v1, v7

    #@26
    :goto_1
    or-int/2addr v1, v3

    #@27
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadOverflow:Z

    #@29
    .line 7236
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryIterator:Landroid/os/BatteryStats$HistoryItem;

    #@2b
    .line 7237
    .local v0, "cur":Landroid/os/BatteryStats$HistoryItem;
    if-nez v0, :cond_5

    #@2d
    .line 7238
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadOverflow:Z

    #@2f
    if-nez v1, :cond_1

    #@31
    if-eqz v8, :cond_4

    #@33
    .line 7241
    :cond_1
    :goto_2
    return v6

    #@34
    .line 7231
    .end local v0    # "cur":Landroid/os/BatteryStats$HistoryItem;
    .end local v8    # "end":Z
    :cond_2
    const/4 v8, 0x0

    #@35
    .restart local v8    # "end":Z
    goto :goto_0

    #@36
    :cond_3
    move v1, v6

    #@37
    .line 7234
    goto :goto_1

    #@38
    .line 7239
    .restart local v0    # "cur":Landroid/os/BatteryStats$HistoryItem;
    :cond_4
    const-string/jumbo v1, "BatteryStatsImpl"

    #@3b
    const-string/jumbo v3, "Old history ends before new history!"

    #@3e
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    goto :goto_2

    #@42
    .line 7243
    :cond_5
    invoke-virtual {p1, v0}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    #@45
    .line 7244
    iget-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->next:Landroid/os/BatteryStats$HistoryItem;

    #@47
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryIterator:Landroid/os/BatteryStats$HistoryItem;

    #@49
    .line 7245
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadOverflow:Z

    #@4b
    if-nez v1, :cond_6

    #@4d
    .line 7246
    if-eqz v8, :cond_7

    #@4f
    .line 7247
    const-string/jumbo v1, "BatteryStatsImpl"

    #@52
    const-string/jumbo v3, "New history ends before old history!"

    #@55
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@58
    .line 7259
    :cond_6
    :goto_3
    return v7

    #@59
    .line 7248
    :cond_7
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    #@5b
    invoke-virtual {p1, v1}, Landroid/os/BatteryStats$HistoryItem;->same(Landroid/os/BatteryStats$HistoryItem;)Z

    #@5e
    move-result v1

    #@5f
    if-nez v1, :cond_6

    #@61
    .line 7249
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    #@63
    new-instance v1, Landroid/util/LogWriter;

    #@65
    const-string/jumbo v3, "BatteryStatsImpl"

    #@68
    const/4 v9, 0x5

    #@69
    invoke-direct {v1, v9, v3}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;)V

    #@6c
    invoke-direct {v2, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;)V

    #@6f
    .line 7250
    .local v2, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v1, "Histories differ!"

    #@72
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@75
    .line 7251
    const-string/jumbo v1, "Old history:"

    #@78
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7b
    .line 7252
    new-instance v1, Landroid/os/BatteryStats$HistoryPrinter;

    #@7d
    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    #@80
    move-object v3, p1

    #@81
    invoke-virtual/range {v1 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    #@84
    .line 7253
    const-string/jumbo v1, "New history:"

    #@87
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8a
    .line 7254
    new-instance v1, Landroid/os/BatteryStats$HistoryPrinter;

    #@8c
    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    #@8f
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    #@91
    invoke-virtual/range {v1 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    #@94
    .line 7256
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    #@97
    goto :goto_3
.end method

.method public getNumConnectivityChange(I)I
    .locals 2
    .param p1, "which"    # I

    #@0
    .prologue
    .line 4163
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumConnectivityChange:I

    #@2
    .line 4164
    .local v0, "val":I
    const/4 v1, 0x1

    #@3
    if-ne p1, v1, :cond_1

    #@5
    .line 4165
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLoadedNumConnectivityChange:I

    #@7
    sub-int/2addr v0, v1

    #@8
    .line 4169
    :cond_0
    :goto_0
    return v0

    #@9
    .line 4166
    :cond_1
    const/4 v1, 0x2

    #@a
    if-ne p1, v1, :cond_0

    #@c
    .line 4167
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggedNumConnectivityChange:I

    #@e
    sub-int/2addr v0, v1

    #@f
    goto :goto_0
.end method

.method public getPackageStatsLocked(ILjava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .locals 2
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 8820
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@3
    move-result p1

    #@4
    .line 8821
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@7
    move-result-object v0

    #@8
    .line 8822
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getPackageStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method public getParcelVersion()I
    .locals 1

    #@0
    .prologue
    .line 4337
    const/16 v0, 0x82

    #@2
    return v0
.end method

.method public getPhoneDataConnectionCount(II)I
    .locals 1
    .param p1, "dataType"    # I
    .param p2, "which"    # I

    #@0
    .prologue
    .line 4203
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    aget-object v0, v0, p1

    #@4
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getPhoneDataConnectionTime(IJI)J
    .locals 2
    .param p1, "dataType"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    #@0
    .prologue
    .line 4198
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    aget-object v0, v0, p1

    #@4
    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public getPhoneOnCount(I)I
    .locals 1
    .param p1, "which"    # I

    #@0
    .prologue
    .line 4177
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getPhoneOnTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    #@0
    .prologue
    .line 4173
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getPhoneSignalScanningTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    #@0
    .prologue
    .line 4188
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getPhoneSignalStrengthCount(II)I
    .locals 1
    .param p1, "strengthBin"    # I
    .param p2, "which"    # I

    #@0
    .prologue
    .line 4193
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    aget-object v0, v0, p1

    #@4
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getPhoneSignalStrengthTime(IJI)J
    .locals 2
    .param p1, "strengthBin"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    #@0
    .prologue
    .line 4182
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    aget-object v0, v0, p1

    #@4
    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public getPowerSaveModeEnabledCount(I)I
    .locals 1
    .param p1, "which"    # I

    #@0
    .prologue
    .line 4143
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getPowerSaveModeEnabledTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    #@0
    .prologue
    .line 4139
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getProcessStatsLocked(ILjava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .locals 2
    .param p1, "uid"    # I
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 8810
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@3
    move-result p1

    #@4
    .line 8811
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@7
    move-result-object v0

    #@8
    .line 8812
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method public getProcessWakeTime(IIJ)J
    .locals 7
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "realtime"    # J

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 2948
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@5
    move-result p1

    #@6
    .line 2949
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    #@8
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@e
    .line 2950
    .local v1, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    if-eqz v1, :cond_1

    #@10
    .line 2951
    iget-object v4, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    #@12
    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/os/BatteryStats$Uid$Pid;

    #@18
    .line 2952
    .local v0, "p":Landroid/os/BatteryStats$Uid$Pid;
    if-eqz v0, :cond_1

    #@1a
    .line 2953
    iget-wide v4, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    #@1c
    iget v6, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    #@1e
    if-lez v6, :cond_0

    #@20
    iget-wide v2, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    #@22
    sub-long v2, p3, v2

    #@24
    :cond_0
    add-long/2addr v2, v4

    #@25
    return-wide v2

    #@26
    .line 2956
    .end local v0    # "p":Landroid/os/BatteryStats$Uid$Pid;
    :cond_1
    return-wide v2
.end method

.method public getScreenBrightnessTime(IJI)J
    .locals 2
    .param p1, "brightnessBin"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    #@0
    .prologue
    .line 4130
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    aget-object v0, v0, p1

    #@4
    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public getScreenOnCount(I)I
    .locals 1
    .param p1, "which"    # I

    #@0
    .prologue
    .line 4125
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getScreenOnTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    #@0
    .prologue
    .line 4121
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getServiceStatsLocked(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .locals 2
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 8830
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@3
    move-result p1

    #@4
    .line 8831
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@7
    move-result-object v0

    #@8
    .line 8832
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getServiceStatsLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method public getStartClockTime()J
    .locals 8

    #@0
    .prologue
    .line 4320
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v2

    #@4
    .line 4321
    .local v2, "currentTime":J
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->ensureStartClockTime(J)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 4322
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@d
    move-result-wide v4

    #@e
    .line 4323
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@11
    move-result-wide v6

    #@12
    move-object v1, p0

    #@13
    .line 4322
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->recordCurrentTimeChangeLocked(JJJ)V

    #@16
    .line 4325
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartClockTime:J

    #@18
    return-wide v0
.end method

.method public getStartCount()I
    .locals 1

    #@0
    .prologue
    .line 7357
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    #@2
    return v0
.end method

.method public getStartPlatformVersion()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 4329
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartPlatformVersion:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUidStats()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<+",
            "Landroid/os/BatteryStats$Uid;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 4345
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method public getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .locals 2
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 8789
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@8
    .line 8790
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    if-nez v0, :cond_0

    #@a
    .line 8791
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@c
    .end local v0    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-direct {v0, p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;-><init>(Lcom/android/internal/os/BatteryStatsImpl;I)V

    #@f
    .line 8792
    .restart local v0    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@14
    .line 8794
    :cond_0
    return-object v0
.end method

.method public getWakeupReasonStats()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/internal/os/BatteryStatsImpl$Timer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method public getWakeupReasonTimerLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1774
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    #@8
    .line 1775
    .local v0, "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    if-nez v0, :cond_0

    #@a
    .line 1776
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    #@c
    .end local v0    # "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@e
    const/4 v2, 0x1

    #@f
    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Z)V

    #@12
    .line 1777
    .restart local v0    # "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    #@14
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 1779
    :cond_0
    return-object v0
.end method

.method public getWifiControllerActivity(II)J
    .locals 2
    .param p1, "type"    # I
    .param p2, "which"    # I

    #@0
    .prologue
    .line 4280
    if-ltz p1, :cond_0

    #@2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@4
    array-length v0, v0

    #@5
    if-ge p1, v0, :cond_0

    #@7
    .line 4281
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@9
    aget-object v0, v0, p1

    #@b
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    #@e
    move-result-wide v0

    #@f
    return-wide v0

    #@10
    .line 4283
    :cond_0
    const-wide/16 v0, 0x0

    #@12
    return-wide v0
.end method

.method public getWifiOnTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    #@0
    .prologue
    .line 4227
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getWifiSignalStrengthCount(II)I
    .locals 1
    .param p1, "strengthBin"    # I
    .param p2, "which"    # I

    #@0
    .prologue
    .line 4261
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    aget-object v0, v0, p1

    #@4
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getWifiSignalStrengthTime(IJI)J
    .locals 2
    .param p1, "strengthBin"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    #@0
    .prologue
    .line 4256
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    aget-object v0, v0, p1

    #@4
    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public getWifiStateCount(II)I
    .locals 1
    .param p1, "wifiState"    # I
    .param p2, "which"    # I

    #@0
    .prologue
    .line 4241
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    aget-object v0, v0, p1

    #@4
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getWifiStateTime(IJI)J
    .locals 2
    .param p1, "wifiState"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    #@0
    .prologue
    .line 4236
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    aget-object v0, v0, p1

    #@4
    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public getWifiSupplStateCount(II)I
    .locals 1
    .param p1, "state"    # I
    .param p2, "which"    # I

    #@0
    .prologue
    .line 4251
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    aget-object v0, v0, p1

    #@4
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getWifiSupplStateTime(IJI)J
    .locals 2
    .param p1, "state"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    #@0
    .prologue
    .line 4246
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    aget-object v0, v0, p1

    #@4
    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public hasBluetoothActivityReporting()Z
    .locals 1

    #@0
    .prologue
    .line 4265
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHasBluetoothEnergyReporting:Z

    #@2
    return v0
.end method

.method public hasWifiActivityReporting()Z
    .locals 1

    #@0
    .prologue
    .line 4276
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHasWifiEnergyReporting:Z

    #@2
    return v0
.end method

.method initDischarge()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 7383
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLowDischargeAmountSinceCharge:I

    #@3
    .line 7384
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHighDischargeAmountSinceCharge:I

    #@5
    .line 7385
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOn:I

    #@7
    .line 7386
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOnSinceCharge:I

    #@9
    .line 7387
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOff:I

    #@b
    .line 7388
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOffSinceCharge:I

    #@d
    .line 7389
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@f
    invoke-virtual {v0}, Landroid/os/BatteryStats$LevelStepTracker;->init()V

    #@12
    .line 7390
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@14
    invoke-virtual {v0}, Landroid/os/BatteryStats$LevelStepTracker;->init()V

    #@17
    .line 7382
    return-void
.end method

.method initTimes(JJ)V
    .locals 5
    .param p1, "uptime"    # J
    .param p3, "realtime"    # J

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 7373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@5
    move-result-wide v0

    #@6
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mStartClockTime:J

    #@8
    .line 7374
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@a
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->init(JJ)V

    #@d
    .line 7375
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@f
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->init(JJ)V

    #@12
    .line 7376
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtime:J

    #@14
    .line 7377
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUptime:J

    #@16
    .line 7378
    iput-wide p3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtimeStart:J

    #@18
    .line 7379
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUptimeStart:J

    #@1a
    .line 7372
    return-void
.end method

.method public isCharging()Z
    .locals 1

    #@0
    .prologue
    .line 7365
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCharging:Z

    #@2
    return v0
.end method

.method public isOnBattery()Z
    .locals 1

    #@0
    .prologue
    .line 7361
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    #@2
    return v0
.end method

.method public isScreenOn()Z
    .locals 2

    #@0
    .prologue
    .line 7369
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    #@2
    const/4 v1, 0x2

    #@3
    if-ne v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public mapUid(I)I
    .locals 3
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 2549
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIsolatedUids:Landroid/util/SparseIntArray;

    #@2
    const/4 v2, -0x1

    #@3
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    #@6
    move-result v0

    #@7
    .line 2550
    .local v0, "isolated":I
    if-lez v0, :cond_0

    #@9
    .end local v0    # "isolated":I
    :goto_0
    return v0

    #@a
    .restart local v0    # "isolated":I
    :cond_0
    move v0, p1

    #@b
    goto :goto_0
.end method

.method public noteActivityPausedLocked(I)V
    .locals 4
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 3650
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@3
    move-result p1

    #@4
    .line 3651
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@7
    move-result-object v0

    #@8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@b
    move-result-wide v2

    #@c
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteActivityPausedLocked(J)V

    #@f
    .line 3649
    return-void
.end method

.method public noteActivityResumedLocked(I)V
    .locals 4
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 3645
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@3
    move-result p1

    #@4
    .line 3646
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@7
    move-result-object v0

    #@8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@b
    move-result-wide v2

    #@c
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteActivityResumedLocked(J)V

    #@f
    .line 3644
    return-void
.end method

.method public noteAlarmFinishLocked(Ljava/lang/String;I)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    const/16 v6, 0x400d

    #@2
    .line 2695
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordAllHistory:Z

    #@4
    if-nez v0, :cond_0

    #@6
    .line 2696
    return-void

    #@7
    .line 2698
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@a
    move-result p2

    #@b
    .line 2699
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@e
    move-result-wide v2

    #@f
    .line 2700
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@12
    move-result-wide v4

    #@13
    .line 2701
    .local v4, "uptime":J
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    #@15
    const/4 v1, 0x0

    #@16
    invoke-virtual {v0, v6, p1, p2, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    #@19
    move-result v0

    #@1a
    if-nez v0, :cond_1

    #@1c
    .line 2702
    return-void

    #@1d
    :cond_1
    move-object v1, p0

    #@1e
    move-object v7, p1

    #@1f
    move v8, p2

    #@20
    .line 2704
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    #@23
    .line 2694
    return-void
.end method

.method public noteAlarmStartLocked(Ljava/lang/String;I)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    const v6, 0x800d

    #@3
    .line 2682
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordAllHistory:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 2683
    return-void

    #@8
    .line 2685
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@b
    move-result p2

    #@c
    .line 2686
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@f
    move-result-wide v2

    #@10
    .line 2687
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@13
    move-result-wide v4

    #@14
    .line 2688
    .local v4, "uptime":J
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    #@16
    const/4 v1, 0x0

    #@17
    invoke-virtual {v0, v6, p1, p2, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    #@1a
    move-result v0

    #@1b
    if-nez v0, :cond_1

    #@1d
    .line 2689
    return-void

    #@1e
    :cond_1
    move-object v1, p0

    #@1f
    move-object v7, p1

    #@20
    move v8, p2

    #@21
    .line 2691
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    #@24
    .line 2681
    return-void
.end method

.method public noteAudioOffLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 3562
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    #@2
    if-nez v4, :cond_0

    #@4
    .line 3563
    return-void

    #@5
    .line 3565
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@8
    move-result p1

    #@9
    .line 3566
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@c
    move-result-wide v0

    #@d
    .line 3567
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@10
    move-result-wide v2

    #@11
    .line 3568
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    #@13
    add-int/lit8 v4, v4, -0x1

    #@15
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    #@17
    if-nez v4, :cond_1

    #@19
    .line 3569
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@1b
    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@1d
    const v6, -0x400001

    #@20
    and-int/2addr v5, v6

    #@21
    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@23
    .line 3572
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    #@26
    .line 3573
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@28
    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@2b
    .line 3575
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteAudioTurnedOffLocked(J)V

    #@32
    .line 3561
    return-void
.end method

.method public noteAudioOnLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 3547
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@3
    move-result p1

    #@4
    .line 3548
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@7
    move-result-wide v0

    #@8
    .line 3549
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@b
    move-result-wide v2

    #@c
    .line 3550
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    #@e
    if-nez v4, :cond_0

    #@10
    .line 3551
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@12
    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@14
    const/high16 v6, 0x400000

    #@16
    or-int/2addr v5, v6

    #@17
    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@19
    .line 3554
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    #@1c
    .line 3555
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1e
    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@21
    .line 3557
    :cond_0
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    #@23
    add-int/lit8 v4, v4, 0x1

    #@25
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    #@27
    .line 3558
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteAudioTurnedOnLocked(J)V

    #@2e
    .line 3546
    return-void
.end method

.method public noteCameraOffLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 3710
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnNesting:I

    #@2
    if-nez v4, :cond_0

    #@4
    .line 3711
    return-void

    #@5
    .line 3713
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@8
    move-result p1

    #@9
    .line 3714
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@c
    move-result-wide v0

    #@d
    .line 3715
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@10
    move-result-wide v2

    #@11
    .line 3716
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnNesting:I

    #@13
    add-int/lit8 v4, v4, -0x1

    #@15
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnNesting:I

    #@17
    if-nez v4, :cond_1

    #@19
    .line 3717
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@1b
    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@1d
    const v6, -0x400001

    #@20
    and-int/2addr v5, v6

    #@21
    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@23
    .line 3720
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    #@26
    .line 3721
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@28
    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@2b
    .line 3723
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteCameraTurnedOffLocked(J)V

    #@32
    .line 3709
    return-void
.end method

.method public noteCameraOnLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 3696
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@3
    move-result p1

    #@4
    .line 3697
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@7
    move-result-wide v0

    #@8
    .line 3698
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@b
    move-result-wide v2

    #@c
    .line 3699
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnNesting:I

    #@e
    add-int/lit8 v5, v4, 0x1

    #@10
    iput v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnNesting:I

    #@12
    if-nez v4, :cond_0

    #@14
    .line 3700
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@16
    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@18
    const/high16 v6, 0x400000

    #@1a
    or-int/2addr v5, v6

    #@1b
    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@1d
    .line 3703
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    #@20
    .line 3704
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@22
    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@25
    .line 3706
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteCameraTurnedOnLocked(J)V

    #@2c
    .line 3695
    return-void
.end method

.method public noteChangeWakelockFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 16
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
    .line 2867
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v10

    #@4
    .line 2868
    .local v10, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@7
    move-result-wide v12

    #@8
    .line 2872
    .local v12, "uptime":J
    invoke-virtual/range {p6 .. p6}, Landroid/os/WorkSource;->size()I

    #@b
    move-result v2

    #@c
    .line 2873
    .local v2, "NN":I
    const/4 v15, 0x0

    #@d
    .local v15, "i":I
    :goto_0
    if-ge v15, v2, :cond_0

    #@f
    .line 2874
    move-object/from16 v0, p6

    #@11
    invoke-virtual {v0, v15}, Landroid/os/WorkSource;->get(I)I

    #@14
    move-result v4

    #@15
    move-object/from16 v3, p0

    #@17
    move/from16 v5, p7

    #@19
    move-object/from16 v6, p8

    #@1b
    move-object/from16 v7, p9

    #@1d
    move/from16 v8, p10

    #@1f
    move/from16 v9, p11

    #@21
    invoke-virtual/range {v3 .. v13}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartWakeLocked(IILjava/lang/String;Ljava/lang/String;IZJJ)V

    #@24
    .line 2873
    add-int/lit8 v15, v15, 0x1

    #@26
    goto :goto_0

    #@27
    .line 2877
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/WorkSource;->size()I

    #@2a
    move-result v14

    #@2b
    .line 2878
    .local v14, "NO":I
    const/4 v15, 0x0

    #@2c
    :goto_1
    if-ge v15, v14, :cond_1

    #@2e
    .line 2879
    move-object/from16 v0, p1

    #@30
    invoke-virtual {v0, v15}, Landroid/os/WorkSource;->get(I)I

    #@33
    move-result v5

    #@34
    move-object/from16 v4, p0

    #@36
    move/from16 v6, p2

    #@38
    move-object/from16 v7, p3

    #@3a
    move-object/from16 v8, p4

    #@3c
    move/from16 v9, p5

    #@3e
    invoke-virtual/range {v4 .. v13}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopWakeLocked(IILjava/lang/String;Ljava/lang/String;IJJ)V

    #@41
    .line 2878
    add-int/lit8 v15, v15, 0x1

    #@43
    goto :goto_1

    #@44
    .line 2866
    :cond_1
    return-void
.end method

.method public noteConnectivityChangedLocked(ILjava/lang/String;)V
    .locals 9
    .param p1, "type"    # I
    .param p2, "extra"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3156
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v2

    #@4
    .line 3157
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@7
    move-result-wide v4

    #@8
    .line 3158
    .local v4, "uptime":J
    const/16 v6, 0x9

    #@a
    move-object v1, p0

    #@b
    move-object v7, p2

    #@c
    move v8, p1

    #@d
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    #@10
    .line 3160
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumConnectivityChange:I

    #@12
    add-int/lit8 v0, v0, 0x1

    #@14
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNumConnectivityChange:I

    #@16
    .line 3155
    return-void
.end method

.method public noteCurrentTimeChangedLocked()V
    .locals 8

    #@0
    .prologue
    .line 2576
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v2

    #@4
    .line 2577
    .local v2, "currentTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@7
    move-result-wide v4

    #@8
    .line 2578
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@b
    move-result-wide v6

    #@c
    .local v6, "uptime":J
    move-object v1, p0

    #@d
    .line 2579
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->recordCurrentTimeChangeLocked(JJJ)V

    #@10
    .line 2580
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->ensureStartClockTime(J)Z

    #@13
    .line 2575
    return-void
.end method

.method public noteDeviceIdleModeLocked(ZLjava/lang/String;I)V
    .locals 10
    .param p1, "enabled"    # Z
    .param p2, "activeReason"    # Ljava/lang/String;
    .param p3, "activeUid"    # I

    #@0
    .prologue
    .line 3226
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v2

    #@4
    .line 3227
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@7
    move-result-wide v4

    #@8
    .line 3228
    .local v4, "uptime":J
    move v0, p1

    #@9
    .line 3229
    .local v0, "nowIdling":Z
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdling:Z

    #@b
    if-eqz v1, :cond_0

    #@d
    if-eqz p1, :cond_3

    #@f
    .line 3234
    .end local v0    # "nowIdling":Z
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdling:Z

    #@11
    if-eq v1, v0, :cond_1

    #@13
    .line 3235
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdling:Z

    #@15
    .line 3236
    if-eqz v0, :cond_4

    #@17
    const/16 v9, 0x8

    #@19
    .line 3237
    .local v9, "stepState":I
    :goto_1
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    #@1b
    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    #@1d
    and-int/lit8 v6, v6, 0x8

    #@1f
    xor-int/2addr v6, v9

    #@20
    or-int/2addr v1, v6

    #@21
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    #@23
    .line 3238
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    #@25
    and-int/lit8 v1, v1, -0x9

    #@27
    or-int/2addr v1, v9

    #@28
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    #@2a
    .line 3239
    if-eqz p1, :cond_5

    #@2c
    .line 3240
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2e
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@31
    .line 3245
    .end local v9    # "stepState":I
    :cond_1
    :goto_2
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeEnabled:Z

    #@33
    if-eq v1, p1, :cond_2

    #@35
    .line 3246
    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeEnabled:Z

    #@37
    .line 3248
    if-eqz p2, :cond_6

    #@39
    move-object v7, p2

    #@3a
    .line 3247
    :goto_3
    const/16 v6, 0xa

    #@3c
    move-object v1, p0

    #@3d
    move v8, p3

    #@3e
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    #@41
    .line 3249
    if-eqz p1, :cond_7

    #@43
    .line 3250
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@45
    iget v6, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@47
    const/high16 v7, 0x4000000

    #@49
    or-int/2addr v6, v7

    #@4a
    iput v6, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@4c
    .line 3253
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@4e
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@51
    .line 3260
    :goto_4
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    #@54
    .line 3225
    :cond_2
    return-void

    #@55
    .line 3229
    .restart local v0    # "nowIdling":Z
    :cond_3
    if-nez p2, :cond_0

    #@57
    .line 3232
    const/4 v0, 0x1

    #@58
    .local v0, "nowIdling":Z
    goto :goto_0

    #@59
    .line 3236
    .end local v0    # "nowIdling":Z
    :cond_4
    const/4 v9, 0x0

    #@5a
    .restart local v9    # "stepState":I
    goto :goto_1

    #@5b
    .line 3242
    :cond_5
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@5d
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@60
    goto :goto_2

    #@61
    .line 3248
    .end local v9    # "stepState":I
    :cond_6
    const-string/jumbo v7, ""

    #@64
    goto :goto_3

    #@65
    .line 3255
    :cond_7
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@67
    iget v6, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@69
    const v7, -0x4000001

    #@6c
    and-int/2addr v6, v7

    #@6d
    iput v6, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@6f
    .line 3258
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@71
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@74
    goto :goto_4
.end method

.method public noteEventLocked(ILjava/lang/String;I)V
    .locals 9
    .param p1, "code"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uid"    # I

    #@0
    .prologue
    .line 2554
    invoke-virtual {p0, p3}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@3
    move-result p3

    #@4
    .line 2555
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    #@6
    const/4 v1, 0x0

    #@7
    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    .line 2556
    return-void

    #@e
    .line 2558
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@11
    move-result-wide v2

    #@12
    .line 2559
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@15
    move-result-wide v4

    #@16
    .local v4, "uptime":J
    move-object v1, p0

    #@17
    move v6, p1

    #@18
    move-object v7, p2

    #@19
    move v8, p3

    #@1a
    .line 2560
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    #@1d
    .line 2553
    return-void
.end method

.method public noteFlashlightOffLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 3679
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnNesting:I

    #@2
    if-nez v4, :cond_0

    #@4
    .line 3680
    return-void

    #@5
    .line 3682
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@8
    move-result p1

    #@9
    .line 3683
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@c
    move-result-wide v0

    #@d
    .line 3684
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@10
    move-result-wide v2

    #@11
    .line 3685
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnNesting:I

    #@13
    add-int/lit8 v4, v4, -0x1

    #@15
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnNesting:I

    #@17
    if-nez v4, :cond_1

    #@19
    .line 3686
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@1b
    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@1d
    const v6, -0x8000001

    #@20
    and-int/2addr v5, v6

    #@21
    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@23
    .line 3689
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    #@26
    .line 3690
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@28
    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@2b
    .line 3692
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteFlashlightTurnedOffLocked(J)V

    #@32
    .line 3678
    return-void
.end method

.method public noteFlashlightOnLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 3665
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@3
    move-result p1

    #@4
    .line 3666
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@7
    move-result-wide v0

    #@8
    .line 3667
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@b
    move-result-wide v2

    #@c
    .line 3668
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnNesting:I

    #@e
    add-int/lit8 v5, v4, 0x1

    #@10
    iput v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnNesting:I

    #@12
    if-nez v4, :cond_0

    #@14
    .line 3669
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@16
    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@18
    const/high16 v6, 0x8000000

    #@1a
    or-int/2addr v5, v6

    #@1b
    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@1d
    .line 3672
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    #@20
    .line 3673
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@22
    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@25
    .line 3675
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteFlashlightTurnedOnLocked(J)V

    #@2c
    .line 3664
    return-void
.end method

.method public noteFullWifiLockAcquiredFromSourceLocked(Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "ws"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 4013
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    #@3
    move-result v0

    #@4
    .line 4014
    .local v0, "N":I
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@7
    .line 4015
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    #@a
    move-result v2

    #@b
    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockAcquiredLocked(I)V

    #@e
    .line 4014
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 4012
    :cond_0
    return-void
.end method

.method public noteFullWifiLockAcquiredLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 3913
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@3
    move-result p1

    #@4
    .line 3914
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@7
    move-result-wide v0

    #@8
    .line 3915
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@b
    move-result-wide v2

    #@c
    .line 3916
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    #@e
    if-nez v4, :cond_0

    #@10
    .line 3917
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@12
    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@14
    const/high16 v6, 0x10000000

    #@16
    or-int/2addr v5, v6

    #@17
    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@19
    .line 3920
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    #@1c
    .line 3922
    :cond_0
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    #@1e
    add-int/lit8 v4, v4, 0x1

    #@20
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    #@22
    .line 3923
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteFullWifiLockAcquiredLocked(J)V

    #@29
    .line 3912
    return-void
.end method

.method public noteFullWifiLockReleasedFromSourceLocked(Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "ws"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 4020
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    #@3
    move-result v0

    #@4
    .line 4021
    .local v0, "N":I
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@7
    .line 4022
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    #@a
    move-result v2

    #@b
    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockReleasedLocked(I)V

    #@e
    .line 4021
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 4019
    :cond_0
    return-void
.end method

.method public noteFullWifiLockReleasedLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 3927
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@3
    move-result p1

    #@4
    .line 3928
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@7
    move-result-wide v0

    #@8
    .line 3929
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@b
    move-result-wide v2

    #@c
    .line 3930
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    #@e
    add-int/lit8 v4, v4, -0x1

    #@10
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    #@12
    .line 3931
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiFullLockNesting:I

    #@14
    if-nez v4, :cond_0

    #@16
    .line 3932
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@18
    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@1a
    const v6, -0x10000001

    #@1d
    and-int/2addr v5, v6

    #@1e
    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@20
    .line 3935
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    #@23
    .line 3937
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteFullWifiLockReleasedLocked(J)V

    #@2a
    .line 3926
    return-void
.end method

.method public noteInteractiveLocked(Z)V
    .locals 3
    .param p1, "interactive"    # Z

    #@0
    .prologue
    .line 3143
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractive:Z

    #@2
    if-eq v2, p1, :cond_0

    #@4
    .line 3144
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@7
    move-result-wide v0

    #@8
    .line 3145
    .local v0, "elapsedRealtime":J
    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractive:Z

    #@a
    .line 3147
    if-eqz p1, :cond_1

    #@c
    .line 3148
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@e
    invoke-virtual {v2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@11
    .line 3142
    .end local v0    # "elapsedRealtime":J
    :cond_0
    :goto_0
    return-void

    #@12
    .line 3150
    .restart local v0    # "elapsedRealtime":J
    :cond_1
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@14
    invoke-virtual {v2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@17
    goto :goto_0
.end method

.method public noteJobFinishLocked(Ljava/lang/String;I)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    const/16 v6, 0x4006

    #@2
    .line 2671
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@5
    move-result p2

    #@6
    .line 2672
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@9
    move-result-wide v2

    #@a
    .line 2673
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@d
    move-result-wide v4

    #@e
    .line 2674
    .local v4, "uptime":J
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0, p1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStopJobLocked(Ljava/lang/String;J)V

    #@15
    .line 2675
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    #@17
    const/4 v1, 0x0

    #@18
    invoke-virtual {v0, v6, p1, p2, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    #@1b
    move-result v0

    #@1c
    if-nez v0, :cond_0

    #@1e
    .line 2676
    return-void

    #@1f
    :cond_0
    move-object v1, p0

    #@20
    move-object v7, p1

    #@21
    move v8, p2

    #@22
    .line 2678
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    #@25
    .line 2670
    return-void
.end method

.method public noteJobStartLocked(Ljava/lang/String;I)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    const v6, 0x8006

    #@3
    .line 2660
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@6
    move-result p2

    #@7
    .line 2661
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@a
    move-result-wide v2

    #@b
    .line 2662
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@e
    move-result-wide v4

    #@f
    .line 2663
    .local v4, "uptime":J
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0, p1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStartJobLocked(Ljava/lang/String;J)V

    #@16
    .line 2664
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    #@18
    const/4 v1, 0x0

    #@19
    invoke-virtual {v0, v6, p1, p2, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    #@1c
    move-result v0

    #@1d
    if-nez v0, :cond_0

    #@1f
    .line 2665
    return-void

    #@20
    :cond_0
    move-object v1, p0

    #@21
    move-object v7, p1

    #@22
    move v8, p2

    #@23
    .line 2667
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    #@26
    .line 2659
    return-void
.end method

.method public noteMobileRadioPowerState(IJ)V
    .locals 12
    .param p1, "powerState"    # I
    .param p2, "timestampNs"    # J

    #@0
    .prologue
    .line 3164
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v2

    #@4
    .line 3165
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@7
    move-result-wide v8

    #@8
    .line 3166
    .local v8, "uptime":J
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioPowerState:I

    #@a
    if-eq v1, p1, :cond_0

    #@c
    .line 3169
    sget v1, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_MEDIUM:I

    #@e
    if-eq p1, v1, :cond_1

    #@10
    .line 3170
    sget v1, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_HIGH:I

    #@12
    if-ne p1, v1, :cond_2

    #@14
    const/4 v0, 0x1

    #@15
    .line 3171
    .local v0, "active":Z
    :goto_0
    if-eqz v0, :cond_3

    #@17
    .line 3172
    move-wide v6, v2

    #@18
    .local v6, "realElapsedRealtimeMs":J
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveStartTime:J

    #@1a
    .line 3173
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@1c
    iget v10, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@1e
    const/high16 v11, 0x2000000

    #@20
    or-int/2addr v10, v11

    #@21
    iput v10, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@23
    .line 3189
    :goto_1
    invoke-virtual {p0, v2, v3, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    #@26
    .line 3190
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioPowerState:I

    #@28
    .line 3191
    if-eqz v0, :cond_6

    #@2a
    .line 3192
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2c
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@2f
    .line 3193
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@31
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@34
    .line 3163
    .end local v0    # "active":Z
    .end local v6    # "realElapsedRealtimeMs":J
    :cond_0
    :goto_2
    return-void

    #@35
    .line 3169
    :cond_1
    const/4 v0, 0x1

    #@36
    .restart local v0    # "active":Z
    goto :goto_0

    #@37
    .line 3170
    .end local v0    # "active":Z
    :cond_2
    const/4 v0, 0x0

    #@38
    .restart local v0    # "active":Z
    goto :goto_0

    #@39
    .line 3175
    :cond_3
    const-wide/32 v10, 0xf4240

    #@3c
    div-long v6, p2, v10

    #@3e
    .line 3176
    .restart local v6    # "realElapsedRealtimeMs":J
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveStartTime:J

    #@40
    .line 3177
    .local v4, "lastUpdateTimeMs":J
    cmp-long v1, v6, v4

    #@42
    if-gez v1, :cond_5

    #@44
    .line 3178
    const-string/jumbo v1, "BatteryStatsImpl"

    #@47
    new-instance v10, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v11, "Data connection inactive timestamp "

    #@4f
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v10

    #@53
    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@56
    move-result-object v10

    #@57
    .line 3179
    const-string/jumbo v11, " is before start time "

    #@5a
    .line 3178
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v10

    #@5e
    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@61
    move-result-object v10

    #@62
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v10

    #@66
    invoke-static {v1, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@69
    .line 3180
    move-wide v6, v2

    #@6a
    .line 3185
    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@6c
    iget v10, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@6e
    const v11, -0x2000001

    #@71
    and-int/2addr v10, v11

    #@72
    iput v10, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@74
    goto :goto_1

    #@75
    .line 3181
    :cond_5
    cmp-long v1, v6, v2

    #@77
    if-gez v1, :cond_4

    #@79
    .line 3182
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@7b
    sub-long v10, v2, v6

    #@7d
    invoke-virtual {v1, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    #@80
    goto :goto_3

    #@81
    .line 3195
    .end local v4    # "lastUpdateTimeMs":J
    :cond_6
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@83
    invoke-virtual {v1, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@86
    .line 3196
    invoke-virtual {p0, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->updateMobileRadioStateLocked(J)V

    #@89
    .line 3197
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@8b
    invoke-virtual {v1, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@8e
    goto :goto_2
.end method

.method public noteNetworkInterfaceTypeLocked(Ljava/lang/String;I)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "networkType"    # I

    #@0
    .prologue
    .line 4094
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    return-void

    #@7
    .line 4095
    :cond_0
    invoke-static {p2}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 4096
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileIfaces:[Ljava/lang/String;

    #@f
    invoke-static {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->includeInStringArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileIfaces:[Ljava/lang/String;

    #@15
    .line 4102
    :goto_0
    invoke-static {p2}, Landroid/net/ConnectivityManager;->isNetworkTypeWifi(I)Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_2

    #@1b
    .line 4103
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiIfaces:[Ljava/lang/String;

    #@1d
    invoke-static {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->includeInStringArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiIfaces:[Ljava/lang/String;

    #@23
    .line 4093
    :goto_1
    return-void

    #@24
    .line 4099
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileIfaces:[Ljava/lang/String;

    #@26
    invoke-static {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->excludeFromStringArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileIfaces:[Ljava/lang/String;

    #@2c
    goto :goto_0

    #@2d
    .line 4106
    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiIfaces:[Ljava/lang/String;

    #@2f
    invoke-static {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->excludeFromStringArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiIfaces:[Ljava/lang/String;

    #@35
    goto :goto_1
.end method

.method public noteNetworkStatsEnabledLocked()V
    .locals 3

    #@0
    .prologue
    .line 4115
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v0

    #@4
    .line 4116
    .local v0, "elapsedRealtimeMs":J
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->updateMobileRadioStateLocked(J)V

    #@7
    .line 4117
    const/4 v2, 0x0

    #@8
    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->updateWifiStateLocked(Landroid/net/wifi/WifiActivityEnergyInfo;)V

    #@b
    .line 4111
    return-void
.end method

.method public notePackageInstalledLocked(Ljava/lang/String;I)V
    .locals 9
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "versionCode"    # I

    #@0
    .prologue
    .line 3265
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v2

    #@4
    .line 3266
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@7
    move-result-wide v4

    #@8
    .line 3267
    .local v4, "uptime":J
    const/16 v6, 0xb

    #@a
    move-object v1, p0

    #@b
    move-object v7, p1

    #@c
    move v8, p2

    #@d
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    #@10
    .line 3269
    new-instance v0, Landroid/os/BatteryStats$PackageChange;

    #@12
    invoke-direct {v0}, Landroid/os/BatteryStats$PackageChange;-><init>()V

    #@15
    .line 3270
    .local v0, "pc":Landroid/os/BatteryStats$PackageChange;
    iput-object p1, v0, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    #@17
    .line 3271
    const/4 v1, 0x1

    #@18
    iput-boolean v1, v0, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    #@1a
    .line 3272
    iput p2, v0, Landroid/os/BatteryStats$PackageChange;->mVersionCode:I

    #@1c
    .line 3273
    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl;->addPackageChange(Landroid/os/BatteryStats$PackageChange;)V

    #@1f
    .line 3264
    return-void
.end method

.method public notePackageUninstalledLocked(Ljava/lang/String;)V
    .locals 9
    .param p1, "pkgName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3277
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v2

    #@4
    .line 3278
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@7
    move-result-wide v4

    #@8
    .line 3279
    .local v4, "uptime":J
    const/16 v6, 0xc

    #@a
    .line 3280
    const/4 v8, 0x0

    #@b
    move-object v1, p0

    #@c
    move-object v7, p1

    #@d
    .line 3279
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    #@10
    .line 3281
    new-instance v0, Landroid/os/BatteryStats$PackageChange;

    #@12
    invoke-direct {v0}, Landroid/os/BatteryStats$PackageChange;-><init>()V

    #@15
    .line 3282
    .local v0, "pc":Landroid/os/BatteryStats$PackageChange;
    iput-object p1, v0, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    #@17
    .line 3283
    const/4 v1, 0x1

    #@18
    iput-boolean v1, v0, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    #@1a
    .line 3284
    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl;->addPackageChange(Landroid/os/BatteryStats$PackageChange;)V

    #@1d
    .line 3276
    return-void
.end method

.method public notePhoneDataConnectionStateLocked(IZ)V
    .locals 8
    .param p1, "dataType"    # I
    .param p2, "hasData"    # Z

    #@0
    .prologue
    .line 3447
    const/4 v0, 0x0

    #@1
    .line 3448
    .local v0, "bin":I
    if-eqz p2, :cond_0

    #@3
    .line 3449
    packed-switch p1, :pswitch_data_0

    #@6
    .line 3496
    const/16 v0, 0x10

    #@8
    .line 3501
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionType:I

    #@a
    if-eq v1, v0, :cond_2

    #@c
    .line 3502
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@f
    move-result-wide v2

    #@10
    .line 3503
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@13
    move-result-wide v4

    #@14
    .line 3504
    .local v4, "uptime":J
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@16
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@18
    iget v6, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@1a
    and-int/lit16 v6, v6, -0x3e01

    #@1c
    .line 3505
    shl-int/lit8 v7, v0, 0x9

    #@1e
    .line 3504
    or-int/2addr v6, v7

    #@1f
    iput v6, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@21
    .line 3508
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    #@24
    .line 3509
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionType:I

    #@26
    if-ltz v1, :cond_1

    #@28
    .line 3510
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2a
    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionType:I

    #@2c
    aget-object v1, v1, v6

    #@2e
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@31
    .line 3513
    :cond_1
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionType:I

    #@33
    .line 3514
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@35
    aget-object v1, v1, v0

    #@37
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@3a
    .line 3446
    .end local v2    # "elapsedRealtime":J
    .end local v4    # "uptime":J
    :cond_2
    return-void

    #@3b
    .line 3451
    :pswitch_0
    const/4 v0, 0x2

    #@3c
    .line 3452
    goto :goto_0

    #@3d
    .line 3454
    :pswitch_1
    const/4 v0, 0x1

    #@3e
    .line 3455
    goto :goto_0

    #@3f
    .line 3457
    :pswitch_2
    const/4 v0, 0x3

    #@40
    .line 3458
    goto :goto_0

    #@41
    .line 3460
    :pswitch_3
    const/4 v0, 0x4

    #@42
    .line 3461
    goto :goto_0

    #@43
    .line 3463
    :pswitch_4
    const/4 v0, 0x5

    #@44
    .line 3464
    goto :goto_0

    #@45
    .line 3466
    :pswitch_5
    const/4 v0, 0x6

    #@46
    .line 3467
    goto :goto_0

    #@47
    .line 3469
    :pswitch_6
    const/4 v0, 0x7

    #@48
    .line 3470
    goto :goto_0

    #@49
    .line 3472
    :pswitch_7
    const/16 v0, 0x8

    #@4b
    .line 3473
    goto :goto_0

    #@4c
    .line 3475
    :pswitch_8
    const/16 v0, 0x9

    #@4e
    .line 3476
    goto :goto_0

    #@4f
    .line 3478
    :pswitch_9
    const/16 v0, 0xa

    #@51
    .line 3479
    goto :goto_0

    #@52
    .line 3481
    :pswitch_a
    const/16 v0, 0xb

    #@54
    .line 3482
    goto :goto_0

    #@55
    .line 3484
    :pswitch_b
    const/16 v0, 0xc

    #@57
    .line 3485
    goto :goto_0

    #@58
    .line 3487
    :pswitch_c
    const/16 v0, 0xd

    #@5a
    .line 3488
    goto :goto_0

    #@5b
    .line 3490
    :pswitch_d
    const/16 v0, 0xe

    #@5d
    .line 3491
    goto :goto_0

    #@5e
    .line 3493
    :pswitch_e
    const/16 v0, 0xf

    #@60
    .line 3494
    goto :goto_0

    #@61
    .line 3449
    nop

    #@62
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public notePhoneOffLocked()V
    .locals 7

    #@0
    .prologue
    .line 3308
    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOn:Z

    #@2
    if-eqz v4, :cond_0

    #@4
    .line 3309
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@7
    move-result-wide v0

    #@8
    .line 3310
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@b
    move-result-wide v2

    #@c
    .line 3311
    .local v2, "uptime":J
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@e
    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@10
    const v6, -0x1000001

    #@13
    and-int/2addr v5, v6

    #@14
    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@16
    .line 3314
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    #@19
    .line 3315
    const/4 v4, 0x0

    #@1a
    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOn:Z

    #@1c
    .line 3316
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1e
    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@21
    .line 3307
    .end local v0    # "elapsedRealtime":J
    .end local v2    # "uptime":J
    :cond_0
    return-void
.end method

.method public notePhoneOnLocked()V
    .locals 7

    #@0
    .prologue
    .line 3295
    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOn:Z

    #@2
    if-nez v4, :cond_0

    #@4
    .line 3296
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@7
    move-result-wide v0

    #@8
    .line 3297
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@b
    move-result-wide v2

    #@c
    .line 3298
    .local v2, "uptime":J
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@e
    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@10
    const/high16 v6, 0x1000000

    #@12
    or-int/2addr v5, v6

    #@13
    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@15
    .line 3301
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    #@18
    .line 3302
    const/4 v4, 0x1

    #@19
    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOn:Z

    #@1b
    .line 3303
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1d
    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@20
    .line 3294
    .end local v0    # "elapsedRealtime":J
    .end local v2    # "uptime":J
    :cond_0
    return-void
.end method

.method public notePhoneSignalStrengthLocked(Landroid/telephony/SignalStrength;)V
    .locals 3
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    #@0
    .prologue
    .line 3442
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    #@3
    move-result v0

    #@4
    .line 3443
    .local v0, "bin":I
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneServiceStateRaw:I

    #@6
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSimStateRaw:I

    #@8
    invoke-direct {p0, v1, v2, v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateAllPhoneStateLocked(III)V

    #@b
    .line 3440
    return-void
.end method

.method public notePhoneStateLocked(II)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "simState"    # I

    #@0
    .prologue
    .line 3437
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthBinRaw:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateAllPhoneStateLocked(III)V

    #@5
    .line 3436
    return-void
.end method

.method public notePowerSaveMode(Z)V
    .locals 8
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 3203
    iget-boolean v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerSaveModeEnabled:Z

    #@2
    if-eq v3, p1, :cond_0

    #@4
    .line 3204
    if-eqz p1, :cond_1

    #@6
    const/4 v2, 0x4

    #@7
    .line 3205
    .local v2, "stepState":I
    :goto_0
    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    #@9
    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    #@b
    and-int/lit8 v6, v6, 0x4

    #@d
    xor-int/2addr v6, v2

    #@e
    or-int/2addr v3, v6

    #@f
    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    #@11
    .line 3206
    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    #@13
    and-int/lit8 v3, v3, -0x5

    #@15
    or-int/2addr v3, v2

    #@16
    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    #@18
    .line 3207
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@1b
    move-result-wide v0

    #@1c
    .line 3208
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@1f
    move-result-wide v4

    #@20
    .line 3209
    .local v4, "uptime":J
    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerSaveModeEnabled:Z

    #@22
    .line 3210
    if-eqz p1, :cond_2

    #@24
    .line 3211
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@26
    iget v6, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@28
    const/high16 v7, -0x80000000

    #@2a
    or-int/2addr v6, v7

    #@2b
    iput v6, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@2d
    .line 3214
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2f
    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@32
    .line 3221
    :goto_1
    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    #@35
    .line 3202
    .end local v0    # "elapsedRealtime":J
    .end local v2    # "stepState":I
    .end local v4    # "uptime":J
    :cond_0
    return-void

    #@36
    .line 3204
    :cond_1
    const/4 v2, 0x0

    #@37
    .restart local v2    # "stepState":I
    goto :goto_0

    #@38
    .line 3216
    .restart local v0    # "elapsedRealtime":J
    .restart local v4    # "uptime":J
    :cond_2
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@3a
    iget v6, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@3c
    const v7, 0x7fffffff

    #@3f
    and-int/2addr v6, v7

    #@40
    iput v6, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@42
    .line 3219
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@44
    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@47
    goto :goto_1
.end method

.method public noteProcessAnrLocked(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 2609
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@3
    move-result p2

    #@4
    .line 2610
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 2611
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@d
    move-result-object v0

    #@e
    .line 2612
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->incNumAnrsLocked()V

    #@15
    .line 2608
    .end local v0    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_0
    return-void
.end method

.method public noteProcessCrashLocked(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 2601
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@3
    move-result p2

    #@4
    .line 2602
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 2603
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@d
    move-result-object v0

    #@e
    .line 2604
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->incNumCrashesLocked()V

    #@15
    .line 2600
    .end local v0    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_0
    return-void
.end method

.method public noteProcessDiedLocked(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    #@0
    .prologue
    .line 2940
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@3
    move-result p1

    #@4
    .line 2941
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    #@6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@c
    .line 2942
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    if-eqz v0, :cond_0

    #@e
    .line 2943
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    #@10
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    #@13
    .line 2939
    :cond_0
    return-void
.end method

.method public noteProcessFinishLocked(Ljava/lang/String;I)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    const/16 v6, 0x4001

    #@2
    .line 2623
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@5
    move-result p2

    #@6
    .line 2624
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    #@8
    const/4 v1, 0x0

    #@9
    invoke-virtual {v0, v6, p1, p2, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_0

    #@f
    .line 2625
    return-void

    #@10
    .line 2627
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@13
    move-result-wide v2

    #@14
    .line 2628
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@17
    move-result-wide v4

    #@18
    .line 2629
    .local v4, "uptime":J
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@1b
    move-result-object v0

    #@1c
    const/4 v1, 0x3

    #@1d
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->updateProcessStateLocked(Ljava/lang/String;IJ)V

    #@20
    .line 2631
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordAllHistory:Z

    #@22
    if-nez v0, :cond_1

    #@24
    .line 2632
    return-void

    #@25
    :cond_1
    move-object v1, p0

    #@26
    move-object v7, p1

    #@27
    move v8, p2

    #@28
    .line 2634
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    #@2b
    .line 2622
    return-void
.end method

.method public noteProcessStartLocked(Ljava/lang/String;I)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    const v6, 0x8001

    #@3
    .line 2584
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@6
    move-result p2

    #@7
    .line 2585
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 2586
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@10
    move-result-object v0

    #@11
    .line 2587
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->incStartsLocked()V

    #@18
    .line 2589
    .end local v0    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    #@1a
    const/4 v7, 0x0

    #@1b
    invoke-virtual {v1, v6, p1, p2, v7}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    #@1e
    move-result v1

    #@1f
    if-nez v1, :cond_1

    #@21
    .line 2590
    return-void

    #@22
    .line 2592
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordAllHistory:Z

    #@24
    if-nez v1, :cond_2

    #@26
    .line 2593
    return-void

    #@27
    .line 2595
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@2a
    move-result-wide v2

    #@2b
    .line 2596
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@2e
    move-result-wide v4

    #@2f
    .local v4, "uptime":J
    move-object v1, p0

    #@30
    move-object v7, p1

    #@31
    move v8, p2

    #@32
    .line 2597
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    #@35
    .line 2583
    return-void
.end method

.method public noteProcessStateLocked(Ljava/lang/String;II)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "state"    # I

    #@0
    .prologue
    .line 2617
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@3
    move-result p2

    #@4
    .line 2618
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@7
    move-result-wide v0

    #@8
    .line 2619
    .local v0, "elapsedRealtime":J
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2, p1, p3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->updateProcessStateLocked(Ljava/lang/String;IJ)V

    #@f
    .line 2616
    return-void
.end method

.method public noteResetAudioLocked()V
    .locals 9

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 3611
    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    #@3
    if-lez v6, :cond_0

    #@5
    .line 3612
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@8
    move-result-wide v0

    #@9
    .line 3613
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@c
    move-result-wide v4

    #@d
    .line 3614
    .local v4, "uptime":J
    iput v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    #@f
    .line 3615
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@11
    iget v7, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@13
    const v8, -0x400001

    #@16
    and-int/2addr v7, v8

    #@17
    iput v7, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@19
    .line 3618
    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    #@1c
    .line 3619
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1e
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    #@21
    .line 3620
    const/4 v2, 0x0

    #@22
    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    #@24
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    #@27
    move-result v6

    #@28
    if-ge v2, v6, :cond_0

    #@2a
    .line 3621
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    #@2c
    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@2f
    move-result-object v3

    #@30
    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@32
    .line 3622
    .local v3, "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteResetAudioLocked(J)V

    #@35
    .line 3620
    add-int/lit8 v2, v2, 0x1

    #@37
    goto :goto_0

    #@38
    .line 3610
    .end local v0    # "elapsedRealtime":J
    .end local v2    # "i":I
    .end local v3    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v4    # "uptime":J
    :cond_0
    return-void
.end method

.method public noteResetCameraLocked()V
    .locals 9

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 3727
    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnNesting:I

    #@3
    if-lez v6, :cond_0

    #@5
    .line 3728
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@8
    move-result-wide v0

    #@9
    .line 3729
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@c
    move-result-wide v4

    #@d
    .line 3730
    .local v4, "uptime":J
    iput v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnNesting:I

    #@f
    .line 3731
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@11
    iget v7, v6, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@13
    const v8, -0x400001

    #@16
    and-int/2addr v7, v8

    #@17
    iput v7, v6, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@19
    .line 3734
    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    #@1c
    .line 3735
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1e
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    #@21
    .line 3736
    const/4 v2, 0x0

    #@22
    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    #@24
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    #@27
    move-result v6

    #@28
    if-ge v2, v6, :cond_0

    #@2a
    .line 3737
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    #@2c
    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@2f
    move-result-object v3

    #@30
    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@32
    .line 3738
    .local v3, "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteResetCameraLocked(J)V

    #@35
    .line 3736
    add-int/lit8 v2, v2, 0x1

    #@37
    goto :goto_0

    #@38
    .line 3726
    .end local v0    # "elapsedRealtime":J
    .end local v2    # "i":I
    .end local v3    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v4    # "uptime":J
    :cond_0
    return-void
.end method

.method public noteResetFlashlightLocked()V
    .locals 9

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 3744
    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnNesting:I

    #@3
    if-lez v6, :cond_0

    #@5
    .line 3745
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@8
    move-result-wide v0

    #@9
    .line 3746
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@c
    move-result-wide v4

    #@d
    .line 3747
    .local v4, "uptime":J
    iput v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnNesting:I

    #@f
    .line 3748
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@11
    iget v7, v6, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@13
    const v8, -0x8000001

    #@16
    and-int/2addr v7, v8

    #@17
    iput v7, v6, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@19
    .line 3751
    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    #@1c
    .line 3752
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1e
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    #@21
    .line 3753
    const/4 v2, 0x0

    #@22
    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    #@24
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    #@27
    move-result v6

    #@28
    if-ge v2, v6, :cond_0

    #@2a
    .line 3754
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    #@2c
    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@2f
    move-result-object v3

    #@30
    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@32
    .line 3755
    .local v3, "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteResetFlashlightLocked(J)V

    #@35
    .line 3753
    add-int/lit8 v2, v2, 0x1

    #@37
    goto :goto_0

    #@38
    .line 3743
    .end local v0    # "elapsedRealtime":J
    .end local v2    # "i":I
    .end local v3    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v4    # "uptime":J
    :cond_0
    return-void
.end method

.method public noteResetVideoLocked()V
    .locals 9

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 3628
    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnNesting:I

    #@3
    if-lez v6, :cond_0

    #@5
    .line 3629
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@8
    move-result-wide v0

    #@9
    .line 3630
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@c
    move-result-wide v4

    #@d
    .line 3631
    .local v4, "uptime":J
    iput v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    #@f
    .line 3632
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@11
    iget v7, v6, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@13
    const v8, -0x40000001    # -1.9999999f

    #@16
    and-int/2addr v7, v8

    #@17
    iput v7, v6, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@19
    .line 3635
    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    #@1c
    .line 3636
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1e
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    #@21
    .line 3637
    const/4 v2, 0x0

    #@22
    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    #@24
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    #@27
    move-result v6

    #@28
    if-ge v2, v6, :cond_0

    #@2a
    .line 3638
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    #@2c
    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@2f
    move-result-object v3

    #@30
    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@32
    .line 3639
    .local v3, "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteResetVideoLocked(J)V

    #@35
    .line 3637
    add-int/lit8 v2, v2, 0x1

    #@37
    goto :goto_0

    #@38
    .line 3627
    .end local v0    # "elapsedRealtime":J
    .end local v2    # "i":I
    .end local v3    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v4    # "uptime":J
    :cond_0
    return-void
.end method

.method public noteScreenBrightnessLocked(I)V
    .locals 8
    .param p1, "brightness"    # I

    #@0
    .prologue
    .line 3107
    div-int/lit8 v0, p1, 0x33

    #@2
    .line 3108
    .local v0, "bin":I
    if-gez v0, :cond_4

    #@4
    const/4 v0, 0x0

    #@5
    .line 3110
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    #@7
    if-eq v1, v0, :cond_3

    #@9
    .line 3111
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@c
    move-result-wide v2

    #@d
    .line 3112
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@10
    move-result-wide v4

    #@11
    .line 3113
    .local v4, "uptime":J
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@13
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@15
    iget v6, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@17
    and-int/lit8 v6, v6, -0x8

    #@19
    .line 3114
    shl-int/lit8 v7, v0, 0x0

    #@1b
    .line 3113
    or-int/2addr v6, v7

    #@1c
    iput v6, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@1e
    .line 3117
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    #@21
    .line 3118
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    #@23
    const/4 v6, 0x2

    #@24
    if-ne v1, v6, :cond_2

    #@26
    .line 3119
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    #@28
    if-ltz v1, :cond_1

    #@2a
    .line 3120
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2c
    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    #@2e
    aget-object v1, v1, v6

    #@30
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@33
    .line 3122
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@35
    aget-object v1, v1, v0

    #@37
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@3a
    .line 3124
    :cond_2
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    #@3c
    .line 3105
    .end local v2    # "elapsedRealtime":J
    .end local v4    # "uptime":J
    :cond_3
    return-void

    #@3d
    .line 3109
    :cond_4
    const/4 v1, 0x5

    #@3e
    if-lt v0, v1, :cond_0

    #@40
    const/4 v0, 0x4

    #@41
    goto :goto_0
.end method

.method public noteScreenStateLocked(I)V
    .locals 13
    .param p1, "state"    # I

    #@0
    .prologue
    .line 3036
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    #@2
    if-eq v1, p1, :cond_2

    #@4
    .line 3037
    const/4 v1, 0x1

    #@5
    invoke-virtual {p0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->recordDailyStatsIfNeededLocked(Z)V

    #@8
    .line 3038
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    #@a
    .line 3039
    .local v0, "oldState":I
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    #@c
    .line 3043
    if-eqz p1, :cond_0

    #@e
    .line 3044
    add-int/lit8 v12, p1, -0x1

    #@10
    .line 3045
    .local v12, "stepState":I
    const/4 v1, 0x4

    #@11
    if-ge v12, v1, :cond_3

    #@13
    .line 3046
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    #@15
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    #@17
    and-int/lit8 v2, v2, 0x3

    #@19
    xor-int/2addr v2, v12

    #@1a
    or-int/2addr v1, v2

    #@1b
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    #@1d
    .line 3047
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    #@1f
    and-int/lit8 v1, v1, -0x4

    #@21
    or-int/2addr v1, v12

    #@22
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    #@24
    .line 3053
    .end local v12    # "stepState":I
    :cond_0
    :goto_0
    const/4 v1, 0x2

    #@25
    if-ne p1, v1, :cond_4

    #@27
    .line 3055
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@2a
    move-result-wide v8

    #@2b
    .line 3056
    .local v8, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@2e
    move-result-wide v10

    #@2f
    .line 3057
    .local v10, "uptime":J
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@31
    iget v2, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@33
    const/high16 v3, 0x100000

    #@35
    or-int/2addr v2, v3

    #@36
    iput v2, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@38
    .line 3060
    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    #@3b
    .line 3061
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@3d
    invoke-virtual {v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@40
    .line 3062
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    #@42
    if-ltz v1, :cond_1

    #@44
    .line 3063
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@46
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    #@48
    aget-object v1, v1, v2

    #@4a
    invoke-virtual {v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@4d
    .line 3066
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@4f
    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    #@52
    move-result v2

    #@53
    .line 3067
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@56
    move-result-wide v4

    #@57
    const-wide/16 v6, 0x3e8

    #@59
    mul-long/2addr v4, v6

    #@5a
    const-wide/16 v6, 0x3e8

    #@5c
    mul-long/2addr v6, v8

    #@5d
    .line 3066
    const/4 v3, 0x0

    #@5e
    move-object v1, p0

    #@5f
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->updateTimeBasesLocked(ZZJJ)V

    #@62
    .line 3071
    const-string/jumbo v4, "screen"

    #@65
    const/4 v2, -0x1

    #@66
    const/4 v3, -0x1

    #@67
    const/4 v5, 0x0

    #@68
    const/4 v6, 0x0

    #@69
    const/4 v7, 0x0

    #@6a
    move-object v1, p0

    #@6b
    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartWakeLocked(IILjava/lang/String;Ljava/lang/String;IZJJ)V

    #@6e
    .line 3075
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    #@70
    if-eqz v1, :cond_2

    #@72
    .line 3076
    const/4 v1, 0x0

    #@73
    const/4 v2, 0x1

    #@74
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->updateDischargeScreenLevelsLocked(ZZ)V

    #@77
    .line 3035
    .end local v0    # "oldState":I
    .end local v8    # "elapsedRealtime":J
    .end local v10    # "uptime":J
    :cond_2
    :goto_1
    return-void

    #@78
    .line 3049
    .restart local v0    # "oldState":I
    .restart local v12    # "stepState":I
    :cond_3
    const-string/jumbo v1, "BatteryStatsImpl"

    #@7b
    new-instance v2, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    const-string/jumbo v3, "Unexpected screen state: "

    #@83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v2

    #@87
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v2

    #@8b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v2

    #@8f
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@92
    goto :goto_0

    #@93
    .line 3078
    .end local v12    # "stepState":I
    :cond_4
    const/4 v1, 0x2

    #@94
    if-ne v0, v1, :cond_2

    #@96
    .line 3080
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@99
    move-result-wide v8

    #@9a
    .line 3081
    .restart local v8    # "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@9d
    move-result-wide v10

    #@9e
    .line 3082
    .restart local v10    # "uptime":J
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@a0
    iget v2, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@a2
    const v3, -0x100001

    #@a5
    and-int/2addr v2, v3

    #@a6
    iput v2, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@a8
    .line 3085
    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    #@ab
    .line 3086
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@ad
    invoke-virtual {v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@b0
    .line 3087
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    #@b2
    if-ltz v1, :cond_5

    #@b4
    .line 3088
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@b6
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    #@b8
    aget-object v1, v1, v2

    #@ba
    invoke-virtual {v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@bd
    .line 3091
    :cond_5
    const-string/jumbo v5, "screen"

    #@c0
    const-string/jumbo v6, "screen"

    #@c3
    const/4 v3, -0x1

    #@c4
    const/4 v4, -0x1

    #@c5
    const/4 v7, 0x0

    #@c6
    move-object v2, p0

    #@c7
    invoke-virtual/range {v2 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopWakeLocked(IILjava/lang/String;Ljava/lang/String;IJJ)V

    #@ca
    .line 3094
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@cc
    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    #@cf
    move-result v2

    #@d0
    .line 3095
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@d3
    move-result-wide v4

    #@d4
    const-wide/16 v6, 0x3e8

    #@d6
    mul-long/2addr v4, v6

    #@d7
    const-wide/16 v6, 0x3e8

    #@d9
    mul-long/2addr v6, v8

    #@da
    .line 3094
    const/4 v3, 0x1

    #@db
    move-object v1, p0

    #@dc
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->updateTimeBasesLocked(ZZJJ)V

    #@df
    .line 3098
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    #@e1
    if-eqz v1, :cond_2

    #@e3
    .line 3099
    const/4 v1, 0x1

    #@e4
    const/4 v2, 0x0

    #@e5
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->updateDischargeScreenLevelsLocked(ZZ)V

    #@e8
    goto :goto_1
.end method

.method public noteStartGpsLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 3008
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@3
    move-result p1

    #@4
    .line 3009
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@7
    move-result-wide v0

    #@8
    .line 3010
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@b
    move-result-wide v2

    #@c
    .line 3011
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGpsNesting:I

    #@e
    if-nez v4, :cond_0

    #@10
    .line 3012
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@12
    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@14
    const/high16 v6, 0x20000000

    #@16
    or-int/2addr v5, v6

    #@17
    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@19
    .line 3015
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    #@1c
    .line 3017
    :cond_0
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGpsNesting:I

    #@1e
    add-int/lit8 v4, v4, 0x1

    #@20
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGpsNesting:I

    #@22
    .line 3018
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStartGps(J)V

    #@29
    .line 3007
    return-void
.end method

.method public noteStartSensorLocked(II)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "sensor"    # I

    #@0
    .prologue
    .line 2978
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@3
    move-result p1

    #@4
    .line 2979
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@7
    move-result-wide v0

    #@8
    .line 2980
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@b
    move-result-wide v2

    #@c
    .line 2981
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorNesting:I

    #@e
    if-nez v4, :cond_0

    #@10
    .line 2982
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@12
    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@14
    const/high16 v6, 0x800000

    #@16
    or-int/2addr v5, v6

    #@17
    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@19
    .line 2985
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    #@1c
    .line 2987
    :cond_0
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorNesting:I

    #@1e
    add-int/lit8 v4, v4, 0x1

    #@20
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorNesting:I

    #@22
    .line 2988
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v4, p2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStartSensor(IJ)V

    #@29
    .line 2977
    return-void
.end method

.method public noteStartWakeFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 13
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "unimportantForLogging"    # Z

    #@0
    .prologue
    .line 2855
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v8

    #@4
    .line 2856
    .local v8, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@7
    move-result-wide v10

    #@8
    .line 2857
    .local v10, "uptime":J
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    #@b
    move-result v0

    #@c
    .line 2858
    .local v0, "N":I
    const/4 v12, 0x0

    #@d
    .local v12, "i":I
    :goto_0
    if-ge v12, v0, :cond_0

    #@f
    .line 2859
    invoke-virtual {p1, v12}, Landroid/os/WorkSource;->get(I)I

    #@12
    move-result v2

    #@13
    move-object v1, p0

    #@14
    move v3, p2

    #@15
    move-object/from16 v4, p3

    #@17
    move-object/from16 v5, p4

    #@19
    move/from16 v6, p5

    #@1b
    move/from16 v7, p6

    #@1d
    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartWakeLocked(IILjava/lang/String;Ljava/lang/String;IZJJ)V

    #@20
    .line 2858
    add-int/lit8 v12, v12, 0x1

    #@22
    goto :goto_0

    #@23
    .line 2854
    :cond_0
    return-void
.end method

.method public noteStartWakeLocked(IILjava/lang/String;Ljava/lang/String;IZJJ)V
    .locals 13
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "unimportantForLogging"    # Z
    .param p7, "elapsedRealtime"    # J
    .param p9, "uptime"    # J

    #@0
    .prologue
    .line 2767
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@3
    move-result p1

    #@4
    .line 2768
    if-nez p5, :cond_3

    #@6
    .line 2771
    move-wide/from16 v0, p9

    #@8
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->aggregateLastWakeupUptimeLocked(J)V

    #@b
    .line 2772
    if-nez p4, :cond_0

    #@d
    .line 2773
    move-object/from16 p4, p3

    #@f
    .line 2775
    :cond_0
    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordAllHistory:Z

    #@11
    if-eqz v4, :cond_1

    #@13
    .line 2776
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    #@15
    const v5, 0x8005

    #@18
    .line 2777
    const/4 v6, 0x0

    #@19
    .line 2776
    move-object/from16 v0, p4

    #@1b
    invoke-virtual {v4, v5, v0, p1, v6}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    #@1e
    move-result v4

    #@1f
    if-eqz v4, :cond_1

    #@21
    .line 2779
    const v10, 0x8005

    #@24
    move-object v5, p0

    #@25
    move-wide/from16 v6, p7

    #@27
    move-wide/from16 v8, p9

    #@29
    move-object/from16 v11, p4

    #@2b
    move v12, p1

    #@2c
    .line 2778
    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    #@2f
    .line 2782
    :cond_1
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockNesting:I

    #@31
    if-nez v4, :cond_7

    #@33
    .line 2783
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@35
    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@37
    const/high16 v6, 0x40000000    # 2.0f

    #@39
    or-int/2addr v5, v6

    #@3a
    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@3c
    .line 2786
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@3e
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@40
    iget-object v5, v5, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@42
    iput-object v5, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@44
    .line 2787
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@46
    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@48
    move-object/from16 v0, p4

    #@4a
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitialAcquireWakeName:Ljava/lang/String;

    #@4c
    move-object/from16 v0, p4

    #@4e
    iput-object v0, v4, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    #@50
    .line 2788
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@52
    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@54
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitialAcquireWakeUid:I

    #@56
    iput p1, v4, Landroid/os/BatteryStats$HistoryTag;->uid:I

    #@58
    .line 2789
    if-eqz p6, :cond_6

    #@5a
    const/4 v4, 0x0

    #@5b
    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockImportant:Z

    #@5d
    .line 2790
    move-wide/from16 v0, p7

    #@5f
    move-wide/from16 v2, p9

    #@61
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    #@64
    .line 2803
    :cond_2
    :goto_1
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockNesting:I

    #@66
    add-int/lit8 v4, v4, 0x1

    #@68
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockNesting:I

    #@6a
    .line 2805
    :cond_3
    if-ltz p1, :cond_5

    #@6c
    .line 2806
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@6e
    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    #@71
    move-result v4

    #@72
    if-eqz v4, :cond_4

    #@74
    .line 2812
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl;->requestWakelockCpuUpdate()V

    #@77
    .line 2814
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@7a
    move-result-object v4

    #@7b
    move v5, p2

    #@7c
    move-object/from16 v6, p3

    #@7e
    move/from16 v7, p5

    #@80
    move-wide/from16 v8, p7

    #@82
    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStartWakeLocked(ILjava/lang/String;IJ)V

    #@85
    .line 2766
    :cond_5
    return-void

    #@86
    .line 2789
    :cond_6
    const/4 v4, 0x1

    #@87
    goto :goto_0

    #@88
    .line 2791
    :cond_7
    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockImportant:Z

    #@8a
    if-nez v4, :cond_2

    #@8c
    if-nez p6, :cond_2

    #@8e
    .line 2792
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@90
    iget-byte v4, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@92
    if-nez v4, :cond_2

    #@94
    .line 2793
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@96
    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@98
    if-eqz v4, :cond_8

    #@9a
    .line 2795
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    #@9c
    const/4 v5, 0x0

    #@9d
    iput-object v5, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@9f
    .line 2796
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@a1
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@a3
    iget-object v5, v5, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@a5
    iput-object v5, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@a7
    .line 2797
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@a9
    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@ab
    move-object/from16 v0, p4

    #@ad
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitialAcquireWakeName:Ljava/lang/String;

    #@af
    move-object/from16 v0, p4

    #@b1
    iput-object v0, v4, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    #@b3
    .line 2798
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@b5
    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@b7
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitialAcquireWakeUid:I

    #@b9
    iput p1, v4, Landroid/os/BatteryStats$HistoryTag;->uid:I

    #@bb
    .line 2799
    move-wide/from16 v0, p7

    #@bd
    move-wide/from16 v2, p9

    #@bf
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    #@c2
    .line 2801
    :cond_8
    const/4 v4, 0x1

    #@c3
    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockImportant:Z

    #@c5
    goto :goto_1
.end method

.method public noteStopGpsLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 3022
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@3
    move-result p1

    #@4
    .line 3023
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@7
    move-result-wide v0

    #@8
    .line 3024
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@b
    move-result-wide v2

    #@c
    .line 3025
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGpsNesting:I

    #@e
    add-int/lit8 v4, v4, -0x1

    #@10
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGpsNesting:I

    #@12
    .line 3026
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGpsNesting:I

    #@14
    if-nez v4, :cond_0

    #@16
    .line 3027
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@18
    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@1a
    const v6, -0x20000001

    #@1d
    and-int/2addr v5, v6

    #@1e
    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@20
    .line 3030
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    #@23
    .line 3032
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStopGps(J)V

    #@2a
    .line 3021
    return-void
.end method

.method public noteStopSensorLocked(II)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "sensor"    # I

    #@0
    .prologue
    .line 2992
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@3
    move-result p1

    #@4
    .line 2993
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@7
    move-result-wide v0

    #@8
    .line 2994
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@b
    move-result-wide v2

    #@c
    .line 2995
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorNesting:I

    #@e
    add-int/lit8 v4, v4, -0x1

    #@10
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorNesting:I

    #@12
    .line 2996
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorNesting:I

    #@14
    if-nez v4, :cond_0

    #@16
    .line 2997
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@18
    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@1a
    const v6, -0x800001

    #@1d
    and-int/2addr v5, v6

    #@1e
    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@20
    .line 3000
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    #@23
    .line 3002
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v4, p2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStopSensor(IJ)V

    #@2a
    .line 2991
    return-void
.end method

.method public noteStopWakeFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 12
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I

    #@0
    .prologue
    .line 2885
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v6

    #@4
    .line 2886
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@7
    move-result-wide v8

    #@8
    .line 2887
    .local v8, "uptime":J
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    #@b
    move-result v10

    #@c
    .line 2888
    .local v10, "N":I
    const/4 v11, 0x0

    #@d
    .local v11, "i":I
    :goto_0
    if-ge v11, v10, :cond_0

    #@f
    .line 2889
    invoke-virtual {p1, v11}, Landroid/os/WorkSource;->get(I)I

    #@12
    move-result v1

    #@13
    move-object v0, p0

    #@14
    move v2, p2

    #@15
    move-object v3, p3

    #@16
    move-object/from16 v4, p4

    #@18
    move/from16 v5, p5

    #@1a
    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopWakeLocked(IILjava/lang/String;Ljava/lang/String;IJJ)V

    #@1d
    .line 2888
    add-int/lit8 v11, v11, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 2884
    :cond_0
    return-void
.end method

.method public noteStopWakeLocked(IILjava/lang/String;Ljava/lang/String;IJJ)V
    .locals 14
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "elapsedRealtime"    # J
    .param p8, "uptime"    # J

    #@0
    .prologue
    .line 2820
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@3
    move-result p1

    #@4
    .line 2821
    if-nez p5, :cond_2

    #@6
    .line 2822
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockNesting:I

    #@8
    add-int/lit8 v4, v4, -0x1

    #@a
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockNesting:I

    #@c
    .line 2823
    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordAllHistory:Z

    #@e
    if-eqz v4, :cond_1

    #@10
    .line 2824
    if-nez p4, :cond_0

    #@12
    .line 2825
    move-object/from16 p4, p3

    #@14
    .line 2827
    :cond_0
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    #@16
    const/16 v5, 0x4005

    #@18
    .line 2828
    const/4 v6, 0x0

    #@19
    .line 2827
    move-object/from16 v0, p4

    #@1b
    invoke-virtual {v4, v5, v0, p1, v6}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    #@1e
    move-result v4

    #@1f
    if-eqz v4, :cond_1

    #@21
    .line 2830
    const/16 v10, 0x4005

    #@23
    move-object v5, p0

    #@24
    move-wide/from16 v6, p6

    #@26
    move-wide/from16 v8, p8

    #@28
    move-object/from16 v11, p4

    #@2a
    move v12, p1

    #@2b
    .line 2829
    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    #@2e
    .line 2833
    :cond_1
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeLockNesting:I

    #@30
    if-nez v4, :cond_2

    #@32
    .line 2834
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@34
    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@36
    const v6, -0x40000001    # -1.9999999f

    #@39
    and-int/2addr v5, v6

    #@3a
    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@3c
    .line 2837
    const/4 v4, 0x0

    #@3d
    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitialAcquireWakeName:Ljava/lang/String;

    #@3f
    .line 2838
    const/4 v4, -0x1

    #@40
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mInitialAcquireWakeUid:I

    #@42
    .line 2839
    move-wide/from16 v0, p6

    #@44
    move-wide/from16 v2, p8

    #@46
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    #@49
    .line 2842
    :cond_2
    if-ltz p1, :cond_4

    #@4b
    .line 2843
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@4d
    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    #@50
    move-result v4

    #@51
    if-eqz v4, :cond_3

    #@53
    .line 2847
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl;->requestWakelockCpuUpdate()V

    #@56
    .line 2849
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@59
    move-result-object v4

    #@5a
    move/from16 v5, p2

    #@5c
    move-object/from16 v6, p3

    #@5e
    move/from16 v7, p5

    #@60
    move-wide/from16 v8, p6

    #@62
    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStopWakeLocked(ILjava/lang/String;IJ)V

    #@65
    .line 2819
    :cond_4
    return-void
.end method

.method public noteSyncFinishLocked(Ljava/lang/String;I)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    const/16 v6, 0x4004

    #@2
    .line 2649
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@5
    move-result p2

    #@6
    .line 2650
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@9
    move-result-wide v2

    #@a
    .line 2651
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@d
    move-result-wide v4

    #@e
    .line 2652
    .local v4, "uptime":J
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0, p1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStopSyncLocked(Ljava/lang/String;J)V

    #@15
    .line 2653
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    #@17
    const/4 v1, 0x0

    #@18
    invoke-virtual {v0, v6, p1, p2, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    #@1b
    move-result v0

    #@1c
    if-nez v0, :cond_0

    #@1e
    .line 2654
    return-void

    #@1f
    :cond_0
    move-object v1, p0

    #@20
    move-object v7, p1

    #@21
    move v8, p2

    #@22
    .line 2656
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    #@25
    .line 2648
    return-void
.end method

.method public noteSyncStartLocked(Ljava/lang/String;I)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    const v6, 0x8004

    #@3
    .line 2638
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@6
    move-result p2

    #@7
    .line 2639
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@a
    move-result-wide v2

    #@b
    .line 2640
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@e
    move-result-wide v4

    #@f
    .line 2641
    .local v4, "uptime":J
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0, p1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStartSyncLocked(Ljava/lang/String;J)V

    #@16
    .line 2642
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    #@18
    const/4 v1, 0x0

    #@19
    invoke-virtual {v0, v6, p1, p2, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    #@1c
    move-result v0

    #@1d
    if-nez v0, :cond_0

    #@1f
    .line 2643
    return-void

    #@20
    :cond_0
    move-object v1, p0

    #@21
    move-object v7, p1

    #@22
    move v8, p2

    #@23
    .line 2645
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    #@26
    .line 2637
    return-void
.end method

.method public noteUserActivityLocked(II)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "event"    # I

    #@0
    .prologue
    .line 3129
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3130
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@7
    move-result p1

    #@8
    .line 3131
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteUserActivityLocked(I)V

    #@f
    .line 3128
    :cond_0
    return-void
.end method

.method public noteVibratorOffLocked(I)V
    .locals 1
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 3660
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@3
    move-result p1

    #@4
    .line 3661
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteVibratorOffLocked()V

    #@b
    .line 3659
    return-void
.end method

.method public noteVibratorOnLocked(IJ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "durationMillis"    # J

    #@0
    .prologue
    .line 3655
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@3
    move-result p1

    #@4
    .line 3656
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteVibratorOnLocked(J)V

    #@b
    .line 3654
    return-void
.end method

.method public noteVideoOffLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 3594
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnNesting:I

    #@2
    if-nez v4, :cond_0

    #@4
    .line 3595
    return-void

    #@5
    .line 3597
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@8
    move-result p1

    #@9
    .line 3598
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@c
    move-result-wide v0

    #@d
    .line 3599
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@10
    move-result-wide v2

    #@11
    .line 3600
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnNesting:I

    #@13
    add-int/lit8 v4, v4, -0x1

    #@15
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnNesting:I

    #@17
    if-nez v4, :cond_1

    #@19
    .line 3601
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@1b
    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@1d
    const v6, -0x40000001    # -1.9999999f

    #@20
    and-int/2addr v5, v6

    #@21
    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@23
    .line 3604
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    #@26
    .line 3605
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@28
    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@2b
    .line 3607
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteVideoTurnedOffLocked(J)V

    #@32
    .line 3593
    return-void
.end method

.method public noteVideoOnLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 3579
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@3
    move-result p1

    #@4
    .line 3580
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@7
    move-result-wide v0

    #@8
    .line 3581
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@b
    move-result-wide v2

    #@c
    .line 3582
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnNesting:I

    #@e
    if-nez v4, :cond_0

    #@10
    .line 3583
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@12
    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@14
    const/high16 v6, 0x40000000    # 2.0f

    #@16
    or-int/2addr v5, v6

    #@17
    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@19
    .line 3586
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    #@1c
    .line 3587
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1e
    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@21
    .line 3589
    :cond_0
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnNesting:I

    #@23
    add-int/lit8 v4, v4, 0x1

    #@25
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnNesting:I

    #@27
    .line 3590
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteVideoTurnedOnLocked(J)V

    #@2e
    .line 3578
    return-void
.end method

.method public noteWakeUpLocked(Ljava/lang/String;I)V
    .locals 9
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "reasonUid"    # I

    #@0
    .prologue
    .line 3136
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v2

    #@4
    .line 3137
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@7
    move-result-wide v4

    #@8
    .line 3138
    .local v4, "uptime":J
    const/16 v6, 0x12

    #@a
    move-object v1, p0

    #@b
    move-object v7, p1

    #@c
    move v8, p2

    #@d
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    #@10
    .line 3135
    return-void
.end method

.method public noteWakeupReasonLocked(Ljava/lang/String;)V
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2904
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v0

    #@4
    .line 2905
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@7
    move-result-wide v2

    #@8
    .line 2908
    .local v2, "uptime":J
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->aggregateLastWakeupUptimeLocked(J)V

    #@b
    .line 2909
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@d
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@f
    iget-object v5, v5, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@11
    iput-object v5, v4, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@13
    .line 2910
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@15
    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@17
    iput-object p1, v4, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    #@19
    .line 2911
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@1b
    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@1d
    const/4 v5, 0x0

    #@1e
    iput v5, v4, Landroid/os/BatteryStats$HistoryTag;->uid:I

    #@20
    .line 2912
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupReason:Ljava/lang/String;

    #@22
    .line 2913
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWakeupUptimeMs:J

    #@24
    .line 2914
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    #@27
    .line 2903
    return-void
.end method

.method public noteWifiBatchedScanStartedFromSourceLocked(Landroid/os/WorkSource;I)V
    .locals 3
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "csph"    # I

    #@0
    .prologue
    .line 4041
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    #@3
    move-result v0

    #@4
    .line 4042
    .local v0, "N":I
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@7
    .line 4043
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    #@a
    move-result v2

    #@b
    invoke-virtual {p0, v2, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiBatchedScanStartedLocked(II)V

    #@e
    .line 4042
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 4040
    :cond_0
    return-void
.end method

.method public noteWifiBatchedScanStartedLocked(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "csph"    # I

    #@0
    .prologue
    .line 3971
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@3
    move-result p1

    #@4
    .line 3972
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@7
    move-result-wide v0

    #@8
    .line 3973
    .local v0, "elapsedRealtime":J
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2, p2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiBatchedScanStartedLocked(IJ)V

    #@f
    .line 3970
    return-void
.end method

.method public noteWifiBatchedScanStoppedFromSourceLocked(Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "ws"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 4048
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    #@3
    move-result v0

    #@4
    .line 4049
    .local v0, "N":I
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@7
    .line 4050
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    #@a
    move-result v2

    #@b
    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiBatchedScanStoppedLocked(I)V

    #@e
    .line 4049
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 4047
    :cond_0
    return-void
.end method

.method public noteWifiBatchedScanStoppedLocked(I)V
    .locals 3
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 3977
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@3
    move-result p1

    #@4
    .line 3978
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@7
    move-result-wide v0

    #@8
    .line 3979
    .local v0, "elapsedRealtime":J
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiBatchedScanStoppedLocked(J)V

    #@f
    .line 3976
    return-void
.end method

.method public noteWifiMulticastDisabledFromSourceLocked(Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "ws"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 4062
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    #@3
    move-result v0

    #@4
    .line 4063
    .local v0, "N":I
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@7
    .line 4064
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    #@a
    move-result v2

    #@b
    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastDisabledLocked(I)V

    #@e
    .line 4063
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 4061
    :cond_0
    return-void
.end method

.method public noteWifiMulticastDisabledLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 3999
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@3
    move-result p1

    #@4
    .line 4000
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@7
    move-result-wide v0

    #@8
    .line 4001
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@b
    move-result-wide v2

    #@c
    .line 4002
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    #@e
    add-int/lit8 v4, v4, -0x1

    #@10
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    #@12
    .line 4003
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    #@14
    if-nez v4, :cond_0

    #@16
    .line 4004
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@18
    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@1a
    const v6, -0x10001

    #@1d
    and-int/2addr v5, v6

    #@1e
    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@20
    .line 4007
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    #@23
    .line 4009
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiMulticastDisabledLocked(J)V

    #@2a
    .line 3998
    return-void
.end method

.method public noteWifiMulticastEnabledFromSourceLocked(Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "ws"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 4055
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    #@3
    move-result v0

    #@4
    .line 4056
    .local v0, "N":I
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@7
    .line 4057
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    #@a
    move-result v2

    #@b
    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastEnabledLocked(I)V

    #@e
    .line 4056
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 4054
    :cond_0
    return-void
.end method

.method public noteWifiMulticastEnabledLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 3985
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@3
    move-result p1

    #@4
    .line 3986
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@7
    move-result-wide v0

    #@8
    .line 3987
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@b
    move-result-wide v2

    #@c
    .line 3988
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    #@e
    if-nez v4, :cond_0

    #@10
    .line 3989
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@12
    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@14
    const/high16 v6, 0x10000

    #@16
    or-int/2addr v5, v6

    #@17
    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@19
    .line 3992
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    #@1c
    .line 3994
    :cond_0
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    #@1e
    add-int/lit8 v4, v4, 0x1

    #@20
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastNesting:I

    #@22
    .line 3995
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiMulticastEnabledLocked(J)V

    #@29
    .line 3984
    return-void
.end method

.method public noteWifiOffLocked()V
    .locals 7

    #@0
    .prologue
    .line 3533
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v0

    #@4
    .line 3534
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@7
    move-result-wide v2

    #@8
    .line 3535
    .local v2, "uptime":J
    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOn:Z

    #@a
    if-eqz v4, :cond_0

    #@c
    .line 3536
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@e
    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@10
    const v6, -0x10000001

    #@13
    and-int/2addr v5, v6

    #@14
    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@16
    .line 3539
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    #@19
    .line 3540
    const/4 v4, 0x0

    #@1a
    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOn:Z

    #@1c
    .line 3541
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1e
    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@21
    .line 3542
    const-string/jumbo v4, "wifi-on"

    #@24
    invoke-direct {p0, v4}, Lcom/android/internal/os/BatteryStatsImpl;->scheduleSyncExternalWifiStatsLocked(Ljava/lang/String;)V

    #@27
    .line 3532
    :cond_0
    return-void
.end method

.method public noteWifiOnLocked()V
    .locals 7

    #@0
    .prologue
    .line 3519
    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOn:Z

    #@2
    if-nez v4, :cond_0

    #@4
    .line 3520
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@7
    move-result-wide v0

    #@8
    .line 3521
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@b
    move-result-wide v2

    #@c
    .line 3522
    .local v2, "uptime":J
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@e
    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@10
    const/high16 v6, 0x10000000

    #@12
    or-int/2addr v5, v6

    #@13
    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@15
    .line 3525
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    #@18
    .line 3526
    const/4 v4, 0x1

    #@19
    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOn:Z

    #@1b
    .line 3527
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1d
    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@20
    .line 3528
    const-string/jumbo v4, "wifi-off"

    #@23
    invoke-direct {p0, v4}, Lcom/android/internal/os/BatteryStatsImpl;->scheduleSyncExternalWifiStatsLocked(Ljava/lang/String;)V

    #@26
    .line 3518
    .end local v0    # "elapsedRealtime":J
    .end local v2    # "uptime":J
    :cond_0
    return-void
.end method

.method public noteWifiRadioPowerState(IJ)V
    .locals 8
    .param p1, "powerState"    # I
    .param p2, "timestampNs"    # J

    #@0
    .prologue
    .line 3761
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v2

    #@4
    .line 3762
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@7
    move-result-wide v4

    #@8
    .line 3763
    .local v4, "uptime":J
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRadioPowerState:I

    #@a
    if-eq v1, p1, :cond_0

    #@c
    .line 3765
    sget v1, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_MEDIUM:I

    #@e
    if-eq p1, v1, :cond_1

    #@10
    .line 3766
    sget v1, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_HIGH:I

    #@12
    if-ne p1, v1, :cond_2

    #@14
    const/4 v0, 0x1

    #@15
    .line 3767
    .local v0, "active":Z
    :goto_0
    if-eqz v0, :cond_3

    #@17
    .line 3768
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@19
    iget v6, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@1b
    const/high16 v7, 0x4000000

    #@1d
    or-int/2addr v6, v7

    #@1e
    iput v6, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@20
    .line 3774
    :goto_1
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    #@23
    .line 3775
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRadioPowerState:I

    #@25
    .line 3760
    .end local v0    # "active":Z
    :cond_0
    return-void

    #@26
    .line 3765
    :cond_1
    const/4 v0, 0x1

    #@27
    .restart local v0    # "active":Z
    goto :goto_0

    #@28
    .line 3766
    .end local v0    # "active":Z
    :cond_2
    const/4 v0, 0x0

    #@29
    .restart local v0    # "active":Z
    goto :goto_0

    #@2a
    .line 3770
    :cond_3
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@2c
    iget v6, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@2e
    const v7, -0x4000001

    #@31
    and-int/2addr v6, v7

    #@32
    iput v6, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@34
    goto :goto_1
.end method

.method public noteWifiRssiChangedLocked(I)V
    .locals 8
    .param p1, "newRssi"    # I

    #@0
    .prologue
    .line 3884
    const/4 v3, 0x5

    #@1
    invoke-static {p1, v3}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    #@4
    move-result v2

    #@5
    .line 3886
    .local v2, "strengthBin":I
    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthBin:I

    #@7
    if-eq v3, v2, :cond_2

    #@9
    .line 3887
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@c
    move-result-wide v0

    #@d
    .line 3888
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@10
    move-result-wide v4

    #@11
    .line 3889
    .local v4, "uptime":J
    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthBin:I

    #@13
    if-ltz v3, :cond_0

    #@15
    .line 3890
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@17
    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthBin:I

    #@19
    aget-object v3, v3, v6

    #@1b
    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@1e
    .line 3893
    :cond_0
    if-ltz v2, :cond_3

    #@20
    .line 3894
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@22
    aget-object v3, v3, v2

    #@24
    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    #@27
    move-result v3

    #@28
    if-nez v3, :cond_1

    #@2a
    .line 3895
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2c
    aget-object v3, v3, v2

    #@2e
    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@31
    .line 3897
    :cond_1
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@33
    .line 3898
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@35
    iget v6, v6, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@37
    and-int/lit8 v6, v6, -0x71

    #@39
    .line 3899
    shl-int/lit8 v7, v2, 0x4

    #@3b
    .line 3898
    or-int/2addr v6, v7

    #@3c
    .line 3897
    iput v6, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@3e
    .line 3902
    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    #@41
    .line 3906
    :goto_0
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthBin:I

    #@43
    .line 3883
    .end local v0    # "elapsedRealtime":J
    .end local v4    # "uptime":J
    :cond_2
    return-void

    #@44
    .line 3904
    .restart local v0    # "elapsedRealtime":J
    .restart local v4    # "uptime":J
    :cond_3
    const/4 v3, -0x1

    #@45
    invoke-virtual {p0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->stopAllWifiSignalStrengthTimersLocked(I)V

    #@48
    goto :goto_0
.end method

.method public noteWifiRunningChangedLocked(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    .locals 7
    .param p1, "oldWs"    # Landroid/os/WorkSource;
    .param p2, "newWs"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 3801
    iget-boolean v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunning:Z

    #@2
    if-eqz v5, :cond_1

    #@4
    .line 3802
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@7
    move-result-wide v2

    #@8
    .line 3803
    .local v2, "elapsedRealtime":J
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    #@b
    move-result v0

    #@c
    .line 3804
    .local v0, "N":I
    const/4 v1, 0x0

    #@d
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@f
    .line 3805
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    #@12
    move-result v5

    #@13
    invoke-virtual {p0, v5}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@16
    move-result v4

    #@17
    .line 3806
    .local v4, "uid":I
    invoke-virtual {p0, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@1a
    move-result-object v5

    #@1b
    invoke-virtual {v5, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiStoppedLocked(J)V

    #@1e
    .line 3804
    add-int/lit8 v1, v1, 0x1

    #@20
    goto :goto_0

    #@21
    .line 3808
    .end local v4    # "uid":I
    :cond_0
    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    #@24
    move-result v0

    #@25
    .line 3809
    const/4 v1, 0x0

    #@26
    :goto_1
    if-ge v1, v0, :cond_2

    #@28
    .line 3810
    invoke-virtual {p2, v1}, Landroid/os/WorkSource;->get(I)I

    #@2b
    move-result v5

    #@2c
    invoke-virtual {p0, v5}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@2f
    move-result v4

    #@30
    .line 3811
    .restart local v4    # "uid":I
    invoke-virtual {p0, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@33
    move-result-object v5

    #@34
    invoke-virtual {v5, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiRunningLocked(J)V

    #@37
    .line 3809
    add-int/lit8 v1, v1, 0x1

    #@39
    goto :goto_1

    #@3a
    .line 3814
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "elapsedRealtime":J
    .end local v4    # "uid":I
    :cond_1
    const-string/jumbo v5, "BatteryStatsImpl"

    #@3d
    const-string/jumbo v6, "noteWifiRunningChangedLocked -- called while WIFI not running"

    #@40
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    .line 3800
    :cond_2
    return-void
.end method

.method public noteWifiRunningLocked(Landroid/os/WorkSource;)V
    .locals 10
    .param p1, "ws"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 3780
    iget-boolean v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunning:Z

    #@2
    if-nez v5, :cond_1

    #@4
    .line 3781
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@7
    move-result-wide v2

    #@8
    .line 3782
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@b
    move-result-wide v6

    #@c
    .line 3783
    .local v6, "uptime":J
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@e
    iget v8, v5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@10
    const/high16 v9, 0x20000000

    #@12
    or-int/2addr v8, v9

    #@13
    iput v8, v5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@15
    .line 3786
    invoke-virtual {p0, v2, v3, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    #@18
    .line 3787
    const/4 v5, 0x1

    #@19
    iput-boolean v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunning:Z

    #@1b
    .line 3788
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1d
    invoke-virtual {v5, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@20
    .line 3789
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    #@23
    move-result v0

    #@24
    .line 3790
    .local v0, "N":I
    const/4 v1, 0x0

    #@25
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@27
    .line 3791
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    #@2a
    move-result v5

    #@2b
    invoke-virtual {p0, v5}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@2e
    move-result v4

    #@2f
    .line 3792
    .local v4, "uid":I
    invoke-virtual {p0, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@32
    move-result-object v5

    #@33
    invoke-virtual {v5, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiRunningLocked(J)V

    #@36
    .line 3790
    add-int/lit8 v1, v1, 0x1

    #@38
    goto :goto_0

    #@39
    .line 3794
    .end local v4    # "uid":I
    :cond_0
    const-string/jumbo v5, "wifi-running"

    #@3c
    invoke-direct {p0, v5}, Lcom/android/internal/os/BatteryStatsImpl;->scheduleSyncExternalWifiStatsLocked(Ljava/lang/String;)V

    #@3f
    .line 3779
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    :goto_1
    return-void

    #@40
    .line 3796
    :cond_1
    const-string/jumbo v5, "BatteryStatsImpl"

    #@43
    const-string/jumbo v8, "noteWifiRunningLocked -- called while WIFI running"

    #@46
    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@49
    goto :goto_1
.end method

.method public noteWifiScanStartedFromSourceLocked(Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "ws"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 4027
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    #@3
    move-result v0

    #@4
    .line 4028
    .local v0, "N":I
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@7
    .line 4029
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    #@a
    move-result v2

    #@b
    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStartedLocked(I)V

    #@e
    .line 4028
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 4026
    :cond_0
    return-void
.end method

.method public noteWifiScanStartedLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 3943
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@3
    move-result p1

    #@4
    .line 3944
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@7
    move-result-wide v0

    #@8
    .line 3945
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@b
    move-result-wide v2

    #@c
    .line 3946
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanNesting:I

    #@e
    if-nez v4, :cond_0

    #@10
    .line 3947
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@12
    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@14
    const/high16 v6, 0x8000000

    #@16
    or-int/2addr v5, v6

    #@17
    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@19
    .line 3950
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    #@1c
    .line 3952
    :cond_0
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanNesting:I

    #@1e
    add-int/lit8 v4, v4, 0x1

    #@20
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanNesting:I

    #@22
    .line 3953
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiScanStartedLocked(J)V

    #@29
    .line 3942
    return-void
.end method

.method public noteWifiScanStoppedFromSourceLocked(Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "ws"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 4034
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    #@3
    move-result v0

    #@4
    .line 4035
    .local v0, "N":I
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@7
    .line 4036
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    #@a
    move-result v2

    #@b
    invoke-virtual {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStoppedLocked(I)V

    #@e
    .line 4035
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 4033
    :cond_0
    return-void
.end method

.method public noteWifiScanStoppedLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 3957
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@3
    move-result p1

    #@4
    .line 3958
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@7
    move-result-wide v0

    #@8
    .line 3959
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@b
    move-result-wide v2

    #@c
    .line 3960
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanNesting:I

    #@e
    add-int/lit8 v4, v4, -0x1

    #@10
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanNesting:I

    #@12
    .line 3961
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanNesting:I

    #@14
    if-nez v4, :cond_0

    #@16
    .line 3962
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@18
    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@1a
    const v6, -0x8000001

    #@1d
    and-int/2addr v5, v6

    #@1e
    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@20
    .line 3965
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    #@23
    .line 3967
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiScanStoppedLocked(J)V

    #@2a
    .line 3956
    return-void
.end method

.method public noteWifiStateLocked(ILjava/lang/String;)V
    .locals 4
    .param p1, "wifiState"    # I
    .param p2, "accessPoint"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3841
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiState:I

    #@2
    if-eq v2, p1, :cond_1

    #@4
    .line 3842
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@7
    move-result-wide v0

    #@8
    .line 3843
    .local v0, "elapsedRealtime":J
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiState:I

    #@a
    if-ltz v2, :cond_0

    #@c
    .line 3844
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@e
    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiState:I

    #@10
    aget-object v2, v2, v3

    #@12
    invoke-virtual {v2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@15
    .line 3846
    :cond_0
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiState:I

    #@17
    .line 3847
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@19
    aget-object v2, v2, p1

    #@1b
    invoke-virtual {v2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@1e
    .line 3848
    const-string/jumbo v2, "wifi-state"

    #@21
    invoke-direct {p0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->scheduleSyncExternalWifiStatsLocked(Ljava/lang/String;)V

    #@24
    .line 3839
    .end local v0    # "elapsedRealtime":J
    :cond_1
    return-void
.end method

.method public noteWifiStoppedLocked(Landroid/os/WorkSource;)V
    .locals 10
    .param p1, "ws"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 3819
    iget-boolean v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunning:Z

    #@2
    if-eqz v5, :cond_1

    #@4
    .line 3820
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@7
    move-result-wide v2

    #@8
    .line 3821
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@b
    move-result-wide v6

    #@c
    .line 3822
    .local v6, "uptime":J
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@e
    iget v8, v5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@10
    const v9, -0x20000001

    #@13
    and-int/2addr v8, v9

    #@14
    iput v8, v5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@16
    .line 3825
    invoke-virtual {p0, v2, v3, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    #@19
    .line 3826
    const/4 v5, 0x0

    #@1a
    iput-boolean v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunning:Z

    #@1c
    .line 3827
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1e
    invoke-virtual {v5, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@21
    .line 3828
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    #@24
    move-result v0

    #@25
    .line 3829
    .local v0, "N":I
    const/4 v1, 0x0

    #@26
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@28
    .line 3830
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    #@2b
    move-result v5

    #@2c
    invoke-virtual {p0, v5}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@2f
    move-result v4

    #@30
    .line 3831
    .local v4, "uid":I
    invoke-virtual {p0, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@33
    move-result-object v5

    #@34
    invoke-virtual {v5, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiStoppedLocked(J)V

    #@37
    .line 3829
    add-int/lit8 v1, v1, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 3833
    .end local v4    # "uid":I
    :cond_0
    const-string/jumbo v5, "wifi-stopped"

    #@3d
    invoke-direct {p0, v5}, Lcom/android/internal/os/BatteryStatsImpl;->scheduleSyncExternalWifiStatsLocked(Ljava/lang/String;)V

    #@40
    .line 3818
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    :goto_1
    return-void

    #@41
    .line 3835
    :cond_1
    const-string/jumbo v5, "BatteryStatsImpl"

    #@44
    const-string/jumbo v8, "noteWifiStoppedLocked -- called while WIFI not running"

    #@47
    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4a
    goto :goto_1
.end method

.method public noteWifiSupplicantStateChangedLocked(IZ)V
    .locals 7
    .param p1, "supplState"    # I
    .param p2, "failedAuth"    # Z

    #@0
    .prologue
    .line 3854
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplState:I

    #@2
    if-eq v4, p1, :cond_1

    #@4
    .line 3855
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@7
    move-result-wide v0

    #@8
    .line 3856
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@b
    move-result-wide v2

    #@c
    .line 3857
    .local v2, "uptime":J
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplState:I

    #@e
    if-ltz v4, :cond_0

    #@10
    .line 3858
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@12
    iget v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplState:I

    #@14
    aget-object v4, v4, v5

    #@16
    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@19
    .line 3860
    :cond_0
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplState:I

    #@1b
    .line 3861
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1d
    aget-object v4, v4, p1

    #@1f
    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@22
    .line 3862
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@24
    .line 3863
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@26
    iget v5, v5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@28
    and-int/lit8 v5, v5, -0x10

    #@2a
    .line 3864
    shl-int/lit8 v6, p1, 0x0

    #@2c
    .line 3863
    or-int/2addr v5, v6

    #@2d
    .line 3862
    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@2f
    .line 3867
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    #@32
    .line 3852
    .end local v0    # "elapsedRealtime":J
    .end local v2    # "uptime":J
    :cond_1
    return-void
.end method

.method public prepareForDumpLocked()V
    .locals 0

    #@0
    .prologue
    .line 10070
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->pullPendingStateUpdatesLocked()V

    #@3
    .line 10074
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getStartClockTime()J

    #@6
    .line 10068
    return-void
.end method

.method public pullPendingStateUpdatesLocked()V
    .locals 3

    #@0
    .prologue
    .line 7551
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 7552
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    #@6
    const/4 v2, 0x2

    #@7
    if-ne v1, v2, :cond_1

    #@9
    const/4 v0, 0x1

    #@a
    .line 7553
    .local v0, "screenOn":Z
    :goto_0
    invoke-virtual {p0, v0, v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateDischargeScreenLevelsLocked(ZZ)V

    #@d
    .line 7550
    .end local v0    # "screenOn":Z
    :cond_0
    return-void

    #@e
    .line 7552
    :cond_1
    const/4 v0, 0x0

    #@f
    .restart local v0    # "screenOn":Z
    goto :goto_0
.end method

.method readDailyItemTagDetailsLocked(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/BatteryStats$DailyItem;ZLjava/lang/String;)V
    .locals 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "dit"    # Landroid/os/BatteryStats$DailyItem;
    .param p3, "isCharge"    # Z
    .param p4, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 7154
    const-string/jumbo v8, "n"

    #@3
    const/4 v9, 0x0

    #@4
    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    .line 7155
    .local v2, "numAttr":Ljava/lang/String;
    if-nez v2, :cond_0

    #@a
    .line 7156
    const-string/jumbo v8, "BatteryStatsImpl"

    #@d
    new-instance v9, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v10, "Missing \'n\' attribute at "

    #@15
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v9

    #@19
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@1c
    move-result-object v10

    #@1d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v9

    #@21
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v9

    #@25
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 7157
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@2b
    .line 7158
    return-void

    #@2c
    .line 7160
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2f
    move-result v1

    #@30
    .line 7161
    .local v1, "num":I
    new-instance v4, Landroid/os/BatteryStats$LevelStepTracker;

    #@32
    invoke-direct {v4, v1}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    #@35
    .line 7162
    .local v4, "steps":Landroid/os/BatteryStats$LevelStepTracker;
    if-eqz p3, :cond_3

    #@37
    .line 7163
    iput-object v4, p2, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    #@39
    .line 7167
    :goto_0
    const/4 v0, 0x0

    #@3a
    .line 7168
    .local v0, "i":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@3d
    move-result v3

    #@3e
    .line 7170
    .local v3, "outerDepth":I
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@41
    move-result v6

    #@42
    .local v6, "type":I
    const/4 v8, 0x1

    #@43
    if-eq v6, v8, :cond_5

    #@45
    .line 7171
    const/4 v8, 0x3

    #@46
    if-ne v6, v8, :cond_2

    #@48
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@4b
    move-result v8

    #@4c
    if-le v8, v3, :cond_5

    #@4e
    .line 7172
    :cond_2
    const/4 v8, 0x3

    #@4f
    if-eq v6, v8, :cond_1

    #@51
    const/4 v8, 0x4

    #@52
    if-eq v6, v8, :cond_1

    #@54
    .line 7176
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@57
    move-result-object v5

    #@58
    .line 7177
    .local v5, "tagName":Ljava/lang/String;
    const-string/jumbo v8, "s"

    #@5b
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5e
    move-result v8

    #@5f
    if-eqz v8, :cond_4

    #@61
    .line 7178
    if-ge v0, v1, :cond_1

    #@63
    .line 7179
    const-string/jumbo v8, "v"

    #@66
    const/4 v9, 0x0

    #@67
    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@6a
    move-result-object v7

    #@6b
    .line 7180
    .local v7, "valueAttr":Ljava/lang/String;
    if-eqz v7, :cond_1

    #@6d
    .line 7181
    invoke-virtual {v4, v0, v7}, Landroid/os/BatteryStats$LevelStepTracker;->decodeEntryAt(ILjava/lang/String;)V

    #@70
    .line 7182
    add-int/lit8 v0, v0, 0x1

    #@72
    goto :goto_1

    #@73
    .line 7165
    .end local v0    # "i":I
    .end local v3    # "outerDepth":I
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "type":I
    .end local v7    # "valueAttr":Ljava/lang/String;
    :cond_3
    iput-object v4, p2, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    #@75
    goto :goto_0

    #@76
    .line 7186
    .restart local v0    # "i":I
    .restart local v3    # "outerDepth":I
    .restart local v5    # "tagName":Ljava/lang/String;
    .restart local v6    # "type":I
    :cond_4
    const-string/jumbo v8, "BatteryStatsImpl"

    #@79
    new-instance v9, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    const-string/jumbo v10, "Unknown element under <"

    #@81
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v9

    #@85
    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v9

    #@89
    const-string/jumbo v10, ">: "

    #@8c
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v9

    #@90
    .line 7187
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@93
    move-result-object v10

    #@94
    .line 7186
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v9

    #@98
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v9

    #@9c
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9f
    .line 7188
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@a2
    goto :goto_1

    #@a3
    .line 7191
    .end local v5    # "tagName":Ljava/lang/String;
    :cond_5
    iput v0, v4, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    #@a5
    .line 7153
    return-void
.end method

.method readDailyItemTagLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 7100
    new-instance v1, Landroid/os/BatteryStats$DailyItem;

    #@2
    invoke-direct {v1}, Landroid/os/BatteryStats$DailyItem;-><init>()V

    #@5
    .line 7101
    .local v1, "dit":Landroid/os/BatteryStats$DailyItem;
    const-string/jumbo v7, "start"

    #@8
    const/4 v8, 0x0

    #@9
    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 7102
    .local v0, "attr":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@f
    .line 7103
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@12
    move-result-wide v8

    #@13
    iput-wide v8, v1, Landroid/os/BatteryStats$DailyItem;->mStartTime:J

    #@15
    .line 7105
    :cond_0
    const-string/jumbo v7, "end"

    #@18
    const/4 v8, 0x0

    #@19
    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    .line 7106
    if-eqz v0, :cond_1

    #@1f
    .line 7107
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@22
    move-result-wide v8

    #@23
    iput-wide v8, v1, Landroid/os/BatteryStats$DailyItem;->mEndTime:J

    #@25
    .line 7109
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@28
    move-result v2

    #@29
    .line 7111
    .local v2, "outerDepth":I
    :cond_2
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@2c
    move-result v5

    #@2d
    .local v5, "type":I
    const/4 v7, 0x1

    #@2e
    if-eq v5, v7, :cond_b

    #@30
    .line 7112
    const/4 v7, 0x3

    #@31
    if-ne v5, v7, :cond_3

    #@33
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@36
    move-result v7

    #@37
    if-le v7, v2, :cond_b

    #@39
    .line 7113
    :cond_3
    const/4 v7, 0x3

    #@3a
    if-eq v5, v7, :cond_2

    #@3c
    const/4 v7, 0x4

    #@3d
    if-eq v5, v7, :cond_2

    #@3f
    .line 7117
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    .line 7118
    .local v4, "tagName":Ljava/lang/String;
    const-string/jumbo v7, "dis"

    #@46
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v7

    #@4a
    if-eqz v7, :cond_4

    #@4c
    .line 7119
    const-string/jumbo v7, "dis"

    #@4f
    const/4 v8, 0x0

    #@50
    invoke-virtual {p0, p1, v1, v8, v7}, Lcom/android/internal/os/BatteryStatsImpl;->readDailyItemTagDetailsLocked(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/BatteryStats$DailyItem;ZLjava/lang/String;)V

    #@53
    goto :goto_0

    #@54
    .line 7120
    :cond_4
    const-string/jumbo v7, "chg"

    #@57
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5a
    move-result v7

    #@5b
    if-eqz v7, :cond_5

    #@5d
    .line 7121
    const-string/jumbo v7, "chg"

    #@60
    const/4 v8, 0x1

    #@61
    invoke-virtual {p0, p1, v1, v8, v7}, Lcom/android/internal/os/BatteryStatsImpl;->readDailyItemTagDetailsLocked(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/BatteryStats$DailyItem;ZLjava/lang/String;)V

    #@64
    goto :goto_0

    #@65
    .line 7122
    :cond_5
    const-string/jumbo v7, "upd"

    #@68
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6b
    move-result v7

    #@6c
    if-eqz v7, :cond_8

    #@6e
    .line 7123
    iget-object v7, v1, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    #@70
    if-nez v7, :cond_6

    #@72
    .line 7124
    new-instance v7, Ljava/util/ArrayList;

    #@74
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@77
    iput-object v7, v1, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    #@79
    .line 7126
    :cond_6
    new-instance v3, Landroid/os/BatteryStats$PackageChange;

    #@7b
    invoke-direct {v3}, Landroid/os/BatteryStats$PackageChange;-><init>()V

    #@7e
    .line 7127
    .local v3, "pc":Landroid/os/BatteryStats$PackageChange;
    const/4 v7, 0x1

    #@7f
    iput-boolean v7, v3, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    #@81
    .line 7128
    const-string/jumbo v7, "pkg"

    #@84
    const/4 v8, 0x0

    #@85
    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@88
    move-result-object v7

    #@89
    iput-object v7, v3, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    #@8b
    .line 7129
    const-string/jumbo v7, "ver"

    #@8e
    const/4 v8, 0x0

    #@8f
    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@92
    move-result-object v6

    #@93
    .line 7130
    .local v6, "verStr":Ljava/lang/String;
    if-eqz v6, :cond_7

    #@95
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@98
    move-result v7

    #@99
    :goto_1
    iput v7, v3, Landroid/os/BatteryStats$PackageChange;->mVersionCode:I

    #@9b
    .line 7131
    iget-object v7, v1, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    #@9d
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a0
    .line 7132
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@a3
    goto :goto_0

    #@a4
    .line 7130
    :cond_7
    const/4 v7, 0x0

    #@a5
    goto :goto_1

    #@a6
    .line 7133
    .end local v3    # "pc":Landroid/os/BatteryStats$PackageChange;
    .end local v6    # "verStr":Ljava/lang/String;
    :cond_8
    const-string/jumbo v7, "rem"

    #@a9
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ac
    move-result v7

    #@ad
    if-eqz v7, :cond_a

    #@af
    .line 7134
    iget-object v7, v1, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    #@b1
    if-nez v7, :cond_9

    #@b3
    .line 7135
    new-instance v7, Ljava/util/ArrayList;

    #@b5
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@b8
    iput-object v7, v1, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    #@ba
    .line 7137
    :cond_9
    new-instance v3, Landroid/os/BatteryStats$PackageChange;

    #@bc
    invoke-direct {v3}, Landroid/os/BatteryStats$PackageChange;-><init>()V

    #@bf
    .line 7138
    .restart local v3    # "pc":Landroid/os/BatteryStats$PackageChange;
    const/4 v7, 0x0

    #@c0
    iput-boolean v7, v3, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    #@c2
    .line 7139
    const-string/jumbo v7, "pkg"

    #@c5
    const/4 v8, 0x0

    #@c6
    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@c9
    move-result-object v7

    #@ca
    iput-object v7, v3, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    #@cc
    .line 7140
    iget-object v7, v1, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    #@ce
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d1
    .line 7141
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@d4
    goto/16 :goto_0

    #@d6
    .line 7143
    .end local v3    # "pc":Landroid/os/BatteryStats$PackageChange;
    :cond_a
    const-string/jumbo v7, "BatteryStatsImpl"

    #@d9
    new-instance v8, Ljava/lang/StringBuilder;

    #@db
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@de
    const-string/jumbo v9, "Unknown element under <item>: "

    #@e1
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v8

    #@e5
    .line 7144
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@e8
    move-result-object v9

    #@e9
    .line 7143
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v8

    #@ed
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f0
    move-result-object v8

    #@f1
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f4
    .line 7145
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@f7
    goto/16 :goto_0

    #@f9
    .line 7148
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_b
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyItems:Ljava/util/ArrayList;

    #@fb
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@fe
    .line 7099
    return-void
.end method

.method public readDailyStatsLocked()V
    .locals 8

    #@0
    .prologue
    .line 7033
    const-string/jumbo v5, "BatteryStatsImpl"

    #@3
    new-instance v6, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v7, "Reading daily items from "

    #@b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v6

    #@f
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyFile:Lcom/android/internal/os/AtomicFile;

    #@11
    invoke-virtual {v7}, Lcom/android/internal/os/AtomicFile;->getBaseFile()Ljava/io/File;

    #@14
    move-result-object v7

    #@15
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v6

    #@19
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v6

    #@1d
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 7034
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyItems:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    #@25
    .line 7037
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyFile:Lcom/android/internal/os/AtomicFile;

    #@27
    invoke-virtual {v5}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    move-result-object v4

    #@2b
    .line 7042
    .local v4, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@2e
    move-result-object v3

    #@2f
    .line 7043
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@31
    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@34
    move-result-object v5

    #@35
    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@38
    .line 7044
    invoke-direct {p0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->readDailyItemsLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    .line 7048
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@3e
    .line 7032
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_0
    return-void

    #@3f
    .line 7038
    .end local v4    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    #@40
    .line 7039
    .local v0, "e":Ljava/io/FileNotFoundException;
    return-void

    #@41
    .line 7049
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    #@42
    .local v1, "e":Ljava/io/IOException;
    goto :goto_0

    #@43
    .line 7045
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v2

    #@44
    .line 7048
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    #@47
    goto :goto_0

    #@48
    .line 7049
    :catch_3
    move-exception v1

    #@49
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_0

    #@4a
    .line 7046
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v5

    #@4b
    .line 7048
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    #@4e
    .line 7046
    :goto_1
    throw v5

    #@4f
    .line 7049
    :catch_4
    move-exception v1

    #@50
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 9760
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->readFromParcelLocked(Landroid/os/Parcel;)V

    #@3
    .line 9759
    return-void
.end method

.method readFromParcelLocked(Landroid/os/Parcel;)V
    .locals 24
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 9764
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v16

    #@4
    .line 9765
    .local v16, "magic":I
    const v4, -0x458a8b8b

    #@7
    move/from16 v0, v16

    #@9
    if-eq v0, v4, :cond_0

    #@b
    .line 9766
    new-instance v4, Landroid/os/ParcelFormatException;

    #@d
    new-instance v5, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v6, "Bad magic number: #"

    #@15
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v5

    #@19
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1c
    move-result-object v6

    #@1d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v5

    #@21
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    invoke-direct {v4, v5}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    #@28
    throw v4

    #@29
    .line 9769
    :cond_0
    const/4 v4, 0x0

    #@2a
    move-object/from16 v0, p0

    #@2c
    move-object/from16 v1, p1

    #@2e
    invoke-virtual {v0, v1, v4}, Lcom/android/internal/os/BatteryStatsImpl;->readHistory(Landroid/os/Parcel;Z)V

    #@31
    .line 9771
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@34
    move-result v4

    #@35
    move-object/from16 v0, p0

    #@37
    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    #@39
    .line 9772
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@3c
    move-result-wide v4

    #@3d
    move-object/from16 v0, p0

    #@3f
    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mStartClockTime:J

    #@41
    .line 9773
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@44
    move-result-object v4

    #@45
    move-object/from16 v0, p0

    #@47
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mStartPlatformVersion:Ljava/lang/String;

    #@49
    .line 9774
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4c
    move-result-object v4

    #@4d
    move-object/from16 v0, p0

    #@4f
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mEndPlatformVersion:Ljava/lang/String;

    #@51
    .line 9775
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@54
    move-result-wide v4

    #@55
    move-object/from16 v0, p0

    #@57
    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUptime:J

    #@59
    .line 9776
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@5c
    move-result-wide v4

    #@5d
    move-object/from16 v0, p0

    #@5f
    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUptimeStart:J

    #@61
    .line 9777
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@64
    move-result-wide v4

    #@65
    move-object/from16 v0, p0

    #@67
    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtime:J

    #@69
    .line 9778
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@6c
    move-result-wide v4

    #@6d
    move-object/from16 v0, p0

    #@6f
    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtimeStart:J

    #@71
    .line 9779
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@74
    move-result v4

    #@75
    if-eqz v4, :cond_1

    #@77
    const/4 v4, 0x1

    #@78
    :goto_0
    move-object/from16 v0, p0

    #@7a
    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    #@7c
    .line 9780
    const/4 v4, 0x0

    #@7d
    move-object/from16 v0, p0

    #@7f
    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    #@81
    .line 9781
    move-object/from16 v0, p0

    #@83
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@85
    move-object/from16 v0, p1

    #@87
    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->readFromParcel(Landroid/os/Parcel;)V

    #@8a
    .line 9782
    move-object/from16 v0, p0

    #@8c
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@8e
    move-object/from16 v0, p1

    #@90
    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->readFromParcel(Landroid/os/Parcel;)V

    #@93
    .line 9784
    const/4 v4, 0x0

    #@94
    move-object/from16 v0, p0

    #@96
    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    #@98
    .line 9785
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@9a
    move-object/from16 v0, p0

    #@9c
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@9e
    const/4 v5, 0x0

    #@9f
    const/4 v6, -0x1

    #@a0
    const/4 v7, 0x0

    #@a1
    move-object/from16 v9, p1

    #@a3
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@a6
    move-object/from16 v0, p0

    #@a8
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@aa
    .line 9786
    const/4 v12, 0x0

    #@ab
    .local v12, "i":I
    :goto_1
    const/4 v4, 0x5

    #@ac
    if-ge v12, v4, :cond_2

    #@ae
    .line 9787
    move-object/from16 v0, p0

    #@b0
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@b2
    move-object/from16 v23, v0

    #@b4
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@b6
    rsub-int/lit8 v6, v12, -0x64

    #@b8
    move-object/from16 v0, p0

    #@ba
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@bc
    const/4 v5, 0x0

    #@bd
    const/4 v7, 0x0

    #@be
    move-object/from16 v9, p1

    #@c0
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@c3
    aput-object v4, v23, v12

    #@c5
    .line 9786
    add-int/lit8 v12, v12, 0x1

    #@c7
    goto :goto_1

    #@c8
    .line 9779
    .end local v12    # "i":I
    :cond_1
    const/4 v4, 0x0

    #@c9
    goto :goto_0

    #@ca
    .line 9790
    .restart local v12    # "i":I
    :cond_2
    const/4 v4, 0x0

    #@cb
    move-object/from16 v0, p0

    #@cd
    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractive:Z

    #@cf
    .line 9791
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@d1
    move-object/from16 v0, p0

    #@d3
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@d5
    const/4 v5, 0x0

    #@d6
    const/16 v6, -0xa

    #@d8
    const/4 v7, 0x0

    #@d9
    move-object/from16 v9, p1

    #@db
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@de
    move-object/from16 v0, p0

    #@e0
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@e2
    .line 9792
    const/4 v4, 0x0

    #@e3
    move-object/from16 v0, p0

    #@e5
    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOn:Z

    #@e7
    .line 9793
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@e9
    move-object/from16 v0, p0

    #@eb
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@ed
    const/4 v5, 0x0

    #@ee
    const/4 v6, -0x2

    #@ef
    const/4 v7, 0x0

    #@f0
    move-object/from16 v9, p1

    #@f2
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@f5
    move-object/from16 v0, p0

    #@f7
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@f9
    .line 9794
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@fb
    move-object/from16 v0, p0

    #@fd
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@ff
    const/4 v5, 0x0

    #@100
    const/16 v6, -0xb

    #@102
    const/4 v7, 0x0

    #@103
    move-object/from16 v9, p1

    #@105
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@108
    move-object/from16 v0, p0

    #@10a
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@10c
    .line 9795
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@10e
    move-object/from16 v0, p0

    #@110
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@112
    const/4 v5, 0x0

    #@113
    const/16 v6, -0xc

    #@115
    const/4 v7, 0x0

    #@116
    move-object/from16 v9, p1

    #@118
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@11b
    move-object/from16 v0, p0

    #@11d
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@11f
    .line 9796
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@121
    move-object/from16 v0, p0

    #@123
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@125
    const/4 v5, 0x0

    #@126
    const/4 v6, -0x3

    #@127
    const/4 v7, 0x0

    #@128
    move-object/from16 v9, p1

    #@12a
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@12d
    move-object/from16 v0, p0

    #@12f
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@131
    .line 9797
    const/4 v12, 0x0

    #@132
    :goto_2
    const/4 v4, 0x5

    #@133
    if-ge v12, v4, :cond_3

    #@135
    .line 9798
    move-object/from16 v0, p0

    #@137
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@139
    move-object/from16 v23, v0

    #@13b
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@13d
    rsub-int v6, v12, -0xc8

    #@13f
    .line 9799
    move-object/from16 v0, p0

    #@141
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@143
    .line 9798
    const/4 v5, 0x0

    #@144
    .line 9799
    const/4 v7, 0x0

    #@145
    move-object/from16 v9, p1

    #@147
    .line 9798
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@14a
    aput-object v4, v23, v12

    #@14c
    .line 9797
    add-int/lit8 v12, v12, 0x1

    #@14e
    goto :goto_2

    #@14f
    .line 9801
    :cond_3
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@151
    move-object/from16 v0, p0

    #@153
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@155
    const/4 v5, 0x0

    #@156
    const/16 v6, -0xc7

    #@158
    const/4 v7, 0x0

    #@159
    move-object/from16 v9, p1

    #@15b
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@15e
    move-object/from16 v0, p0

    #@160
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@162
    .line 9802
    const/4 v12, 0x0

    #@163
    :goto_3
    const/16 v4, 0x11

    #@165
    if-ge v12, v4, :cond_4

    #@167
    .line 9803
    move-object/from16 v0, p0

    #@169
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@16b
    move-object/from16 v23, v0

    #@16d
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@16f
    rsub-int v6, v12, -0x12c

    #@171
    .line 9804
    move-object/from16 v0, p0

    #@173
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@175
    .line 9803
    const/4 v5, 0x0

    #@176
    .line 9804
    const/4 v7, 0x0

    #@177
    move-object/from16 v9, p1

    #@179
    .line 9803
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@17c
    aput-object v4, v23, v12

    #@17e
    .line 9802
    add-int/lit8 v12, v12, 0x1

    #@180
    goto :goto_3

    #@181
    .line 9806
    :cond_4
    const/4 v12, 0x0

    #@182
    :goto_4
    const/4 v4, 0x4

    #@183
    if-ge v12, v4, :cond_5

    #@185
    .line 9807
    move-object/from16 v0, p0

    #@187
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@189
    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@18b
    move-object/from16 v0, p0

    #@18d
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@18f
    move-object/from16 v0, p1

    #@191
    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@194
    aput-object v5, v4, v12

    #@196
    .line 9808
    move-object/from16 v0, p0

    #@198
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@19a
    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@19c
    move-object/from16 v0, p0

    #@19e
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@1a0
    move-object/from16 v0, p1

    #@1a2
    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@1a5
    aput-object v5, v4, v12

    #@1a7
    .line 9806
    add-int/lit8 v12, v12, 0x1

    #@1a9
    goto :goto_4

    #@1aa
    .line 9810
    :cond_5
    sget v4, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    #@1ac
    move-object/from16 v0, p0

    #@1ae
    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioPowerState:I

    #@1b0
    .line 9811
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1b2
    move-object/from16 v0, p0

    #@1b4
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@1b6
    const/4 v5, 0x0

    #@1b7
    const/16 v6, -0x190

    #@1b9
    const/4 v7, 0x0

    #@1ba
    move-object/from16 v9, p1

    #@1bc
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@1bf
    move-object/from16 v0, p0

    #@1c1
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1c3
    .line 9812
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1c5
    move-object/from16 v0, p0

    #@1c7
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@1c9
    const/4 v5, 0x0

    #@1ca
    const/16 v6, -0x191

    #@1cc
    const/4 v7, 0x0

    #@1cd
    move-object/from16 v9, p1

    #@1cf
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@1d2
    move-object/from16 v0, p0

    #@1d4
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1d6
    .line 9814
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@1d8
    move-object/from16 v0, p0

    #@1da
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@1dc
    move-object/from16 v0, p1

    #@1de
    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@1e1
    move-object/from16 v0, p0

    #@1e3
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@1e5
    .line 9815
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@1e7
    move-object/from16 v0, p0

    #@1e9
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@1eb
    move-object/from16 v0, p1

    #@1ed
    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@1f0
    move-object/from16 v0, p0

    #@1f2
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@1f4
    .line 9816
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@1f6
    move-object/from16 v0, p0

    #@1f8
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@1fa
    move-object/from16 v0, p1

    #@1fc
    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@1ff
    move-object/from16 v0, p0

    #@201
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@203
    .line 9817
    sget v4, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    #@205
    move-object/from16 v0, p0

    #@207
    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRadioPowerState:I

    #@209
    .line 9818
    const/4 v4, 0x0

    #@20a
    move-object/from16 v0, p0

    #@20c
    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOn:Z

    #@20e
    .line 9819
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@210
    move-object/from16 v0, p0

    #@212
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@214
    const/4 v5, 0x0

    #@215
    const/4 v6, -0x4

    #@216
    const/4 v7, 0x0

    #@217
    move-object/from16 v9, p1

    #@219
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@21c
    move-object/from16 v0, p0

    #@21e
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@220
    .line 9820
    const/4 v4, 0x0

    #@221
    move-object/from16 v0, p0

    #@223
    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunning:Z

    #@225
    .line 9821
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@227
    move-object/from16 v0, p0

    #@229
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@22b
    const/4 v5, 0x0

    #@22c
    const/4 v6, -0x5

    #@22d
    const/4 v7, 0x0

    #@22e
    move-object/from16 v9, p1

    #@230
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@233
    move-object/from16 v0, p0

    #@235
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@237
    .line 9822
    const/4 v12, 0x0

    #@238
    :goto_5
    const/16 v4, 0x8

    #@23a
    if-ge v12, v4, :cond_6

    #@23c
    .line 9823
    move-object/from16 v0, p0

    #@23e
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@240
    move-object/from16 v23, v0

    #@242
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@244
    rsub-int v6, v12, -0x258

    #@246
    .line 9824
    move-object/from16 v0, p0

    #@248
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@24a
    .line 9823
    const/4 v5, 0x0

    #@24b
    .line 9824
    const/4 v7, 0x0

    #@24c
    move-object/from16 v9, p1

    #@24e
    .line 9823
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@251
    aput-object v4, v23, v12

    #@253
    .line 9822
    add-int/lit8 v12, v12, 0x1

    #@255
    goto :goto_5

    #@256
    .line 9826
    :cond_6
    const/4 v12, 0x0

    #@257
    :goto_6
    const/16 v4, 0xd

    #@259
    if-ge v12, v4, :cond_7

    #@25b
    .line 9827
    move-object/from16 v0, p0

    #@25d
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@25f
    move-object/from16 v23, v0

    #@261
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@263
    rsub-int v6, v12, -0x2bc

    #@265
    .line 9828
    move-object/from16 v0, p0

    #@267
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@269
    .line 9827
    const/4 v5, 0x0

    #@26a
    .line 9828
    const/4 v7, 0x0

    #@26b
    move-object/from16 v9, p1

    #@26d
    .line 9827
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@270
    aput-object v4, v23, v12

    #@272
    .line 9826
    add-int/lit8 v12, v12, 0x1

    #@274
    goto :goto_6

    #@275
    .line 9830
    :cond_7
    const/4 v12, 0x0

    #@276
    :goto_7
    const/4 v4, 0x5

    #@277
    if-ge v12, v4, :cond_8

    #@279
    .line 9831
    move-object/from16 v0, p0

    #@27b
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@27d
    move-object/from16 v23, v0

    #@27f
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@281
    rsub-int v6, v12, -0x320

    #@283
    .line 9832
    move-object/from16 v0, p0

    #@285
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@287
    .line 9831
    const/4 v5, 0x0

    #@288
    .line 9832
    const/4 v7, 0x0

    #@289
    move-object/from16 v9, p1

    #@28b
    .line 9831
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@28e
    aput-object v4, v23, v12

    #@290
    .line 9830
    add-int/lit8 v12, v12, 0x1

    #@292
    goto :goto_7

    #@293
    .line 9834
    :cond_8
    const/4 v12, 0x0

    #@294
    :goto_8
    const/4 v4, 0x4

    #@295
    if-ge v12, v4, :cond_9

    #@297
    .line 9835
    move-object/from16 v0, p0

    #@299
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@29b
    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@29d
    move-object/from16 v0, p0

    #@29f
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@2a1
    move-object/from16 v0, p1

    #@2a3
    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@2a6
    aput-object v5, v4, v12

    #@2a8
    .line 9834
    add-int/lit8 v12, v12, 0x1

    #@2aa
    goto :goto_8

    #@2ab
    .line 9837
    :cond_9
    const/4 v12, 0x0

    #@2ac
    :goto_9
    const/4 v4, 0x4

    #@2ad
    if-ge v12, v4, :cond_a

    #@2af
    .line 9838
    move-object/from16 v0, p0

    #@2b1
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2b3
    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2b5
    move-object/from16 v0, p0

    #@2b7
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@2b9
    move-object/from16 v0, p1

    #@2bb
    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@2be
    aput-object v5, v4, v12

    #@2c0
    .line 9837
    add-int/lit8 v12, v12, 0x1

    #@2c2
    goto :goto_9

    #@2c3
    .line 9841
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@2c6
    move-result v4

    #@2c7
    if-eqz v4, :cond_c

    #@2c9
    const/4 v4, 0x1

    #@2ca
    :goto_a
    move-object/from16 v0, p0

    #@2cc
    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHasWifiEnergyReporting:Z

    #@2ce
    .line 9842
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@2d1
    move-result v4

    #@2d2
    if-eqz v4, :cond_d

    #@2d4
    const/4 v4, 0x1

    #@2d5
    :goto_b
    move-object/from16 v0, p0

    #@2d7
    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHasBluetoothEnergyReporting:Z

    #@2d9
    .line 9843
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@2dc
    move-result v4

    #@2dd
    move-object/from16 v0, p0

    #@2df
    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNumConnectivityChange:I

    #@2e1
    .line 9844
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@2e4
    move-result v4

    #@2e5
    move-object/from16 v0, p0

    #@2e7
    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLoadedNumConnectivityChange:I

    #@2e9
    .line 9845
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@2ec
    move-result v4

    #@2ed
    move-object/from16 v0, p0

    #@2ef
    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggedNumConnectivityChange:I

    #@2f1
    .line 9846
    const/4 v4, 0x0

    #@2f2
    move-object/from16 v0, p0

    #@2f4
    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnNesting:I

    #@2f6
    .line 9847
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2f8
    move-object/from16 v0, p0

    #@2fa
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@2fc
    const/4 v6, 0x0

    #@2fd
    const/4 v7, -0x7

    #@2fe
    const/4 v8, 0x0

    #@2ff
    invoke-direct {v4, v6, v7, v8, v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@302
    move-object/from16 v0, p0

    #@304
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@306
    .line 9848
    const/4 v4, 0x0

    #@307
    move-object/from16 v0, p0

    #@309
    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnNesting:I

    #@30b
    .line 9849
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@30d
    move-object/from16 v0, p0

    #@30f
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@311
    const/4 v6, 0x0

    #@312
    const/4 v7, -0x8

    #@313
    const/4 v8, 0x0

    #@314
    invoke-direct {v4, v6, v7, v8, v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@317
    move-object/from16 v0, p0

    #@319
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@31b
    .line 9850
    const/4 v4, 0x0

    #@31c
    move-object/from16 v0, p0

    #@31e
    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnNesting:I

    #@320
    .line 9851
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@322
    move-object/from16 v0, p0

    #@324
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@326
    const/4 v5, 0x0

    #@327
    const/16 v6, -0x9

    #@329
    const/4 v7, 0x0

    #@32a
    move-object/from16 v9, p1

    #@32c
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@32f
    move-object/from16 v0, p0

    #@331
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@333
    .line 9852
    const/4 v4, 0x0

    #@334
    move-object/from16 v0, p0

    #@336
    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnNesting:I

    #@338
    .line 9853
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@33a
    move-object/from16 v0, p0

    #@33c
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@33e
    const/4 v5, 0x0

    #@33f
    const/16 v6, -0xd

    #@341
    const/4 v7, 0x0

    #@342
    move-object/from16 v9, p1

    #@344
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@347
    move-object/from16 v0, p0

    #@349
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@34b
    .line 9854
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@34e
    move-result v4

    #@34f
    move-object/from16 v0, p0

    #@351
    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    #@353
    .line 9855
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@356
    move-result v4

    #@357
    move-object/from16 v0, p0

    #@359
    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargePlugLevel:I

    #@35b
    .line 9856
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@35e
    move-result v4

    #@35f
    move-object/from16 v0, p0

    #@361
    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    #@363
    .line 9857
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@366
    move-result v4

    #@367
    move-object/from16 v0, p0

    #@369
    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    #@36b
    .line 9858
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@36e
    move-result v4

    #@36f
    move-object/from16 v0, p0

    #@371
    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLowDischargeAmountSinceCharge:I

    #@373
    .line 9859
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@376
    move-result v4

    #@377
    move-object/from16 v0, p0

    #@379
    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHighDischargeAmountSinceCharge:I

    #@37b
    .line 9860
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@37e
    move-result v4

    #@37f
    move-object/from16 v0, p0

    #@381
    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOn:I

    #@383
    .line 9861
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@386
    move-result v4

    #@387
    move-object/from16 v0, p0

    #@389
    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOnSinceCharge:I

    #@38b
    .line 9862
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@38e
    move-result v4

    #@38f
    move-object/from16 v0, p0

    #@391
    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOff:I

    #@393
    .line 9863
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@396
    move-result v4

    #@397
    move-object/from16 v0, p0

    #@399
    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOffSinceCharge:I

    #@39b
    .line 9864
    move-object/from16 v0, p0

    #@39d
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@39f
    move-object/from16 v0, p1

    #@3a1
    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$LevelStepTracker;->readFromParcel(Landroid/os/Parcel;)V

    #@3a4
    .line 9865
    move-object/from16 v0, p0

    #@3a6
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@3a8
    move-object/from16 v0, p1

    #@3aa
    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$LevelStepTracker;->readFromParcel(Landroid/os/Parcel;)V

    #@3ad
    .line 9866
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@3b0
    move-result-wide v4

    #@3b1
    move-object/from16 v0, p0

    #@3b3
    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWriteTime:J

    #@3b5
    .line 9868
    move-object/from16 v0, p0

    #@3b7
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    #@3b9
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    #@3bc
    .line 9869
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@3bf
    move-result v10

    #@3c0
    .line 9870
    .local v10, "NKW":I
    const/4 v13, 0x0

    #@3c1
    .local v13, "ikw":I
    :goto_c
    if-ge v13, v10, :cond_e

    #@3c3
    .line 9871
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@3c6
    move-result v4

    #@3c7
    if-eqz v4, :cond_b

    #@3c9
    .line 9872
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3cc
    move-result-object v22

    #@3cd
    .line 9873
    .local v22, "wakelockName":Ljava/lang/String;
    new-instance v15, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    #@3cf
    move-object/from16 v0, p0

    #@3d1
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@3d3
    move-object/from16 v0, p1

    #@3d5
    invoke-direct {v15, v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@3d8
    .line 9874
    .local v15, "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    move-object/from16 v0, p0

    #@3da
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    #@3dc
    move-object/from16 v0, v22

    #@3de
    invoke-virtual {v4, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3e1
    .line 9870
    .end local v15    # "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    .end local v22    # "wakelockName":Ljava/lang/String;
    :cond_b
    add-int/lit8 v13, v13, 0x1

    #@3e3
    goto :goto_c

    #@3e4
    .line 9841
    .end local v10    # "NKW":I
    .end local v13    # "ikw":I
    :cond_c
    const/4 v4, 0x0

    #@3e5
    goto/16 :goto_a

    #@3e7
    .line 9842
    :cond_d
    const/4 v4, 0x0

    #@3e8
    goto/16 :goto_b

    #@3ea
    .line 9878
    .restart local v10    # "NKW":I
    .restart local v13    # "ikw":I
    :cond_e
    move-object/from16 v0, p0

    #@3ec
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    #@3ee
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    #@3f1
    .line 9879
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@3f4
    move-result v11

    #@3f5
    .line 9880
    .local v11, "NWR":I
    const/4 v14, 0x0

    #@3f6
    .local v14, "iwr":I
    :goto_d
    if-ge v14, v11, :cond_10

    #@3f8
    .line 9881
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@3fb
    move-result v4

    #@3fc
    if-eqz v4, :cond_f

    #@3fe
    .line 9882
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@401
    move-result-object v18

    #@402
    .line 9883
    .local v18, "reasonName":Ljava/lang/String;
    new-instance v19, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    #@404
    move-object/from16 v0, p0

    #@406
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@408
    move-object/from16 v0, v19

    #@40a
    move-object/from16 v1, p1

    #@40c
    invoke-direct {v0, v4, v1}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@40f
    .line 9884
    .local v19, "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    move-object/from16 v0, p0

    #@411
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    #@413
    move-object/from16 v0, v18

    #@415
    move-object/from16 v1, v19

    #@417
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@41a
    .line 9880
    .end local v18    # "reasonName":Ljava/lang/String;
    .end local v19    # "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_f
    add-int/lit8 v14, v14, 0x1

    #@41c
    goto :goto_d

    #@41d
    .line 9888
    :cond_10
    move-object/from16 v0, p0

    #@41f
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    #@421
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    #@424
    .line 9889
    move-object/from16 v0, p0

    #@426
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFullTimers:Ljava/util/ArrayList;

    #@428
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    #@42b
    .line 9890
    move-object/from16 v0, p0

    #@42d
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWindowTimers:Ljava/util/ArrayList;

    #@42f
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    #@432
    .line 9891
    move-object/from16 v0, p0

    #@434
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    #@436
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    #@439
    .line 9892
    move-object/from16 v0, p0

    #@43b
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    #@43d
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    #@440
    .line 9893
    move-object/from16 v0, p0

    #@442
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    #@444
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    #@447
    .line 9894
    move-object/from16 v0, p0

    #@449
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiBatchedScanTimers:Landroid/util/SparseArray;

    #@44b
    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    #@44e
    .line 9895
    move-object/from16 v0, p0

    #@450
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    #@452
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    #@455
    .line 9896
    move-object/from16 v0, p0

    #@457
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioTurnedOnTimers:Ljava/util/ArrayList;

    #@459
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    #@45c
    .line 9897
    move-object/from16 v0, p0

    #@45e
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoTurnedOnTimers:Ljava/util/ArrayList;

    #@460
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    #@463
    .line 9898
    move-object/from16 v0, p0

    #@465
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightTurnedOnTimers:Ljava/util/ArrayList;

    #@467
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    #@46a
    .line 9899
    move-object/from16 v0, p0

    #@46c
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraTurnedOnTimers:Ljava/util/ArrayList;

    #@46e
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    #@471
    .line 9901
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@474
    move-result v4

    #@475
    sput v4, Lcom/android/internal/os/BatteryStatsImpl;->sNumSpeedSteps:I

    #@477
    .line 9903
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@47a
    move-result v17

    #@47b
    .line 9904
    .local v17, "numUids":I
    move-object/from16 v0, p0

    #@47d
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    #@47f
    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    #@482
    .line 9905
    const/4 v12, 0x0

    #@483
    :goto_e
    move/from16 v0, v17

    #@485
    if-ge v12, v0, :cond_11

    #@487
    .line 9906
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@48a
    move-result v21

    #@48b
    .line 9907
    .local v21, "uid":I
    new-instance v20, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@48d
    move-object/from16 v0, v20

    #@48f
    move-object/from16 v1, p0

    #@491
    move/from16 v2, v21

    #@493
    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;-><init>(Lcom/android/internal/os/BatteryStatsImpl;I)V

    #@496
    .line 9908
    .local v20, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    move-object/from16 v0, p0

    #@498
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@49a
    move-object/from16 v0, p0

    #@49c
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@49e
    move-object/from16 v0, v20

    #@4a0
    move-object/from16 v1, p1

    #@4a2
    invoke-virtual {v0, v4, v5, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@4a5
    .line 9909
    move-object/from16 v0, p0

    #@4a7
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    #@4a9
    move/from16 v0, v21

    #@4ab
    move-object/from16 v1, v20

    #@4ad
    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@4b0
    .line 9905
    add-int/lit8 v12, v12, 0x1

    #@4b2
    goto :goto_e

    #@4b3
    .line 9763
    .end local v20    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v21    # "uid":I
    :cond_11
    return-void
.end method

.method readHistory(Landroid/os/Parcel;Z)V
    .locals 18
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "andOldHistory"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ParcelFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 8962
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@3
    move-result-wide v4

    #@4
    .line 8964
    .local v4, "historyBaseTime":J
    move-object/from16 v0, p0

    #@6
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    #@8
    const/4 v15, 0x0

    #@9
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->setDataSize(I)V

    #@c
    .line 8965
    move-object/from16 v0, p0

    #@e
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    #@10
    const/4 v15, 0x0

    #@11
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->setDataPosition(I)V

    #@14
    .line 8966
    move-object/from16 v0, p0

    #@16
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    #@18
    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    #@1b
    .line 8967
    const/4 v14, 0x0

    #@1c
    move-object/from16 v0, p0

    #@1e
    iput v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    #@20
    .line 8968
    const/4 v14, 0x0

    #@21
    move-object/from16 v0, p0

    #@23
    iput v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryTagChars:I

    #@25
    .line 8970
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v8

    #@29
    .line 8971
    .local v8, "numTags":I
    const/4 v6, 0x0

    #@2a
    .local v6, "i":I
    :goto_0
    if-ge v6, v8, :cond_2

    #@2c
    .line 8972
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@2f
    move-result v7

    #@30
    .line 8973
    .local v7, "idx":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@33
    move-result-object v9

    #@34
    .line 8974
    .local v9, "str":Ljava/lang/String;
    if-nez v9, :cond_0

    #@36
    .line 8975
    new-instance v14, Landroid/os/ParcelFormatException;

    #@38
    const-string/jumbo v15, "null history tag string"

    #@3b
    invoke-direct {v14, v15}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v14

    #@3f
    .line 8977
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@42
    move-result v13

    #@43
    .line 8978
    .local v13, "uid":I
    new-instance v12, Landroid/os/BatteryStats$HistoryTag;

    #@45
    invoke-direct {v12}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    #@48
    .line 8979
    .local v12, "tag":Landroid/os/BatteryStats$HistoryTag;
    iput-object v9, v12, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    #@4a
    .line 8980
    iput v13, v12, Landroid/os/BatteryStats$HistoryTag;->uid:I

    #@4c
    .line 8981
    iput v7, v12, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    #@4e
    .line 8982
    move-object/from16 v0, p0

    #@50
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    #@52
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@55
    move-result-object v15

    #@56
    invoke-virtual {v14, v12, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@59
    .line 8983
    move-object/from16 v0, p0

    #@5b
    iget v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    #@5d
    if-lt v7, v14, :cond_1

    #@5f
    .line 8984
    add-int/lit8 v14, v7, 0x1

    #@61
    move-object/from16 v0, p0

    #@63
    iput v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNextHistoryTagIdx:I

    #@65
    .line 8986
    :cond_1
    move-object/from16 v0, p0

    #@67
    iget v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryTagChars:I

    #@69
    iget-object v15, v12, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    #@6b
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    #@6e
    move-result v15

    #@6f
    add-int/lit8 v15, v15, 0x1

    #@71
    add-int/2addr v14, v15

    #@72
    move-object/from16 v0, p0

    #@74
    iput v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNumHistoryTagChars:I

    #@76
    .line 8971
    add-int/lit8 v6, v6, 0x1

    #@78
    goto :goto_0

    #@79
    .line 8989
    .end local v7    # "idx":I
    .end local v9    # "str":Ljava/lang/String;
    .end local v12    # "tag":Landroid/os/BatteryStats$HistoryTag;
    .end local v13    # "uid":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@7c
    move-result v2

    #@7d
    .line 8990
    .local v2, "bufSize":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    #@80
    move-result v3

    #@81
    .line 8991
    .local v3, "curPos":I
    const/high16 v14, 0xf0000

    #@83
    if-lt v2, v14, :cond_3

    #@85
    .line 8992
    new-instance v14, Landroid/os/ParcelFormatException;

    #@87
    new-instance v15, Ljava/lang/StringBuilder;

    #@89
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@8c
    const-string/jumbo v16, "File corrupt: history data buffer too large "

    #@8f
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v15

    #@93
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@96
    move-result-object v15

    #@97
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object v15

    #@9b
    invoke-direct {v14, v15}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    #@9e
    throw v14

    #@9f
    .line 8994
    :cond_3
    and-int/lit8 v14, v2, -0x4

    #@a1
    if-eq v14, v2, :cond_4

    #@a3
    .line 8995
    new-instance v14, Landroid/os/ParcelFormatException;

    #@a5
    new-instance v15, Ljava/lang/StringBuilder;

    #@a7
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@aa
    const-string/jumbo v16, "File corrupt: history data buffer not aligned "

    #@ad
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v15

    #@b1
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v15

    #@b5
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v15

    #@b9
    invoke-direct {v14, v15}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    #@bc
    throw v14

    #@bd
    .line 9000
    :cond_4
    move-object/from16 v0, p0

    #@bf
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    #@c1
    move-object/from16 v0, p1

    #@c3
    invoke-virtual {v14, v0, v3, v2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    #@c6
    .line 9001
    add-int v14, v3, v2

    #@c8
    move-object/from16 v0, p1

    #@ca
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->setDataPosition(I)V

    #@cd
    .line 9004
    if-eqz p2, :cond_5

    #@cf
    .line 9005
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/os/BatteryStatsImpl;->readOldHistory(Landroid/os/Parcel;)V

    #@d2
    .line 9014
    :cond_5
    move-object/from16 v0, p0

    #@d4
    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    #@d6
    .line 9024
    move-object/from16 v0, p0

    #@d8
    iget-wide v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    #@da
    const-wide/16 v16, 0x0

    #@dc
    cmp-long v14, v14, v16

    #@de
    if-lez v14, :cond_6

    #@e0
    .line 9025
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@e3
    move-result-wide v10

    #@e4
    .line 9026
    .local v10, "oldnow":J
    move-object/from16 v0, p0

    #@e6
    iget-wide v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    #@e8
    sub-long/2addr v14, v10

    #@e9
    const-wide/16 v16, 0x1

    #@eb
    add-long v14, v14, v16

    #@ed
    move-object/from16 v0, p0

    #@ef
    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    #@f1
    .line 8961
    .end local v10    # "oldnow":J
    :cond_6
    return-void
.end method

.method public readHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;)V
    .locals 18
    .param p1, "src"    # Landroid/os/Parcel;
    .param p2, "cur"    # Landroid/os/BatteryStats$HistoryItem;

    #@0
    .prologue
    .line 2086
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v8

    #@4
    .line 2087
    .local v8, "firstToken":I
    const v14, 0x7ffff

    #@7
    and-int v5, v8, v14

    #@9
    .line 2088
    .local v5, "deltaTimeToken":I
    const/4 v14, 0x0

    #@a
    move-object/from16 v0, p2

    #@c
    iput-byte v14, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@e
    .line 2089
    const/4 v14, 0x1

    #@f
    move-object/from16 v0, p2

    #@11
    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    #@13
    .line 2093
    const v14, 0x7fffd

    #@16
    if-ge v5, v14, :cond_1

    #@18
    .line 2094
    move-object/from16 v0, p2

    #@1a
    iget-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    #@1c
    int-to-long v0, v5

    #@1d
    move-wide/from16 v16, v0

    #@1f
    add-long v14, v14, v16

    #@21
    move-object/from16 v0, p2

    #@23
    iput-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    #@25
    .line 2114
    :goto_0
    const/high16 v14, 0x80000

    #@27
    and-int/2addr v14, v8

    #@28
    if-eqz v14, :cond_4

    #@2a
    .line 2115
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@2d
    move-result v2

    #@2e
    .line 2116
    .local v2, "batteryLevelInt":I
    shr-int/lit8 v14, v2, 0x19

    #@30
    and-int/lit8 v14, v14, 0x7f

    #@32
    int-to-byte v14, v14

    #@33
    move-object/from16 v0, p2

    #@35
    iput-byte v14, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    #@37
    .line 2117
    shl-int/lit8 v14, v2, 0x7

    #@39
    shr-int/lit8 v14, v14, 0x15

    #@3b
    int-to-short v14, v14

    #@3c
    move-object/from16 v0, p2

    #@3e
    iput-short v14, v0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    #@40
    .line 2118
    and-int/lit16 v14, v2, 0x3fff

    #@42
    int-to-char v14, v14

    #@43
    move-object/from16 v0, p2

    #@45
    iput-char v14, v0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    #@47
    .line 2119
    move-object/from16 v0, p2

    #@49
    iget v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    #@4b
    add-int/lit8 v14, v14, 0x1

    #@4d
    move-object/from16 v0, p2

    #@4f
    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    #@51
    .line 2129
    :goto_1
    const/high16 v14, 0x100000

    #@53
    and-int/2addr v14, v8

    #@54
    if-eqz v14, :cond_5

    #@56
    .line 2130
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@59
    move-result v11

    #@5a
    .line 2131
    .local v11, "stateInt":I
    const/high16 v14, -0x1000000

    #@5c
    and-int/2addr v14, v8

    #@5d
    const v15, 0xffffff

    #@60
    and-int/2addr v15, v11

    #@61
    or-int/2addr v14, v15

    #@62
    move-object/from16 v0, p2

    #@64
    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@66
    .line 2132
    shr-int/lit8 v14, v11, 0x1d

    #@68
    and-int/lit8 v14, v14, 0x7

    #@6a
    int-to-byte v14, v14

    #@6b
    move-object/from16 v0, p2

    #@6d
    iput-byte v14, v0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    #@6f
    .line 2134
    shr-int/lit8 v14, v11, 0x1a

    #@71
    and-int/lit8 v14, v14, 0x7

    #@73
    int-to-byte v14, v14

    #@74
    move-object/from16 v0, p2

    #@76
    iput-byte v14, v0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    #@78
    .line 2136
    shr-int/lit8 v14, v11, 0x18

    #@7a
    and-int/lit8 v14, v14, 0x3

    #@7c
    int-to-byte v14, v14

    #@7d
    move-object/from16 v0, p2

    #@7f
    iput-byte v14, v0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    #@81
    .line 2138
    move-object/from16 v0, p2

    #@83
    iget-byte v14, v0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    #@85
    packed-switch v14, :pswitch_data_0

    #@88
    .line 2149
    :goto_2
    move-object/from16 v0, p2

    #@8a
    iget v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    #@8c
    add-int/lit8 v14, v14, 0x1

    #@8e
    move-object/from16 v0, p2

    #@90
    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    #@92
    .line 2160
    .end local v11    # "stateInt":I
    :goto_3
    const/high16 v14, 0x200000

    #@94
    and-int/2addr v14, v8

    #@95
    if-eqz v14, :cond_0

    #@97
    .line 2161
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@9a
    move-result v14

    #@9b
    move-object/from16 v0, p2

    #@9d
    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@9f
    .line 2166
    :cond_0
    const/high16 v14, 0x400000

    #@a1
    and-int/2addr v14, v8

    #@a2
    if-eqz v14, :cond_8

    #@a4
    .line 2167
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@a7
    move-result v10

    #@a8
    .line 2168
    .local v10, "indexes":I
    const v14, 0xffff

    #@ab
    and-int v12, v10, v14

    #@ad
    .line 2169
    .local v12, "wakeLockIndex":I
    shr-int/lit8 v14, v10, 0x10

    #@af
    const v15, 0xffff

    #@b2
    and-int v13, v14, v15

    #@b4
    .line 2170
    .local v13, "wakeReasonIndex":I
    const v14, 0xffff

    #@b7
    if-eq v12, v14, :cond_6

    #@b9
    .line 2171
    move-object/from16 v0, p2

    #@bb
    iget-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@bd
    move-object/from16 v0, p2

    #@bf
    iput-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@c1
    .line 2172
    move-object/from16 v0, p2

    #@c3
    iget-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@c5
    move-object/from16 v0, p0

    #@c7
    invoke-direct {v0, v12, v14}, Lcom/android/internal/os/BatteryStatsImpl;->readHistoryTag(ILandroid/os/BatteryStats$HistoryTag;)V

    #@ca
    .line 2178
    :goto_4
    const v14, 0xffff

    #@cd
    if-eq v13, v14, :cond_7

    #@cf
    .line 2179
    move-object/from16 v0, p2

    #@d1
    iget-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@d3
    move-object/from16 v0, p2

    #@d5
    iput-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@d7
    .line 2180
    move-object/from16 v0, p2

    #@d9
    iget-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@db
    move-object/from16 v0, p0

    #@dd
    invoke-direct {v0, v13, v14}, Lcom/android/internal/os/BatteryStatsImpl;->readHistoryTag(ILandroid/os/BatteryStats$HistoryTag;)V

    #@e0
    .line 2186
    :goto_5
    move-object/from16 v0, p2

    #@e2
    iget v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    #@e4
    add-int/lit8 v14, v14, 0x1

    #@e6
    move-object/from16 v0, p2

    #@e8
    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    #@ea
    .line 2192
    .end local v10    # "indexes":I
    .end local v12    # "wakeLockIndex":I
    .end local v13    # "wakeReasonIndex":I
    :goto_6
    const/high16 v14, 0x800000

    #@ec
    and-int/2addr v14, v8

    #@ed
    if-eqz v14, :cond_9

    #@ef
    .line 2193
    move-object/from16 v0, p2

    #@f1
    iget-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    #@f3
    move-object/from16 v0, p2

    #@f5
    iput-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    #@f7
    .line 2194
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@fa
    move-result v3

    #@fb
    .line 2195
    .local v3, "codeAndIndex":I
    const v14, 0xffff

    #@fe
    and-int/2addr v14, v3

    #@ff
    move-object/from16 v0, p2

    #@101
    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    #@103
    .line 2196
    shr-int/lit8 v14, v3, 0x10

    #@105
    const v15, 0xffff

    #@108
    and-int v9, v14, v15

    #@10a
    .line 2197
    .local v9, "index":I
    move-object/from16 v0, p2

    #@10c
    iget-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    #@10e
    move-object/from16 v0, p0

    #@110
    invoke-direct {v0, v9, v14}, Lcom/android/internal/os/BatteryStatsImpl;->readHistoryTag(ILandroid/os/BatteryStats$HistoryTag;)V

    #@113
    .line 2198
    move-object/from16 v0, p2

    #@115
    iget v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    #@117
    add-int/lit8 v14, v14, 0x1

    #@119
    move-object/from16 v0, p2

    #@11b
    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    #@11d
    .line 2206
    .end local v3    # "codeAndIndex":I
    .end local v9    # "index":I
    :goto_7
    and-int/lit8 v14, v2, 0x1

    #@11f
    if-eqz v14, :cond_a

    #@121
    .line 2207
    move-object/from16 v0, p0

    #@123
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@125
    move-object/from16 v0, p2

    #@127
    iput-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@129
    .line 2208
    move-object/from16 v0, p2

    #@12b
    iget-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@12d
    move-object/from16 v0, p1

    #@12f
    invoke-virtual {v14, v0}, Landroid/os/BatteryStats$HistoryStepDetails;->readFromParcel(Landroid/os/Parcel;)V

    #@132
    .line 2085
    :goto_8
    return-void

    #@133
    .line 2095
    .end local v2    # "batteryLevelInt":I
    :cond_1
    const v14, 0x7fffd

    #@136
    if-ne v5, v14, :cond_2

    #@138
    .line 2096
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@13b
    move-result-wide v14

    #@13c
    move-object/from16 v0, p2

    #@13e
    iput-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    #@140
    .line 2097
    move-object/from16 v0, p2

    #@142
    iget v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    #@144
    add-int/lit8 v14, v14, 0x2

    #@146
    move-object/from16 v0, p2

    #@148
    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    #@14a
    .line 2099
    move-object/from16 v0, p2

    #@14c
    move-object/from16 v1, p1

    #@14e
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryItem;->readFromParcel(Landroid/os/Parcel;)V

    #@151
    .line 2100
    return-void

    #@152
    .line 2101
    :cond_2
    const v14, 0x7fffe

    #@155
    if-ne v5, v14, :cond_3

    #@157
    .line 2102
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@15a
    move-result v4

    #@15b
    .line 2103
    .local v4, "delta":I
    move-object/from16 v0, p2

    #@15d
    iget-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    #@15f
    int-to-long v0, v4

    #@160
    move-wide/from16 v16, v0

    #@162
    add-long v14, v14, v16

    #@164
    move-object/from16 v0, p2

    #@166
    iput-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    #@168
    .line 2104
    move-object/from16 v0, p2

    #@16a
    iget v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    #@16c
    add-int/lit8 v14, v14, 0x1

    #@16e
    move-object/from16 v0, p2

    #@170
    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    #@172
    goto/16 :goto_0

    #@174
    .line 2107
    .end local v4    # "delta":I
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@177
    move-result-wide v6

    #@178
    .line 2109
    .local v6, "delta":J
    move-object/from16 v0, p2

    #@17a
    iget-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    #@17c
    add-long/2addr v14, v6

    #@17d
    move-object/from16 v0, p2

    #@17f
    iput-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    #@181
    .line 2110
    move-object/from16 v0, p2

    #@183
    iget v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    #@185
    add-int/lit8 v14, v14, 0x2

    #@187
    move-object/from16 v0, p2

    #@189
    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    #@18b
    goto/16 :goto_0

    #@18d
    .line 2126
    .end local v6    # "delta":J
    :cond_4
    const/4 v2, 0x0

    #@18e
    .restart local v2    # "batteryLevelInt":I
    goto/16 :goto_1

    #@190
    .line 2140
    .restart local v11    # "stateInt":I
    :pswitch_0
    const/4 v14, 0x1

    #@191
    move-object/from16 v0, p2

    #@193
    iput-byte v14, v0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    #@195
    goto/16 :goto_2

    #@197
    .line 2143
    :pswitch_1
    const/4 v14, 0x2

    #@198
    move-object/from16 v0, p2

    #@19a
    iput-byte v14, v0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    #@19c
    goto/16 :goto_2

    #@19e
    .line 2146
    :pswitch_2
    const/4 v14, 0x4

    #@19f
    move-object/from16 v0, p2

    #@1a1
    iput-byte v14, v0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    #@1a3
    goto/16 :goto_2

    #@1a5
    .line 2157
    .end local v11    # "stateInt":I
    :cond_5
    const/high16 v14, -0x1000000

    #@1a7
    and-int/2addr v14, v8

    #@1a8
    move-object/from16 v0, p2

    #@1aa
    iget v15, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@1ac
    const v16, 0xffffff

    #@1af
    and-int v15, v15, v16

    #@1b1
    or-int/2addr v14, v15

    #@1b2
    move-object/from16 v0, p2

    #@1b4
    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@1b6
    goto/16 :goto_3

    #@1b8
    .line 2176
    .restart local v10    # "indexes":I
    .restart local v12    # "wakeLockIndex":I
    .restart local v13    # "wakeReasonIndex":I
    :cond_6
    const/4 v14, 0x0

    #@1b9
    move-object/from16 v0, p2

    #@1bb
    iput-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@1bd
    goto/16 :goto_4

    #@1bf
    .line 2184
    :cond_7
    const/4 v14, 0x0

    #@1c0
    move-object/from16 v0, p2

    #@1c2
    iput-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@1c4
    goto/16 :goto_5

    #@1c6
    .line 2188
    .end local v10    # "indexes":I
    .end local v12    # "wakeLockIndex":I
    .end local v13    # "wakeReasonIndex":I
    :cond_8
    const/4 v14, 0x0

    #@1c7
    move-object/from16 v0, p2

    #@1c9
    iput-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@1cb
    .line 2189
    const/4 v14, 0x0

    #@1cc
    move-object/from16 v0, p2

    #@1ce
    iput-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@1d0
    goto/16 :goto_6

    #@1d2
    .line 2203
    :cond_9
    const/4 v14, 0x0

    #@1d3
    move-object/from16 v0, p2

    #@1d5
    iput v14, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    #@1d7
    goto/16 :goto_7

    #@1d9
    .line 2210
    :cond_a
    const/4 v14, 0x0

    #@1da
    move-object/from16 v0, p2

    #@1dc
    iput-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@1de
    goto/16 :goto_8

    #@1e0
    .line 2138
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public readLocked()V
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 8911
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyFile:Lcom/android/internal/os/AtomicFile;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 8912
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->readDailyStatsLocked()V

    #@8
    .line 8915
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    #@a
    if-nez v1, :cond_1

    #@c
    .line 8916
    const-string/jumbo v1, "BatteryStats"

    #@f
    const-string/jumbo v6, "readLocked: no file associated with this instance"

    #@12
    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 8917
    return-void

    #@16
    .line 8920
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    #@18
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    #@1b
    .line 8923
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    #@1d
    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    #@20
    move-result-object v8

    #@21
    .line 8924
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    #@24
    move-result v1

    #@25
    if-nez v1, :cond_2

    #@27
    .line 8925
    return-void

    #@28
    .line 8927
    :cond_2
    new-instance v11, Ljava/io/FileInputStream;

    #@2a
    invoke-direct {v11, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@2d
    .line 8929
    .local v11, "stream":Ljava/io/FileInputStream;
    invoke-static {v11}, Lcom/android/internal/os/BatteryStatsHelper;->readFully(Ljava/io/FileInputStream;)[B

    #@30
    move-result-object v10

    #@31
    .line 8930
    .local v10, "raw":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@34
    move-result-object v9

    #@35
    .line 8931
    .local v9, "in":Landroid/os/Parcel;
    array-length v1, v10

    #@36
    const/4 v6, 0x0

    #@37
    invoke-virtual {v9, v10, v6, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    #@3a
    .line 8932
    const/4 v1, 0x0

    #@3b
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@3e
    .line 8933
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    #@41
    .line 8935
    invoke-virtual {p0, v9}, Lcom/android/internal/os/BatteryStatsImpl;->readSummaryFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@44
    .line 8941
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "in":Landroid/os/Parcel;
    .end local v10    # "raw":[B
    .end local v11    # "stream":Ljava/io/FileInputStream;
    :goto_0
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    #@46
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mEndPlatformVersion:Ljava/lang/String;

    #@48
    .line 8943
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    #@4a
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    #@4d
    move-result v1

    #@4e
    if-lez v1, :cond_3

    #@50
    .line 8944
    const/4 v1, 0x1

    #@51
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    #@53
    .line 8945
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@56
    move-result-wide v2

    #@57
    .line 8946
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@5a
    move-result-wide v4

    #@5b
    .line 8950
    .local v4, "uptime":J
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@5d
    const/4 v6, 0x4

    #@5e
    move-object v1, p0

    #@5f
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    #@62
    move-object v1, p0

    #@63
    move v6, v12

    #@64
    .line 8951
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->startRecordingHistory(JJZ)V

    #@67
    .line 8954
    .end local v2    # "elapsedRealtime":J
    .end local v4    # "uptime":J
    :cond_3
    invoke-virtual {p0, v12}, Lcom/android/internal/os/BatteryStatsImpl;->recordDailyStatsIfNeededLocked(Z)V

    #@6a
    .line 8910
    return-void

    #@6b
    .line 8936
    :catch_0
    move-exception v0

    #@6c
    .line 8937
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "BatteryStats"

    #@6f
    const-string/jumbo v6, "Error reading battery statistics"

    #@72
    invoke-static {v1, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@75
    .line 8938
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl;->resetAllStatsLocked()V

    #@78
    goto :goto_0
.end method

.method readOldHistory(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 9038
    return-void
.end method

.method public readSummaryFromParcel(Landroid/os/Parcel;)V
    .locals 43
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ParcelFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 9093
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v38

    #@4
    .line 9094
    .local v38, "version":I
    const/16 v40, 0x82

    #@6
    move/from16 v0, v38

    #@8
    move/from16 v1, v40

    #@a
    if-eq v0, v1, :cond_0

    #@c
    .line 9095
    const-string/jumbo v40, "BatteryStats"

    #@f
    new-instance v41, Ljava/lang/StringBuilder;

    #@11
    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v42, "readFromParcel: version got "

    #@17
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v41

    #@1b
    move-object/from16 v0, v41

    #@1d
    move/from16 v1, v38

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v41

    #@23
    .line 9096
    const-string/jumbo v42, ", expected "

    #@26
    .line 9095
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v41

    #@2a
    .line 9096
    const/16 v42, 0x82

    #@2c
    .line 9095
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v41

    #@30
    .line 9096
    const-string/jumbo v42, "; erasing old stats"

    #@33
    .line 9095
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v41

    #@37
    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v41

    #@3b
    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 9097
    return-void

    #@3f
    .line 9100
    :cond_0
    const/16 v40, 0x1

    #@41
    move-object/from16 v0, p0

    #@43
    move-object/from16 v1, p1

    #@45
    move/from16 v2, v40

    #@47
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->readHistory(Landroid/os/Parcel;Z)V

    #@4a
    .line 9102
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@4d
    move-result v40

    #@4e
    move/from16 v0, v40

    #@50
    move-object/from16 v1, p0

    #@52
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    #@54
    .line 9103
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@57
    move-result-wide v40

    #@58
    move-wide/from16 v0, v40

    #@5a
    move-object/from16 v2, p0

    #@5c
    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mUptime:J

    #@5e
    .line 9104
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@61
    move-result-wide v40

    #@62
    move-wide/from16 v0, v40

    #@64
    move-object/from16 v2, p0

    #@66
    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mRealtime:J

    #@68
    .line 9105
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@6b
    move-result-wide v40

    #@6c
    move-wide/from16 v0, v40

    #@6e
    move-object/from16 v2, p0

    #@70
    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mStartClockTime:J

    #@72
    .line 9106
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@75
    move-result-object v40

    #@76
    move-object/from16 v0, v40

    #@78
    move-object/from16 v1, p0

    #@7a
    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mStartPlatformVersion:Ljava/lang/String;

    #@7c
    .line 9107
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7f
    move-result-object v40

    #@80
    move-object/from16 v0, v40

    #@82
    move-object/from16 v1, p0

    #@84
    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mEndPlatformVersion:Ljava/lang/String;

    #@86
    .line 9108
    move-object/from16 v0, p0

    #@88
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@8a
    move-object/from16 v40, v0

    #@8c
    move-object/from16 v0, v40

    #@8e
    move-object/from16 v1, p1

    #@90
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->readSummaryFromParcel(Landroid/os/Parcel;)V

    #@93
    .line 9109
    move-object/from16 v0, p0

    #@95
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@97
    move-object/from16 v40, v0

    #@99
    move-object/from16 v0, v40

    #@9b
    move-object/from16 v1, p1

    #@9d
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->readSummaryFromParcel(Landroid/os/Parcel;)V

    #@a0
    .line 9110
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@a3
    move-result v40

    #@a4
    move/from16 v0, v40

    #@a6
    move-object/from16 v1, p0

    #@a8
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    #@aa
    .line 9111
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@ad
    move-result v40

    #@ae
    move/from16 v0, v40

    #@b0
    move-object/from16 v1, p0

    #@b2
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargePlugLevel:I

    #@b4
    .line 9112
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@b7
    move-result v40

    #@b8
    move/from16 v0, v40

    #@ba
    move-object/from16 v1, p0

    #@bc
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    #@be
    .line 9113
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@c1
    move-result v40

    #@c2
    move/from16 v0, v40

    #@c4
    move-object/from16 v1, p0

    #@c6
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    #@c8
    .line 9114
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@cb
    move-result v40

    #@cc
    move/from16 v0, v40

    #@ce
    move-object/from16 v1, p0

    #@d0
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLowDischargeAmountSinceCharge:I

    #@d2
    .line 9115
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@d5
    move-result v40

    #@d6
    move/from16 v0, v40

    #@d8
    move-object/from16 v1, p0

    #@da
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mHighDischargeAmountSinceCharge:I

    #@dc
    .line 9116
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@df
    move-result v40

    #@e0
    move/from16 v0, v40

    #@e2
    move-object/from16 v1, p0

    #@e4
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOnSinceCharge:I

    #@e6
    .line 9117
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@e9
    move-result v40

    #@ea
    move/from16 v0, v40

    #@ec
    move-object/from16 v1, p0

    #@ee
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOffSinceCharge:I

    #@f0
    .line 9118
    move-object/from16 v0, p0

    #@f2
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@f4
    move-object/from16 v40, v0

    #@f6
    move-object/from16 v0, v40

    #@f8
    move-object/from16 v1, p1

    #@fa
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;->readFromParcel(Landroid/os/Parcel;)V

    #@fd
    .line 9119
    move-object/from16 v0, p0

    #@ff
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@101
    move-object/from16 v40, v0

    #@103
    move-object/from16 v0, v40

    #@105
    move-object/from16 v1, p1

    #@107
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;->readFromParcel(Landroid/os/Parcel;)V

    #@10a
    .line 9120
    move-object/from16 v0, p0

    #@10c
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@10e
    move-object/from16 v40, v0

    #@110
    move-object/from16 v0, v40

    #@112
    move-object/from16 v1, p1

    #@114
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;->readFromParcel(Landroid/os/Parcel;)V

    #@117
    .line 9121
    move-object/from16 v0, p0

    #@119
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@11b
    move-object/from16 v40, v0

    #@11d
    move-object/from16 v0, v40

    #@11f
    move-object/from16 v1, p1

    #@121
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;->readFromParcel(Landroid/os/Parcel;)V

    #@124
    .line 9122
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@127
    move-result v7

    #@128
    .line 9123
    .local v7, "NPKG":I
    if-lez v7, :cond_2

    #@12a
    .line 9124
    new-instance v40, Ljava/util/ArrayList;

    #@12c
    move-object/from16 v0, v40

    #@12e
    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    #@131
    move-object/from16 v0, v40

    #@133
    move-object/from16 v1, p0

    #@135
    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    #@137
    .line 9125
    :goto_0
    if-lez v7, :cond_3

    #@139
    .line 9126
    add-int/lit8 v7, v7, -0x1

    #@13b
    .line 9127
    new-instance v28, Landroid/os/BatteryStats$PackageChange;

    #@13d
    invoke-direct/range {v28 .. v28}, Landroid/os/BatteryStats$PackageChange;-><init>()V

    #@140
    .line 9128
    .local v28, "pc":Landroid/os/BatteryStats$PackageChange;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@143
    move-result-object v40

    #@144
    move-object/from16 v0, v40

    #@146
    move-object/from16 v1, v28

    #@148
    iput-object v0, v1, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    #@14a
    .line 9129
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@14d
    move-result v40

    #@14e
    if-eqz v40, :cond_1

    #@150
    const/16 v40, 0x1

    #@152
    :goto_1
    move/from16 v0, v40

    #@154
    move-object/from16 v1, v28

    #@156
    iput-boolean v0, v1, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    #@158
    .line 9130
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@15b
    move-result v40

    #@15c
    move/from16 v0, v40

    #@15e
    move-object/from16 v1, v28

    #@160
    iput v0, v1, Landroid/os/BatteryStats$PackageChange;->mVersionCode:I

    #@162
    .line 9131
    move-object/from16 v0, p0

    #@164
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    #@166
    move-object/from16 v40, v0

    #@168
    move-object/from16 v0, v40

    #@16a
    move-object/from16 v1, v28

    #@16c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@16f
    goto :goto_0

    #@170
    .line 9129
    :cond_1
    const/16 v40, 0x0

    #@172
    goto :goto_1

    #@173
    .line 9134
    .end local v28    # "pc":Landroid/os/BatteryStats$PackageChange;
    :cond_2
    const/16 v40, 0x0

    #@175
    move-object/from16 v0, v40

    #@177
    move-object/from16 v1, p0

    #@179
    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    #@17b
    .line 9136
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@17e
    move-result-wide v40

    #@17f
    move-wide/from16 v0, v40

    #@181
    move-object/from16 v2, p0

    #@183
    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mDailyStartTime:J

    #@185
    .line 9137
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@188
    move-result-wide v40

    #@189
    move-wide/from16 v0, v40

    #@18b
    move-object/from16 v2, p0

    #@18d
    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mNextMinDailyDeadline:J

    #@18f
    .line 9138
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@192
    move-result-wide v40

    #@193
    move-wide/from16 v0, v40

    #@195
    move-object/from16 v2, p0

    #@197
    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mNextMaxDailyDeadline:J

    #@199
    .line 9140
    move-object/from16 v0, p0

    #@19b
    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    #@19d
    move/from16 v40, v0

    #@19f
    add-int/lit8 v40, v40, 0x1

    #@1a1
    move/from16 v0, v40

    #@1a3
    move-object/from16 v1, p0

    #@1a5
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    #@1a7
    .line 9142
    const/16 v40, 0x0

    #@1a9
    move/from16 v0, v40

    #@1ab
    move-object/from16 v1, p0

    #@1ad
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    #@1af
    .line 9143
    move-object/from16 v0, p0

    #@1b1
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1b3
    move-object/from16 v40, v0

    #@1b5
    move-object/from16 v0, v40

    #@1b7
    move-object/from16 v1, p1

    #@1b9
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@1bc
    .line 9144
    const/4 v15, 0x0

    #@1bd
    .local v15, "i":I
    :goto_2
    const/16 v40, 0x5

    #@1bf
    move/from16 v0, v40

    #@1c1
    if-ge v15, v0, :cond_4

    #@1c3
    .line 9145
    move-object/from16 v0, p0

    #@1c5
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1c7
    move-object/from16 v40, v0

    #@1c9
    aget-object v40, v40, v15

    #@1cb
    move-object/from16 v0, v40

    #@1cd
    move-object/from16 v1, p1

    #@1cf
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@1d2
    .line 9144
    add-int/lit8 v15, v15, 0x1

    #@1d4
    goto :goto_2

    #@1d5
    .line 9147
    :cond_4
    const/16 v40, 0x0

    #@1d7
    move/from16 v0, v40

    #@1d9
    move-object/from16 v1, p0

    #@1db
    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mInteractive:Z

    #@1dd
    .line 9148
    move-object/from16 v0, p0

    #@1df
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1e1
    move-object/from16 v40, v0

    #@1e3
    move-object/from16 v0, v40

    #@1e5
    move-object/from16 v1, p1

    #@1e7
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@1ea
    .line 9149
    const/16 v40, 0x0

    #@1ec
    move/from16 v0, v40

    #@1ee
    move-object/from16 v1, p0

    #@1f0
    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOn:Z

    #@1f2
    .line 9150
    move-object/from16 v0, p0

    #@1f4
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1f6
    move-object/from16 v40, v0

    #@1f8
    move-object/from16 v0, v40

    #@1fa
    move-object/from16 v1, p1

    #@1fc
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@1ff
    .line 9151
    move-object/from16 v0, p0

    #@201
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@203
    move-object/from16 v40, v0

    #@205
    move-object/from16 v0, v40

    #@207
    move-object/from16 v1, p1

    #@209
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@20c
    .line 9152
    move-object/from16 v0, p0

    #@20e
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@210
    move-object/from16 v40, v0

    #@212
    move-object/from16 v0, v40

    #@214
    move-object/from16 v1, p1

    #@216
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@219
    .line 9153
    move-object/from16 v0, p0

    #@21b
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@21d
    move-object/from16 v40, v0

    #@21f
    move-object/from16 v0, v40

    #@221
    move-object/from16 v1, p1

    #@223
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@226
    .line 9154
    const/4 v15, 0x0

    #@227
    :goto_3
    const/16 v40, 0x5

    #@229
    move/from16 v0, v40

    #@22b
    if-ge v15, v0, :cond_5

    #@22d
    .line 9155
    move-object/from16 v0, p0

    #@22f
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@231
    move-object/from16 v40, v0

    #@233
    aget-object v40, v40, v15

    #@235
    move-object/from16 v0, v40

    #@237
    move-object/from16 v1, p1

    #@239
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@23c
    .line 9154
    add-int/lit8 v15, v15, 0x1

    #@23e
    goto :goto_3

    #@23f
    .line 9157
    :cond_5
    move-object/from16 v0, p0

    #@241
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@243
    move-object/from16 v40, v0

    #@245
    move-object/from16 v0, v40

    #@247
    move-object/from16 v1, p1

    #@249
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@24c
    .line 9158
    const/4 v15, 0x0

    #@24d
    :goto_4
    const/16 v40, 0x11

    #@24f
    move/from16 v0, v40

    #@251
    if-ge v15, v0, :cond_6

    #@253
    .line 9159
    move-object/from16 v0, p0

    #@255
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@257
    move-object/from16 v40, v0

    #@259
    aget-object v40, v40, v15

    #@25b
    move-object/from16 v0, v40

    #@25d
    move-object/from16 v1, p1

    #@25f
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@262
    .line 9158
    add-int/lit8 v15, v15, 0x1

    #@264
    goto :goto_4

    #@265
    .line 9161
    :cond_6
    const/4 v15, 0x0

    #@266
    :goto_5
    const/16 v40, 0x4

    #@268
    move/from16 v0, v40

    #@26a
    if-ge v15, v0, :cond_7

    #@26c
    .line 9162
    move-object/from16 v0, p0

    #@26e
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@270
    move-object/from16 v40, v0

    #@272
    aget-object v40, v40, v15

    #@274
    move-object/from16 v0, v40

    #@276
    move-object/from16 v1, p1

    #@278
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@27b
    .line 9163
    move-object/from16 v0, p0

    #@27d
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@27f
    move-object/from16 v40, v0

    #@281
    aget-object v40, v40, v15

    #@283
    move-object/from16 v0, v40

    #@285
    move-object/from16 v1, p1

    #@287
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@28a
    .line 9161
    add-int/lit8 v15, v15, 0x1

    #@28c
    goto :goto_5

    #@28d
    .line 9165
    :cond_7
    sget v40, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    #@28f
    move/from16 v0, v40

    #@291
    move-object/from16 v1, p0

    #@293
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioPowerState:I

    #@295
    .line 9166
    move-object/from16 v0, p0

    #@297
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@299
    move-object/from16 v40, v0

    #@29b
    move-object/from16 v0, v40

    #@29d
    move-object/from16 v1, p1

    #@29f
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@2a2
    .line 9167
    move-object/from16 v0, p0

    #@2a4
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2a6
    move-object/from16 v40, v0

    #@2a8
    move-object/from16 v0, v40

    #@2aa
    move-object/from16 v1, p1

    #@2ac
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@2af
    .line 9168
    move-object/from16 v0, p0

    #@2b1
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2b3
    move-object/from16 v40, v0

    #@2b5
    move-object/from16 v0, v40

    #@2b7
    move-object/from16 v1, p1

    #@2b9
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@2bc
    .line 9169
    move-object/from16 v0, p0

    #@2be
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2c0
    move-object/from16 v40, v0

    #@2c2
    move-object/from16 v0, v40

    #@2c4
    move-object/from16 v1, p1

    #@2c6
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@2c9
    .line 9170
    move-object/from16 v0, p0

    #@2cb
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2cd
    move-object/from16 v40, v0

    #@2cf
    move-object/from16 v0, v40

    #@2d1
    move-object/from16 v1, p1

    #@2d3
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@2d6
    .line 9171
    sget v40, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    #@2d8
    move/from16 v0, v40

    #@2da
    move-object/from16 v1, p0

    #@2dc
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRadioPowerState:I

    #@2de
    .line 9172
    const/16 v40, 0x0

    #@2e0
    move/from16 v0, v40

    #@2e2
    move-object/from16 v1, p0

    #@2e4
    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOn:Z

    #@2e6
    .line 9173
    move-object/from16 v0, p0

    #@2e8
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2ea
    move-object/from16 v40, v0

    #@2ec
    move-object/from16 v0, v40

    #@2ee
    move-object/from16 v1, p1

    #@2f0
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@2f3
    .line 9174
    const/16 v40, 0x0

    #@2f5
    move/from16 v0, v40

    #@2f7
    move-object/from16 v1, p0

    #@2f9
    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunning:Z

    #@2fb
    .line 9175
    move-object/from16 v0, p0

    #@2fd
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2ff
    move-object/from16 v40, v0

    #@301
    move-object/from16 v0, v40

    #@303
    move-object/from16 v1, p1

    #@305
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@308
    .line 9176
    const/4 v15, 0x0

    #@309
    :goto_6
    const/16 v40, 0x8

    #@30b
    move/from16 v0, v40

    #@30d
    if-ge v15, v0, :cond_8

    #@30f
    .line 9177
    move-object/from16 v0, p0

    #@311
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@313
    move-object/from16 v40, v0

    #@315
    aget-object v40, v40, v15

    #@317
    move-object/from16 v0, v40

    #@319
    move-object/from16 v1, p1

    #@31b
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@31e
    .line 9176
    add-int/lit8 v15, v15, 0x1

    #@320
    goto :goto_6

    #@321
    .line 9179
    :cond_8
    const/4 v15, 0x0

    #@322
    :goto_7
    const/16 v40, 0xd

    #@324
    move/from16 v0, v40

    #@326
    if-ge v15, v0, :cond_9

    #@328
    .line 9180
    move-object/from16 v0, p0

    #@32a
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@32c
    move-object/from16 v40, v0

    #@32e
    aget-object v40, v40, v15

    #@330
    move-object/from16 v0, v40

    #@332
    move-object/from16 v1, p1

    #@334
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@337
    .line 9179
    add-int/lit8 v15, v15, 0x1

    #@339
    goto :goto_7

    #@33a
    .line 9182
    :cond_9
    const/4 v15, 0x0

    #@33b
    :goto_8
    const/16 v40, 0x5

    #@33d
    move/from16 v0, v40

    #@33f
    if-ge v15, v0, :cond_a

    #@341
    .line 9183
    move-object/from16 v0, p0

    #@343
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@345
    move-object/from16 v40, v0

    #@347
    aget-object v40, v40, v15

    #@349
    move-object/from16 v0, v40

    #@34b
    move-object/from16 v1, p1

    #@34d
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@350
    .line 9182
    add-int/lit8 v15, v15, 0x1

    #@352
    goto :goto_8

    #@353
    .line 9185
    :cond_a
    const/4 v15, 0x0

    #@354
    :goto_9
    const/16 v40, 0x4

    #@356
    move/from16 v0, v40

    #@358
    if-ge v15, v0, :cond_b

    #@35a
    .line 9186
    move-object/from16 v0, p0

    #@35c
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@35e
    move-object/from16 v40, v0

    #@360
    aget-object v40, v40, v15

    #@362
    move-object/from16 v0, v40

    #@364
    move-object/from16 v1, p1

    #@366
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@369
    .line 9185
    add-int/lit8 v15, v15, 0x1

    #@36b
    goto :goto_9

    #@36c
    .line 9188
    :cond_b
    const/4 v15, 0x0

    #@36d
    :goto_a
    const/16 v40, 0x4

    #@36f
    move/from16 v0, v40

    #@371
    if-ge v15, v0, :cond_c

    #@373
    .line 9189
    move-object/from16 v0, p0

    #@375
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@377
    move-object/from16 v40, v0

    #@379
    aget-object v40, v40, v15

    #@37b
    move-object/from16 v0, v40

    #@37d
    move-object/from16 v1, p1

    #@37f
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@382
    .line 9188
    add-int/lit8 v15, v15, 0x1

    #@384
    goto :goto_a

    #@385
    .line 9192
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@388
    move-result v40

    #@389
    move/from16 v0, v40

    #@38b
    move-object/from16 v1, p0

    #@38d
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLoadedNumConnectivityChange:I

    #@38f
    move/from16 v0, v40

    #@391
    move-object/from16 v1, p0

    #@393
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mNumConnectivityChange:I

    #@395
    .line 9193
    const/16 v40, 0x0

    #@397
    move/from16 v0, v40

    #@399
    move-object/from16 v1, p0

    #@39b
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnNesting:I

    #@39d
    .line 9194
    move-object/from16 v0, p0

    #@39f
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@3a1
    move-object/from16 v40, v0

    #@3a3
    move-object/from16 v0, v40

    #@3a5
    move-object/from16 v1, p1

    #@3a7
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@3aa
    .line 9195
    const/16 v40, 0x0

    #@3ac
    move/from16 v0, v40

    #@3ae
    move-object/from16 v1, p0

    #@3b0
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnNesting:I

    #@3b2
    .line 9196
    move-object/from16 v0, p0

    #@3b4
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@3b6
    move-object/from16 v40, v0

    #@3b8
    move-object/from16 v0, v40

    #@3ba
    move-object/from16 v1, p1

    #@3bc
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@3bf
    .line 9198
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@3c2
    move-result v5

    #@3c3
    .line 9199
    .local v5, "NKW":I
    const/16 v40, 0x2710

    #@3c5
    move/from16 v0, v40

    #@3c7
    if-le v5, v0, :cond_d

    #@3c9
    .line 9200
    new-instance v40, Landroid/os/ParcelFormatException;

    #@3cb
    new-instance v41, Ljava/lang/StringBuilder;

    #@3cd
    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    #@3d0
    const-string/jumbo v42, "File corrupt: too many kernel wake locks "

    #@3d3
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d6
    move-result-object v41

    #@3d7
    move-object/from16 v0, v41

    #@3d9
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3dc
    move-result-object v41

    #@3dd
    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e0
    move-result-object v41

    #@3e1
    invoke-direct/range {v40 .. v41}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    #@3e4
    throw v40

    #@3e5
    .line 9202
    :cond_d
    const/16 v17, 0x0

    #@3e7
    .local v17, "ikw":I
    :goto_b
    move/from16 v0, v17

    #@3e9
    if-ge v0, v5, :cond_f

    #@3eb
    .line 9203
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@3ee
    move-result v40

    #@3ef
    if-eqz v40, :cond_e

    #@3f1
    .line 9204
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3f4
    move-result-object v24

    #@3f5
    .line 9205
    .local v24, "kwltName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3f7
    move-object/from16 v1, v24

    #@3f9
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getKernelWakelockTimerLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    #@3fc
    move-result-object v40

    #@3fd
    move-object/from16 v0, v40

    #@3ff
    move-object/from16 v1, p1

    #@401
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@404
    .line 9202
    .end local v24    # "kwltName":Ljava/lang/String;
    :cond_e
    add-int/lit8 v17, v17, 0x1

    #@406
    goto :goto_b

    #@407
    .line 9209
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@40a
    move-result v13

    #@40b
    .line 9210
    .local v13, "NWR":I
    const/16 v40, 0x2710

    #@40d
    move/from16 v0, v40

    #@40f
    if-le v13, v0, :cond_10

    #@411
    .line 9211
    new-instance v40, Landroid/os/ParcelFormatException;

    #@413
    new-instance v41, Ljava/lang/StringBuilder;

    #@415
    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    #@418
    const-string/jumbo v42, "File corrupt: too many wakeup reasons "

    #@41b
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41e
    move-result-object v41

    #@41f
    move-object/from16 v0, v41

    #@421
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@424
    move-result-object v41

    #@425
    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@428
    move-result-object v41

    #@429
    invoke-direct/range {v40 .. v41}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    #@42c
    throw v40

    #@42d
    .line 9213
    :cond_10
    const/16 v23, 0x0

    #@42f
    .local v23, "iwr":I
    :goto_c
    move/from16 v0, v23

    #@431
    if-ge v0, v13, :cond_12

    #@433
    .line 9214
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@436
    move-result v40

    #@437
    if-eqz v40, :cond_11

    #@439
    .line 9215
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@43c
    move-result-object v31

    #@43d
    .line 9216
    .local v31, "reasonName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@43f
    move-object/from16 v1, v31

    #@441
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getWakeupReasonTimerLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    #@444
    move-result-object v40

    #@445
    move-object/from16 v0, v40

    #@447
    move-object/from16 v1, p1

    #@449
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@44c
    .line 9213
    .end local v31    # "reasonName":Ljava/lang/String;
    :cond_11
    add-int/lit8 v23, v23, 0x1

    #@44e
    goto :goto_c

    #@44f
    .line 9220
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@452
    move-result v40

    #@453
    sput v40, Lcom/android/internal/os/BatteryStatsImpl;->sNumSpeedSteps:I

    #@455
    .line 9221
    sget v40, Lcom/android/internal/os/BatteryStatsImpl;->sNumSpeedSteps:I

    #@457
    if-ltz v40, :cond_13

    #@459
    sget v40, Lcom/android/internal/os/BatteryStatsImpl;->sNumSpeedSteps:I

    #@45b
    const/16 v41, 0x64

    #@45d
    move/from16 v0, v40

    #@45f
    move/from16 v1, v41

    #@461
    if-le v0, v1, :cond_14

    #@463
    .line 9222
    :cond_13
    new-instance v40, Landroid/os/ParcelFormatException;

    #@465
    new-instance v41, Ljava/lang/StringBuilder;

    #@467
    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    #@46a
    const-string/jumbo v42, "Bad speed steps in data: "

    #@46d
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@470
    move-result-object v41

    #@471
    sget v42, Lcom/android/internal/os/BatteryStatsImpl;->sNumSpeedSteps:I

    #@473
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@476
    move-result-object v41

    #@477
    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47a
    move-result-object v41

    #@47b
    invoke-direct/range {v40 .. v41}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    #@47e
    throw v40

    #@47f
    .line 9225
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@482
    move-result v10

    #@483
    .line 9226
    .local v10, "NU":I
    const/16 v40, 0x2710

    #@485
    move/from16 v0, v40

    #@487
    if-le v10, v0, :cond_15

    #@489
    .line 9227
    new-instance v40, Landroid/os/ParcelFormatException;

    #@48b
    new-instance v41, Ljava/lang/StringBuilder;

    #@48d
    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    #@490
    const-string/jumbo v42, "File corrupt: too many uids "

    #@493
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@496
    move-result-object v41

    #@497
    move-object/from16 v0, v41

    #@499
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49c
    move-result-object v41

    #@49d
    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a0
    move-result-object v41

    #@4a1
    invoke-direct/range {v40 .. v41}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    #@4a4
    throw v40

    #@4a5
    .line 9229
    :cond_15
    const/16 v20, 0x0

    #@4a7
    .local v20, "iu":I
    :goto_d
    move/from16 v0, v20

    #@4a9
    if-ge v0, v10, :cond_3d

    #@4ab
    .line 9230
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@4ae
    move-result v37

    #@4af
    .line 9231
    .local v37, "uid":I
    new-instance v36, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@4b1
    move-object/from16 v0, v36

    #@4b3
    move-object/from16 v1, p0

    #@4b5
    move/from16 v2, v37

    #@4b7
    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;-><init>(Lcom/android/internal/os/BatteryStatsImpl;I)V

    #@4ba
    .line 9232
    .local v36, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    move-object/from16 v0, p0

    #@4bc
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    #@4be
    move-object/from16 v40, v0

    #@4c0
    move-object/from16 v0, v40

    #@4c2
    move/from16 v1, v37

    #@4c4
    move-object/from16 v2, v36

    #@4c6
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@4c9
    .line 9234
    const/16 v40, 0x0

    #@4cb
    move/from16 v0, v40

    #@4cd
    move-object/from16 v1, v36

    #@4cf
    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    #@4d1
    .line 9235
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@4d4
    move-result v40

    #@4d5
    if-eqz v40, :cond_16

    #@4d7
    .line 9236
    move-object/from16 v0, v36

    #@4d9
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@4db
    move-object/from16 v40, v0

    #@4dd
    move-object/from16 v0, v40

    #@4df
    move-object/from16 v1, p1

    #@4e1
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@4e4
    .line 9238
    :cond_16
    const/16 v40, 0x0

    #@4e6
    move/from16 v0, v40

    #@4e8
    move-object/from16 v1, v36

    #@4ea
    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    #@4ec
    .line 9239
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@4ef
    move-result v40

    #@4f0
    if-eqz v40, :cond_17

    #@4f2
    .line 9240
    move-object/from16 v0, v36

    #@4f4
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@4f6
    move-object/from16 v40, v0

    #@4f8
    move-object/from16 v0, v40

    #@4fa
    move-object/from16 v1, p1

    #@4fc
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@4ff
    .line 9242
    :cond_17
    const/16 v40, 0x0

    #@501
    move/from16 v0, v40

    #@503
    move-object/from16 v1, v36

    #@505
    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    #@507
    .line 9243
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@50a
    move-result v40

    #@50b
    if-eqz v40, :cond_18

    #@50d
    .line 9244
    move-object/from16 v0, v36

    #@50f
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@511
    move-object/from16 v40, v0

    #@513
    move-object/from16 v0, v40

    #@515
    move-object/from16 v1, p1

    #@517
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@51a
    .line 9246
    :cond_18
    const/16 v40, -0x1

    #@51c
    move/from16 v0, v40

    #@51e
    move-object/from16 v1, v36

    #@520
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    #@522
    .line 9247
    const/4 v15, 0x0

    #@523
    :goto_e
    const/16 v40, 0x5

    #@525
    move/from16 v0, v40

    #@527
    if-ge v15, v0, :cond_1a

    #@529
    .line 9248
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@52c
    move-result v40

    #@52d
    if-eqz v40, :cond_19

    #@52f
    .line 9249
    const/16 v40, 0x0

    #@531
    move-object/from16 v0, v36

    #@533
    move-object/from16 v1, v40

    #@535
    invoke-virtual {v0, v15, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeWifiBatchedScanBin(ILandroid/os/Parcel;)V

    #@538
    .line 9250
    move-object/from16 v0, v36

    #@53a
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@53c
    move-object/from16 v40, v0

    #@53e
    aget-object v40, v40, v15

    #@540
    move-object/from16 v0, v40

    #@542
    move-object/from16 v1, p1

    #@544
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@547
    .line 9247
    :cond_19
    add-int/lit8 v15, v15, 0x1

    #@549
    goto :goto_e

    #@54a
    .line 9253
    :cond_1a
    const/16 v40, 0x0

    #@54c
    move/from16 v0, v40

    #@54e
    move-object/from16 v1, v36

    #@550
    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    #@552
    .line 9254
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@555
    move-result v40

    #@556
    if-eqz v40, :cond_1b

    #@558
    .line 9255
    move-object/from16 v0, v36

    #@55a
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@55c
    move-object/from16 v40, v0

    #@55e
    move-object/from16 v0, v40

    #@560
    move-object/from16 v1, p1

    #@562
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@565
    .line 9257
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@568
    move-result v40

    #@569
    if-eqz v40, :cond_1c

    #@56b
    .line 9258
    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createAudioTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@56e
    move-result-object v40

    #@56f
    move-object/from16 v0, v40

    #@571
    move-object/from16 v1, p1

    #@573
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@576
    .line 9260
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@579
    move-result v40

    #@57a
    if-eqz v40, :cond_1d

    #@57c
    .line 9261
    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createVideoTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@57f
    move-result-object v40

    #@580
    move-object/from16 v0, v40

    #@582
    move-object/from16 v1, p1

    #@584
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@587
    .line 9263
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@58a
    move-result v40

    #@58b
    if-eqz v40, :cond_1e

    #@58d
    .line 9264
    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createFlashlightTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@590
    move-result-object v40

    #@591
    move-object/from16 v0, v40

    #@593
    move-object/from16 v1, p1

    #@595
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@598
    .line 9266
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@59b
    move-result v40

    #@59c
    if-eqz v40, :cond_1f

    #@59e
    .line 9267
    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createCameraTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@5a1
    move-result-object v40

    #@5a2
    move-object/from16 v0, v40

    #@5a4
    move-object/from16 v1, p1

    #@5a6
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@5a9
    .line 9269
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@5ac
    move-result v40

    #@5ad
    if-eqz v40, :cond_20

    #@5af
    .line 9270
    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createForegroundActivityTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@5b2
    move-result-object v40

    #@5b3
    move-object/from16 v0, v40

    #@5b5
    move-object/from16 v1, p1

    #@5b7
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@5ba
    .line 9272
    :cond_20
    const/16 v40, 0x3

    #@5bc
    move/from16 v0, v40

    #@5be
    move-object/from16 v1, v36

    #@5c0
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    #@5c2
    .line 9273
    const/4 v15, 0x0

    #@5c3
    :goto_f
    const/16 v40, 0x3

    #@5c5
    move/from16 v0, v40

    #@5c7
    if-ge v15, v0, :cond_22

    #@5c9
    .line 9274
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@5cc
    move-result v40

    #@5cd
    if-eqz v40, :cond_21

    #@5cf
    .line 9275
    const/16 v40, 0x0

    #@5d1
    move-object/from16 v0, v36

    #@5d3
    move-object/from16 v1, v40

    #@5d5
    invoke-virtual {v0, v15, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeProcessState(ILandroid/os/Parcel;)V

    #@5d8
    .line 9276
    move-object/from16 v0, v36

    #@5da
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@5dc
    move-object/from16 v40, v0

    #@5de
    aget-object v40, v40, v15

    #@5e0
    move-object/from16 v0, v40

    #@5e2
    move-object/from16 v1, p1

    #@5e4
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@5e7
    .line 9273
    :cond_21
    add-int/lit8 v15, v15, 0x1

    #@5e9
    goto :goto_f

    #@5ea
    .line 9279
    :cond_22
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@5ed
    move-result v40

    #@5ee
    if-eqz v40, :cond_23

    #@5f0
    .line 9280
    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createVibratorOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@5f3
    move-result-object v40

    #@5f4
    move-object/from16 v0, v40

    #@5f6
    move-object/from16 v1, p1

    #@5f8
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@5fb
    .line 9283
    :cond_23
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@5fe
    move-result v40

    #@5ff
    if-eqz v40, :cond_25

    #@601
    .line 9284
    move-object/from16 v0, v36

    #@603
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@605
    move-object/from16 v40, v0

    #@607
    if-nez v40, :cond_24

    #@609
    .line 9285
    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->initUserActivityLocked()V

    #@60c
    .line 9287
    :cond_24
    const/4 v15, 0x0

    #@60d
    :goto_10
    const/16 v40, 0x3

    #@60f
    move/from16 v0, v40

    #@611
    if-ge v15, v0, :cond_25

    #@613
    .line 9288
    move-object/from16 v0, v36

    #@615
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@617
    move-object/from16 v40, v0

    #@619
    aget-object v40, v40, v15

    #@61b
    move-object/from16 v0, v40

    #@61d
    move-object/from16 v1, p1

    #@61f
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@622
    .line 9287
    add-int/lit8 v15, v15, 0x1

    #@624
    goto :goto_10

    #@625
    .line 9292
    :cond_25
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@628
    move-result v40

    #@629
    if-eqz v40, :cond_28

    #@62b
    .line 9293
    move-object/from16 v0, v36

    #@62d
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@62f
    move-object/from16 v40, v0

    #@631
    if-nez v40, :cond_26

    #@633
    .line 9294
    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->initNetworkActivityLocked()V

    #@636
    .line 9296
    :cond_26
    const/4 v15, 0x0

    #@637
    :goto_11
    const/16 v40, 0x4

    #@639
    move/from16 v0, v40

    #@63b
    if-ge v15, v0, :cond_27

    #@63d
    .line 9297
    move-object/from16 v0, v36

    #@63f
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@641
    move-object/from16 v40, v0

    #@643
    aget-object v40, v40, v15

    #@645
    move-object/from16 v0, v40

    #@647
    move-object/from16 v1, p1

    #@649
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@64c
    .line 9298
    move-object/from16 v0, v36

    #@64e
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@650
    move-object/from16 v40, v0

    #@652
    aget-object v40, v40, v15

    #@654
    move-object/from16 v0, v40

    #@656
    move-object/from16 v1, p1

    #@658
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@65b
    .line 9296
    add-int/lit8 v15, v15, 0x1

    #@65d
    goto :goto_11

    #@65e
    .line 9300
    :cond_27
    move-object/from16 v0, v36

    #@660
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@662
    move-object/from16 v40, v0

    #@664
    move-object/from16 v0, v40

    #@666
    move-object/from16 v1, p1

    #@668
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@66b
    .line 9301
    move-object/from16 v0, v36

    #@66d
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@66f
    move-object/from16 v40, v0

    #@671
    move-object/from16 v0, v40

    #@673
    move-object/from16 v1, p1

    #@675
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@678
    .line 9304
    :cond_28
    move-object/from16 v0, v36

    #@67a
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@67c
    move-object/from16 v40, v0

    #@67e
    move-object/from16 v0, v40

    #@680
    move-object/from16 v1, p1

    #@682
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@685
    .line 9305
    move-object/from16 v0, v36

    #@687
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@689
    move-object/from16 v40, v0

    #@68b
    move-object/from16 v0, v40

    #@68d
    move-object/from16 v1, p1

    #@68f
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@692
    .line 9306
    move-object/from16 v0, v36

    #@694
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@696
    move-object/from16 v40, v0

    #@698
    move-object/from16 v0, v40

    #@69a
    move-object/from16 v1, p1

    #@69c
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@69f
    .line 9308
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@6a2
    move-result v9

    #@6a3
    .line 9309
    .local v9, "NSB":I
    const/16 v40, 0x64

    #@6a5
    move/from16 v0, v40

    #@6a7
    if-le v9, v0, :cond_29

    #@6a9
    .line 9310
    new-instance v40, Landroid/os/ParcelFormatException;

    #@6ab
    new-instance v41, Ljava/lang/StringBuilder;

    #@6ad
    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    #@6b0
    const-string/jumbo v42, "File corrupt: too many speed bins "

    #@6b3
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b6
    move-result-object v41

    #@6b7
    move-object/from16 v0, v41

    #@6b9
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6bc
    move-result-object v41

    #@6bd
    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c0
    move-result-object v41

    #@6c1
    invoke-direct/range {v40 .. v41}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    #@6c4
    throw v40

    #@6c5
    .line 9313
    :cond_29
    new-array v0, v9, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@6c7
    move-object/from16 v40, v0

    #@6c9
    move-object/from16 v0, v40

    #@6cb
    move-object/from16 v1, v36

    #@6cd
    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@6cf
    .line 9314
    const/4 v15, 0x0

    #@6d0
    :goto_12
    if-ge v15, v9, :cond_2b

    #@6d2
    .line 9315
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@6d5
    move-result v40

    #@6d6
    if-eqz v40, :cond_2a

    #@6d8
    .line 9316
    move-object/from16 v0, v36

    #@6da
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@6dc
    move-object/from16 v40, v0

    #@6de
    new-instance v41, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@6e0
    move-object/from16 v0, p0

    #@6e2
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@6e4
    move-object/from16 v42, v0

    #@6e6
    invoke-direct/range {v41 .. v42}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@6e9
    aput-object v41, v40, v15

    #@6eb
    .line 9317
    move-object/from16 v0, v36

    #@6ed
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@6ef
    move-object/from16 v40, v0

    #@6f1
    aget-object v40, v40, v15

    #@6f3
    move-object/from16 v0, v40

    #@6f5
    move-object/from16 v1, p1

    #@6f7
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@6fa
    .line 9314
    :cond_2a
    add-int/lit8 v15, v15, 0x1

    #@6fc
    goto :goto_12

    #@6fd
    .line 9321
    :cond_2b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@700
    move-result v11

    #@701
    .line 9322
    .local v11, "NW":I
    const/16 v40, 0x64

    #@703
    move/from16 v0, v40

    #@705
    if-le v11, v0, :cond_2c

    #@707
    .line 9323
    new-instance v40, Landroid/os/ParcelFormatException;

    #@709
    new-instance v41, Ljava/lang/StringBuilder;

    #@70b
    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    #@70e
    const-string/jumbo v42, "File corrupt: too many wake locks "

    #@711
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@714
    move-result-object v41

    #@715
    move-object/from16 v0, v41

    #@717
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@71a
    move-result-object v41

    #@71b
    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71e
    move-result-object v41

    #@71f
    invoke-direct/range {v40 .. v41}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    #@722
    throw v40

    #@723
    .line 9325
    :cond_2c
    const/16 v21, 0x0

    #@725
    .local v21, "iw":I
    :goto_13
    move/from16 v0, v21

    #@727
    if-ge v0, v11, :cond_2d

    #@729
    .line 9326
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@72c
    move-result-object v39

    #@72d
    .line 9327
    .local v39, "wlName":Ljava/lang/String;
    move-object/from16 v0, v36

    #@72f
    move-object/from16 v1, v39

    #@731
    move-object/from16 v2, p1

    #@733
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->readWakeSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V

    #@736
    .line 9325
    add-int/lit8 v21, v21, 0x1

    #@738
    goto :goto_13

    #@739
    .line 9330
    .end local v39    # "wlName":Ljava/lang/String;
    :cond_2d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@73c
    move-result v8

    #@73d
    .line 9331
    .local v8, "NS":I
    const/16 v40, 0x64

    #@73f
    move/from16 v0, v40

    #@741
    if-le v8, v0, :cond_2e

    #@743
    .line 9332
    new-instance v40, Landroid/os/ParcelFormatException;

    #@745
    new-instance v41, Ljava/lang/StringBuilder;

    #@747
    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    #@74a
    const-string/jumbo v42, "File corrupt: too many syncs "

    #@74d
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@750
    move-result-object v41

    #@751
    move-object/from16 v0, v41

    #@753
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@756
    move-result-object v41

    #@757
    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75a
    move-result-object v41

    #@75b
    invoke-direct/range {v40 .. v41}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    #@75e
    throw v40

    #@75f
    .line 9334
    :cond_2e
    const/16 v19, 0x0

    #@761
    .local v19, "is":I
    :goto_14
    move/from16 v0, v19

    #@763
    if-ge v0, v8, :cond_2f

    #@765
    .line 9335
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@768
    move-result-object v25

    #@769
    .line 9336
    .local v25, "name":Ljava/lang/String;
    move-object/from16 v0, v36

    #@76b
    move-object/from16 v1, v25

    #@76d
    move-object/from16 v2, p1

    #@76f
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->readSyncSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V

    #@772
    .line 9334
    add-int/lit8 v19, v19, 0x1

    #@774
    goto :goto_14

    #@775
    .line 9339
    .end local v25    # "name":Ljava/lang/String;
    :cond_2f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@778
    move-result v4

    #@779
    .line 9340
    .local v4, "NJ":I
    const/16 v40, 0x64

    #@77b
    move/from16 v0, v40

    #@77d
    if-le v4, v0, :cond_30

    #@77f
    .line 9341
    new-instance v40, Landroid/os/ParcelFormatException;

    #@781
    new-instance v41, Ljava/lang/StringBuilder;

    #@783
    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    #@786
    const-string/jumbo v42, "File corrupt: too many job timers "

    #@789
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78c
    move-result-object v41

    #@78d
    move-object/from16 v0, v41

    #@78f
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@792
    move-result-object v41

    #@793
    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@796
    move-result-object v41

    #@797
    invoke-direct/range {v40 .. v41}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    #@79a
    throw v40

    #@79b
    .line 9343
    :cond_30
    const/16 v16, 0x0

    #@79d
    .local v16, "ij":I
    :goto_15
    move/from16 v0, v16

    #@79f
    if-ge v0, v4, :cond_31

    #@7a1
    .line 9344
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7a4
    move-result-object v25

    #@7a5
    .line 9345
    .restart local v25    # "name":Ljava/lang/String;
    move-object/from16 v0, v36

    #@7a7
    move-object/from16 v1, v25

    #@7a9
    move-object/from16 v2, p1

    #@7ab
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->readJobSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V

    #@7ae
    .line 9343
    add-int/lit8 v16, v16, 0x1

    #@7b0
    goto :goto_15

    #@7b1
    .line 9348
    .end local v25    # "name":Ljava/lang/String;
    :cond_31
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@7b4
    move-result v6

    #@7b5
    .line 9349
    .local v6, "NP":I
    const/16 v40, 0x3e8

    #@7b7
    move/from16 v0, v40

    #@7b9
    if-le v6, v0, :cond_32

    #@7bb
    .line 9350
    new-instance v40, Landroid/os/ParcelFormatException;

    #@7bd
    new-instance v41, Ljava/lang/StringBuilder;

    #@7bf
    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    #@7c2
    const-string/jumbo v42, "File corrupt: too many sensors "

    #@7c5
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c8
    move-result-object v41

    #@7c9
    move-object/from16 v0, v41

    #@7cb
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7ce
    move-result-object v41

    #@7cf
    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d2
    move-result-object v41

    #@7d3
    invoke-direct/range {v40 .. v41}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    #@7d6
    throw v40

    #@7d7
    .line 9352
    :cond_32
    const/16 v19, 0x0

    #@7d9
    :goto_16
    move/from16 v0, v19

    #@7db
    if-ge v0, v6, :cond_34

    #@7dd
    .line 9353
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@7e0
    move-result v33

    #@7e1
    .line 9354
    .local v33, "seNumber":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@7e4
    move-result v40

    #@7e5
    if-eqz v40, :cond_33

    #@7e7
    .line 9355
    const/16 v40, 0x1

    #@7e9
    move-object/from16 v0, v36

    #@7eb
    move/from16 v1, v33

    #@7ed
    move/from16 v2, v40

    #@7ef
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@7f2
    move-result-object v40

    #@7f3
    move-object/from16 v0, v40

    #@7f5
    move-object/from16 v1, p1

    #@7f7
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@7fa
    .line 9352
    :cond_33
    add-int/lit8 v19, v19, 0x1

    #@7fc
    goto :goto_16

    #@7fd
    .line 9360
    .end local v33    # "seNumber":I
    :cond_34
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@800
    move-result v6

    #@801
    .line 9361
    const/16 v40, 0x3e8

    #@803
    move/from16 v0, v40

    #@805
    if-le v6, v0, :cond_35

    #@807
    .line 9362
    new-instance v40, Landroid/os/ParcelFormatException;

    #@809
    new-instance v41, Ljava/lang/StringBuilder;

    #@80b
    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    #@80e
    const-string/jumbo v42, "File corrupt: too many processes "

    #@811
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@814
    move-result-object v41

    #@815
    move-object/from16 v0, v41

    #@817
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@81a
    move-result-object v41

    #@81b
    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81e
    move-result-object v41

    #@81f
    invoke-direct/range {v40 .. v41}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    #@822
    throw v40

    #@823
    .line 9364
    :cond_35
    const/16 v18, 0x0

    #@825
    .local v18, "ip":I
    :goto_17
    move/from16 v0, v18

    #@827
    if-ge v0, v6, :cond_36

    #@829
    .line 9365
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@82c
    move-result-object v30

    #@82d
    .line 9366
    .local v30, "procName":Ljava/lang/String;
    move-object/from16 v0, v36

    #@82f
    move-object/from16 v1, v30

    #@831
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    #@834
    move-result-object v27

    #@835
    .line 9367
    .local v27, "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@838
    move-result-wide v40

    #@839
    move-wide/from16 v0, v40

    #@83b
    move-object/from16 v2, v27

    #@83d
    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedUserTime:J

    #@83f
    move-wide/from16 v0, v40

    #@841
    move-object/from16 v2, v27

    #@843
    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    #@845
    .line 9368
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@848
    move-result-wide v40

    #@849
    move-wide/from16 v0, v40

    #@84b
    move-object/from16 v2, v27

    #@84d
    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedSystemTime:J

    #@84f
    move-wide/from16 v0, v40

    #@851
    move-object/from16 v2, v27

    #@853
    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    #@855
    .line 9369
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@858
    move-result-wide v40

    #@859
    move-wide/from16 v0, v40

    #@85b
    move-object/from16 v2, v27

    #@85d
    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedForegroundTime:J

    #@85f
    move-wide/from16 v0, v40

    #@861
    move-object/from16 v2, v27

    #@863
    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    #@865
    .line 9370
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@868
    move-result v40

    #@869
    move/from16 v0, v40

    #@86b
    move-object/from16 v1, v27

    #@86d
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedStarts:I

    #@86f
    move/from16 v0, v40

    #@871
    move-object/from16 v1, v27

    #@873
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    #@875
    .line 9371
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@878
    move-result v40

    #@879
    move/from16 v0, v40

    #@87b
    move-object/from16 v1, v27

    #@87d
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedNumCrashes:I

    #@87f
    move/from16 v0, v40

    #@881
    move-object/from16 v1, v27

    #@883
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumCrashes:I

    #@885
    .line 9372
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@888
    move-result v40

    #@889
    move/from16 v0, v40

    #@88b
    move-object/from16 v1, v27

    #@88d
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedNumAnrs:I

    #@88f
    move/from16 v0, v40

    #@891
    move-object/from16 v1, v27

    #@893
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumAnrs:I

    #@895
    .line 9373
    move-object/from16 v0, v27

    #@897
    move-object/from16 v1, p1

    #@899
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->readExcessivePowerFromParcelLocked(Landroid/os/Parcel;)V

    #@89c
    .line 9364
    add-int/lit8 v18, v18, 0x1

    #@89e
    goto :goto_17

    #@89f
    .line 9376
    .end local v27    # "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .end local v30    # "procName":Ljava/lang/String;
    :cond_36
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@8a2
    move-result v6

    #@8a3
    .line 9377
    const/16 v40, 0x2710

    #@8a5
    move/from16 v0, v40

    #@8a7
    if-le v6, v0, :cond_37

    #@8a9
    .line 9378
    new-instance v40, Landroid/os/ParcelFormatException;

    #@8ab
    new-instance v41, Ljava/lang/StringBuilder;

    #@8ad
    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    #@8b0
    const-string/jumbo v42, "File corrupt: too many packages "

    #@8b3
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b6
    move-result-object v41

    #@8b7
    move-object/from16 v0, v41

    #@8b9
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8bc
    move-result-object v41

    #@8bd
    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c0
    move-result-object v41

    #@8c1
    invoke-direct/range {v40 .. v41}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    #@8c4
    throw v40

    #@8c5
    .line 9380
    :cond_37
    const/16 v18, 0x0

    #@8c7
    :goto_18
    move/from16 v0, v18

    #@8c9
    if-ge v0, v6, :cond_3c

    #@8cb
    .line 9381
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8ce
    move-result-object v29

    #@8cf
    .line 9382
    .local v29, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v36

    #@8d1
    move-object/from16 v1, v29

    #@8d3
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getPackageStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    #@8d6
    move-result-object v26

    #@8d7
    .line 9383
    .local v26, "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@8da
    move-result v12

    #@8db
    .line 9384
    .local v12, "NWA":I
    const/16 v40, 0x3e8

    #@8dd
    move/from16 v0, v40

    #@8df
    if-le v12, v0, :cond_38

    #@8e1
    .line 9385
    new-instance v40, Landroid/os/ParcelFormatException;

    #@8e3
    new-instance v41, Ljava/lang/StringBuilder;

    #@8e5
    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    #@8e8
    const-string/jumbo v42, "File corrupt: too many wakeup alarms "

    #@8eb
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8ee
    move-result-object v41

    #@8ef
    move-object/from16 v0, v41

    #@8f1
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8f4
    move-result-object v41

    #@8f5
    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f8
    move-result-object v41

    #@8f9
    invoke-direct/range {v40 .. v41}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    #@8fc
    throw v40

    #@8fd
    .line 9387
    :cond_38
    move-object/from16 v0, v26

    #@8ff
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    #@901
    move-object/from16 v40, v0

    #@903
    invoke-virtual/range {v40 .. v40}, Landroid/util/ArrayMap;->clear()V

    #@906
    .line 9388
    const/16 v22, 0x0

    #@908
    .local v22, "iwa":I
    :goto_19
    move/from16 v0, v22

    #@90a
    if-ge v0, v12, :cond_39

    #@90c
    .line 9389
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@90f
    move-result-object v35

    #@910
    .line 9390
    .local v35, "tag":Ljava/lang/String;
    new-instance v14, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@912
    move-object/from16 v0, p0

    #@914
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@916
    move-object/from16 v40, v0

    #@918
    move-object/from16 v0, v40

    #@91a
    invoke-direct {v14, v0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@91d
    .line 9391
    .local v14, "c":Lcom/android/internal/os/BatteryStatsImpl$Counter;
    move-object/from16 v0, p1

    #@91f
    invoke-virtual {v14, v0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@922
    .line 9392
    move-object/from16 v0, v26

    #@924
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    #@926
    move-object/from16 v40, v0

    #@928
    move-object/from16 v0, v40

    #@92a
    move-object/from16 v1, v35

    #@92c
    invoke-virtual {v0, v1, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@92f
    .line 9388
    add-int/lit8 v22, v22, 0x1

    #@931
    goto :goto_19

    #@932
    .line 9394
    .end local v14    # "c":Lcom/android/internal/os/BatteryStatsImpl$Counter;
    .end local v35    # "tag":Ljava/lang/String;
    :cond_39
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@935
    move-result v8

    #@936
    .line 9395
    const/16 v40, 0x3e8

    #@938
    move/from16 v0, v40

    #@93a
    if-le v8, v0, :cond_3a

    #@93c
    .line 9396
    new-instance v40, Landroid/os/ParcelFormatException;

    #@93e
    new-instance v41, Ljava/lang/StringBuilder;

    #@940
    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    #@943
    const-string/jumbo v42, "File corrupt: too many services "

    #@946
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@949
    move-result-object v41

    #@94a
    move-object/from16 v0, v41

    #@94c
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@94f
    move-result-object v41

    #@950
    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@953
    move-result-object v41

    #@954
    invoke-direct/range {v40 .. v41}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    #@957
    throw v40

    #@958
    .line 9398
    :cond_3a
    const/16 v19, 0x0

    #@95a
    :goto_1a
    move/from16 v0, v19

    #@95c
    if-ge v0, v8, :cond_3b

    #@95e
    .line 9399
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@961
    move-result-object v34

    #@962
    .line 9400
    .local v34, "servName":Ljava/lang/String;
    move-object/from16 v0, v36

    #@964
    move-object/from16 v1, v29

    #@966
    move-object/from16 v2, v34

    #@968
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getServiceStatsLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    #@96b
    move-result-object v32

    #@96c
    .line 9401
    .local v32, "s":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@96f
    move-result-wide v40

    #@970
    move-wide/from16 v0, v40

    #@972
    move-object/from16 v2, v32

    #@974
    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedStartTime:J

    #@976
    move-wide/from16 v0, v40

    #@978
    move-object/from16 v2, v32

    #@97a
    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTime:J

    #@97c
    .line 9402
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@97f
    move-result v40

    #@980
    move/from16 v0, v40

    #@982
    move-object/from16 v1, v32

    #@984
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedStarts:I

    #@986
    move/from16 v0, v40

    #@988
    move-object/from16 v1, v32

    #@98a
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    #@98c
    .line 9403
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@98f
    move-result v40

    #@990
    move/from16 v0, v40

    #@992
    move-object/from16 v1, v32

    #@994
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedLaunches:I

    #@996
    move/from16 v0, v40

    #@998
    move-object/from16 v1, v32

    #@99a
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    #@99c
    .line 9398
    add-int/lit8 v19, v19, 0x1

    #@99e
    goto :goto_1a

    #@99f
    .line 9380
    .end local v32    # "s":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .end local v34    # "servName":Ljava/lang/String;
    :cond_3b
    add-int/lit8 v18, v18, 0x1

    #@9a1
    goto/16 :goto_18

    #@9a3
    .line 9229
    .end local v12    # "NWA":I
    .end local v22    # "iwa":I
    .end local v26    # "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .end local v29    # "pkgName":Ljava/lang/String;
    :cond_3c
    add-int/lit8 v20, v20, 0x1

    #@9a5
    goto/16 :goto_d

    #@9a7
    .line 9092
    .end local v4    # "NJ":I
    .end local v6    # "NP":I
    .end local v8    # "NS":I
    .end local v9    # "NSB":I
    .end local v11    # "NW":I
    .end local v16    # "ij":I
    .end local v18    # "ip":I
    .end local v19    # "is":I
    .end local v21    # "iw":I
    .end local v36    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v37    # "uid":I
    :cond_3d
    return-void
.end method

.method public recordDailyStatsIfNeededLocked(Z)V
    .locals 6
    .param p1, "settled"    # Z

    #@0
    .prologue
    .line 6913
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    .line 6914
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMaxDailyDeadline:J

    #@6
    cmp-long v2, v0, v2

    #@8
    if-ltz v2, :cond_1

    #@a
    .line 6915
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->recordDailyStatsLocked()V

    #@d
    .line 6912
    :cond_0
    :goto_0
    return-void

    #@e
    .line 6916
    :cond_1
    if-eqz p1, :cond_2

    #@10
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMinDailyDeadline:J

    #@12
    cmp-long v2, v0, v2

    #@14
    if-ltz v2, :cond_2

    #@16
    .line 6917
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->recordDailyStatsLocked()V

    #@19
    goto :goto_0

    #@1a
    .line 6918
    :cond_2
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyStartTime:J

    #@1c
    const-wide/32 v4, 0x5265c00

    #@1f
    sub-long/2addr v2, v4

    #@20
    cmp-long v2, v0, v2

    #@22
    if-gez v2, :cond_0

    #@24
    .line 6919
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->recordDailyStatsLocked()V

    #@27
    goto :goto_0
.end method

.method public recordDailyStatsLocked()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 6924
    new-instance v2, Landroid/os/BatteryStats$DailyItem;

    #@4
    invoke-direct {v2}, Landroid/os/BatteryStats$DailyItem;-><init>()V

    #@7
    .line 6925
    .local v2, "item":Landroid/os/BatteryStats$DailyItem;
    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyStartTime:J

    #@9
    iput-wide v6, v2, Landroid/os/BatteryStats$DailyItem;->mStartTime:J

    #@b
    .line 6926
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@e
    move-result-wide v6

    #@f
    iput-wide v6, v2, Landroid/os/BatteryStats$DailyItem;->mEndTime:J

    #@11
    .line 6927
    const/4 v1, 0x0

    #@12
    .line 6928
    .local v1, "hasData":Z
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@14
    iget v5, v5, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    #@16
    if-lez v5, :cond_0

    #@18
    .line 6929
    const/4 v1, 0x1

    #@19
    .line 6930
    new-instance v5, Landroid/os/BatteryStats$LevelStepTracker;

    #@1b
    .line 6931
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@1d
    iget v6, v6, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    #@1f
    .line 6932
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@21
    iget-object v7, v7, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    #@23
    .line 6930
    invoke-direct {v5, v6, v7}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I[J)V

    #@26
    iput-object v5, v2, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    #@28
    .line 6934
    :cond_0
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@2a
    iget v5, v5, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    #@2c
    if-lez v5, :cond_1

    #@2e
    .line 6935
    const/4 v1, 0x1

    #@2f
    .line 6936
    new-instance v5, Landroid/os/BatteryStats$LevelStepTracker;

    #@31
    .line 6937
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@33
    iget v6, v6, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    #@35
    .line 6938
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@37
    iget-object v7, v7, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    #@39
    .line 6936
    invoke-direct {v5, v6, v7}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I[J)V

    #@3c
    iput-object v5, v2, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    #@3e
    .line 6940
    :cond_1
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    #@40
    if-eqz v5, :cond_2

    #@42
    .line 6941
    const/4 v1, 0x1

    #@43
    .line 6942
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    #@45
    iput-object v5, v2, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    #@47
    .line 6943
    iput-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    #@49
    .line 6945
    :cond_2
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@4b
    invoke-virtual {v5}, Landroid/os/BatteryStats$LevelStepTracker;->init()V

    #@4e
    .line 6946
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@50
    invoke-virtual {v5}, Landroid/os/BatteryStats$LevelStepTracker;->init()V

    #@53
    .line 6947
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->updateDailyDeadlineLocked()V

    #@56
    .line 6949
    if-eqz v1, :cond_4

    #@58
    .line 6950
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyItems:Ljava/util/ArrayList;

    #@5a
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5d
    .line 6951
    :goto_0
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyItems:Ljava/util/ArrayList;

    #@5f
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@62
    move-result v5

    #@63
    const/16 v6, 0xa

    #@65
    if-le v5, v6, :cond_3

    #@67
    .line 6952
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyItems:Ljava/util/ArrayList;

    #@69
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@6c
    goto :goto_0

    #@6d
    .line 6954
    :cond_3
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    #@6f
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@72
    .line 6956
    .local v3, "memStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    #@74
    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@77
    .line 6957
    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@79
    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@7c
    move-result-object v5

    #@7d
    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@80
    .line 6958
    invoke-direct {p0, v4}, Lcom/android/internal/os/BatteryStatsImpl;->writeDailyItemsLocked(Lorg/xmlpull/v1/XmlSerializer;)V

    #@83
    .line 6959
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    #@86
    move-result-object v5

    #@87
    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$2;

    #@89
    invoke-direct {v6, p0, v3}, Lcom/android/internal/os/BatteryStatsImpl$2;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Ljava/io/ByteArrayOutputStream;)V

    #@8c
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@8f
    .line 6923
    .end local v3    # "memStream":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_4
    :goto_1
    return-void

    #@90
    .line 6979
    .restart local v3    # "memStream":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v0

    #@91
    .local v0, "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method public removeIsolatedUidLocked(I)V
    .locals 1
    .param p1, "isolatedUid"    # I

    #@0
    .prologue
    .line 2544
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIsolatedUids:Landroid/util/SparseIntArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    #@5
    .line 2545
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelUidCpuTimeReader:Lcom/android/internal/os/KernelUidCpuTimeReader;

    #@7
    invoke-virtual {v0, p1}, Lcom/android/internal/os/KernelUidCpuTimeReader;->removeUid(I)V

    #@a
    .line 2543
    return-void
.end method

.method public removeUidStatsLocked(I)V
    .locals 1
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 8801
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelUidCpuTimeReader:Lcom/android/internal/os/KernelUidCpuTimeReader;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/os/KernelUidCpuTimeReader;->removeUid(I)V

    #@5
    .line 8802
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    #@7
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    #@a
    .line 8800
    return-void
.end method

.method public reportExcessiveCpuLocked(ILjava/lang/String;JJ)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "proc"    # Ljava/lang/String;
    .param p3, "overTime"    # J
    .param p5, "usedTime"    # J

    #@0
    .prologue
    .line 2968
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@3
    move-result p1

    #@4
    .line 2969
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    #@6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@c
    .line 2970
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    if-eqz v0, :cond_0

    #@e
    move-object v1, p2

    #@f
    move-wide v2, p3

    #@10
    move-wide v4, p5

    #@11
    .line 2971
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->reportExcessiveCpuLocked(Ljava/lang/String;JJ)V

    #@14
    .line 2967
    :cond_0
    return-void
.end method

.method public reportExcessiveWakeLocked(ILjava/lang/String;JJ)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "proc"    # Ljava/lang/String;
    .param p3, "overTime"    # J
    .param p5, "usedTime"    # J

    #@0
    .prologue
    .line 2960
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@3
    move-result p1

    #@4
    .line 2961
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    #@6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@c
    .line 2962
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    if-eqz v0, :cond_0

    #@e
    move-object v1, p2

    #@f
    move-wide v2, p3

    #@10
    move-wide v4, p5

    #@11
    .line 2963
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->reportExcessiveWakeLocked(Ljava/lang/String;JJ)V

    #@14
    .line 2959
    :cond_0
    return-void
.end method

.method public resetAllStatsCmdLocked()V
    .locals 11

    #@0
    .prologue
    const-wide/16 v8, 0x3e8

    #@2
    const/4 v10, 0x0

    #@3
    .line 7394
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl;->resetAllStatsLocked()V

    #@6
    .line 7395
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@9
    move-result-wide v2

    #@a
    .line 7396
    .local v2, "mSecUptime":J
    mul-long v6, v2, v8

    #@c
    .line 7397
    .local v6, "uptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@f
    move-result-wide v0

    #@10
    .line 7398
    .local v0, "mSecRealtime":J
    mul-long v4, v0, v8

    #@12
    .line 7399
    .local v4, "realtime":J
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@14
    iget-byte v8, v8, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    #@16
    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStartLevel:I

    #@18
    .line 7400
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->pullPendingStateUpdatesLocked()V

    #@1b
    .line 7401
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    #@1e
    .line 7403
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@20
    iget-byte v8, v8, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    #@22
    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    #@24
    .line 7402
    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargePlugLevel:I

    #@26
    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    #@28
    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    #@2a
    .line 7404
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@2c
    invoke-virtual {v8, v6, v7, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->reset(JJ)V

    #@2f
    .line 7405
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@31
    invoke-virtual {v8, v6, v7, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->reset(JJ)V

    #@34
    .line 7406
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@36
    iget v8, v8, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@38
    const/high16 v9, 0x80000

    #@3a
    and-int/2addr v8, v9

    #@3b
    if-nez v8, :cond_0

    #@3d
    .line 7407
    iget v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    #@3f
    const/4 v9, 0x2

    #@40
    if-ne v8, v9, :cond_1

    #@42
    .line 7408
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@44
    iget-byte v8, v8, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    #@46
    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    #@48
    .line 7409
    iput v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    #@4a
    .line 7414
    :goto_0
    iput v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOn:I

    #@4c
    .line 7415
    iput v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOff:I

    #@4e
    .line 7417
    :cond_0
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->initActiveHistoryEventsLocked(JJ)V

    #@51
    .line 7393
    return-void

    #@52
    .line 7411
    :cond_1
    iput v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    #@54
    .line 7412
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@56
    iget-byte v8, v8, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    #@58
    iput v8, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    #@5a
    goto :goto_0
.end method

.method public scheduleRemoveIsolatedUidLocked(II)V
    .locals 3
    .param p1, "isolatedUid"    # I
    .param p2, "appUid"    # I

    #@0
    .prologue
    .line 2531
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIsolatedUids:Landroid/util/SparseIntArray;

    #@2
    const/4 v2, -0x1

    #@3
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    #@6
    move-result v0

    #@7
    .line 2532
    .local v0, "curUid":I
    if-ne v0, p2, :cond_0

    #@9
    .line 2533
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 2534
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    #@f
    invoke-interface {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;->scheduleCpuSyncDueToRemovedUid(I)V

    #@12
    .line 2530
    :cond_0
    return-void
.end method

.method public setBatteryStateLocked(IIIIII)V
    .locals 17
    .param p1, "status"    # I
    .param p2, "health"    # I
    .param p3, "plugType"    # I
    .param p4, "level"    # I
    .param p5, "temp"    # I
    .param p6, "volt"    # I

    #@0
    .prologue
    .line 8356
    if-nez p3, :cond_6

    #@2
    const/16 v16, 0x1

    #@4
    .line 8357
    .local v16, "onBattery":Z
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@7
    move-result-wide v6

    #@8
    .line 8358
    .local v6, "uptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@b
    move-result-wide v4

    #@c
    .line 8359
    .local v4, "elapsedRealtime":J
    move-object/from16 v0, p0

    #@e
    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHaveBatteryLevel:Z

    #@10
    if-nez v3, :cond_8

    #@12
    .line 8360
    const/4 v3, 0x1

    #@13
    move-object/from16 v0, p0

    #@15
    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHaveBatteryLevel:Z

    #@17
    .line 8365
    move-object/from16 v0, p0

    #@19
    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    #@1b
    move/from16 v0, v16

    #@1d
    if-ne v0, v3, :cond_0

    #@1f
    .line 8366
    if-eqz v16, :cond_7

    #@21
    .line 8367
    move-object/from16 v0, p0

    #@23
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@25
    iget v8, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@27
    const v10, -0x80001

    #@2a
    and-int/2addr v8, v10

    #@2b
    iput v8, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@2d
    .line 8373
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    #@2f
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@31
    iget v8, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@33
    const/high16 v10, 0x2000000

    #@35
    or-int/2addr v8, v10

    #@36
    iput v8, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@38
    .line 8374
    move-object/from16 v0, p0

    #@3a
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@3c
    move/from16 v0, p1

    #@3e
    int-to-byte v8, v0

    #@3f
    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    #@41
    .line 8375
    move-object/from16 v0, p0

    #@43
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@45
    move/from16 v0, p4

    #@47
    int-to-byte v8, v0

    #@48
    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    #@4a
    .line 8377
    move/from16 v0, p4

    #@4c
    move-object/from16 v1, p0

    #@4e
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastDischargeStepLevel:I

    #@50
    move/from16 v0, p4

    #@52
    move-object/from16 v1, p0

    #@54
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepLevel:I

    #@56
    .line 8376
    move/from16 v0, p4

    #@58
    move-object/from16 v1, p0

    #@5a
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mMinDischargeStepLevel:I

    #@5c
    move/from16 v0, p4

    #@5e
    move-object/from16 v1, p0

    #@60
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mMaxChargeStepLevel:I

    #@62
    .line 8378
    move/from16 v0, p4

    #@64
    move-object/from16 v1, p0

    #@66
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargingStateLevel:I

    #@68
    .line 8382
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    #@6a
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@6c
    iget-byte v9, v3, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    #@6e
    .line 8383
    .local v9, "oldStatus":I
    if-eqz v16, :cond_b

    #@70
    .line 8384
    move/from16 v0, p4

    #@72
    move-object/from16 v1, p0

    #@74
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    #@76
    .line 8385
    move-object/from16 v0, p0

    #@78
    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    #@7a
    if-nez v3, :cond_2

    #@7c
    .line 8386
    const/4 v3, 0x1

    #@7d
    move-object/from16 v0, p0

    #@7f
    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    #@81
    .line 8387
    const/4 v8, 0x1

    #@82
    move-object/from16 v3, p0

    #@84
    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->startRecordingHistory(JJZ)V

    #@87
    .line 8395
    :cond_2
    :goto_3
    move/from16 v0, p4

    #@89
    move-object/from16 v1, p0

    #@8b
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    #@8d
    .line 8396
    move-object/from16 v0, p0

    #@8f
    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargePlugLevel:I

    #@91
    if-gez v3, :cond_3

    #@93
    .line 8397
    move/from16 v0, p4

    #@95
    move-object/from16 v1, p0

    #@97
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargePlugLevel:I

    #@99
    .line 8399
    :cond_3
    move-object/from16 v0, p0

    #@9b
    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    #@9d
    move/from16 v0, v16

    #@9f
    if-eq v0, v3, :cond_c

    #@a1
    .line 8400
    move-object/from16 v0, p0

    #@a3
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@a5
    move/from16 v0, p4

    #@a7
    int-to-byte v8, v0

    #@a8
    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    #@aa
    .line 8401
    move-object/from16 v0, p0

    #@ac
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@ae
    move/from16 v0, p1

    #@b0
    int-to-byte v8, v0

    #@b1
    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    #@b3
    .line 8402
    move-object/from16 v0, p0

    #@b5
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@b7
    move/from16 v0, p2

    #@b9
    int-to-byte v8, v0

    #@ba
    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    #@bc
    .line 8403
    move-object/from16 v0, p0

    #@be
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@c0
    move/from16 v0, p3

    #@c2
    int-to-byte v8, v0

    #@c3
    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    #@c5
    .line 8404
    move-object/from16 v0, p0

    #@c7
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@c9
    move/from16 v0, p5

    #@cb
    int-to-short v8, v0

    #@cc
    iput-short v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    #@ce
    .line 8405
    move-object/from16 v0, p0

    #@d0
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@d2
    move/from16 v0, p6

    #@d4
    int-to-char v8, v0

    #@d5
    iput-char v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    #@d7
    move-object/from16 v3, p0

    #@d9
    move/from16 v8, v16

    #@db
    move/from16 v10, p4

    #@dd
    .line 8406
    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->setOnBatteryLocked(JJZII)V

    #@e0
    .line 8492
    :cond_4
    :goto_4
    if-nez v16, :cond_5

    #@e2
    const/4 v3, 0x5

    #@e3
    move/from16 v0, p1

    #@e5
    if-ne v0, v3, :cond_5

    #@e7
    .line 8495
    const/4 v3, 0x0

    #@e8
    move-object/from16 v0, p0

    #@ea
    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    #@ec
    .line 8355
    :cond_5
    return-void

    #@ed
    .line 8356
    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    .end local v9    # "oldStatus":I
    .end local v16    # "onBattery":Z
    :cond_6
    const/16 v16, 0x0

    #@ef
    .restart local v16    # "onBattery":Z
    goto/16 :goto_0

    #@f1
    .line 8369
    .restart local v4    # "elapsedRealtime":J
    .restart local v6    # "uptime":J
    :cond_7
    move-object/from16 v0, p0

    #@f3
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@f5
    iget v8, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@f7
    const/high16 v10, 0x80000

    #@f9
    or-int/2addr v8, v10

    #@fa
    iput v8, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@fc
    goto/16 :goto_1

    #@fe
    .line 8379
    :cond_8
    move-object/from16 v0, p0

    #@100
    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    #@102
    move/from16 v0, p4

    #@104
    if-ne v3, v0, :cond_9

    #@106
    move-object/from16 v0, p0

    #@108
    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    #@10a
    move/from16 v0, v16

    #@10c
    if-eq v3, v0, :cond_1

    #@10e
    .line 8380
    :cond_9
    const/16 v3, 0x64

    #@110
    move/from16 v0, p4

    #@112
    if-lt v0, v3, :cond_a

    #@114
    move/from16 v3, v16

    #@116
    :goto_5
    move-object/from16 v0, p0

    #@118
    invoke-virtual {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->recordDailyStatsIfNeededLocked(Z)V

    #@11b
    goto/16 :goto_2

    #@11d
    :cond_a
    const/4 v3, 0x0

    #@11e
    goto :goto_5

    #@11f
    .line 8389
    .restart local v9    # "oldStatus":I
    :cond_b
    const/16 v3, 0x60

    #@121
    move/from16 v0, p4

    #@123
    if-ge v0, v3, :cond_2

    #@125
    .line 8390
    move-object/from16 v0, p0

    #@127
    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    #@129
    if-nez v3, :cond_2

    #@12b
    .line 8391
    const/4 v3, 0x1

    #@12c
    move-object/from16 v0, p0

    #@12e
    iput-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    #@130
    .line 8392
    const/4 v8, 0x1

    #@131
    move-object/from16 v3, p0

    #@133
    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->startRecordingHistory(JJZ)V

    #@136
    goto/16 :goto_3

    #@138
    .line 8408
    :cond_c
    const/4 v2, 0x0

    #@139
    .line 8409
    .local v2, "changed":Z
    move-object/from16 v0, p0

    #@13b
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@13d
    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    #@13f
    move/from16 v0, p4

    #@141
    if-eq v3, v0, :cond_d

    #@143
    .line 8410
    move-object/from16 v0, p0

    #@145
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@147
    move/from16 v0, p4

    #@149
    int-to-byte v8, v0

    #@14a
    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    #@14c
    .line 8411
    const/4 v2, 0x1

    #@14d
    .line 8415
    const-string/jumbo v3, "battery-level"

    #@150
    move-object/from16 v0, p0

    #@152
    invoke-direct {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->scheduleSyncExternalStatsLocked(Ljava/lang/String;)V

    #@155
    .line 8417
    :cond_d
    move-object/from16 v0, p0

    #@157
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@159
    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    #@15b
    move/from16 v0, p1

    #@15d
    if-eq v3, v0, :cond_e

    #@15f
    .line 8418
    move-object/from16 v0, p0

    #@161
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@163
    move/from16 v0, p1

    #@165
    int-to-byte v8, v0

    #@166
    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    #@168
    .line 8419
    const/4 v2, 0x1

    #@169
    .line 8421
    :cond_e
    move-object/from16 v0, p0

    #@16b
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@16d
    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    #@16f
    move/from16 v0, p2

    #@171
    if-eq v3, v0, :cond_f

    #@173
    .line 8422
    move-object/from16 v0, p0

    #@175
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@177
    move/from16 v0, p2

    #@179
    int-to-byte v8, v0

    #@17a
    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    #@17c
    .line 8423
    const/4 v2, 0x1

    #@17d
    .line 8425
    :cond_f
    move-object/from16 v0, p0

    #@17f
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@181
    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    #@183
    move/from16 v0, p3

    #@185
    if-eq v3, v0, :cond_10

    #@187
    .line 8426
    move-object/from16 v0, p0

    #@189
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@18b
    move/from16 v0, p3

    #@18d
    int-to-byte v8, v0

    #@18e
    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    #@190
    .line 8427
    const/4 v2, 0x1

    #@191
    .line 8429
    :cond_10
    move-object/from16 v0, p0

    #@193
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@195
    iget-short v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    #@197
    add-int/lit8 v3, v3, 0xa

    #@199
    move/from16 v0, p5

    #@19b
    if-ge v0, v3, :cond_11

    #@19d
    .line 8430
    move-object/from16 v0, p0

    #@19f
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@1a1
    iget-short v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    #@1a3
    add-int/lit8 v3, v3, -0xa

    #@1a5
    move/from16 v0, p5

    #@1a7
    if-gt v0, v3, :cond_12

    #@1a9
    .line 8431
    :cond_11
    move-object/from16 v0, p0

    #@1ab
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@1ad
    move/from16 v0, p5

    #@1af
    int-to-short v8, v0

    #@1b0
    iput-short v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    #@1b2
    .line 8432
    const/4 v2, 0x1

    #@1b3
    .line 8434
    :cond_12
    move-object/from16 v0, p0

    #@1b5
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@1b7
    iget-char v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    #@1b9
    add-int/lit8 v3, v3, 0x14

    #@1bb
    move/from16 v0, p6

    #@1bd
    if-gt v0, v3, :cond_13

    #@1bf
    .line 8435
    move-object/from16 v0, p0

    #@1c1
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@1c3
    iget-char v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    #@1c5
    add-int/lit8 v3, v3, -0x14

    #@1c7
    move/from16 v0, p6

    #@1c9
    if-ge v0, v3, :cond_14

    #@1cb
    .line 8436
    :cond_13
    move-object/from16 v0, p0

    #@1cd
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@1cf
    move/from16 v0, p6

    #@1d1
    int-to-char v8, v0

    #@1d2
    iput-char v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    #@1d4
    .line 8437
    const/4 v2, 0x1

    #@1d5
    .line 8439
    :cond_14
    move-object/from16 v0, p0

    #@1d7
    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInitStepMode:I

    #@1d9
    int-to-long v10, v3

    #@1da
    const/16 v3, 0x30

    #@1dc
    shl-long/2addr v10, v3

    #@1dd
    .line 8440
    move-object/from16 v0, p0

    #@1df
    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    #@1e1
    int-to-long v14, v3

    #@1e2
    const/16 v3, 0x38

    #@1e4
    shl-long/2addr v14, v3

    #@1e5
    .line 8439
    or-long/2addr v10, v14

    #@1e6
    .line 8441
    move/from16 v0, p4

    #@1e8
    and-int/lit16 v3, v0, 0xff

    #@1ea
    int-to-long v14, v3

    #@1eb
    const/16 v3, 0x28

    #@1ed
    shl-long/2addr v14, v3

    #@1ee
    .line 8439
    or-long v12, v10, v14

    #@1f0
    .line 8442
    .local v12, "modeBits":J
    if-eqz v16, :cond_16

    #@1f2
    .line 8443
    const/4 v3, 0x0

    #@1f3
    move-object/from16 v0, p0

    #@1f5
    invoke-virtual {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->setChargingLocked(Z)Z

    #@1f8
    move-result v3

    #@1f9
    or-int/2addr v2, v3

    #@1fa
    .line 8444
    .local v2, "changed":Z
    move-object/from16 v0, p0

    #@1fc
    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastDischargeStepLevel:I

    #@1fe
    move/from16 v0, p4

    #@200
    if-eq v3, v0, :cond_15

    #@202
    move-object/from16 v0, p0

    #@204
    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMinDischargeStepLevel:I

    #@206
    move/from16 v0, p4

    #@208
    if-le v3, v0, :cond_15

    #@20a
    .line 8445
    move-object/from16 v0, p0

    #@20c
    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@20e
    move-object/from16 v0, p0

    #@210
    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastDischargeStepLevel:I

    #@212
    sub-int v11, v3, p4

    #@214
    move-wide v14, v4

    #@215
    invoke-virtual/range {v10 .. v15}, Landroid/os/BatteryStats$LevelStepTracker;->addLevelSteps(IJJ)V

    #@218
    .line 8447
    move-object/from16 v0, p0

    #@21a
    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@21c
    move-object/from16 v0, p0

    #@21e
    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastDischargeStepLevel:I

    #@220
    sub-int v11, v3, p4

    #@222
    move-wide v14, v4

    #@223
    invoke-virtual/range {v10 .. v15}, Landroid/os/BatteryStats$LevelStepTracker;->addLevelSteps(IJJ)V

    #@226
    .line 8449
    move/from16 v0, p4

    #@228
    move-object/from16 v1, p0

    #@22a
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastDischargeStepLevel:I

    #@22c
    .line 8450
    move/from16 v0, p4

    #@22e
    move-object/from16 v1, p0

    #@230
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mMinDischargeStepLevel:I

    #@232
    .line 8451
    move-object/from16 v0, p0

    #@234
    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    #@236
    move-object/from16 v0, p0

    #@238
    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInitStepMode:I

    #@23a
    .line 8452
    const/4 v3, 0x0

    #@23b
    move-object/from16 v0, p0

    #@23d
    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    #@23f
    .line 8488
    .end local v2    # "changed":Z
    :cond_15
    :goto_6
    if-eqz v2, :cond_4

    #@241
    .line 8489
    move-object/from16 v0, p0

    #@243
    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    #@246
    goto/16 :goto_4

    #@248
    .line 8455
    .local v2, "changed":Z
    :cond_16
    const/16 v3, 0x5a

    #@24a
    move/from16 v0, p4

    #@24c
    if-lt v0, v3, :cond_17

    #@24e
    .line 8458
    const/4 v3, 0x1

    #@24f
    move-object/from16 v0, p0

    #@251
    invoke-virtual {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->setChargingLocked(Z)Z

    #@254
    move-result v3

    #@255
    or-int/2addr v2, v3

    #@256
    .line 8459
    .local v2, "changed":Z
    move/from16 v0, p4

    #@258
    move-object/from16 v1, p0

    #@25a
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepLevel:I

    #@25c
    .line 8460
    .end local v2    # "changed":Z
    :cond_17
    move-object/from16 v0, p0

    #@25e
    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCharging:Z

    #@260
    if-nez v3, :cond_19

    #@262
    .line 8461
    move-object/from16 v0, p0

    #@264
    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepLevel:I

    #@266
    move/from16 v0, p4

    #@268
    if-ge v3, v0, :cond_18

    #@26a
    .line 8464
    const/4 v3, 0x1

    #@26b
    move-object/from16 v0, p0

    #@26d
    invoke-virtual {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->setChargingLocked(Z)Z

    #@270
    move-result v3

    #@271
    or-int/2addr v2, v3

    #@272
    .line 8465
    .restart local v2    # "changed":Z
    move/from16 v0, p4

    #@274
    move-object/from16 v1, p0

    #@276
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepLevel:I

    #@278
    .line 8477
    .end local v2    # "changed":Z
    :cond_18
    :goto_7
    move-object/from16 v0, p0

    #@27a
    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepLevel:I

    #@27c
    move/from16 v0, p4

    #@27e
    if-eq v3, v0, :cond_15

    #@280
    move-object/from16 v0, p0

    #@282
    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMaxChargeStepLevel:I

    #@284
    move/from16 v0, p4

    #@286
    if-ge v3, v0, :cond_15

    #@288
    .line 8478
    move-object/from16 v0, p0

    #@28a
    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@28c
    move-object/from16 v0, p0

    #@28e
    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepLevel:I

    #@290
    sub-int v11, p4, v3

    #@292
    move-wide v14, v4

    #@293
    invoke-virtual/range {v10 .. v15}, Landroid/os/BatteryStats$LevelStepTracker;->addLevelSteps(IJJ)V

    #@296
    .line 8480
    move-object/from16 v0, p0

    #@298
    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@29a
    move-object/from16 v0, p0

    #@29c
    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepLevel:I

    #@29e
    sub-int v11, p4, v3

    #@2a0
    move-wide v14, v4

    #@2a1
    invoke-virtual/range {v10 .. v15}, Landroid/os/BatteryStats$LevelStepTracker;->addLevelSteps(IJJ)V

    #@2a4
    .line 8482
    move/from16 v0, p4

    #@2a6
    move-object/from16 v1, p0

    #@2a8
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepLevel:I

    #@2aa
    .line 8483
    move/from16 v0, p4

    #@2ac
    move-object/from16 v1, p0

    #@2ae
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mMaxChargeStepLevel:I

    #@2b0
    .line 8484
    move-object/from16 v0, p0

    #@2b2
    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    #@2b4
    move-object/from16 v0, p0

    #@2b6
    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInitStepMode:I

    #@2b8
    .line 8485
    const/4 v3, 0x0

    #@2b9
    move-object/from16 v0, p0

    #@2bb
    iput v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    #@2bd
    goto :goto_6

    #@2be
    .line 8468
    :cond_19
    move-object/from16 v0, p0

    #@2c0
    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepLevel:I

    #@2c2
    move/from16 v0, p4

    #@2c4
    if-le v3, v0, :cond_18

    #@2c6
    .line 8473
    const/4 v3, 0x0

    #@2c7
    move-object/from16 v0, p0

    #@2c9
    invoke-virtual {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->setChargingLocked(Z)Z

    #@2cc
    move-result v3

    #@2cd
    or-int/2addr v2, v3

    #@2ce
    .line 8474
    .restart local v2    # "changed":Z
    move/from16 v0, p4

    #@2d0
    move-object/from16 v1, p0

    #@2d2
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepLevel:I

    #@2d4
    goto :goto_7
.end method

.method public setCallback(Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;

    #@0
    .prologue
    .line 6882
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCallback:Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;

    #@2
    .line 6881
    return-void
.end method

.method setChargingLocked(Z)Z
    .locals 3
    .param p1, "charging"    # Z

    #@0
    .prologue
    .line 8174
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCharging:Z

    #@2
    if-eq v0, p1, :cond_1

    #@4
    .line 8175
    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mCharging:Z

    #@6
    .line 8176
    if-eqz p1, :cond_0

    #@8
    .line 8177
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@a
    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@c
    const/high16 v2, 0x2000000

    #@e
    or-int/2addr v1, v2

    #@f
    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@11
    .line 8181
    :goto_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    #@13
    const/4 v1, 0x3

    #@14
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->sendEmptyMessage(I)Z

    #@17
    .line 8182
    const/4 v0, 0x1

    #@18
    return v0

    #@19
    .line 8179
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@1b
    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@1d
    const v2, -0x2000001

    #@20
    and-int/2addr v1, v2

    #@21
    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@23
    goto :goto_0

    #@24
    .line 8184
    :cond_1
    const/4 v0, 0x0

    #@25
    return v0
.end method

.method public setNoAutoReset(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 2759
    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNoAutoReset:Z

    #@2
    .line 2758
    return-void
.end method

.method public setNumSpeedSteps(I)V
    .locals 1
    .param p1, "steps"    # I

    #@0
    .prologue
    .line 6886
    sget v0, Lcom/android/internal/os/BatteryStatsImpl;->sNumSpeedSteps:I

    #@2
    if-nez v0, :cond_0

    #@4
    sput p1, Lcom/android/internal/os/BatteryStatsImpl;->sNumSpeedSteps:I

    #@6
    .line 6885
    :cond_0
    return-void
.end method

.method setOnBatteryLocked(JJZII)V
    .locals 21
    .param p1, "mSecRealtime"    # J
    .param p3, "mSecUptime"    # J
    .param p5, "onBattery"    # Z
    .param p6, "oldStatus"    # I
    .param p7, "level"    # I

    #@0
    .prologue
    .line 8189
    const/4 v4, 0x0

    #@1
    .line 8190
    .local v4, "doWrite":Z
    move-object/from16 v0, p0

    #@3
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    #@5
    const/4 v6, 0x2

    #@6
    invoke-virtual {v5, v6}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->obtainMessage(I)Landroid/os/Message;

    #@9
    move-result-object v18

    #@a
    .line 8191
    .local v18, "m":Landroid/os/Message;
    if-eqz p5, :cond_7

    #@c
    const/4 v5, 0x1

    #@d
    :goto_0
    move-object/from16 v0, v18

    #@f
    iput v5, v0, Landroid/os/Message;->arg1:I

    #@11
    .line 8192
    move-object/from16 v0, p0

    #@13
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    #@15
    move-object/from16 v0, v18

    #@17
    invoke-virtual {v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    #@1a
    .line 8194
    const-wide/16 v6, 0x3e8

    #@1c
    mul-long v14, p3, v6

    #@1e
    .line 8195
    .local v14, "uptime":J
    const-wide/16 v6, 0x3e8

    #@20
    mul-long v16, p1, v6

    #@22
    .line 8196
    .local v16, "realtime":J
    move-object/from16 v0, p0

    #@24
    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenState:I

    #@26
    const/4 v6, 0x2

    #@27
    if-ne v5, v6, :cond_8

    #@29
    const/16 v20, 0x1

    #@2b
    .line 8197
    .local v20, "screenOn":Z
    :goto_1
    if-eqz p5, :cond_d

    #@2d
    .line 8202
    const/4 v10, 0x0

    #@2e
    .line 8203
    .local v10, "reset":Z
    move-object/from16 v0, p0

    #@30
    iget-boolean v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNoAutoReset:Z

    #@32
    if-nez v5, :cond_2

    #@34
    const/4 v5, 0x5

    #@35
    move/from16 v0, p6

    #@37
    if-eq v0, v5, :cond_0

    #@39
    .line 8204
    const/16 v5, 0x5a

    #@3b
    move/from16 v0, p7

    #@3d
    if-lt v0, v5, :cond_9

    #@3f
    .line 8208
    :cond_0
    :goto_2
    const-string/jumbo v5, "BatteryStatsImpl"

    #@42
    new-instance v6, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v7, "Resetting battery stats: level="

    #@4a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v6

    #@4e
    move/from16 v0, p7

    #@50
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@53
    move-result-object v6

    #@54
    const-string/jumbo v7, " status="

    #@57
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v6

    #@5b
    move/from16 v0, p6

    #@5d
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@60
    move-result-object v6

    #@61
    .line 8209
    const-string/jumbo v7, " dischargeLevel="

    #@64
    .line 8208
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v6

    #@68
    .line 8209
    move-object/from16 v0, p0

    #@6a
    iget v7, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    #@6c
    .line 8208
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v6

    #@70
    .line 8210
    const-string/jumbo v7, " lowAmount="

    #@73
    .line 8208
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v6

    #@77
    .line 8210
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getLowDischargeAmountSinceCharge()I

    #@7a
    move-result v7

    #@7b
    .line 8208
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v6

    #@7f
    .line 8211
    const-string/jumbo v7, " highAmount="

    #@82
    .line 8208
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v6

    #@86
    .line 8211
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getHighDischargeAmountSinceCharge()I

    #@89
    move-result v7

    #@8a
    .line 8208
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v6

    #@8e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v6

    #@92
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@95
    .line 8215
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getLowDischargeAmountSinceCharge()I

    #@98
    move-result v5

    #@99
    const/16 v6, 0x14

    #@9b
    if-lt v5, v6, :cond_1

    #@9d
    .line 8216
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@a0
    move-result-object v19

    #@a1
    .line 8217
    .local v19, "parcel":Landroid/os/Parcel;
    const/4 v5, 0x1

    #@a2
    move-object/from16 v0, p0

    #@a4
    move-object/from16 v1, v19

    #@a6
    invoke-virtual {v0, v1, v5}, Lcom/android/internal/os/BatteryStatsImpl;->writeSummaryToParcel(Landroid/os/Parcel;Z)V

    #@a9
    .line 8218
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    #@ac
    move-result-object v5

    #@ad
    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$4;

    #@af
    move-object/from16 v0, p0

    #@b1
    move-object/from16 v1, v19

    #@b3
    invoke-direct {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$4;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Landroid/os/Parcel;)V

    #@b6
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@b9
    .line 8240
    .end local v19    # "parcel":Landroid/os/Parcel;
    :cond_1
    const/4 v4, 0x1

    #@ba
    .line 8241
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->resetAllStatsLocked()V

    #@bd
    .line 8242
    move/from16 v0, p7

    #@bf
    move-object/from16 v1, p0

    #@c1
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStartLevel:I

    #@c3
    .line 8243
    const/4 v10, 0x1

    #@c4
    .line 8244
    move-object/from16 v0, p0

    #@c6
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@c8
    invoke-virtual {v5}, Landroid/os/BatteryStats$LevelStepTracker;->init()V

    #@cb
    .line 8246
    :cond_2
    move-object/from16 v0, p0

    #@cd
    iget-boolean v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCharging:Z

    #@cf
    if-eqz v5, :cond_3

    #@d1
    .line 8247
    const/4 v5, 0x0

    #@d2
    move-object/from16 v0, p0

    #@d4
    invoke-virtual {v0, v5}, Lcom/android/internal/os/BatteryStatsImpl;->setChargingLocked(Z)Z

    #@d7
    .line 8249
    :cond_3
    move/from16 v0, p7

    #@d9
    move-object/from16 v1, p0

    #@db
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargingStateLevel:I

    #@dd
    .line 8250
    const/4 v5, 0x1

    #@de
    move-object/from16 v0, p0

    #@e0
    iput-boolean v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    #@e2
    const/4 v5, 0x1

    #@e3
    move-object/from16 v0, p0

    #@e5
    iput-boolean v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    #@e7
    .line 8251
    move/from16 v0, p7

    #@e9
    move-object/from16 v1, p0

    #@eb
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastDischargeStepLevel:I

    #@ed
    .line 8252
    move/from16 v0, p7

    #@ef
    move-object/from16 v1, p0

    #@f1
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mMinDischargeStepLevel:I

    #@f3
    .line 8253
    move-object/from16 v0, p0

    #@f5
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@f7
    invoke-virtual {v5}, Landroid/os/BatteryStats$LevelStepTracker;->clearTime()V

    #@fa
    .line 8254
    move-object/from16 v0, p0

    #@fc
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@fe
    invoke-virtual {v5}, Landroid/os/BatteryStats$LevelStepTracker;->clearTime()V

    #@101
    .line 8255
    move-object/from16 v0, p0

    #@103
    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    #@105
    move-object/from16 v0, p0

    #@107
    iput v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInitStepMode:I

    #@109
    .line 8256
    const/4 v5, 0x0

    #@10a
    move-object/from16 v0, p0

    #@10c
    iput v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    #@10e
    .line 8257
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->pullPendingStateUpdatesLocked()V

    #@111
    .line 8258
    move-object/from16 v0, p0

    #@113
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@115
    move/from16 v0, p7

    #@117
    int-to-byte v6, v0

    #@118
    iput-byte v6, v5, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    #@11a
    .line 8259
    move-object/from16 v0, p0

    #@11c
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@11e
    iget v6, v5, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@120
    const v7, -0x80001

    #@123
    and-int/2addr v6, v7

    #@124
    iput v6, v5, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@126
    .line 8262
    if-eqz v10, :cond_4

    #@128
    .line 8263
    const/4 v5, 0x1

    #@129
    move-object/from16 v0, p0

    #@12b
    iput-boolean v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordingHistory:Z

    #@12d
    move-object/from16 v5, p0

    #@12f
    move-wide/from16 v6, p1

    #@131
    move-wide/from16 v8, p3

    #@133
    .line 8264
    invoke-direct/range {v5 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->startRecordingHistory(JJZ)V

    #@136
    .line 8266
    :cond_4
    invoke-virtual/range {p0 .. p4}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    #@139
    .line 8267
    move/from16 v0, p7

    #@13b
    move-object/from16 v1, p0

    #@13d
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    #@13f
    move/from16 v0, p7

    #@141
    move-object/from16 v1, p0

    #@143
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    #@145
    .line 8268
    if-eqz v20, :cond_b

    #@147
    .line 8269
    move/from16 v0, p7

    #@149
    move-object/from16 v1, p0

    #@14b
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    #@14d
    .line 8270
    const/4 v5, 0x0

    #@14e
    move-object/from16 v0, p0

    #@150
    iput v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    #@152
    .line 8275
    :goto_3
    const/4 v5, 0x0

    #@153
    move-object/from16 v0, p0

    #@155
    iput v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOn:I

    #@157
    .line 8276
    const/4 v5, 0x0

    #@158
    move-object/from16 v0, p0

    #@15a
    iput v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOff:I

    #@15c
    .line 8277
    if-eqz v20, :cond_c

    #@15e
    const/4 v13, 0x0

    #@15f
    :goto_4
    const/4 v12, 0x1

    #@160
    move-object/from16 v11, p0

    #@162
    invoke-virtual/range {v11 .. v17}, Lcom/android/internal/os/BatteryStatsImpl;->updateTimeBasesLocked(ZZJJ)V

    #@165
    .line 8300
    .end local v10    # "reset":Z
    :goto_5
    if-nez v4, :cond_5

    #@167
    move-object/from16 v0, p0

    #@169
    iget-wide v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWriteTime:J

    #@16b
    const-wide/32 v8, 0xea60

    #@16e
    add-long/2addr v6, v8

    #@16f
    cmp-long v5, v6, p1

    #@171
    if-gez v5, :cond_6

    #@173
    .line 8301
    :cond_5
    move-object/from16 v0, p0

    #@175
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    #@177
    if-eqz v5, :cond_6

    #@179
    .line 8302
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V

    #@17c
    .line 8188
    :cond_6
    return-void

    #@17d
    .line 8191
    .end local v14    # "uptime":J
    .end local v16    # "realtime":J
    .end local v20    # "screenOn":Z
    :cond_7
    const/4 v5, 0x0

    #@17e
    goto/16 :goto_0

    #@180
    .line 8196
    .restart local v14    # "uptime":J
    .restart local v16    # "realtime":J
    :cond_8
    const/16 v20, 0x0

    #@182
    .restart local v20    # "screenOn":Z
    goto/16 :goto_1

    #@184
    .line 8205
    .restart local v10    # "reset":Z
    :cond_9
    move-object/from16 v0, p0

    #@186
    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    #@188
    const/16 v6, 0x14

    #@18a
    if-ge v5, v6, :cond_a

    #@18c
    const/16 v5, 0x50

    #@18e
    move/from16 v0, p7

    #@190
    if-ge v0, v5, :cond_0

    #@192
    .line 8206
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getHighDischargeAmountSinceCharge()I

    #@195
    move-result v5

    #@196
    const/16 v6, 0xc8

    #@198
    if-lt v5, v6, :cond_2

    #@19a
    .line 8207
    move-object/from16 v0, p0

    #@19c
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    #@19e
    invoke-virtual {v5}, Landroid/os/Parcel;->dataSize()I

    #@1a1
    move-result v5

    #@1a2
    const/high16 v6, 0x40000

    #@1a4
    if-lt v5, v6, :cond_2

    #@1a6
    goto/16 :goto_2

    #@1a8
    .line 8272
    :cond_b
    const/4 v5, 0x0

    #@1a9
    move-object/from16 v0, p0

    #@1ab
    iput v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    #@1ad
    .line 8273
    move/from16 v0, p7

    #@1af
    move-object/from16 v1, p0

    #@1b1
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    #@1b3
    goto :goto_3

    #@1b4
    .line 8277
    :cond_c
    const/4 v13, 0x1

    #@1b5
    goto :goto_4

    #@1b6
    .line 8279
    .end local v10    # "reset":Z
    :cond_d
    move/from16 v0, p7

    #@1b8
    move-object/from16 v1, p0

    #@1ba
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargingStateLevel:I

    #@1bc
    .line 8280
    const/4 v5, 0x0

    #@1bd
    move-object/from16 v0, p0

    #@1bf
    iput-boolean v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    #@1c1
    const/4 v5, 0x0

    #@1c2
    move-object/from16 v0, p0

    #@1c4
    iput-boolean v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    #@1c6
    .line 8281
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->pullPendingStateUpdatesLocked()V

    #@1c9
    .line 8282
    move-object/from16 v0, p0

    #@1cb
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@1cd
    move/from16 v0, p7

    #@1cf
    int-to-byte v6, v0

    #@1d0
    iput-byte v6, v5, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    #@1d2
    .line 8283
    move-object/from16 v0, p0

    #@1d4
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    #@1d6
    iget v6, v5, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@1d8
    const/high16 v7, 0x80000

    #@1da
    or-int/2addr v6, v7

    #@1db
    iput v6, v5, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@1dd
    .line 8286
    invoke-virtual/range {p0 .. p4}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    #@1e0
    .line 8287
    move/from16 v0, p7

    #@1e2
    move-object/from16 v1, p0

    #@1e4
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargePlugLevel:I

    #@1e6
    move/from16 v0, p7

    #@1e8
    move-object/from16 v1, p0

    #@1ea
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    #@1ec
    .line 8288
    move-object/from16 v0, p0

    #@1ee
    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    #@1f0
    move/from16 v0, p7

    #@1f2
    if-ge v0, v5, :cond_e

    #@1f4
    .line 8289
    move-object/from16 v0, p0

    #@1f6
    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLowDischargeAmountSinceCharge:I

    #@1f8
    move-object/from16 v0, p0

    #@1fa
    iget v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    #@1fc
    sub-int v6, v6, p7

    #@1fe
    add-int/lit8 v6, v6, -0x1

    #@200
    add-int/2addr v5, v6

    #@201
    move-object/from16 v0, p0

    #@203
    iput v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLowDischargeAmountSinceCharge:I

    #@205
    .line 8290
    move-object/from16 v0, p0

    #@207
    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHighDischargeAmountSinceCharge:I

    #@209
    move-object/from16 v0, p0

    #@20b
    iget v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    #@20d
    sub-int v6, v6, p7

    #@20f
    add-int/2addr v5, v6

    #@210
    move-object/from16 v0, p0

    #@212
    iput v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHighDischargeAmountSinceCharge:I

    #@214
    .line 8292
    :cond_e
    move-object/from16 v0, p0

    #@216
    move/from16 v1, v20

    #@218
    move/from16 v2, v20

    #@21a
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->updateDischargeScreenLevelsLocked(ZZ)V

    #@21d
    .line 8293
    if-eqz v20, :cond_f

    #@21f
    const/4 v13, 0x0

    #@220
    :goto_6
    const/4 v12, 0x0

    #@221
    move-object/from16 v11, p0

    #@223
    invoke-virtual/range {v11 .. v17}, Lcom/android/internal/os/BatteryStatsImpl;->updateTimeBasesLocked(ZZJJ)V

    #@226
    .line 8294
    move-object/from16 v0, p0

    #@228
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@22a
    invoke-virtual {v5}, Landroid/os/BatteryStats$LevelStepTracker;->init()V

    #@22d
    .line 8295
    move/from16 v0, p7

    #@22f
    move-object/from16 v1, p0

    #@231
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastChargeStepLevel:I

    #@233
    .line 8296
    move/from16 v0, p7

    #@235
    move-object/from16 v1, p0

    #@237
    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mMaxChargeStepLevel:I

    #@239
    .line 8297
    move-object/from16 v0, p0

    #@23b
    iget v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurStepMode:I

    #@23d
    move-object/from16 v0, p0

    #@23f
    iput v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInitStepMode:I

    #@241
    .line 8298
    const/4 v5, 0x0

    #@242
    move-object/from16 v0, p0

    #@244
    iput v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mModStepMode:I

    #@246
    goto/16 :goto_5

    #@248
    .line 8293
    :cond_f
    const/4 v13, 0x1

    #@249
    goto :goto_6
.end method

.method public setPowerProfile(Lcom/android/internal/os/PowerProfile;)V
    .locals 1
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    #@0
    .prologue
    .line 6876
    monitor-enter p0

    #@1
    .line 6877
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    .line 6875
    return-void

    #@5
    .line 6876
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public setRadioScanningTimeout(J)V
    .locals 1
    .param p1, "timeout"    # J

    #@0
    .prologue
    .line 6890
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 6891
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->setTimeout(J)V

    #@9
    .line 6889
    :cond_0
    return-void
.end method

.method public setRecordAllHistoryLocked(Z)V
    .locals 13
    .param p1, "enabled"    # Z

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 2720
    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mRecordAllHistory:Z

    #@3
    .line 2721
    if-nez p1, :cond_1

    #@5
    .line 2723
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    #@7
    const/4 v6, 0x5

    #@8
    invoke-virtual {v1, v6}, Landroid/os/BatteryStats$HistoryEventTracker;->removeEvents(I)V

    #@b
    .line 2724
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    #@d
    const/16 v6, 0xd

    #@f
    invoke-virtual {v1, v6}, Landroid/os/BatteryStats$HistoryEventTracker;->removeEvents(I)V

    #@12
    .line 2727
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    #@14
    invoke-virtual {v1, v7}, Landroid/os/BatteryStats$HistoryEventTracker;->getStateForEvent(I)Ljava/util/HashMap;

    #@17
    move-result-object v0

    #@18
    .line 2729
    .local v0, "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    if-eqz v0, :cond_3

    #@1a
    .line 2730
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@1d
    move-result-wide v2

    #@1e
    .line 2731
    .local v2, "mSecRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@21
    move-result-wide v4

    #@22
    .line 2732
    .local v4, "mSecUptime":J
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@25
    move-result-object v1

    #@26
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@29
    move-result-object v10

    #@2a
    .local v10, "ent$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@2d
    move-result v1

    #@2e
    if-eqz v1, :cond_3

    #@30
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@33
    move-result-object v9

    #@34
    check-cast v9, Ljava/util/Map$Entry;

    #@36
    .line 2733
    .local v9, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@39
    move-result-object v12

    #@3a
    check-cast v12, Landroid/util/SparseIntArray;

    #@3c
    .line 2734
    .local v12, "uids":Landroid/util/SparseIntArray;
    const/4 v11, 0x0

    #@3d
    .local v11, "j":I
    :goto_0
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    #@40
    move-result v1

    #@41
    if-ge v11, v1, :cond_0

    #@43
    .line 2736
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@46
    move-result-object v7

    #@47
    check-cast v7, Ljava/lang/String;

    #@49
    invoke-virtual {v12, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@4c
    move-result v8

    #@4d
    const/16 v6, 0x4001

    #@4f
    move-object v1, p0

    #@50
    .line 2735
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    #@53
    .line 2734
    add-int/lit8 v11, v11, 0x1

    #@55
    goto :goto_0

    #@56
    .line 2742
    .end local v0    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v2    # "mSecRealtime":J
    .end local v4    # "mSecUptime":J
    .end local v9    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v10    # "ent$iterator":Ljava/util/Iterator;
    .end local v11    # "j":I
    .end local v12    # "uids":Landroid/util/SparseIntArray;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    #@58
    invoke-virtual {v1, v7}, Landroid/os/BatteryStats$HistoryEventTracker;->getStateForEvent(I)Ljava/util/HashMap;

    #@5b
    move-result-object v0

    #@5c
    .line 2744
    .restart local v0    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    if-eqz v0, :cond_3

    #@5e
    .line 2745
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@61
    move-result-wide v2

    #@62
    .line 2746
    .restart local v2    # "mSecRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@65
    move-result-wide v4

    #@66
    .line 2747
    .restart local v4    # "mSecUptime":J
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@69
    move-result-object v1

    #@6a
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6d
    move-result-object v10

    #@6e
    .restart local v10    # "ent$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@71
    move-result v1

    #@72
    if-eqz v1, :cond_3

    #@74
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@77
    move-result-object v9

    #@78
    check-cast v9, Ljava/util/Map$Entry;

    #@7a
    .line 2748
    .restart local v9    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@7d
    move-result-object v12

    #@7e
    check-cast v12, Landroid/util/SparseIntArray;

    #@80
    .line 2749
    .restart local v12    # "uids":Landroid/util/SparseIntArray;
    const/4 v11, 0x0

    #@81
    .restart local v11    # "j":I
    :goto_1
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    #@84
    move-result v1

    #@85
    if-ge v11, v1, :cond_2

    #@87
    .line 2751
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@8a
    move-result-object v7

    #@8b
    check-cast v7, Ljava/lang/String;

    #@8d
    invoke-virtual {v12, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@90
    move-result v8

    #@91
    const v6, 0x8001

    #@94
    move-object v1, p0

    #@95
    .line 2750
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    #@98
    .line 2749
    add-int/lit8 v11, v11, 0x1

    #@9a
    goto :goto_1

    #@9b
    .line 2719
    .end local v2    # "mSecRealtime":J
    .end local v4    # "mSecUptime":J
    .end local v9    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v10    # "ent$iterator":Ljava/util/Iterator;
    .end local v11    # "j":I
    .end local v12    # "uids":Landroid/util/SparseIntArray;
    :cond_3
    return-void
.end method

.method public shutdownLocked()V
    .locals 4

    #@0
    .prologue
    .line 8836
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v0

    #@4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@7
    move-result-wide v2

    #@8
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->recordShutdownLocked(JJ)V

    #@b
    .line 8837
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->writeSyncLocked()V

    #@e
    .line 8838
    const/4 v0, 0x1

    #@f
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mShuttingDown:Z

    #@11
    .line 8835
    return-void
.end method

.method public startAddingCpuLocked()Z
    .locals 2

    #@0
    .prologue
    .line 2918
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->removeMessages(I)V

    #@6
    .line 2919
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    #@8
    return v0
.end method

.method public startIteratingHistoryLocked()Z
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 7281
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    #@4
    invoke-virtual {v4}, Landroid/os/Parcel;->dataSize()I

    #@7
    move-result v4

    #@8
    if-gtz v4, :cond_0

    #@a
    .line 7282
    return v5

    #@b
    .line 7284
    :cond_0
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    #@d
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    #@10
    .line 7285
    iput-boolean v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadOverflow:Z

    #@12
    .line 7286
    iput-boolean v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIteratingHistory:Z

    #@14
    .line 7287
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    #@16
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    #@19
    move-result v4

    #@1a
    new-array v4, v4, [Ljava/lang/String;

    #@1c
    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStrings:[Ljava/lang/String;

    #@1e
    .line 7288
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    #@20
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    #@23
    move-result v4

    #@24
    new-array v4, v4, [I

    #@26
    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryUids:[I

    #@28
    .line 7289
    iput v5, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryChars:I

    #@2a
    .line 7290
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    #@2c
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@2f
    move-result-object v4

    #@30
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@33
    move-result-object v1

    #@34
    .local v1, "ent$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@37
    move-result v4

    #@38
    if-eqz v4, :cond_1

    #@3a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3d
    move-result-object v0

    #@3e
    check-cast v0, Ljava/util/Map$Entry;

    #@40
    .line 7291
    .local v0, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/BatteryStats$HistoryTag;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@43
    move-result-object v3

    #@44
    check-cast v3, Landroid/os/BatteryStats$HistoryTag;

    #@46
    .line 7292
    .local v3, "tag":Landroid/os/BatteryStats$HistoryTag;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@49
    move-result-object v4

    #@4a
    check-cast v4, Ljava/lang/Integer;

    #@4c
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@4f
    move-result v2

    #@50
    .line 7293
    .local v2, "idx":I
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryStrings:[Ljava/lang/String;

    #@52
    iget-object v5, v3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    #@54
    aput-object v5, v4, v2

    #@56
    .line 7294
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryUids:[I

    #@58
    iget v5, v3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    #@5a
    aput v5, v4, v2

    #@5c
    .line 7295
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryChars:I

    #@5e
    iget-object v5, v3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    #@60
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@63
    move-result v5

    #@64
    add-int/lit8 v5, v5, 0x1

    #@66
    add-int/2addr v4, v5

    #@67
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadHistoryChars:I

    #@69
    goto :goto_0

    #@6a
    .line 7297
    .end local v0    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/BatteryStats$HistoryTag;Ljava/lang/Integer;>;"
    .end local v2    # "idx":I
    .end local v3    # "tag":Landroid/os/BatteryStats$HistoryTag;
    :cond_1
    return v6
.end method

.method public startIteratingOldHistoryLocked()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 7219
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistory:Landroid/os/BatteryStats$HistoryItem;

    #@4
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryIterator:Landroid/os/BatteryStats$HistoryItem;

    #@6
    if-nez v0, :cond_0

    #@8
    .line 7220
    return v1

    #@9
    .line 7222
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    #@b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@e
    .line 7223
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    #@10
    invoke-virtual {v0}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    #@13
    .line 7224
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mReadOverflow:Z

    #@15
    .line 7225
    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mIteratingHistory:Z

    #@17
    .line 7226
    return v2
.end method

.method stopAllPhoneSignalStrengthTimersLocked(I)V
    .locals 4
    .param p1, "except"    # I

    #@0
    .prologue
    .line 3321
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v0

    #@4
    .line 3322
    .local v0, "elapsedRealtime":J
    const/4 v2, 0x0

    #@5
    .local v2, "i":I
    :goto_0
    const/4 v3, 0x5

    #@6
    if-ge v2, v3, :cond_2

    #@8
    .line 3323
    if-ne v2, p1, :cond_1

    #@a
    .line 3322
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@c
    goto :goto_0

    #@d
    .line 3326
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@f
    aget-object v3, v3, v2

    #@11
    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_0

    #@17
    .line 3327
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@19
    aget-object v3, v3, v2

    #@1b
    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@1e
    goto :goto_1

    #@1f
    .line 3320
    :cond_2
    return-void
.end method

.method stopAllWifiSignalStrengthTimersLocked(I)V
    .locals 4
    .param p1, "except"    # I

    #@0
    .prologue
    .line 3872
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v0

    #@4
    .line 3873
    .local v0, "elapsedRealtime":J
    const/4 v2, 0x0

    #@5
    .local v2, "i":I
    :goto_0
    const/4 v3, 0x5

    #@6
    if-ge v2, v3, :cond_2

    #@8
    .line 3874
    if-ne v2, p1, :cond_1

    #@a
    .line 3873
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@c
    goto :goto_0

    #@d
    .line 3877
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@f
    aget-object v3, v3, v2

    #@11
    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_0

    #@17
    .line 3878
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@19
    aget-object v3, v3, v2

    #@1b
    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@1e
    goto :goto_1

    #@1f
    .line 3871
    :cond_2
    return-void
.end method

.method public updateBluetoothStateLocked(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V
    .locals 6
    .param p1, "info"    # Landroid/bluetooth/BluetoothActivityEnergyInfo;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 7904
    if-eqz p1, :cond_0

    #@3
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 7905
    iput-boolean v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHasBluetoothEnergyReporting:Z

    #@9
    .line 7906
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@b
    aget-object v2, v2, v3

    #@d
    .line 7907
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerRxTimeMillis()J

    #@10
    move-result-wide v4

    #@11
    .line 7906
    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    #@14
    .line 7908
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@16
    const/4 v3, 0x2

    #@17
    aget-object v2, v2, v3

    #@19
    .line 7909
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerTxTimeMillis()J

    #@1c
    move-result-wide v4

    #@1d
    .line 7908
    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    #@20
    .line 7910
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@22
    const/4 v3, 0x0

    #@23
    aget-object v2, v2, v3

    #@25
    .line 7911
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerIdleTimeMillis()J

    #@28
    move-result-wide v4

    #@29
    .line 7910
    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    #@2c
    .line 7914
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    #@2e
    .line 7915
    const-string/jumbo v3, "bluetooth.controller.voltage"

    #@31
    .line 7914
    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    #@34
    move-result-wide v2

    #@35
    .line 7915
    const-wide v4, 0x408f400000000000L    # 1000.0

    #@3a
    .line 7914
    div-double v0, v2, v4

    #@3c
    .line 7916
    .local v0, "opVolt":D
    const-wide/16 v2, 0x0

    #@3e
    cmpl-double v2, v0, v2

    #@40
    if-eqz v2, :cond_0

    #@42
    .line 7918
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@44
    const/4 v3, 0x3

    #@45
    aget-object v2, v2, v3

    #@47
    .line 7919
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerEnergyUsed()J

    #@4a
    move-result-wide v4

    #@4b
    long-to-double v4, v4

    #@4c
    div-double/2addr v4, v0

    #@4d
    double-to-long v4, v4

    #@4e
    .line 7918
    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    #@51
    .line 7899
    .end local v0    # "opVolt":D
    :cond_0
    return-void
.end method

.method public updateCpuTimeLocked()V
    .locals 24

    #@0
    .prologue
    .line 7999
    const/16 v18, 0x32

    #@2
    .line 8002
    .local v18, "wakelockWeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getCpuSpeedSteps()I

    #@5
    move-result v4

    #@6
    .line 8003
    .local v4, "cpuSpeedSteps":I
    move-object/from16 v0, p0

    #@8
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelCpuSpeedReader:Lcom/android/internal/os/KernelCpuSpeedReader;

    #@a
    move-object/from16 v19, v0

    #@c
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/os/KernelCpuSpeedReader;->readDelta()[J

    #@f
    move-result-object v5

    #@10
    .line 8005
    .local v5, "cpuSpeeds":[J
    const/4 v9, 0x0

    #@11
    .line 8009
    .local v9, "numWakelocks":I
    move-object/from16 v0, p0

    #@13
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    #@15
    move-object/from16 v19, v0

    #@17
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    #@1a
    move-result v8

    #@1b
    .line 8010
    .local v8, "numPartialTimers":I
    move-object/from16 v0, p0

    #@1d
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@1f
    move-object/from16 v19, v0

    #@21
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    #@24
    move-result v19

    #@25
    if-eqz v19, :cond_1

    #@27
    .line 8011
    const/4 v6, 0x0

    #@28
    .local v6, "i":I
    :goto_0
    if-ge v6, v8, :cond_1

    #@2a
    .line 8012
    move-object/from16 v0, p0

    #@2c
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    #@2e
    move-object/from16 v19, v0

    #@30
    move-object/from16 v0, v19

    #@32
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@35
    move-result-object v15

    #@36
    check-cast v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@38
    .line 8013
    .local v15, "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iget-boolean v0, v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mInList:Z

    #@3a
    move/from16 v19, v0

    #@3c
    if-eqz v19, :cond_0

    #@3e
    iget-object v0, v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@40
    move-object/from16 v19, v0

    #@42
    if-eqz v19, :cond_0

    #@44
    iget-object v0, v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@46
    move-object/from16 v19, v0

    #@48
    move-object/from16 v0, v19

    #@4a
    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    #@4c
    move/from16 v19, v0

    #@4e
    const/16 v20, 0x3e8

    #@50
    move/from16 v0, v19

    #@52
    move/from16 v1, v20

    #@54
    if-eq v0, v1, :cond_0

    #@56
    .line 8019
    add-int/lit8 v9, v9, 0x1

    #@58
    .line 8011
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@5a
    goto :goto_0

    #@5b
    .line 8024
    .end local v6    # "i":I
    .end local v15    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_1
    move v10, v9

    #@5c
    .line 8025
    .local v10, "numWakelocksF":I
    const-wide/16 v20, 0x0

    #@5e
    move-wide/from16 v0, v20

    #@60
    move-object/from16 v2, p0

    #@62
    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    #@64
    .line 8026
    const-wide/16 v20, 0x0

    #@66
    move-wide/from16 v0, v20

    #@68
    move-object/from16 v2, p0

    #@6a
    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    #@6c
    .line 8031
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@6f
    move-result-wide v12

    #@70
    .line 8032
    .local v12, "startTimeMs":J
    move-object/from16 v0, p0

    #@72
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelUidCpuTimeReader:Lcom/android/internal/os/KernelUidCpuTimeReader;

    #@74
    move-object/from16 v20, v0

    #@76
    move-object/from16 v0, p0

    #@78
    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    #@7a
    move/from16 v19, v0

    #@7c
    if-nez v19, :cond_3

    #@7e
    const/16 v19, 0x0

    #@80
    :goto_1
    move-object/from16 v0, v20

    #@82
    move-object/from16 v1, v19

    #@84
    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelUidCpuTimeReader;->readDelta(Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;)V

    #@87
    .line 8090
    move-object/from16 v0, p0

    #@89
    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    #@8b
    move/from16 v19, v0

    #@8d
    if-eqz v19, :cond_6

    #@8f
    if-lez v9, :cond_6

    #@91
    .line 8092
    move-object/from16 v0, p0

    #@93
    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    #@95
    move-wide/from16 v20, v0

    #@97
    const-wide/16 v22, 0x32

    #@99
    mul-long v20, v20, v22

    #@9b
    const-wide/16 v22, 0x64

    #@9d
    div-long v20, v20, v22

    #@9f
    move-wide/from16 v0, v20

    #@a1
    move-object/from16 v2, p0

    #@a3
    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    #@a5
    .line 8094
    move-object/from16 v0, p0

    #@a7
    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    #@a9
    move-wide/from16 v20, v0

    #@ab
    const-wide/16 v22, 0x32

    #@ad
    mul-long v20, v20, v22

    #@af
    const-wide/16 v22, 0x64

    #@b1
    div-long v20, v20, v22

    #@b3
    .line 8093
    move-wide/from16 v0, v20

    #@b5
    move-object/from16 v2, p0

    #@b7
    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    #@b9
    .line 8096
    const/4 v6, 0x0

    #@ba
    .restart local v6    # "i":I
    :goto_2
    if-ge v6, v8, :cond_4

    #@bc
    .line 8097
    move-object/from16 v0, p0

    #@be
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    #@c0
    move-object/from16 v19, v0

    #@c2
    move-object/from16 v0, v19

    #@c4
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c7
    move-result-object v15

    #@c8
    check-cast v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@ca
    .line 8101
    .restart local v15    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iget-boolean v0, v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mInList:Z

    #@cc
    move/from16 v19, v0

    #@ce
    if-eqz v19, :cond_2

    #@d0
    iget-object v0, v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@d2
    move-object/from16 v19, v0

    #@d4
    if-eqz v19, :cond_2

    #@d6
    iget-object v0, v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@d8
    move-object/from16 v19, v0

    #@da
    move-object/from16 v0, v19

    #@dc
    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    #@de
    move/from16 v19, v0

    #@e0
    const/16 v20, 0x3e8

    #@e2
    move/from16 v0, v19

    #@e4
    move/from16 v1, v20

    #@e6
    if-eq v0, v1, :cond_2

    #@e8
    .line 8102
    move-object/from16 v0, p0

    #@ea
    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    #@ec
    move-wide/from16 v20, v0

    #@ee
    int-to-long v0, v9

    #@ef
    move-wide/from16 v22, v0

    #@f1
    div-long v20, v20, v22

    #@f3
    move-wide/from16 v0, v20

    #@f5
    long-to-int v0, v0

    #@f6
    move/from16 v17, v0

    #@f8
    .line 8103
    .local v17, "userTimeUs":I
    move-object/from16 v0, p0

    #@fa
    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    #@fc
    move-wide/from16 v20, v0

    #@fe
    int-to-long v0, v9

    #@ff
    move-wide/from16 v22, v0

    #@101
    div-long v20, v20, v22

    #@103
    move-wide/from16 v0, v20

    #@105
    long-to-int v14, v0

    #@106
    .line 8115
    .local v14, "systemTimeUs":I
    iget-object v0, v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@108
    move-object/from16 v19, v0

    #@10a
    move-object/from16 v0, v19

    #@10c
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@10e
    move-object/from16 v19, v0

    #@110
    move/from16 v0, v17

    #@112
    int-to-long v0, v0

    #@113
    move-wide/from16 v20, v0

    #@115
    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    #@118
    .line 8116
    iget-object v0, v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@11a
    move-object/from16 v19, v0

    #@11c
    move-object/from16 v0, v19

    #@11e
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@120
    move-object/from16 v19, v0

    #@122
    int-to-long v0, v14

    #@123
    move-wide/from16 v20, v0

    #@125
    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    #@128
    .line 8118
    iget-object v0, v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@12a
    move-object/from16 v19, v0

    #@12c
    const-string/jumbo v20, "*wakelock*"

    #@12f
    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    #@132
    move-result-object v11

    #@133
    .line 8119
    .local v11, "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    move/from16 v0, v17

    #@135
    div-int/lit16 v0, v0, 0x3e8

    #@137
    move/from16 v19, v0

    #@139
    div-int/lit16 v0, v14, 0x3e8

    #@13b
    move/from16 v20, v0

    #@13d
    move/from16 v0, v19

    #@13f
    move/from16 v1, v20

    #@141
    invoke-virtual {v11, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addCpuTimeLocked(II)V

    #@144
    .line 8121
    move-object/from16 v0, p0

    #@146
    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    #@148
    move-wide/from16 v20, v0

    #@14a
    move/from16 v0, v17

    #@14c
    int-to-long v0, v0

    #@14d
    move-wide/from16 v22, v0

    #@14f
    sub-long v20, v20, v22

    #@151
    move-wide/from16 v0, v20

    #@153
    move-object/from16 v2, p0

    #@155
    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    #@157
    .line 8122
    move-object/from16 v0, p0

    #@159
    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    #@15b
    move-wide/from16 v20, v0

    #@15d
    int-to-long v0, v14

    #@15e
    move-wide/from16 v22, v0

    #@160
    sub-long v20, v20, v22

    #@162
    move-wide/from16 v0, v20

    #@164
    move-object/from16 v2, p0

    #@166
    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    #@168
    .line 8123
    add-int/lit8 v9, v9, -0x1

    #@16a
    .line 8096
    .end local v11    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .end local v14    # "systemTimeUs":I
    .end local v17    # "userTimeUs":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    #@16c
    goto/16 :goto_2

    #@16e
    .line 8033
    .end local v6    # "i":I
    .end local v15    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_3
    new-instance v19, Lcom/android/internal/os/BatteryStatsImpl$3;

    #@170
    move-object/from16 v0, v19

    #@172
    move-object/from16 v1, p0

    #@174
    invoke-direct {v0, v1, v10, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$3;-><init>(Lcom/android/internal/os/BatteryStatsImpl;II[J)V

    #@177
    goto/16 :goto_1

    #@179
    .line 8127
    .restart local v6    # "i":I
    :cond_4
    move-object/from16 v0, p0

    #@17b
    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    #@17d
    move-wide/from16 v20, v0

    #@17f
    const-wide/16 v22, 0x0

    #@181
    cmp-long v19, v20, v22

    #@183
    if-gtz v19, :cond_5

    #@185
    move-object/from16 v0, p0

    #@187
    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    #@189
    move-wide/from16 v20, v0

    #@18b
    const-wide/16 v22, 0x0

    #@18d
    cmp-long v19, v20, v22

    #@18f
    if-lez v19, :cond_6

    #@191
    .line 8138
    :cond_5
    const/16 v19, 0x3e8

    #@193
    move-object/from16 v0, p0

    #@195
    move/from16 v1, v19

    #@197
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@19a
    move-result-object v16

    #@19b
    .line 8139
    .local v16, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    move-object/from16 v0, v16

    #@19d
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@19f
    move-object/from16 v19, v0

    #@1a1
    move-object/from16 v0, p0

    #@1a3
    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    #@1a5
    move-wide/from16 v20, v0

    #@1a7
    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    #@1aa
    .line 8140
    move-object/from16 v0, v16

    #@1ac
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@1ae
    move-object/from16 v19, v0

    #@1b0
    move-object/from16 v0, p0

    #@1b2
    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    #@1b4
    move-wide/from16 v20, v0

    #@1b6
    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    #@1b9
    .line 8142
    const-string/jumbo v19, "*lost*"

    #@1bc
    move-object/from16 v0, v16

    #@1be
    move-object/from16 v1, v19

    #@1c0
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    #@1c3
    move-result-object v11

    #@1c4
    .line 8143
    .restart local v11    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    move-object/from16 v0, p0

    #@1c6
    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    #@1c8
    move-wide/from16 v20, v0

    #@1ca
    move-wide/from16 v0, v20

    #@1cc
    long-to-int v0, v0

    #@1cd
    move/from16 v19, v0

    #@1cf
    move/from16 v0, v19

    #@1d1
    div-int/lit16 v0, v0, 0x3e8

    #@1d3
    move/from16 v19, v0

    #@1d5
    .line 8144
    move-object/from16 v0, p0

    #@1d7
    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    #@1d9
    move-wide/from16 v20, v0

    #@1db
    move-wide/from16 v0, v20

    #@1dd
    long-to-int v0, v0

    #@1de
    move/from16 v20, v0

    #@1e0
    move/from16 v0, v20

    #@1e2
    div-int/lit16 v0, v0, 0x3e8

    #@1e4
    move/from16 v20, v0

    #@1e6
    .line 8143
    move/from16 v0, v19

    #@1e8
    move/from16 v1, v20

    #@1ea
    invoke-virtual {v11, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addCpuTimeLocked(II)V

    #@1ed
    .line 8150
    .end local v6    # "i":I
    .end local v11    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .end local v16    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_6
    move-object/from16 v0, p0

    #@1ef
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    #@1f1
    move-object/from16 v19, v0

    #@1f3
    move-object/from16 v0, p0

    #@1f5
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    #@1f7
    move-object/from16 v20, v0

    #@1f9
    invoke-static/range {v19 .. v20}, Lcom/android/internal/util/ArrayUtils;->referenceEquals(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    #@1fc
    move-result v19

    #@1fd
    if-eqz v19, :cond_7

    #@1ff
    .line 8152
    const/4 v6, 0x0

    #@200
    .restart local v6    # "i":I
    :goto_3
    if-ge v6, v8, :cond_9

    #@202
    .line 8153
    move-object/from16 v0, p0

    #@204
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    #@206
    move-object/from16 v19, v0

    #@208
    move-object/from16 v0, v19

    #@20a
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20d
    move-result-object v19

    #@20e
    check-cast v19, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@210
    const/16 v20, 0x1

    #@212
    move/from16 v0, v20

    #@214
    move-object/from16 v1, v19

    #@216
    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mInList:Z

    #@218
    .line 8152
    add-int/lit8 v6, v6, 0x1

    #@21a
    goto :goto_3

    #@21b
    .line 8158
    .end local v6    # "i":I
    :cond_7
    move-object/from16 v0, p0

    #@21d
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    #@21f
    move-object/from16 v19, v0

    #@221
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    #@224
    move-result v7

    #@225
    .line 8159
    .local v7, "numLastPartialTimers":I
    const/4 v6, 0x0

    #@226
    .restart local v6    # "i":I
    :goto_4
    if-ge v6, v7, :cond_8

    #@228
    .line 8160
    move-object/from16 v0, p0

    #@22a
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    #@22c
    move-object/from16 v19, v0

    #@22e
    move-object/from16 v0, v19

    #@230
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@233
    move-result-object v19

    #@234
    check-cast v19, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@236
    const/16 v20, 0x0

    #@238
    move/from16 v0, v20

    #@23a
    move-object/from16 v1, v19

    #@23c
    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mInList:Z

    #@23e
    .line 8159
    add-int/lit8 v6, v6, 0x1

    #@240
    goto :goto_4

    #@241
    .line 8162
    :cond_8
    move-object/from16 v0, p0

    #@243
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    #@245
    move-object/from16 v19, v0

    #@247
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    #@24a
    .line 8165
    const/4 v6, 0x0

    #@24b
    :goto_5
    if-ge v6, v8, :cond_9

    #@24d
    .line 8166
    move-object/from16 v0, p0

    #@24f
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    #@251
    move-object/from16 v19, v0

    #@253
    move-object/from16 v0, v19

    #@255
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@258
    move-result-object v15

    #@259
    check-cast v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@25b
    .line 8167
    .restart local v15    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    const/16 v19, 0x1

    #@25d
    move/from16 v0, v19

    #@25f
    iput-boolean v0, v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mInList:Z

    #@261
    .line 8168
    move-object/from16 v0, p0

    #@263
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastPartialTimers:Ljava/util/ArrayList;

    #@265
    move-object/from16 v19, v0

    #@267
    move-object/from16 v0, v19

    #@269
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@26c
    .line 8165
    add-int/lit8 v6, v6, 0x1

    #@26e
    goto :goto_5

    #@26f
    .line 7990
    .end local v7    # "numLastPartialTimers":I
    .end local v15    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_9
    return-void
.end method

.method public updateDailyDeadlineLocked()V
    .locals 7

    #@0
    .prologue
    const/16 v6, 0xb

    #@2
    const/4 v5, 0x6

    #@3
    const/4 v4, 0x0

    #@4
    .line 6897
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@7
    move-result-wide v2

    #@8
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyStartTime:J

    #@a
    .line 6898
    .local v2, "currentTime":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@d
    move-result-object v0

    #@e
    .line 6899
    .local v0, "calDeadline":Ljava/util/Calendar;
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@11
    .line 6902
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    #@14
    move-result v1

    #@15
    add-int/lit8 v1, v1, 0x1

    #@17
    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->set(II)V

    #@1a
    .line 6903
    const/16 v1, 0xe

    #@1c
    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    #@1f
    .line 6904
    const/16 v1, 0xd

    #@21
    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    #@24
    .line 6905
    const/16 v1, 0xc

    #@26
    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    #@29
    .line 6906
    const/4 v1, 0x1

    #@2a
    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    #@2d
    .line 6907
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    #@30
    move-result-wide v4

    #@31
    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMinDailyDeadline:J

    #@33
    .line 6908
    const/4 v1, 0x3

    #@34
    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    #@37
    .line 6909
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    #@3a
    move-result-wide v4

    #@3b
    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMaxDailyDeadline:J

    #@3d
    .line 6895
    return-void
.end method

.method updateDischargeScreenLevelsLocked(ZZ)V
    .locals 4
    .param p1, "oldScreenOn"    # Z
    .param p2, "newScreenOn"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 7528
    if-eqz p1, :cond_1

    #@3
    .line 7529
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    #@5
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    #@7
    sub-int v0, v1, v2

    #@9
    .line 7530
    .local v0, "diff":I
    if-lez v0, :cond_0

    #@b
    .line 7531
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOn:I

    #@d
    add-int/2addr v1, v0

    #@e
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOn:I

    #@10
    .line 7532
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOnSinceCharge:I

    #@12
    add-int/2addr v1, v0

    #@13
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOnSinceCharge:I

    #@15
    .line 7541
    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    #@17
    .line 7542
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    #@19
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    #@1b
    .line 7543
    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    #@1d
    .line 7527
    :goto_1
    return-void

    #@1e
    .line 7535
    .end local v0    # "diff":I
    :cond_1
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    #@20
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    #@22
    sub-int v0, v1, v2

    #@24
    .line 7536
    .restart local v0    # "diff":I
    if-lez v0, :cond_0

    #@26
    .line 7537
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOff:I

    #@28
    add-int/2addr v1, v0

    #@29
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOff:I

    #@2b
    .line 7538
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOffSinceCharge:I

    #@2d
    add-int/2addr v1, v0

    #@2e
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOffSinceCharge:I

    #@30
    goto :goto_0

    #@31
    .line 7545
    :cond_2
    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOnUnplugLevel:I

    #@33
    .line 7546
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    #@35
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeScreenOffUnplugLevel:I

    #@37
    goto :goto_1
.end method

.method public updateKernelWakelocksLocked()V
    .locals 14

    #@0
    .prologue
    .line 7928
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

    #@2
    .line 7929
    iget-object v11, p0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

    #@4
    .line 7928
    invoke-virtual {v10, v11}, Lcom/android/internal/os/KernelWakelockReader;->readKernelWakelockStats(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;

    #@7
    move-result-object v9

    #@8
    .line 7930
    .local v9, "wakelockStats":Lcom/android/internal/os/KernelWakelockStats;
    if-nez v9, :cond_0

    #@a
    .line 7932
    const-string/jumbo v10, "BatteryStatsImpl"

    #@d
    const-string/jumbo v11, "Couldn\'t get kernel wake lock stats"

    #@10
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 7933
    return-void

    #@14
    .line 7937
    :cond_0
    const/4 v7, 0x0

    #@15
    .line 7938
    .local v7, "seenNonZeroTime":Z
    invoke-virtual {v9}, Lcom/android/internal/os/KernelWakelockStats;->entrySet()Ljava/util/Set;

    #@18
    move-result-object v10

    #@19
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1c
    move-result-object v2

    #@1d
    .end local v7    # "seenNonZeroTime":Z
    .local v2, "ent$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result v10

    #@21
    if-eqz v10, :cond_4

    #@23
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26
    move-result-object v1

    #@27
    check-cast v1, Ljava/util/Map$Entry;

    #@29
    .line 7939
    .local v1, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/KernelWakelockStats$Entry;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@2c
    move-result-object v5

    #@2d
    check-cast v5, Ljava/lang/String;

    #@2f
    .line 7940
    .local v5, "name":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@32
    move-result-object v4

    #@33
    check-cast v4, Lcom/android/internal/os/KernelWakelockStats$Entry;

    #@35
    .line 7942
    .local v4, "kws":Lcom/android/internal/os/KernelWakelockStats$Entry;
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    #@37
    invoke-virtual {v10, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    move-result-object v3

    #@3b
    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    #@3d
    .line 7943
    .local v3, "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    if-nez v3, :cond_2

    #@3f
    .line 7944
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    #@41
    .end local v3    # "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@43
    .line 7945
    const/4 v11, 0x1

    #@44
    .line 7944
    invoke-direct {v3, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Z)V

    #@47
    .line 7946
    .restart local v3    # "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    #@49
    invoke-virtual {v10, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4c
    .line 7948
    :cond_2
    iget v10, v4, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    #@4e
    invoke-virtual {v3, v10}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->updateCurrentReportedCount(I)V

    #@51
    .line 7949
    iget-wide v10, v4, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    #@53
    invoke-virtual {v3, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->updateCurrentReportedTotalTime(J)V

    #@56
    .line 7950
    iget v10, v4, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    #@58
    invoke-virtual {v3, v10}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->setUpdateVersion(I)V

    #@5b
    .line 7952
    iget v10, v4, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    #@5d
    iget v11, v9, Lcom/android/internal/os/KernelWakelockStats;->kernelWakelockVersion:I

    #@5f
    if-eq v10, v11, :cond_1

    #@61
    .line 7953
    iget-wide v10, v4, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    #@63
    const-wide/16 v12, 0x0

    #@65
    cmp-long v10, v10, v12

    #@67
    if-lez v10, :cond_3

    #@69
    const/4 v10, 0x1

    #@6a
    :goto_1
    or-int/2addr v7, v10

    #@6b
    .local v7, "seenNonZeroTime":Z
    goto :goto_0

    #@6c
    .end local v7    # "seenNonZeroTime":Z
    :cond_3
    const/4 v10, 0x0

    #@6d
    goto :goto_1

    #@6e
    .line 7956
    .end local v1    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/KernelWakelockStats$Entry;>;"
    .end local v3    # "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    .end local v4    # "kws":Lcom/android/internal/os/KernelWakelockStats$Entry;
    .end local v5    # "name":Ljava/lang/String;
    :cond_4
    const/4 v6, 0x0

    #@6f
    .line 7957
    .local v6, "numWakelocksSetStale":I
    invoke-virtual {v9}, Lcom/android/internal/os/KernelWakelockStats;->size()I

    #@72
    move-result v10

    #@73
    iget-object v11, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    #@75
    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    #@78
    move-result v11

    #@79
    if-eq v10, v11, :cond_6

    #@7b
    .line 7959
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    #@7d
    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@80
    move-result-object v10

    #@81
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@84
    move-result-object v2

    #@85
    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@88
    move-result v10

    #@89
    if-eqz v10, :cond_6

    #@8b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@8e
    move-result-object v0

    #@8f
    check-cast v0, Ljava/util/Map$Entry;

    #@91
    .line 7960
    .local v0, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@94
    move-result-object v8

    #@95
    check-cast v8, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    #@97
    .line 7961
    .local v8, "st":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->getUpdateVersion()I

    #@9a
    move-result v10

    #@9b
    iget v11, v9, Lcom/android/internal/os/KernelWakelockStats;->kernelWakelockVersion:I

    #@9d
    if-eq v10, v11, :cond_5

    #@9f
    .line 7962
    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->setStale()V

    #@a2
    .line 7963
    add-int/lit8 v6, v6, 0x1

    #@a4
    goto :goto_2

    #@a5
    .line 7968
    .end local v0    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    .end local v8    # "st":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_6
    if-nez v7, :cond_7

    #@a7
    .line 7969
    const-string/jumbo v10, "BatteryStatsImpl"

    #@aa
    const-string/jumbo v11, "All kernel wakelocks had time of zero"

    #@ad
    invoke-static {v10, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@b0
    .line 7972
    :cond_7
    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    #@b2
    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    #@b5
    move-result v10

    #@b6
    if-ne v6, v10, :cond_8

    #@b8
    .line 7973
    const-string/jumbo v10, "BatteryStatsImpl"

    #@bb
    new-instance v11, Ljava/lang/StringBuilder;

    #@bd
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@c0
    const-string/jumbo v12, "All kernel wakelocks were set stale. new version="

    #@c3
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v11

    #@c7
    .line 7974
    iget v12, v9, Lcom/android/internal/os/KernelWakelockStats;->kernelWakelockVersion:I

    #@c9
    .line 7973
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v11

    #@cd
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d0
    move-result-object v11

    #@d1
    invoke-static {v10, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@d4
    .line 7927
    :cond_8
    return-void
.end method

.method public updateMobileRadioStateLocked(J)V
    .locals 23
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 7828
    const/4 v12, 0x0

    #@1
    .line 7830
    .local v12, "delta":Landroid/net/NetworkStats;
    :try_start_0
    move-object/from16 v0, p0

    #@3
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileIfaces:[Ljava/lang/String;

    #@5
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    #@8
    move-result v3

    #@9
    if-nez v3, :cond_0

    #@b
    .line 7831
    move-object/from16 v0, p0

    #@d
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileIfaces:[Ljava/lang/String;

    #@f
    move-object/from16 v0, p0

    #@11
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileNetworkStats:[Landroid/net/NetworkStats;

    #@13
    move-object/from16 v0, p0

    #@15
    invoke-direct {v0, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getNetworkStatsDeltaLocked([Ljava/lang/String;[Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    move-result-object v12

    #@19
    .line 7838
    .end local v12    # "delta":Landroid/net/NetworkStats;
    :cond_0
    if-eqz v12, :cond_2

    #@1b
    move-object/from16 v0, p0

    #@1d
    iget-boolean v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    #@1f
    if-eqz v3, :cond_2

    #@21
    .line 7842
    move-object/from16 v0, p0

    #@23
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@25
    .line 7843
    const-wide/16 v4, 0x3e8

    #@27
    mul-long v4, v4, p1

    #@29
    .line 7842
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTimeSinceMarkLocked(J)J

    #@2c
    move-result-wide v16

    #@2d
    .line 7844
    .local v16, "radioTime":J
    move-object/from16 v0, p0

    #@2f
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@31
    move-wide/from16 v0, p1

    #@33
    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->setMark(J)V

    #@36
    .line 7845
    invoke-virtual {v12}, Landroid/net/NetworkStats;->getTotalPackets()J

    #@39
    move-result-wide v20

    #@3a
    .line 7847
    .local v20, "totalPackets":J
    invoke-virtual {v12}, Landroid/net/NetworkStats;->size()I

    #@3d
    move-result v18

    #@3e
    .line 7848
    .local v18, "size":I
    const/4 v15, 0x0

    #@3f
    .local v15, "i":I
    :goto_0
    move/from16 v0, v18

    #@41
    if-ge v15, v0, :cond_5

    #@43
    .line 7849
    move-object/from16 v0, p0

    #@45
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpNetworkStatsEntry:Landroid/net/NetworkStats$Entry;

    #@47
    invoke-virtual {v12, v15, v3}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    #@4a
    move-result-object v14

    #@4b
    .line 7851
    .local v14, "entry":Landroid/net/NetworkStats$Entry;
    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@4d
    const-wide/16 v6, 0x0

    #@4f
    cmp-long v3, v4, v6

    #@51
    if-eqz v3, :cond_1

    #@53
    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@55
    const-wide/16 v6, 0x0

    #@57
    cmp-long v3, v4, v6

    #@59
    if-nez v3, :cond_3

    #@5b
    .line 7848
    :cond_1
    :goto_1
    add-int/lit8 v15, v15, 0x1

    #@5d
    goto :goto_0

    #@5e
    .line 7833
    .end local v14    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v15    # "i":I
    .end local v16    # "radioTime":J
    .end local v18    # "size":I
    .end local v20    # "totalPackets":J
    .restart local v12    # "delta":Landroid/net/NetworkStats;
    :catch_0
    move-exception v13

    #@5f
    .line 7834
    .local v13, "e":Ljava/io/IOException;
    const-string/jumbo v3, "BatteryStatsImpl"

    #@62
    const-string/jumbo v4, "Failed to get mobile network stats"

    #@65
    invoke-static {v3, v4, v13}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@68
    .line 7835
    return-void

    #@69
    .line 7839
    .end local v12    # "delta":Landroid/net/NetworkStats;
    .end local v13    # "e":Ljava/io/IOException;
    :cond_2
    return-void

    #@6a
    .line 7861
    .restart local v14    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v15    # "i":I
    .restart local v16    # "radioTime":J
    .restart local v18    # "size":I
    .restart local v20    # "totalPackets":J
    :cond_3
    iget v3, v14, Landroid/net/NetworkStats$Entry;->uid:I

    #@6c
    move-object/from16 v0, p0

    #@6e
    invoke-virtual {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@71
    move-result v3

    #@72
    move-object/from16 v0, p0

    #@74
    invoke-virtual {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@77
    move-result-object v2

    #@78
    .line 7862
    .local v2, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@7a
    .line 7863
    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@7c
    .line 7862
    const/4 v3, 0x0

    #@7d
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteNetworkActivityLocked(IJJ)V

    #@80
    .line 7864
    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@82
    .line 7865
    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@84
    .line 7864
    const/4 v3, 0x1

    #@85
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteNetworkActivityLocked(IJJ)V

    #@88
    .line 7867
    const-wide/16 v4, 0x0

    #@8a
    cmp-long v3, v16, v4

    #@8c
    if-lez v3, :cond_4

    #@8e
    .line 7869
    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@90
    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@92
    add-long v8, v4, v6

    #@94
    .line 7870
    .local v8, "appPackets":J
    mul-long v4, v16, v8

    #@96
    div-long v10, v4, v20

    #@98
    .line 7871
    .local v10, "appRadioTime":J
    invoke-virtual {v2, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteMobileRadioActiveTimeLocked(J)V

    #@9b
    .line 7874
    sub-long v16, v16, v10

    #@9d
    .line 7875
    sub-long v20, v20, v8

    #@9f
    .line 7878
    .end local v8    # "appPackets":J
    .end local v10    # "appRadioTime":J
    :cond_4
    move-object/from16 v0, p0

    #@a1
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@a3
    const/4 v4, 0x0

    #@a4
    aget-object v3, v3, v4

    #@a6
    .line 7879
    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@a8
    .line 7878
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    #@ab
    .line 7880
    move-object/from16 v0, p0

    #@ad
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@af
    const/4 v4, 0x1

    #@b0
    aget-object v3, v3, v4

    #@b2
    .line 7881
    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@b4
    .line 7880
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    #@b7
    .line 7882
    move-object/from16 v0, p0

    #@b9
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@bb
    const/4 v4, 0x0

    #@bc
    aget-object v3, v3, v4

    #@be
    .line 7883
    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@c0
    .line 7882
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    #@c3
    .line 7884
    move-object/from16 v0, p0

    #@c5
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@c7
    const/4 v4, 0x1

    #@c8
    aget-object v3, v3, v4

    #@ca
    .line 7885
    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@cc
    .line 7884
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    #@cf
    goto :goto_1

    #@d0
    .line 7888
    .end local v2    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v14    # "entry":Landroid/net/NetworkStats$Entry;
    :cond_5
    const-wide/16 v4, 0x0

    #@d2
    cmp-long v3, v16, v4

    #@d4
    if-lez v3, :cond_6

    #@d6
    .line 7890
    move-object/from16 v0, p0

    #@d8
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@da
    move-wide/from16 v0, v16

    #@dc
    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    #@df
    .line 7891
    move-object/from16 v0, p0

    #@e1
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@e3
    const-wide/16 v4, 0x1

    #@e5
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    #@e8
    .line 7823
    :cond_6
    return-void
.end method

.method public updateTimeBasesLocked(ZZJJ)V
    .locals 7
    .param p1, "unplugged"    # Z
    .param p2, "screenOff"    # Z
    .param p3, "uptime"    # J
    .param p5, "realtime"    # J

    #@0
    .prologue
    .line 2508
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@2
    move v1, p1

    #@3
    move-wide v2, p3

    #@4
    move-wide v4, p5

    #@5
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->setRunning(ZJJ)Z

    #@8
    .line 2510
    if-eqz p1, :cond_1

    #@a
    move v1, p2

    #@b
    .line 2511
    :goto_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@d
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    #@10
    move-result v0

    #@11
    if-eq v1, v0, :cond_0

    #@13
    .line 2512
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->updateKernelWakelocksLocked()V

    #@16
    .line 2517
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->updateCpuTimeLocked()V

    #@19
    .line 2518
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@1b
    move-wide v2, p3

    #@1c
    move-wide v4, p5

    #@1d
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->setRunning(ZJJ)Z

    #@20
    .line 2507
    :cond_0
    return-void

    #@21
    .line 2510
    :cond_1
    const/4 v1, 0x0

    #@22
    .local v1, "unpluggedScreenOff":Z
    goto :goto_0
.end method

.method public updateWifiStateLocked(Landroid/net/wifi/WifiActivityEnergyInfo;)V
    .locals 58
    .param p1, "info"    # Landroid/net/wifi/WifiActivityEnergyInfo;

    #@0
    .prologue
    .line 7609
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v12

    #@4
    .line 7610
    .local v12, "elapsedRealtimeMs":J
    const/4 v10, 0x0

    #@5
    .line 7612
    .local v10, "delta":Landroid/net/NetworkStats;
    :try_start_0
    move-object/from16 v0, p0

    #@7
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiIfaces:[Ljava/lang/String;

    #@9
    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    #@c
    move-result v5

    #@d
    if-nez v5, :cond_0

    #@f
    .line 7613
    move-object/from16 v0, p0

    #@11
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiIfaces:[Ljava/lang/String;

    #@13
    move-object/from16 v0, p0

    #@15
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiNetworkStats:[Landroid/net/NetworkStats;

    #@17
    move-object/from16 v0, p0

    #@19
    invoke-direct {v0, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl;->getNetworkStatsDeltaLocked([Ljava/lang/String;[Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    move-result-object v10

    #@1d
    .line 7620
    .end local v10    # "delta":Landroid/net/NetworkStats;
    :cond_0
    move-object/from16 v0, p0

    #@1f
    iget-boolean v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    #@21
    if-nez v5, :cond_1

    #@23
    .line 7621
    return-void

    #@24
    .line 7615
    .restart local v10    # "delta":Landroid/net/NetworkStats;
    :catch_0
    move-exception v11

    #@25
    .line 7616
    .local v11, "e":Ljava/io/IOException;
    const-string/jumbo v5, "BatteryStatsImpl"

    #@28
    const-string/jumbo v6, "Failed to get wifi network stats"

    #@2b
    invoke-static {v5, v6, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2e
    .line 7617
    return-void

    #@2f
    .line 7624
    .end local v10    # "delta":Landroid/net/NetworkStats;
    .end local v11    # "e":Ljava/io/IOException;
    :cond_1
    new-instance v30, Landroid/util/SparseLongArray;

    #@31
    invoke-direct/range {v30 .. v30}, Landroid/util/SparseLongArray;-><init>()V

    #@34
    .line 7625
    .local v30, "rxPackets":Landroid/util/SparseLongArray;
    new-instance v50, Landroid/util/SparseLongArray;

    #@36
    invoke-direct/range {v50 .. v50}, Landroid/util/SparseLongArray;-><init>()V

    #@39
    .line 7626
    .local v50, "txPackets":Landroid/util/SparseLongArray;
    const-wide/16 v46, 0x0

    #@3b
    .line 7627
    .local v46, "totalTxPackets":J
    const-wide/16 v40, 0x0

    #@3d
    .line 7628
    .local v40, "totalRxPackets":J
    if-eqz v10, :cond_4

    #@3f
    .line 7629
    invoke-virtual {v10}, Landroid/net/NetworkStats;->size()I

    #@42
    move-result v31

    #@43
    .line 7630
    .local v31, "size":I
    const/4 v15, 0x0

    #@44
    .local v15, "i":I
    :goto_0
    move/from16 v0, v31

    #@46
    if-ge v15, v0, :cond_4

    #@48
    .line 7631
    move-object/from16 v0, p0

    #@4a
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mTmpNetworkStatsEntry:Landroid/net/NetworkStats$Entry;

    #@4c
    invoke-virtual {v10, v15, v5}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    #@4f
    move-result-object v14

    #@50
    .line 7639
    .local v14, "entry":Landroid/net/NetworkStats$Entry;
    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@52
    const-wide/16 v8, 0x0

    #@54
    cmp-long v5, v6, v8

    #@56
    if-eqz v5, :cond_2

    #@58
    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@5a
    const-wide/16 v8, 0x0

    #@5c
    cmp-long v5, v6, v8

    #@5e
    if-nez v5, :cond_3

    #@60
    .line 7630
    :cond_2
    :goto_1
    add-int/lit8 v15, v15, 0x1

    #@62
    goto :goto_0

    #@63
    .line 7643
    :cond_3
    iget v5, v14, Landroid/net/NetworkStats$Entry;->uid:I

    #@65
    move-object/from16 v0, p0

    #@67
    invoke-virtual {v0, v5}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    #@6a
    move-result v5

    #@6b
    move-object/from16 v0, p0

    #@6d
    invoke-virtual {v0, v5}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@70
    move-result-object v4

    #@71
    .line 7644
    .local v4, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@73
    .line 7645
    iget-wide v8, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@75
    .line 7644
    const/4 v5, 0x2

    #@76
    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteNetworkActivityLocked(IJJ)V

    #@79
    .line 7646
    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@7b
    .line 7647
    iget-wide v8, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@7d
    .line 7646
    const/4 v5, 0x3

    #@7e
    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteNetworkActivityLocked(IJJ)V

    #@81
    .line 7648
    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getUid()I

    #@84
    move-result v5

    #@85
    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@87
    move-object/from16 v0, v30

    #@89
    invoke-virtual {v0, v5, v6, v7}, Landroid/util/SparseLongArray;->put(IJ)V

    #@8c
    .line 7649
    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getUid()I

    #@8f
    move-result v5

    #@90
    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@92
    move-object/from16 v0, v50

    #@94
    invoke-virtual {v0, v5, v6, v7}, Landroid/util/SparseLongArray;->put(IJ)V

    #@97
    .line 7653
    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@99
    add-long v40, v40, v6

    #@9b
    .line 7654
    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@9d
    add-long v46, v46, v6

    #@9f
    .line 7656
    move-object/from16 v0, p0

    #@a1
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@a3
    const/4 v6, 0x2

    #@a4
    aget-object v5, v5, v6

    #@a6
    .line 7657
    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@a8
    .line 7656
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    #@ab
    .line 7658
    move-object/from16 v0, p0

    #@ad
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@af
    const/4 v6, 0x3

    #@b0
    aget-object v5, v5, v6

    #@b2
    .line 7659
    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@b4
    .line 7658
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    #@b7
    .line 7660
    move-object/from16 v0, p0

    #@b9
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@bb
    const/4 v6, 0x2

    #@bc
    aget-object v5, v5, v6

    #@be
    .line 7661
    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@c0
    .line 7660
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    #@c3
    .line 7662
    move-object/from16 v0, p0

    #@c5
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@c7
    const/4 v6, 0x3

    #@c8
    aget-object v5, v5, v6

    #@ca
    .line 7663
    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@cc
    .line 7662
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    #@cf
    goto :goto_1

    #@d0
    .line 7667
    .end local v4    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v14    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v15    # "i":I
    .end local v31    # "size":I
    :cond_4
    if-eqz p1, :cond_d

    #@d2
    .line 7668
    const/4 v5, 0x1

    #@d3
    move-object/from16 v0, p0

    #@d5
    iput-boolean v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHasWifiEnergyReporting:Z

    #@d7
    .line 7671
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerTxTimeMillis()J

    #@da
    move-result-wide v52

    #@db
    .line 7672
    .local v52, "txTimeMs":J
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerRxTimeMillis()J

    #@de
    move-result-wide v32

    #@df
    .line 7673
    .local v32, "rxTimeMs":J
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerIdleTimeMillis()J

    #@e2
    move-result-wide v16

    #@e3
    .line 7674
    .local v16, "idleTimeMs":J
    add-long v6, v52, v32

    #@e5
    add-long v44, v6, v16

    #@e7
    .line 7676
    .local v44, "totalTimeMs":J
    move-wide/from16 v18, v32

    #@e9
    .line 7677
    .local v18, "leftOverRxTimeMs":J
    move-wide/from16 v20, v52

    #@eb
    .line 7687
    .local v20, "leftOverTxTimeMs":J
    const-wide/16 v48, 0x0

    #@ed
    .line 7688
    .local v48, "totalWifiLockTimeMs":J
    const-wide/16 v42, 0x0

    #@ef
    .line 7692
    .local v42, "totalScanTimeMs":J
    move-object/from16 v0, p0

    #@f1
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    #@f3
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@f6
    move-result v54

    #@f7
    .line 7693
    .local v54, "uidStatsSize":I
    const/4 v15, 0x0

    #@f8
    .restart local v15    # "i":I
    :goto_2
    move/from16 v0, v54

    #@fa
    if-ge v15, v0, :cond_5

    #@fc
    .line 7694
    move-object/from16 v0, p0

    #@fe
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    #@100
    invoke-virtual {v5, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@103
    move-result-object v51

    #@104
    check-cast v51, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@106
    .line 7697
    .local v51, "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    move-object/from16 v0, v51

    #@108
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@10a
    .line 7698
    const-wide/16 v6, 0x3e8

    #@10c
    mul-long/2addr v6, v12

    #@10d
    .line 7697
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTimeSinceMarkLocked(J)J

    #@110
    move-result-wide v6

    #@111
    .line 7698
    const-wide/16 v8, 0x3e8

    #@113
    .line 7697
    div-long/2addr v6, v8

    #@114
    add-long v42, v42, v6

    #@116
    .line 7701
    move-object/from16 v0, v51

    #@118
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@11a
    .line 7702
    const-wide/16 v6, 0x3e8

    #@11c
    mul-long/2addr v6, v12

    #@11d
    .line 7701
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTimeSinceMarkLocked(J)J

    #@120
    move-result-wide v6

    #@121
    .line 7702
    const-wide/16 v8, 0x3e8

    #@123
    .line 7701
    div-long/2addr v6, v8

    #@124
    add-long v48, v48, v6

    #@126
    .line 7693
    add-int/lit8 v15, v15, 0x1

    #@128
    goto :goto_2

    #@129
    .line 7715
    .end local v51    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_5
    const/4 v15, 0x0

    #@12a
    :goto_3
    move/from16 v0, v54

    #@12c
    if-ge v15, v0, :cond_a

    #@12e
    .line 7716
    move-object/from16 v0, p0

    #@130
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    #@132
    invoke-virtual {v5, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@135
    move-result-object v51

    #@136
    check-cast v51, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@138
    .line 7718
    .restart local v51    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    move-object/from16 v0, v51

    #@13a
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@13c
    .line 7719
    const-wide/16 v6, 0x3e8

    #@13e
    mul-long/2addr v6, v12

    #@13f
    .line 7718
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTimeSinceMarkLocked(J)J

    #@142
    move-result-wide v6

    #@143
    .line 7719
    const-wide/16 v8, 0x3e8

    #@145
    .line 7718
    div-long v36, v6, v8

    #@147
    .line 7720
    .local v36, "scanTimeSinceMarkMs":J
    const-wide/16 v6, 0x0

    #@149
    cmp-long v5, v36, v6

    #@14b
    if-lez v5, :cond_8

    #@14d
    .line 7722
    move-object/from16 v0, v51

    #@14f
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@151
    invoke-virtual {v5, v12, v13}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->setMark(J)V

    #@154
    .line 7724
    move-wide/from16 v34, v36

    #@156
    .line 7725
    .local v34, "scanRxTimeSinceMarkMs":J
    move-wide/from16 v38, v36

    #@158
    .line 7734
    .local v38, "scanTxTimeSinceMarkMs":J
    cmp-long v5, v42, v32

    #@15a
    if-lez v5, :cond_6

    #@15c
    .line 7735
    mul-long v6, v32, v34

    #@15e
    div-long v34, v6, v42

    #@160
    .line 7738
    :cond_6
    cmp-long v5, v42, v52

    #@162
    if-lez v5, :cond_7

    #@164
    .line 7739
    mul-long v6, v52, v38

    #@166
    div-long v38, v6, v42

    #@168
    .line 7748
    :cond_7
    const/4 v5, 0x1

    #@169
    move-object/from16 v0, v51

    #@16b
    move-wide/from16 v1, v34

    #@16d
    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiControllerActivityLocked(IJ)V

    #@170
    .line 7749
    const/4 v5, 0x2

    #@171
    move-object/from16 v0, v51

    #@173
    move-wide/from16 v1, v38

    #@175
    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiControllerActivityLocked(IJ)V

    #@178
    .line 7750
    sub-long v18, v18, v34

    #@17a
    .line 7751
    sub-long v20, v20, v38

    #@17c
    .line 7756
    .end local v34    # "scanRxTimeSinceMarkMs":J
    .end local v38    # "scanTxTimeSinceMarkMs":J
    :cond_8
    move-object/from16 v0, v51

    #@17e
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@180
    .line 7757
    const-wide/16 v6, 0x3e8

    #@182
    mul-long/2addr v6, v12

    #@183
    .line 7756
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTimeSinceMarkLocked(J)J

    #@186
    move-result-wide v6

    #@187
    .line 7757
    const-wide/16 v8, 0x3e8

    #@189
    .line 7756
    div-long v56, v6, v8

    #@18b
    .line 7758
    .local v56, "wifiLockTimeSinceMarkMs":J
    const-wide/16 v6, 0x0

    #@18d
    cmp-long v5, v56, v6

    #@18f
    if-lez v5, :cond_9

    #@191
    .line 7760
    move-object/from16 v0, v51

    #@193
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@195
    invoke-virtual {v5, v12, v13}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->setMark(J)V

    #@198
    .line 7762
    mul-long v6, v56, v16

    #@19a
    div-long v22, v6, v48

    #@19c
    .line 7768
    .local v22, "myIdleTimeMs":J
    const/4 v5, 0x0

    #@19d
    move-object/from16 v0, v51

    #@19f
    move-wide/from16 v1, v22

    #@1a1
    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiControllerActivityLocked(IJ)V

    #@1a4
    .line 7715
    .end local v22    # "myIdleTimeMs":J
    :cond_9
    add-int/lit8 v15, v15, 0x1

    #@1a6
    goto :goto_3

    #@1a7
    .line 7779
    .end local v36    # "scanTimeSinceMarkMs":J
    .end local v51    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v56    # "wifiLockTimeSinceMarkMs":J
    :cond_a
    const/4 v15, 0x0

    #@1a8
    :goto_4
    invoke-virtual/range {v50 .. v50}, Landroid/util/SparseLongArray;->size()I

    #@1ab
    move-result v5

    #@1ac
    if-ge v15, v5, :cond_b

    #@1ae
    .line 7780
    move-object/from16 v0, v50

    #@1b0
    invoke-virtual {v0, v15}, Landroid/util/SparseLongArray;->keyAt(I)I

    #@1b3
    move-result v5

    #@1b4
    move-object/from16 v0, p0

    #@1b6
    invoke-virtual {v0, v5}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@1b9
    move-result-object v51

    #@1ba
    .line 7781
    .restart local v51    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    move-object/from16 v0, v50

    #@1bc
    invoke-virtual {v0, v15}, Landroid/util/SparseLongArray;->valueAt(I)J

    #@1bf
    move-result-wide v6

    #@1c0
    mul-long v6, v6, v20

    #@1c2
    div-long v26, v6, v46

    #@1c4
    .line 7785
    .local v26, "myTxTimeMs":J
    const/4 v5, 0x2

    #@1c5
    move-object/from16 v0, v51

    #@1c7
    move-wide/from16 v1, v26

    #@1c9
    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiControllerActivityLocked(IJ)V

    #@1cc
    .line 7779
    add-int/lit8 v15, v15, 0x1

    #@1ce
    goto :goto_4

    #@1cf
    .line 7790
    .end local v26    # "myTxTimeMs":J
    .end local v51    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_b
    const/4 v15, 0x0

    #@1d0
    :goto_5
    invoke-virtual/range {v30 .. v30}, Landroid/util/SparseLongArray;->size()I

    #@1d3
    move-result v5

    #@1d4
    if-ge v15, v5, :cond_c

    #@1d6
    .line 7791
    move-object/from16 v0, v30

    #@1d8
    invoke-virtual {v0, v15}, Landroid/util/SparseLongArray;->keyAt(I)I

    #@1db
    move-result v5

    #@1dc
    move-object/from16 v0, p0

    #@1de
    invoke-virtual {v0, v5}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@1e1
    move-result-object v51

    #@1e2
    .line 7792
    .restart local v51    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    move-object/from16 v0, v30

    #@1e4
    invoke-virtual {v0, v15}, Landroid/util/SparseLongArray;->valueAt(I)J

    #@1e7
    move-result-wide v6

    #@1e8
    mul-long v6, v6, v18

    #@1ea
    div-long v24, v6, v40

    #@1ec
    .line 7796
    .local v24, "myRxTimeMs":J
    const/4 v5, 0x1

    #@1ed
    move-object/from16 v0, v51

    #@1ef
    move-wide/from16 v1, v24

    #@1f1
    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiControllerActivityLocked(IJ)V

    #@1f4
    .line 7790
    add-int/lit8 v15, v15, 0x1

    #@1f6
    goto :goto_5

    #@1f7
    .line 7802
    .end local v24    # "myRxTimeMs":J
    .end local v51    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_c
    move-object/from16 v0, p0

    #@1f9
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@1fb
    const/4 v6, 0x1

    #@1fc
    aget-object v5, v5, v6

    #@1fe
    .line 7803
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerRxTimeMillis()J

    #@201
    move-result-wide v6

    #@202
    .line 7802
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    #@205
    .line 7804
    move-object/from16 v0, p0

    #@207
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@209
    const/4 v6, 0x2

    #@20a
    aget-object v5, v5, v6

    #@20c
    .line 7805
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerTxTimeMillis()J

    #@20f
    move-result-wide v6

    #@210
    .line 7804
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    #@213
    .line 7806
    move-object/from16 v0, p0

    #@215
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@217
    const/4 v6, 0x0

    #@218
    aget-object v5, v5, v6

    #@21a
    .line 7807
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerIdleTimeMillis()J

    #@21d
    move-result-wide v6

    #@21e
    .line 7806
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    #@221
    .line 7810
    move-object/from16 v0, p0

    #@223
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    #@225
    .line 7811
    const-string/jumbo v6, "wifi.controller.voltage"

    #@228
    .line 7810
    invoke-virtual {v5, v6}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    #@22b
    move-result-wide v6

    #@22c
    .line 7811
    const-wide v8, 0x408f400000000000L    # 1000.0

    #@231
    .line 7810
    div-double v28, v6, v8

    #@233
    .line 7812
    .local v28, "opVolt":D
    const-wide/16 v6, 0x0

    #@235
    cmpl-double v5, v28, v6

    #@237
    if-eqz v5, :cond_d

    #@239
    .line 7814
    move-object/from16 v0, p0

    #@23b
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@23d
    const/4 v6, 0x3

    #@23e
    aget-object v5, v5, v6

    #@240
    .line 7815
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerEnergyUsed()J

    #@243
    move-result-wide v6

    #@244
    long-to-double v6, v6

    #@245
    div-double v6, v6, v28

    #@247
    double-to-long v6, v6

    #@248
    .line 7814
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    #@24b
    .line 7604
    .end local v15    # "i":I
    .end local v16    # "idleTimeMs":J
    .end local v18    # "leftOverRxTimeMs":J
    .end local v20    # "leftOverTxTimeMs":J
    .end local v28    # "opVolt":D
    .end local v32    # "rxTimeMs":J
    .end local v42    # "totalScanTimeMs":J
    .end local v44    # "totalTimeMs":J
    .end local v48    # "totalWifiLockTimeMs":J
    .end local v52    # "txTimeMs":J
    .end local v54    # "uidStatsSize":I
    :cond_d
    return-void
.end method

.method public writeAsyncLocked()V
    .locals 1

    #@0
    .prologue
    .line 8845
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl;->writeLocked(Z)V

    #@4
    .line 8844
    return-void
.end method

.method writeHistory(Landroid/os/Parcel;ZZ)V
    .locals 9
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "inclData"    # Z
    .param p3, "andOldHistory"    # Z

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 9057
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBaseTime:J

    #@3
    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryElapsedRealtime:J

    #@5
    add-long/2addr v4, v6

    #@6
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@9
    .line 9058
    if-nez p2, :cond_0

    #@b
    .line 9059
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 9060
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 9061
    return-void

    #@12
    .line 9063
    :cond_0
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    #@14
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    #@17
    move-result v3

    #@18
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 9064
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryTagPool:Ljava/util/HashMap;

    #@1d
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@20
    move-result-object v3

    #@21
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@24
    move-result-object v1

    #@25
    .local v1, "ent$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_1

    #@2b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2e
    move-result-object v0

    #@2f
    check-cast v0, Ljava/util/Map$Entry;

    #@31
    .line 9065
    .local v0, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/BatteryStats$HistoryTag;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@34
    move-result-object v2

    #@35
    check-cast v2, Landroid/os/BatteryStats$HistoryTag;

    #@37
    .line 9066
    .local v2, "tag":Landroid/os/BatteryStats$HistoryTag;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@3a
    move-result-object v3

    #@3b
    check-cast v3, Ljava/lang/Integer;

    #@3d
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@40
    move-result v3

    #@41
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@44
    .line 9067
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    #@46
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@49
    .line 9068
    iget v3, v2, Landroid/os/BatteryStats$HistoryTag;->uid:I

    #@4b
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@4e
    goto :goto_0

    #@4f
    .line 9070
    .end local v0    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/BatteryStats$HistoryTag;Ljava/lang/Integer;>;"
    .end local v2    # "tag":Landroid/os/BatteryStats$HistoryTag;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    #@51
    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    #@54
    move-result v3

    #@55
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@58
    .line 9073
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    #@5a
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    #@5c
    invoke-virtual {v4}, Landroid/os/Parcel;->dataSize()I

    #@5f
    move-result v4

    #@60
    invoke-virtual {p1, v3, v8, v4}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    #@63
    .line 9075
    if-eqz p3, :cond_2

    #@65
    .line 9076
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->writeOldHistory(Landroid/os/Parcel;)V

    #@68
    .line 9048
    :cond_2
    return-void
.end method

.method public writeHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;Landroid/os/BatteryStats$HistoryItem;)V
    .locals 26
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "cur"    # Landroid/os/BatteryStats$HistoryItem;
    .param p3, "last"    # Landroid/os/BatteryStats$HistoryItem;

    #@0
    .prologue
    .line 1851
    if-eqz p3, :cond_0

    #@2
    move-object/from16 v0, p2

    #@4
    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@6
    move/from16 v21, v0

    #@8
    if-eqz v21, :cond_1

    #@a
    .line 1852
    :cond_0
    const v21, 0x7fffd

    #@d
    move-object/from16 v0, p1

    #@f
    move/from16 v1, v21

    #@11
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1853
    const/16 v21, 0x0

    #@16
    move-object/from16 v0, p2

    #@18
    move-object/from16 v1, p1

    #@1a
    move/from16 v2, v21

    #@1c
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$HistoryItem;->writeToParcel(Landroid/os/Parcel;I)V

    #@1f
    .line 1854
    return-void

    #@20
    .line 1857
    :cond_1
    move-object/from16 v0, p2

    #@22
    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    #@24
    move-wide/from16 v22, v0

    #@26
    move-object/from16 v0, p3

    #@28
    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    #@2a
    move-wide/from16 v24, v0

    #@2c
    sub-long v8, v22, v24

    #@2e
    .line 1858
    .local v8, "deltaTime":J
    move-object/from16 v0, p0

    #@30
    move-object/from16 v1, p3

    #@32
    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->buildBatteryLevelInt(Landroid/os/BatteryStats$HistoryItem;)I

    #@35
    move-result v14

    #@36
    .line 1859
    .local v14, "lastBatteryLevelInt":I
    move-object/from16 v0, p0

    #@38
    move-object/from16 v1, p3

    #@3a
    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->buildStateInt(Landroid/os/BatteryStats$HistoryItem;)I

    #@3d
    move-result v15

    #@3e
    .line 1862
    .local v15, "lastStateInt":I
    const-wide/16 v22, 0x0

    #@40
    cmp-long v21, v8, v22

    #@42
    if-ltz v21, :cond_2

    #@44
    const-wide/32 v22, 0x7fffffff

    #@47
    cmp-long v21, v8, v22

    #@49
    if-lez v21, :cond_12

    #@4b
    .line 1863
    :cond_2
    const v10, 0x7ffff

    #@4e
    .line 1869
    .local v10, "deltaTimeToken":I
    :goto_0
    move-object/from16 v0, p2

    #@50
    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@52
    move/from16 v21, v0

    #@54
    const/high16 v22, -0x1000000

    #@56
    and-int v21, v21, v22

    #@58
    or-int v11, v10, v21

    #@5a
    .line 1870
    .local v11, "firstToken":I
    move-object/from16 v0, p0

    #@5c
    iget-byte v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepLevel:B

    #@5e
    move/from16 v21, v0

    #@60
    move-object/from16 v0, p2

    #@62
    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    #@64
    move/from16 v22, v0

    #@66
    move/from16 v0, v21

    #@68
    move/from16 v1, v22

    #@6a
    if-le v0, v1, :cond_14

    #@6c
    .line 1871
    const/4 v12, 0x1

    #@6d
    .line 1872
    .local v12, "includeStepDetails":I
    :goto_1
    if-nez v12, :cond_15

    #@6f
    .line 1873
    move-object/from16 v0, p0

    #@71
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@73
    move-object/from16 v21, v0

    #@75
    if-nez v21, :cond_16

    #@77
    const/4 v7, 0x1

    #@78
    .line 1874
    .local v7, "computeStepDetails":Z
    :goto_2
    move-object/from16 v0, p0

    #@7a
    move-object/from16 v1, p2

    #@7c
    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->buildBatteryLevelInt(Landroid/os/BatteryStats$HistoryItem;)I

    #@7f
    move-result v21

    #@80
    or-int v4, v21, v12

    #@82
    .line 1875
    .local v4, "batteryLevelInt":I
    if-eq v4, v14, :cond_17

    #@84
    const/4 v5, 0x1

    #@85
    .line 1876
    .local v5, "batteryLevelIntChanged":Z
    :goto_3
    if-eqz v5, :cond_3

    #@87
    .line 1877
    const/high16 v21, 0x80000

    #@89
    or-int v11, v11, v21

    #@8b
    .line 1879
    :cond_3
    move-object/from16 v0, p0

    #@8d
    move-object/from16 v1, p2

    #@8f
    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->buildStateInt(Landroid/os/BatteryStats$HistoryItem;)I

    #@92
    move-result v17

    #@93
    .line 1880
    .local v17, "stateInt":I
    move/from16 v0, v17

    #@95
    if-eq v0, v15, :cond_18

    #@97
    const/16 v18, 0x1

    #@99
    .line 1881
    .local v18, "stateIntChanged":Z
    :goto_4
    if-eqz v18, :cond_4

    #@9b
    .line 1882
    const/high16 v21, 0x100000

    #@9d
    or-int v11, v11, v21

    #@9f
    .line 1884
    :cond_4
    move-object/from16 v0, p2

    #@a1
    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@a3
    move/from16 v21, v0

    #@a5
    move-object/from16 v0, p3

    #@a7
    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@a9
    move/from16 v22, v0

    #@ab
    move/from16 v0, v21

    #@ad
    move/from16 v1, v22

    #@af
    if-eq v0, v1, :cond_19

    #@b1
    const/16 v16, 0x1

    #@b3
    .line 1885
    .local v16, "state2IntChanged":Z
    :goto_5
    if-eqz v16, :cond_5

    #@b5
    .line 1886
    const/high16 v21, 0x200000

    #@b7
    or-int v11, v11, v21

    #@b9
    .line 1888
    :cond_5
    move-object/from16 v0, p2

    #@bb
    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@bd
    move-object/from16 v21, v0

    #@bf
    if-nez v21, :cond_6

    #@c1
    move-object/from16 v0, p2

    #@c3
    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@c5
    move-object/from16 v21, v0

    #@c7
    if-eqz v21, :cond_7

    #@c9
    .line 1889
    :cond_6
    const/high16 v21, 0x400000

    #@cb
    or-int v11, v11, v21

    #@cd
    .line 1891
    :cond_7
    move-object/from16 v0, p2

    #@cf
    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    #@d1
    move/from16 v21, v0

    #@d3
    if-eqz v21, :cond_8

    #@d5
    .line 1892
    const/high16 v21, 0x800000

    #@d7
    or-int v11, v11, v21

    #@d9
    .line 1894
    :cond_8
    move-object/from16 v0, p1

    #@db
    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@de
    .line 1898
    const v21, 0x7fffe

    #@e1
    move/from16 v0, v21

    #@e3
    if-lt v10, v0, :cond_9

    #@e5
    .line 1899
    const v21, 0x7fffe

    #@e8
    move/from16 v0, v21

    #@ea
    if-ne v10, v0, :cond_1a

    #@ec
    .line 1901
    long-to-int v0, v8

    #@ed
    move/from16 v21, v0

    #@ef
    move-object/from16 v0, p1

    #@f1
    move/from16 v1, v21

    #@f3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@f6
    .line 1907
    :cond_9
    :goto_6
    if-eqz v5, :cond_a

    #@f8
    .line 1908
    move-object/from16 v0, p1

    #@fa
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@fd
    .line 1915
    :cond_a
    if-eqz v18, :cond_b

    #@ff
    .line 1916
    move-object/from16 v0, p1

    #@101
    move/from16 v1, v17

    #@103
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@106
    .line 1924
    :cond_b
    if-eqz v16, :cond_c

    #@108
    .line 1925
    move-object/from16 v0, p2

    #@10a
    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@10c
    move/from16 v21, v0

    #@10e
    move-object/from16 v0, p1

    #@110
    move/from16 v1, v21

    #@112
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@115
    .line 1929
    :cond_c
    move-object/from16 v0, p2

    #@117
    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@119
    move-object/from16 v21, v0

    #@11b
    if-nez v21, :cond_d

    #@11d
    move-object/from16 v0, p2

    #@11f
    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@121
    move-object/from16 v21, v0

    #@123
    if-eqz v21, :cond_e

    #@125
    .line 1932
    :cond_d
    move-object/from16 v0, p2

    #@127
    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@129
    move-object/from16 v21, v0

    #@12b
    if-eqz v21, :cond_1b

    #@12d
    .line 1933
    move-object/from16 v0, p2

    #@12f
    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@131
    move-object/from16 v21, v0

    #@133
    move-object/from16 v0, p0

    #@135
    move-object/from16 v1, v21

    #@137
    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->writeHistoryTag(Landroid/os/BatteryStats$HistoryTag;)I

    #@13a
    move-result v19

    #@13b
    .line 1939
    .local v19, "wakeLockIndex":I
    :goto_7
    move-object/from16 v0, p2

    #@13d
    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@13f
    move-object/from16 v21, v0

    #@141
    if-eqz v21, :cond_1c

    #@143
    .line 1940
    move-object/from16 v0, p2

    #@145
    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@147
    move-object/from16 v21, v0

    #@149
    move-object/from16 v0, p0

    #@14b
    move-object/from16 v1, v21

    #@14d
    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->writeHistoryTag(Landroid/os/BatteryStats$HistoryTag;)I

    #@150
    move-result v20

    #@151
    .line 1946
    .local v20, "wakeReasonIndex":I
    :goto_8
    shl-int/lit8 v21, v20, 0x10

    #@153
    or-int v21, v21, v19

    #@155
    move-object/from16 v0, p1

    #@157
    move/from16 v1, v21

    #@159
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@15c
    .line 1948
    .end local v19    # "wakeLockIndex":I
    .end local v20    # "wakeReasonIndex":I
    :cond_e
    move-object/from16 v0, p2

    #@15e
    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    #@160
    move/from16 v21, v0

    #@162
    if-eqz v21, :cond_f

    #@164
    .line 1949
    move-object/from16 v0, p2

    #@166
    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    #@168
    move-object/from16 v21, v0

    #@16a
    move-object/from16 v0, p0

    #@16c
    move-object/from16 v1, v21

    #@16e
    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->writeHistoryTag(Landroid/os/BatteryStats$HistoryTag;)I

    #@171
    move-result v13

    #@172
    .line 1950
    .local v13, "index":I
    move-object/from16 v0, p2

    #@174
    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    #@176
    move/from16 v21, v0

    #@178
    const v22, 0xffff

    #@17b
    and-int v21, v21, v22

    #@17d
    shl-int/lit8 v22, v13, 0x10

    #@17f
    or-int v6, v21, v22

    #@181
    .line 1951
    .local v6, "codeAndIndex":I
    move-object/from16 v0, p1

    #@183
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@186
    .line 1956
    .end local v6    # "codeAndIndex":I
    .end local v13    # "index":I
    :cond_f
    if-eqz v7, :cond_1d

    #@188
    .line 1957
    move-object/from16 v0, p0

    #@18a
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@18c
    move-object/from16 v21, v0

    #@18e
    move-object/from16 v0, p0

    #@190
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@192
    move-object/from16 v22, v0

    #@194
    move-object/from16 v0, p0

    #@196
    move-object/from16 v1, v21

    #@198
    move-object/from16 v2, v22

    #@19a
    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->computeHistoryStepDetails(Landroid/os/BatteryStats$HistoryStepDetails;Landroid/os/BatteryStats$HistoryStepDetails;)V

    #@19d
    .line 1958
    if-eqz v12, :cond_10

    #@19f
    .line 1959
    move-object/from16 v0, p0

    #@1a1
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@1a3
    move-object/from16 v21, v0

    #@1a5
    move-object/from16 v0, v21

    #@1a7
    move-object/from16 v1, p1

    #@1a9
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryStepDetails;->writeToParcel(Landroid/os/Parcel;)V

    #@1ac
    .line 1961
    :cond_10
    move-object/from16 v0, p0

    #@1ae
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@1b0
    move-object/from16 v21, v0

    #@1b2
    move-object/from16 v0, v21

    #@1b4
    move-object/from16 v1, p2

    #@1b6
    iput-object v0, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@1b8
    .line 1962
    move-object/from16 v0, p0

    #@1ba
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@1bc
    move-object/from16 v21, v0

    #@1be
    move-object/from16 v0, v21

    #@1c0
    move-object/from16 v1, p0

    #@1c2
    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@1c4
    .line 1966
    :goto_9
    move-object/from16 v0, p0

    #@1c6
    iget-byte v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepLevel:B

    #@1c8
    move/from16 v21, v0

    #@1ca
    move-object/from16 v0, p2

    #@1cc
    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    #@1ce
    move/from16 v22, v0

    #@1d0
    move/from16 v0, v21

    #@1d2
    move/from16 v1, v22

    #@1d4
    if-ge v0, v1, :cond_11

    #@1d6
    .line 1967
    const/16 v21, 0x0

    #@1d8
    move-object/from16 v0, v21

    #@1da
    move-object/from16 v1, p0

    #@1dc
    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@1de
    .line 1969
    :cond_11
    move-object/from16 v0, p2

    #@1e0
    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    #@1e2
    move/from16 v21, v0

    #@1e4
    move/from16 v0, v21

    #@1e6
    move-object/from16 v1, p0

    #@1e8
    iput-byte v0, v1, Lcom/android/internal/os/BatteryStatsImpl;->mLastHistoryStepLevel:B

    #@1ea
    .line 1850
    return-void

    #@1eb
    .line 1864
    .end local v4    # "batteryLevelInt":I
    .end local v5    # "batteryLevelIntChanged":Z
    .end local v7    # "computeStepDetails":Z
    .end local v10    # "deltaTimeToken":I
    .end local v11    # "firstToken":I
    .end local v12    # "includeStepDetails":I
    .end local v16    # "state2IntChanged":Z
    .end local v17    # "stateInt":I
    .end local v18    # "stateIntChanged":Z
    :cond_12
    const-wide/32 v22, 0x7fffd

    #@1ee
    cmp-long v21, v8, v22

    #@1f0
    if-ltz v21, :cond_13

    #@1f2
    .line 1865
    const v10, 0x7fffe

    #@1f5
    .restart local v10    # "deltaTimeToken":I
    goto/16 :goto_0

    #@1f7
    .line 1867
    .end local v10    # "deltaTimeToken":I
    :cond_13
    long-to-int v10, v8

    #@1f8
    .restart local v10    # "deltaTimeToken":I
    goto/16 :goto_0

    #@1fa
    .line 1871
    .restart local v11    # "firstToken":I
    :cond_14
    const/4 v12, 0x0

    #@1fb
    .restart local v12    # "includeStepDetails":I
    goto/16 :goto_1

    #@1fd
    .line 1872
    :cond_15
    const/4 v7, 0x1

    #@1fe
    .restart local v7    # "computeStepDetails":Z
    goto/16 :goto_2

    #@200
    .line 1873
    .end local v7    # "computeStepDetails":Z
    :cond_16
    const/4 v7, 0x0

    #@201
    .restart local v7    # "computeStepDetails":Z
    goto/16 :goto_2

    #@203
    .line 1875
    .restart local v4    # "batteryLevelInt":I
    :cond_17
    const/4 v5, 0x0

    #@204
    .restart local v5    # "batteryLevelIntChanged":Z
    goto/16 :goto_3

    #@206
    .line 1880
    .restart local v17    # "stateInt":I
    :cond_18
    const/16 v18, 0x0

    #@208
    .restart local v18    # "stateIntChanged":Z
    goto/16 :goto_4

    #@20a
    .line 1884
    :cond_19
    const/16 v16, 0x0

    #@20c
    .restart local v16    # "state2IntChanged":Z
    goto/16 :goto_5

    #@20e
    .line 1904
    :cond_1a
    move-object/from16 v0, p1

    #@210
    invoke-virtual {v0, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    #@213
    goto/16 :goto_6

    #@215
    .line 1937
    :cond_1b
    const v19, 0xffff

    #@218
    .restart local v19    # "wakeLockIndex":I
    goto/16 :goto_7

    #@21a
    .line 1944
    :cond_1c
    const v20, 0xffff

    #@21d
    .restart local v20    # "wakeReasonIndex":I
    goto/16 :goto_8

    #@21f
    .line 1964
    .end local v19    # "wakeLockIndex":I
    .end local v20    # "wakeReasonIndex":I
    :cond_1d
    const/16 v21, 0x0

    #@221
    move-object/from16 v0, v21

    #@223
    move-object/from16 v1, p2

    #@225
    iput-object v0, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    #@227
    goto :goto_9
.end method

.method writeLocked(Z)V
    .locals 4
    .param p1, "sync"    # Z

    #@0
    .prologue
    .line 8853
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mFile:Lcom/android/internal/util/JournaledFile;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 8854
    const-string/jumbo v1, "BatteryStats"

    #@7
    const-string/jumbo v2, "writeLocked: no file associated with this instance"

    #@a
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 8855
    return-void

    #@e
    .line 8858
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mShuttingDown:Z

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 8859
    return-void

    #@13
    .line 8862
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@16
    move-result-object v0

    #@17
    .line 8863
    .local v0, "out":Landroid/os/Parcel;
    const/4 v1, 0x1

    #@18
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->writeSummaryToParcel(Landroid/os/Parcel;Z)V

    #@1b
    .line 8864
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@1e
    move-result-wide v2

    #@1f
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWriteTime:J

    #@21
    .line 8866
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPendingWrite:Landroid/os/Parcel;

    #@23
    if-eqz v1, :cond_2

    #@25
    .line 8867
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPendingWrite:Landroid/os/Parcel;

    #@27
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 8869
    :cond_2
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mPendingWrite:Landroid/os/Parcel;

    #@2c
    .line 8871
    if-eqz p1, :cond_3

    #@2e
    .line 8872
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->commitPendingDataToDisk()V

    #@31
    .line 8852
    :goto_0
    return-void

    #@32
    .line 8874
    :cond_3
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    #@35
    move-result-object v1

    #@36
    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$5;

    #@38
    invoke-direct {v2, p0}, Lcom/android/internal/os/BatteryStatsImpl$5;-><init>(Lcom/android/internal/os/BatteryStatsImpl;)V

    #@3b
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@3e
    goto :goto_0
.end method

.method writeOldHistory(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 9082
    return-void
.end method

.method public writeSummaryToParcel(Landroid/os/Parcel;Z)V
    .locals 48
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "inclHistory"    # Z

    #@0
    .prologue
    .line 9416
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->pullPendingStateUpdatesLocked()V

    #@3
    .line 9420
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getStartClockTime()J

    #@6
    move-result-wide v38

    #@7
    .line 9422
    .local v38, "startClockTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@a
    move-result-wide v4

    #@b
    const-wide/16 v46, 0x3e8

    #@d
    mul-long v6, v4, v46

    #@f
    .line 9423
    .local v6, "NOW_SYS":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@12
    move-result-wide v4

    #@13
    const-wide/16 v46, 0x3e8

    #@15
    mul-long v8, v4, v46

    #@17
    .line 9425
    .local v8, "NOWREAL_SYS":J
    const/16 v4, 0x82

    #@19
    move-object/from16 v0, p1

    #@1b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 9427
    const/4 v4, 0x1

    #@1f
    move-object/from16 v0, p0

    #@21
    move-object/from16 v1, p1

    #@23
    move/from16 v2, p2

    #@25
    invoke-virtual {v0, v1, v2, v4}, Lcom/android/internal/os/BatteryStatsImpl;->writeHistory(Landroid/os/Parcel;ZZ)V

    #@28
    .line 9429
    move-object/from16 v0, p0

    #@2a
    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    #@2c
    move-object/from16 v0, p1

    #@2e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@31
    .line 9430
    const/4 v4, 0x0

    #@32
    move-object/from16 v0, p0

    #@34
    invoke-virtual {v0, v6, v7, v4}, Lcom/android/internal/os/BatteryStatsImpl;->computeUptime(JI)J

    #@37
    move-result-wide v4

    #@38
    move-object/from16 v0, p1

    #@3a
    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@3d
    .line 9431
    const/4 v4, 0x0

    #@3e
    move-object/from16 v0, p0

    #@40
    invoke-virtual {v0, v8, v9, v4}, Lcom/android/internal/os/BatteryStatsImpl;->computeRealtime(JI)J

    #@43
    move-result-wide v4

    #@44
    move-object/from16 v0, p1

    #@46
    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@49
    .line 9432
    move-object/from16 v0, p1

    #@4b
    move-wide/from16 v1, v38

    #@4d
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@50
    .line 9433
    move-object/from16 v0, p0

    #@52
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mStartPlatformVersion:Ljava/lang/String;

    #@54
    move-object/from16 v0, p1

    #@56
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@59
    .line 9434
    move-object/from16 v0, p0

    #@5b
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mEndPlatformVersion:Ljava/lang/String;

    #@5d
    move-object/from16 v0, p1

    #@5f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@62
    .line 9435
    move-object/from16 v0, p0

    #@64
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@66
    move-object/from16 v5, p1

    #@68
    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->writeSummaryToParcel(Landroid/os/Parcel;JJ)V

    #@6b
    .line 9436
    move-object/from16 v0, p0

    #@6d
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@6f
    move-object/from16 v5, p1

    #@71
    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->writeSummaryToParcel(Landroid/os/Parcel;JJ)V

    #@74
    .line 9437
    move-object/from16 v0, p0

    #@76
    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    #@78
    move-object/from16 v0, p1

    #@7a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@7d
    .line 9438
    move-object/from16 v0, p0

    #@7f
    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargePlugLevel:I

    #@81
    move-object/from16 v0, p1

    #@83
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@86
    .line 9439
    move-object/from16 v0, p0

    #@88
    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    #@8a
    move-object/from16 v0, p1

    #@8c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@8f
    .line 9440
    move-object/from16 v0, p0

    #@91
    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    #@93
    move-object/from16 v0, p1

    #@95
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@98
    .line 9441
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getLowDischargeAmountSinceCharge()I

    #@9b
    move-result v4

    #@9c
    move-object/from16 v0, p1

    #@9e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@a1
    .line 9442
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getHighDischargeAmountSinceCharge()I

    #@a4
    move-result v4

    #@a5
    move-object/from16 v0, p1

    #@a7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@aa
    .line 9443
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeAmountScreenOnSinceCharge()I

    #@ad
    move-result v4

    #@ae
    move-object/from16 v0, p1

    #@b0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@b3
    .line 9444
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeAmountScreenOffSinceCharge()I

    #@b6
    move-result v4

    #@b7
    move-object/from16 v0, p1

    #@b9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@bc
    .line 9445
    move-object/from16 v0, p0

    #@be
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@c0
    move-object/from16 v0, p1

    #@c2
    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$LevelStepTracker;->writeToParcel(Landroid/os/Parcel;)V

    #@c5
    .line 9446
    move-object/from16 v0, p0

    #@c7
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@c9
    move-object/from16 v0, p1

    #@cb
    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$LevelStepTracker;->writeToParcel(Landroid/os/Parcel;)V

    #@ce
    .line 9447
    move-object/from16 v0, p0

    #@d0
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@d2
    move-object/from16 v0, p1

    #@d4
    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$LevelStepTracker;->writeToParcel(Landroid/os/Parcel;)V

    #@d7
    .line 9448
    move-object/from16 v0, p0

    #@d9
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@db
    move-object/from16 v0, p1

    #@dd
    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$LevelStepTracker;->writeToParcel(Landroid/os/Parcel;)V

    #@e0
    .line 9449
    move-object/from16 v0, p0

    #@e2
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    #@e4
    if-eqz v4, :cond_1

    #@e6
    .line 9450
    move-object/from16 v0, p0

    #@e8
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    #@ea
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@ed
    move-result v12

    #@ee
    .line 9451
    .local v12, "NPKG":I
    move-object/from16 v0, p1

    #@f0
    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    #@f3
    .line 9452
    const/16 v21, 0x0

    #@f5
    .local v21, "i":I
    :goto_0
    move/from16 v0, v21

    #@f7
    if-ge v0, v12, :cond_2

    #@f9
    .line 9453
    move-object/from16 v0, p0

    #@fb
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    #@fd
    move/from16 v0, v21

    #@ff
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@102
    move-result-object v31

    #@103
    check-cast v31, Landroid/os/BatteryStats$PackageChange;

    #@105
    .line 9454
    .local v31, "pc":Landroid/os/BatteryStats$PackageChange;
    move-object/from16 v0, v31

    #@107
    iget-object v4, v0, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    #@109
    move-object/from16 v0, p1

    #@10b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10e
    .line 9455
    move-object/from16 v0, v31

    #@110
    iget-boolean v4, v0, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    #@112
    if-eqz v4, :cond_0

    #@114
    const/4 v4, 0x1

    #@115
    :goto_1
    move-object/from16 v0, p1

    #@117
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@11a
    .line 9456
    move-object/from16 v0, v31

    #@11c
    iget v4, v0, Landroid/os/BatteryStats$PackageChange;->mVersionCode:I

    #@11e
    move-object/from16 v0, p1

    #@120
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@123
    .line 9452
    add-int/lit8 v21, v21, 0x1

    #@125
    goto :goto_0

    #@126
    .line 9455
    :cond_0
    const/4 v4, 0x0

    #@127
    goto :goto_1

    #@128
    .line 9459
    .end local v12    # "NPKG":I
    .end local v21    # "i":I
    .end local v31    # "pc":Landroid/os/BatteryStats$PackageChange;
    :cond_1
    const/4 v4, 0x0

    #@129
    move-object/from16 v0, p1

    #@12b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@12e
    .line 9461
    :cond_2
    move-object/from16 v0, p0

    #@130
    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDailyStartTime:J

    #@132
    move-object/from16 v0, p1

    #@134
    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@137
    .line 9462
    move-object/from16 v0, p0

    #@139
    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMinDailyDeadline:J

    #@13b
    move-object/from16 v0, p1

    #@13d
    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@140
    .line 9463
    move-object/from16 v0, p0

    #@142
    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNextMaxDailyDeadline:J

    #@144
    move-object/from16 v0, p1

    #@146
    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@149
    .line 9465
    move-object/from16 v0, p0

    #@14b
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@14d
    move-object/from16 v0, p1

    #@14f
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    #@152
    .line 9466
    const/16 v21, 0x0

    #@154
    .restart local v21    # "i":I
    :goto_2
    const/4 v4, 0x5

    #@155
    move/from16 v0, v21

    #@157
    if-ge v0, v4, :cond_3

    #@159
    .line 9467
    move-object/from16 v0, p0

    #@15b
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@15d
    aget-object v4, v4, v21

    #@15f
    move-object/from16 v0, p1

    #@161
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    #@164
    .line 9466
    add-int/lit8 v21, v21, 0x1

    #@166
    goto :goto_2

    #@167
    .line 9469
    :cond_3
    move-object/from16 v0, p0

    #@169
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@16b
    move-object/from16 v0, p1

    #@16d
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    #@170
    .line 9470
    move-object/from16 v0, p0

    #@172
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@174
    move-object/from16 v0, p1

    #@176
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    #@179
    .line 9471
    move-object/from16 v0, p0

    #@17b
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@17d
    move-object/from16 v0, p1

    #@17f
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    #@182
    .line 9472
    move-object/from16 v0, p0

    #@184
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@186
    move-object/from16 v0, p1

    #@188
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    #@18b
    .line 9473
    move-object/from16 v0, p0

    #@18d
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@18f
    move-object/from16 v0, p1

    #@191
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    #@194
    .line 9474
    const/16 v21, 0x0

    #@196
    :goto_3
    const/4 v4, 0x5

    #@197
    move/from16 v0, v21

    #@199
    if-ge v0, v4, :cond_4

    #@19b
    .line 9475
    move-object/from16 v0, p0

    #@19d
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@19f
    aget-object v4, v4, v21

    #@1a1
    move-object/from16 v0, p1

    #@1a3
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    #@1a6
    .line 9474
    add-int/lit8 v21, v21, 0x1

    #@1a8
    goto :goto_3

    #@1a9
    .line 9477
    :cond_4
    move-object/from16 v0, p0

    #@1ab
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1ad
    move-object/from16 v0, p1

    #@1af
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    #@1b2
    .line 9478
    const/16 v21, 0x0

    #@1b4
    :goto_4
    const/16 v4, 0x11

    #@1b6
    move/from16 v0, v21

    #@1b8
    if-ge v0, v4, :cond_5

    #@1ba
    .line 9479
    move-object/from16 v0, p0

    #@1bc
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1be
    aget-object v4, v4, v21

    #@1c0
    move-object/from16 v0, p1

    #@1c2
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    #@1c5
    .line 9478
    add-int/lit8 v21, v21, 0x1

    #@1c7
    goto :goto_4

    #@1c8
    .line 9481
    :cond_5
    const/16 v21, 0x0

    #@1ca
    :goto_5
    const/4 v4, 0x4

    #@1cb
    move/from16 v0, v21

    #@1cd
    if-ge v0, v4, :cond_6

    #@1cf
    .line 9482
    move-object/from16 v0, p0

    #@1d1
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@1d3
    aget-object v4, v4, v21

    #@1d5
    move-object/from16 v0, p1

    #@1d7
    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@1da
    .line 9483
    move-object/from16 v0, p0

    #@1dc
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@1de
    aget-object v4, v4, v21

    #@1e0
    move-object/from16 v0, p1

    #@1e2
    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@1e5
    .line 9481
    add-int/lit8 v21, v21, 0x1

    #@1e7
    goto :goto_5

    #@1e8
    .line 9485
    :cond_6
    move-object/from16 v0, p0

    #@1ea
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1ec
    move-object/from16 v0, p1

    #@1ee
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    #@1f1
    .line 9486
    move-object/from16 v0, p0

    #@1f3
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1f5
    move-object/from16 v0, p1

    #@1f7
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    #@1fa
    .line 9487
    move-object/from16 v0, p0

    #@1fc
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@1fe
    move-object/from16 v0, p1

    #@200
    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@203
    .line 9488
    move-object/from16 v0, p0

    #@205
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@207
    move-object/from16 v0, p1

    #@209
    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@20c
    .line 9489
    move-object/from16 v0, p0

    #@20e
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@210
    move-object/from16 v0, p1

    #@212
    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@215
    .line 9490
    move-object/from16 v0, p0

    #@217
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@219
    move-object/from16 v0, p1

    #@21b
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    #@21e
    .line 9491
    move-object/from16 v0, p0

    #@220
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@222
    move-object/from16 v0, p1

    #@224
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    #@227
    .line 9492
    const/16 v21, 0x0

    #@229
    :goto_6
    const/16 v4, 0x8

    #@22b
    move/from16 v0, v21

    #@22d
    if-ge v0, v4, :cond_7

    #@22f
    .line 9493
    move-object/from16 v0, p0

    #@231
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@233
    aget-object v4, v4, v21

    #@235
    move-object/from16 v0, p1

    #@237
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    #@23a
    .line 9492
    add-int/lit8 v21, v21, 0x1

    #@23c
    goto :goto_6

    #@23d
    .line 9495
    :cond_7
    const/16 v21, 0x0

    #@23f
    :goto_7
    const/16 v4, 0xd

    #@241
    move/from16 v0, v21

    #@243
    if-ge v0, v4, :cond_8

    #@245
    .line 9496
    move-object/from16 v0, p0

    #@247
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@249
    aget-object v4, v4, v21

    #@24b
    move-object/from16 v0, p1

    #@24d
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    #@250
    .line 9495
    add-int/lit8 v21, v21, 0x1

    #@252
    goto :goto_7

    #@253
    .line 9498
    :cond_8
    const/16 v21, 0x0

    #@255
    :goto_8
    const/4 v4, 0x5

    #@256
    move/from16 v0, v21

    #@258
    if-ge v0, v4, :cond_9

    #@25a
    .line 9499
    move-object/from16 v0, p0

    #@25c
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@25e
    aget-object v4, v4, v21

    #@260
    move-object/from16 v0, p1

    #@262
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    #@265
    .line 9498
    add-int/lit8 v21, v21, 0x1

    #@267
    goto :goto_8

    #@268
    .line 9501
    :cond_9
    const/16 v21, 0x0

    #@26a
    :goto_9
    const/4 v4, 0x4

    #@26b
    move/from16 v0, v21

    #@26d
    if-ge v0, v4, :cond_a

    #@26f
    .line 9502
    move-object/from16 v0, p0

    #@271
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@273
    aget-object v4, v4, v21

    #@275
    move-object/from16 v0, p1

    #@277
    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@27a
    .line 9501
    add-int/lit8 v21, v21, 0x1

    #@27c
    goto :goto_9

    #@27d
    .line 9504
    :cond_a
    const/16 v21, 0x0

    #@27f
    :goto_a
    const/4 v4, 0x4

    #@280
    move/from16 v0, v21

    #@282
    if-ge v0, v4, :cond_b

    #@284
    .line 9505
    move-object/from16 v0, p0

    #@286
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@288
    aget-object v4, v4, v21

    #@28a
    move-object/from16 v0, p1

    #@28c
    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@28f
    .line 9504
    add-int/lit8 v21, v21, 0x1

    #@291
    goto :goto_a

    #@292
    .line 9507
    :cond_b
    move-object/from16 v0, p0

    #@294
    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNumConnectivityChange:I

    #@296
    move-object/from16 v0, p1

    #@298
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@29b
    .line 9508
    move-object/from16 v0, p0

    #@29d
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@29f
    move-object/from16 v0, p1

    #@2a1
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    #@2a4
    .line 9509
    move-object/from16 v0, p0

    #@2a6
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2a8
    move-object/from16 v0, p1

    #@2aa
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    #@2ad
    .line 9511
    move-object/from16 v0, p0

    #@2af
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    #@2b1
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    #@2b4
    move-result v4

    #@2b5
    move-object/from16 v0, p1

    #@2b7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2ba
    .line 9512
    move-object/from16 v0, p0

    #@2bc
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    #@2be
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@2c1
    move-result-object v4

    #@2c2
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2c5
    move-result-object v20

    #@2c6
    .local v20, "ent$iterator":Ljava/util/Iterator;
    :goto_b
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    #@2c9
    move-result v4

    #@2ca
    if-eqz v4, :cond_d

    #@2cc
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2cf
    move-result-object v18

    #@2d0
    check-cast v18, Ljava/util/Map$Entry;

    #@2d2
    .line 9513
    .local v18, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2d5
    move-result-object v30

    #@2d6
    check-cast v30, Lcom/android/internal/os/BatteryStatsImpl$Timer;

    #@2d8
    .line 9514
    .local v30, "kwlt":Lcom/android/internal/os/BatteryStatsImpl$Timer;
    if-eqz v30, :cond_c

    #@2da
    .line 9515
    const/4 v4, 0x1

    #@2db
    move-object/from16 v0, p1

    #@2dd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2e0
    .line 9516
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@2e3
    move-result-object v4

    #@2e4
    check-cast v4, Ljava/lang/String;

    #@2e6
    move-object/from16 v0, p1

    #@2e8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2eb
    .line 9517
    move-object/from16 v0, v30

    #@2ed
    move-object/from16 v1, p1

    #@2ef
    invoke-virtual {v0, v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    #@2f2
    goto :goto_b

    #@2f3
    .line 9519
    :cond_c
    const/4 v4, 0x0

    #@2f4
    move-object/from16 v0, p1

    #@2f6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2f9
    goto :goto_b

    #@2fa
    .line 9523
    .end local v18    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    .end local v30    # "kwlt":Lcom/android/internal/os/BatteryStatsImpl$Timer;
    :cond_d
    move-object/from16 v0, p0

    #@2fc
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    #@2fe
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    #@301
    move-result v4

    #@302
    move-object/from16 v0, p1

    #@304
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@307
    .line 9524
    move-object/from16 v0, p0

    #@309
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    #@30b
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@30e
    move-result-object v4

    #@30f
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@312
    move-result-object v20

    #@313
    :goto_c
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    #@316
    move-result v4

    #@317
    if-eqz v4, :cond_f

    #@319
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@31c
    move-result-object v18

    #@31d
    check-cast v18, Ljava/util/Map$Entry;

    #@31f
    .line 9525
    .restart local v18    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@322
    move-result-object v42

    #@323
    check-cast v42, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    #@325
    .line 9526
    .local v42, "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    if-eqz v42, :cond_e

    #@327
    .line 9527
    const/4 v4, 0x1

    #@328
    move-object/from16 v0, p1

    #@32a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@32d
    .line 9528
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@330
    move-result-object v4

    #@331
    check-cast v4, Ljava/lang/String;

    #@333
    move-object/from16 v0, p1

    #@335
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@338
    .line 9529
    move-object/from16 v0, v42

    #@33a
    move-object/from16 v1, p1

    #@33c
    invoke-virtual {v0, v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    #@33f
    goto :goto_c

    #@340
    .line 9531
    :cond_e
    const/4 v4, 0x0

    #@341
    move-object/from16 v0, p1

    #@343
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@346
    goto :goto_c

    #@347
    .line 9535
    .end local v18    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    .end local v42    # "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_f
    sget v4, Lcom/android/internal/os/BatteryStatsImpl;->sNumSpeedSteps:I

    #@349
    move-object/from16 v0, p1

    #@34b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@34e
    .line 9536
    move-object/from16 v0, p0

    #@350
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    #@352
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@355
    move-result v15

    #@356
    .line 9537
    .local v15, "NU":I
    move-object/from16 v0, p1

    #@358
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@35b
    .line 9538
    const/16 v26, 0x0

    #@35d
    .local v26, "iu":I
    :goto_d
    move/from16 v0, v26

    #@35f
    if-ge v0, v15, :cond_31

    #@361
    .line 9539
    move-object/from16 v0, p0

    #@363
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    #@365
    move/from16 v0, v26

    #@367
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    #@36a
    move-result v4

    #@36b
    move-object/from16 v0, p1

    #@36d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@370
    .line 9540
    move-object/from16 v0, p0

    #@372
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    #@374
    move/from16 v0, v26

    #@376
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@379
    move-result-object v43

    #@37a
    check-cast v43, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@37c
    .line 9542
    .local v43, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    move-object/from16 v0, v43

    #@37e
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@380
    if-eqz v4, :cond_10

    #@382
    .line 9543
    const/4 v4, 0x1

    #@383
    move-object/from16 v0, p1

    #@385
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@388
    .line 9544
    move-object/from16 v0, v43

    #@38a
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@38c
    move-object/from16 v0, p1

    #@38e
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    #@391
    .line 9548
    :goto_e
    move-object/from16 v0, v43

    #@393
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@395
    if-eqz v4, :cond_11

    #@397
    .line 9549
    const/4 v4, 0x1

    #@398
    move-object/from16 v0, p1

    #@39a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@39d
    .line 9550
    move-object/from16 v0, v43

    #@39f
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@3a1
    move-object/from16 v0, p1

    #@3a3
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    #@3a6
    .line 9554
    :goto_f
    move-object/from16 v0, v43

    #@3a8
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@3aa
    if-eqz v4, :cond_12

    #@3ac
    .line 9555
    const/4 v4, 0x1

    #@3ad
    move-object/from16 v0, p1

    #@3af
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3b2
    .line 9556
    move-object/from16 v0, v43

    #@3b4
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@3b6
    move-object/from16 v0, p1

    #@3b8
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    #@3bb
    .line 9560
    :goto_10
    const/16 v21, 0x0

    #@3bd
    :goto_11
    const/4 v4, 0x5

    #@3be
    move/from16 v0, v21

    #@3c0
    if-ge v0, v4, :cond_14

    #@3c2
    .line 9561
    move-object/from16 v0, v43

    #@3c4
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@3c6
    aget-object v4, v4, v21

    #@3c8
    if-eqz v4, :cond_13

    #@3ca
    .line 9562
    const/4 v4, 0x1

    #@3cb
    move-object/from16 v0, p1

    #@3cd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3d0
    .line 9563
    move-object/from16 v0, v43

    #@3d2
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@3d4
    aget-object v4, v4, v21

    #@3d6
    move-object/from16 v0, p1

    #@3d8
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    #@3db
    .line 9560
    :goto_12
    add-int/lit8 v21, v21, 0x1

    #@3dd
    goto :goto_11

    #@3de
    .line 9546
    :cond_10
    const/4 v4, 0x0

    #@3df
    move-object/from16 v0, p1

    #@3e1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3e4
    goto :goto_e

    #@3e5
    .line 9552
    :cond_11
    const/4 v4, 0x0

    #@3e6
    move-object/from16 v0, p1

    #@3e8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3eb
    goto :goto_f

    #@3ec
    .line 9558
    :cond_12
    const/4 v4, 0x0

    #@3ed
    move-object/from16 v0, p1

    #@3ef
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3f2
    goto :goto_10

    #@3f3
    .line 9565
    :cond_13
    const/4 v4, 0x0

    #@3f4
    move-object/from16 v0, p1

    #@3f6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3f9
    goto :goto_12

    #@3fa
    .line 9568
    :cond_14
    move-object/from16 v0, v43

    #@3fc
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@3fe
    if-eqz v4, :cond_15

    #@400
    .line 9569
    const/4 v4, 0x1

    #@401
    move-object/from16 v0, p1

    #@403
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@406
    .line 9570
    move-object/from16 v0, v43

    #@408
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@40a
    move-object/from16 v0, p1

    #@40c
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    #@40f
    .line 9574
    :goto_13
    move-object/from16 v0, v43

    #@411
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@413
    if-eqz v4, :cond_16

    #@415
    .line 9575
    const/4 v4, 0x1

    #@416
    move-object/from16 v0, p1

    #@418
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@41b
    .line 9576
    move-object/from16 v0, v43

    #@41d
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@41f
    move-object/from16 v0, p1

    #@421
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    #@424
    .line 9580
    :goto_14
    move-object/from16 v0, v43

    #@426
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@428
    if-eqz v4, :cond_17

    #@42a
    .line 9581
    const/4 v4, 0x1

    #@42b
    move-object/from16 v0, p1

    #@42d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@430
    .line 9582
    move-object/from16 v0, v43

    #@432
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@434
    move-object/from16 v0, p1

    #@436
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    #@439
    .line 9586
    :goto_15
    move-object/from16 v0, v43

    #@43b
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@43d
    if-eqz v4, :cond_18

    #@43f
    .line 9587
    const/4 v4, 0x1

    #@440
    move-object/from16 v0, p1

    #@442
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@445
    .line 9588
    move-object/from16 v0, v43

    #@447
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@449
    move-object/from16 v0, p1

    #@44b
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    #@44e
    .line 9592
    :goto_16
    move-object/from16 v0, v43

    #@450
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@452
    if-eqz v4, :cond_19

    #@454
    .line 9593
    const/4 v4, 0x1

    #@455
    move-object/from16 v0, p1

    #@457
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@45a
    .line 9594
    move-object/from16 v0, v43

    #@45c
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@45e
    move-object/from16 v0, p1

    #@460
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    #@463
    .line 9598
    :goto_17
    move-object/from16 v0, v43

    #@465
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@467
    if-eqz v4, :cond_1a

    #@469
    .line 9599
    const/4 v4, 0x1

    #@46a
    move-object/from16 v0, p1

    #@46c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@46f
    .line 9600
    move-object/from16 v0, v43

    #@471
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@473
    move-object/from16 v0, p1

    #@475
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    #@478
    .line 9604
    :goto_18
    const/16 v21, 0x0

    #@47a
    :goto_19
    const/4 v4, 0x3

    #@47b
    move/from16 v0, v21

    #@47d
    if-ge v0, v4, :cond_1c

    #@47f
    .line 9605
    move-object/from16 v0, v43

    #@481
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@483
    aget-object v4, v4, v21

    #@485
    if-eqz v4, :cond_1b

    #@487
    .line 9606
    const/4 v4, 0x1

    #@488
    move-object/from16 v0, p1

    #@48a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@48d
    .line 9607
    move-object/from16 v0, v43

    #@48f
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@491
    aget-object v4, v4, v21

    #@493
    move-object/from16 v0, p1

    #@495
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    #@498
    .line 9604
    :goto_1a
    add-int/lit8 v21, v21, 0x1

    #@49a
    goto :goto_19

    #@49b
    .line 9572
    :cond_15
    const/4 v4, 0x0

    #@49c
    move-object/from16 v0, p1

    #@49e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4a1
    goto/16 :goto_13

    #@4a3
    .line 9578
    :cond_16
    const/4 v4, 0x0

    #@4a4
    move-object/from16 v0, p1

    #@4a6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4a9
    goto/16 :goto_14

    #@4ab
    .line 9584
    :cond_17
    const/4 v4, 0x0

    #@4ac
    move-object/from16 v0, p1

    #@4ae
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4b1
    goto :goto_15

    #@4b2
    .line 9590
    :cond_18
    const/4 v4, 0x0

    #@4b3
    move-object/from16 v0, p1

    #@4b5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4b8
    goto :goto_16

    #@4b9
    .line 9596
    :cond_19
    const/4 v4, 0x0

    #@4ba
    move-object/from16 v0, p1

    #@4bc
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4bf
    goto :goto_17

    #@4c0
    .line 9602
    :cond_1a
    const/4 v4, 0x0

    #@4c1
    move-object/from16 v0, p1

    #@4c3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4c6
    goto :goto_18

    #@4c7
    .line 9609
    :cond_1b
    const/4 v4, 0x0

    #@4c8
    move-object/from16 v0, p1

    #@4ca
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4cd
    goto :goto_1a

    #@4ce
    .line 9612
    :cond_1c
    move-object/from16 v0, v43

    #@4d0
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@4d2
    if-eqz v4, :cond_1e

    #@4d4
    .line 9613
    const/4 v4, 0x1

    #@4d5
    move-object/from16 v0, p1

    #@4d7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4da
    .line 9614
    move-object/from16 v0, v43

    #@4dc
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@4de
    move-object/from16 v0, p1

    #@4e0
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    #@4e3
    .line 9619
    :goto_1b
    move-object/from16 v0, v43

    #@4e5
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@4e7
    if-nez v4, :cond_1f

    #@4e9
    .line 9620
    const/4 v4, 0x0

    #@4ea
    move-object/from16 v0, p1

    #@4ec
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4ef
    .line 9628
    :cond_1d
    move-object/from16 v0, v43

    #@4f1
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@4f3
    if-nez v4, :cond_20

    #@4f5
    .line 9629
    const/4 v4, 0x0

    #@4f6
    move-object/from16 v0, p1

    #@4f8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4fb
    .line 9640
    :goto_1c
    move-object/from16 v0, v43

    #@4fd
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@4ff
    move-object/from16 v0, p1

    #@501
    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@504
    .line 9641
    move-object/from16 v0, v43

    #@506
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@508
    move-object/from16 v0, p1

    #@50a
    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@50d
    .line 9642
    move-object/from16 v0, v43

    #@50f
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@511
    move-object/from16 v0, p1

    #@513
    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@516
    .line 9644
    move-object/from16 v0, v43

    #@518
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@51a
    array-length v4, v4

    #@51b
    move-object/from16 v0, p1

    #@51d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@520
    .line 9645
    const/16 v21, 0x0

    #@522
    :goto_1d
    move-object/from16 v0, v43

    #@524
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@526
    array-length v4, v4

    #@527
    move/from16 v0, v21

    #@529
    if-ge v0, v4, :cond_23

    #@52b
    .line 9646
    move-object/from16 v0, v43

    #@52d
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@52f
    aget-object v35, v4, v21

    #@531
    .line 9647
    .local v35, "speedBin":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v35, :cond_22

    #@533
    .line 9648
    const/4 v4, 0x1

    #@534
    move-object/from16 v0, p1

    #@536
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@539
    .line 9649
    move-object/from16 v0, v35

    #@53b
    move-object/from16 v1, p1

    #@53d
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@540
    .line 9645
    :goto_1e
    add-int/lit8 v21, v21, 0x1

    #@542
    goto :goto_1d

    #@543
    .line 9616
    .end local v35    # "speedBin":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_1e
    const/4 v4, 0x0

    #@544
    move-object/from16 v0, p1

    #@546
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@549
    goto :goto_1b

    #@54a
    .line 9622
    :cond_1f
    const/4 v4, 0x1

    #@54b
    move-object/from16 v0, p1

    #@54d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@550
    .line 9623
    const/16 v21, 0x0

    #@552
    :goto_1f
    const/4 v4, 0x3

    #@553
    move/from16 v0, v21

    #@555
    if-ge v0, v4, :cond_1d

    #@557
    .line 9624
    move-object/from16 v0, v43

    #@559
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@55b
    aget-object v4, v4, v21

    #@55d
    move-object/from16 v0, p1

    #@55f
    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@562
    .line 9623
    add-int/lit8 v21, v21, 0x1

    #@564
    goto :goto_1f

    #@565
    .line 9631
    :cond_20
    const/4 v4, 0x1

    #@566
    move-object/from16 v0, p1

    #@568
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@56b
    .line 9632
    const/16 v21, 0x0

    #@56d
    :goto_20
    const/4 v4, 0x4

    #@56e
    move/from16 v0, v21

    #@570
    if-ge v0, v4, :cond_21

    #@572
    .line 9633
    move-object/from16 v0, v43

    #@574
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@576
    aget-object v4, v4, v21

    #@578
    move-object/from16 v0, p1

    #@57a
    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@57d
    .line 9634
    move-object/from16 v0, v43

    #@57f
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@581
    aget-object v4, v4, v21

    #@583
    move-object/from16 v0, p1

    #@585
    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@588
    .line 9632
    add-int/lit8 v21, v21, 0x1

    #@58a
    goto :goto_20

    #@58b
    .line 9636
    :cond_21
    move-object/from16 v0, v43

    #@58d
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@58f
    move-object/from16 v0, p1

    #@591
    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@594
    .line 9637
    move-object/from16 v0, v43

    #@596
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@598
    move-object/from16 v0, p1

    #@59a
    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@59d
    goto/16 :goto_1c

    #@59f
    .line 9651
    .restart local v35    # "speedBin":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_22
    const/4 v4, 0x0

    #@5a0
    move-object/from16 v0, p1

    #@5a2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@5a5
    goto :goto_1e

    #@5a6
    .line 9655
    .end local v35    # "speedBin":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_23
    move-object/from16 v0, v43

    #@5a8
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@5aa
    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    #@5ad
    move-result-object v44

    #@5ae
    .line 9656
    .local v44, "wakeStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    invoke-virtual/range {v44 .. v44}, Landroid/util/ArrayMap;->size()I

    #@5b1
    move-result v16

    #@5b2
    .line 9657
    .local v16, "NW":I
    move-object/from16 v0, p1

    #@5b4
    move/from16 v1, v16

    #@5b6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5b9
    .line 9658
    const/16 v27, 0x0

    #@5bb
    .local v27, "iw":I
    :goto_21
    move/from16 v0, v27

    #@5bd
    move/from16 v1, v16

    #@5bf
    if-ge v0, v1, :cond_28

    #@5c1
    .line 9659
    move-object/from16 v0, v44

    #@5c3
    move/from16 v1, v27

    #@5c5
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@5c8
    move-result-object v4

    #@5c9
    check-cast v4, Ljava/lang/String;

    #@5cb
    move-object/from16 v0, p1

    #@5cd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5d0
    .line 9660
    move-object/from16 v0, v44

    #@5d2
    move/from16 v1, v27

    #@5d4
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@5d7
    move-result-object v45

    #@5d8
    check-cast v45, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    #@5da
    .line 9661
    .local v45, "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    move-object/from16 v0, v45

    #@5dc
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@5de
    if-eqz v4, :cond_24

    #@5e0
    .line 9662
    const/4 v4, 0x1

    #@5e1
    move-object/from16 v0, p1

    #@5e3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@5e6
    .line 9663
    move-object/from16 v0, v45

    #@5e8
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@5ea
    move-object/from16 v0, p1

    #@5ec
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    #@5ef
    .line 9667
    :goto_22
    move-object/from16 v0, v45

    #@5f1
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@5f3
    if-eqz v4, :cond_25

    #@5f5
    .line 9668
    const/4 v4, 0x1

    #@5f6
    move-object/from16 v0, p1

    #@5f8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@5fb
    .line 9669
    move-object/from16 v0, v45

    #@5fd
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@5ff
    move-object/from16 v0, p1

    #@601
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    #@604
    .line 9673
    :goto_23
    move-object/from16 v0, v45

    #@606
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@608
    if-eqz v4, :cond_26

    #@60a
    .line 9674
    const/4 v4, 0x1

    #@60b
    move-object/from16 v0, p1

    #@60d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@610
    .line 9675
    move-object/from16 v0, v45

    #@612
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@614
    move-object/from16 v0, p1

    #@616
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    #@619
    .line 9679
    :goto_24
    move-object/from16 v0, v45

    #@61b
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@61d
    if-eqz v4, :cond_27

    #@61f
    .line 9680
    const/4 v4, 0x1

    #@620
    move-object/from16 v0, p1

    #@622
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@625
    .line 9681
    move-object/from16 v0, v45

    #@627
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@629
    move-object/from16 v0, p1

    #@62b
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    #@62e
    .line 9658
    :goto_25
    add-int/lit8 v27, v27, 0x1

    #@630
    goto :goto_21

    #@631
    .line 9665
    :cond_24
    const/4 v4, 0x0

    #@632
    move-object/from16 v0, p1

    #@634
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@637
    goto :goto_22

    #@638
    .line 9671
    :cond_25
    const/4 v4, 0x0

    #@639
    move-object/from16 v0, p1

    #@63b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@63e
    goto :goto_23

    #@63f
    .line 9677
    :cond_26
    const/4 v4, 0x0

    #@640
    move-object/from16 v0, p1

    #@642
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@645
    goto :goto_24

    #@646
    .line 9683
    :cond_27
    const/4 v4, 0x0

    #@647
    move-object/from16 v0, p1

    #@649
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@64c
    goto :goto_25

    #@64d
    .line 9687
    .end local v45    # "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    :cond_28
    move-object/from16 v0, v43

    #@64f
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@651
    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    #@654
    move-result-object v37

    #@655
    .line 9688
    .local v37, "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-virtual/range {v37 .. v37}, Landroid/util/ArrayMap;->size()I

    #@658
    move-result v13

    #@659
    .line 9689
    .local v13, "NS":I
    move-object/from16 v0, p1

    #@65b
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@65e
    .line 9690
    const/16 v24, 0x0

    #@660
    .local v24, "is":I
    :goto_26
    move/from16 v0, v24

    #@662
    if-ge v0, v13, :cond_29

    #@664
    .line 9691
    move-object/from16 v0, v37

    #@666
    move/from16 v1, v24

    #@668
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@66b
    move-result-object v4

    #@66c
    check-cast v4, Ljava/lang/String;

    #@66e
    move-object/from16 v0, p1

    #@670
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@673
    .line 9692
    move-object/from16 v0, v37

    #@675
    move/from16 v1, v24

    #@677
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@67a
    move-result-object v4

    #@67b
    check-cast v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@67d
    move-object/from16 v0, p1

    #@67f
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    #@682
    .line 9690
    add-int/lit8 v24, v24, 0x1

    #@684
    goto :goto_26

    #@685
    .line 9695
    :cond_29
    move-object/from16 v0, v43

    #@687
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@689
    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    #@68c
    move-result-object v29

    #@68d
    .line 9696
    .local v29, "jobStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-virtual/range {v29 .. v29}, Landroid/util/ArrayMap;->size()I

    #@690
    move-result v10

    #@691
    .line 9697
    .local v10, "NJ":I
    move-object/from16 v0, p1

    #@693
    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@696
    .line 9698
    const/16 v22, 0x0

    #@698
    .local v22, "ij":I
    :goto_27
    move/from16 v0, v22

    #@69a
    if-ge v0, v10, :cond_2a

    #@69c
    .line 9699
    move-object/from16 v0, v29

    #@69e
    move/from16 v1, v22

    #@6a0
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@6a3
    move-result-object v4

    #@6a4
    check-cast v4, Ljava/lang/String;

    #@6a6
    move-object/from16 v0, p1

    #@6a8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@6ab
    .line 9700
    move-object/from16 v0, v29

    #@6ad
    move/from16 v1, v22

    #@6af
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@6b2
    move-result-object v4

    #@6b3
    check-cast v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6b5
    move-object/from16 v0, p1

    #@6b7
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    #@6ba
    .line 9698
    add-int/lit8 v22, v22, 0x1

    #@6bc
    goto :goto_27

    #@6bd
    .line 9703
    :cond_2a
    move-object/from16 v0, v43

    #@6bf
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    #@6c1
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@6c4
    move-result v14

    #@6c5
    .line 9704
    .local v14, "NSE":I
    move-object/from16 v0, p1

    #@6c7
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    #@6ca
    .line 9705
    const/16 v25, 0x0

    #@6cc
    .local v25, "ise":I
    :goto_28
    move/from16 v0, v25

    #@6ce
    if-ge v0, v14, :cond_2c

    #@6d0
    .line 9706
    move-object/from16 v0, v43

    #@6d2
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    #@6d4
    move/from16 v0, v25

    #@6d6
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    #@6d9
    move-result v4

    #@6da
    move-object/from16 v0, p1

    #@6dc
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@6df
    .line 9707
    move-object/from16 v0, v43

    #@6e1
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    #@6e3
    move/from16 v0, v25

    #@6e5
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@6e8
    move-result-object v34

    #@6e9
    check-cast v34, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    #@6eb
    .line 9708
    .local v34, "se":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    move-object/from16 v0, v34

    #@6ed
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6ef
    if-eqz v4, :cond_2b

    #@6f1
    .line 9709
    const/4 v4, 0x1

    #@6f2
    move-object/from16 v0, p1

    #@6f4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@6f7
    .line 9710
    move-object/from16 v0, v34

    #@6f9
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6fb
    move-object/from16 v0, p1

    #@6fd
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    #@700
    .line 9705
    :goto_29
    add-int/lit8 v25, v25, 0x1

    #@702
    goto :goto_28

    #@703
    .line 9712
    :cond_2b
    const/4 v4, 0x0

    #@704
    move-object/from16 v0, p1

    #@706
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@709
    goto :goto_29

    #@70a
    .line 9716
    .end local v34    # "se":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    :cond_2c
    move-object/from16 v0, v43

    #@70c
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    #@70e
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@711
    move-result v11

    #@712
    .line 9717
    .local v11, "NP":I
    move-object/from16 v0, p1

    #@714
    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@717
    .line 9718
    const/16 v23, 0x0

    #@719
    .local v23, "ip":I
    :goto_2a
    move/from16 v0, v23

    #@71b
    if-ge v0, v11, :cond_2d

    #@71d
    .line 9719
    move-object/from16 v0, v43

    #@71f
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    #@721
    move/from16 v0, v23

    #@723
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@726
    move-result-object v4

    #@727
    check-cast v4, Ljava/lang/String;

    #@729
    move-object/from16 v0, p1

    #@72b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@72e
    .line 9720
    move-object/from16 v0, v43

    #@730
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    #@732
    move/from16 v0, v23

    #@734
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@737
    move-result-object v33

    #@738
    check-cast v33, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    #@73a
    .line 9721
    .local v33, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    move-object/from16 v0, v33

    #@73c
    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    #@73e
    move-object/from16 v0, p1

    #@740
    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@743
    .line 9722
    move-object/from16 v0, v33

    #@745
    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    #@747
    move-object/from16 v0, p1

    #@749
    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@74c
    .line 9723
    move-object/from16 v0, v33

    #@74e
    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    #@750
    move-object/from16 v0, p1

    #@752
    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@755
    .line 9724
    move-object/from16 v0, v33

    #@757
    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    #@759
    move-object/from16 v0, p1

    #@75b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@75e
    .line 9725
    move-object/from16 v0, v33

    #@760
    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumCrashes:I

    #@762
    move-object/from16 v0, p1

    #@764
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@767
    .line 9726
    move-object/from16 v0, v33

    #@769
    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumAnrs:I

    #@76b
    move-object/from16 v0, p1

    #@76d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@770
    .line 9727
    move-object/from16 v0, v33

    #@772
    move-object/from16 v1, p1

    #@774
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->writeExcessivePowerToParcelLocked(Landroid/os/Parcel;)V

    #@777
    .line 9718
    add-int/lit8 v23, v23, 0x1

    #@779
    goto :goto_2a

    #@77a
    .line 9730
    .end local v33    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    :cond_2d
    move-object/from16 v0, v43

    #@77c
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    #@77e
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@781
    move-result v11

    #@782
    .line 9731
    move-object/from16 v0, p1

    #@784
    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@787
    .line 9732
    if-lez v11, :cond_30

    #@789
    .line 9734
    move-object/from16 v0, v43

    #@78b
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    #@78d
    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    #@790
    move-result-object v4

    #@791
    .line 9733
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@794
    move-result-object v20

    #@795
    :cond_2e
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    #@798
    move-result v4

    #@799
    if-eqz v4, :cond_30

    #@79b
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@79e
    move-result-object v19

    #@79f
    check-cast v19, Ljava/util/Map$Entry;

    #@7a1
    .line 9735
    .local v19, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@7a4
    move-result-object v4

    #@7a5
    check-cast v4, Ljava/lang/String;

    #@7a7
    move-object/from16 v0, p1

    #@7a9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@7ac
    .line 9736
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@7af
    move-result-object v32

    #@7b0
    check-cast v32, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    #@7b2
    .line 9737
    .local v32, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    move-object/from16 v0, v32

    #@7b4
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    #@7b6
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@7b9
    move-result v17

    #@7ba
    .line 9738
    .local v17, "NWA":I
    move-object/from16 v0, p1

    #@7bc
    move/from16 v1, v17

    #@7be
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@7c1
    .line 9739
    const/16 v28, 0x0

    #@7c3
    .local v28, "iwa":I
    :goto_2b
    move/from16 v0, v28

    #@7c5
    move/from16 v1, v17

    #@7c7
    if-ge v0, v1, :cond_2f

    #@7c9
    .line 9740
    move-object/from16 v0, v32

    #@7cb
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    #@7cd
    move/from16 v0, v28

    #@7cf
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@7d2
    move-result-object v4

    #@7d3
    check-cast v4, Ljava/lang/String;

    #@7d5
    move-object/from16 v0, p1

    #@7d7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@7da
    .line 9741
    move-object/from16 v0, v32

    #@7dc
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    #@7de
    move/from16 v0, v28

    #@7e0
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@7e3
    move-result-object v4

    #@7e4
    check-cast v4, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@7e6
    move-object/from16 v0, p1

    #@7e8
    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@7eb
    .line 9739
    add-int/lit8 v28, v28, 0x1

    #@7ed
    goto :goto_2b

    #@7ee
    .line 9743
    :cond_2f
    move-object/from16 v0, v32

    #@7f0
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    #@7f2
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@7f5
    move-result v13

    #@7f6
    .line 9744
    move-object/from16 v0, p1

    #@7f8
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@7fb
    .line 9745
    const/16 v24, 0x0

    #@7fd
    :goto_2c
    move/from16 v0, v24

    #@7ff
    if-ge v0, v13, :cond_2e

    #@801
    .line 9746
    move-object/from16 v0, v32

    #@803
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    #@805
    move/from16 v0, v24

    #@807
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@80a
    move-result-object v4

    #@80b
    check-cast v4, Ljava/lang/String;

    #@80d
    move-object/from16 v0, p1

    #@80f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@812
    .line 9747
    move-object/from16 v0, v32

    #@814
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    #@816
    move/from16 v0, v24

    #@818
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@81b
    move-result-object v36

    #@81c
    check-cast v36, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    #@81e
    .line 9749
    .local v36, "ss":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    move-object/from16 v0, p0

    #@820
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@822
    invoke-virtual {v4, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    #@825
    move-result-wide v4

    #@826
    .line 9748
    move-object/from16 v0, v36

    #@828
    invoke-virtual {v0, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getStartTimeToNowLocked(J)J

    #@82b
    move-result-wide v40

    #@82c
    .line 9750
    .local v40, "time":J
    move-object/from16 v0, p1

    #@82e
    move-wide/from16 v1, v40

    #@830
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@833
    .line 9751
    move-object/from16 v0, v36

    #@835
    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    #@837
    move-object/from16 v0, p1

    #@839
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@83c
    .line 9752
    move-object/from16 v0, v36

    #@83e
    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    #@840
    move-object/from16 v0, p1

    #@842
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@845
    .line 9745
    add-int/lit8 v24, v24, 0x1

    #@847
    goto :goto_2c

    #@848
    .line 9538
    .end local v17    # "NWA":I
    .end local v19    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    .end local v28    # "iwa":I
    .end local v32    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .end local v36    # "ss":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .end local v40    # "time":J
    :cond_30
    add-int/lit8 v26, v26, 0x1

    #@84a
    goto/16 :goto_d

    #@84c
    .line 9415
    .end local v10    # "NJ":I
    .end local v11    # "NP":I
    .end local v13    # "NS":I
    .end local v14    # "NSE":I
    .end local v16    # "NW":I
    .end local v22    # "ij":I
    .end local v23    # "ip":I
    .end local v24    # "is":I
    .end local v25    # "ise":I
    .end local v27    # "iw":I
    .end local v29    # "jobStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    .end local v37    # "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    .end local v43    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v44    # "wakeStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    :cond_31
    return-void
.end method

.method public writeSyncLocked()V
    .locals 1

    #@0
    .prologue
    .line 8849
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl;->writeLocked(Z)V

    #@4
    .line 8848
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 9914
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcelLocked(Landroid/os/Parcel;ZI)V

    #@4
    .line 9913
    return-void
.end method

.method writeToParcelLocked(Landroid/os/Parcel;ZI)V
    .locals 26
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "inclUids"    # Z
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 9924
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->pullPendingStateUpdatesLocked()V

    #@3
    .line 9928
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsImpl;->getStartClockTime()J

    #@6
    move-result-wide v20

    #@7
    .line 9930
    .local v20, "startClockTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@a
    move-result-wide v4

    #@b
    const-wide/16 v24, 0x3e8

    #@d
    mul-long v6, v4, v24

    #@f
    .line 9931
    .local v6, "uSecUptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@12
    move-result-wide v4

    #@13
    const-wide/16 v24, 0x3e8

    #@15
    mul-long v8, v4, v24

    #@17
    .line 9932
    .local v8, "uSecRealtime":J
    move-object/from16 v0, p0

    #@19
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@1b
    invoke-virtual {v4, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    #@1e
    move-result-wide v10

    #@1f
    .line 9933
    .local v10, "batteryRealtime":J
    move-object/from16 v0, p0

    #@21
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@23
    invoke-virtual {v4, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    #@26
    move-result-wide v12

    #@27
    .line 9935
    .local v12, "batteryScreenOffRealtime":J
    const v4, -0x458a8b8b

    #@2a
    move-object/from16 v0, p1

    #@2c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2f
    .line 9937
    const/4 v4, 0x1

    #@30
    const/4 v5, 0x0

    #@31
    move-object/from16 v0, p0

    #@33
    move-object/from16 v1, p1

    #@35
    invoke-virtual {v0, v1, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->writeHistory(Landroid/os/Parcel;ZZ)V

    #@38
    .line 9939
    move-object/from16 v0, p0

    #@3a
    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mStartCount:I

    #@3c
    move-object/from16 v0, p1

    #@3e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@41
    .line 9940
    move-object/from16 v0, p1

    #@43
    move-wide/from16 v1, v20

    #@45
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@48
    .line 9941
    move-object/from16 v0, p0

    #@4a
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mStartPlatformVersion:Ljava/lang/String;

    #@4c
    move-object/from16 v0, p1

    #@4e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@51
    .line 9942
    move-object/from16 v0, p0

    #@53
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mEndPlatformVersion:Ljava/lang/String;

    #@55
    move-object/from16 v0, p1

    #@57
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5a
    .line 9943
    move-object/from16 v0, p0

    #@5c
    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUptime:J

    #@5e
    move-object/from16 v0, p1

    #@60
    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@63
    .line 9944
    move-object/from16 v0, p0

    #@65
    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUptimeStart:J

    #@67
    move-object/from16 v0, p1

    #@69
    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@6c
    .line 9945
    move-object/from16 v0, p0

    #@6e
    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtime:J

    #@70
    move-object/from16 v0, p1

    #@72
    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@75
    .line 9946
    move-object/from16 v0, p0

    #@77
    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mRealtimeStart:J

    #@79
    move-object/from16 v0, p1

    #@7b
    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@7e
    .line 9947
    move-object/from16 v0, p0

    #@80
    iget-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    #@82
    if-eqz v4, :cond_0

    #@84
    const/4 v4, 0x1

    #@85
    :goto_0
    move-object/from16 v0, p1

    #@87
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@8a
    .line 9948
    move-object/from16 v0, p0

    #@8c
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@8e
    move-object/from16 v5, p1

    #@90
    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->writeToParcel(Landroid/os/Parcel;JJ)V

    #@93
    .line 9949
    move-object/from16 v0, p0

    #@95
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@97
    move-object/from16 v5, p1

    #@99
    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->writeToParcel(Landroid/os/Parcel;JJ)V

    #@9c
    .line 9951
    move-object/from16 v0, p0

    #@9e
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@a0
    move-object/from16 v0, p1

    #@a2
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    #@a5
    .line 9952
    const/16 v16, 0x0

    #@a7
    .local v16, "i":I
    :goto_1
    const/4 v4, 0x5

    #@a8
    move/from16 v0, v16

    #@aa
    if-ge v0, v4, :cond_1

    #@ac
    .line 9953
    move-object/from16 v0, p0

    #@ae
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@b0
    aget-object v4, v4, v16

    #@b2
    move-object/from16 v0, p1

    #@b4
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    #@b7
    .line 9952
    add-int/lit8 v16, v16, 0x1

    #@b9
    goto :goto_1

    #@ba
    .line 9947
    .end local v16    # "i":I
    :cond_0
    const/4 v4, 0x0

    #@bb
    goto :goto_0

    #@bc
    .line 9955
    .restart local v16    # "i":I
    :cond_1
    move-object/from16 v0, p0

    #@be
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@c0
    move-object/from16 v0, p1

    #@c2
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    #@c5
    .line 9956
    move-object/from16 v0, p0

    #@c7
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@c9
    move-object/from16 v0, p1

    #@cb
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    #@ce
    .line 9957
    move-object/from16 v0, p0

    #@d0
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdleModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@d2
    move-object/from16 v0, p1

    #@d4
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    #@d7
    .line 9958
    move-object/from16 v0, p0

    #@d9
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@db
    move-object/from16 v0, p1

    #@dd
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    #@e0
    .line 9959
    move-object/from16 v0, p0

    #@e2
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@e4
    move-object/from16 v0, p1

    #@e6
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    #@e9
    .line 9960
    const/16 v16, 0x0

    #@eb
    :goto_2
    const/4 v4, 0x5

    #@ec
    move/from16 v0, v16

    #@ee
    if-ge v0, v4, :cond_2

    #@f0
    .line 9961
    move-object/from16 v0, p0

    #@f2
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@f4
    aget-object v4, v4, v16

    #@f6
    move-object/from16 v0, p1

    #@f8
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    #@fb
    .line 9960
    add-int/lit8 v16, v16, 0x1

    #@fd
    goto :goto_2

    #@fe
    .line 9963
    :cond_2
    move-object/from16 v0, p0

    #@100
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@102
    move-object/from16 v0, p1

    #@104
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    #@107
    .line 9964
    const/16 v16, 0x0

    #@109
    :goto_3
    const/16 v4, 0x11

    #@10b
    move/from16 v0, v16

    #@10d
    if-ge v0, v4, :cond_3

    #@10f
    .line 9965
    move-object/from16 v0, p0

    #@111
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@113
    aget-object v4, v4, v16

    #@115
    move-object/from16 v0, p1

    #@117
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    #@11a
    .line 9964
    add-int/lit8 v16, v16, 0x1

    #@11c
    goto :goto_3

    #@11d
    .line 9967
    :cond_3
    const/16 v16, 0x0

    #@11f
    :goto_4
    const/4 v4, 0x4

    #@120
    move/from16 v0, v16

    #@122
    if-ge v0, v4, :cond_4

    #@124
    .line 9968
    move-object/from16 v0, p0

    #@126
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@128
    aget-object v4, v4, v16

    #@12a
    move-object/from16 v0, p1

    #@12c
    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    #@12f
    .line 9969
    move-object/from16 v0, p0

    #@131
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@133
    aget-object v4, v4, v16

    #@135
    move-object/from16 v0, p1

    #@137
    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    #@13a
    .line 9967
    add-int/lit8 v16, v16, 0x1

    #@13c
    goto :goto_4

    #@13d
    .line 9971
    :cond_4
    move-object/from16 v0, p0

    #@13f
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@141
    move-object/from16 v0, p1

    #@143
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    #@146
    .line 9972
    move-object/from16 v0, p0

    #@148
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@14a
    move-object/from16 v0, p1

    #@14c
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    #@14f
    .line 9973
    move-object/from16 v0, p0

    #@151
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@153
    move-object/from16 v0, p1

    #@155
    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    #@158
    .line 9974
    move-object/from16 v0, p0

    #@15a
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@15c
    move-object/from16 v0, p1

    #@15e
    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    #@161
    .line 9975
    move-object/from16 v0, p0

    #@163
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@165
    move-object/from16 v0, p1

    #@167
    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    #@16a
    .line 9976
    move-object/from16 v0, p0

    #@16c
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@16e
    move-object/from16 v0, p1

    #@170
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    #@173
    .line 9977
    move-object/from16 v0, p0

    #@175
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@177
    move-object/from16 v0, p1

    #@179
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    #@17c
    .line 9978
    const/16 v16, 0x0

    #@17e
    :goto_5
    const/16 v4, 0x8

    #@180
    move/from16 v0, v16

    #@182
    if-ge v0, v4, :cond_5

    #@184
    .line 9979
    move-object/from16 v0, p0

    #@186
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@188
    aget-object v4, v4, v16

    #@18a
    move-object/from16 v0, p1

    #@18c
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    #@18f
    .line 9978
    add-int/lit8 v16, v16, 0x1

    #@191
    goto :goto_5

    #@192
    .line 9981
    :cond_5
    const/16 v16, 0x0

    #@194
    :goto_6
    const/16 v4, 0xd

    #@196
    move/from16 v0, v16

    #@198
    if-ge v0, v4, :cond_6

    #@19a
    .line 9982
    move-object/from16 v0, p0

    #@19c
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@19e
    aget-object v4, v4, v16

    #@1a0
    move-object/from16 v0, p1

    #@1a2
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    #@1a5
    .line 9981
    add-int/lit8 v16, v16, 0x1

    #@1a7
    goto :goto_6

    #@1a8
    .line 9984
    :cond_6
    const/16 v16, 0x0

    #@1aa
    :goto_7
    const/4 v4, 0x5

    #@1ab
    move/from16 v0, v16

    #@1ad
    if-ge v0, v4, :cond_7

    #@1af
    .line 9985
    move-object/from16 v0, p0

    #@1b1
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1b3
    aget-object v4, v4, v16

    #@1b5
    move-object/from16 v0, p1

    #@1b7
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    #@1ba
    .line 9984
    add-int/lit8 v16, v16, 0x1

    #@1bc
    goto :goto_7

    #@1bd
    .line 9987
    :cond_7
    const/16 v16, 0x0

    #@1bf
    :goto_8
    const/4 v4, 0x4

    #@1c0
    move/from16 v0, v16

    #@1c2
    if-ge v0, v4, :cond_8

    #@1c4
    .line 9988
    move-object/from16 v0, p0

    #@1c6
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@1c8
    aget-object v4, v4, v16

    #@1ca
    move-object/from16 v0, p1

    #@1cc
    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    #@1cf
    .line 9987
    add-int/lit8 v16, v16, 0x1

    #@1d1
    goto :goto_8

    #@1d2
    .line 9990
    :cond_8
    const/16 v16, 0x0

    #@1d4
    :goto_9
    const/4 v4, 0x4

    #@1d5
    move/from16 v0, v16

    #@1d7
    if-ge v0, v4, :cond_9

    #@1d9
    .line 9991
    move-object/from16 v0, p0

    #@1db
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@1dd
    aget-object v4, v4, v16

    #@1df
    move-object/from16 v0, p1

    #@1e1
    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    #@1e4
    .line 9990
    add-int/lit8 v16, v16, 0x1

    #@1e6
    goto :goto_9

    #@1e7
    .line 9993
    :cond_9
    move-object/from16 v0, p0

    #@1e9
    iget-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHasWifiEnergyReporting:Z

    #@1eb
    if-eqz v4, :cond_a

    #@1ed
    const/4 v4, 0x1

    #@1ee
    :goto_a
    move-object/from16 v0, p1

    #@1f0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1f3
    .line 9994
    move-object/from16 v0, p0

    #@1f5
    iget-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHasBluetoothEnergyReporting:Z

    #@1f7
    if-eqz v4, :cond_b

    #@1f9
    const/4 v4, 0x1

    #@1fa
    :goto_b
    move-object/from16 v0, p1

    #@1fc
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1ff
    .line 9995
    move-object/from16 v0, p0

    #@201
    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mNumConnectivityChange:I

    #@203
    move-object/from16 v0, p1

    #@205
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@208
    .line 9996
    move-object/from16 v0, p0

    #@20a
    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLoadedNumConnectivityChange:I

    #@20c
    move-object/from16 v0, p1

    #@20e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@211
    .line 9997
    move-object/from16 v0, p0

    #@213
    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggedNumConnectivityChange:I

    #@215
    move-object/from16 v0, p1

    #@217
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@21a
    .line 9998
    move-object/from16 v0, p0

    #@21c
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@21e
    move-object/from16 v0, p1

    #@220
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    #@223
    .line 9999
    move-object/from16 v0, p0

    #@225
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@227
    move-object/from16 v0, p1

    #@229
    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    #@22c
    .line 10000
    move-object/from16 v0, p0

    #@22e
    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeUnplugLevel:I

    #@230
    move-object/from16 v0, p1

    #@232
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@235
    .line 10001
    move-object/from16 v0, p0

    #@237
    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargePlugLevel:I

    #@239
    move-object/from16 v0, p1

    #@23b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@23e
    .line 10002
    move-object/from16 v0, p0

    #@240
    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeCurrentLevel:I

    #@242
    move-object/from16 v0, p1

    #@244
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@247
    .line 10003
    move-object/from16 v0, p0

    #@249
    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    #@24b
    move-object/from16 v0, p1

    #@24d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@250
    .line 10004
    move-object/from16 v0, p0

    #@252
    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLowDischargeAmountSinceCharge:I

    #@254
    move-object/from16 v0, p1

    #@256
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@259
    .line 10005
    move-object/from16 v0, p0

    #@25b
    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHighDischargeAmountSinceCharge:I

    #@25d
    move-object/from16 v0, p1

    #@25f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@262
    .line 10006
    move-object/from16 v0, p0

    #@264
    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOn:I

    #@266
    move-object/from16 v0, p1

    #@268
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@26b
    .line 10007
    move-object/from16 v0, p0

    #@26d
    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOnSinceCharge:I

    #@26f
    move-object/from16 v0, p1

    #@271
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@274
    .line 10008
    move-object/from16 v0, p0

    #@276
    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOff:I

    #@278
    move-object/from16 v0, p1

    #@27a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@27d
    .line 10009
    move-object/from16 v0, p0

    #@27f
    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeAmountScreenOffSinceCharge:I

    #@281
    move-object/from16 v0, p1

    #@283
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@286
    .line 10010
    move-object/from16 v0, p0

    #@288
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@28a
    move-object/from16 v0, p1

    #@28c
    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$LevelStepTracker;->writeToParcel(Landroid/os/Parcel;)V

    #@28f
    .line 10011
    move-object/from16 v0, p0

    #@291
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    #@293
    move-object/from16 v0, p1

    #@295
    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$LevelStepTracker;->writeToParcel(Landroid/os/Parcel;)V

    #@298
    .line 10012
    move-object/from16 v0, p0

    #@29a
    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastWriteTime:J

    #@29c
    move-object/from16 v0, p1

    #@29e
    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@2a1
    .line 10014
    if-eqz p2, :cond_f

    #@2a3
    .line 10015
    move-object/from16 v0, p0

    #@2a5
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    #@2a7
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    #@2aa
    move-result v4

    #@2ab
    move-object/from16 v0, p1

    #@2ad
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2b0
    .line 10016
    move-object/from16 v0, p0

    #@2b2
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    #@2b4
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@2b7
    move-result-object v4

    #@2b8
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2bb
    move-result-object v15

    #@2bc
    .local v15, "ent$iterator":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    #@2bf
    move-result v4

    #@2c0
    if-eqz v4, :cond_d

    #@2c2
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2c5
    move-result-object v14

    #@2c6
    check-cast v14, Ljava/util/Map$Entry;

    #@2c8
    .line 10017
    .local v14, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2cb
    move-result-object v17

    #@2cc
    check-cast v17, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    #@2ce
    .line 10018
    .local v17, "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    if-eqz v17, :cond_c

    #@2d0
    .line 10019
    const/4 v4, 0x1

    #@2d1
    move-object/from16 v0, p1

    #@2d3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2d6
    .line 10020
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@2d9
    move-result-object v4

    #@2da
    check-cast v4, Ljava/lang/String;

    #@2dc
    move-object/from16 v0, p1

    #@2de
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2e1
    .line 10021
    move-object/from16 v0, v17

    #@2e3
    move-object/from16 v1, p1

    #@2e5
    invoke-virtual {v0, v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->writeToParcel(Landroid/os/Parcel;J)V

    #@2e8
    goto :goto_c

    #@2e9
    .line 9993
    .end local v14    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    .end local v15    # "ent$iterator":Ljava/util/Iterator;
    .end local v17    # "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_a
    const/4 v4, 0x0

    #@2ea
    goto/16 :goto_a

    #@2ec
    .line 9994
    :cond_b
    const/4 v4, 0x0

    #@2ed
    goto/16 :goto_b

    #@2ef
    .line 10023
    .restart local v14    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    .restart local v15    # "ent$iterator":Ljava/util/Iterator;
    .restart local v17    # "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_c
    const/4 v4, 0x0

    #@2f0
    move-object/from16 v0, p1

    #@2f2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2f5
    goto :goto_c

    #@2f6
    .line 10026
    .end local v14    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    .end local v17    # "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_d
    move-object/from16 v0, p0

    #@2f8
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    #@2fa
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    #@2fd
    move-result v4

    #@2fe
    move-object/from16 v0, p1

    #@300
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@303
    .line 10027
    move-object/from16 v0, p0

    #@305
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    #@307
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@30a
    move-result-object v4

    #@30b
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@30e
    move-result-object v15

    #@30f
    :goto_d
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    #@312
    move-result v4

    #@313
    if-eqz v4, :cond_10

    #@315
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@318
    move-result-object v14

    #@319
    check-cast v14, Ljava/util/Map$Entry;

    #@31b
    .line 10028
    .restart local v14    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@31e
    move-result-object v19

    #@31f
    check-cast v19, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    #@321
    .line 10029
    .local v19, "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    if-eqz v19, :cond_e

    #@323
    .line 10030
    const/4 v4, 0x1

    #@324
    move-object/from16 v0, p1

    #@326
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@329
    .line 10031
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@32c
    move-result-object v4

    #@32d
    check-cast v4, Ljava/lang/String;

    #@32f
    move-object/from16 v0, p1

    #@331
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@334
    .line 10032
    move-object/from16 v0, v19

    #@336
    move-object/from16 v1, p1

    #@338
    invoke-virtual {v0, v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->writeToParcel(Landroid/os/Parcel;J)V

    #@33b
    goto :goto_d

    #@33c
    .line 10034
    :cond_e
    const/4 v4, 0x0

    #@33d
    move-object/from16 v0, p1

    #@33f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@342
    goto :goto_d

    #@343
    .line 10038
    .end local v14    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    .end local v15    # "ent$iterator":Ljava/util/Iterator;
    .end local v19    # "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_f
    const/4 v4, 0x0

    #@344
    move-object/from16 v0, p1

    #@346
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@349
    .line 10041
    :cond_10
    sget v4, Lcom/android/internal/os/BatteryStatsImpl;->sNumSpeedSteps:I

    #@34b
    move-object/from16 v0, p1

    #@34d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@350
    .line 10043
    if-eqz p2, :cond_11

    #@352
    .line 10044
    move-object/from16 v0, p0

    #@354
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    #@356
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@359
    move-result v18

    #@35a
    .line 10045
    .local v18, "size":I
    move-object/from16 v0, p1

    #@35c
    move/from16 v1, v18

    #@35e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@361
    .line 10046
    const/16 v16, 0x0

    #@363
    :goto_e
    move/from16 v0, v16

    #@365
    move/from16 v1, v18

    #@367
    if-ge v0, v1, :cond_12

    #@369
    .line 10047
    move-object/from16 v0, p0

    #@36b
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    #@36d
    move/from16 v0, v16

    #@36f
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    #@372
    move-result v4

    #@373
    move-object/from16 v0, p1

    #@375
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@378
    .line 10048
    move-object/from16 v0, p0

    #@37a
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    #@37c
    move/from16 v0, v16

    #@37e
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@381
    move-result-object v22

    #@382
    check-cast v22, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@384
    .line 10050
    .local v22, "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    move-object/from16 v0, v22

    #@386
    move-object/from16 v1, p1

    #@388
    invoke-virtual {v0, v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->writeToParcelLocked(Landroid/os/Parcel;J)V

    #@38b
    .line 10046
    add-int/lit8 v16, v16, 0x1

    #@38d
    goto :goto_e

    #@38e
    .line 10053
    .end local v18    # "size":I
    .end local v22    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_11
    const/4 v4, 0x0

    #@38f
    move-object/from16 v0, p1

    #@391
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@394
    .line 9922
    :cond_12
    return-void
.end method

.method public writeToParcelWithoutUids(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 9918
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcelLocked(Landroid/os/Parcel;ZI)V

    #@4
    .line 9917
    return-void
.end method
