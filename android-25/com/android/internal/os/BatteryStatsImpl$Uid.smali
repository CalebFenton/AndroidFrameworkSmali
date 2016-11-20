.class public Lcom/android/internal/os/BatteryStatsImpl$Uid;
.super Landroid/os/BatteryStats$Uid;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Uid"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    }
.end annotation


# static fields
.field static final NO_BATCHED_SCAN_STARTED:I = -0x1


# instance fields
.field mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field private mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

.field mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field protected mBsi:Lcom/android/internal/os/BatteryStatsImpl;

.field mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mCurStepSystemTime:J

.field mCurStepUserTime:J

.field mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mFullWifiLockOut:Z

.field mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mLastStepSystemTime:J

.field mLastStepUserTime:J

.field mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field private mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field private mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

.field mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field final mPackageStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;",
            ">;"
        }
    .end annotation
.end field

.field final mPids:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/BatteryStats$Uid$Pid;",
            ">;"
        }
    .end annotation
.end field

.field mProcessState:I

.field mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mProcessStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;",
            ">;"
        }
    .end annotation
.end field

.field final mSensorStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;",
            ">;"
        }
    .end annotation
.end field

.field final mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field final mUid:I

.field mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

.field mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

.field mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;",
            ">;"
        }
    .end annotation
.end field

.field mWifiBatchedScanBinStarted:I

.field mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field private mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

.field mWifiMulticastEnabled:Z

.field mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field private mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mWifiRunning:Z

.field mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mWifiScanStarted:Z

.field mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;


# direct methods
.method static synthetic -get0(Lcom/android/internal/os/BatteryStatsImpl$Uid;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/os/BatteryStatsImpl$Uid;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/os/BatteryStatsImpl$Uid;Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lcom/android/internal/os/BatteryStatsImpl$Uid;Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2
    return-object p1
.end method

.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;I)V
    .locals 8
    .param p1, "bsi"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "uid"    # I

    #@0
    .prologue
    const/4 v7, 0x6

    #@1
    const/4 v6, 0x5

    #@2
    const/4 v0, -0x1

    #@3
    .line 5279
    invoke-direct {p0}, Landroid/os/BatteryStats$Uid;-><init>()V

    #@6
    .line 5178
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    #@8
    .line 5191
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    #@a
    .line 5262
    new-instance v0, Landroid/util/SparseArray;

    #@c
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    #@11
    .line 5267
    new-instance v0, Landroid/util/ArrayMap;

    #@13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    #@18
    .line 5272
    new-instance v0, Landroid/util/ArrayMap;

    #@1a
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@1d
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    #@1f
    .line 5277
    new-instance v0, Landroid/util/SparseArray;

    #@21
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@24
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    #@26
    .line 5280
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@28
    .line 5281
    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    #@2a
    .line 5283
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2c
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@2e
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@30
    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@33
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@35
    .line 5284
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@37
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@39
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@3b
    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@3e
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@40
    .line 5285
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@42
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@44
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@46
    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@49
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@4b
    .line 5287
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$1;

    #@4d
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@4f
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@52
    invoke-direct {v0, p0, v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$1;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;Lcom/android/internal/os/BatteryStatsImpl;I)V

    #@55
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@57
    .line 5292
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$2;

    #@59
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@5b
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5e
    invoke-direct {v0, p0, v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$2;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;Lcom/android/internal/os/BatteryStatsImpl;I)V

    #@61
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@63
    .line 5298
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$3;

    #@65
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@67
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@6a
    invoke-direct {v0, p0, v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$3;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;Lcom/android/internal/os/BatteryStatsImpl;I)V

    #@6d
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@6f
    .line 5305
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@71
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@73
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@75
    .line 5306
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@77
    iget-object v4, v2, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    #@79
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@7b
    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@7d
    .line 5305
    const/4 v3, 0x4

    #@7e
    move-object v2, p0

    #@7f
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@82
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@84
    .line 5307
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@86
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@88
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@8a
    .line 5308
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@8c
    iget-object v4, v2, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    #@8e
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@90
    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@92
    move-object v2, p0

    #@93
    move v3, v6

    #@94
    .line 5307
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@97
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@99
    .line 5309
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@9b
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@9d
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@9f
    .line 5310
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@a1
    iget-object v4, v2, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    #@a3
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@a5
    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@a7
    move-object v2, p0

    #@a8
    move v3, v7

    #@a9
    .line 5309
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@ac
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@ae
    .line 5311
    new-array v0, v6, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@b0
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@b2
    .line 5312
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@b4
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@b6
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@b8
    .line 5313
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@ba
    iget-object v4, v2, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    #@bc
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@be
    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@c0
    .line 5312
    const/4 v3, 0x7

    #@c1
    move-object v2, p0

    #@c2
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@c5
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@c7
    .line 5314
    new-array v0, v7, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@c9
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@cb
    .line 5279
    return-void
.end method


# virtual methods
.method public createAudioTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 6

    #@0
    .prologue
    .line 5502
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5503
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@a
    .line 5504
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@c
    iget-object v4, v2, Lcom/android/internal/os/BatteryStatsImpl;->mAudioTurnedOnTimers:Ljava/util/ArrayList;

    #@e
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@10
    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@12
    .line 5503
    const/16 v3, 0xf

    #@14
    move-object v2, p0

    #@15
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@18
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1a
    .line 5506
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1c
    return-object v0
.end method

.method public createBluetoothScanTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 6

    #@0
    .prologue
    .line 5606
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5607
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@a
    .line 5608
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@c
    iget-object v4, v2, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothScanOnTimers:Ljava/util/ArrayList;

    #@e
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@10
    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@12
    .line 5607
    const/16 v3, 0x13

    #@14
    move-object v2, p0

    #@15
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@18
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1a
    .line 5610
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1c
    return-object v0
.end method

.method public createCameraTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 6

    #@0
    .prologue
    .line 5574
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5575
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@a
    .line 5576
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@c
    iget-object v4, v2, Lcom/android/internal/os/BatteryStatsImpl;->mCameraTurnedOnTimers:Ljava/util/ArrayList;

    #@e
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@10
    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@12
    .line 5575
    const/16 v3, 0x11

    #@14
    move-object v2, p0

    #@15
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@18
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1a
    .line 5578
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1c
    return-object v0
.end method

.method public createFlashlightTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 6

    #@0
    .prologue
    .line 5550
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5551
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@a
    .line 5552
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@c
    iget-object v4, v2, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightTurnedOnTimers:Ljava/util/ArrayList;

    #@e
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@10
    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@12
    const/16 v3, 0x10

    #@14
    move-object v2, p0

    #@15
    .line 5551
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@18
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1a
    .line 5554
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1c
    return-object v0
.end method

.method public createForegroundActivityTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 6

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 5598
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 5599
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@7
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@9
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@b
    .line 5600
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@d
    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@f
    const/16 v3, 0xa

    #@11
    move-object v2, p0

    #@12
    .line 5599
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@15
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@17
    .line 5602
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@19
    return-object v0
.end method

.method public createVibratorOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;
    .locals 4

    #@0
    .prologue
    .line 5643
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5644
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@6
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@a
    .line 5645
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@c
    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@e
    .line 5644
    const/16 v3, 0x9

    #@10
    invoke-direct {v0, v1, p0, v3, v2}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@13
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@15
    .line 5647
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@17
    return-object v0
.end method

.method public createVideoTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 6

    #@0
    .prologue
    .line 5526
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5527
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@a
    .line 5528
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@c
    iget-object v4, v2, Lcom/android/internal/os/BatteryStatsImpl;->mVideoTurnedOnTimers:Ljava/util/ArrayList;

    #@e
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@10
    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@12
    .line 5527
    const/16 v3, 0x8

    #@14
    move-object v2, p0

    #@15
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@18
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1a
    .line 5530
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1c
    return-object v0
.end method

.method public bridge synthetic getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    #@0
    .prologue
    .line 5719
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getAudioTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getAudioTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    #@0
    .prologue
    .line 5720
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    return-object v0
.end method

.method public getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;
    .locals 1

    #@0
    .prologue
    .line 7862
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@2
    return-object v0
.end method

.method public getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .locals 1

    #@0
    .prologue
    .line 5469
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@2
    return-object v0
.end method

.method public bridge synthetic getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    #@0
    .prologue
    .line 5744
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getBluetoothScanTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getBluetoothScanTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    #@0
    .prologue
    .line 5745
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    return-object v0
.end method

.method public bridge synthetic getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    #@0
    .prologue
    .line 5734
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getCameraTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getCameraTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    #@0
    .prologue
    .line 5735
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    return-object v0
.end method

.method public getCpuPowerMaUs(I)J
    .locals 2
    .param p1, "which"    # I

    #@0
    .prologue
    .line 5901
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public bridge synthetic getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    #@0
    .prologue
    .line 5729
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getFlashlightTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getFlashlightTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    #@0
    .prologue
    .line 5730
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    return-object v0
.end method

.method public bridge synthetic getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    #@0
    .prologue
    .line 5739
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getForegroundActivityTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getForegroundActivityTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    #@0
    .prologue
    .line 5740
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    return-object v0
.end method

.method public getFullWifiLockTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    #@0
    .prologue
    .line 5670
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5671
    const-wide/16 v0, 0x0

    #@6
    return-wide v0

    #@7
    .line 5673
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@9
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    #@c
    move-result-wide v0

    #@d
    return-wide v0
.end method

.method public getJobStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 5329
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getMobileRadioActiveCount(I)I
    .locals 2
    .param p1, "which"    # I

    #@0
    .prologue
    .line 5885
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5886
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    #@9
    move-result-wide v0

    #@a
    long-to-int v0, v0

    #@b
    .line 5885
    :goto_0
    return v0

    #@c
    .line 5886
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public getMobileRadioActiveTime(I)J
    .locals 2
    .param p1, "which"    # I

    #@0
    .prologue
    .line 5879
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5880
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    #@9
    move-result-wide v0

    #@a
    .line 5879
    :goto_0
    return-wide v0

    #@b
    .line 5880
    :cond_0
    const-wide/16 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public getMobileRadioApWakeupCount(I)J
    .locals 2
    .param p1, "which"    # I

    #@0
    .prologue
    .line 5931
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5932
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    #@9
    move-result-wide v0

    #@a
    return-wide v0

    #@b
    .line 5934
    :cond_0
    const-wide/16 v0, 0x0

    #@d
    return-wide v0
.end method

.method public getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .locals 1

    #@0
    .prologue
    .line 5474
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@2
    return-object v0
.end method

.method public getNetworkActivityBytes(II)J
    .locals 2
    .param p1, "type"    # I
    .param p2, "which"    # I

    #@0
    .prologue
    .line 5859
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2
    if-eqz v0, :cond_0

    #@4
    if-ltz p1, :cond_0

    #@6
    .line 5860
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@8
    array-length v0, v0

    #@9
    if-ge p1, v0, :cond_0

    #@b
    .line 5861
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@d
    aget-object v0, v0, p1

    #@f
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    #@12
    move-result-wide v0

    #@13
    return-wide v0

    #@14
    .line 5863
    :cond_0
    const-wide/16 v0, 0x0

    #@16
    return-wide v0
.end method

.method public getNetworkActivityPackets(II)J
    .locals 2
    .param p1, "type"    # I
    .param p2, "which"    # I

    #@0
    .prologue
    .line 5869
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2
    if-eqz v0, :cond_0

    #@4
    if-ltz p1, :cond_0

    #@6
    .line 5870
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@8
    array-length v0, v0

    #@9
    if-ge p1, v0, :cond_0

    #@b
    .line 5871
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@d
    aget-object v0, v0, p1

    #@f
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    #@12
    move-result-wide v0

    #@13
    return-wide v0

    #@14
    .line 5873
    :cond_0
    const-wide/16 v0, 0x0

    #@16
    return-wide v0
.end method

.method public getOrCreateBluetoothControllerActivityLocked()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;
    .locals 3

    #@0
    .prologue
    .line 5486
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5487
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@6
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@a
    .line 5488
    const/4 v2, 0x1

    #@b
    .line 5487
    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;I)V

    #@e
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@10
    .line 5490
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@12
    return-object v0
.end method

.method public getOrCreateModemControllerActivityLocked()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;
    .locals 3

    #@0
    .prologue
    .line 5494
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5495
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@6
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@a
    .line 5496
    const/4 v2, 0x5

    #@b
    .line 5495
    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;I)V

    #@e
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@10
    .line 5498
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@12
    return-object v0
.end method

.method public getOrCreateWifiControllerActivityLocked()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;
    .locals 3

    #@0
    .prologue
    .line 5478
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5479
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@6
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@a
    .line 5480
    const/4 v2, 0x1

    #@b
    .line 5479
    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;I)V

    #@e
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@10
    .line 5482
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@12
    return-object v0
.end method

.method public getPackageStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Pkg;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 5344
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    #@2
    return-object v0
.end method

.method public getPackageStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 7684
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    #@8
    .line 7685
    .local v0, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    if-nez v0, :cond_0

    #@a
    .line 7686
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    #@c
    .end local v0    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@e
    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;-><init>(Lcom/android/internal/os/BatteryStatsImpl;)V

    #@11
    .line 7687
    .restart local v0    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    #@13
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    .line 7690
    :cond_0
    return-object v0
.end method

.method public getPidStats()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<+",
            "Landroid/os/BatteryStats$Uid$Pid;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 7667
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method public getPidStatsLocked(I)Landroid/os/BatteryStats$Uid$Pid;
    .locals 2
    .param p1, "pid"    # I

    #@0
    .prologue
    .line 7671
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/os/BatteryStats$Uid$Pid;

    #@8
    .line 7672
    .local v0, "p":Landroid/os/BatteryStats$Uid$Pid;
    if-nez v0, :cond_0

    #@a
    .line 7673
    new-instance v0, Landroid/os/BatteryStats$Uid$Pid;

    #@c
    .end local v0    # "p":Landroid/os/BatteryStats$Uid$Pid;
    invoke-direct {v0, p0}, Landroid/os/BatteryStats$Uid$Pid;-><init>(Landroid/os/BatteryStats$Uid;)V

    #@f
    .line 7674
    .restart local v0    # "p":Landroid/os/BatteryStats$Uid$Pid;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@14
    .line 7676
    :cond_0
    return-object v0
.end method

.method public getProcessStateTime(IJI)J
    .locals 4
    .param p1, "state"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 5762
    if-ltz p1, :cond_0

    #@4
    const/4 v0, 0x6

    #@5
    if-lt p1, v0, :cond_1

    #@7
    :cond_0
    return-wide v2

    #@8
    .line 5763
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@a
    aget-object v0, v0, p1

    #@c
    if-nez v0, :cond_2

    #@e
    .line 5764
    return-wide v2

    #@f
    .line 5766
    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@11
    aget-object v0, v0, p1

    #@13
    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    #@16
    move-result-wide v0

    #@17
    return-wide v0
.end method

.method public bridge synthetic getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;
    .locals 1
    .param p1, "state"    # I

    #@0
    .prologue
    .line 5770
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStateTimer(I)Lcom/android/internal/os/BatteryStatsImpl$Timer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getProcessStateTimer(I)Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1
    .param p1, "state"    # I

    #@0
    .prologue
    .line 5771
    if-ltz p1, :cond_0

    #@2
    const/4 v0, 0x6

    #@3
    if-lt p1, v0, :cond_1

    #@5
    :cond_0
    const/4 v0, 0x0

    #@6
    return-object v0

    #@7
    .line 5772
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@9
    aget-object v0, v0, p1

    #@b
    return-object v0
.end method

.method public getProcessStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Proc;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 5339
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    #@2
    return-object v0
.end method

.method public getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 7621
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    #@8
    .line 7622
    .local v0, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-nez v0, :cond_0

    #@a
    .line 7623
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    #@c
    .end local v0    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@e
    invoke-direct {v0, v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Ljava/lang/String;)V

    #@11
    .line 7624
    .restart local v0    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    #@13
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    .line 7627
    :cond_0
    return-object v0
.end method

