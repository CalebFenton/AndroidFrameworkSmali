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

.field mWifiRunning:Z

.field mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mWifiScanStarted:Z

.field mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;


# direct methods
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
    .line 4989
    invoke-direct {p0}, Landroid/os/BatteryStats$Uid;-><init>()V

    #@6
    .line 4898
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    #@8
    .line 4911
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    #@a
    .line 4972
    new-instance v0, Landroid/util/SparseArray;

    #@c
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    #@11
    .line 4977
    new-instance v0, Landroid/util/ArrayMap;

    #@13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    #@18
    .line 4982
    new-instance v0, Landroid/util/ArrayMap;

    #@1a
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@1d
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    #@1f
    .line 4987
    new-instance v0, Landroid/util/SparseArray;

    #@21
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@24
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    #@26
    .line 4990
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@28
    .line 4991
    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    #@2a
    .line 4993
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
    .line 4994
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
    .line 4995
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
    .line 4997
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$1;

    #@4d
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@4f
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@52
    invoke-direct {v0, p0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$1;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;Lcom/android/internal/os/BatteryStatsImpl;)V

    #@55
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@57
    .line 5002
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$2;

    #@59
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@5b
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5e
    invoke-direct {v0, p0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$2;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;Lcom/android/internal/os/BatteryStatsImpl;)V

    #@61
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@63
    .line 5008
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$3;

    #@65
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@67
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@6a
    invoke-direct {v0, p0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$3;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;Lcom/android/internal/os/BatteryStatsImpl;)V

    #@6d
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@6f
    .line 5015
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@71
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@73
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@75
    .line 5016
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@77
    iget-object v4, v2, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    #@79
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@7b
    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@7d
    .line 5015
    const/4 v3, 0x4

    #@7e
    move-object v2, p0

    #@7f
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@82
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@84
    .line 5017
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@86
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@88
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@8a
    .line 5018
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
    .line 5017
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@97
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@99
    .line 5019
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@9b
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@9d
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@9f
    .line 5020
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
    .line 5019
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@ac
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@ae
    .line 5021
    new-array v0, v6, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@b0
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@b2
    .line 5022
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@b4
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@b6
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@b8
    .line 5023
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@ba
    iget-object v4, v2, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    #@bc
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@be
    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@c0
    .line 5022
    const/4 v3, 0x7

    #@c1
    move-object v2, p0

    #@c2
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@c5
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@c7
    .line 5024
    new-array v0, v7, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@c9
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@cb
    .line 4989
    return-void
.end method


# virtual methods
.method public createAudioTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 6

    #@0
    .prologue
    .line 5212
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5213
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@a
    .line 5214
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@c
    iget-object v4, v2, Lcom/android/internal/os/BatteryStatsImpl;->mAudioTurnedOnTimers:Ljava/util/ArrayList;

    #@e
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@10
    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@12
    .line 5213
    const/16 v3, 0xf

    #@14
    move-object v2, p0

    #@15
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@18
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1a
    .line 5216
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1c
    return-object v0
.end method

.method public createBluetoothScanTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 6

    #@0
    .prologue
    .line 5316
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5317
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@a
    .line 5318
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@c
    iget-object v4, v2, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothScanOnTimers:Ljava/util/ArrayList;

    #@e
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@10
    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@12
    .line 5317
    const/16 v3, 0x13

    #@14
    move-object v2, p0

    #@15
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@18
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1a
    .line 5320
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1c
    return-object v0
.end method

.method public createCameraTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 6

    #@0
    .prologue
    .line 5284
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5285
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@a
    .line 5286
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@c
    iget-object v4, v2, Lcom/android/internal/os/BatteryStatsImpl;->mCameraTurnedOnTimers:Ljava/util/ArrayList;

    #@e
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@10
    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@12
    .line 5285
    const/16 v3, 0x11

    #@14
    move-object v2, p0

    #@15
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@18
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1a
    .line 5288
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1c
    return-object v0
.end method

.method public createFlashlightTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 6

    #@0
    .prologue
    .line 5260
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5261
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@a
    .line 5262
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
    .line 5261
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@18
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1a
    .line 5264
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
    .line 5308
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 5309
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@7
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@9
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@b
    .line 5310
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@d
    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@f
    const/16 v3, 0xa

    #@11
    move-object v2, p0

    #@12
    .line 5309
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@15
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@17
    .line 5312
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@19
    return-object v0
.end method

.method public createVibratorOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;
    .locals 4

    #@0
    .prologue
    .line 5353
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5354
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@6
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@a
    .line 5355
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@c
    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@e
    .line 5354
    const/16 v3, 0x9

    #@10
    invoke-direct {v0, v1, p0, v3, v2}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@13
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@15
    .line 5357
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@17
    return-object v0
.end method

.method public createVideoTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 6

    #@0
    .prologue
    .line 5236
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5237
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@a
    .line 5238
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@c
    iget-object v4, v2, Lcom/android/internal/os/BatteryStatsImpl;->mVideoTurnedOnTimers:Ljava/util/ArrayList;

    #@e
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@10
    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@12
    .line 5237
    const/16 v3, 0x8

    #@14
    move-object v2, p0

    #@15
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@18
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1a
    .line 5240
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1c
    return-object v0
.end method

.method public bridge synthetic getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    #@0
    .prologue
    .line 5429
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
    .line 5430
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    return-object v0
.end method

.method public getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;
    .locals 1

    #@0
    .prologue
    .line 7498
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@2
    return-object v0
.end method

.method public getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .locals 1

    #@0
    .prologue
    .line 5179
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@2
    return-object v0
.end method

.method public bridge synthetic getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    #@0
    .prologue
    .line 5454
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
    .line 5455
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    return-object v0
.end method

.method public bridge synthetic getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    #@0
    .prologue
    .line 5444
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
    .line 5445
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    return-object v0
.end method

.method public getCpuPowerMaUs(I)J
    .locals 2
    .param p1, "which"    # I

    #@0
    .prologue
    .line 5611
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
    .line 5439
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
    .line 5440
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    return-object v0
.end method

.method public bridge synthetic getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    #@0
    .prologue
    .line 5449
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
    .line 5450
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
    .line 5380
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5381
    const-wide/16 v0, 0x0

    #@6
    return-wide v0

    #@7
    .line 5383
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
    .line 5039
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
    .line 5595
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5596
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    #@9
    move-result-wide v0

    #@a
    long-to-int v0, v0

    #@b
    .line 5595
    :goto_0
    return v0

    #@c
    .line 5596
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
    .line 5589
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5590
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    #@9
    move-result-wide v0

    #@a
    .line 5589
    :goto_0
    return-wide v0

    #@b
    .line 5590
    :cond_0
    const-wide/16 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .locals 1

    #@0
    .prologue
    .line 5184
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
    .line 5569
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2
    if-eqz v0, :cond_0

    #@4
    if-ltz p1, :cond_0

    #@6
    .line 5570
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@8
    array-length v0, v0

    #@9
    if-ge p1, v0, :cond_0

    #@b
    .line 5571
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
    .line 5573
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
    .line 5579
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2
    if-eqz v0, :cond_0

    #@4
    if-ltz p1, :cond_0

    #@6
    .line 5580
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@8
    array-length v0, v0

    #@9
    if-ge p1, v0, :cond_0

    #@b
    .line 5581
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
    .line 5583
    :cond_0
    const-wide/16 v0, 0x0

    #@16
    return-wide v0
.end method

.method public getOrCreateBluetoothControllerActivityLocked()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;
    .locals 3

    #@0
    .prologue
    .line 5196
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5197
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@6
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@a
    .line 5198
    const/4 v2, 0x1

    #@b
    .line 5197
    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;I)V

    #@e
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@10
    .line 5200
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@12
    return-object v0
.end method

.method public getOrCreateModemControllerActivityLocked()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;
    .locals 3

    #@0
    .prologue
    .line 5204
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5205
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@6
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@a
    .line 5206
    const/4 v2, 0x5

    #@b
    .line 5205
    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;I)V

    #@e
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@10
    .line 5208
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@12
    return-object v0
.end method

.method public getOrCreateWifiControllerActivityLocked()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;
    .locals 3

    #@0
    .prologue
    .line 5188
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5189
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@6
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@a
    .line 5190
    const/4 v2, 0x1

    #@b
    .line 5189
    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;I)V

    #@e
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@10
    .line 5192
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
    .line 5054
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    #@2
    return-object v0
.end method

.method public getPackageStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 7320
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    #@8
    .line 7321
    .local v0, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    if-nez v0, :cond_0

    #@a
    .line 7322
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    #@c
    .end local v0    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@e
    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;-><init>(Lcom/android/internal/os/BatteryStatsImpl;)V

    #@11
    .line 7323
    .restart local v0    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    #@13
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    .line 7326
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
    .line 7303
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method public getPidStatsLocked(I)Landroid/os/BatteryStats$Uid$Pid;
    .locals 2
    .param p1, "pid"    # I

    #@0
    .prologue
    .line 7307
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/os/BatteryStats$Uid$Pid;

    #@8
    .line 7308
    .local v0, "p":Landroid/os/BatteryStats$Uid$Pid;
    if-nez v0, :cond_0

    #@a
    .line 7309
    new-instance v0, Landroid/os/BatteryStats$Uid$Pid;

    #@c
    .end local v0    # "p":Landroid/os/BatteryStats$Uid$Pid;
    invoke-direct {v0, p0}, Landroid/os/BatteryStats$Uid$Pid;-><init>(Landroid/os/BatteryStats$Uid;)V

    #@f
    .line 7310
    .restart local v0    # "p":Landroid/os/BatteryStats$Uid$Pid;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@14
    .line 7312
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
    .line 5472
    if-ltz p1, :cond_0

    #@4
    const/4 v0, 0x6

    #@5
    if-lt p1, v0, :cond_1

    #@7
    :cond_0
    return-wide v2

    #@8
    .line 5473
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@a
    aget-object v0, v0, p1

    #@c
    if-nez v0, :cond_2

    #@e
    .line 5474
    return-wide v2

    #@f
    .line 5476
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
    .line 5480
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
    .line 5481
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
    .line 5482
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
    .line 5049
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    #@2
    return-object v0
.end method

.method public getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 7257
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    #@8
    .line 7258
    .local v0, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-nez v0, :cond_0

    #@a
    .line 7259
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    #@c
    .end local v0    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@e
    invoke-direct {v0, v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Ljava/lang/String;)V

    #@11
    .line 7260
    .restart local v0    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    #@13
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    .line 7263
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
    .line 5044
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
    .line 7374
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v6

    #@7
    check-cast v6, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    #@9
    .line 7375
    .local v6, "se":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    if-nez v6, :cond_1

    #@b
    .line 7376
    if-nez p2, :cond_0

    #@d
    .line 7377
    return-object v2

    #@e
    .line 7379
    :cond_0
    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    #@10
    .end local v6    # "se":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@12
    invoke-direct {v6, v1, p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/BatteryStatsImpl$Uid;I)V

    #@15
    .line 7380
    .restart local v6    # "se":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    #@17
    invoke-virtual {v1, p1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1a
    .line 7382
    :cond_1
    iget-object v0, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1c
    .line 7383
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_2

    #@1e
    .line 7384
    return-object v0

    #@1f
    .line 7386
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
    .line 7387
    .local v4, "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    if-nez v4, :cond_3

    #@2b
    .line 7388
    new-instance v4, Ljava/util/ArrayList;

    #@2d
    .end local v4    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@30
    .line 7389
    .restart local v4    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@32
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    #@34
    invoke-virtual {v1, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@37
    .line 7391
    :cond_3
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@39
    .end local v0    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@3b
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@3d
    .line 7392
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@3f
    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@41
    .line 7391
    const/4 v3, 0x3

    #@42
    move-object v2, p0

    #@43
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@46
    .line 7393
    .restart local v0    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iput-object v0, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@48
    .line 7394
    return-object v0
.end method

.method public getServiceStatsLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "serv"    # Ljava/lang/String;

    #@0
    .prologue
    .line 7334
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getPackageStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    #@3
    move-result-object v0

    #@4
    .line 7335
    .local v0, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    #@c
    .line 7336
    .local v1, "ss":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    if-nez v1, :cond_0

    #@e
    .line 7337
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->newServiceStatsLocked()Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    #@11
    move-result-object v1

    #@12
    .line 7338
    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    #@14
    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 7341
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
    .line 5034
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
    .line 5606
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
    .line 5616
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 5617
    if-ltz p1, :cond_0

    #@6
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@8
    array-length v2, v2

    #@9
    if-ge p1, v2, :cond_0

    #@b
    .line 5618
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@d
    aget-object v1, v2, p1

    #@f
    .line 5619
    .local v1, "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v1, :cond_0

    #@11
    .line 5620
    if-ltz p2, :cond_0

    #@13
    array-length v2, v1

    #@14
    if-ge p2, v2, :cond_0

    #@16
    .line 5621
    aget-object v0, v1, p2

    #@18
    .line 5622
    .local v0, "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v0, :cond_0

    #@1a
    .line 5623
    invoke-virtual {v0, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    #@1d
    move-result-wide v2

    #@1e
    return-wide v2

    #@1f
    .line 5629
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
    .line 5059
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
    .line 5510
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5511
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 5513
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
    .line 5601
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
    .line 5486
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
    .line 5487
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@2
    return-object v0
.end method

.method public bridge synthetic getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    #@0
    .prologue
    .line 5434
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
    .line 5435
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
    .line 5029
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
    .line 5413
    if-ltz p1, :cond_0

    #@3
    const/4 v0, 0x5

    #@4
    if-lt p1, v0, :cond_1

    #@6
    :cond_0
    return v1

    #@7
    .line 5414
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@9
    aget-object v0, v0, p1

    #@b
    if-nez v0, :cond_2

    #@d
    .line 5415
    return v1

    #@e
    .line 5417
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
    .line 5404
    if-ltz p1, :cond_0

    #@4
    const/4 v0, 0x5

    #@5
    if-lt p1, v0, :cond_1

    #@7
    :cond_0
    return-wide v2

    #@8
    .line 5405
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@a
    aget-object v0, v0, p1

    #@c
    if-nez v0, :cond_2

    #@e
    .line 5406
    return-wide v2

    #@f
    .line 5408
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
    .line 5174
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
    .line 5422
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5423
    const-wide/16 v0, 0x0

    #@6
    return-wide v0

    #@7
    .line 5425
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@9
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    #@c
    move-result-wide v0

    #@d
    return-wide v0
.end method

.method public getWifiRunningTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    #@0
    .prologue
    .line 5372
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5373
    const-wide/16 v0, 0x0

    #@6
    return-wide v0

    #@7
    .line 5375
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
    .line 5396
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5397
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 5399
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
    .line 5388
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5389
    const-wide/16 v0, 0x0

    #@6
    return-wide v0

    #@7
    .line 5391
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
    .line 5564
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
    .line 5505
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
    .line 5633
    new-array v1, v4, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@3
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@5
    .line 5634
    new-array v1, v4, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@7
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@9
    .line 5635
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    #@c
    .line 5636
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
    .line 5637
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
    .line 5635
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_0

    #@29
    .line 5639
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
    .line 5640
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
    .line 5632
    return-void
.end method

.method initUserActivityLocked()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x4

    #@1
    .line 5535
    new-array v1, v4, [Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@3
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@5
    .line 5536
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    #@8
    .line 5537
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
    .line 5536
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 5534
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
    .line 5459
    if-ltz p1, :cond_0

    #@5
    const/4 v0, 0x6

    #@6
    if-lt p1, v0, :cond_1

    #@8
    :cond_0
    return-void

    #@9
    .line 5461
    :cond_1
    if-nez p2, :cond_2

    #@b
    .line 5462
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@d
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@f
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@11
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@13
    .line 5463
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@15
    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@17
    move-object v2, p0

    #@18
    .line 5462
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@1b
    aput-object v0, v6, p1

    #@1d
    .line 5458
    :goto_0
    return-void

    #@1e
    .line 5465
    :cond_2
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@20
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@22
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@24
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@26
    .line 5466
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@28
    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@2a
    move-object v2, p0

    #@2b
    move-object v6, p2

    #@2c
    .line 5465
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
    .line 5517
    if-ltz p1, :cond_0

    #@4
    const/4 v0, 0x5

    #@5
    if-lt p1, v0, :cond_1

    #@7
    :cond_0
    return-void

    #@8
    .line 5519
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
    .line 5520
    .local v4, "collected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    if-nez v4, :cond_2

    #@14
    .line 5521
    new-instance v4, Ljava/util/ArrayList;

    #@16
    .end local v4    # "collected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@19
    .line 5522
    .restart local v4    # "collected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@1b
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiBatchedScanTimers:Landroid/util/SparseArray;

    #@1d
    invoke-virtual {v0, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@20
    .line 5524
    :cond_2
    if-nez p2, :cond_3

    #@22
    .line 5525
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@24
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@26
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@28
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@2a
    .line 5526
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@2c
    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@2e
    move-object v2, p0

    #@2f
    .line 5525
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@32
    aput-object v0, v6, p1

    #@34
    .line 5516
    :goto_0
    return-void

    #@35
    .line 5528
    :cond_3
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@37
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@39
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@3b
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@3d
    .line 5529
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@3f
    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@41
    move-object v2, p0

    #@42
    move-object v6, p2

    #@43
    .line 5528
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
    .line 5347
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5348
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@9
    .line 5346
    :cond_0
    return-void
.end method

.method public noteActivityResumedLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 5342
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createForegroundActivityTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@7
    .line 5340
    return-void
.end method

.method public noteAudioTurnedOffLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 5224
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5225
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@9
    .line 5223
    :cond_0
    return-void
.end method

.method public noteAudioTurnedOnLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 5220
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createAudioTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@7
    .line 5219
    return-void
.end method

.method public noteBluetoothScanStartedLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 5324
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createBluetoothScanTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@7
    .line 5323
    return-void
.end method

.method public noteBluetoothScanStoppedLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 5328
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5329
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@9
    .line 5327
    :cond_0
    return-void
.end method

.method public noteCameraTurnedOffLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 5296
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5297
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@9
    .line 5295
    :cond_0
    return-void
.end method

.method public noteCameraTurnedOnLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 5292
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createCameraTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@7
    .line 5291
    return-void
.end method

.method public noteFlashlightTurnedOffLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 5272
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5273
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@9
    .line 5271
    :cond_0
    return-void
.end method

.method public noteFlashlightTurnedOnLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 5268
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createFlashlightTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@7
    .line 5267
    return-void
.end method

.method public noteFullWifiLockAcquiredLocked(J)V
    .locals 7
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 5084
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    #@2
    if-nez v0, :cond_1

    #@4
    .line 5085
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    #@7
    .line 5086
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 5087
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@d
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@f
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@11
    .line 5088
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@13
    iget-object v4, v2, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    #@15
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@17
    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@19
    .line 5087
    const/4 v3, 0x5

    #@1a
    move-object v2, p0

    #@1b
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@1e
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@20
    .line 5090
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@22
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@25
    .line 5083
    :cond_1
    return-void
.end method

.method public noteFullWifiLockReleasedLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 5096
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5097
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    #@7
    .line 5098
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@9
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@c
    .line 5095
    :cond_0
    return-void
.end method

.method noteMobileRadioActiveTimeLocked(J)V
    .locals 5
    .param p1, "batteryUptime"    # J

    #@0
    .prologue
    .line 5555
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5556
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->initNetworkActivityLocked()V

    #@7
    .line 5558
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@9
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    #@c
    .line 5559
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@e
    const-wide/16 v2, 0x1

    #@10
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    #@13
    .line 5554
    return-void
.end method

.method noteNetworkActivityLocked(IJJ)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "deltaBytes"    # J
    .param p4, "deltaPackets"    # J

    #@0
    .prologue
    .line 5542
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5543
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->initNetworkActivityLocked()V

    #@7
    .line 5545
    :cond_0
    if-ltz p1, :cond_1

    #@9
    const/4 v0, 0x6

    #@a
    if-ge p1, v0, :cond_1

    #@c
    .line 5546
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@e
    aget-object v0, v0, p1

    #@10
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    #@13
    .line 5547
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@15
    aget-object v0, v0, p1

    #@17
    invoke-virtual {v0, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    #@1a
    .line 5541
    :goto_0
    return-void

    #@1b
    .line 5549
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
    .line 5550
    new-instance v2, Ljava/lang/Throwable;

    #@3b
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    #@3e
    .line 5549
    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@41
    goto :goto_0
.end method

.method public noteResetAudioLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 5230
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5231
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    #@9
    .line 5229
    :cond_0
    return-void
.end method

.method public noteResetBluetoothScanLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 5334
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5335
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    #@9
    .line 5333
    :cond_0
    return-void
.end method

.method public noteResetCameraLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 5302
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5303
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    #@9
    .line 5301
    :cond_0
    return-void
.end method

.method public noteResetFlashlightLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 5278
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5279
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    #@9
    .line 5277
    :cond_0
    return-void
.end method

.method public noteResetVideoLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 5254
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5255
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    #@9
    .line 5253
    :cond_0
    return-void
.end method

.method public noteStartGps(J)V
    .locals 3
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 7484
    const/16 v1, -0x2710

    #@2
    const/4 v2, 0x1

    #@3
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    move-result-object v0

    #@7
    .line 7485
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    #@9
    .line 7486
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@c
    .line 7483
    :cond_0
    return-void
.end method

.method public noteStartJobLocked(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 7412
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@2
    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->startObject(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@8
    .line 7413
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    #@a
    .line 7414
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@d
    .line 7411
    :cond_0
    return-void
.end method

.method public noteStartSensor(IJ)V
    .locals 2
    .param p1, "sensor"    # I
    .param p2, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 7469
    const/4 v1, 0x1

    #@1
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@4
    move-result-object v0

    #@5
    .line 7470
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    #@7
    .line 7471
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@a
    .line 7468
    :cond_0
    return-void
.end method

.method public noteStartSyncLocked(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 7398
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@2
    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->startObject(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@8
    .line 7399
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    #@a
    .line 7400
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@d
    .line 7397
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
    .line 7426
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@2
    invoke-virtual {v2, p2}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->startObject(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    #@8
    .line 7427
    .local v1, "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    if-eqz v1, :cond_0

    #@a
    .line 7428
    invoke-virtual {v1, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->getStopwatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@11
    .line 7430
    :cond_0
    if-ltz p1, :cond_1

    #@13
    if-nez p3, :cond_1

    #@15
    .line 7431
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getPidStatsLocked(I)Landroid/os/BatteryStats$Uid$Pid;

    #@18
    move-result-object v0

    #@19
    .line 7432
    .local v0, "p":Landroid/os/BatteryStats$Uid$Pid;
    iget v2, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    #@1b
    add-int/lit8 v3, v2, 0x1

    #@1d
    iput v3, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    #@1f
    if-nez v2, :cond_1

    #@21
    .line 7433
    iput-wide p4, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    #@23
    .line 7425
    .end local v0    # "p":Landroid/os/BatteryStats$Uid$Pid;
    :cond_1
    return-void
.end method

.method public noteStopGps(J)V
    .locals 3
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 7491
    const/16 v1, -0x2710

    #@2
    const/4 v2, 0x0

    #@3
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    move-result-object v0

    #@7
    .line 7492
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    #@9
    .line 7493
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@c
    .line 7490
    :cond_0
    return-void
.end method

.method public noteStopJobLocked(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 7419
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@2
    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->stopObject(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@8
    .line 7420
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    #@a
    .line 7421
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@d
    .line 7418
    :cond_0
    return-void
.end method

.method public noteStopSensor(IJ)V
    .locals 2
    .param p1, "sensor"    # I
    .param p2, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 7477
    const/4 v1, 0x0

    #@1
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@4
    move-result-object v0

    #@5
    .line 7478
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    #@7
    .line 7479
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@a
    .line 7475
    :cond_0
    return-void
.end method

.method public noteStopSyncLocked(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 7405
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@2
    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->stopObject(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@8
    .line 7406
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    #@a
    .line 7407
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@d
    .line 7404
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
    .line 7439
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@2
    invoke-virtual {v2, p2}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->stopObject(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    #@8
    .line 7440
    .local v1, "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    if-eqz v1, :cond_0

    #@a
    .line 7441
    invoke-virtual {v1, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->getStopwatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@11
    .line 7443
    :cond_0
    if-ltz p1, :cond_1

    #@13
    if-nez p3, :cond_1

    #@15
    .line 7444
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    #@17
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Landroid/os/BatteryStats$Uid$Pid;

    #@1d
    .line 7445
    .local v0, "p":Landroid/os/BatteryStats$Uid$Pid;
    if-eqz v0, :cond_1

    #@1f
    iget v2, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    #@21
    if-lez v2, :cond_1

    #@23
    .line 7446
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
    .line 7447
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
    .line 7448
    const-wide/16 v2, 0x0

    #@37
    iput-wide v2, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    #@39
    .line 7438
    .end local v0    # "p":Landroid/os/BatteryStats$Uid$Pid;
    :cond_1
    return-void
.end method

.method public noteUserActivityLocked(I)V
    .locals 3
    .param p1, "type"    # I

    #@0
    .prologue
    .line 5492
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5493
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->initUserActivityLocked()V

    #@7
    .line 5495
    :cond_0
    if-ltz p1, :cond_1

    #@9
    const/4 v0, 0x4

    #@a
    if-ge p1, v0, :cond_1

    #@c
    .line 5496
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@e
    aget-object v0, v0, p1

    #@10
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->stepAtomic()V

    #@13
    .line 5491
    :goto_0
    return-void

    #@14
    .line 5498
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
    .line 5499
    new-instance v2, Ljava/lang/Throwable;

    #@34
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    #@37
    .line 5498
    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3a
    goto :goto_0
.end method

.method public noteVibratorOffLocked()V
    .locals 2

    #@0
    .prologue
    .line 5365
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5366
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@6
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->abortLastDuration(Lcom/android/internal/os/BatteryStatsImpl;)V

    #@b
    .line 5364
    :cond_0
    return-void
.end method

.method public noteVibratorOnLocked(J)V
    .locals 3
    .param p1, "durationMillis"    # J

    #@0
    .prologue
    .line 5361
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createVibratorOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@6
    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->addDuration(Lcom/android/internal/os/BatteryStatsImpl;J)V

    #@9
    .line 5360
    return-void
.end method

.method public noteVideoTurnedOffLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 5248
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5249
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@9
    .line 5247
    :cond_0
    return-void
.end method

.method public noteVideoTurnedOnLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 5244
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createVideoTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@7
    .line 5243
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
    .line 5124
    const/4 v0, 0x0

    #@2
    .line 5125
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
    .line 5126
    shr-int/lit8 p1, p1, 0x3

    #@b
    .line 5127
    add-int/lit8 v0, v0, 0x1

    #@d
    goto :goto_0

    #@e
    .line 5130
    :cond_0
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    #@10
    if-ne v1, v0, :cond_1

    #@12
    return-void

    #@13
    .line 5132
    :cond_1
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    #@15
    const/4 v2, -0x1

    #@16
    if-eq v1, v2, :cond_2

    #@18
    .line 5133
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1a
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    #@1c
    aget-object v1, v1, v2

    #@1e
    invoke-virtual {v1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@21
    .line 5136
    :cond_2
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    #@23
    .line 5137
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@25
    aget-object v1, v1, v0

    #@27
    if-nez v1, :cond_3

    #@29
    .line 5138
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeWifiBatchedScanBin(ILandroid/os/Parcel;)V

    #@2c
    .line 5140
    :cond_3
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2e
    aget-object v1, v1, v0

    #@30
    invoke-virtual {v1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@33
    .line 5123
    return-void
.end method

.method public noteWifiBatchedScanStoppedLocked(J)V
    .locals 3
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 5145
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    #@3
    if-eq v0, v2, :cond_0

    #@5
    .line 5146
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@7
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    #@9
    aget-object v0, v0, v1

    #@b
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@e
    .line 5148
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    #@10
    .line 5144
    :cond_0
    return-void
.end method

.method public noteWifiMulticastDisabledLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 5166
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5167
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    #@7
    .line 5168
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@9
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@c
    .line 5165
    :cond_0
    return-void
.end method

.method public noteWifiMulticastEnabledLocked(J)V
    .locals 7
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 5154
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    #@2
    if-nez v0, :cond_1

    #@4
    .line 5155
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    #@7
    .line 5156
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 5157
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@d
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@f
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@11
    .line 5158
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
    .line 5157
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@1e
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@20
    .line 5160
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@22
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@25
    .line 5153
    :cond_1
    return-void
.end method

.method public noteWifiRunningLocked(J)V
    .locals 7
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 5064
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    #@2
    if-nez v0, :cond_1

    #@4
    .line 5065
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    #@7
    .line 5066
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 5067
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@d
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@f
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@11
    .line 5068
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@13
    iget-object v4, v2, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    #@15
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@17
    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@19
    .line 5067
    const/4 v3, 0x4

    #@1a
    move-object v2, p0

    #@1b
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@1e
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@20
    .line 5070
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@22
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@25
    .line 5063
    :cond_1
    return-void
.end method

.method public noteWifiScanStartedLocked(J)V
    .locals 7
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 5104
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    #@2
    if-nez v0, :cond_1

    #@4
    .line 5105
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    #@7
    .line 5106
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 5107
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@d
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@f
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@11
    .line 5108
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@13
    iget-object v4, v2, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    #@15
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@17
    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@19
    .line 5107
    const/4 v3, 0x6

    #@1a
    move-object v2, p0

    #@1b
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@1e
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@20
    .line 5110
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@22
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@25
    .line 5103
    :cond_1
    return-void
.end method

.method public noteWifiScanStoppedLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 5116
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5117
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    #@7
    .line 5118
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@9
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@c
    .line 5115
    :cond_0
    return-void
.end method

.method public noteWifiStoppedLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 5076
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5077
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    #@7
    .line 5078
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@9
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@c
    .line 5075
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
    .line 6120
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v25

    #@4
    .line 6121
    .local v25, "numWakelocks":I
    move-object/from16 v0, p0

    #@6
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@8
    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->clear()V

    #@b
    .line 6122
    const/4 v14, 0x0

    #@c
    .local v14, "j":I
    :goto_0
    move/from16 v0, v25

    #@e
    if-ge v14, v0, :cond_0

    #@10
    .line 6123
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@13
    move-result-object v35

    #@14
    .line 6124
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
    .line 6125
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
    .line 6126
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
    .line 6122
    add-int/lit8 v14, v14, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 6129
    .end local v34    # "wakelock":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    .end local v35    # "wakelockName":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@3d
    move-result v24

    #@3e
    .line 6130
    .local v24, "numSyncs":I
    move-object/from16 v0, p0

    #@40
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@42
    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->clear()V

    #@45
    .line 6131
    const/4 v14, 0x0

    #@46
    :goto_1
    move/from16 v0, v24

    #@48
    if-ge v14, v0, :cond_2

    #@4a
    .line 6132
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4d
    move-result-object v33

    #@4e
    .line 6133
    .local v33, "syncName":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@51
    move-result v4

    #@52
    if-eqz v4, :cond_1

    #@54
    .line 6134
    move-object/from16 v0, p0

    #@56
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@58
    move-object/from16 v36, v0

    #@5a
    .line 6135
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
    .line 6134
    move-object/from16 v0, v36

    #@70
    move-object/from16 v1, v33

    #@72
    invoke-virtual {v0, v1, v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    #@75
    .line 6131
    :cond_1
    add-int/lit8 v14, v14, 0x1

    #@77
    goto :goto_1

    #@78
    .line 6139
    .end local v33    # "syncName":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@7b
    move-result v19

    #@7c
    .line 6140
    .local v19, "numJobs":I
    move-object/from16 v0, p0

    #@7e
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@80
    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->clear()V

    #@83
    .line 6141
    const/4 v14, 0x0

    #@84
    :goto_2
    move/from16 v0, v19

    #@86
    if-ge v14, v0, :cond_4

    #@88
    .line 6142
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8b
    move-result-object v15

    #@8c
    .line 6143
    .local v15, "jobName":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@8f
    move-result v4

    #@90
    if-eqz v4, :cond_3

    #@92
    .line 6144
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
    .line 6141
    :cond_3
    add-int/lit8 v14, v14, 0x1

    #@b3
    goto :goto_2

    #@b4
    .line 6149
    .end local v15    # "jobName":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@b7
    move-result v22

    #@b8
    .line 6150
    .local v22, "numSensors":I
    move-object/from16 v0, p0

    #@ba
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    #@bc
    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    #@bf
    .line 6151
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
    .line 6152
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@ca
    move-result v31

    #@cb
    .line 6153
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
    .line 6154
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
    .line 6155
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
    .line 6151
    add-int/lit8 v16, v16, 0x1

    #@f4
    goto :goto_3

    #@f5
    .line 6158
    .end local v30    # "sensor":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    .end local v31    # "sensorNumber":I
    :cond_5
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@f8
    move-result v21

    #@f9
    .line 6159
    .local v21, "numProcs":I
    move-object/from16 v0, p0

    #@fb
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    #@fd
    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    #@100
    .line 6160
    const/16 v16, 0x0

    #@102
    :goto_4
    move/from16 v0, v16

    #@104
    move/from16 v1, v21

    #@106
    if-ge v0, v1, :cond_6

    #@108
    .line 6161
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@10b
    move-result-object v29

    #@10c
    .line 6162
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
    .line 6163
    .local v28, "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    move-object/from16 v0, v28

    #@11b
    move-object/from16 v1, p3

    #@11d
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->readFromParcelLocked(Landroid/os/Parcel;)V

    #@120
    .line 6164
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
    .line 6160
    add-int/lit8 v16, v16, 0x1

    #@12d
    goto :goto_4

    #@12e
    .line 6167
    .end local v28    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .end local v29    # "processName":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@131
    move-result v20

    #@132
    .line 6168
    .local v20, "numPkgs":I
    move-object/from16 v0, p0

    #@134
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    #@136
    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    #@139
    .line 6169
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
    .line 6170
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@144
    move-result-object v26

    #@145
    .line 6171
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
    .line 6172
    .local v27, "pkg":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    move-object/from16 v0, v27

    #@152
    move-object/from16 v1, p3

    #@154
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->readFromParcelLocked(Landroid/os/Parcel;)V

    #@157
    .line 6173
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
    .line 6169
    add-int/lit8 v17, v17, 0x1

    #@164
    goto :goto_5

    #@165
    .line 6176
    .end local v26    # "packageName":Ljava/lang/String;
    .end local v27    # "pkg":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    :cond_7
    const/4 v4, 0x0

    #@166
    move-object/from16 v0, p0

    #@168
    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    #@16a
    .line 6177
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@16d
    move-result v4

    #@16e
    if-eqz v4, :cond_8

    #@170
    .line 6178
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@172
    move-object/from16 v0, p0

    #@174
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@176
    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@178
    .line 6179
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
    .line 6178
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
    .line 6183
    :goto_6
    const/4 v4, 0x0

    #@191
    move-object/from16 v0, p0

    #@193
    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    #@195
    .line 6184
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@198
    move-result v4

    #@199
    if-eqz v4, :cond_9

    #@19b
    .line 6185
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@19d
    move-object/from16 v0, p0

    #@19f
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@1a1
    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@1a3
    .line 6186
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
    .line 6185
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
    .line 6190
    :goto_7
    const/4 v4, 0x0

    #@1bc
    move-object/from16 v0, p0

    #@1be
    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    #@1c0
    .line 6191
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@1c3
    move-result v4

    #@1c4
    if-eqz v4, :cond_a

    #@1c6
    .line 6192
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1c8
    move-object/from16 v0, p0

    #@1ca
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@1cc
    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@1ce
    .line 6193
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
    .line 6192
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
    .line 6197
    :goto_8
    const/4 v4, -0x1

    #@1e7
    move-object/from16 v0, p0

    #@1e9
    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    #@1eb
    .line 6198
    const/4 v13, 0x0

    #@1ec
    .local v13, "i":I
    :goto_9
    const/4 v4, 0x5

    #@1ed
    if-ge v13, v4, :cond_c

    #@1ef
    .line 6199
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@1f2
    move-result v4

    #@1f3
    if-eqz v4, :cond_b

    #@1f5
    .line 6200
    move-object/from16 v0, p0

    #@1f7
    move-object/from16 v1, p3

    #@1f9
    invoke-virtual {v0, v13, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeWifiBatchedScanBin(ILandroid/os/Parcel;)V

    #@1fc
    .line 6198
    :goto_a
    add-int/lit8 v13, v13, 0x1

    #@1fe
    goto :goto_9

    #@1ff
    .line 6181
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
    .line 6188
    :cond_9
    const/4 v4, 0x0

    #@206
    move-object/from16 v0, p0

    #@208
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@20a
    goto :goto_7

    #@20b
    .line 6195
    :cond_a
    const/4 v4, 0x0

    #@20c
    move-object/from16 v0, p0

    #@20e
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@210
    goto :goto_8

    #@211
    .line 6202
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
    .line 6205
    :cond_c
    const/4 v4, 0x0

    #@21a
    move-object/from16 v0, p0

    #@21c
    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    #@21e
    .line 6206
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@221
    move-result v4

    #@222
    if-eqz v4, :cond_d

    #@224
    .line 6207
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@226
    move-object/from16 v0, p0

    #@228
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@22a
    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@22c
    .line 6208
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
    .line 6207
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
    .line 6212
    :goto_b
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@247
    move-result v4

    #@248
    if-eqz v4, :cond_e

    #@24a
    .line 6213
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@24c
    move-object/from16 v0, p0

    #@24e
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@250
    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@252
    .line 6214
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
    .line 6213
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
    .line 6218
    :goto_c
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@26e
    move-result v4

    #@26f
    if-eqz v4, :cond_f

    #@271
    .line 6219
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@273
    move-object/from16 v0, p0

    #@275
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@277
    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@279
    .line 6220
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
    .line 6219
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
    .line 6224
    :goto_d
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@295
    move-result v4

    #@296
    if-eqz v4, :cond_10

    #@298
    .line 6225
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@29a
    move-object/from16 v0, p0

    #@29c
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@29e
    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@2a0
    .line 6226
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
    .line 6225
    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@2b5
    move-object/from16 v0, p0

    #@2b7
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2b9
    .line 6230
    :goto_e
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@2bc
    move-result v4

    #@2bd
    if-eqz v4, :cond_11

    #@2bf
    .line 6231
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2c1
    move-object/from16 v0, p0

    #@2c3
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@2c5
    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@2c7
    .line 6232
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
    .line 6231
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
    .line 6236
    :goto_f
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@2e3
    move-result v4

    #@2e4
    if-eqz v4, :cond_12

    #@2e6
    .line 6237
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2e8
    move-object/from16 v0, p0

    #@2ea
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@2ec
    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@2ee
    .line 6238
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
    .line 6237
    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@2fe
    move-object/from16 v0, p0

    #@300
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@302
    .line 6242
    :goto_10
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@305
    move-result v4

    #@306
    if-eqz v4, :cond_13

    #@308
    .line 6243
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@30a
    move-object/from16 v0, p0

    #@30c
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@30e
    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@310
    .line 6244
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
    .line 6243
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
    .line 6248
    :goto_11
    const/4 v4, -0x1

    #@32a
    move-object/from16 v0, p0

    #@32c
    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    #@32e
    .line 6249
    const/4 v13, 0x0

    #@32f
    :goto_12
    const/4 v4, 0x6

    #@330
    if-ge v13, v4, :cond_15

    #@332
    .line 6250
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@335
    move-result v4

    #@336
    if-eqz v4, :cond_14

    #@338
    .line 6251
    move-object/from16 v0, p0

    #@33a
    move-object/from16 v1, p3

    #@33c
    invoke-virtual {v0, v13, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeProcessState(ILandroid/os/Parcel;)V

    #@33f
    .line 6249
    :goto_13
    add-int/lit8 v13, v13, 0x1

    #@341
    goto :goto_12

    #@342
    .line 6210
    :cond_d
    const/4 v4, 0x0

    #@343
    move-object/from16 v0, p0

    #@345
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@347
    goto/16 :goto_b

    #@349
    .line 6216
    :cond_e
    const/4 v4, 0x0

    #@34a
    move-object/from16 v0, p0

    #@34c
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@34e
    goto/16 :goto_c

    #@350
    .line 6222
    :cond_f
    const/4 v4, 0x0

    #@351
    move-object/from16 v0, p0

    #@353
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@355
    goto/16 :goto_d

    #@357
    .line 6228
    :cond_10
    const/4 v4, 0x0

    #@358
    move-object/from16 v0, p0

    #@35a
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@35c
    goto/16 :goto_e

    #@35e
    .line 6234
    :cond_11
    const/4 v4, 0x0

    #@35f
    move-object/from16 v0, p0

    #@361
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@363
    goto/16 :goto_f

    #@365
    .line 6240
    :cond_12
    const/4 v4, 0x0

    #@366
    move-object/from16 v0, p0

    #@368
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@36a
    goto :goto_10

    #@36b
    .line 6246
    :cond_13
    const/4 v4, 0x0

    #@36c
    move-object/from16 v0, p0

    #@36e
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@370
    goto :goto_11

    #@371
    .line 6253
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
    .line 6256
    :cond_15
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@37c
    move-result v4

    #@37d
    if-eqz v4, :cond_16

    #@37f
    .line 6257
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@381
    move-object/from16 v0, p0

    #@383
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@385
    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@387
    .line 6258
    move-object/from16 v0, p0

    #@389
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@38b
    iget-object v8, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@38d
    .line 6257
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
    .line 6262
    :goto_14
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@39d
    move-result v4

    #@39e
    if-eqz v4, :cond_17

    #@3a0
    .line 6263
    const/4 v4, 0x4

    #@3a1
    new-array v4, v4, [Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@3a3
    move-object/from16 v0, p0

    #@3a5
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@3a7
    .line 6264
    const/4 v13, 0x0

    #@3a8
    :goto_15
    const/4 v4, 0x4

    #@3a9
    if-ge v13, v4, :cond_18

    #@3ab
    .line 6265
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
    .line 6264
    add-int/lit8 v13, v13, 0x1

    #@3c0
    goto :goto_15

    #@3c1
    .line 6260
    :cond_16
    const/4 v4, 0x0

    #@3c2
    move-object/from16 v0, p0

    #@3c4
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@3c6
    goto :goto_14

    #@3c7
    .line 6268
    :cond_17
    const/4 v4, 0x0

    #@3c8
    move-object/from16 v0, p0

    #@3ca
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@3cc
    .line 6270
    :cond_18
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@3cf
    move-result v4

    #@3d0
    if-eqz v4, :cond_1a

    #@3d2
    .line 6271
    const/4 v4, 0x6

    #@3d3
    new-array v4, v4, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@3d5
    move-object/from16 v0, p0

    #@3d7
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@3d9
    .line 6273
    const/4 v4, 0x6

    #@3da
    new-array v4, v4, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@3dc
    .line 6272
    move-object/from16 v0, p0

    #@3de
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@3e0
    .line 6274
    const/4 v13, 0x0

    #@3e1
    :goto_16
    const/4 v4, 0x6

    #@3e2
    if-ge v13, v4, :cond_19

    #@3e4
    .line 6275
    move-object/from16 v0, p0

    #@3e6
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@3e8
    .line 6276
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
    .line 6275
    aput-object v5, v4, v13

    #@3f7
    .line 6277
    move-object/from16 v0, p0

    #@3f9
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@3fb
    .line 6278
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
    .line 6277
    aput-object v5, v4, v13

    #@40a
    .line 6274
    add-int/lit8 v13, v13, 0x1

    #@40c
    goto :goto_16

    #@40d
    .line 6280
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
    .line 6281
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
    .line 6287
    :goto_17
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@432
    move-result v4

    #@433
    if-eqz v4, :cond_1b

    #@435
    .line 6288
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@437
    move-object/from16 v0, p0

    #@439
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@43b
    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@43d
    .line 6289
    const/4 v6, 0x1

    #@43e
    .line 6288
    move-object/from16 v0, p3

    #@440
    invoke-direct {v4, v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;ILandroid/os/Parcel;)V

    #@443
    move-object/from16 v0, p0

    #@445
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@447
    .line 6294
    :goto_18
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@44a
    move-result v4

    #@44b
    if-eqz v4, :cond_1c

    #@44d
    .line 6295
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@44f
    move-object/from16 v0, p0

    #@451
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@453
    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@455
    .line 6296
    const/4 v6, 0x1

    #@456
    .line 6295
    move-object/from16 v0, p3

    #@458
    invoke-direct {v4, v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;ILandroid/os/Parcel;)V

    #@45b
    move-object/from16 v0, p0

    #@45d
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@45f
    .line 6301
    :goto_19
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@462
    move-result v4

    #@463
    if-eqz v4, :cond_1d

    #@465
    .line 6302
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@467
    move-object/from16 v0, p0

    #@469
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@46b
    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@46d
    .line 6303
    const/4 v6, 0x5

    #@46e
    .line 6302
    move-object/from16 v0, p3

    #@470
    invoke-direct {v4, v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;ILandroid/os/Parcel;)V

    #@473
    move-object/from16 v0, p0

    #@475
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@477
    .line 6308
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
    .line 6309
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
    .line 6310
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
    .line 6312
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@4ad
    move-result v4

    #@4ae
    if-eqz v4, :cond_23

    #@4b0
    .line 6313
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@4b3
    move-result v18

    #@4b4
    .line 6314
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
    .line 6315
    new-instance v4, Landroid/os/ParcelFormatException;

    #@4d0
    const-string/jumbo v5, "Incompatible number of cpu clusters"

    #@4d3
    invoke-direct {v4, v5}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    #@4d6
    throw v4

    #@4d7
    .line 6283
    .end local v18    # "numCpuClusters":I
    :cond_1a
    const/4 v4, 0x0

    #@4d8
    move-object/from16 v0, p0

    #@4da
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@4dc
    .line 6284
    const/4 v4, 0x0

    #@4dd
    move-object/from16 v0, p0

    #@4df
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@4e1
    goto/16 :goto_17

    #@4e3
    .line 6291
    :cond_1b
    const/4 v4, 0x0

    #@4e4
    move-object/from16 v0, p0

    #@4e6
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@4e8
    goto/16 :goto_18

    #@4ea
    .line 6298
    :cond_1c
    const/4 v4, 0x0

    #@4eb
    move-object/from16 v0, p0

    #@4ed
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@4ef
    goto/16 :goto_19

    #@4f1
    .line 6305
    :cond_1d
    const/4 v4, 0x0

    #@4f2
    move-object/from16 v0, p0

    #@4f4
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@4f6
    goto :goto_1a

    #@4f7
    .line 6318
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
    .line 6319
    const/4 v11, 0x0

    #@500
    .local v11, "cluster":I
    :goto_1b
    move/from16 v0, v18

    #@502
    if-ge v11, v0, :cond_24

    #@504
    .line 6320
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@507
    move-result v4

    #@508
    if-eqz v4, :cond_21

    #@50a
    .line 6321
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@50d
    move-result v23

    #@50e
    .line 6322
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
    .line 6323
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
    .line 6324
    new-instance v4, Landroid/os/ParcelFormatException;

    #@52a
    const-string/jumbo v5, "Incompatible number of cpu speeds"

    #@52d
    invoke-direct {v4, v5}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    #@530
    throw v4

    #@531
    .line 6327
    :cond_1f
    move/from16 v0, v23

    #@533
    new-array v12, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@535
    .line 6328
    .local v12, "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    move-object/from16 v0, p0

    #@537
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@539
    aput-object v12, v4, v11

    #@53b
    .line 6329
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
    .line 6330
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@546
    move-result v4

    #@547
    if-eqz v4, :cond_20

    #@549
    .line 6331
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
    .line 6329
    :cond_20
    add-int/lit8 v32, v32, 0x1

    #@55a
    goto :goto_1c

    #@55b
    .line 6335
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
    .line 6319
    :cond_22
    add-int/lit8 v11, v11, 0x1

    #@564
    goto :goto_1b

    #@565
    .line 6339
    .end local v11    # "cluster":I
    .end local v18    # "numCpuClusters":I
    :cond_23
    const/4 v4, 0x0

    #@566
    move-object/from16 v0, p0

    #@568
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@56a
    .line 6119
    :cond_24
    return-void
.end method

.method public readJobSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 7351
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->instantiateObject()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@8
    .line 7352
    .local v0, "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@b
    .line 7353
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@d
    invoke-virtual {v1, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    #@10
    .line 7350
    return-void
.end method

.method public readSyncSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 7345
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->instantiateObject()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@8
    .line 7346
    .local v0, "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@b
    .line 7347
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@d
    invoke-virtual {v1, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    #@10
    .line 7344
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
    .line 7357
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    #@3
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    invoke-direct {v0, v1, p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    #@8
    .line 7358
    .local v0, "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@a
    invoke-virtual {v1, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    #@d
    .line 7359
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 7360
    const/4 v1, 0x1

    #@14
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->getStopwatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@1b
    .line 7362
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_1

    #@21
    .line 7363
    invoke-virtual {v0, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->getStopwatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@28
    .line 7365
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2b
    move-result v1

    #@2c
    if-eqz v1, :cond_2

    #@2e
    .line 7366
    const/4 v1, 0x2

    #@2f
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->getStopwatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@36
    .line 7368
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@39
    move-result v1

    #@3a
    if-eqz v1, :cond_3

    #@3c
    .line 7369
    const/16 v1, 0x12

    #@3e
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->getStopwatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@45
    .line 7356
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
    .line 7462
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    #@3
    move-result-object v0

    #@4
    .line 7463
    .local v0, "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v0, :cond_0

    #@6
    .line 7464
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addExcessiveCpu(JJ)V

    #@9
    .line 7461
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
    .line 7455
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    #@3
    move-result-object v0

    #@4
    .line 7456
    .local v0, "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v0, :cond_0

    #@6
    .line 7457
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addExcessiveWake(JJ)V

    #@9
    .line 7454
    :cond_0
    return-void
.end method

.method reset()Z
    .locals 34

    #@0
    .prologue
    .line 5648
    const/4 v4, 0x0

    #@1
    .line 5650
    .local v4, "active":Z
    move-object/from16 v0, p0

    #@3
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@5
    move-object/from16 v28, v0

    #@7
    if-eqz v28, :cond_0

    #@9
    .line 5651
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
    .line 5652
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
    .line 5654
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
    .line 5655
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
    .line 5656
    .restart local v4    # "active":Z
    move-object/from16 v0, p0

    #@3c
    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    #@3e
    move/from16 v28, v0

    #@40
    or-int v4, v4, v28

    #@42
    .line 5658
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
    .line 5659
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
    .line 5660
    .restart local v4    # "active":Z
    move-object/from16 v0, p0

    #@5e
    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    #@60
    move/from16 v28, v0

    #@62
    or-int v4, v4, v28

    #@64
    .line 5662
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
    .line 5663
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
    .line 5664
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
    .line 5665
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
    .line 5663
    :cond_3
    add-int/lit8 v7, v7, 0x1

    #@93
    goto :goto_3

    #@94
    .line 5651
    .end local v7    # "i":I
    .local v4, "active":Z
    :cond_4
    const/4 v4, 0x1

    #@95
    goto :goto_0

    #@96
    .line 5655
    .end local v4    # "active":Z
    :cond_5
    const/16 v28, 0x1

    #@98
    goto :goto_1

    #@99
    .line 5659
    :cond_6
    const/16 v28, 0x1

    #@9b
    goto :goto_2

    #@9c
    .line 5665
    .restart local v7    # "i":I
    :cond_7
    const/16 v28, 0x1

    #@9e
    goto :goto_4

    #@9f
    .line 5668
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
    if-eq v0, v1, :cond_12

    #@ad
    const/16 v28, 0x1

    #@af
    :goto_5
    or-int v4, v4, v28

    #@b1
    .line 5670
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
    .line 5671
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
    if-eqz v28, :cond_13

    #@c7
    const/16 v28, 0x0

    #@c9
    :goto_6
    or-int v4, v4, v28

    #@cb
    .line 5672
    .local v4, "active":Z
    move-object/from16 v0, p0

    #@cd
    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    #@cf
    move/from16 v28, v0

    #@d1
    or-int v4, v4, v28

    #@d3
    .line 5674
    .end local v4    # "active":Z
    :cond_a
    move-object/from16 v0, p0

    #@d5
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@d7
    move-object/from16 v28, v0

    #@d9
    if-eqz v28, :cond_b

    #@db
    .line 5675
    move-object/from16 v0, p0

    #@dd
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@df
    move-object/from16 v28, v0

    #@e1
    const/16 v29, 0x0

    #@e3
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@e6
    move-result v28

    #@e7
    if-eqz v28, :cond_14

    #@e9
    const/16 v28, 0x0

    #@eb
    :goto_7
    or-int v4, v4, v28

    #@ed
    .line 5677
    :cond_b
    move-object/from16 v0, p0

    #@ef
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@f1
    move-object/from16 v28, v0

    #@f3
    if-eqz v28, :cond_c

    #@f5
    .line 5678
    move-object/from16 v0, p0

    #@f7
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@f9
    move-object/from16 v28, v0

    #@fb
    const/16 v29, 0x0

    #@fd
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@100
    move-result v28

    #@101
    if-eqz v28, :cond_15

    #@103
    const/16 v28, 0x0

    #@105
    :goto_8
    or-int v4, v4, v28

    #@107
    .line 5680
    :cond_c
    move-object/from16 v0, p0

    #@109
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@10b
    move-object/from16 v28, v0

    #@10d
    if-eqz v28, :cond_d

    #@10f
    .line 5681
    move-object/from16 v0, p0

    #@111
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@113
    move-object/from16 v28, v0

    #@115
    const/16 v29, 0x0

    #@117
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@11a
    move-result v28

    #@11b
    if-eqz v28, :cond_16

    #@11d
    const/16 v28, 0x0

    #@11f
    :goto_9
    or-int v4, v4, v28

    #@121
    .line 5683
    :cond_d
    move-object/from16 v0, p0

    #@123
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@125
    move-object/from16 v28, v0

    #@127
    if-eqz v28, :cond_e

    #@129
    .line 5684
    move-object/from16 v0, p0

    #@12b
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@12d
    move-object/from16 v28, v0

    #@12f
    const/16 v29, 0x0

    #@131
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@134
    move-result v28

    #@135
    if-eqz v28, :cond_17

    #@137
    const/16 v28, 0x0

    #@139
    :goto_a
    or-int v4, v4, v28

    #@13b
    .line 5686
    :cond_e
    move-object/from16 v0, p0

    #@13d
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@13f
    move-object/from16 v28, v0

    #@141
    if-eqz v28, :cond_f

    #@143
    .line 5687
    move-object/from16 v0, p0

    #@145
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@147
    move-object/from16 v28, v0

    #@149
    const/16 v29, 0x0

    #@14b
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@14e
    move-result v28

    #@14f
    if-eqz v28, :cond_18

    #@151
    const/16 v28, 0x0

    #@153
    :goto_b
    or-int v4, v4, v28

    #@155
    .line 5689
    :cond_f
    move-object/from16 v0, p0

    #@157
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@159
    move-object/from16 v28, v0

    #@15b
    if-eqz v28, :cond_10

    #@15d
    .line 5690
    move-object/from16 v0, p0

    #@15f
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@161
    move-object/from16 v28, v0

    #@163
    const/16 v29, 0x0

    #@165
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@168
    move-result v28

    #@169
    if-eqz v28, :cond_19

    #@16b
    const/16 v28, 0x0

    #@16d
    :goto_c
    or-int v4, v4, v28

    #@16f
    .line 5692
    :cond_10
    move-object/from16 v0, p0

    #@171
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@173
    move-object/from16 v28, v0

    #@175
    if-eqz v28, :cond_1c

    #@177
    .line 5693
    const/4 v7, 0x0

    #@178
    .restart local v7    # "i":I
    :goto_d
    const/16 v28, 0x6

    #@17a
    move/from16 v0, v28

    #@17c
    if-ge v7, v0, :cond_1b

    #@17e
    .line 5694
    move-object/from16 v0, p0

    #@180
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@182
    move-object/from16 v28, v0

    #@184
    aget-object v28, v28, v7

    #@186
    if-eqz v28, :cond_11

    #@188
    .line 5695
    move-object/from16 v0, p0

    #@18a
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@18c
    move-object/from16 v28, v0

    #@18e
    aget-object v28, v28, v7

    #@190
    const/16 v29, 0x0

    #@192
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@195
    move-result v28

    #@196
    if-eqz v28, :cond_1a

    #@198
    const/16 v28, 0x0

    #@19a
    :goto_e
    or-int v4, v4, v28

    #@19c
    .line 5693
    :cond_11
    add-int/lit8 v7, v7, 0x1

    #@19e
    goto :goto_d

    #@19f
    .line 5668
    :cond_12
    const/16 v28, 0x0

    #@1a1
    goto/16 :goto_5

    #@1a3
    .line 5671
    .end local v7    # "i":I
    :cond_13
    const/16 v28, 0x1

    #@1a5
    goto/16 :goto_6

    #@1a7
    .line 5675
    :cond_14
    const/16 v28, 0x1

    #@1a9
    goto/16 :goto_7

    #@1ab
    .line 5678
    :cond_15
    const/16 v28, 0x1

    #@1ad
    goto/16 :goto_8

    #@1af
    .line 5681
    :cond_16
    const/16 v28, 0x1

    #@1b1
    goto/16 :goto_9

    #@1b3
    .line 5684
    :cond_17
    const/16 v28, 0x1

    #@1b5
    goto :goto_a

    #@1b6
    .line 5687
    :cond_18
    const/16 v28, 0x1

    #@1b8
    goto :goto_b

    #@1b9
    .line 5690
    :cond_19
    const/16 v28, 0x1

    #@1bb
    goto :goto_c

    #@1bc
    .line 5695
    .restart local v7    # "i":I
    :cond_1a
    const/16 v28, 0x1

    #@1be
    goto :goto_e

    #@1bf
    .line 5698
    :cond_1b
    move-object/from16 v0, p0

    #@1c1
    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    #@1c3
    move/from16 v28, v0

    #@1c5
    const/16 v29, -0x1

    #@1c7
    move/from16 v0, v28

    #@1c9
    move/from16 v1, v29

    #@1cb
    if-eq v0, v1, :cond_1e

    #@1cd
    const/16 v28, 0x1

    #@1cf
    :goto_f
    or-int v4, v4, v28

    #@1d1
    .line 5700
    .end local v7    # "i":I
    :cond_1c
    move-object/from16 v0, p0

    #@1d3
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@1d5
    move-object/from16 v28, v0

    #@1d7
    if-eqz v28, :cond_1d

    #@1d9
    .line 5701
    move-object/from16 v0, p0

    #@1db
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@1dd
    move-object/from16 v28, v0

    #@1df
    const/16 v29, 0x0

    #@1e1
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->reset(Z)Z

    #@1e4
    move-result v28

    #@1e5
    if-eqz v28, :cond_1f

    #@1e7
    .line 5702
    move-object/from16 v0, p0

    #@1e9
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@1eb
    move-object/from16 v28, v0

    #@1ed
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->detach()V

    #@1f0
    .line 5703
    const/16 v28, 0x0

    #@1f2
    move-object/from16 v0, v28

    #@1f4
    move-object/from16 v1, p0

    #@1f6
    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@1f8
    .line 5709
    :cond_1d
    :goto_10
    move-object/from16 v0, p0

    #@1fa
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@1fc
    move-object/from16 v28, v0

    #@1fe
    if-eqz v28, :cond_20

    #@200
    .line 5710
    const/4 v7, 0x0

    #@201
    .restart local v7    # "i":I
    :goto_11
    const/16 v28, 0x4

    #@203
    move/from16 v0, v28

    #@205
    if-ge v7, v0, :cond_20

    #@207
    .line 5711
    move-object/from16 v0, p0

    #@209
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@20b
    move-object/from16 v28, v0

    #@20d
    aget-object v28, v28, v7

    #@20f
    const/16 v29, 0x0

    #@211
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->reset(Z)V

    #@214
    .line 5710
    add-int/lit8 v7, v7, 0x1

    #@216
    goto :goto_11

    #@217
    .line 5698
    :cond_1e
    const/16 v28, 0x0

    #@219
    goto :goto_f

    #@21a
    .line 5705
    .end local v7    # "i":I
    :cond_1f
    const/4 v4, 0x1

    #@21b
    .local v4, "active":Z
    goto :goto_10

    #@21c
    .line 5715
    .end local v4    # "active":Z
    :cond_20
    move-object/from16 v0, p0

    #@21e
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@220
    move-object/from16 v28, v0

    #@222
    if-eqz v28, :cond_22

    #@224
    .line 5716
    const/4 v7, 0x0

    #@225
    .restart local v7    # "i":I
    :goto_12
    const/16 v28, 0x6

    #@227
    move/from16 v0, v28

    #@229
    if-ge v7, v0, :cond_21

    #@22b
    .line 5717
    move-object/from16 v0, p0

    #@22d
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@22f
    move-object/from16 v28, v0

    #@231
    aget-object v28, v28, v7

    #@233
    const/16 v29, 0x0

    #@235
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    #@238
    .line 5718
    move-object/from16 v0, p0

    #@23a
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@23c
    move-object/from16 v28, v0

    #@23e
    aget-object v28, v28, v7

    #@240
    const/16 v29, 0x0

    #@242
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    #@245
    .line 5716
    add-int/lit8 v7, v7, 0x1

    #@247
    goto :goto_12

    #@248
    .line 5720
    :cond_21
    move-object/from16 v0, p0

    #@24a
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@24c
    move-object/from16 v28, v0

    #@24e
    const/16 v29, 0x0

    #@250
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    #@253
    .line 5721
    move-object/from16 v0, p0

    #@255
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@257
    move-object/from16 v28, v0

    #@259
    const/16 v29, 0x0

    #@25b
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    #@25e
    .line 5724
    .end local v7    # "i":I
    :cond_22
    move-object/from16 v0, p0

    #@260
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@262
    move-object/from16 v28, v0

    #@264
    if-eqz v28, :cond_23

    #@266
    .line 5725
    move-object/from16 v0, p0

    #@268
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@26a
    move-object/from16 v28, v0

    #@26c
    const/16 v29, 0x0

    #@26e
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->reset(Z)V

    #@271
    .line 5728
    :cond_23
    move-object/from16 v0, p0

    #@273
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@275
    move-object/from16 v28, v0

    #@277
    if-eqz v28, :cond_24

    #@279
    .line 5729
    move-object/from16 v0, p0

    #@27b
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@27d
    move-object/from16 v28, v0

    #@27f
    const/16 v29, 0x0

    #@281
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->reset(Z)V

    #@284
    .line 5732
    :cond_24
    move-object/from16 v0, p0

    #@286
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@288
    move-object/from16 v28, v0

    #@28a
    if-eqz v28, :cond_25

    #@28c
    .line 5733
    move-object/from16 v0, p0

    #@28e
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@290
    move-object/from16 v28, v0

    #@292
    const/16 v29, 0x0

    #@294
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->reset(Z)V

    #@297
    .line 5736
    :cond_25
    move-object/from16 v0, p0

    #@299
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@29b
    move-object/from16 v28, v0

    #@29d
    const/16 v29, 0x0

    #@29f
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    #@2a2
    .line 5737
    move-object/from16 v0, p0

    #@2a4
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2a6
    move-object/from16 v28, v0

    #@2a8
    const/16 v29, 0x0

    #@2aa
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    #@2ad
    .line 5738
    move-object/from16 v0, p0

    #@2af
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2b1
    move-object/from16 v28, v0

    #@2b3
    const/16 v29, 0x0

    #@2b5
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    #@2b8
    .line 5740
    move-object/from16 v0, p0

    #@2ba
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2bc
    move-object/from16 v28, v0

    #@2be
    if-eqz v28, :cond_28

    #@2c0
    .line 5741
    move-object/from16 v0, p0

    #@2c2
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2c4
    move-object/from16 v30, v0

    #@2c6
    const/16 v28, 0x0

    #@2c8
    move-object/from16 v0, v30

    #@2ca
    array-length v0, v0

    #@2cb
    move/from16 v31, v0

    #@2cd
    move/from16 v29, v28

    #@2cf
    :goto_13
    move/from16 v0, v29

    #@2d1
    move/from16 v1, v31

    #@2d3
    if-ge v0, v1, :cond_28

    #@2d5
    aget-object v23, v30, v29

    #@2d7
    .line 5742
    .local v23, "speeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v23, :cond_27

    #@2d9
    .line 5743
    const/16 v28, 0x0

    #@2db
    move-object/from16 v0, v23

    #@2dd
    array-length v0, v0

    #@2de
    move/from16 v32, v0

    #@2e0
    :goto_14
    move/from16 v0, v28

    #@2e2
    move/from16 v1, v32

    #@2e4
    if-ge v0, v1, :cond_27

    #@2e6
    aget-object v22, v23, v28

    #@2e8
    .line 5744
    .local v22, "speed":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v22, :cond_26

    #@2ea
    .line 5745
    const/16 v33, 0x0

    #@2ec
    move-object/from16 v0, v22

    #@2ee
    move/from16 v1, v33

    #@2f0
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    #@2f3
    .line 5743
    :cond_26
    add-int/lit8 v28, v28, 0x1

    #@2f5
    goto :goto_14

    #@2f6
    .line 5741
    .end local v22    # "speed":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_27
    add-int/lit8 v28, v29, 0x1

    #@2f8
    move/from16 v29, v28

    #@2fa
    goto :goto_13

    #@2fb
    .line 5752
    .end local v23    # "speeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_28
    move-object/from16 v0, p0

    #@2fd
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@2ff
    move-object/from16 v28, v0

    #@301
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    #@304
    move-result-object v26

    #@305
    .line 5753
    .local v26, "wakeStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    invoke-virtual/range {v26 .. v26}, Landroid/util/ArrayMap;->size()I

    #@308
    move-result v28

    #@309
    add-int/lit8 v14, v28, -0x1

    #@30b
    .local v14, "iw":I
    :goto_15
    if-ltz v14, :cond_2a

    #@30d
    .line 5754
    move-object/from16 v0, v26

    #@30f
    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@312
    move-result-object v27

    #@313
    check-cast v27, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    #@315
    .line 5755
    .local v27, "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->reset()Z

    #@318
    move-result v28

    #@319
    if-eqz v28, :cond_29

    #@31b
    .line 5756
    move-object/from16 v0, v26

    #@31d
    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    #@320
    .line 5753
    :goto_16
    add-int/lit8 v14, v14, -0x1

    #@322
    goto :goto_15

    #@323
    .line 5758
    :cond_29
    const/4 v4, 0x1

    #@324
    .restart local v4    # "active":Z
    goto :goto_16

    #@325
    .line 5761
    .end local v4    # "active":Z
    .end local v27    # "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    :cond_2a
    move-object/from16 v0, p0

    #@327
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@329
    move-object/from16 v28, v0

    #@32b
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->cleanup()V

    #@32e
    .line 5762
    move-object/from16 v0, p0

    #@330
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@332
    move-object/from16 v28, v0

    #@334
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    #@337
    move-result-object v24

    #@338
    .line 5763
    .local v24, "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-virtual/range {v24 .. v24}, Landroid/util/ArrayMap;->size()I

    #@33b
    move-result v28

    #@33c
    add-int/lit8 v10, v28, -0x1

    #@33e
    .local v10, "is":I
    :goto_17
    if-ltz v10, :cond_2c

    #@340
    .line 5764
    move-object/from16 v0, v24

    #@342
    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@345
    move-result-object v25

    #@346
    check-cast v25, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@348
    .line 5765
    .local v25, "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    const/16 v28, 0x0

    #@34a
    move-object/from16 v0, v25

    #@34c
    move/from16 v1, v28

    #@34e
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@351
    move-result v28

    #@352
    if-eqz v28, :cond_2b

    #@354
    .line 5766
    move-object/from16 v0, v24

    #@356
    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    #@359
    .line 5767
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    #@35c
    .line 5763
    :goto_18
    add-int/lit8 v10, v10, -0x1

    #@35e
    goto :goto_17

    #@35f
    .line 5769
    :cond_2b
    const/4 v4, 0x1

    #@360
    .restart local v4    # "active":Z
    goto :goto_18

    #@361
    .line 5772
    .end local v4    # "active":Z
    .end local v25    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_2c
    move-object/from16 v0, p0

    #@363
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@365
    move-object/from16 v28, v0

    #@367
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->cleanup()V

    #@36a
    .line 5773
    move-object/from16 v0, p0

    #@36c
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@36e
    move-object/from16 v28, v0

    #@370
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    #@373
    move-result-object v15

    #@374
    .line 5774
    .local v15, "jobStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    #@377
    move-result v28

    #@378
    add-int/lit8 v8, v28, -0x1

    #@37a
    .local v8, "ij":I
    :goto_19
    if-ltz v8, :cond_2e

    #@37c
    .line 5775
    invoke-virtual {v15, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@37f
    move-result-object v25

    #@380
    check-cast v25, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@382
    .line 5776
    .restart local v25    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    const/16 v28, 0x0

    #@384
    move-object/from16 v0, v25

    #@386
    move/from16 v1, v28

    #@388
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@38b
    move-result v28

    #@38c
    if-eqz v28, :cond_2d

    #@38e
    .line 5777
    invoke-virtual {v15, v8}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    #@391
    .line 5778
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    #@394
    .line 5774
    :goto_1a
    add-int/lit8 v8, v8, -0x1

    #@396
    goto :goto_19

    #@397
    .line 5780
    :cond_2d
    const/4 v4, 0x1

    #@398
    .restart local v4    # "active":Z
    goto :goto_1a

    #@399
    .line 5783
    .end local v4    # "active":Z
    .end local v25    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_2e
    move-object/from16 v0, p0

    #@39b
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@39d
    move-object/from16 v28, v0

    #@39f
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->cleanup()V

    #@3a2
    .line 5784
    move-object/from16 v0, p0

    #@3a4
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    #@3a6
    move-object/from16 v28, v0

    #@3a8
    invoke-virtual/range {v28 .. v28}, Landroid/util/SparseArray;->size()I

    #@3ab
    move-result v28

    #@3ac
    add-int/lit8 v11, v28, -0x1

    #@3ae
    .local v11, "ise":I
    :goto_1b
    if-ltz v11, :cond_30

    #@3b0
    .line 5785
    move-object/from16 v0, p0

    #@3b2
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    #@3b4
    move-object/from16 v28, v0

    #@3b6
    move-object/from16 v0, v28

    #@3b8
    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@3bb
    move-result-object v20

    #@3bc
    check-cast v20, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    #@3be
    .line 5786
    .local v20, "s":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->reset()Z

    #@3c1
    move-result v28

    #@3c2
    if-eqz v28, :cond_2f

    #@3c4
    .line 5787
    move-object/from16 v0, p0

    #@3c6
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    #@3c8
    move-object/from16 v28, v0

    #@3ca
    move-object/from16 v0, v28

    #@3cc
    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->removeAt(I)V

    #@3cf
    .line 5784
    :goto_1c
    add-int/lit8 v11, v11, -0x1

    #@3d1
    goto :goto_1b

    #@3d2
    .line 5789
    :cond_2f
    const/4 v4, 0x1

    #@3d3
    .restart local v4    # "active":Z
    goto :goto_1c

    #@3d4
    .line 5792
    .end local v4    # "active":Z
    .end local v20    # "s":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    :cond_30
    move-object/from16 v0, p0

    #@3d6
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    #@3d8
    move-object/from16 v28, v0

    #@3da
    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->size()I

    #@3dd
    move-result v28

    #@3de
    add-int/lit8 v9, v28, -0x1

    #@3e0
    .local v9, "ip":I
    :goto_1d
    if-ltz v9, :cond_31

    #@3e2
    .line 5793
    move-object/from16 v0, p0

    #@3e4
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    #@3e6
    move-object/from16 v28, v0

    #@3e8
    move-object/from16 v0, v28

    #@3ea
    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@3ed
    move-result-object v19

    #@3ee
    check-cast v19, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    #@3f0
    .line 5794
    .local v19, "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->detach()V

    #@3f3
    .line 5792
    add-int/lit8 v9, v9, -0x1

    #@3f5
    goto :goto_1d

    #@3f6
    .line 5796
    .end local v19    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    :cond_31
    move-object/from16 v0, p0

    #@3f8
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    #@3fa
    move-object/from16 v28, v0

    #@3fc
    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->clear()V

    #@3ff
    .line 5797
    move-object/from16 v0, p0

    #@401
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    #@403
    move-object/from16 v28, v0

    #@405
    invoke-virtual/range {v28 .. v28}, Landroid/util/SparseArray;->size()I

    #@408
    move-result v28

    #@409
    if-lez v28, :cond_33

    #@40b
    .line 5798
    move-object/from16 v0, p0

    #@40d
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    #@40f
    move-object/from16 v28, v0

    #@411
    invoke-virtual/range {v28 .. v28}, Landroid/util/SparseArray;->size()I

    #@414
    move-result v28

    #@415
    add-int/lit8 v7, v28, -0x1

    #@417
    .restart local v7    # "i":I
    :goto_1e
    if-ltz v7, :cond_33

    #@419
    .line 5799
    move-object/from16 v0, p0

    #@41b
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    #@41d
    move-object/from16 v28, v0

    #@41f
    move-object/from16 v0, v28

    #@421
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@424
    move-result-object v17

    #@425
    check-cast v17, Landroid/os/BatteryStats$Uid$Pid;

    #@427
    .line 5800
    .local v17, "pid":Landroid/os/BatteryStats$Uid$Pid;
    move-object/from16 v0, v17

    #@429
    iget v0, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    #@42b
    move/from16 v28, v0

    #@42d
    if-lez v28, :cond_32

    #@42f
    .line 5801
    const/4 v4, 0x1

    #@430
    .line 5798
    :goto_1f
    add-int/lit8 v7, v7, -0x1

    #@432
    goto :goto_1e

    #@433
    .line 5803
    :cond_32
    move-object/from16 v0, p0

    #@435
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    #@437
    move-object/from16 v28, v0

    #@439
    move-object/from16 v0, v28

    #@43b
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->removeAt(I)V

    #@43e
    goto :goto_1f

    #@43f
    .line 5807
    .end local v7    # "i":I
    .end local v17    # "pid":Landroid/os/BatteryStats$Uid$Pid;
    :cond_33
    move-object/from16 v0, p0

    #@441
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    #@443
    move-object/from16 v28, v0

    #@445
    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->size()I

    #@448
    move-result v28

    #@449
    if-lez v28, :cond_36

    #@44b
    .line 5808
    move-object/from16 v0, p0

    #@44d
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    #@44f
    move-object/from16 v28, v0

    #@451
    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    #@454
    move-result-object v28

    #@455
    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@458
    move-result-object v12

    #@459
    .line 5809
    .local v12, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;>;"
    :cond_34
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@45c
    move-result v28

    #@45d
    if-eqz v28, :cond_35

    #@45f
    .line 5810
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@462
    move-result-object v18

    #@463
    check-cast v18, Ljava/util/Map$Entry;

    #@465
    .line 5811
    .local v18, "pkgEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@468
    move-result-object v16

    #@469
    check-cast v16, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    #@46b
    .line 5812
    .local v16, "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->detach()V

    #@46e
    .line 5813
    move-object/from16 v0, v16

    #@470
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    #@472
    move-object/from16 v28, v0

    #@474
    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->size()I

    #@477
    move-result v28

    #@478
    if-lez v28, :cond_34

    #@47a
    .line 5815
    move-object/from16 v0, v16

    #@47c
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    #@47e
    move-object/from16 v28, v0

    #@480
    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    #@483
    move-result-object v28

    #@484
    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@487
    move-result-object v13

    #@488
    .line 5816
    .local v13, "it2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;>;"
    :goto_20
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@48b
    move-result v28

    #@48c
    if-eqz v28, :cond_34

    #@48e
    .line 5817
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@491
    move-result-object v21

    #@492
    check-cast v21, Ljava/util/Map$Entry;

    #@494
    .line 5818
    .local v21, "servEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@497
    move-result-object v28

    #@498
    check-cast v28, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    #@49a
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->detach()V

    #@49d
    goto :goto_20

    #@49e
    .line 5822
    .end local v13    # "it2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;>;"
    .end local v16    # "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .end local v18    # "pkgEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    .end local v21    # "servEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;"
    :cond_35
    move-object/from16 v0, p0

    #@4a0
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    #@4a2
    move-object/from16 v28, v0

    #@4a4
    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->clear()V

    #@4a7
    .line 5825
    .end local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;>;"
    :cond_36
    const-wide/16 v28, 0x0

    #@4a9
    move-wide/from16 v0, v28

    #@4ab
    move-object/from16 v2, p0

    #@4ad
    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepSystemTime:J

    #@4af
    const-wide/16 v28, 0x0

    #@4b1
    move-wide/from16 v0, v28

    #@4b3
    move-object/from16 v2, p0

    #@4b5
    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepUserTime:J

    #@4b7
    .line 5826
    const-wide/16 v28, 0x0

    #@4b9
    move-wide/from16 v0, v28

    #@4bb
    move-object/from16 v2, p0

    #@4bd
    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepSystemTime:J

    #@4bf
    const-wide/16 v28, 0x0

    #@4c1
    move-wide/from16 v0, v28

    #@4c3
    move-object/from16 v2, p0

    #@4c5
    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepUserTime:J

    #@4c7
    .line 5828
    if-nez v4, :cond_4a

    #@4c9
    .line 5829
    move-object/from16 v0, p0

    #@4cb
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@4cd
    move-object/from16 v28, v0

    #@4cf
    if-eqz v28, :cond_37

    #@4d1
    .line 5830
    move-object/from16 v0, p0

    #@4d3
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@4d5
    move-object/from16 v28, v0

    #@4d7
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    #@4da
    .line 5832
    :cond_37
    move-object/from16 v0, p0

    #@4dc
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@4de
    move-object/from16 v28, v0

    #@4e0
    if-eqz v28, :cond_38

    #@4e2
    .line 5833
    move-object/from16 v0, p0

    #@4e4
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@4e6
    move-object/from16 v28, v0

    #@4e8
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    #@4eb
    .line 5835
    :cond_38
    move-object/from16 v0, p0

    #@4ed
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@4ef
    move-object/from16 v28, v0

    #@4f1
    if-eqz v28, :cond_39

    #@4f3
    .line 5836
    move-object/from16 v0, p0

    #@4f5
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@4f7
    move-object/from16 v28, v0

    #@4f9
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    #@4fc
    .line 5838
    :cond_39
    const/4 v7, 0x0

    #@4fd
    .restart local v7    # "i":I
    :goto_21
    const/16 v28, 0x5

    #@4ff
    move/from16 v0, v28

    #@501
    if-ge v7, v0, :cond_3b

    #@503
    .line 5839
    move-object/from16 v0, p0

    #@505
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@507
    move-object/from16 v28, v0

    #@509
    aget-object v28, v28, v7

    #@50b
    if-eqz v28, :cond_3a

    #@50d
    .line 5840
    move-object/from16 v0, p0

    #@50f
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@511
    move-object/from16 v28, v0

    #@513
    aget-object v28, v28, v7

    #@515
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    #@518
    .line 5838
    :cond_3a
    add-int/lit8 v7, v7, 0x1

    #@51a
    goto :goto_21

    #@51b
    .line 5843
    :cond_3b
    move-object/from16 v0, p0

    #@51d
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@51f
    move-object/from16 v28, v0

    #@521
    if-eqz v28, :cond_3c

    #@523
    .line 5844
    move-object/from16 v0, p0

    #@525
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@527
    move-object/from16 v28, v0

    #@529
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    #@52c
    .line 5846
    :cond_3c
    move-object/from16 v0, p0

    #@52e
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@530
    move-object/from16 v28, v0

    #@532
    if-eqz v28, :cond_3d

    #@534
    .line 5847
    move-object/from16 v0, p0

    #@536
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@538
    move-object/from16 v28, v0

    #@53a
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    #@53d
    .line 5848
    const/16 v28, 0x0

    #@53f
    move-object/from16 v0, v28

    #@541
    move-object/from16 v1, p0

    #@543
    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@545
    .line 5850
    :cond_3d
    move-object/from16 v0, p0

    #@547
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@549
    move-object/from16 v28, v0

    #@54b
    if-eqz v28, :cond_3e

    #@54d
    .line 5851
    move-object/from16 v0, p0

    #@54f
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@551
    move-object/from16 v28, v0

    #@553
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    #@556
    .line 5852
    const/16 v28, 0x0

    #@558
    move-object/from16 v0, v28

    #@55a
    move-object/from16 v1, p0

    #@55c
    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@55e
    .line 5854
    :cond_3e
    move-object/from16 v0, p0

    #@560
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@562
    move-object/from16 v28, v0

    #@564
    if-eqz v28, :cond_3f

    #@566
    .line 5855
    move-object/from16 v0, p0

    #@568
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@56a
    move-object/from16 v28, v0

    #@56c
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    #@56f
    .line 5856
    const/16 v28, 0x0

    #@571
    move-object/from16 v0, v28

    #@573
    move-object/from16 v1, p0

    #@575
    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@577
    .line 5858
    :cond_3f
    move-object/from16 v0, p0

    #@579
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@57b
    move-object/from16 v28, v0

    #@57d
    if-eqz v28, :cond_40

    #@57f
    .line 5859
    move-object/from16 v0, p0

    #@581
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@583
    move-object/from16 v28, v0

    #@585
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    #@588
    .line 5860
    const/16 v28, 0x0

    #@58a
    move-object/from16 v0, v28

    #@58c
    move-object/from16 v1, p0

    #@58e
    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@590
    .line 5862
    :cond_40
    move-object/from16 v0, p0

    #@592
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@594
    move-object/from16 v28, v0

    #@596
    if-eqz v28, :cond_41

    #@598
    .line 5863
    move-object/from16 v0, p0

    #@59a
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@59c
    move-object/from16 v28, v0

    #@59e
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    #@5a1
    .line 5864
    const/16 v28, 0x0

    #@5a3
    move-object/from16 v0, v28

    #@5a5
    move-object/from16 v1, p0

    #@5a7
    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@5a9
    .line 5866
    :cond_41
    move-object/from16 v0, p0

    #@5ab
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@5ad
    move-object/from16 v28, v0

    #@5af
    if-eqz v28, :cond_42

    #@5b1
    .line 5867
    move-object/from16 v0, p0

    #@5b3
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@5b5
    move-object/from16 v28, v0

    #@5b7
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    #@5ba
    .line 5868
    const/16 v28, 0x0

    #@5bc
    move-object/from16 v0, v28

    #@5be
    move-object/from16 v1, p0

    #@5c0
    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@5c2
    .line 5870
    :cond_42
    move-object/from16 v0, p0

    #@5c4
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@5c6
    move-object/from16 v28, v0

    #@5c8
    if-eqz v28, :cond_43

    #@5ca
    .line 5871
    const/4 v7, 0x0

    #@5cb
    :goto_22
    const/16 v28, 0x4

    #@5cd
    move/from16 v0, v28

    #@5cf
    if-ge v7, v0, :cond_43

    #@5d1
    .line 5872
    move-object/from16 v0, p0

    #@5d3
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@5d5
    move-object/from16 v28, v0

    #@5d7
    aget-object v28, v28, v7

    #@5d9
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->detach()V

    #@5dc
    .line 5871
    add-int/lit8 v7, v7, 0x1

    #@5de
    goto :goto_22

    #@5df
    .line 5875
    :cond_43
    move-object/from16 v0, p0

    #@5e1
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@5e3
    move-object/from16 v28, v0

    #@5e5
    if-eqz v28, :cond_44

    #@5e7
    .line 5876
    const/4 v7, 0x0

    #@5e8
    :goto_23
    const/16 v28, 0x6

    #@5ea
    move/from16 v0, v28

    #@5ec
    if-ge v7, v0, :cond_44

    #@5ee
    .line 5877
    move-object/from16 v0, p0

    #@5f0
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@5f2
    move-object/from16 v28, v0

    #@5f4
    aget-object v28, v28, v7

    #@5f6
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    #@5f9
    .line 5878
    move-object/from16 v0, p0

    #@5fb
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@5fd
    move-object/from16 v28, v0

    #@5ff
    aget-object v28, v28, v7

    #@601
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    #@604
    .line 5876
    add-int/lit8 v7, v7, 0x1

    #@606
    goto :goto_23

    #@607
    .line 5882
    :cond_44
    move-object/from16 v0, p0

    #@609
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@60b
    move-object/from16 v28, v0

    #@60d
    if-eqz v28, :cond_45

    #@60f
    .line 5883
    move-object/from16 v0, p0

    #@611
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@613
    move-object/from16 v28, v0

    #@615
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->detach()V

    #@618
    .line 5886
    :cond_45
    move-object/from16 v0, p0

    #@61a
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@61c
    move-object/from16 v28, v0

    #@61e
    if-eqz v28, :cond_46

    #@620
    .line 5887
    move-object/from16 v0, p0

    #@622
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@624
    move-object/from16 v28, v0

    #@626
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->detach()V

    #@629
    .line 5890
    :cond_46
    move-object/from16 v0, p0

    #@62b
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@62d
    move-object/from16 v28, v0

    #@62f
    if-eqz v28, :cond_47

    #@631
    .line 5891
    move-object/from16 v0, p0

    #@633
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@635
    move-object/from16 v28, v0

    #@637
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->detach()V

    #@63a
    .line 5894
    :cond_47
    move-object/from16 v0, p0

    #@63c
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    #@63e
    move-object/from16 v28, v0

    #@640
    invoke-virtual/range {v28 .. v28}, Landroid/util/SparseArray;->clear()V

    #@643
    .line 5896
    move-object/from16 v0, p0

    #@645
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@647
    move-object/from16 v28, v0

    #@649
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    #@64c
    .line 5897
    move-object/from16 v0, p0

    #@64e
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@650
    move-object/from16 v28, v0

    #@652
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    #@655
    .line 5898
    move-object/from16 v0, p0

    #@657
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@659
    move-object/from16 v28, v0

    #@65b
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    #@65e
    .line 5900
    move-object/from16 v0, p0

    #@660
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@662
    move-object/from16 v28, v0

    #@664
    if-eqz v28, :cond_4a

    #@666
    .line 5901
    move-object/from16 v0, p0

    #@668
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@66a
    move-object/from16 v30, v0

    #@66c
    const/16 v28, 0x0

    #@66e
    move-object/from16 v0, v30

    #@670
    array-length v0, v0

    #@671
    move/from16 v31, v0

    #@673
    move/from16 v29, v28

    #@675
    :goto_24
    move/from16 v0, v29

    #@677
    move/from16 v1, v31

    #@679
    if-ge v0, v1, :cond_4a

    #@67b
    aget-object v6, v30, v29

    #@67d
    .line 5902
    .local v6, "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v6, :cond_49

    #@67f
    .line 5903
    const/16 v28, 0x0

    #@681
    array-length v0, v6

    #@682
    move/from16 v32, v0

    #@684
    :goto_25
    move/from16 v0, v28

    #@686
    move/from16 v1, v32

    #@688
    if-ge v0, v1, :cond_49

    #@68a
    aget-object v5, v6, v28

    #@68c
    .line 5904
    .local v5, "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v5, :cond_48

    #@68e
    .line 5905
    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    #@691
    .line 5903
    :cond_48
    add-int/lit8 v28, v28, 0x1

    #@693
    goto :goto_25

    #@694
    .line 5901
    .end local v5    # "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_49
    add-int/lit8 v28, v29, 0x1

    #@696
    move/from16 v29, v28

    #@698
    goto :goto_24

    #@699
    .line 5913
    .end local v6    # "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .end local v7    # "i":I
    :cond_4a
    if-eqz v4, :cond_4b

    #@69b
    const/16 v28, 0x0

    #@69d
    :goto_26
    return v28

    #@69e
    :cond_4b
    const/16 v28, 0x1

    #@6a0
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
    .line 7268
    if-ne p1, v5, :cond_0

    #@4
    .line 7269
    const/4 v2, -0x1

    #@5
    .line 7286
    .local v2, "uidRunningState":I
    :goto_0
    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    #@7
    if-ne v3, v2, :cond_6

    #@9
    return-void

    #@a
    .line 7270
    .end local v2    # "uidRunningState":I
    :cond_0
    const/4 v3, 0x2

    #@b
    if-ne p1, v3, :cond_1

    #@d
    .line 7271
    const/4 v2, 0x0

    #@e
    .restart local v2    # "uidRunningState":I
    goto :goto_0

    #@f
    .line 7272
    .end local v2    # "uidRunningState":I
    :cond_1
    const/4 v3, 0x4

    #@10
    if-gt p1, v3, :cond_2

    #@12
    .line 7274
    const/4 v2, 0x1

    #@13
    .restart local v2    # "uidRunningState":I
    goto :goto_0

    #@14
    .line 7275
    .end local v2    # "uidRunningState":I
    :cond_2
    const/4 v3, 0x5

    #@15
    if-gt p1, v3, :cond_3

    #@17
    .line 7276
    const/4 v2, 0x2

    #@18
    .restart local v2    # "uidRunningState":I
    goto :goto_0

    #@19
    .line 7277
    .end local v2    # "uidRunningState":I
    :cond_3
    const/4 v3, 0x6

    #@1a
    if-gt p1, v3, :cond_4

    #@1c
    .line 7279
    const/4 v2, 0x3

    #@1d
    .restart local v2    # "uidRunningState":I
    goto :goto_0

    #@1e
    .line 7280
    .end local v2    # "uidRunningState":I
    :cond_4
    const/16 v3, 0xb

    #@20
    if-gt p1, v3, :cond_5

    #@22
    .line 7281
    const/4 v2, 0x4

    #@23
    .restart local v2    # "uidRunningState":I
    goto :goto_0

    #@24
    .line 7283
    .end local v2    # "uidRunningState":I
    :cond_5
    const/4 v2, 0x5

    #@25
    .restart local v2    # "uidRunningState":I
    goto :goto_0

    #@26
    .line 7288
    :cond_6
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@28
    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@2a
    invoke-interface {v3}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    #@2d
    move-result-wide v0

    #@2e
    .line 7290
    .local v0, "elapsedRealtime":J
    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    #@30
    if-eq v3, v5, :cond_7

    #@32
    .line 7291
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@34
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    #@36
    aget-object v3, v3, v4

    #@38
    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@3b
    .line 7293
    :cond_7
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    #@3d
    .line 7294
    if-eq v2, v5, :cond_9

    #@3f
    .line 7295
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@41
    aget-object v3, v3, v2

    #@43
    if-nez v3, :cond_8

    #@45
    .line 7296
    invoke-virtual {p0, v2, v6}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeProcessState(ILandroid/os/Parcel;)V

    #@48
    .line 7298
    :cond_8
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@4a
    aget-object v3, v3, v2

    #@4c
    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@4f
    .line 7266
    :cond_9
    return-void
.end method

.method writeToParcelLocked(Landroid/os/Parcel;J)V
    .locals 34
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    #@0
    .prologue
    .line 5917
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
    .line 5918
    .local v25, "wakeStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    #@d
    move-result v8

    #@e
    .line 5919
    .local v8, "NW":I
    move-object/from16 v0, p1

    #@10
    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 5920
    const/16 v16, 0x0

    #@15
    .local v16, "iw":I
    :goto_0
    move/from16 v0, v16

    #@17
    if-ge v0, v8, :cond_0

    #@19
    .line 5921
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
    .line 5922
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
    .line 5923
    .local v26, "wakelock":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    move-object/from16 v0, v26

    #@36
    move-object/from16 v1, p1

    #@38
    move-wide/from16 v2, p2

    #@3a
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->writeToParcelLocked(Landroid/os/Parcel;J)V

    #@3d
    .line 5920
    add-int/lit8 v16, v16, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 5926
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
    .line 5927
    .local v23, "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-virtual/range {v23 .. v23}, Landroid/util/ArrayMap;->size()I

    #@4d
    move-result v6

    #@4e
    .line 5928
    .local v6, "NS":I
    move-object/from16 v0, p1

    #@50
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@53
    .line 5929
    const/4 v14, 0x0

    #@54
    .local v14, "is":I
    :goto_1
    if-ge v14, v6, :cond_1

    #@56
    .line 5930
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
    .line 5931
    move-object/from16 v0, v23

    #@67
    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@6a
    move-result-object v24

    #@6b
    check-cast v24, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6d
    .line 5932
    .local v24, "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    move-object/from16 v0, p1

    #@6f
    move-object/from16 v1, v24

    #@71
    move-wide/from16 v2, p2

    #@73
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V

    #@76
    .line 5929
    add-int/lit8 v14, v14, 0x1

    #@78
    goto :goto_1

    #@79
    .line 5935
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
    .line 5936
    .local v17, "jobStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    #@86
    move-result v4

    #@87
    .line 5937
    .local v4, "NJ":I
    move-object/from16 v0, p1

    #@89
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@8c
    .line 5938
    const/4 v12, 0x0

    #@8d
    .local v12, "ij":I
    :goto_2
    if-ge v12, v4, :cond_2

    #@8f
    .line 5939
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
    .line 5940
    move-object/from16 v0, v17

    #@a0
    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@a3
    move-result-object v24

    #@a4
    check-cast v24, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@a6
    .line 5941
    .restart local v24    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    move-object/from16 v0, p1

    #@a8
    move-object/from16 v1, v24

    #@aa
    move-wide/from16 v2, p2

    #@ac
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V

    #@af
    .line 5938
    add-int/lit8 v12, v12, 0x1

    #@b1
    goto :goto_2

    #@b2
    .line 5944
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
    .line 5945
    .local v7, "NSE":I
    move-object/from16 v0, p1

    #@be
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@c1
    .line 5946
    const/4 v15, 0x0

    #@c2
    .local v15, "ise":I
    :goto_3
    if-ge v15, v7, :cond_3

    #@c4
    .line 5947
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
    .line 5948
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
    .line 5949
    .local v22, "sensor":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    move-object/from16 v0, v22

    #@e7
    move-object/from16 v1, p1

    #@e9
    move-wide/from16 v2, p2

    #@eb
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->writeToParcelLocked(Landroid/os/Parcel;J)V

    #@ee
    .line 5946
    add-int/lit8 v15, v15, 0x1

    #@f0
    goto :goto_3

    #@f1
    .line 5952
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
    .line 5953
    .local v5, "NP":I
    move-object/from16 v0, p1

    #@fd
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@100
    .line 5954
    const/4 v13, 0x0

    #@101
    .local v13, "ip":I
    :goto_4
    if-ge v13, v5, :cond_4

    #@103
    .line 5955
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
    .line 5956
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
    .line 5957
    .local v21, "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    move-object/from16 v0, v21

    #@128
    move-object/from16 v1, p1

    #@12a
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->writeToParcelLocked(Landroid/os/Parcel;)V

    #@12d
    .line 5954
    add-int/lit8 v13, v13, 0x1

    #@12f
    goto :goto_4

    #@130
    .line 5960
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
    .line 5961
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
    .line 5962
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
    .line 5963
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@16b
    move-result-object v18

    #@16c
    check-cast v18, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    #@16e
    .line 5964
    .local v18, "pkg":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    move-object/from16 v0, v18

    #@170
    move-object/from16 v1, p1

    #@172
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->writeToParcelLocked(Landroid/os/Parcel;)V

    #@175
    goto :goto_5

    #@176
    .line 5967
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
    .line 5968
    const/16 v27, 0x1

    #@180
    move-object/from16 v0, p1

    #@182
    move/from16 v1, v27

    #@184
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@187
    .line 5969
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
    .line 5973
    :goto_6
    move-object/from16 v0, p0

    #@198
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@19a
    move-object/from16 v27, v0

    #@19c
    if-eqz v27, :cond_7

    #@19e
    .line 5974
    const/16 v27, 0x1

    #@1a0
    move-object/from16 v0, p1

    #@1a2
    move/from16 v1, v27

    #@1a4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a7
    .line 5975
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
    .line 5979
    :goto_7
    move-object/from16 v0, p0

    #@1b8
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1ba
    move-object/from16 v27, v0

    #@1bc
    if-eqz v27, :cond_8

    #@1be
    .line 5980
    const/16 v27, 0x1

    #@1c0
    move-object/from16 v0, p1

    #@1c2
    move/from16 v1, v27

    #@1c4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1c7
    .line 5981
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
    .line 5985
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
    .line 5986
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
    .line 5987
    const/16 v27, 0x1

    #@1e9
    move-object/from16 v0, p1

    #@1eb
    move/from16 v1, v27

    #@1ed
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1f0
    .line 5988
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
    .line 5985
    :goto_a
    add-int/lit8 v11, v11, 0x1

    #@203
    goto :goto_9

    #@204
    .line 5971
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
    .line 5977
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
    .line 5983
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
    .line 5990
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
    .line 5993
    :cond_a
    move-object/from16 v0, p0

    #@22e
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@230
    move-object/from16 v27, v0

    #@232
    if-eqz v27, :cond_b

    #@234
    .line 5994
    const/16 v27, 0x1

    #@236
    move-object/from16 v0, p1

    #@238
    move/from16 v1, v27

    #@23a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@23d
    .line 5995
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
    .line 6000
    :goto_b
    move-object/from16 v0, p0

    #@24e
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@250
    move-object/from16 v27, v0

    #@252
    if-eqz v27, :cond_c

    #@254
    .line 6001
    const/16 v27, 0x1

    #@256
    move-object/from16 v0, p1

    #@258
    move/from16 v1, v27

    #@25a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@25d
    .line 6002
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
    .line 6006
    :goto_c
    move-object/from16 v0, p0

    #@26e
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@270
    move-object/from16 v27, v0

    #@272
    if-eqz v27, :cond_d

    #@274
    .line 6007
    const/16 v27, 0x1

    #@276
    move-object/from16 v0, p1

    #@278
    move/from16 v1, v27

    #@27a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@27d
    .line 6008
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
    .line 6012
    :goto_d
    move-object/from16 v0, p0

    #@28e
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@290
    move-object/from16 v27, v0

    #@292
    if-eqz v27, :cond_e

    #@294
    .line 6013
    const/16 v27, 0x1

    #@296
    move-object/from16 v0, p1

    #@298
    move/from16 v1, v27

    #@29a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@29d
    .line 6014
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
    .line 6018
    :goto_e
    move-object/from16 v0, p0

    #@2ae
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2b0
    move-object/from16 v27, v0

    #@2b2
    if-eqz v27, :cond_f

    #@2b4
    .line 6019
    const/16 v27, 0x1

    #@2b6
    move-object/from16 v0, p1

    #@2b8
    move/from16 v1, v27

    #@2ba
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2bd
    .line 6020
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
    .line 6024
    :goto_f
    move-object/from16 v0, p0

    #@2ce
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2d0
    move-object/from16 v27, v0

    #@2d2
    if-eqz v27, :cond_10

    #@2d4
    .line 6025
    const/16 v27, 0x1

    #@2d6
    move-object/from16 v0, p1

    #@2d8
    move/from16 v1, v27

    #@2da
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2dd
    .line 6026
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
    .line 6030
    :goto_10
    move-object/from16 v0, p0

    #@2ee
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2f0
    move-object/from16 v27, v0

    #@2f2
    if-eqz v27, :cond_11

    #@2f4
    .line 6031
    const/16 v27, 0x1

    #@2f6
    move-object/from16 v0, p1

    #@2f8
    move/from16 v1, v27

    #@2fa
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2fd
    .line 6032
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
    .line 6036
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
    .line 6037
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
    .line 6038
    const/16 v27, 0x1

    #@31f
    move-object/from16 v0, p1

    #@321
    move/from16 v1, v27

    #@323
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@326
    .line 6039
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
    .line 6036
    :goto_13
    add-int/lit8 v11, v11, 0x1

    #@339
    goto :goto_12

    #@33a
    .line 5997
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
    .line 6004
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
    .line 6010
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
    .line 6016
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
    .line 6022
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
    .line 6028
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
    .line 6034
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
    .line 6041
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
    .line 6044
    :cond_13
    move-object/from16 v0, p0

    #@392
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@394
    move-object/from16 v27, v0

    #@396
    if-eqz v27, :cond_14

    #@398
    .line 6045
    const/16 v27, 0x1

    #@39a
    move-object/from16 v0, p1

    #@39c
    move/from16 v1, v27

    #@39e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3a1
    .line 6046
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
    .line 6050
    :goto_14
    move-object/from16 v0, p0

    #@3b2
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@3b4
    move-object/from16 v27, v0

    #@3b6
    if-eqz v27, :cond_15

    #@3b8
    .line 6051
    const/16 v27, 0x1

    #@3ba
    move-object/from16 v0, p1

    #@3bc
    move/from16 v1, v27

    #@3be
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3c1
    .line 6052
    const/4 v11, 0x0

    #@3c2
    :goto_15
    const/16 v27, 0x4

    #@3c4
    move/from16 v0, v27

    #@3c6
    if-ge v11, v0, :cond_16

    #@3c8
    .line 6053
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
    .line 6052
    add-int/lit8 v11, v11, 0x1

    #@3d9
    goto :goto_15

    #@3da
    .line 6048
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
    .line 6056
    :cond_15
    const/16 v27, 0x0

    #@3e6
    move-object/from16 v0, p1

    #@3e8
    move/from16 v1, v27

    #@3ea
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3ed
    .line 6058
    :cond_16
    move-object/from16 v0, p0

    #@3ef
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@3f1
    move-object/from16 v27, v0

    #@3f3
    if-eqz v27, :cond_18

    #@3f5
    .line 6059
    const/16 v27, 0x1

    #@3f7
    move-object/from16 v0, p1

    #@3f9
    move/from16 v1, v27

    #@3fb
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3fe
    .line 6060
    const/4 v11, 0x0

    #@3ff
    :goto_16
    const/16 v27, 0x6

    #@401
    move/from16 v0, v27

    #@403
    if-ge v11, v0, :cond_17

    #@405
    .line 6061
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
    .line 6062
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
    .line 6060
    add-int/lit8 v11, v11, 0x1

    #@425
    goto :goto_16

    #@426
    .line 6064
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
    .line 6065
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
    .line 6070
    :goto_17
    move-object/from16 v0, p0

    #@442
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@444
    move-object/from16 v27, v0

    #@446
    if-eqz v27, :cond_19

    #@448
    .line 6071
    const/16 v27, 0x1

    #@44a
    move-object/from16 v0, p1

    #@44c
    move/from16 v1, v27

    #@44e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@451
    .line 6072
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
    .line 6077
    :goto_18
    move-object/from16 v0, p0

    #@464
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@466
    move-object/from16 v27, v0

    #@468
    if-eqz v27, :cond_1a

    #@46a
    .line 6078
    const/16 v27, 0x1

    #@46c
    move-object/from16 v0, p1

    #@46e
    move/from16 v1, v27

    #@470
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@473
    .line 6079
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
    .line 6084
    :goto_19
    move-object/from16 v0, p0

    #@486
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    #@488
    move-object/from16 v27, v0

    #@48a
    if-eqz v27, :cond_1b

    #@48c
    .line 6085
    const/16 v27, 0x1

    #@48e
    move-object/from16 v0, p1

    #@490
    move/from16 v1, v27

    #@492
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@495
    .line 6086
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
    .line 6091
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
    .line 6092
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
    .line 6093
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
    .line 6095
    move-object/from16 v0, p0

    #@4cf
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@4d1
    move-object/from16 v27, v0

    #@4d3
    if-eqz v27, :cond_1f

    #@4d5
    .line 6096
    const/16 v27, 0x1

    #@4d7
    move-object/from16 v0, p1

    #@4d9
    move/from16 v1, v27

    #@4db
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4de
    .line 6097
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
    .line 6098
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
    .line 6099
    .local v10, "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v10, :cond_1d

    #@509
    .line 6100
    const/16 v27, 0x1

    #@50b
    move-object/from16 v0, p1

    #@50d
    move/from16 v1, v27

    #@50f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@512
    .line 6101
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
    .line 6102
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
    .line 6103
    .local v9, "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v9, :cond_1c

    #@52b
    .line 6104
    const/16 v32, 0x1

    #@52d
    move-object/from16 v0, p1

    #@52f
    move/from16 v1, v32

    #@531
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@534
    .line 6105
    move-object/from16 v0, p1

    #@536
    invoke-virtual {v9, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    #@539
    .line 6102
    :goto_1d
    add-int/lit8 v27, v27, 0x1

    #@53b
    goto :goto_1c

    #@53c
    .line 6067
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
    .line 6074
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
    .line 6081
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
    .line 6088
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
    .line 6107
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
    .line 6111
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
    .line 6098
    :cond_1e
    add-int/lit8 v27, v28, 0x1

    #@57d
    move/from16 v28, v27

    #@57f
    goto :goto_1b

    #@580
    .line 6115
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
    .line 5916
    :cond_20
    return-void
.end method