.method public getSensorStats()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<+",
            "Landroid/os/BatteryStats$Uid$Sensor;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 5334
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method public getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 7
    .param p1, "sensor"    # I
    .param p2, "create"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 7738
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v6

    #@7
    check-cast v6, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    #@9
    .line 7739
    .local v6, "se":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    if-nez v6, :cond_1

    #@b
    .line 7740
    if-nez p2, :cond_0

    #@d
    .line 7741
    return-object v2

    #@e
    .line 7743
    :cond_0
    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    #@10
    .end local v6    # "se":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@12
    invoke-direct {v6, v1, p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/BatteryStatsImpl$Uid;I)V

    #@15
    .line 7744
    .restart local v6    # "se":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    #@17
    invoke-virtual {v1, p1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1a
    .line 7746
    :cond_1
    iget-object v0, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1c
    .line 7747
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_2

    #@1e
    .line 7748
    return-object v0

    #@1f
    .line 7750
    :cond_2
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@21
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    #@23
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v4

    #@27
    check-cast v4, Ljava/util/ArrayList;

    #@29
    .line 7751
    .local v4, "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    if-nez v4, :cond_3

    #@2b
    .line 7752
    new-instance v4, Ljava/util/ArrayList;

    #@2d
    .end local v4    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@30
    .line 7753
    .restart local v4    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@32
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    #@34
    invoke-virtual {v1, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@37
    .line 7755
    :cond_3
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@39
    .end local v0    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@3b
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@3d
    .line 7756
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@3f
    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@41
    .line 7755
    const/4 v3, 0x3

    #@42
    move-object v2, p0

    #@43
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@46
    .line 7757
    .restart local v0    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iput-object v0, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@48
    .line 7758
    return-object v0
.end method

.method public getServiceStatsLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "serv"    # Ljava/lang/String;

    #@0
    .prologue
    .line 7698
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getPackageStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    #@3
    move-result-object v0

    #@4
    .line 7699
    .local v0, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    #@c
    .line 7700
    .local v1, "ss":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    if-nez v1, :cond_0

    #@e
    .line 7701
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->newServiceStatsLocked()Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    #@11
    move-result-object v1

    #@12
    .line 7702
    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    #@14
    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 7705
    :cond_0
    return-object v1
.end method

.method public getSyncStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 5324
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSystemCpuTimeUs(I)J
    .locals 2
    .param p1, "which"    # I

    #@0
    .prologue
    .line 5896
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getTimeAtCpuSpeed(III)J
    .locals 4
    .param p1, "cluster"    # I
    .param p2, "step"    # I
    .param p3, "which"    # I

    #@0
    .prologue
    .line 5906
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 5907
    if-ltz p1, :cond_0

    #@6
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@8
    array-length v2, v2

    #@9
    if-ge p1, v2, :cond_0

    #@b
    .line 5908
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@d
    aget-object v1, v2, p1

    #@f
    .line 5909
    .local v1, "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v1, :cond_0

    #@11
    .line 5910
    if-ltz p2, :cond_0

    #@13
    array-length v2, v1

    #@14
    if-ge p2, v2, :cond_0

    #@16
    .line 5911
    aget-object v0, v1, p2

    #@18
    .line 5912
    .local v0, "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v0, :cond_0

    #@1a
    .line 5913
    invoke-virtual {v0, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    #@1d
    move-result-wide v2

    #@1e
    return-wide v2

    #@1f
    .line 5919
    .end local v0    # "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .end local v1    # "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_0
    const-wide/16 v2, 0x0

    #@21
    return-wide v2
.end method

.method public getUid()I
    .locals 1

    #@0
    .prologue
    .line 5349
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    #@2
    return v0
.end method

.method public getUserActivityCount(II)I
    .locals 1
    .param p1, "type"    # I
    .param p2, "which"    # I

    #@0
    .prologue
    .line 5800
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5801
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 5803
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@8
    aget-object v0, v0, p1

    #@a
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->getCountLocked(I)I

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public getUserCpuTimeUs(I)J
    .locals 2
    .param p1, "which"    # I

    #@0
    .prologue
    .line 5891
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public bridge synthetic getVibratorOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    #@0
    .prologue
    .line 5776
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getVibratorOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getVibratorOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    #@0
    .prologue
    .line 5777
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@2
    return-object v0
.end method

.method public bridge synthetic getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    #@0
    .prologue
    .line 5724
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getVideoTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getVideoTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    #@0
    .prologue
    .line 5725
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    return-object v0
.end method

.method public getWakelockStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Wakelock;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 5319
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getWifiBatchedScanCount(II)I
    .locals 2
    .param p1, "csphBin"    # I
    .param p2, "which"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 5703
    if-ltz p1, :cond_0

    #@3
    const/4 v0, 0x5

    #@4
    if-lt p1, v0, :cond_1

    #@6
    :cond_0
    return v1

    #@7
    .line 5704
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@9
    aget-object v0, v0, p1

    #@b
    if-nez v0, :cond_2

    #@d
    .line 5705
    return v1

    #@e
    .line 5707
    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@10
    aget-object v0, v0, p1

    #@12
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    #@15
    move-result v0

    #@16
    return v0
.end method

.method public getWifiBatchedScanTime(IJI)J
    .locals 4
    .param p1, "csphBin"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 5694
    if-ltz p1, :cond_0

    #@4
    const/4 v0, 0x5

    #@5
    if-lt p1, v0, :cond_1

    #@7
    :cond_0
    return-wide v2

    #@8
    .line 5695
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@a
    aget-object v0, v0, p1

    #@c
    if-nez v0, :cond_2

    #@e
    .line 5696
    return-wide v2

    #@f
    .line 5698
    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@11
    aget-object v0, v0, p1

    #@13
    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    #@16
    move-result-wide v0

    #@17
    return-wide v0
.end method

.method public getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .locals 1

    #@0
    .prologue
    .line 5464
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@2
    return-object v0
.end method

.method public getWifiMulticastTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    #@0
    .prologue
    .line 5712
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5713
    const-wide/16 v0, 0x0

    #@6
    return-wide v0

    #@7
    .line 5715
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@9
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    #@c
    move-result-wide v0

    #@d
    return-wide v0
.end method

.method public getWifiRadioApWakeupCount(I)J
    .locals 2
    .param p1, "which"    # I

    #@0
    .prologue
    .line 5946
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5947
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    #@9
    move-result-wide v0

    #@a
    return-wide v0

    #@b
    .line 5949
    :cond_0
    const-wide/16 v0, 0x0

    #@d
    return-wide v0
.end method

.method public getWifiRunningTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    #@0
    .prologue
    .line 5662
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5663
    const-wide/16 v0, 0x0

    #@6
    return-wide v0

    #@7
    .line 5665
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@9
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    #@c
    move-result-wide v0

    #@d
    return-wide v0
.end method

.method public getWifiScanCount(I)I
    .locals 1
    .param p1, "which"    # I

    #@0
    .prologue
    .line 5686
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5687
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 5689
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public getWifiScanTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    #@0
    .prologue
    .line 5678
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5679
    const-wide/16 v0, 0x0

    #@6
    return-wide v0

    #@7
    .line 5681
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@9
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    #@c
    move-result-wide v0

    #@d
    return-wide v0
.end method

.method public hasNetworkActivity()Z
    .locals 1

    #@0
    .prologue
    .line 5854
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public hasUserActivity()Z
    .locals 1

    #@0
    .prologue
    .line 5795
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method initNetworkActivityLocked()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x6

    #@1
    .line 5953
    new-array v1, v4, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@3
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@5
    .line 5954
    new-array v1, v4, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@7
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@9
    .line 5955
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    #@c
    .line 5956
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@e
    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@10
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@12
    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@14
    invoke-direct {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@17
    aput-object v2, v1, v0

    #@19
    .line 5957
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@1b
    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@1d
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@1f
    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@21
    invoke-direct {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@24
    aput-object v2, v1, v0

    #@26
    .line 5955
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_0

    #@29
    .line 5959
    :cond_0
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2b
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@2d
    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@2f
    invoke-direct {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@32
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@34
    .line 5960
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@36
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@38
    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@3a
    invoke-direct {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@3d
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@3f
    .line 5952
    return-void
.end method

.method initUserActivityLocked()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x4

    #@1
    .line 5825
    new-array v1, v4, [Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@3
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@5
    .line 5826
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    #@8
    .line 5827
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@a
    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@c
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@e
    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@10
    invoke-direct {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@13
    aput-object v2, v1, v0

    #@15
    .line 5826
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 5824
    :cond_0
    return-void
.end method

.method makeProcessState(ILandroid/os/Parcel;)V
    .locals 8
    .param p1, "i"    # I
    .param p2, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/16 v3, 0xc

    #@2
    const/4 v4, 0x0

    #@3
    .line 5749
    if-ltz p1, :cond_0

    #@5
    const/4 v0, 0x6

    #@6
    if-lt p1, v0, :cond_1

    #@8
    :cond_0
    return-void

    #@9
    .line 5751
    :cond_1
    if-nez p2, :cond_2

    #@b
    .line 5752
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@d
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@f
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@11
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@13
    .line 5753
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@15
    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@17
    move-object v2, p0

    #@18
    .line 5752
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@1b
    aput-object v0, v6, p1

    #@1d
    .line 5748
    :goto_0
    return-void

    #@1e
    .line 5755
    :cond_2
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@20
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@22
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@24
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@26
    .line 5756
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@28
    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@2a
    move-object v2, p0

    #@2b
    move-object v6, p2

    #@2c
    .line 5755
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@2f
    aput-object v0, v7, p1

    #@31
    goto :goto_0
.end method

.method makeWifiBatchedScanBin(ILandroid/os/Parcel;)V
    .locals 8
    .param p1, "i"    # I
    .param p2, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/16 v3, 0xb

    #@2
    .line 5807
    if-ltz p1, :cond_0

    #@4
    const/4 v0, 0x5

    #@5
    if-lt p1, v0, :cond_1

    #@7
    :cond_0
    return-void

    #@8
    .line 5809
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@a
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiBatchedScanTimers:Landroid/util/SparseArray;

    #@c
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v4

    #@10
    check-cast v4, Ljava/util/ArrayList;

    #@12
    .line 5810
    .local v4, "collected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    if-nez v4, :cond_2

    #@14
    .line 5811
    new-instance v4, Ljava/util/ArrayList;

    #@16
    .end local v4    # "collected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@19
    .line 5812
    .restart local v4    # "collected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@1b
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiBatchedScanTimers:Landroid/util/SparseArray;

    #@1d
    invoke-virtual {v0, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@20
    .line 5814
    :cond_2
    if-nez p2, :cond_3

    #@22
    .line 5815
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@24
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@26
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@28
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@2a
    .line 5816
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@2c
    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@2e
    move-object v2, p0

    #@2f
    .line 5815
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@32
    aput-object v0, v6, p1

    #@34
    .line 5806
    :goto_0
    return-void

    #@35
    .line 5818
    :cond_3
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@37
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@39
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@3b
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@3d
    .line 5819
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@3f
    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@41
    move-object v2, p0

    #@42
    move-object v6, p2

    #@43
    .line 5818
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@46
    aput-object v0, v7, p1

    #@48
    goto :goto_0
.end method

.method public noteActivityPausedLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 5637
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5638
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@9
    .line 5636
    :cond_0
    return-void
.end method

.method public noteActivityResumedLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 5632
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createForegroundActivityTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@7
    .line 5630
    return-void
.end method

.method public noteAudioTurnedOffLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 5514
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5515
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@9
    .line 5513
    :cond_0
    return-void
.end method

.method public noteAudioTurnedOnLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 5510
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createAudioTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@7
    .line 5509
    return-void
.end method

.method public noteBluetoothScanStartedLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 5614
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createBluetoothScanTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@7
    .line 5613
    return-void
.end method

.method public noteBluetoothScanStoppedLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 5618
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5619
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@9
    .line 5617
    :cond_0
    return-void
.end method

.method public noteCameraTurnedOffLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 5586
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5587
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@9
    .line 5585
    :cond_0
    return-void
.end method

.method public noteCameraTurnedOnLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 5582
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createCameraTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@7
    .line 5581
    return-void
.end method

.method public noteFlashlightTurnedOffLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 5562
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5563
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@9
    .line 5561
    :cond_0
    return-void
.end method

.method public noteFlashlightTurnedOnLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 5558
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createFlashlightTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@7
    .line 5557
    return-void
.end method

.method public noteFullWifiLockAcquiredLocked(J)V
    .locals 7
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 5374
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    #@2
    if-nez v0, :cond_1

    #@4
    .line 5375
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    #@7
    .line 5376
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 5377
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@d
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@f
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@11
    .line 5378
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@13
    iget-object v4, v2, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    #@15
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@17
    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@19
    .line 5377
    const/4 v3, 0x5

    #@1a
    move-object v2, p0

    #@1b
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@1e
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@20
    .line 5380
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@22
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@25
    .line 5373
    :cond_1
    return-void
.end method

.method public noteFullWifiLockReleasedLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 5386
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5387
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    #@7
    .line 5388
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@9
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@c
    .line 5385
    :cond_0
    return-void
.end method

.method noteMobileRadioActiveTimeLocked(J)V
    .locals 5
    .param p1, "batteryUptime"    # J

    #@0
    .prologue
    .line 5845
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5846
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->initNetworkActivityLocked()V

    #@7
    .line 5848
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@9
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    #@c
    .line 5849
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@e
    const-wide/16 v2, 0x1

    #@10
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    #@13
    .line 5844
    return-void
.end method

.method public noteMobileRadioApWakeupLocked()V
    .locals 4

    #@0
    .prologue
    .line 5923
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5924
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@6
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@a
    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@d
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@f
    .line 5926
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@11
    const-wide/16 v2, 0x1

    #@13
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    #@16
    .line 5922
    return-void
.end method

.method noteNetworkActivityLocked(IJJ)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "deltaBytes"    # J
    .param p4, "deltaPackets"    # J

    #@0
    .prologue
    .line 5832
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5833
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->initNetworkActivityLocked()V

    #@7
    .line 5835
    :cond_0
    if-ltz p1, :cond_1

    #@9
    const/4 v0, 0x6

    #@a
    if-ge p1, v0, :cond_1

    #@c
    .line 5836
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@e
    aget-object v0, v0, p1

    #@10
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    #@13
    .line 5837
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@15
    aget-object v0, v0, p1

    #@17
    invoke-virtual {v0, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    #@1a
    .line 5831
    :goto_0
    return-void

    #@1b
    .line 5839
    :cond_1
    const-string/jumbo v0, "BatteryStatsImpl"

    #@1e
    new-instance v1, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v2, "Unknown network activity type "

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    const-string/jumbo v2, " was specified."

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    .line 5840
    new-instance v2, Ljava/lang/Throwable;

    #@3b
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    #@3e
    .line 5839
    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@41
    goto :goto_0
.end method

.method public noteResetAudioLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 5520
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5521
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    #@9
    .line 5519
    :cond_0
    return-void
.end method

.method public noteResetBluetoothScanLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 5624
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5625
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    #@9
    .line 5623
    :cond_0
    return-void
.end method

.method public noteResetCameraLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 5592
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5593
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    #@9
    .line 5591
    :cond_0
    return-void
.end method

.method public noteResetFlashlightLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 5568
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5569
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    #@9
    .line 5567
    :cond_0
    return-void
.end method

.method public noteResetVideoLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 5544
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5545
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    #@9
    .line 5543
    :cond_0
    return-void
.end method

.method public noteStartGps(J)V
    .locals 3
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 7848
    const/16 v1, -0x2710

    #@2
    const/4 v2, 0x1

    #@3
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    move-result-object v0

    #@7
    .line 7849
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    #@9
    .line 7850
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@c
    .line 7847
    :cond_0
    return-void
.end method

.method public noteStartJobLocked(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 7776
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@2
    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->startObject(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@8
    .line 7777
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    #@a
    .line 7778
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@d
    .line 7775
    :cond_0
    return-void
.end method

.method public noteStartSensor(IJ)V
    .locals 2
    .param p1, "sensor"    # I
    .param p2, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 7833
    const/4 v1, 0x1

    #@1
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@4
    move-result-object v0

    #@5
    .line 7834
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    #@7
    .line 7835
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@a
    .line 7832
    :cond_0
    return-void
.end method

.method public noteStartSyncLocked(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 7762
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@2
    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->startObject(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@8
    .line 7763
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    #@a
    .line 7764
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@d
    .line 7761
    :cond_0
    return-void
.end method

.method public noteStartWakeLocked(ILjava/lang/String;IJ)V
    .locals 4
    .param p1, "pid"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 7790
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@2
    invoke-virtual {v2, p2}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->startObject(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    #@8
    .line 7791
    .local v1, "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    if-eqz v1, :cond_0

    #@a
    .line 7792
    invoke-virtual {v1, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->getStopwatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@11
    .line 7794
    :cond_0
    if-ltz p1, :cond_1

    #@13
    if-nez p3, :cond_1

    #@15
    .line 7795
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getPidStatsLocked(I)Landroid/os/BatteryStats$Uid$Pid;

    #@18
    move-result-object v0

    #@19
    .line 7796
    .local v0, "p":Landroid/os/BatteryStats$Uid$Pid;
    iget v2, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    #@1b
    add-int/lit8 v3, v2, 0x1

    #@1d
    iput v3, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    #@1f
    if-nez v2, :cond_1

    #@21
    .line 7797
    iput-wide p4, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    #@23
    .line 7789
    .end local v0    # "p":Landroid/os/BatteryStats$Uid$Pid;
    :cond_1
    return-void
.end method

.method public noteStopGps(J)V
    .locals 3
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 7855
    const/16 v1, -0x2710

    #@2
    const/4 v2, 0x0

    #@3
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    move-result-object v0

    #@7
    .line 7856
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    #@9
    .line 7857
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@c
    .line 7854
    :cond_0
    return-void
.end method

.method public noteStopJobLocked(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 7783
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@2
    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->stopObject(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@8
    .line 7784
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    #@a
    .line 7785
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@d
    .line 7782
    :cond_0
    return-void
.end method

.method public noteStopSensor(IJ)V
    .locals 2
    .param p1, "sensor"    # I
    .param p2, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 7841
    const/4 v1, 0x0

    #@1
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@4
    move-result-object v0

    #@5
    .line 7842
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    #@7
    .line 7843
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@a
    .line 7839
    :cond_0
    return-void
.end method

.method public noteStopSyncLocked(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 7769
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@2
    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->stopObject(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@8
    .line 7770
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    #@a
    .line 7771
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@d
    .line 7768
    :cond_0
    return-void
.end method

.method public noteStopWakeLocked(ILjava/lang/String;IJ)V
    .locals 6
    .param p1, "pid"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 7803
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@2
    invoke-virtual {v2, p2}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->stopObject(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    #@8
    .line 7804
    .local v1, "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    if-eqz v1, :cond_0

    #@a
    .line 7805
    invoke-virtual {v1, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->getStopwatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@11
    .line 7807
    :cond_0
    if-ltz p1, :cond_1

    #@13
    if-nez p3, :cond_1

    #@15
    .line 7808
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    #@17
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Landroid/os/BatteryStats$Uid$Pid;

    #@1d
    .line 7809
    .local v0, "p":Landroid/os/BatteryStats$Uid$Pid;
    if-eqz v0, :cond_1

    #@1f
    iget v2, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    #@21
    if-lez v2, :cond_1

    #@23
    .line 7810
    iget v2, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    #@25
    add-int/lit8 v3, v2, -0x1

    #@27
    iput v3, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    #@29
    const/4 v3, 0x1

    #@2a
    if-ne v2, v3, :cond_1

    #@2c
    .line 7811
    iget-wide v2, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    #@2e
    iget-wide v4, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    #@30
    sub-long v4, p4, v4

    #@32
    add-long/2addr v2, v4

    #@33
    iput-wide v2, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    #@35
    .line 7812
    const-wide/16 v2, 0x0

    #@37
    iput-wide v2, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    #@39
    .line 7802
    .end local v0    # "p":Landroid/os/BatteryStats$Uid$Pid;
    :cond_1
    return-void
.end method

.method public noteUserActivityLocked(I)V
    .locals 3
    .param p1, "type"    # I

    #@0
    .prologue
    .line 5782
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5783
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->initUserActivityLocked()V

    #@7
    .line 5785
    :cond_0
    if-ltz p1, :cond_1

    #@9
    const/4 v0, 0x4

    #@a
    if-ge p1, v0, :cond_1

    #@c
    .line 5786
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@e
    aget-object v0, v0, p1

    #@10
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->stepAtomic()V

    #@13
    .line 5781
    :goto_0
    return-void

    #@14
    .line 5788
    :cond_1
    const-string/jumbo v0, "BatteryStatsImpl"

    #@17
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v2, "Unknown user activity type "

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    const-string/jumbo v2, " was specified."

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    .line 5789
    new-instance v2, Ljava/lang/Throwable;

    #@34
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    #@37
    .line 5788
    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3a
    goto :goto_0
.end method

.method public noteVibratorOffLocked()V
    .locals 2

    #@0
    .prologue
    .line 5655
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5656
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@6
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->abortLastDuration(Lcom/android/internal/os/BatteryStatsImpl;)V

    #@b
    .line 5654
    :cond_0
    return-void
.end method

.method public noteVibratorOnLocked(J)V
    .locals 3
    .param p1, "durationMillis"    # J

    #@0
    .prologue
    .line 5651
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createVibratorOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@6
    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->addDuration(Lcom/android/internal/os/BatteryStatsImpl;J)V

    #@9
    .line 5650
    return-void
.end method

.method public noteVideoTurnedOffLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 5538
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5539
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@9
    .line 5537
    :cond_0
    return-void
.end method

.method public noteVideoTurnedOnLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 5534
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createVideoTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@7
    .line 5533
    return-void
.end method

.method public noteWifiBatchedScanStartedLocked(IJ)V
    .locals 4
    .param p1, "csph"    # I
    .param p2, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 5414
    const/4 v0, 0x0

    #@2
    .line 5415
    .local v0, "bin":I
    :goto_0
    const/16 v1, 0x8

    #@4
    if-le p1, v1, :cond_0

    #@6
    const/4 v1, 0x4

    #@7
    if-ge v0, v1, :cond_0

    #@9
    .line 5416
    shr-int/lit8 p1, p1, 0x3

    #@b
    .line 5417
    add-int/lit8 v0, v0, 0x1

    #@d
    goto :goto_0

    #@e
    .line 5420
    :cond_0
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    #@10
    if-ne v1, v0, :cond_1

    #@12
    return-void

    #@13
    .line 5422
    :cond_1
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    #@15
    const/4 v2, -0x1

    #@16
    if-eq v1, v2, :cond_2

    #@18
    .line 5423
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1a
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    #@1c
    aget-object v1, v1, v2

    #@1e
    invoke-virtual {v1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@21
    .line 5426
    :cond_2
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    #@23
    .line 5427
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@25
    aget-object v1, v1, v0

    #@27
    if-nez v1, :cond_3

    #@29
    .line 5428
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeWifiBatchedScanBin(ILandroid/os/Parcel;)V

    #@2c
    .line 5430
    :cond_3
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2e
    aget-object v1, v1, v0

    #@30
    invoke-virtual {v1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@33
    .line 5413
    return-void
.end method

.method public noteWifiBatchedScanStoppedLocked(J)V
    .locals 3
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 5435
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    #@3
    if-eq v0, v2, :cond_0

    #@5
    .line 5436
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@7
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    #@9
    aget-object v0, v0, v1

    #@b
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@e
    .line 5438
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    #@10
    .line 5434
    :cond_0
    return-void
.end method

.method public noteWifiMulticastDisabledLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 5456
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5457
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    #@7
    .line 5458
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@9
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@c
    .line 5455
    :cond_0
    return-void
.end method

.method public noteWifiMulticastEnabledLocked(J)V
    .locals 7
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 5444
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    #@2
    if-nez v0, :cond_1

    #@4
    .line 5445
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    #@7
    .line 5446
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 5447
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@d
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@f
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@11
    .line 5448
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@13
    iget-object v4, v2, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    #@15
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@17
    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@19
    const/4 v3, 0x7

    #@1a
    move-object v2, p0

    #@1b
    .line 5447
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@1e
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@20
    .line 5450
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@22
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@25
    .line 5443
    :cond_1
    return-void
.end method

.method public noteWifiRadioApWakeupLocked()V
    .locals 4

    #@0
    .prologue
    .line 5938
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5939
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@6
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@a
    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@d
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@f
    .line 5941
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@11
    const-wide/16 v2, 0x1

    #@13
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    #@16
    .line 5937
    return-void
.end method

.method public noteWifiRunningLocked(J)V
    .locals 7
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 5354
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    #@2
    if-nez v0, :cond_1

    #@4
    .line 5355
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    #@7
    .line 5356
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 5357
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@d
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@f
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@11
    .line 5358
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@13
    iget-object v4, v2, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    #@15
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@17
    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@19
    .line 5357
    const/4 v3, 0x4

    #@1a
    move-object v2, p0

    #@1b
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@1e
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@20
    .line 5360
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@22
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@25
    .line 5353
    :cond_1
    return-void
.end method

.method public noteWifiScanStartedLocked(J)V
    .locals 7
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 5394
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    #@2
    if-nez v0, :cond_1

    #@4
    .line 5395
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    #@7
    .line 5396
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 5397
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@d
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@f
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@11
    .line 5398
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@13
    iget-object v4, v2, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    #@15
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@17
    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@19
    .line 5397
    const/4 v3, 0x6

    #@1a
    move-object v2, p0

    #@1b
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@1e
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@20
    .line 5400
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@22
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@25
    .line 5393
    :cond_1
    return-void
.end method

.method public noteWifiScanStoppedLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 5406
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5407
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    #@7
    .line 5408
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@9
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@c
    .line 5405
    :cond_0
    return-void
.end method

.method public noteWifiStoppedLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 5366
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5367
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    #@7
    .line 5368
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@9
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@c
    .line 5365
    :cond_0
    return-void
.end method

.method readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 37
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p2, "screenOffTimeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p3, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 6450
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v25

    #@4
    .line 6451
    .local v25, "numWakelocks":I
    move-object/from16 v0, p0

    #@6
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@8
    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->clear()V

    #@b
    .line 6452
    const/4 v14, 0x0

    #@c
    .local v14, "j":I
    :goto_0
    move/from16 v0, v25

    #@e
    if-ge v14, v0, :cond_0

    #@10
    .line 6453
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@13
    move-result-object v35

    #@14
    .line 6454
    .local v35, "wakelockName":Ljava/lang/String;
    new-instance v34, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    #@16
    move-object/from16 v0, p0

    #@18
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@1a
    move-object/from16 v0, v34

    #@1c
    move-object/from16 v1, p0

    #@1e
    invoke-direct {v0, v4, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    #@21
    .line 6455
    .local v34, "wakelock":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    move-object/from16 v0, v34

    #@23
    move-object/from16 v1, p1

    #@25
    move-object/from16 v2, p2

    #@27
    move-object/from16 v3, p3

    #@29
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@2c
    .line 6456
    move-object/from16 v0, p0

    #@2e
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@30
    move-object/from16 v0, v35

    #@32
    move-object/from16 v1, v34

    #@34
    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    #@37
    .line 6452
    add-int/lit8 v14, v14, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 6459
    .end local v34    # "wakelock":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    .end local v35    # "wakelockName":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@3d
    move-result v24

    #@3e
    .line 6460
    .local v24, "numSyncs":I
    move-object/from16 v0, p0

    #@40
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@42
    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->clear()V

    #@45
    .line 6461
    const/4 v14, 0x0

    #@46
    :goto_1
    move/from16 v0, v24

    #@48
    if-ge v14, v0, :cond_2

    #@4a
    .line 6462
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4d
    move-result-object v33

    #@4e
    .line 6463
    .local v33, "syncName":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@51
    move-result v4

    #@52
    if-eqz v4, :cond_1

    #@54
    .line 6464
    move-object/from16 v0, p0

    #@56
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@58
    move-object/from16 v36, v0

    #@5a
    .line 6465
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@5c
    move-object/from16 v0, p0

    #@5e
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@60
    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@62
    const/16 v7, 0xd

    #@64
    const/4 v8, 0x0

    #@65
    move-object/from16 v6, p0

    #@67
    move-object/from16 v9, p1

    #@69
    move-object/from16 v10, p3

    #@6b
    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@6e
    .line 6464
    move-object/from16 v0, v36

    #@70
    move-object/from16 v1, v33

    #@72
    invoke-virtual {v0, v1, v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    #@75
    .line 6461
    :cond_1
    add-int/lit8 v14, v14, 0x1

    #@77
    goto :goto_1

    #@78
    .line 6469
    .end local v33    # "syncName":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@7b
    move-result v19

    #@7c
    .line 6470
    .local v19, "numJobs":I
    move-object/from16 v0, p0

    #@7e
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@80
    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->clear()V

    #@83
    .line 6471
    const/4 v14, 0x0

    #@84
    :goto_2
    move/from16 v0, v19

    #@86
    if-ge v14, v0, :cond_4

    #@88
    .line 6472
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8b
    move-result-object v15

    #@8c
    .line 6473
    .local v15, "jobName":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@8f
    move-result v4

    #@90
    if-eqz v4, :cond_3

    #@92
    .line 6474
    move-object/from16 v0, p0

    #@94
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@96
    move-object/from16 v36, v0

    #@98
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@9a
    move-object/from16 v0, p0

    #@9c
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@9e
    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@a0
    const/16 v7, 0xe

    #@a2
    const/4 v8, 0x0

    #@a3
    move-object/from16 v6, p0

    #@a5
    move-object/from16 v9, p1

    #@a7
    move-object/from16 v10, p3

    #@a9
    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@ac
    move-object/from16 v0, v36

    #@ae
    invoke-virtual {v0, v15, v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    #@b1
    .line 6471
    :cond_3
    add-int/lit8 v14, v14, 0x1

    #@b3
    goto :goto_2

    #@b4
    .line 6479
    .end local v15    # "jobName":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@b7
    move-result v22

    #@b8
    .line 6480
    .local v22, "numSensors":I
    move-object/from16 v0, p0

    #@ba
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    #@bc
    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    #@bf
    .line 6481
    const/16 v16, 0x0

    #@c1
    .local v16, "k":I
    :goto_3
    move/from16 v0, v16

    #@c3
    move/from16 v1, v22

    #@c5
    if-ge v0, v1, :cond_5

    #@c7
    .line 6482
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@ca
    move-result v31

    #@cb
    .line 6483
    .local v31, "sensorNumber":I
    new-instance v30, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    #@cd
    move-object/from16 v0, p0

    #@cf
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@d1
    move-object/from16 v0, v30

    #@d3
    move-object/from16 v1, p0

    #@d5
    move/from16 v2, v31

    #@d7
    invoke-direct {v0, v4, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/BatteryStatsImpl$Uid;I)V

    #@da
    .line 6484
    .local v30, "sensor":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    move-object/from16 v0, p0

    #@dc
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@de
    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@e0
    move-object/from16 v0, v30

    #@e2
    move-object/from16 v1, p3

    #@e4
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@e7
    .line 6485
    move-object/from16 v0, p0

    #@e9
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    #@eb
    move/from16 v0, v31

    #@ed
    move-object/from16 v1, v30

    #@ef
    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@f2
    .line 6481
    add-int/lit8 v16, v16, 0x1

    #@f4
    goto :goto_3

    #@f5
    .line 6488
    .end local v30    # "sensor":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    .end local v31    # "sensorNumber":I
    :cond_5
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@f8
    move-result v21

    #@f9
    .line 6489
    .local v21, "numProcs":I
    move-object/from16 v0, p0

    #@fb
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    #@fd
    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    #@100
    .line 6490
    const/16 v16, 0x0

    #@102
    :goto_4
    move/from16 v0, v16

    #@104
    move/from16 v1, v21

    #@106
    if-ge v0, v1, :cond_6

    #@108
    .line 6491
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@10b
    move-result-object v29

    #@10c
    .line 6492
    .local v29, "processName":Ljava/lang/String;
    new-instance v28, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    #@10e
    move-object/from16 v0, p0

    #@110
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@112
    move-object/from16 v0, v28

    #@114
    move-object/from16 v1, v29

    #@116
    invoke-direct {v0, v4, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Ljava/lang/String;)V

    #@119
    .line 6493
    .local v28, "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    move-object/from16 v0, v28

    #@11b
    move-object/from16 v1, p3

    #@11d
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->readFromParcelLocked(Landroid/os/Parcel;)V

    #@120
    .line 6494
    move-object/from16 v0, p0

    #@122
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    #@124
    move-object/from16 v0, v29

    #@126
    move-object/from16 v1, v28

    #@128
    invoke-virtual {v4, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12b
    .line 6490
    add-int/lit8 v16, v16, 0x1

    #@12d
    goto :goto_4

    #@12e
    .line 6497
    .end local v28    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .end local v29    # "processName":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@131
    move-result v20

    #@132
    .line 6498
    .local v20, "numPkgs":I
    move-object/from16 v0, p0

    #@134
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    #@136
    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    #@139
    .line 6499
    const/16 v17, 0x0

    #@13b
    .local v17, "l":I
    :goto_5
    move/from16 v0, v17

    #@13d
    move/from16 v1, v20

    #@13f
    if-ge v0, v1, :cond_7

    #@141
    .line 6500
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@144
    move-result-object v26

    #@145
    .line 6501
    .local v26, "packageName":Ljava/lang/String;
    new-instance v27, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    #@147
    move-object/from16 v0, p0

    #@149
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@14b
    move-object/from16 v0, v27

    #@14d
    invoke-direct {v0, v4}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;-><init>(Lcom/android/internal/os/BatteryStatsImpl;)V

    #@150
    .line 6502
    .local v27, "pkg":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    move-object/from16 v0, v27

    #@152
    move-object/from16 v1, p3

    #@154
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->readFromParcelLocked(Landroid/os/Parcel;)V

    #@157
    .line 6503
    move-object/from16 v0, p0

    #@159
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    #@15b
    move-object/from16 v0, v26

    #@15d
    move-object/from16 v1, v27

    #@15f
    invoke-virtual {v4, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@162
    .line 6499
    add-int/lit8 v17, v17, 0x1

    #@164
    goto :goto_5

    #@165
    .line 6506
    .end local v26    # "packageName":Ljava/lang/String;
    .end local v27    # "pkg":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    :cond_7
    const/4 v4, 0x0

    #@166
    move-object/from16 v0, p0

    #@168
    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    #@16a
    .line 6507
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@16d
    move-result v4

    #@16e
    if-eqz v4, :cond_8

    #@170
    .line 6508
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@172
    move-object/from16 v0, p0

    #@174
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@176
    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@178
    .line 6509
    move-object/from16 v0, p0

    #@17a
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@17c
    iget-object v8, v6, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    #@17e
    move-object/from16 v0, p0

    #@180
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@182
    iget-object v9, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@184
    .line 6508
    const/4 v7, 0x4

    #@185
    move-object/from16 v6, p0

    #@187
    move-object/from16 v10, p3

    #@189
    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@18c
    move-object/from16 v0, p0

    #@18e
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@190
    .line 6513
    :goto_6
    const/4 v4, 0x0

    #@191
    move-object/from16 v0, p0

    #@193
    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    #@195
    .line 6514
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@198
    move-result v4

    #@199
    if-eqz v4, :cond_9

    #@19b
    .line 6515
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@19d
    move-object/from16 v0, p0

    #@19f
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@1a1
    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@1a3
    .line 6516
    move-object/from16 v0, p0

    #@1a5
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@1a7
    iget-object v8, v6, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    #@1a9
    move-object/from16 v0, p0

    #@1ab
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@1ad
    iget-object v9, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@1af
    .line 6515
    const/4 v7, 0x5

    #@1b0
    move-object/from16 v6, p0

    #@1b2
    move-object/from16 v10, p3

    #@1b4
    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@1b7
    move-object/from16 v0, p0

    #@1b9
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1bb
    .line 6520
    :goto_7
    const/4 v4, 0x0

    #@1bc
    move-object/from16 v0, p0

    #@1be
    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    #@1c0
    .line 6521
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@1c3
    move-result v4

    #@1c4
    if-eqz v4, :cond_a

    #@1c6
    .line 6522
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1c8
    move-object/from16 v0, p0

    #@1ca
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@1cc
    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@1ce
    .line 6523
    move-object/from16 v0, p0

    #@1d0
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@1d2
    iget-object v8, v6, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    #@1d4
    move-object/from16 v0, p0

    #@1d6
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@1d8
    iget-object v9, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@1da
    .line 6522
    const/4 v7, 0x6

    #@1db
    move-object/from16 v6, p0

    #@1dd
    move-object/from16 v10, p3

    #@1df
    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@1e2
    move-object/from16 v0, p0

    #@1e4
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1e6
    .line 6527
    :goto_8
    const/4 v4, -0x1

    #@1e7
    move-object/from16 v0, p0

    #@1e9
    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    #@1eb
    .line 6528
    const/4 v13, 0x0

    #@1ec
    .local v13, "i":I
    :goto_9
    const/4 v4, 0x5

    #@1ed
    if-ge v13, v4, :cond_c

    #@1ef
    .line 6529
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@1f2
    move-result v4

    #@1f3
    if-eqz v4, :cond_b

    #@1f5
    .line 6530
    move-object/from16 v0, p0

    #@1f7
    move-object/from16 v1, p3

    #@1f9
    invoke-virtual {v0, v13, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeWifiBatchedScanBin(ILandroid/os/Parcel;)V

    #@1fc
    .line 6528
    :goto_a
    add-int/lit8 v13, v13, 0x1

    #@1fe
    goto :goto_9

    #@1ff
    .line 6511
    .end local v13    # "i":I
    :cond_8
    const/4 v4, 0x0

    #@200
    move-object/from16 v0, p0

    #@202
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@204
    goto :goto_6

    #@205
    .line 6518
    :cond_9
    const/4 v4, 0x0

    #@206
    move-object/from16 v0, p0

    #@208
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@20a
    goto :goto_7

    #@20b
    .line 6525
    :cond_a
    const/4 v4, 0x0

    #@20c
    move-object/from16 v0, p0

    #@20e
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@210
    goto :goto_8

    #@211
    .line 6532
    .restart local v13    # "i":I
    :cond_b
    move-object/from16 v0, p0

    #@213
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@215
    const/4 v5, 0x0

    #@216
    aput-object v5, v4, v13

    #@218
    goto :goto_a

    #@219
    .line 6535
    :cond_c
    const/4 v4, 0x0

    #@21a
    move-object/from16 v0, p0

    #@21c
    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    #@21e
    .line 6536
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@221
    move-result v4

    #@222
    if-eqz v4, :cond_d

    #@224
    .line 6537
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@226
    move-object/from16 v0, p0

    #@228
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@22a
    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@22c
    .line 6538
    move-object/from16 v0, p0

    #@22e
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@230
    iget-object v8, v6, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    #@232
    move-object/from16 v0, p0

    #@234
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@236
    iget-object v9, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@238
    .line 6537
    const/4 v7, 0x7

    #@239
    move-object/from16 v6, p0

    #@23b
    move-object/from16 v10, p3

    #@23d
    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@240
    move-object/from16 v0, p0

    #@242
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@244
    .line 6542
    :goto_b
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@247
    move-result v4

    #@248
    if-eqz v4, :cond_e

    #@24a
    .line 6543
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@24c
    move-object/from16 v0, p0

    #@24e
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@250
    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@252
    .line 6544
    move-object/from16 v0, p0

    #@254
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@256
    iget-object v8, v6, Lcom/android/internal/os/BatteryStatsImpl;->mAudioTurnedOnTimers:Ljava/util/ArrayList;

    #@258
    move-object/from16 v0, p0

    #@25a
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@25c
    iget-object v9, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@25e
    .line 6543
    const/16 v7, 0xf

    #@260
    move-object/from16 v6, p0

    #@262
    move-object/from16 v10, p3

    #@264
    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@267
    move-object/from16 v0, p0

    #@269
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@26b
    .line 6548
    :goto_c
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@26e
    move-result v4

    #@26f
    if-eqz v4, :cond_f

    #@271
    .line 6549
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@273
    move-object/from16 v0, p0

    #@275
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@277
    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@279
    .line 6550
    move-object/from16 v0, p0

    #@27b
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@27d
    iget-object v8, v6, Lcom/android/internal/os/BatteryStatsImpl;->mVideoTurnedOnTimers:Ljava/util/ArrayList;

    #@27f
    move-object/from16 v0, p0

    #@281
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@283
    iget-object v9, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@285
    .line 6549
    const/16 v7, 0x8

    #@287
    move-object/from16 v6, p0

    #@289
    move-object/from16 v10, p3

    #@28b
    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@28e
    move-object/from16 v0, p0

    #@290
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@292
    .line 6554
    :goto_d
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@295
    move-result v4

    #@296
    if-eqz v4, :cond_10

    #@298
    .line 6555
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@29a
    move-object/from16 v0, p0

    #@29c
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@29e
    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@2a0
    .line 6556
    move-object/from16 v0, p0

    #@2a2
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@2a4
    iget-object v8, v6, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightTurnedOnTimers:Ljava/util/ArrayList;

    #@2a6
    move-object/from16 v0, p0

    #@2a8
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@2aa
    iget-object v9, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@2ac
    const/16 v7, 0x10

    #@2ae
    move-object/from16 v6, p0

    #@2b0
    move-object/from16 v10, p3

    #@2b2
    .line 6555
    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@2b5
    move-object/from16 v0, p0

    #@2b7
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2b9
    .line 6560
    :goto_e
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@2bc
    move-result v4

    #@2bd
    if-eqz v4, :cond_11

    #@2bf
    .line 6561
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2c1
    move-object/from16 v0, p0

    #@2c3
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@2c5
    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@2c7
    .line 6562
    move-object/from16 v0, p0

    #@2c9
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@2cb
    iget-object v8, v6, Lcom/android/internal/os/BatteryStatsImpl;->mCameraTurnedOnTimers:Ljava/util/ArrayList;

    #@2cd
    move-object/from16 v0, p0

    #@2cf
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@2d1
    iget-object v9, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@2d3
    .line 6561
    const/16 v7, 0x11

    #@2d5
    move-object/from16 v6, p0

    #@2d7
    move-object/from16 v10, p3

    #@2d9
    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@2dc
    move-object/from16 v0, p0

    #@2de
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2e0
    .line 6566
    :goto_f
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@2e3
    move-result v4

    #@2e4
    if-eqz v4, :cond_12

    #@2e6
    .line 6567
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2e8
    move-object/from16 v0, p0

    #@2ea
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@2ec
    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@2ee
    .line 6568
    move-object/from16 v0, p0

    #@2f0
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@2f2
    iget-object v9, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@2f4
    const/16 v7, 0xa

    #@2f6
    const/4 v8, 0x0

    #@2f7
    move-object/from16 v6, p0

    #@2f9
    move-object/from16 v10, p3

    #@2fb
    .line 6567
    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@2fe
    move-object/from16 v0, p0

    #@300
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@302
    .line 6572
    :goto_10
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@305
    move-result v4

    #@306
    if-eqz v4, :cond_13

    #@308
    .line 6573
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@30a
    move-object/from16 v0, p0

    #@30c
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@30e
    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@310
    .line 6574
    move-object/from16 v0, p0

    #@312
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@314
    iget-object v8, v6, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothScanOnTimers:Ljava/util/ArrayList;

    #@316
    move-object/from16 v0, p0

    #@318
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@31a
    iget-object v9, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@31c
    .line 6573
    const/16 v7, 0x13

    #@31e
    move-object/from16 v6, p0

    #@320
    move-object/from16 v10, p3

    #@322
    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@325
    move-object/from16 v0, p0

    #@327
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@329
    .line 6578
    :goto_11
    const/4 v4, -0x1

    #@32a
    move-object/from16 v0, p0

    #@32c
    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    #@32e
    .line 6579
    const/4 v13, 0x0

    #@32f
    :goto_12
    const/4 v4, 0x6

    #@330
    if-ge v13, v4, :cond_15

    #@332
    .line 6580
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@335
    move-result v4

    #@336
    if-eqz v4, :cond_14

    #@338
    .line 6581
    move-object/from16 v0, p0

    #@33a
    move-object/from16 v1, p3

    #@33c
    invoke-virtual {v0, v13, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeProcessState(ILandroid/os/Parcel;)V

    #@33f
    .line 6579
    :goto_13
    add-int/lit8 v13, v13, 0x1

    #@341
    goto :goto_12

    #@342
    .line 6540
    :cond_d
    const/4 v4, 0x0

    #@343
    move-object/from16 v0, p0

    #@345
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@347
    goto/16 :goto_b

    #@349
    .line 6546
    :cond_e
    const/4 v4, 0x0

    #@34a
    move-object/from16 v0, p0

    #@34c
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@34e
    goto/16 :goto_c

    #@350
    .line 6552
    :cond_f
    const/4 v4, 0x0

    #@351
    move-object/from16 v0, p0

    #@353
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@355
    goto/16 :goto_d

    #@357
    .line 6558
    :cond_10
    const/4 v4, 0x0

    #@358
    move-object/from16 v0, p0

    #@35a
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@35c
    goto/16 :goto_e

    #@35e
    .line 6564
    :cond_11
    const/4 v4, 0x0

    #@35f
    move-object/from16 v0, p0

    #@361
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@363
    goto/16 :goto_f

    #@365
    .line 6570
    :cond_12
    const/4 v4, 0x0

    #@366
    move-object/from16 v0, p0

    #@368
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@36a
    goto :goto_10

    #@36b
    .line 6576
    :cond_13
    const/4 v4, 0x0

    #@36c
    move-object/from16 v0, p0

    #@36e
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@370
    goto :goto_11

    #@371
    .line 6583
    :cond_14
    move-object/from16 v0, p0

    #@373
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@375
    const/4 v5, 0x0

    #@376
    aput-object v5, v4, v13

    #@378
    goto :goto_13

    #@379
    .line 6586
    :cond_15
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@37c
    move-result v4

    #@37d
    if-eqz v4, :cond_16

    #@37f
    .line 6587
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@381
    move-object/from16 v0, p0

    #@383
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@385
    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@387
    .line 6588
    move-object/from16 v0, p0

    #@389
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@38b
    iget-object v8, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@38d
    .line 6587
    const/16 v7, 0x9

    #@38f
    move-object/from16 v6, p0

    #@391
    move-object/from16 v9, p3

    #@393
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@396
    move-object/from16 v0, p0

    #@398
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@39a
    .line 6592
    :goto_14
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@39d
    move-result v4

    #@39e
    if-eqz v4, :cond_17

    #@3a0
    .line 6593
    const/4 v4, 0x4

    #@3a1
    new-array v4, v4, [Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@3a3
    move-object/from16 v0, p0

    #@3a5
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@3a7
    .line 6594
    const/4 v13, 0x0

    #@3a8
    :goto_15
    const/4 v4, 0x4

    #@3a9
    if-ge v13, v4, :cond_18

    #@3ab
    .line 6595
    move-object/from16 v0, p0

    #@3ad
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@3af
    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@3b1
    move-object/from16 v0, p0

    #@3b3
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@3b5
    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@3b7
    move-object/from16 v0, p3

    #@3b9
    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@3bc
    aput-object v5, v4, v13

    #@3be
    .line 6594
    add-int/lit8 v13, v13, 0x1

    #@3c0
    goto :goto_15

    #@3c1
    .line 6590
    :cond_16
    const/4 v4, 0x0

    #@3c2
    move-object/from16 v0, p0

    #@3c4
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@3c6
    goto :goto_14

    #@3c7
    .line 6598
    :cond_17
    const/4 v4, 0x0

    #@3c8
    move-object/from16 v0, p0

    #@3ca
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@3cc
    .line 6600
    :cond_18
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@3cf
    move-result v4

    #@3d0
    if-eqz v4, :cond_1a

    #@3d2
    .line 6601
    const/4 v4, 0x6

    #@3d3
    new-array v4, v4, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@3d5
    move-object/from16 v0, p0

    #@3d7
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@3d9
    .line 6603
    const/4 v4, 0x6

    #@3da
    new-array v4, v4, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@3dc
    .line 6602
    move-object/from16 v0, p0

    #@3de
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@3e0
    .line 6604
    const/4 v13, 0x0

    #@3e1
    :goto_16
    const/4 v4, 0x6

    #@3e2
    if-ge v13, v4, :cond_19

    #@3e4
    .line 6605
    move-object/from16 v0, p0

    #@3e6
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@3e8
    .line 6606
    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@3ea
    move-object/from16 v0, p0

    #@3ec
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@3ee
    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@3f0
    move-object/from16 v0, p3

    #@3f2
    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@3f5
    .line 6605
    aput-object v5, v4, v13

    #@3f7
    .line 6607
    move-object/from16 v0, p0

    #@3f9
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@3fb
    .line 6608
    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@3fd
    move-object/from16 v0, p0

    #@3ff
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@401
    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@403
    move-object/from16 v0, p3

    #@405
    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@408
    .line 6607
    aput-object v5, v4, v13

    #@40a
    .line 6604
    add-int/lit8 v13, v13, 0x1

    #@40c
    goto :goto_16

    #@40d
    .line 6610
    :cond_19
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@40f
    move-object/from16 v0, p0

    #@411
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@413
    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@415
    move-object/from16 v0, p3

    #@417
    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@41a
    move-object/from16 v0, p0

    #@41c
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@41e
    .line 6611
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@420
    move-object/from16 v0, p0

    #@422
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@424
    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@426
    move-object/from16 v0, p3

    #@428
    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@42b
    move-object/from16 v0, p0

    #@42d
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@42f
    .line 6617
    :goto_17
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@432
    move-result v4

    #@433
    if-eqz v4, :cond_1b

    #@435
    .line 6618
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@437
    move-object/from16 v0, p0

    #@439
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@43b
    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@43d
    .line 6619
    const/4 v6, 0x1

    #@43e
    .line 6618
    move-object/from16 v0, p3

    #@440
    invoke-direct {v4, v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;ILandroid/os/Parcel;)V

    #@443
    move-object/from16 v0, p0

    #@445
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@447
    .line 6624
    :goto_18
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@44a
    move-result v4

    #@44b
    if-eqz v4, :cond_1c

    #@44d
    .line 6625
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@44f
    move-object/from16 v0, p0

    #@451
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@453
    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@455
    .line 6626
    const/4 v6, 0x1

    #@456
    .line 6625
    move-object/from16 v0, p3

    #@458
    invoke-direct {v4, v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;ILandroid/os/Parcel;)V

    #@45b
    move-object/from16 v0, p0

    #@45d
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@45f
    .line 6631
    :goto_19
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@462
    move-result v4

    #@463
    if-eqz v4, :cond_1d

    #@465
    .line 6632
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@467
    move-object/from16 v0, p0

    #@469
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@46b
    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@46d
    .line 6633
    const/4 v6, 0x5

    #@46e
    .line 6632
    move-object/from16 v0, p3

    #@470
    invoke-direct {v4, v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;ILandroid/os/Parcel;)V

    #@473
    move-object/from16 v0, p0

    #@475
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@477
    .line 6638
    :goto_1a
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@479
    move-object/from16 v0, p0

    #@47b
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@47d
    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@47f
    move-object/from16 v0, p3

    #@481
    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@484
    move-object/from16 v0, p0

    #@486
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@488
    .line 6639
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@48a
    move-object/from16 v0, p0

    #@48c
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@48e
    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@490
    move-object/from16 v0, p3

    #@492
    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@495
    move-object/from16 v0, p0

    #@497
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@499
    .line 6640
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@49b
    move-object/from16 v0, p0

    #@49d
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@49f
    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@4a1
    move-object/from16 v0, p3

    #@4a3
    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@4a6
    move-object/from16 v0, p0

    #@4a8
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@4aa
    .line 6642
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@4ad
    move-result v4

    #@4ae
    if-eqz v4, :cond_23

    #@4b0
    .line 6643
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@4b3
    move-result v18

    #@4b4
    .line 6644
    .local v18, "numCpuClusters":I
    move-object/from16 v0, p0

    #@4b6
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@4b8
    invoke-static {v4}, Lcom/android/internal/os/BatteryStatsImpl;->-get1(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/PowerProfile;

    #@4bb
    move-result-object v4

    #@4bc
    if-eqz v4, :cond_1e

    #@4be
    move-object/from16 v0, p0

    #@4c0
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@4c2
    invoke-static {v4}, Lcom/android/internal/os/BatteryStatsImpl;->-get1(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/PowerProfile;

    #@4c5
    move-result-object v4

    #@4c6
    invoke-virtual {v4}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    #@4c9
    move-result v4

    #@4ca
    move/from16 v0, v18

    #@4cc
    if-eq v4, v0, :cond_1e

    #@4ce
    .line 6645
    new-instance v4, Landroid/os/ParcelFormatException;

    #@4d0
    const-string/jumbo v5, "Incompatible number of cpu clusters"

    #@4d3
    invoke-direct {v4, v5}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    #@4d6
    throw v4

    #@4d7
    .line 6613
    .end local v18    # "numCpuClusters":I
    :cond_1a
    const/4 v4, 0x0

    #@4d8
    move-object/from16 v0, p0

    #@4da
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@4dc
    .line 6614
    const/4 v4, 0x0

    #@4dd
    move-object/from16 v0, p0

    #@4df
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@4e1
    goto/16 :goto_17

    #@4e3
    .line 6621
    :cond_1b
    const/4 v4, 0x0

    #@4e4
    move-object/from16 v0, p0

    #@4e6
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@4e8
    goto/16 :goto_18

    #@4ea
    .line 6628
    :cond_1c
    const/4 v4, 0x0

    #@4eb
    move-object/from16 v0, p0

    #@4ed
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@4ef
    goto/16 :goto_19

    #@4f1
    .line 6635
    :cond_1d
    const/4 v4, 0x0

    #@4f2
    move-object/from16 v0, p0

    #@4f4
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@4f6
    goto :goto_1a

    #@4f7
    .line 6648
    .restart local v18    # "numCpuClusters":I
    :cond_1e
    move/from16 v0, v18

    #@4f9
    new-array v4, v0, [[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@4fb
    move-object/from16 v0, p0

    #@4fd
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@4ff
    .line 6649
    const/4 v11, 0x0

    #@500
    .local v11, "cluster":I
    :goto_1b
    move/from16 v0, v18

    #@502
    if-ge v11, v0, :cond_24

    #@504
    .line 6650
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@507
    move-result v4

    #@508
    if-eqz v4, :cond_21

    #@50a
    .line 6651
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@50d
    move-result v23

    #@50e
    .line 6652
    .local v23, "numSpeeds":I
    move-object/from16 v0, p0

    #@510
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@512
    invoke-static {v4}, Lcom/android/internal/os/BatteryStatsImpl;->-get1(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/PowerProfile;

    #@515
    move-result-object v4

    #@516
    if-eqz v4, :cond_1f

    #@518
    .line 6653
    move-object/from16 v0, p0

    #@51a
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@51c
    invoke-static {v4}, Lcom/android/internal/os/BatteryStatsImpl;->-get1(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/PowerProfile;

    #@51f
    move-result-object v4

    #@520
    invoke-virtual {v4, v11}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    #@523
    move-result v4

    #@524
    move/from16 v0, v23

    #@526
    if-eq v4, v0, :cond_1f

    #@528
    .line 6654
    new-instance v4, Landroid/os/ParcelFormatException;

    #@52a
    const-string/jumbo v5, "Incompatible number of cpu speeds"

    #@52d
    invoke-direct {v4, v5}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    #@530
    throw v4

    #@531
    .line 6657
    :cond_1f
    move/from16 v0, v23

    #@533
    new-array v12, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@535
    .line 6658
    .local v12, "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    move-object/from16 v0, p0

    #@537
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@539
    aput-object v12, v4, v11

    #@53b
    .line 6659
    const/16 v32, 0x0

    #@53d
    .local v32, "speed":I
    :goto_1c
    move/from16 v0, v32

    #@53f
    move/from16 v1, v23

    #@541
    if-ge v0, v1, :cond_22

    #@543
    .line 6660
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@546
    move-result v4

    #@547
    if-eqz v4, :cond_20

    #@549
    .line 6661
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@54b
    move-object/from16 v0, p0

    #@54d
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@54f
    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@551
    move-object/from16 v0, p3

    #@553
    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@556
    aput-object v4, v12, v32

    #@558
    .line 6659
    :cond_20
    add-int/lit8 v32, v32, 0x1

    #@55a
    goto :goto_1c

    #@55b
    .line 6665
    .end local v12    # "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .end local v23    # "numSpeeds":I
    .end local v32    # "speed":I
    :cond_21
    move-object/from16 v0, p0

    #@55d
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@55f
    const/4 v5, 0x0

    #@560
    aput-object v5, v4, v11

    #@562
    .line 6649
    :cond_22
    add-int/lit8 v11, v11, 0x1

    #@564
    goto :goto_1b

    #@565
    .line 6669
    .end local v11    # "cluster":I
    .end local v18    # "numCpuClusters":I
    :cond_23
    const/4 v4, 0x0

    #@566
    move-object/from16 v0, p0

    #@568
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@56a
    .line 6672
    :cond_24
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@56d
    move-result v4

    #@56e
    if-eqz v4, :cond_25

    #@570
    .line 6673
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@572
    move-object/from16 v0, p0

    #@574
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@576
    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@578
    move-object/from16 v0, p3

    #@57a
    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@57d
    move-object/from16 v0, p0

    #@57f
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@581
    .line 6678
    :goto_1d
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@584
    move-result v4

    #@585
    if-eqz v4, :cond_26

    #@587
    .line 6679
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@589
    move-object/from16 v0, p0

    #@58b
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@58d
    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@58f
    move-object/from16 v0, p3

    #@591
    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@594
    move-object/from16 v0, p0

    #@596
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@598
    .line 6449
    :goto_1e
    return-void

    #@599
    .line 6675
    :cond_25
    const/4 v4, 0x0

    #@59a
    move-object/from16 v0, p0

    #@59c
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@59e
    goto :goto_1d

    #@59f
    .line 6681
    :cond_26
    const/4 v4, 0x0

    #@5a0
    move-object/from16 v0, p0

    #@5a2
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@5a4
    goto :goto_1e
.end method

.method public readJobSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 7715
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->instantiateObject()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@8
    .line 7716
    .local v0, "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@b
    .line 7717
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@d
    invoke-virtual {v1, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    #@10
    .line 7714
    return-void
.end method

.method public readSyncSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 7709
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->instantiateObject()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@8
    .line 7710
    .local v0, "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@b
    .line 7711
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@d
    invoke-virtual {v1, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    #@10
    .line 7708
    return-void
.end method

.method public readWakeSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 3
    .param p1, "wlName"    # Ljava/lang/String;
    .param p2, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 7721
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    #@3
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    invoke-direct {v0, v1, p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    #@8
    .line 7722
    .local v0, "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@a
    invoke-virtual {v1, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    #@d
    .line 7723
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 7724
    const/4 v1, 0x1

    #@14
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->getStopwatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@1b
    .line 7726
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_1

    #@21
    .line 7727
    invoke-virtual {v0, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->getStopwatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@28
    .line 7729
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2b
    move-result v1

    #@2c
    if-eqz v1, :cond_2

    #@2e
    .line 7730
    const/4 v1, 0x2

    #@2f
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->getStopwatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@36
    .line 7732
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@39
    move-result v1

    #@3a
    if-eqz v1, :cond_3

    #@3c
    .line 7733
    const/16 v1, 0x12

    #@3e
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->getStopwatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@45
    .line 7720
    :cond_3
    return-void
.end method

.method public reportExcessiveCpuLocked(Ljava/lang/String;JJ)V
    .locals 2
    .param p1, "proc"    # Ljava/lang/String;
    .param p2, "overTime"    # J
    .param p4, "usedTime"    # J

    #@0
    .prologue
    .line 7826
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    #@3
    move-result-object v0

    #@4
    .line 7827
    .local v0, "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v0, :cond_0

    #@6
    .line 7828
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addExcessiveCpu(JJ)V

    #@9
    .line 7825
    :cond_0
    return-void
.end method

.method public reportExcessiveWakeLocked(Ljava/lang/String;JJ)V
    .locals 2
    .param p1, "proc"    # Ljava/lang/String;
    .param p2, "overTime"    # J
    .param p4, "usedTime"    # J

    #@0
    .prologue
    .line 7819
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    #@3
    move-result-object v0

    #@4
    .line 7820
    .local v0, "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v0, :cond_0

    #@6
    .line 7821
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addExcessiveWake(JJ)V

    #@9
    .line 7818
    :cond_0
    return-void
.end method

.method reset()Z
    .locals 34

    #@0
    .prologue
    .line 5968
    const/4 v4, 0x0

    #@1
    .line 5970
    .local v4, "active":Z
    move-object/from16 v0, p0

    #@3
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@5
    move-object/from16 v28, v0

    #@7
    if-eqz v28, :cond_0

    #@9
    .line 5971
    move-object/from16 v0, p0

    #@b
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@d
    move-object/from16 v28, v0

    #@f
    const/16 v29, 0x0

    #@11
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@14
    move-result v28

    #@15
    if-eqz v28, :cond_4

    #@17
    const/4 v4, 0x0

    #@18
    .line 5972
    .local v4, "active":Z
    :goto_0
    move-object/from16 v0, p0

    #@1a
    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    #@1c
    move/from16 v28, v0

    #@1e
    or-int v4, v4, v28

    #@20
    .line 5974
    .end local v4    # "active":Z
    :cond_0
    move-object/from16 v0, p0

    #@22
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@24
    move-object/from16 v28, v0

    #@26
    if-eqz v28, :cond_1

    #@28
    .line 5975
    move-object/from16 v0, p0

    #@2a
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2c
    move-object/from16 v28, v0

    #@2e
    const/16 v29, 0x0

    #@30
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@33
    move-result v28

    #@34
    if-eqz v28, :cond_5

    #@36
    const/16 v28, 0x0

    #@38
    :goto_1
    or-int v4, v4, v28

    #@3a
    .line 5976
    .restart local v4    # "active":Z
    move-object/from16 v0, p0

    #@3c
    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    #@3e
    move/from16 v28, v0

    #@40
    or-int v4, v4, v28

    #@42
    .line 5978
    .end local v4    # "active":Z
    :cond_1
    move-object/from16 v0, p0

    #@44
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@46
    move-object/from16 v28, v0

    #@48
    if-eqz v28, :cond_2

    #@4a
    .line 5979
    move-object/from16 v0, p0

    #@4c
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@4e
    move-object/from16 v28, v0

    #@50
    const/16 v29, 0x0

    #@52
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@55
    move-result v28

    #@56
    if-eqz v28, :cond_6

    #@58
    const/16 v28, 0x0

    #@5a
    :goto_2
    or-int v4, v4, v28

    #@5c
    .line 5980
    .restart local v4    # "active":Z
    move-object/from16 v0, p0

    #@5e
    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    #@60
    move/from16 v28, v0

    #@62
    or-int v4, v4, v28

    #@64
    .line 5982
    .end local v4    # "active":Z
    :cond_2
    move-object/from16 v0, p0

    #@66
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@68
    move-object/from16 v28, v0

    #@6a
    if-eqz v28, :cond_9

    #@6c
    .line 5983
    const/4 v7, 0x0

    #@6d
    .local v7, "i":I
    :goto_3
    const/16 v28, 0x5

    #@6f
    move/from16 v0, v28

    #@71
    if-ge v7, v0, :cond_8

    #@73
    .line 5984
    move-object/from16 v0, p0

    #@75
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@77
    move-object/from16 v28, v0

    #@79
    aget-object v28, v28, v7

    #@7b
    if-eqz v28, :cond_3

    #@7d
    .line 5985
    move-object/from16 v0, p0

    #@7f
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@81
    move-object/from16 v28, v0

    #@83
    aget-object v28, v28, v7

    #@85
    const/16 v29, 0x0

    #@87
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@8a
    move-result v28

    #@8b
    if-eqz v28, :cond_7

    #@8d
    const/16 v28, 0x0

    #@8f
    :goto_4
    or-int v4, v4, v28

    #@91
    .line 5983
    :cond_3
    add-int/lit8 v7, v7, 0x1

    #@93
    goto :goto_3

    #@94
    .line 5971
    .end local v7    # "i":I
    .local v4, "active":Z
    :cond_4
    const/4 v4, 0x1

    #@95
    goto :goto_0

    #@96
    .line 5975
    .end local v4    # "active":Z
    :cond_5
    const/16 v28, 0x1

    #@98
    goto :goto_1

    #@99
    .line 5979
    :cond_6
    const/16 v28, 0x1

    #@9b
    goto :goto_2

    #@9c
    .line 5985
    .restart local v7    # "i":I
    :cond_7
    const/16 v28, 0x1

    #@9e
    goto :goto_4

    #@9f
    .line 5988
    :cond_8
    move-object/from16 v0, p0

    #@a1
    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    #@a3
    move/from16 v28, v0

    #@a5
    const/16 v29, -0x1

    #@a7
    move/from16 v0, v28

    #@a9
    move/from16 v1, v29

    #@ab
    if-eq v0, v1, :cond_c

    #@ad
    const/16 v28, 0x1

    #@af
    :goto_5
    or-int v4, v4, v28

    #@b1
    .line 5990
    .end local v7    # "i":I
    :cond_9
    move-object/from16 v0, p0

    #@b3
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@b5
    move-object/from16 v28, v0

    #@b7
    if-eqz v28, :cond_a

    #@b9
    .line 5991
    move-object/from16 v0, p0

    #@bb
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@bd
    move-object/from16 v28, v0

    #@bf
    const/16 v29, 0x0

    #@c1
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@c4
    move-result v28

    #@c5
    if-eqz v28, :cond_d

    #@c7
    const/16 v28, 0x0

    #@c9
    :goto_6
    or-int v4, v4, v28

    #@cb
    .line 5992
    .local v4, "active":Z
    move-object/from16 v0, p0

    #@cd
    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    #@cf
    move/from16 v28, v0

    #@d1
    or-int v4, v4, v28

    #@d3
    .line 5995
    .end local v4    # "active":Z
    :cond_a
    move-object/from16 v0, p0

    #@d5
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@d7
    move-object/from16 v28, v0

    #@d9
    const/16 v29, 0x0

    #@db
    invoke-static/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl;->-wrap0(Lcom/android/internal/os/BatteryStatsImpl$Timer;Z)Z

    #@de
    move-result v28

    #@df
    if-eqz v28, :cond_e

    #@e1
    const/16 v28, 0x0

    #@e3
    :goto_7
    or-int v4, v4, v28

    #@e5
    .line 5996
    .restart local v4    # "active":Z
    move-object/from16 v0, p0

    #@e7
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@e9
    move-object/from16 v28, v0

    #@eb
    const/16 v29, 0x0

    #@ed
    invoke-static/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl;->-wrap0(Lcom/android/internal/os/BatteryStatsImpl$Timer;Z)Z

    #@f0
    move-result v28

    #@f1
    if-eqz v28, :cond_f

    #@f3
    const/16 v28, 0x0

    #@f5
    :goto_8
    or-int v4, v4, v28

    #@f7
    .line 5997
    move-object/from16 v0, p0

    #@f9
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@fb
    move-object/from16 v28, v0

    #@fd
    const/16 v29, 0x0

    #@ff
    invoke-static/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl;->-wrap0(Lcom/android/internal/os/BatteryStatsImpl$Timer;Z)Z

    #@102
    move-result v28

    #@103
    if-eqz v28, :cond_10

    #@105
    const/16 v28, 0x0

    #@107
    :goto_9
    or-int v4, v4, v28

    #@109
    .line 5998
    move-object/from16 v0, p0

    #@10b
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@10d
    move-object/from16 v28, v0

    #@10f
    const/16 v29, 0x0

    #@111
    invoke-static/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl;->-wrap0(Lcom/android/internal/os/BatteryStatsImpl$Timer;Z)Z

    #@114
    move-result v28

    #@115
    if-eqz v28, :cond_11

    #@117
    const/16 v28, 0x0

    #@119
    :goto_a
    or-int v4, v4, v28

    #@11b
    .line 5999
    move-object/from16 v0, p0

    #@11d
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@11f
    move-object/from16 v28, v0

    #@121
    const/16 v29, 0x0

    #@123
    invoke-static/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl;->-wrap0(Lcom/android/internal/os/BatteryStatsImpl$Timer;Z)Z

    #@126
    move-result v28

    #@127
    if-eqz v28, :cond_12

    #@129
    const/16 v28, 0x0

    #@12b
    :goto_b
    or-int v4, v4, v28

    #@12d
    .line 6000
    move-object/from16 v0, p0

    #@12f
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@131
    move-object/from16 v28, v0

    #@133
    const/16 v29, 0x0

    #@135
    invoke-static/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl;->-wrap0(Lcom/android/internal/os/BatteryStatsImpl$Timer;Z)Z

    #@138
    move-result v28

    #@139
    if-eqz v28, :cond_13

    #@13b
    const/16 v28, 0x0

    #@13d
    :goto_c
    or-int v4, v4, v28

    #@13f
    .line 6002
    move-object/from16 v0, p0

    #@141
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@143
    move-object/from16 v28, v0

    #@145
    if-eqz v28, :cond_16

    #@147
    .line 6003
    const/4 v7, 0x0

    #@148
    .restart local v7    # "i":I
    :goto_d
    const/16 v28, 0x6

    #@14a
    move/from16 v0, v28

    #@14c
    if-ge v7, v0, :cond_15

    #@14e
    .line 6004
    move-object/from16 v0, p0

    #@150
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@152
    move-object/from16 v28, v0

    #@154
    aget-object v28, v28, v7

    #@156
    if-eqz v28, :cond_b

    #@158
    .line 6005
    move-object/from16 v0, p0

    #@15a
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@15c
    move-object/from16 v28, v0

    #@15e
    aget-object v28, v28, v7

    #@160
    const/16 v29, 0x0

    #@162
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@165
    move-result v28

    #@166
    if-eqz v28, :cond_14

    #@168
    const/16 v28, 0x0

    #@16a
    :goto_e
    or-int v4, v4, v28

    #@16c
    .line 6003
    :cond_b
    add-int/lit8 v7, v7, 0x1

    #@16e
    goto :goto_d

    #@16f
    .line 5988
    .end local v4    # "active":Z
    :cond_c
    const/16 v28, 0x0

    #@171
    goto/16 :goto_5

    #@173
    .line 5991
    .end local v7    # "i":I
    :cond_d
    const/16 v28, 0x1

    #@175
    goto/16 :goto_6

    #@177
    .line 5995
    :cond_e
    const/16 v28, 0x1

    #@179
    goto/16 :goto_7

    #@17b
    .line 5996
    .restart local v4    # "active":Z
    :cond_f
    const/16 v28, 0x1

    #@17d
    goto/16 :goto_8

    #@17f
    .line 5997
    :cond_10
    const/16 v28, 0x1

    #@181
    goto :goto_9

    #@182
    .line 5998
    :cond_11
    const/16 v28, 0x1

    #@184
    goto :goto_a

    #@185
    .line 5999
    :cond_12
    const/16 v28, 0x1

    #@187
    goto :goto_b

    #@188
    .line 6000
    :cond_13
    const/16 v28, 0x1

    #@18a
    goto :goto_c

    #@18b
    .line 6005
    .restart local v7    # "i":I
    :cond_14
    const/16 v28, 0x1

    #@18d
    goto :goto_e

    #@18e
    .line 6008
    :cond_15
    move-object/from16 v0, p0

    #@190
    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    #@192
    move/from16 v28, v0

    #@194
    const/16 v29, -0x1

    #@196
    move/from16 v0, v28

    #@198
    move/from16 v1, v29

    #@19a
    if-eq v0, v1, :cond_18

    #@19c
    const/16 v28, 0x1

    #@19e
    :goto_f
    or-int v4, v4, v28

    #@1a0
    .line 6010
    .end local v7    # "i":I
    :cond_16
    move-object/from16 v0, p0

    #@1a2
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@1a4
    move-object/from16 v28, v0

    #@1a6
    if-eqz v28, :cond_17

    #@1a8
    .line 6011
    move-object/from16 v0, p0

    #@1aa
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@1ac
    move-object/from16 v28, v0

    #@1ae
    const/16 v29, 0x0

    #@1b0
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->reset(Z)Z

    #@1b3
    move-result v28

    #@1b4
    if-eqz v28, :cond_19

    #@1b6
    .line 6012
    move-object/from16 v0, p0

    #@1b8
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@1ba
    move-object/from16 v28, v0

    #@1bc
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->detach()V

    #@1bf
    .line 6013
    const/16 v28, 0x0

    #@1c1
    move-object/from16 v0, v28

    #@1c3
    move-object/from16 v1, p0

    #@1c5
    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@1c7
    .line 6019
    .end local v4    # "active":Z
    :cond_17
    :goto_10
    move-object/from16 v0, p0

    #@1c9
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@1cb
    move-object/from16 v28, v0

    #@1cd
    if-eqz v28, :cond_1a

    #@1cf
    .line 6020
    const/4 v7, 0x0

    #@1d0
    .restart local v7    # "i":I
    :goto_11
    const/16 v28, 0x4

    #@1d2
    move/from16 v0, v28

    #@1d4
    if-ge v7, v0, :cond_1a

    #@1d6
    .line 6021
    move-object/from16 v0, p0

    #@1d8
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@1da
    move-object/from16 v28, v0

    #@1dc
    aget-object v28, v28, v7

    #@1de
    const/16 v29, 0x0

    #@1e0
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->reset(Z)V

    #@1e3
    .line 6020
    add-int/lit8 v7, v7, 0x1

    #@1e5
    goto :goto_11

    #@1e6
    .line 6008
    .restart local v4    # "active":Z
    :cond_18
    const/16 v28, 0x0

    #@1e8
    goto :goto_f

    #@1e9
    .line 6015
    .end local v7    # "i":I
    :cond_19
    const/4 v4, 0x1

    #@1ea
    .local v4, "active":Z
    goto :goto_10

    #@1eb
    .line 6025
    .end local v4    # "active":Z
    :cond_1a
    move-object/from16 v0, p0

    #@1ed
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@1ef
    move-object/from16 v28, v0

    #@1f1
    if-eqz v28, :cond_1c

    #@1f3
    .line 6026
    const/4 v7, 0x0

    #@1f4
    .restart local v7    # "i":I
    :goto_12
    const/16 v28, 0x6

    #@1f6
    move/from16 v0, v28

    #@1f8
    if-ge v7, v0, :cond_1b

    #@1fa
    .line 6027
    move-object/from16 v0, p0

    #@1fc
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@1fe
    move-object/from16 v28, v0

    #@200
    aget-object v28, v28, v7

    #@202
    const/16 v29, 0x0

    #@204
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    #@207
    .line 6028
    move-object/from16 v0, p0

    #@209
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@20b
    move-object/from16 v28, v0

    #@20d
    aget-object v28, v28, v7

    #@20f
    const/16 v29, 0x0

    #@211
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    #@214
    .line 6026
    add-int/lit8 v7, v7, 0x1

    #@216
    goto :goto_12

    #@217
    .line 6030
    :cond_1b
    move-object/from16 v0, p0

    #@219
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@21b
    move-object/from16 v28, v0

    #@21d
    const/16 v29, 0x0

    #@21f
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    #@222
    .line 6031
    move-object/from16 v0, p0

    #@224
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@226
    move-object/from16 v28, v0

    #@228
    const/16 v29, 0x0

    #@22a
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    #@22d
    .line 6034
    .end local v7    # "i":I
    :cond_1c
    move-object/from16 v0, p0

    #@22f
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@231
    move-object/from16 v28, v0

    #@233
    if-eqz v28, :cond_1d

    #@235
    .line 6035
    move-object/from16 v0, p0

    #@237
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@239
    move-object/from16 v28, v0

    #@23b
    const/16 v29, 0x0

    #@23d
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->reset(Z)V

    #@240
    .line 6038
    :cond_1d
    move-object/from16 v0, p0

    #@242
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@244
    move-object/from16 v28, v0

    #@246
    if-eqz v28, :cond_1e

    #@248
    .line 6039
    move-object/from16 v0, p0

    #@24a
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@24c
    move-object/from16 v28, v0

    #@24e
    const/16 v29, 0x0

    #@250
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->reset(Z)V

    #@253
    .line 6042
    :cond_1e
    move-object/from16 v0, p0

    #@255
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@257
    move-object/from16 v28, v0

    #@259
    if-eqz v28, :cond_1f

    #@25b
    .line 6043
    move-object/from16 v0, p0

    #@25d
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@25f
    move-object/from16 v28, v0

    #@261
    const/16 v29, 0x0

    #@263
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->reset(Z)V

    #@266
    .line 6046
    :cond_1f
    move-object/from16 v0, p0

    #@268
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@26a
    move-object/from16 v28, v0

    #@26c
    const/16 v29, 0x0

    #@26e
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    #@271
    .line 6047
    move-object/from16 v0, p0

    #@273
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@275
    move-object/from16 v28, v0

    #@277
    const/16 v29, 0x0

    #@279
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    #@27c
    .line 6048
    move-object/from16 v0, p0

    #@27e
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@280
    move-object/from16 v28, v0

    #@282
    const/16 v29, 0x0

    #@284
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    #@287
    .line 6050
    move-object/from16 v0, p0

    #@289
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@28b
    move-object/from16 v28, v0

    #@28d
    if-eqz v28, :cond_22

    #@28f
    .line 6051
    move-object/from16 v0, p0

    #@291
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@293
    move-object/from16 v30, v0

    #@295
    const/16 v28, 0x0

    #@297
    move-object/from16 v0, v30

    #@299
    array-length v0, v0

    #@29a
    move/from16 v31, v0

    #@29c
    move/from16 v29, v28

    #@29e
    :goto_13
    move/from16 v0, v29

    #@2a0
    move/from16 v1, v31

    #@2a2
    if-ge v0, v1, :cond_22

    #@2a4
    aget-object v23, v30, v29

    #@2a6
    .line 6052
    .local v23, "speeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v23, :cond_21

    #@2a8
    .line 6053
    const/16 v28, 0x0

    #@2aa
    move-object/from16 v0, v23

    #@2ac
    array-length v0, v0

    #@2ad
    move/from16 v32, v0

    #@2af
    :goto_14
    move/from16 v0, v28

    #@2b1
    move/from16 v1, v32

    #@2b3
    if-ge v0, v1, :cond_21

    #@2b5
    aget-object v22, v23, v28

    #@2b7
    .line 6054
    .local v22, "speed":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v22, :cond_20

    #@2b9
    .line 6055
    const/16 v33, 0x0

    #@2bb
    move-object/from16 v0, v22

    #@2bd
    move/from16 v1, v33

    #@2bf
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    #@2c2
    .line 6053
    :cond_20
    add-int/lit8 v28, v28, 0x1

    #@2c4
    goto :goto_14

    #@2c5
    .line 6051
    .end local v22    # "speed":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_21
    add-int/lit8 v28, v29, 0x1

    #@2c7
    move/from16 v29, v28

    #@2c9
    goto :goto_13

    #@2ca
    .line 6062
    .end local v23    # "speeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_22
    move-object/from16 v0, p0

    #@2cc
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2ce
    move-object/from16 v28, v0

    #@2d0
    const/16 v29, 0x0

    #@2d2
    invoke-static/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl;->-wrap2(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;Z)V

    #@2d5
    .line 6063
    move-object/from16 v0, p0

    #@2d7
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2d9
    move-object/from16 v28, v0

    #@2db
    const/16 v29, 0x0

    #@2dd
    invoke-static/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl;->-wrap2(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;Z)V

    #@2e0
    .line 6065
    move-object/from16 v0, p0

    #@2e2
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@2e4
    move-object/from16 v28, v0

    #@2e6
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    #@2e9
    move-result-object v26

    #@2ea
    .line 6066
    .local v26, "wakeStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    invoke-virtual/range {v26 .. v26}, Landroid/util/ArrayMap;->size()I

    #@2ed
    move-result v28

    #@2ee
    add-int/lit8 v14, v28, -0x1

    #@2f0
    .local v14, "iw":I
    :goto_15
    if-ltz v14, :cond_24

    #@2f2
    .line 6067
    move-object/from16 v0, v26

    #@2f4
    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@2f7
    move-result-object v27

    #@2f8
    check-cast v27, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    #@2fa
    .line 6068
    .local v27, "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->reset()Z

    #@2fd
    move-result v28

    #@2fe
    if-eqz v28, :cond_23

    #@300
    .line 6069
    move-object/from16 v0, v26

    #@302
    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    #@305
    .line 6066
    :goto_16
    add-int/lit8 v14, v14, -0x1

    #@307
    goto :goto_15

    #@308
    .line 6071
    :cond_23
    const/4 v4, 0x1

    #@309
    .restart local v4    # "active":Z
    goto :goto_16

    #@30a
    .line 6074
    .end local v4    # "active":Z
    .end local v27    # "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    :cond_24
    move-object/from16 v0, p0

    #@30c
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@30e
    move-object/from16 v28, v0

    #@310
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->cleanup()V

    #@313
    .line 6075
    move-object/from16 v0, p0

    #@315
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@317
    move-object/from16 v28, v0

    #@319
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    #@31c
    move-result-object v24

    #@31d
    .line 6076
    .local v24, "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-virtual/range {v24 .. v24}, Landroid/util/ArrayMap;->size()I

    #@320
    move-result v28

    #@321
    add-int/lit8 v10, v28, -0x1

    #@323
    .local v10, "is":I
    :goto_17
    if-ltz v10, :cond_26

    #@325
    .line 6077
    move-object/from16 v0, v24

    #@327
    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@32a
    move-result-object v25

    #@32b
    check-cast v25, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@32d
    .line 6078
    .local v25, "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    const/16 v28, 0x0

    #@32f
    move-object/from16 v0, v25

    #@331
    move/from16 v1, v28

    #@333
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@336
    move-result v28

    #@337
    if-eqz v28, :cond_25

    #@339
    .line 6079
    move-object/from16 v0, v24

    #@33b
    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    #@33e
    .line 6080
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    #@341
    .line 6076
    :goto_18
    add-int/lit8 v10, v10, -0x1

    #@343
    goto :goto_17

    #@344
    .line 6082
    :cond_25
    const/4 v4, 0x1

    #@345
    .restart local v4    # "active":Z
    goto :goto_18

    #@346
    .line 6085
    .end local v4    # "active":Z
    .end local v25    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_26
    move-object/from16 v0, p0

    #@348
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@34a
    move-object/from16 v28, v0

    #@34c
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->cleanup()V

    #@34f
    .line 6086
    move-object/from16 v0, p0

    #@351
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@353
    move-object/from16 v28, v0

    #@355
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    #@358
    move-result-object v15

    #@359
    .line 6087
    .local v15, "jobStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    #@35c
    move-result v28

    #@35d
    add-int/lit8 v8, v28, -0x1

    #@35f
    .local v8, "ij":I
    :goto_19
    if-ltz v8, :cond_28

    #@361
    .line 6088
    invoke-virtual {v15, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@364
    move-result-object v25

    #@365
    check-cast v25, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@367
    .line 6089
    .restart local v25    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    const/16 v28, 0x0

    #@369
    move-object/from16 v0, v25

    #@36b
    move/from16 v1, v28

    #@36d
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@370
    move-result v28

    #@371
    if-eqz v28, :cond_27

    #@373
    .line 6090
    invoke-virtual {v15, v8}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    #@376
    .line 6091
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    #@379
    .line 6087
    :goto_1a
    add-int/lit8 v8, v8, -0x1

    #@37b
    goto :goto_19

    #@37c
    .line 6093
    :cond_27
    const/4 v4, 0x1

    #@37d
    .restart local v4    # "active":Z
    goto :goto_1a

    #@37e
    .line 6096
    .end local v4    # "active":Z
    .end local v25    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_28
    move-object/from16 v0, p0

    #@380
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@382
    move-object/from16 v28, v0

    #@384
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->cleanup()V

    #@387
    .line 6097
    move-object/from16 v0, p0

    #@389
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    #@38b
    move-object/from16 v28, v0

    #@38d
    invoke-virtual/range {v28 .. v28}, Landroid/util/SparseArray;->size()I

    #@390
    move-result v28

    #@391
    add-int/lit8 v11, v28, -0x1

    #@393
    .local v11, "ise":I
    :goto_1b
    if-ltz v11, :cond_2a

    #@395
    .line 6098
    move-object/from16 v0, p0

    #@397
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    #@399
    move-object/from16 v28, v0

    #@39b
    move-object/from16 v0, v28

    #@39d
    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@3a0
    move-result-object v20

    #@3a1
    check-cast v20, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    #@3a3
    .line 6099
    .local v20, "s":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->reset()Z

    #@3a6
    move-result v28

    #@3a7
    if-eqz v28, :cond_29

    #@3a9
    .line 6100
    move-object/from16 v0, p0

    #@3ab
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    #@3ad
    move-object/from16 v28, v0

    #@3af
    move-object/from16 v0, v28

    #@3b1
    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->removeAt(I)V

    #@3b4
    .line 6097
    :goto_1c
    add-int/lit8 v11, v11, -0x1

    #@3b6
    goto :goto_1b

    #@3b7
    .line 6102
    :cond_29
    const/4 v4, 0x1

    #@3b8
    .restart local v4    # "active":Z
    goto :goto_1c

    #@3b9
    .line 6105
    .end local v4    # "active":Z
    .end local v20    # "s":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    :cond_2a
    move-object/from16 v0, p0

    #@3bb
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    #@3bd
    move-object/from16 v28, v0

    #@3bf
    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->size()I

    #@3c2
    move-result v28

    #@3c3
    add-int/lit8 v9, v28, -0x1

    #@3c5
    .local v9, "ip":I
    :goto_1d
    if-ltz v9, :cond_2b

    #@3c7
    .line 6106
    move-object/from16 v0, p0

    #@3c9
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    #@3cb
    move-object/from16 v28, v0

    #@3cd
    move-object/from16 v0, v28

    #@3cf
    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@3d2
    move-result-object v19

    #@3d3
    check-cast v19, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    #@3d5
    .line 6107
    .local v19, "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->detach()V

    #@3d8
    .line 6105
    add-int/lit8 v9, v9, -0x1

    #@3da
    goto :goto_1d

    #@3db
    .line 6109
    .end local v19    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    :cond_2b
    move-object/from16 v0, p0

    #@3dd
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    #@3df
    move-object/from16 v28, v0

    #@3e1
    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->clear()V

    #@3e4
    .line 6110
    move-object/from16 v0, p0

    #@3e6
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    #@3e8
    move-object/from16 v28, v0

    #@3ea
    invoke-virtual/range {v28 .. v28}, Landroid/util/SparseArray;->size()I

    #@3ed
    move-result v28

    #@3ee
    if-lez v28, :cond_2d

    #@3f0
    .line 6111
    move-object/from16 v0, p0

    #@3f2
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    #@3f4
    move-object/from16 v28, v0

    #@3f6
    invoke-virtual/range {v28 .. v28}, Landroid/util/SparseArray;->size()I

    #@3f9
    move-result v28

    #@3fa
    add-int/lit8 v7, v28, -0x1

    #@3fc
    .restart local v7    # "i":I
    :goto_1e
    if-ltz v7, :cond_2d

    #@3fe
    .line 6112
    move-object/from16 v0, p0

    #@400
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    #@402
    move-object/from16 v28, v0

    #@404
    move-object/from16 v0, v28

    #@406
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@409
    move-result-object v17

    #@40a
    check-cast v17, Landroid/os/BatteryStats$Uid$Pid;

    #@40c
    .line 6113
    .local v17, "pid":Landroid/os/BatteryStats$Uid$Pid;
    move-object/from16 v0, v17

    #@40e
    iget v0, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    #@410
    move/from16 v28, v0

    #@412
    if-lez v28, :cond_2c

    #@414
    .line 6114
    const/4 v4, 0x1

    #@415
    .line 6111
    :goto_1f
    add-int/lit8 v7, v7, -0x1

    #@417
    goto :goto_1e

    #@418
    .line 6116
    :cond_2c
    move-object/from16 v0, p0

    #@41a
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    #@41c
    move-object/from16 v28, v0

    #@41e
    move-object/from16 v0, v28

    #@420
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->removeAt(I)V

    #@423
    goto :goto_1f

    #@424
    .line 6120
    .end local v7    # "i":I
    .end local v17    # "pid":Landroid/os/BatteryStats$Uid$Pid;
    :cond_2d
    move-object/from16 v0, p0

    #@426
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    #@428
    move-object/from16 v28, v0

    #@42a
    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->size()I

    #@42d
    move-result v28

    #@42e
    if-lez v28, :cond_30

    #@430
    .line 6121
    move-object/from16 v0, p0

    #@432
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    #@434
    move-object/from16 v28, v0

    #@436
    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    #@439
    move-result-object v28

    #@43a
    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@43d
    move-result-object v12

    #@43e
    .line 6122
    .local v12, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;>;"
    :cond_2e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@441
    move-result v28

    #@442
    if-eqz v28, :cond_2f

    #@444
    .line 6123
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@447
    move-result-object v18

    #@448
    check-cast v18, Ljava/util/Map$Entry;

    #@44a
    .line 6124
    .local v18, "pkgEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@44d
    move-result-object v16

    #@44e
    check-cast v16, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    #@450
    .line 6125
    .local v16, "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->detach()V

    #@453
    .line 6126
    move-object/from16 v0, v16

    #@455
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    #@457
    move-object/from16 v28, v0

    #@459
    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->size()I

    #@45c
    move-result v28

    #@45d
    if-lez v28, :cond_2e

    #@45f
    .line 6128
    move-object/from16 v0, v16

    #@461
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    #@463
    move-object/from16 v28, v0

    #@465
    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    #@468
    move-result-object v28

    #@469
    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@46c
    move-result-object v13

    #@46d
    .line 6129
    .local v13, "it2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;>;"
    :goto_20
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@470
    move-result v28

    #@471
    if-eqz v28, :cond_2e

    #@473
    .line 6130
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@476
    move-result-object v21

    #@477
    check-cast v21, Ljava/util/Map$Entry;

    #@479
    .line 6131
    .local v21, "servEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@47c
    move-result-object v28

    #@47d
    check-cast v28, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    #@47f
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->detach()V

    #@482
    goto :goto_20

    #@483
    .line 6135
    .end local v13    # "it2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;>;"
    .end local v16    # "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .end local v18    # "pkgEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    .end local v21    # "servEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;"
    :cond_2f
    move-object/from16 v0, p0

    #@485
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    #@487
    move-object/from16 v28, v0

    #@489
    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->clear()V

    #@48c
    .line 6138
    .end local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;>;"
    :cond_30
    const-wide/16 v28, 0x0

    #@48e
    move-wide/from16 v0, v28

    #@490
    move-object/from16 v2, p0

    #@492
    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepSystemTime:J

    #@494
    const-wide/16 v28, 0x0

    #@496
    move-wide/from16 v0, v28

    #@498
    move-object/from16 v2, p0

    #@49a
    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepUserTime:J

    #@49c
    .line 6139
    const-wide/16 v28, 0x0

    #@49e
    move-wide/from16 v0, v28

    #@4a0
    move-object/from16 v2, p0

    #@4a2
    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepSystemTime:J

    #@4a4
    const-wide/16 v28, 0x0

    #@4a6
    move-wide/from16 v0, v28

    #@4a8
    move-object/from16 v2, p0

    #@4aa
    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepUserTime:J

    #@4ac
    .line 6141
    if-nez v4, :cond_45

    #@4ae
    .line 6142
    move-object/from16 v0, p0

    #@4b0
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@4b2
    move-object/from16 v28, v0

    #@4b4
    if-eqz v28, :cond_31

    #@4b6
    .line 6143
    move-object/from16 v0, p0

    #@4b8
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@4ba
    move-object/from16 v28, v0

    #@4bc
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    #@4bf
    .line 6145
    :cond_31
    move-object/from16 v0, p0

    #@4c1
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@4c3
    move-object/from16 v28, v0

    #@4c5
    if-eqz v28, :cond_32

    #@4c7
    .line 6146
    move-object/from16 v0, p0

    #@4c9
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@4cb
    move-object/from16 v28, v0

    #@4cd
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    #@4d0
    .line 6148
    :cond_32
    move-object/from16 v0, p0

    #@4d2
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@4d4
    move-object/from16 v28, v0

    #@4d6
    if-eqz v28, :cond_33

    #@4d8
    .line 6149
    move-object/from16 v0, p0

    #@4da
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@4dc
    move-object/from16 v28, v0

    #@4de
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    #@4e1
    .line 6151
    :cond_33
    const/4 v7, 0x0

    #@4e2
    .restart local v7    # "i":I
    :goto_21
    const/16 v28, 0x5

    #@4e4
    move/from16 v0, v28

    #@4e6
    if-ge v7, v0, :cond_35

    #@4e8
    .line 6152
    move-object/from16 v0, p0

    #@4ea
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@4ec
    move-object/from16 v28, v0

    #@4ee
    aget-object v28, v28, v7

    #@4f0
    if-eqz v28, :cond_34

    #@4f2
    .line 6153
    move-object/from16 v0, p0

    #@4f4
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@4f6
    move-object/from16 v28, v0

    #@4f8
    aget-object v28, v28, v7

    #@4fa
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    #@4fd
    .line 6151
    :cond_34
    add-int/lit8 v7, v7, 0x1

    #@4ff
    goto :goto_21

    #@500
    .line 6156
    :cond_35
    move-object/from16 v0, p0

    #@502
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@504
    move-object/from16 v28, v0

    #@506
    if-eqz v28, :cond_36

    #@508
    .line 6157
    move-object/from16 v0, p0

    #@50a
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@50c
    move-object/from16 v28, v0

    #@50e
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    #@511
    .line 6159
    :cond_36
    move-object/from16 v0, p0

    #@513
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@515
    move-object/from16 v28, v0

    #@517
    if-eqz v28, :cond_37

    #@519
    .line 6160
    move-object/from16 v0, p0

    #@51b
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@51d
    move-object/from16 v28, v0

    #@51f
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    #@522
    .line 6161
    const/16 v28, 0x0

    #@524
    move-object/from16 v0, v28

    #@526
    move-object/from16 v1, p0

    #@528
    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@52a
    .line 6163
    :cond_37
    move-object/from16 v0, p0

    #@52c
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@52e
    move-object/from16 v28, v0

    #@530
    if-eqz v28, :cond_38

    #@532
    .line 6164
    move-object/from16 v0, p0

    #@534
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@536
    move-object/from16 v28, v0

    #@538
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    #@53b
    .line 6165
    const/16 v28, 0x0

    #@53d
    move-object/from16 v0, v28

    #@53f
    move-object/from16 v1, p0

    #@541
    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@543
    .line 6167
    :cond_38
    move-object/from16 v0, p0

    #@545
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@547
    move-object/from16 v28, v0

    #@549
    if-eqz v28, :cond_39

    #@54b
    .line 6168
    move-object/from16 v0, p0

    #@54d
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@54f
    move-object/from16 v28, v0

    #@551
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    #@554
    .line 6169
    const/16 v28, 0x0

    #@556
    move-object/from16 v0, v28

    #@558
    move-object/from16 v1, p0

    #@55a
    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@55c
    .line 6171
    :cond_39
    move-object/from16 v0, p0

    #@55e
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@560
    move-object/from16 v28, v0

    #@562
    if-eqz v28, :cond_3a

    #@564
    .line 6172
    move-object/from16 v0, p0

    #@566
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@568
    move-object/from16 v28, v0

    #@56a
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    #@56d
    .line 6173
    const/16 v28, 0x0

    #@56f
    move-object/from16 v0, v28

    #@571
    move-object/from16 v1, p0

    #@573
    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@575
    .line 6175
    :cond_3a
    move-object/from16 v0, p0

    #@577
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@579
    move-object/from16 v28, v0

    #@57b
    if-eqz v28, :cond_3b

    #@57d
    .line 6176
    move-object/from16 v0, p0

    #@57f
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@581
    move-object/from16 v28, v0

    #@583
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    #@586
    .line 6177
    const/16 v28, 0x0

    #@588
    move-object/from16 v0, v28

    #@58a
    move-object/from16 v1, p0

    #@58c
    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@58e
    .line 6179
    :cond_3b
    move-object/from16 v0, p0

    #@590
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@592
    move-object/from16 v28, v0

    #@594
    if-eqz v28, :cond_3c

    #@596
    .line 6180
    move-object/from16 v0, p0

    #@598
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@59a
    move-object/from16 v28, v0

    #@59c
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    #@59f
    .line 6181
    const/16 v28, 0x0

    #@5a1
    move-object/from16 v0, v28

    #@5a3
    move-object/from16 v1, p0

    #@5a5
    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@5a7
    .line 6183
    :cond_3c
    move-object/from16 v0, p0

    #@5a9
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@5ab
    move-object/from16 v28, v0

    #@5ad
    if-eqz v28, :cond_3d

    #@5af
    .line 6184
    const/4 v7, 0x0

    #@5b0
    :goto_22
    const/16 v28, 0x4

    #@5b2
    move/from16 v0, v28

    #@5b4
    if-ge v7, v0, :cond_3d

    #@5b6
    .line 6185
    move-object/from16 v0, p0

    #@5b8
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@5ba
    move-object/from16 v28, v0

    #@5bc
    aget-object v28, v28, v7

    #@5be
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->detach()V

    #@5c1
    .line 6184
    add-int/lit8 v7, v7, 0x1

    #@5c3
    goto :goto_22

    #@5c4
    .line 6188
    :cond_3d
    move-object/from16 v0, p0

    #@5c6
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@5c8
    move-object/from16 v28, v0

    #@5ca
    if-eqz v28, :cond_3e

    #@5cc
    .line 6189
    const/4 v7, 0x0

    #@5cd
    :goto_23
    const/16 v28, 0x6

    #@5cf
    move/from16 v0, v28

    #@5d1
    if-ge v7, v0, :cond_3e

    #@5d3
    .line 6190
    move-object/from16 v0, p0

    #@5d5
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@5d7
    move-object/from16 v28, v0

    #@5d9
    aget-object v28, v28, v7

    #@5db
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    #@5de
    .line 6191
    move-object/from16 v0, p0

    #@5e0
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@5e2
    move-object/from16 v28, v0

    #@5e4
    aget-object v28, v28, v7

    #@5e6
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    #@5e9
    .line 6189
    add-int/lit8 v7, v7, 0x1

    #@5eb
    goto :goto_23

    #@5ec
    .line 6195
    :cond_3e
    move-object/from16 v0, p0

    #@5ee
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@5f0
    move-object/from16 v28, v0

    #@5f2
    if-eqz v28, :cond_3f

    #@5f4
    .line 6196
    move-object/from16 v0, p0

    #@5f6
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@5f8
    move-object/from16 v28, v0

    #@5fa
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->detach()V

    #@5fd
    .line 6199
    :cond_3f
    move-object/from16 v0, p0

    #@5ff
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@601
    move-object/from16 v28, v0

    #@603
    if-eqz v28, :cond_40

    #@605
    .line 6200
    move-object/from16 v0, p0

    #@607
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@609
    move-object/from16 v28, v0

    #@60b
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->detach()V

    #@60e
    .line 6203
    :cond_40
    move-object/from16 v0, p0

    #@610
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@612
    move-object/from16 v28, v0

    #@614
    if-eqz v28, :cond_41

    #@616
    .line 6204
    move-object/from16 v0, p0

    #@618
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@61a
    move-object/from16 v28, v0

    #@61c
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->detach()V

    #@61f
    .line 6207
    :cond_41
    move-object/from16 v0, p0

    #@621
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    #@623
    move-object/from16 v28, v0

    #@625
    invoke-virtual/range {v28 .. v28}, Landroid/util/SparseArray;->clear()V

    #@628
    .line 6209
    move-object/from16 v0, p0

    #@62a
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@62c
    move-object/from16 v28, v0

    #@62e
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    #@631
    .line 6210
    move-object/from16 v0, p0

    #@633
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@635
    move-object/from16 v28, v0

    #@637
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    #@63a
    .line 6211
    move-object/from16 v0, p0

    #@63c
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@63e
    move-object/from16 v28, v0

    #@640
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    #@643
    .line 6213
    move-object/from16 v0, p0

    #@645
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@647
    move-object/from16 v28, v0

    #@649
    if-eqz v28, :cond_44

    #@64b
    .line 6214
    move-object/from16 v0, p0

    #@64d
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@64f
    move-object/from16 v30, v0

    #@651
    const/16 v28, 0x0

    #@653
    move-object/from16 v0, v30

    #@655
    array-length v0, v0

    #@656
    move/from16 v31, v0

    #@658
    move/from16 v29, v28

    #@65a
    :goto_24
    move/from16 v0, v29

    #@65c
    move/from16 v1, v31

    #@65e
    if-ge v0, v1, :cond_44

    #@660
    aget-object v6, v30, v29

    #@662
    .line 6215
    .local v6, "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v6, :cond_43

    #@664
    .line 6216
    const/16 v28, 0x0

    #@666
    array-length v0, v6

    #@667
    move/from16 v32, v0

    #@669
    :goto_25
    move/from16 v0, v28

    #@66b
    move/from16 v1, v32

    #@66d
    if-ge v0, v1, :cond_43

    #@66f
    aget-object v5, v6, v28

    #@671
    .line 6217
    .local v5, "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v5, :cond_42

    #@673
    .line 6218
    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    #@676
    .line 6216
    :cond_42
    add-int/lit8 v28, v28, 0x1

    #@678
    goto :goto_25

    #@679
    .line 6214
    .end local v5    # "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_43
    add-int/lit8 v28, v29, 0x1

    #@67b
    move/from16 v29, v28

    #@67d
    goto :goto_24

    #@67e
    .line 6225
    .end local v6    # "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_44
    move-object/from16 v0, p0

    #@680
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@682
    move-object/from16 v28, v0

    #@684
    invoke-static/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl;->-wrap1(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;)V

    #@687
    .line 6226
    move-object/from16 v0, p0

    #@689
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@68b
    move-object/from16 v28, v0

    #@68d
    invoke-static/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl;->-wrap1(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;)V

    #@690
    .line 6229
    .end local v7    # "i":I
    :cond_45
    if-eqz v4, :cond_46

    #@692
    const/16 v28, 0x0

    #@694
    :goto_26
    return v28

    #@695
    :cond_46
    const/16 v28, 0x1

    #@697
    goto :goto_26
.end method

.method public updateUidProcessStateLocked(I)V
    .locals 7
    .param p1, "procState"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, -0x1

    #@2
    .line 7632
    if-ne p1, v5, :cond_0

    #@4
    .line 7633
    const/4 v2, -0x1

    #@5
    .line 7650
    .local v2, "uidRunningState":I
    :goto_0
    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    #@7
    if-ne v3, v2, :cond_6

    #@9
    return-void

    #@a
    .line 7634
    .end local v2    # "uidRunningState":I
    :cond_0
    const/4 v3, 0x2

    #@b
    if-ne p1, v3, :cond_1

    #@d
    .line 7635
    const/4 v2, 0x0

    #@e
    .restart local v2    # "uidRunningState":I
    goto :goto_0

    #@f
    .line 7636
    .end local v2    # "uidRunningState":I
    :cond_1
    const/4 v3, 0x4

    #@10
    if-gt p1, v3, :cond_2

    #@12
    .line 7638
    const/4 v2, 0x1

    #@13
    .restart local v2    # "uidRunningState":I
    goto :goto_0

    #@14
    .line 7639
    .end local v2    # "uidRunningState":I
    :cond_2
    const/4 v3, 0x5

    #@15
    if-gt p1, v3, :cond_3

    #@17
    .line 7640
    const/4 v2, 0x2

    #@18
    .restart local v2    # "uidRunningState":I
    goto :goto_0

    #@19
    .line 7641
    .end local v2    # "uidRunningState":I
    :cond_3
    const/4 v3, 0x6

    #@1a
    if-gt p1, v3, :cond_4

    #@1c
    .line 7643
    const/4 v2, 0x3

    #@1d
    .restart local v2    # "uidRunningState":I
    goto :goto_0

    #@1e
    .line 7644
    .end local v2    # "uidRunningState":I
    :cond_4
    const/16 v3, 0xb

    #@20
    if-gt p1, v3, :cond_5

    #@22
    .line 7645
    const/4 v2, 0x4

    #@23
    .restart local v2    # "uidRunningState":I
    goto :goto_0

    #@24
    .line 7647
    .end local v2    # "uidRunningState":I
    :cond_5
    const/4 v2, 0x5

    #@25
    .restart local v2    # "uidRunningState":I
    goto :goto_0

    #@26
    .line 7652
    :cond_6
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@28
    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@2a
    invoke-interface {v3}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    #@2d
    move-result-wide v0

    #@2e
    .line 7654
    .local v0, "elapsedRealtime":J
    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    #@30
    if-eq v3, v5, :cond_7

    #@32
    .line 7655
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@34
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    #@36
    aget-object v3, v3, v4

    #@38
    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@3b
    .line 7657
    :cond_7
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    #@3d
    .line 7658
    if-eq v2, v5, :cond_9

    #@3f
    .line 7659
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@41
    aget-object v3, v3, v2

    #@43
    if-nez v3, :cond_8

    #@45
    .line 7660
    invoke-virtual {p0, v2, v6}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeProcessState(ILandroid/os/Parcel;)V

    #@48
    .line 7662
    :cond_8
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@4a
    aget-object v3, v3, v2

    #@4c
    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@4f
    .line 7630
    :cond_9
    return-void
.end method

.method writeToParcelLocked(Landroid/os/Parcel;J)V
    .locals 34
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    #@0
    .prologue
    .line 6233
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@4
    move-object/from16 v27, v0

    #@6
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    #@9
    move-result-object v25

    #@a
    .line 6234
    .local v25, "wakeStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    #@d
    move-result v8

    #@e
    .line 6235
    .local v8, "NW":I
    move-object/from16 v0, p1

    #@10
    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 6236
    const/16 v16, 0x0

    #@15
    .local v16, "iw":I
    :goto_0
    move/from16 v0, v16

    #@17
    if-ge v0, v8, :cond_0

    #@19
    .line 6237
    move-object/from16 v0, v25

    #@1b
    move/from16 v1, v16

    #@1d
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@20
    move-result-object v27

    #@21
    check-cast v27, Ljava/lang/String;

    #@23
    move-object/from16 v0, p1

    #@25
    move-object/from16 v1, v27

    #@27
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2a
    .line 6238
    move-object/from16 v0, v25

    #@2c
    move/from16 v1, v16

    #@2e
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@31
    move-result-object v26

    #@32
    check-cast v26, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    #@34
    .line 6239
    .local v26, "wakelock":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    move-object/from16 v0, v26

    #@36
    move-object/from16 v1, p1

    #@38
    move-wide/from16 v2, p2

    #@3a
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->writeToParcelLocked(Landroid/os/Parcel;J)V

    #@3d
    .line 6236
    add-int/lit8 v16, v16, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 6242
    .end local v26    # "wakelock":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    :cond_0
    move-object/from16 v0, p0

    #@42
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@44
    move-object/from16 v27, v0

    #@46
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    #@49
    move-result-object v23

    #@4a
    .line 6243
    .local v23, "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-virtual/range {v23 .. v23}, Landroid/util/ArrayMap;->size()I

    #@4d
    move-result v6

    #@4e
    .line 6244
    .local v6, "NS":I
    move-object/from16 v0, p1

    #@50
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@53
    .line 6245
    const/4 v14, 0x0

    #@54
    .local v14, "is":I
    :goto_1
    if-ge v14, v6, :cond_1

    #@56
    .line 6246
    move-object/from16 v0, v23

    #@58
    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@5b
    move-result-object v27

    #@5c
    check-cast v27, Ljava/lang/String;

    #@5e
    move-object/from16 v0, p1

    #@60
    move-object/from16 v1, v27

    #@62
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@65
    .line 6247
    move-object/from16 v0, v23

    #@67
    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@6a
    move-result-object v24

    #@6b
    check-cast v24, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6d
    .line 6248
    .local v24, "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    move-object/from16 v0, p1

    #@6f
    move-object/from16 v1, v24

    #@71
    move-wide/from16 v2, p2

    #@73
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V

    #@76
    .line 6245
    add-int/lit8 v14, v14, 0x1

    #@78
    goto :goto_1

    #@79
    .line 6251
    .end local v24    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_1
    move-object/from16 v0, p0

    #@7b
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@7d
    move-object/from16 v27, v0

    #@7f
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    #@82
    move-result-object v17

    #@83
    .line 6252
    .local v17, "jobStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    #@86
    move-result v4

    #@87
    .line 6253
    .local v4, "NJ":I
    move-object/from16 v0, p1

    #@89
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@8c
    .line 6254
    const/4 v12, 0x0

    #@8d
    .local v12, "ij":I
    :goto_2
    if-ge v12, v4, :cond_2

    #@8f
    .line 6255
    move-object/from16 v0, v17

    #@91
    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@94
    move-result-object v27

    #@95
    check-cast v27, Ljava/lang/String;

    #@97
    move-object/from16 v0, p1

    #@99
    move-object/from16 v1, v27

    #@9b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@9e
    .line 6256
    move-object/from16 v0, v17

    #@a0
    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@a3
    move-result-object v24

    #@a4
    check-cast v24, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@a6
    .line 6257
    .restart local v24    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    move-object/from16 v0, p1

    #@a8
    move-object/from16 v1, v24

    #@aa
    move-wide/from16 v2, p2

    #@ac
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V

    #@af
    .line 6254
    add-int/lit8 v12, v12, 0x1

    #@b1
    goto :goto_2

    #@b2
    .line 6260
    .end local v24    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_2
    move-object/from16 v0, p0

    #@b4
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    #@b6
    move-object/from16 v27, v0

    #@b8
    invoke-virtual/range {v27 .. v27}, Landroid/util/SparseArray;->size()I

    #@bb
    move-result v7

    #@bc
    .line 6261
    .local v7, "NSE":I
    move-object/from16 v0, p1

    #@be
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@c1
    .line 6262
    const/4 v15, 0x0

    #@c2
    .local v15, "ise":I
    :goto_3
    if-ge v15, v7, :cond_3

    #@c4
    .line 6263
    move-object/from16 v0, p0

    #@c6
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    #@c8
    move-object/from16 v27, v0

    #@ca
    move-object/from16 v0, v27

    #@cc
    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->keyAt(I)I

    #@cf
    move-result v27

    #@d0
    move-object/from16 v0, p1

    #@d2
    move/from16 v1, v27

    #@d4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@d7
    .line 6264
    move-object/from16 v0, p0

    #@d9
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    #@db
    move-object/from16 v27, v0

    #@dd
    move-object/from16 v0, v27

    #@df
    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@e2
    move-result-object v22

    #@e3
    check-cast v22, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    #@e5
    .line 6265
    .local v22, "sensor":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    move-object/from16 v0, v22

    #@e7
    move-object/from16 v1, p1

    #@e9
    move-wide/from16 v2, p2

    #@eb
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->writeToParcelLocked(Landroid/os/Parcel;J)V

    #@ee
    .line 6262
    add-int/lit8 v15, v15, 0x1

    #@f0
    goto :goto_3

    #@f1
    .line 6268
    .end local v22    # "sensor":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    :cond_3
    move-object/from16 v0, p0

    #@f3
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    #@f5
    move-object/from16 v27, v0

    #@f7
    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->size()I

    #@fa
    move-result v5

    #@fb
    .line 6269
    .local v5, "NP":I
    move-object/from16 v0, p1

    #@fd
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@100
    .line 6270
    const/4 v13, 0x0

    #@101
    .local v13, "ip":I
    :goto_4
    if-ge v13, v5, :cond_4

    #@103
    .line 6271
    move-object/from16 v0, p0

    #@105
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    #@107
    move-object/from16 v27, v0

    #@109
    move-object/from16 v0, v27

    #@10b
    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@10e
    move-result-object v27

    #@10f
    check-cast v27, Ljava/lang/String;

    #@111
    move-object/from16 v0, p1

    #@113
    move-object/from16 v1, v27

    #@115
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@118
    .line 6272
    move-object/from16 v0, p0

    #@11a
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    #@11c
    move-object/from16 v27, v0

    #@11e
    move-object/from16 v0, v27

    #@120
    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@123
    move-result-object v21

    #@124
    check-cast v21, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    #@126
    .line 6273
    .local v21, "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    move-object/from16 v0, v21

    #@128
    move-object/from16 v1, p1

    #@12a
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->writeToParcelLocked(Landroid/os/Parcel;)V

    #@12d
    .line 6270
    add-int/lit8 v13, v13, 0x1

    #@12f
    goto :goto_4

    #@130
    .line 6276
    .end local v21    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    :cond_4
    move-object/from16 v0, p0

    #@132
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    #@134
    move-object/from16 v27, v0

    #@136
    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->size()I

    #@139
    move-result v27

    #@13a
    move-object/from16 v0, p1

    #@13c
    move/from16 v1, v27

    #@13e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@141
    .line 6277
    move-object/from16 v0, p0

    #@143
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    #@145
    move-object/from16 v27, v0

    #@147
    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    #@14a
    move-result-object v27

    #@14b
    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14e
    move-result-object v20

    #@14f
    .local v20, "pkgEntry$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    #@152
    move-result v27

    #@153
    if-eqz v27, :cond_5

    #@155
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@158
    move-result-object v19

    #@159
    check-cast v19, Ljava/util/Map$Entry;

    #@15b
    .line 6278
    .local v19, "pkgEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@15e
    move-result-object v27

    #@15f
    check-cast v27, Ljava/lang/String;

    #@161
    move-object/from16 v0, p1

    #@163
    move-object/from16 v1, v27

    #@165
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@168
    .line 6279
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@16b
    move-result-object v18

    #@16c
    check-cast v18, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    #@16e
    .line 6280
    .local v18, "pkg":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    move-object/from16 v0, v18

    #@170
    move-object/from16 v1, p1

    #@172
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->writeToParcelLocked(Landroid/os/Parcel;)V

    #@175
    goto :goto_5

    #@176
    .line 6283
    .end local v18    # "pkg":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .end local v19    # "pkgEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    :cond_5
    move-object/from16 v0, p0

    #@178
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@17a
    move-object/from16 v27, v0

    #@17c
    if-eqz v27, :cond_6

    #@17e
    .line 6284
    const/16 v27, 0x1

    #@180
    move-object/from16 v0, p1

    #@182
    move/from16 v1, v27

    #@184
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@187
    .line 6285
    move-object/from16 v0, p0

    #@189
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@18b
    move-object/from16 v27, v0

    #@18d
    move-object/from16 v0, v27

    #@18f
    move-object/from16 v1, p1

    #@191
    move-wide/from16 v2, p2

    #@193
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    #@196
    .line 6289
    :goto_6
    move-object/from16 v0, p0

    #@198
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@19a
    move-object/from16 v27, v0

    #@19c
    if-eqz v27, :cond_7

    #@19e
    .line 6290
    const/16 v27, 0x1

    #@1a0
    move-object/from16 v0, p1

    #@1a2
    move/from16 v1, v27

    #@1a4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a7
    .line 6291
    move-object/from16 v0, p0

    #@1a9
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1ab
    move-object/from16 v27, v0

    #@1ad
    move-object/from16 v0, v27

    #@1af
    move-object/from16 v1, p1

    #@1b1
    move-wide/from16 v2, p2

    #@1b3
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    #@1b6
    .line 6295
    :goto_7
    move-object/from16 v0, p0

    #@1b8
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1ba
    move-object/from16 v27, v0

    #@1bc
    if-eqz v27, :cond_8

    #@1be
    .line 6296
    const/16 v27, 0x1

    #@1c0
    move-object/from16 v0, p1

    #@1c2
    move/from16 v1, v27

    #@1c4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1c7
    .line 6297
    move-object/from16 v0, p0

    #@1c9
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1cb
    move-object/from16 v27, v0

    #@1cd
    move-object/from16 v0, v27

    #@1cf
    move-object/from16 v1, p1

    #@1d1
    move-wide/from16 v2, p2

    #@1d3
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    #@1d6
    .line 6301
    :goto_8
    const/4 v11, 0x0

    #@1d7
    .local v11, "i":I
    :goto_9
    const/16 v27, 0x5

    #@1d9
    move/from16 v0, v27

    #@1db
    if-ge v11, v0, :cond_a

    #@1dd
    .line 6302
    move-object/from16 v0, p0

    #@1df
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1e1
    move-object/from16 v27, v0

    #@1e3
    aget-object v27, v27, v11

    #@1e5
    if-eqz v27, :cond_9

    #@1e7
    .line 6303
    const/16 v27, 0x1

    #@1e9
    move-object/from16 v0, p1

    #@1eb
    move/from16 v1, v27

    #@1ed
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1f0
    .line 6304
    move-object/from16 v0, p0

    #@1f2
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1f4
    move-object/from16 v27, v0

    #@1f6
    aget-object v27, v27, v11

    #@1f8
    move-object/from16 v0, v27

    #@1fa
    move-object/from16 v1, p1

    #@1fc
    move-wide/from16 v2, p2

    #@1fe
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    #@201
    .line 6301
    :goto_a
    add-int/lit8 v11, v11, 0x1

    #@203
    goto :goto_9

    #@204
    .line 6287
    .end local v11    # "i":I
    :cond_6
    const/16 v27, 0x0

    #@206
    move-object/from16 v0, p1

    #@208
    move/from16 v1, v27

    #@20a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@20d
    goto :goto_6

    #@20e
    .line 6293
    :cond_7
    const/16 v27, 0x0

    #@210
    move-object/from16 v0, p1

    #@212
    move/from16 v1, v27

    #@214
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@217
    goto :goto_7

    #@218
    .line 6299
    :cond_8
    const/16 v27, 0x0

    #@21a
    move-object/from16 v0, p1

    #@21c
    move/from16 v1, v27

    #@21e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@221
    goto :goto_8

    #@222
    .line 6306
    .restart local v11    # "i":I
    :cond_9
    const/16 v27, 0x0

    #@224
    move-object/from16 v0, p1

    #@226
    move/from16 v1, v27

    #@228
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@22b
    goto :goto_a

    #@22c
    .line 6309
    :cond_a
    move-object/from16 v0, p0

    #@22e
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@230
    move-object/from16 v27, v0

    #@232
    if-eqz v27, :cond_b

    #@234
    .line 6310
    const/16 v27, 0x1

    #@236
    move-object/from16 v0, p1

    #@238
    move/from16 v1, v27

    #@23a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@23d
    .line 6311
    move-object/from16 v0, p0

    #@23f
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@241
    move-object/from16 v27, v0

    #@243
    move-object/from16 v0, v27

    #@245
    move-object/from16 v1, p1

    #@247
    move-wide/from16 v2, p2

    #@249
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    #@24c
    .line 6316
    :goto_b
    move-object/from16 v0, p0

    #@24e
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@250
    move-object/from16 v27, v0

    #@252
    if-eqz v27, :cond_c

    #@254
    .line 6317
    const/16 v27, 0x1

    #@256
    move-object/from16 v0, p1

    #@258
    move/from16 v1, v27

    #@25a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@25d
    .line 6318
    move-object/from16 v0, p0

    #@25f
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@261
    move-object/from16 v27, v0

    #@263
    move-object/from16 v0, v27

    #@265
    move-object/from16 v1, p1

    #@267
    move-wide/from16 v2, p2

    #@269
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    #@26c
    .line 6322
    :goto_c
    move-object/from16 v0, p0

    #@26e
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@270
    move-object/from16 v27, v0

    #@272
    if-eqz v27, :cond_d

    #@274
    .line 6323
    const/16 v27, 0x1

    #@276
    move-object/from16 v0, p1

    #@278
    move/from16 v1, v27

    #@27a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@27d
    .line 6324
    move-object/from16 v0, p0

    #@27f
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@281
    move-object/from16 v27, v0

    #@283
    move-object/from16 v0, v27

    #@285
    move-object/from16 v1, p1

    #@287
    move-wide/from16 v2, p2

    #@289
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    #@28c
    .line 6328
    :goto_d
    move-object/from16 v0, p0

    #@28e
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@290
    move-object/from16 v27, v0

    #@292
    if-eqz v27, :cond_e

    #@294
    .line 6329
    const/16 v27, 0x1

    #@296
    move-object/from16 v0, p1

    #@298
    move/from16 v1, v27

    #@29a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@29d
    .line 6330
    move-object/from16 v0, p0

    #@29f
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2a1
    move-object/from16 v27, v0

    #@2a3
    move-object/from16 v0, v27

    #@2a5
    move-object/from16 v1, p1

    #@2a7
    move-wide/from16 v2, p2

    #@2a9
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    #@2ac
    .line 6334
    :goto_e
    move-object/from16 v0, p0

    #@2ae
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2b0
    move-object/from16 v27, v0

    #@2b2
    if-eqz v27, :cond_f

    #@2b4
    .line 6335
    const/16 v27, 0x1

    #@2b6
    move-object/from16 v0, p1

    #@2b8
    move/from16 v1, v27

    #@2ba
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2bd
    .line 6336
    move-object/from16 v0, p0

    #@2bf
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2c1
    move-object/from16 v27, v0

    #@2c3
    move-object/from16 v0, v27

    #@2c5
    move-object/from16 v1, p1

    #@2c7
    move-wide/from16 v2, p2

    #@2c9
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    #@2cc
    .line 6340
    :goto_f
    move-object/from16 v0, p0

    #@2ce
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2d0
    move-object/from16 v27, v0

    #@2d2
    if-eqz v27, :cond_10

    #@2d4
    .line 6341
    const/16 v27, 0x1

    #@2d6
    move-object/from16 v0, p1

    #@2d8
    move/from16 v1, v27

    #@2da
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2dd
    .line 6342
    move-object/from16 v0, p0

    #@2df
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2e1
    move-object/from16 v27, v0

    #@2e3
    move-object/from16 v0, v27

    #@2e5
    move-object/from16 v1, p1

    #@2e7
    move-wide/from16 v2, p2

    #@2e9
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    #@2ec
    .line 6346
    :goto_10
    move-object/from16 v0, p0

    #@2ee
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2f0
    move-object/from16 v27, v0

    #@2f2
    if-eqz v27, :cond_11

    #@2f4
    .line 6347
    const/16 v27, 0x1

    #@2f6
    move-object/from16 v0, p1

    #@2f8
    move/from16 v1, v27

    #@2fa
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2fd
    .line 6348
    move-object/from16 v0, p0

    #@2ff
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@301
    move-object/from16 v27, v0

    #@303
    move-object/from16 v0, v27

    #@305
    move-object/from16 v1, p1

    #@307
    move-wide/from16 v2, p2

    #@309
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    #@30c
    .line 6352
    :goto_11
    const/4 v11, 0x0

    #@30d
    :goto_12
    const/16 v27, 0x6

    #@30f
    move/from16 v0, v27

    #@311
    if-ge v11, v0, :cond_13

    #@313
    .line 6353
    move-object/from16 v0, p0

    #@315
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@317
    move-object/from16 v27, v0

    #@319
    aget-object v27, v27, v11

    #@31b
    if-eqz v27, :cond_12

    #@31d
    .line 6354
    const/16 v27, 0x1

    #@31f
    move-object/from16 v0, p1

    #@321
    move/from16 v1, v27

    #@323
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@326
    .line 6355
    move-object/from16 v0, p0

    #@328
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@32a
    move-object/from16 v27, v0

    #@32c
    aget-object v27, v27, v11

    #@32e
    move-object/from16 v0, v27

    #@330
    move-object/from16 v1, p1

    #@332
    move-wide/from16 v2, p2

    #@334
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    #@337
    .line 6352
    :goto_13
    add-int/lit8 v11, v11, 0x1

    #@339
    goto :goto_12

    #@33a
    .line 6313
    :cond_b
    const/16 v27, 0x0

    #@33c
    move-object/from16 v0, p1

    #@33e
    move/from16 v1, v27

    #@340
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@343
    goto/16 :goto_b

    #@345
    .line 6320
    :cond_c
    const/16 v27, 0x0

    #@347
    move-object/from16 v0, p1

    #@349
    move/from16 v1, v27

    #@34b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@34e
    goto/16 :goto_c

    #@350
    .line 6326
    :cond_d
    const/16 v27, 0x0

    #@352
    move-object/from16 v0, p1

    #@354
    move/from16 v1, v27

    #@356
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@359
    goto/16 :goto_d

    #@35b
    .line 6332
    :cond_e
    const/16 v27, 0x0

    #@35d
    move-object/from16 v0, p1

    #@35f
    move/from16 v1, v27

    #@361
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@364
    goto/16 :goto_e

    #@366
    .line 6338
    :cond_f
    const/16 v27, 0x0

    #@368
    move-object/from16 v0, p1

    #@36a
    move/from16 v1, v27

    #@36c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@36f
    goto/16 :goto_f

    #@371
    .line 6344
    :cond_10
    const/16 v27, 0x0

    #@373
    move-object/from16 v0, p1

    #@375
    move/from16 v1, v27

    #@377
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@37a
    goto/16 :goto_10

    #@37c
    .line 6350
    :cond_11
    const/16 v27, 0x0

    #@37e
    move-object/from16 v0, p1

    #@380
    move/from16 v1, v27

    #@382
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@385
    goto :goto_11

    #@386
    .line 6357
    :cond_12
    const/16 v27, 0x0

    #@388
    move-object/from16 v0, p1

    #@38a
    move/from16 v1, v27

    #@38c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@38f
    goto :goto_13

    #@390
    .line 6360
    :cond_13
    move-object/from16 v0, p0

    #@392
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@394
    move-object/from16 v27, v0

    #@396
    if-eqz v27, :cond_14

    #@398
    .line 6361
    const/16 v27, 0x1

    #@39a
    move-object/from16 v0, p1

    #@39c
    move/from16 v1, v27

    #@39e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3a1
    .line 6362
    move-object/from16 v0, p0

    #@3a3
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@3a5
    move-object/from16 v27, v0

    #@3a7
    move-object/from16 v0, v27

    #@3a9
    move-object/from16 v1, p1

    #@3ab
    move-wide/from16 v2, p2

    #@3ad
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    #@3b0
    .line 6366
    :goto_14
    move-object/from16 v0, p0

    #@3b2
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@3b4
    move-object/from16 v27, v0

    #@3b6
    if-eqz v27, :cond_15

    #@3b8
    .line 6367
    const/16 v27, 0x1

    #@3ba
    move-object/from16 v0, p1

    #@3bc
    move/from16 v1, v27

    #@3be
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3c1
    .line 6368
    const/4 v11, 0x0

    #@3c2
    :goto_15
    const/16 v27, 0x4

    #@3c4
    move/from16 v0, v27

    #@3c6
    if-ge v11, v0, :cond_16

    #@3c8
    .line 6369
    move-object/from16 v0, p0

    #@3ca
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@3cc
    move-object/from16 v27, v0

    #@3ce
    aget-object v27, v27, v11

    #@3d0
    move-object/from16 v0, v27

    #@3d2
    move-object/from16 v1, p1

    #@3d4
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeToParcel(Landroid/os/Parcel;)V

    #@3d7
    .line 6368
    add-int/lit8 v11, v11, 0x1

    #@3d9
    goto :goto_15

    #@3da
    .line 6364
    :cond_14
    const/16 v27, 0x0

    #@3dc
    move-object/from16 v0, p1

    #@3de
    move/from16 v1, v27

    #@3e0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3e3
    goto :goto_14

    #@3e4
    .line 6372
    :cond_15
    const/16 v27, 0x0

    #@3e6
    move-object/from16 v0, p1

    #@3e8
    move/from16 v1, v27

    #@3ea
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3ed
    .line 6374
    :cond_16
    move-object/from16 v0, p0

    #@3ef
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@3f1
    move-object/from16 v27, v0

    #@3f3
    if-eqz v27, :cond_18

    #@3f5
    .line 6375
    const/16 v27, 0x1

    #@3f7
    move-object/from16 v0, p1

    #@3f9
    move/from16 v1, v27

    #@3fb
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3fe
    .line 6376
    const/4 v11, 0x0

    #@3ff
    :goto_16
    const/16 v27, 0x6

    #@401
    move/from16 v0, v27

    #@403
    if-ge v11, v0, :cond_17

    #@405
    .line 6377
    move-object/from16 v0, p0

    #@407
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@409
    move-object/from16 v27, v0

    #@40b
    aget-object v27, v27, v11

    #@40d
    move-object/from16 v0, v27

    #@40f
    move-object/from16 v1, p1

    #@411
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    #@414
    .line 6378
    move-object/from16 v0, p0

    #@416
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@418
    move-object/from16 v27, v0

    #@41a
    aget-object v27, v27, v11

    #@41c
    move-object/from16 v0, v27

    #@41e
    move-object/from16 v1, p1

    #@420
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    #@423
    .line 6376
    add-int/lit8 v11, v11, 0x1

    #@425
    goto :goto_16

    #@426
    .line 6380
    :cond_17
    move-object/from16 v0, p0

    #@428
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@42a
    move-object/from16 v27, v0

    #@42c
    move-object/from16 v0, v27

    #@42e
    move-object/from16 v1, p1

    #@430
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    #@433
    .line 6381
    move-object/from16 v0, p0

    #@435
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@437
    move-object/from16 v27, v0

    #@439
    move-object/from16 v0, v27

    #@43b
    move-object/from16 v1, p1

    #@43d
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    #@440
    .line 6386
    :goto_17
    move-object/from16 v0, p0

    #@442
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@444
    move-object/from16 v27, v0

    #@446
    if-eqz v27, :cond_19

    #@448
    .line 6387
    const/16 v27, 0x1

    #@44a
    move-object/from16 v0, p1

    #@44c
    move/from16 v1, v27

    #@44e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@451
    .line 6388
    move-object/from16 v0, p0

    #@453
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@455
    move-object/from16 v27, v0

    #@457
    const/16 v28, 0x0

    #@459
    move-object/from16 v0, v27

    #@45b
    move-object/from16 v1, p1

    #@45d
    move/from16 v2, v28

    #@45f
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->writeToParcel(Landroid/os/Parcel;I)V

    #@462
    .line 6393
    :goto_18
    move-object/from16 v0, p0

    #@464
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@466
    move-object/from16 v27, v0

    #@468
    if-eqz v27, :cond_1a

    #@46a
    .line 6394
    const/16 v27, 0x1

    #@46c
    move-object/from16 v0, p1

    #@46e
    move/from16 v1, v27

    #@470
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@473
    .line 6395
    move-object/from16 v0, p0

    #@475
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@477
    move-object/from16 v27, v0

    #@479
    const/16 v28, 0x0

    #@47b
    move-object/from16 v0, v27

    #@47d
    move-object/from16 v1, p1

    #@47f
    move/from16 v2, v28

    #@481
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->writeToParcel(Landroid/os/Parcel;I)V

    #@484
    .line 6400
    :goto_19
    move-object/from16 v0, p0

    #@486
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@488
    move-object/from16 v27, v0

    #@48a
    if-eqz v27, :cond_1b

    #@48c
    .line 6401
    const/16 v27, 0x1

    #@48e
    move-object/from16 v0, p1

    #@490
    move/from16 v1, v27

    #@492
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@495
    .line 6402
    move-object/from16 v0, p0

    #@497
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@499
    move-object/from16 v27, v0

    #@49b
    const/16 v28, 0x0

    #@49d
    move-object/from16 v0, v27

    #@49f
    move-object/from16 v1, p1

    #@4a1
    move/from16 v2, v28

    #@4a3
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->writeToParcel(Landroid/os/Parcel;I)V

    #@4a6
    .line 6407
    :goto_1a
    move-object/from16 v0, p0

    #@4a8
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@4aa
    move-object/from16 v27, v0

    #@4ac
    move-object/from16 v0, v27

    #@4ae
    move-object/from16 v1, p1

    #@4b0
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    #@4b3
    .line 6408
    move-object/from16 v0, p0

    #@4b5
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@4b7
    move-object/from16 v27, v0

    #@4b9
    move-object/from16 v0, v27

    #@4bb
    move-object/from16 v1, p1

    #@4bd
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    #@4c0
    .line 6409
    move-object/from16 v0, p0

    #@4c2
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@4c4
    move-object/from16 v27, v0

    #@4c6
    move-object/from16 v0, v27

    #@4c8
    move-object/from16 v1, p1

    #@4ca
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    #@4cd
    .line 6411
    move-object/from16 v0, p0

    #@4cf
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@4d1
    move-object/from16 v27, v0

    #@4d3
    if-eqz v27, :cond_1f

    #@4d5
    .line 6412
    const/16 v27, 0x1

    #@4d7
    move-object/from16 v0, p1

    #@4d9
    move/from16 v1, v27

    #@4db
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4de
    .line 6413
    move-object/from16 v0, p0

    #@4e0
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@4e2
    move-object/from16 v27, v0

    #@4e4
    move-object/from16 v0, v27

    #@4e6
    array-length v0, v0

    #@4e7
    move/from16 v27, v0

    #@4e9
    move-object/from16 v0, p1

    #@4eb
    move/from16 v1, v27

    #@4ed
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4f0
    .line 6414
    move-object/from16 v0, p0

    #@4f2
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@4f4
    move-object/from16 v29, v0

    #@4f6
    const/16 v27, 0x0

    #@4f8
    move-object/from16 v0, v29

    #@4fa
    array-length v0, v0

    #@4fb
    move/from16 v30, v0

    #@4fd
    move/from16 v28, v27

    #@4ff
    :goto_1b
    move/from16 v0, v28

    #@501
    move/from16 v1, v30

    #@503
    if-ge v0, v1, :cond_20

    #@505
    aget-object v10, v29, v28

    #@507
    .line 6415
    .local v10, "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v10, :cond_1d

    #@509
    .line 6416
    const/16 v27, 0x1

    #@50b
    move-object/from16 v0, p1

    #@50d
    move/from16 v1, v27

    #@50f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@512
    .line 6417
    array-length v0, v10

    #@513
    move/from16 v27, v0

    #@515
    move-object/from16 v0, p1

    #@517
    move/from16 v1, v27

    #@519
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@51c
    .line 6418
    const/16 v27, 0x0

    #@51e
    array-length v0, v10

    #@51f
    move/from16 v31, v0

    #@521
    :goto_1c
    move/from16 v0, v27

    #@523
    move/from16 v1, v31

    #@525
    if-ge v0, v1, :cond_1e

    #@527
    aget-object v9, v10, v27

    #@529
    .line 6419
    .local v9, "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v9, :cond_1c

    #@52b
    .line 6420
    const/16 v32, 0x1

    #@52d
    move-object/from16 v0, p1

    #@52f
    move/from16 v1, v32

    #@531
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@534
    .line 6421
    move-object/from16 v0, p1

    #@536
    invoke-virtual {v9, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    #@539
    .line 6418
    :goto_1d
    add-int/lit8 v27, v27, 0x1

    #@53b
    goto :goto_1c

    #@53c
    .line 6383
    .end local v9    # "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .end local v10    # "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_18
    const/16 v27, 0x0

    #@53e
    move-object/from16 v0, p1

    #@540
    move/from16 v1, v27

    #@542
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@545
    goto/16 :goto_17

    #@547
    .line 6390
    :cond_19
    const/16 v27, 0x0

    #@549
    move-object/from16 v0, p1

    #@54b
    move/from16 v1, v27

    #@54d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@550
    goto/16 :goto_18

    #@552
    .line 6397
    :cond_1a
    const/16 v27, 0x0

    #@554
    move-object/from16 v0, p1

    #@556
    move/from16 v1, v27

    #@558
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@55b
    goto/16 :goto_19

    #@55d
    .line 6404
    :cond_1b
    const/16 v27, 0x0

    #@55f
    move-object/from16 v0, p1

    #@561
    move/from16 v1, v27

    #@563
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@566
    goto/16 :goto_1a

    #@568
    .line 6423
    .restart local v9    # "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .restart local v10    # "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_1c
    const/16 v32, 0x0

    #@56a
    move-object/from16 v0, p1

    #@56c
    move/from16 v1, v32

    #@56e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@571
    goto :goto_1d

    #@572
    .line 6427
    .end local v9    # "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_1d
    const/16 v27, 0x0

    #@574
    move-object/from16 v0, p1

    #@576
    move/from16 v1, v27

    #@578
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@57b
    .line 6414
    :cond_1e
    add-int/lit8 v27, v28, 0x1

    #@57d
    move/from16 v28, v27

    #@57f
    goto :goto_1b

    #@580
    .line 6431
    .end local v10    # "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_1f
    const/16 v27, 0x0

    #@582
    move-object/from16 v0, p1

    #@584
    move/from16 v1, v27

    #@586
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@589
    .line 6434
    :cond_20
    move-object/from16 v0, p0

    #@58b
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@58d
    move-object/from16 v27, v0

    #@58f
    if-eqz v27, :cond_21

    #@591
    .line 6435
    const/16 v27, 0x1

    #@593
    move-object/from16 v0, p1

    #@595
    move/from16 v1, v27

    #@597
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@59a
    .line 6436
    move-object/from16 v0, p0

    #@59c
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@59e
    move-object/from16 v27, v0

    #@5a0
    move-object/from16 v0, v27

    #@5a2
    move-object/from16 v1, p1

    #@5a4
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    #@5a7
    .line 6441
    :goto_1e
    move-object/from16 v0, p0

    #@5a9
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@5ab
    move-object/from16 v27, v0

    #@5ad
    if-eqz v27, :cond_22

    #@5af
    .line 6442
    const/16 v27, 0x1

    #@5b1
    move-object/from16 v0, p1

    #@5b3
    move/from16 v1, v27

    #@5b5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5b8
    .line 6443
    move-object/from16 v0, p0

    #@5ba
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@5bc
    move-object/from16 v27, v0

    #@5be
    move-object/from16 v0, v27

    #@5c0
    move-object/from16 v1, p1

    #@5c2
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    #@5c5
    .line 6232
    :goto_1f
    return-void

    #@5c6
    .line 6438
    :cond_21
    const/16 v27, 0x0

    #@5c8
    move-object/from16 v0, p1

    #@5ca
    move/from16 v1, v27

    #@5cc
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5cf
    goto :goto_1e

    #@5d0
    .line 6445
    :cond_22
    const/16 v27, 0x0

    #@5d2
    move-object/from16 v0, p1

    #@5d4
    move/from16 v1, v27

    #@5d6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5d9
    goto :goto_1f
.end method
