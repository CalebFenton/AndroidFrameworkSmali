.class public final Lcom/android/internal/os/BatteryStatsImpl$Uid;
.super Landroid/os/BatteryStats$Uid;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Uid"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid$1;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid$2;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid$3;
    }
.end annotation


# static fields
.field static final NO_BATCHED_SCAN_STARTED:I = -0x1

.field static final PROCESS_STATE_NONE:I = 0x3


# instance fields
.field mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mBluetoothControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

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

.field mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

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

.field mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mWifiMulticastEnabled:Z

.field mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mWifiRunning:Z

.field mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mWifiScanStarted:Z

.field mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;I)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "uid"    # I

    #@0
    .prologue
    const/4 v5, 0x5

    #@1
    const/4 v4, 0x3

    #@2
    const/4 v3, 0x4

    #@3
    .line 4462
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    invoke-direct {p0}, Landroid/os/BatteryStats$Uid;-><init>()V

    #@8
    .line 4365
    const/4 v0, -0x1

    #@9
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    #@b
    .line 4380
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    #@d
    .line 4396
    new-array v0, v3, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@f
    .line 4395
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@11
    .line 4402
    new-array v0, v3, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@13
    .line 4401
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@15
    .line 4412
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@17
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@19
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@1b
    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@1e
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@20
    .line 4413
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@22
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@24
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@26
    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@29
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2b
    .line 4414
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2d
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@2f
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@31
    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@34
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@36
    .line 4420
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$1;

    #@38
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@3a
    invoke-direct {v0, p0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$1;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;Lcom/android/internal/os/BatteryStatsImpl;)V

    #@3d
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@3f
    .line 4427
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$2;

    #@41
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@43
    invoke-direct {v0, p0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$2;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;Lcom/android/internal/os/BatteryStatsImpl;)V

    #@46
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@48
    .line 4436
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$3;

    #@4a
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@4c
    invoke-direct {v0, p0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$3;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;Lcom/android/internal/os/BatteryStatsImpl;)V

    #@4f
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@51
    .line 4445
    new-instance v0, Landroid/util/SparseArray;

    #@53
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@56
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    #@58
    .line 4450
    new-instance v0, Landroid/util/ArrayMap;

    #@5a
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@5d
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    #@5f
    .line 4455
    new-instance v0, Landroid/util/ArrayMap;

    #@61
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@64
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    #@66
    .line 4460
    new-instance v0, Landroid/util/SparseArray;

    #@68
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@6b
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    #@6d
    .line 4463
    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    #@6f
    .line 4464
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@71
    .line 4465
    iget-object v1, p1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    #@73
    iget-object v2, p1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@75
    .line 4464
    invoke-direct {v0, p0, v3, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@78
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@7a
    .line 4466
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@7c
    .line 4467
    iget-object v1, p1, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    #@7e
    iget-object v2, p1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@80
    .line 4466
    invoke-direct {v0, p0, v5, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@83
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@85
    .line 4468
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@87
    .line 4469
    iget-object v1, p1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    #@89
    iget-object v2, p1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@8b
    .line 4468
    const/4 v3, 0x6

    #@8c
    invoke-direct {v0, p0, v3, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@8f
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@91
    .line 4470
    new-array v0, v5, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@93
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@95
    .line 4471
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@97
    .line 4472
    iget-object v1, p1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    #@99
    iget-object v2, p1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@9b
    .line 4471
    const/4 v3, 0x7

    #@9c
    invoke-direct {v0, p0, v3, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@9f
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@a1
    .line 4473
    new-array v0, v4, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@a3
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@a5
    .line 4474
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsImpl;->getCpuSpeedSteps()I

    #@a8
    move-result v0

    #@a9
    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@ab
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@ad
    .line 4462
    return-void
.end method


# virtual methods
.method public createAudioTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 4

    #@0
    .prologue
    .line 4630
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 4631
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    .line 4632
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mAudioTurnedOnTimers:Ljava/util/ArrayList;

    #@a
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@c
    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@e
    .line 4631
    const/16 v3, 0xf

    #@10
    invoke-direct {v0, p0, v3, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@13
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@15
    .line 4634
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@17
    return-object v0
.end method

.method public createCameraTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 4

    #@0
    .prologue
    .line 4702
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 4703
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    .line 4704
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mCameraTurnedOnTimers:Ljava/util/ArrayList;

    #@a
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@c
    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@e
    .line 4703
    const/16 v3, 0x11

    #@10
    invoke-direct {v0, p0, v3, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@13
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@15
    .line 4706
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@17
    return-object v0
.end method

.method public createFlashlightTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 4

    #@0
    .prologue
    .line 4678
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 4679
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    .line 4680
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightTurnedOnTimers:Ljava/util/ArrayList;

    #@a
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@c
    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@e
    .line 4679
    const/16 v3, 0x10

    #@10
    invoke-direct {v0, p0, v3, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@13
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@15
    .line 4682
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@17
    return-object v0
.end method

.method public createForegroundActivityTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 4726
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 4727
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@7
    .line 4728
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@9
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@b
    const/16 v2, 0xa

    #@d
    .line 4727
    invoke-direct {v0, p0, v2, v3, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@10
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@12
    .line 4730
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@14
    return-object v0
.end method

.method public createVibratorOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;
    .locals 3

    #@0
    .prologue
    .line 4762
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 4763
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@6
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@a
    const/16 v2, 0x9

    #@c
    invoke-direct {v0, p0, v2, v1}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@f
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@11
    .line 4765
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@13
    return-object v0
.end method

.method public createVideoTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 4

    #@0
    .prologue
    .line 4654
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 4655
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    .line 4656
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mVideoTurnedOnTimers:Ljava/util/ArrayList;

    #@a
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@c
    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@e
    .line 4655
    const/16 v3, 0x8

    #@10
    invoke-direct {v0, p0, v3, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@13
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@15
    .line 4658
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@17
    return-object v0
.end method

.method public bridge synthetic getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    #@0
    .prologue
    .line 4837
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
    .line 4838
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    return-object v0
.end method

.method public getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;
    .locals 1

    #@0
    .prologue
    .line 6787
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@2
    return-object v0
.end method

.method public bridge synthetic getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    #@0
    .prologue
    .line 4852
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
    .line 4853
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    return-object v0
.end method

.method public getCpuPowerMaUs(I)J
    .locals 2
    .param p1, "which"    # I

    #@0
    .prologue
    .line 5008
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
    .line 4847
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
    .line 4848
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    return-object v0
.end method

.method public bridge synthetic getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    #@0
    .prologue
    .line 4857
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
    .line 4858
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
    .line 4788
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 4789
    const-wide/16 v0, 0x0

    #@6
    return-wide v0

    #@7
    .line 4791
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
    .line 4489
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
    .line 4992
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 4993
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    #@9
    move-result-wide v0

    #@a
    long-to-int v0, v0

    #@b
    .line 4992
    :goto_0
    return v0

    #@c
    .line 4993
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
    .line 4986
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 4987
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    #@9
    move-result-wide v0

    #@a
    .line 4986
    :goto_0
    return-wide v0

    #@b
    .line 4987
    :cond_0
    const-wide/16 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public getNetworkActivityBytes(II)J
    .locals 2
    .param p1, "type"    # I
    .param p2, "which"    # I

    #@0
    .prologue
    .line 4966
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2
    if-eqz v0, :cond_0

    #@4
    if-ltz p1, :cond_0

    #@6
    .line 4967
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@8
    array-length v0, v0

    #@9
    if-ge p1, v0, :cond_0

    #@b
    .line 4968
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
    .line 4970
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
    .line 4976
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2
    if-eqz v0, :cond_0

    #@4
    if-ltz p1, :cond_0

    #@6
    .line 4977
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@8
    array-length v0, v0

    #@9
    if-ge p1, v0, :cond_0

    #@b
    .line 4978
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
    .line 4980
    :cond_0
    const-wide/16 v0, 0x0

    #@16
    return-wide v0
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
    .line 4504
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    #@2
    return-object v0
.end method

.method public getPackageStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 6610
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    #@8
    .line 6611
    .local v0, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    if-nez v0, :cond_0

    #@a
    .line 6612
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    #@c
    .end local v0    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    #@f
    .line 6613
    .restart local v0    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    #@11
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 6616
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
    .line 6593
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method public getPidStatsLocked(I)Landroid/os/BatteryStats$Uid$Pid;
    .locals 2
    .param p1, "pid"    # I

    #@0
    .prologue
    .line 6597
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/os/BatteryStats$Uid$Pid;

    #@8
    .line 6598
    .local v0, "p":Landroid/os/BatteryStats$Uid$Pid;
    if-nez v0, :cond_0

    #@a
    .line 6599
    new-instance v0, Landroid/os/BatteryStats$Uid$Pid;

    #@c
    .end local v0    # "p":Landroid/os/BatteryStats$Uid$Pid;
    invoke-direct {v0, p0}, Landroid/os/BatteryStats$Uid$Pid;-><init>(Landroid/os/BatteryStats$Uid;)V

    #@f
    .line 6600
    .restart local v0    # "p":Landroid/os/BatteryStats$Uid$Pid;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@14
    .line 6602
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
    .line 4875
    if-ltz p1, :cond_0

    #@4
    const/4 v0, 0x3

    #@5
    if-lt p1, v0, :cond_1

    #@7
    :cond_0
    return-wide v2

    #@8
    .line 4876
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@a
    aget-object v0, v0, p1

    #@c
    if-nez v0, :cond_2

    #@e
    .line 4877
    return-wide v2

    #@f
    .line 4879
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
    .line 4499
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    #@2
    return-object v0
.end method

.method public getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 6540
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    #@8
    .line 6541
    .local v0, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-nez v0, :cond_0

    #@a
    .line 6542
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    #@c
    .end local v0    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    invoke-direct {v0, p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;Ljava/lang/String;)V

    #@f
    .line 6543
    .restart local v0    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    #@11
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 6546
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
    .line 4494
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method public getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 5
    .param p1, "sensor"    # I
    .param p2, "create"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 6664
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    #@9
    .line 6665
    .local v0, "se":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    if-nez v0, :cond_1

    #@b
    .line 6666
    if-nez p2, :cond_0

    #@d
    .line 6667
    return-object v4

    #@e
    .line 6669
    :cond_0
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    #@10
    .end local v0    # "se":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    invoke-direct {v0, p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;I)V

    #@13
    .line 6670
    .restart local v0    # "se":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    #@15
    invoke-virtual {v3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@18
    .line 6672
    :cond_1
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1a
    .line 6673
    .local v1, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v1, :cond_2

    #@1c
    .line 6674
    return-object v1

    #@1d
    .line 6676
    :cond_2
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@1f
    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    #@21
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Ljava/util/ArrayList;

    #@27
    .line 6677
    .local v2, "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    if-nez v2, :cond_3

    #@29
    .line 6678
    new-instance v2, Ljava/util/ArrayList;

    #@2b
    .end local v2    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@2e
    .line 6679
    .restart local v2    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@30
    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    #@32
    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@35
    .line 6681
    :cond_3
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@37
    .end local v1    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@39
    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@3b
    const/4 v4, 0x3

    #@3c
    invoke-direct {v1, p0, v4, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@3f
    .line 6682
    .restart local v1    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iput-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@41
    .line 6683
    return-object v1
.end method

.method public getServiceStatsLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "serv"    # Ljava/lang/String;

    #@0
    .prologue
    .line 6624
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getPackageStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    #@3
    move-result-object v0

    #@4
    .line 6625
    .local v0, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    #@c
    .line 6626
    .local v1, "ss":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    if-nez v1, :cond_0

    #@e
    .line 6627
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->newServiceStatsLocked()Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    #@11
    move-result-object v1

    #@12
    .line 6628
    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    #@14
    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 6631
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
    .line 4484
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
    .line 5003
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getTimeAtCpuSpeed(II)J
    .locals 2
    .param p1, "step"    # I
    .param p2, "which"    # I

    #@0
    .prologue
    .line 5013
    if-ltz p1, :cond_0

    #@2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@4
    array-length v0, v0

    #@5
    if-ge p1, v0, :cond_0

    #@7
    .line 5014
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@9
    aget-object v0, v0, p1

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 5015
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@f
    aget-object v0, v0, p1

    #@11
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    #@14
    move-result-wide v0

    #@15
    return-wide v0

    #@16
    .line 5018
    :cond_0
    const-wide/16 v0, 0x0

    #@18
    return-wide v0
.end method

.method public getUid()I
    .locals 1

    #@0
    .prologue
    .line 4509
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
    .line 4907
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 4908
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 4910
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
    .line 4998
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
    .line 4883
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
    .line 4884
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@2
    return-object v0
.end method

.method public bridge synthetic getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    #@0
    .prologue
    .line 4842
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
    .line 4843
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
    .line 4479
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
    .line 4821
    if-ltz p1, :cond_0

    #@3
    const/4 v0, 0x5

    #@4
    if-lt p1, v0, :cond_1

    #@6
    :cond_0
    return v1

    #@7
    .line 4822
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@9
    aget-object v0, v0, p1

    #@b
    if-nez v0, :cond_2

    #@d
    .line 4823
    return v1

    #@e
    .line 4825
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
    .line 4812
    if-ltz p1, :cond_0

    #@4
    const/4 v0, 0x5

    #@5
    if-lt p1, v0, :cond_1

    #@7
    :cond_0
    return-wide v2

    #@8
    .line 4813
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@a
    aget-object v0, v0, p1

    #@c
    if-nez v0, :cond_2

    #@e
    .line 4814
    return-wide v2

    #@f
    .line 4816
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

.method public getWifiControllerActivity(II)J
    .locals 2
    .param p1, "type"    # I
    .param p2, "which"    # I

    #@0
    .prologue
    .line 5023
    if-ltz p1, :cond_0

    #@2
    const/4 v0, 0x4

    #@3
    if-ge p1, v0, :cond_0

    #@5
    .line 5024
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@7
    aget-object v0, v0, p1

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 5025
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@d
    aget-object v0, v0, p1

    #@f
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    #@12
    move-result-wide v0

    #@13
    return-wide v0

    #@14
    .line 5027
    :cond_0
    const-wide/16 v0, 0x0

    #@16
    return-wide v0
.end method

.method public getWifiMulticastTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    #@0
    .prologue
    .line 4830
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 4831
    const-wide/16 v0, 0x0

    #@6
    return-wide v0

    #@7
    .line 4833
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
    .line 4780
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 4781
    const-wide/16 v0, 0x0

    #@6
    return-wide v0

    #@7
    .line 4783
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
    .line 4804
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 4805
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 4807
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
    .line 4796
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 4797
    const-wide/16 v0, 0x0

    #@6
    return-wide v0

    #@7
    .line 4799
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
    .line 4961
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
    .line 4902
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
    const/4 v4, 0x4

    #@1
    .line 5031
    new-array v1, v4, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@3
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@5
    .line 5032
    new-array v1, v4, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@7
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@9
    .line 5033
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    #@c
    .line 5034
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@e
    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@10
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@12
    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@14
    invoke-direct {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@17
    aput-object v2, v1, v0

    #@19
    .line 5035
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@1b
    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@1d
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@1f
    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@21
    invoke-direct {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@24
    aput-object v2, v1, v0

    #@26
    .line 5033
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_0

    #@29
    .line 5037
    :cond_0
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2b
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@2d
    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@2f
    invoke-direct {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@32
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@34
    .line 5038
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@36
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@38
    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@3a
    invoke-direct {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@3d
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@3f
    .line 5030
    return-void
.end method

.method initUserActivityLocked()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x3

    #@1
    .line 4932
    new-array v1, v4, [Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@3
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@5
    .line 4933
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    #@8
    .line 4934
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@a
    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@c
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@e
    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@10
    invoke-direct {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@13
    aput-object v2, v1, v0

    #@15
    .line 4933
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 4931
    :cond_0
    return-void
.end method

.method makeProcessState(ILandroid/os/Parcel;)V
    .locals 7
    .param p1, "i"    # I
    .param p2, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/16 v2, 0xc

    #@2
    const/4 v3, 0x0

    #@3
    .line 4862
    if-ltz p1, :cond_0

    #@5
    const/4 v0, 0x3

    #@6
    if-lt p1, v0, :cond_1

    #@8
    :cond_0
    return-void

    #@9
    .line 4864
    :cond_1
    if-nez p2, :cond_2

    #@b
    .line 4865
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@d
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@f
    .line 4866
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@11
    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@13
    .line 4865
    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@16
    aput-object v1, v0, p1

    #@18
    .line 4861
    :goto_0
    return-void

    #@19
    .line 4868
    :cond_2
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1b
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1d
    .line 4869
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@1f
    iget-object v4, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@21
    move-object v1, p0

    #@22
    move-object v5, p2

    #@23
    .line 4868
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@26
    aput-object v0, v6, p1

    #@28
    goto :goto_0
.end method

.method makeWifiBatchedScanBin(ILandroid/os/Parcel;)V
    .locals 7
    .param p1, "i"    # I
    .param p2, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/16 v2, 0xb

    #@2
    .line 4914
    if-ltz p1, :cond_0

    #@4
    const/4 v0, 0x5

    #@5
    if-lt p1, v0, :cond_1

    #@7
    :cond_0
    return-void

    #@8
    .line 4916
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@a
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiBatchedScanTimers:Landroid/util/SparseArray;

    #@c
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Ljava/util/ArrayList;

    #@12
    .line 4917
    .local v3, "collected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    if-nez v3, :cond_2

    #@14
    .line 4918
    new-instance v3, Ljava/util/ArrayList;

    #@16
    .end local v3    # "collected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@19
    .line 4919
    .restart local v3    # "collected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@1b
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiBatchedScanTimers:Landroid/util/SparseArray;

    #@1d
    invoke-virtual {v0, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@20
    .line 4921
    :cond_2
    if-nez p2, :cond_3

    #@22
    .line 4922
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@24
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@26
    .line 4923
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@28
    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@2a
    .line 4922
    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@2d
    aput-object v1, v0, p1

    #@2f
    .line 4913
    :goto_0
    return-void

    #@30
    .line 4925
    :cond_3
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@32
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@34
    .line 4926
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@36
    iget-object v4, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@38
    move-object v1, p0

    #@39
    move-object v5, p2

    #@3a
    .line 4925
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@3d
    aput-object v0, v6, p1

    #@3f
    goto :goto_0
.end method

.method public noteActivityPausedLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 4741
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 4742
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@9
    .line 4740
    :cond_0
    return-void
.end method

.method public noteActivityResumedLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 4736
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createForegroundActivityTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@7
    .line 4734
    return-void
.end method

.method public noteAudioTurnedOffLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 4642
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 4643
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@9
    .line 4641
    :cond_0
    return-void
.end method

.method public noteAudioTurnedOnLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 4638
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createAudioTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@7
    .line 4637
    return-void
.end method

.method public noteCameraTurnedOffLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 4714
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 4715
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@9
    .line 4713
    :cond_0
    return-void
.end method

.method public noteCameraTurnedOnLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 4710
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createCameraTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@7
    .line 4709
    return-void
.end method

.method public noteFlashlightTurnedOffLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 4690
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 4691
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@9
    .line 4689
    :cond_0
    return-void
.end method

.method public noteFlashlightTurnedOnLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 4686
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createFlashlightTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@7
    .line 4685
    return-void
.end method

.method public noteFullWifiLockAcquiredLocked(J)V
    .locals 5
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 4534
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    #@2
    if-nez v0, :cond_1

    #@4
    .line 4535
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    #@7
    .line 4536
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 4537
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@d
    .line 4538
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@f
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    #@11
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@13
    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@15
    .line 4537
    const/4 v3, 0x5

    #@16
    invoke-direct {v0, p0, v3, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@19
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1b
    .line 4540
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1d
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@20
    .line 4533
    :cond_1
    return-void
.end method

.method public noteFullWifiLockReleasedLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 4546
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 4547
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    #@7
    .line 4548
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@9
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@c
    .line 4545
    :cond_0
    return-void
.end method

.method noteMobileRadioActiveTimeLocked(J)V
    .locals 5
    .param p1, "batteryUptime"    # J

    #@0
    .prologue
    .line 4952
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 4953
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->initNetworkActivityLocked()V

    #@7
    .line 4955
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@9
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    #@c
    .line 4956
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@e
    const-wide/16 v2, 0x1

    #@10
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    #@13
    .line 4951
    return-void
.end method

.method noteNetworkActivityLocked(IJJ)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "deltaBytes"    # J
    .param p4, "deltaPackets"    # J

    #@0
    .prologue
    .line 4939
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 4940
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->initNetworkActivityLocked()V

    #@7
    .line 4942
    :cond_0
    if-ltz p1, :cond_1

    #@9
    const/4 v0, 0x4

    #@a
    if-ge p1, v0, :cond_1

    #@c
    .line 4943
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@e
    aget-object v0, v0, p1

    #@10
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    #@13
    .line 4944
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@15
    aget-object v0, v0, p1

    #@17
    invoke-virtual {v0, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    #@1a
    .line 4938
    :goto_0
    return-void

    #@1b
    .line 4946
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
    .line 4947
    new-instance v2, Ljava/lang/Throwable;

    #@3b
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    #@3e
    .line 4946
    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@41
    goto :goto_0
.end method

.method public noteResetAudioLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 4648
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 4649
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    #@9
    .line 4647
    :cond_0
    return-void
.end method

.method public noteResetCameraLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 4720
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 4721
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    #@9
    .line 4719
    :cond_0
    return-void
.end method

.method public noteResetFlashlightLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 4696
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 4697
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    #@9
    .line 4695
    :cond_0
    return-void
.end method

.method public noteResetVideoLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 4672
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 4673
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    #@9
    .line 4671
    :cond_0
    return-void
.end method

.method public noteStartGps(J)V
    .locals 3
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 6773
    const/16 v1, -0x2710

    #@2
    const/4 v2, 0x1

    #@3
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    move-result-object v0

    #@7
    .line 6774
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    #@9
    .line 6775
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@c
    .line 6772
    :cond_0
    return-void
.end method

.method public noteStartJobLocked(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 6701
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@2
    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->startObject(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@8
    .line 6702
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    #@a
    .line 6703
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@d
    .line 6700
    :cond_0
    return-void
.end method

.method public noteStartSensor(IJ)V
    .locals 2
    .param p1, "sensor"    # I
    .param p2, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 6758
    const/4 v1, 0x1

    #@1
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@4
    move-result-object v0

    #@5
    .line 6759
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    #@7
    .line 6760
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@a
    .line 6757
    :cond_0
    return-void
.end method

.method public noteStartSyncLocked(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 6687
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@2
    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->startObject(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@8
    .line 6688
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    #@a
    .line 6689
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@d
    .line 6686
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
    .line 6715
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@2
    invoke-virtual {v2, p2}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->startObject(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    #@8
    .line 6716
    .local v1, "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    if-eqz v1, :cond_0

    #@a
    .line 6717
    invoke-virtual {v1, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->getStopwatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@11
    .line 6719
    :cond_0
    if-ltz p1, :cond_1

    #@13
    if-nez p3, :cond_1

    #@15
    .line 6720
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getPidStatsLocked(I)Landroid/os/BatteryStats$Uid$Pid;

    #@18
    move-result-object v0

    #@19
    .line 6721
    .local v0, "p":Landroid/os/BatteryStats$Uid$Pid;
    iget v2, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    #@1b
    add-int/lit8 v3, v2, 0x1

    #@1d
    iput v3, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    #@1f
    if-nez v2, :cond_1

    #@21
    .line 6722
    iput-wide p4, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    #@23
    .line 6714
    .end local v0    # "p":Landroid/os/BatteryStats$Uid$Pid;
    :cond_1
    return-void
.end method

.method public noteStopGps(J)V
    .locals 3
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 6780
    const/16 v1, -0x2710

    #@2
    const/4 v2, 0x0

    #@3
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    move-result-object v0

    #@7
    .line 6781
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    #@9
    .line 6782
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@c
    .line 6779
    :cond_0
    return-void
.end method

.method public noteStopJobLocked(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 6708
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@2
    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->stopObject(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@8
    .line 6709
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    #@a
    .line 6710
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@d
    .line 6707
    :cond_0
    return-void
.end method

.method public noteStopSensor(IJ)V
    .locals 2
    .param p1, "sensor"    # I
    .param p2, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 6766
    const/4 v1, 0x0

    #@1
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@4
    move-result-object v0

    #@5
    .line 6767
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    #@7
    .line 6768
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@a
    .line 6764
    :cond_0
    return-void
.end method

.method public noteStopSyncLocked(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 6694
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@2
    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->stopObject(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@8
    .line 6695
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    #@a
    .line 6696
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@d
    .line 6693
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
    .line 6728
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@2
    invoke-virtual {v2, p2}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->stopObject(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    #@8
    .line 6729
    .local v1, "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    if-eqz v1, :cond_0

    #@a
    .line 6730
    invoke-virtual {v1, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->getStopwatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@11
    .line 6732
    :cond_0
    if-ltz p1, :cond_1

    #@13
    if-nez p3, :cond_1

    #@15
    .line 6733
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    #@17
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Landroid/os/BatteryStats$Uid$Pid;

    #@1d
    .line 6734
    .local v0, "p":Landroid/os/BatteryStats$Uid$Pid;
    if-eqz v0, :cond_1

    #@1f
    iget v2, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    #@21
    if-lez v2, :cond_1

    #@23
    .line 6735
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
    .line 6736
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
    .line 6737
    const-wide/16 v2, 0x0

    #@37
    iput-wide v2, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    #@39
    .line 6727
    .end local v0    # "p":Landroid/os/BatteryStats$Uid$Pid;
    :cond_1
    return-void
.end method

.method public noteUserActivityLocked(I)V
    .locals 3
    .param p1, "type"    # I

    #@0
    .prologue
    .line 4889
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 4890
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->initUserActivityLocked()V

    #@7
    .line 4892
    :cond_0
    if-ltz p1, :cond_1

    #@9
    const/4 v0, 0x3

    #@a
    if-ge p1, v0, :cond_1

    #@c
    .line 4893
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@e
    aget-object v0, v0, p1

    #@10
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->stepAtomic()V

    #@13
    .line 4888
    :goto_0
    return-void

    #@14
    .line 4895
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
    .line 4896
    new-instance v2, Ljava/lang/Throwable;

    #@34
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    #@37
    .line 4895
    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3a
    goto :goto_0
.end method

.method public noteVibratorOffLocked()V
    .locals 2

    #@0
    .prologue
    .line 4773
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 4774
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@6
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->abortLastDuration(Lcom/android/internal/os/BatteryStatsImpl;)V

    #@b
    .line 4772
    :cond_0
    return-void
.end method

.method public noteVibratorOnLocked(J)V
    .locals 3
    .param p1, "durationMillis"    # J

    #@0
    .prologue
    .line 4769
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createVibratorOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@6
    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->addDuration(Lcom/android/internal/os/BatteryStatsImpl;J)V

    #@9
    .line 4768
    return-void
.end method

.method public noteVideoTurnedOffLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 4666
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 4667
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@9
    .line 4665
    :cond_0
    return-void
.end method

.method public noteVideoTurnedOnLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 4662
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createVideoTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@7
    .line 4661
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
    .line 4574
    const/4 v0, 0x0

    #@2
    .line 4575
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
    .line 4576
    shr-int/lit8 p1, p1, 0x3

    #@b
    .line 4577
    add-int/lit8 v0, v0, 0x1

    #@d
    goto :goto_0

    #@e
    .line 4580
    :cond_0
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    #@10
    if-ne v1, v0, :cond_1

    #@12
    return-void

    #@13
    .line 4582
    :cond_1
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    #@15
    const/4 v2, -0x1

    #@16
    if-eq v1, v2, :cond_2

    #@18
    .line 4583
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1a
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    #@1c
    aget-object v1, v1, v2

    #@1e
    invoke-virtual {v1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@21
    .line 4586
    :cond_2
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    #@23
    .line 4587
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@25
    aget-object v1, v1, v0

    #@27
    if-nez v1, :cond_3

    #@29
    .line 4588
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeWifiBatchedScanBin(ILandroid/os/Parcel;)V

    #@2c
    .line 4590
    :cond_3
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2e
    aget-object v1, v1, v0

    #@30
    invoke-virtual {v1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@33
    .line 4573
    return-void
.end method

.method public noteWifiBatchedScanStoppedLocked(J)V
    .locals 3
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 4595
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    #@3
    if-eq v0, v2, :cond_0

    #@5
    .line 4596
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@7
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    #@9
    aget-object v0, v0, v1

    #@b
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@e
    .line 4598
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    #@10
    .line 4594
    :cond_0
    return-void
.end method

.method public noteWifiControllerActivityLocked(IJ)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "timeMs"    # J

    #@0
    .prologue
    .line 4623
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2
    aget-object v0, v0, p1

    #@4
    if-nez v0, :cond_0

    #@6
    .line 4624
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@8
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@a
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@c
    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@e
    invoke-direct {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@11
    aput-object v1, v0, p1

    #@13
    .line 4626
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@15
    aget-object v0, v0, p1

    #@17
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    #@1a
    .line 4622
    return-void
.end method

.method public noteWifiMulticastDisabledLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 4616
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 4617
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    #@7
    .line 4618
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@9
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@c
    .line 4615
    :cond_0
    return-void
.end method

.method public noteWifiMulticastEnabledLocked(J)V
    .locals 5
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 4604
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    #@2
    if-nez v0, :cond_1

    #@4
    .line 4605
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    #@7
    .line 4606
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 4607
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@d
    .line 4608
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@f
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    #@11
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@13
    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@15
    .line 4607
    const/4 v3, 0x7

    #@16
    invoke-direct {v0, p0, v3, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@19
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1b
    .line 4610
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1d
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@20
    .line 4603
    :cond_1
    return-void
.end method

.method public noteWifiRunningLocked(J)V
    .locals 5
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 4514
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    #@2
    if-nez v0, :cond_1

    #@4
    .line 4515
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    #@7
    .line 4516
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 4517
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@d
    .line 4518
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@f
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    #@11
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@13
    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@15
    .line 4517
    const/4 v3, 0x4

    #@16
    invoke-direct {v0, p0, v3, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@19
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1b
    .line 4520
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1d
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@20
    .line 4513
    :cond_1
    return-void
.end method

.method public noteWifiScanStartedLocked(J)V
    .locals 5
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 4554
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    #@2
    if-nez v0, :cond_1

    #@4
    .line 4555
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    #@7
    .line 4556
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 4557
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@d
    .line 4558
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@f
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    #@11
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@13
    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@15
    .line 4557
    const/4 v3, 0x6

    #@16
    invoke-direct {v0, p0, v3, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@19
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1b
    .line 4560
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1d
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@20
    .line 4553
    :cond_1
    return-void
.end method

.method public noteWifiScanStoppedLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 4566
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 4567
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    #@7
    .line 4568
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@9
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@c
    .line 4565
    :cond_0
    return-void
.end method

.method public noteWifiStoppedLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 4526
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 4527
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    #@7
    .line 4528
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@9
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@c
    .line 4525
    :cond_0
    return-void
.end method

.method readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 33
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p2, "screenOffTimeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p3, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 5478
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v21

    #@4
    .line 5479
    .local v21, "numWakelocks":I
    move-object/from16 v0, p0

    #@6
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@8
    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->clear()V

    #@b
    .line 5480
    const/4 v12, 0x0

    #@c
    .local v12, "j":I
    :goto_0
    move/from16 v0, v21

    #@e
    if-ge v12, v0, :cond_0

    #@10
    .line 5481
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@13
    move-result-object v31

    #@14
    .line 5482
    .local v31, "wakelockName":Ljava/lang/String;
    new-instance v30, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    #@16
    move-object/from16 v0, v30

    #@18
    move-object/from16 v1, p0

    #@1a
    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    #@1d
    .line 5483
    .local v30, "wakelock":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    move-object/from16 v0, v30

    #@1f
    move-object/from16 v1, p1

    #@21
    move-object/from16 v2, p2

    #@23
    move-object/from16 v3, p3

    #@25
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@28
    .line 5484
    move-object/from16 v0, p0

    #@2a
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@2c
    move-object/from16 v0, v31

    #@2e
    move-object/from16 v1, v30

    #@30
    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    #@33
    .line 5480
    add-int/lit8 v12, v12, 0x1

    #@35
    goto :goto_0

    #@36
    .line 5487
    .end local v30    # "wakelock":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    .end local v31    # "wakelockName":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@39
    move-result v20

    #@3a
    .line 5488
    .local v20, "numSyncs":I
    move-object/from16 v0, p0

    #@3c
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@3e
    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->clear()V

    #@41
    .line 5489
    const/4 v12, 0x0

    #@42
    :goto_1
    move/from16 v0, v20

    #@44
    if-ge v12, v0, :cond_2

    #@46
    .line 5490
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@49
    move-result-object v29

    #@4a
    .line 5491
    .local v29, "syncName":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@4d
    move-result v4

    #@4e
    if-eqz v4, :cond_1

    #@50
    .line 5492
    move-object/from16 v0, p0

    #@52
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@54
    move-object/from16 v32, v0

    #@56
    .line 5493
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@58
    const/16 v6, 0xd

    #@5a
    const/4 v7, 0x0

    #@5b
    move-object/from16 v5, p0

    #@5d
    move-object/from16 v8, p1

    #@5f
    move-object/from16 v9, p3

    #@61
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@64
    .line 5492
    move-object/from16 v0, v32

    #@66
    move-object/from16 v1, v29

    #@68
    invoke-virtual {v0, v1, v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    #@6b
    .line 5489
    :cond_1
    add-int/lit8 v12, v12, 0x1

    #@6d
    goto :goto_1

    #@6e
    .line 5497
    .end local v29    # "syncName":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@71
    move-result v16

    #@72
    .line 5498
    .local v16, "numJobs":I
    move-object/from16 v0, p0

    #@74
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@76
    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->clear()V

    #@79
    .line 5499
    const/4 v12, 0x0

    #@7a
    :goto_2
    move/from16 v0, v16

    #@7c
    if-ge v12, v0, :cond_4

    #@7e
    .line 5500
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@81
    move-result-object v13

    #@82
    .line 5501
    .local v13, "jobName":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@85
    move-result v4

    #@86
    if-eqz v4, :cond_3

    #@88
    .line 5502
    move-object/from16 v0, p0

    #@8a
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@8c
    move-object/from16 v32, v0

    #@8e
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@90
    const/16 v6, 0xe

    #@92
    const/4 v7, 0x0

    #@93
    move-object/from16 v5, p0

    #@95
    move-object/from16 v8, p1

    #@97
    move-object/from16 v9, p3

    #@99
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@9c
    move-object/from16 v0, v32

    #@9e
    invoke-virtual {v0, v13, v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    #@a1
    .line 5499
    :cond_3
    add-int/lit8 v12, v12, 0x1

    #@a3
    goto :goto_2

    #@a4
    .line 5506
    .end local v13    # "jobName":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@a7
    move-result v19

    #@a8
    .line 5507
    .local v19, "numSensors":I
    move-object/from16 v0, p0

    #@aa
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    #@ac
    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    #@af
    .line 5508
    const/4 v14, 0x0

    #@b0
    .local v14, "k":I
    :goto_3
    move/from16 v0, v19

    #@b2
    if-ge v14, v0, :cond_5

    #@b4
    .line 5509
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@b7
    move-result v27

    #@b8
    .line 5510
    .local v27, "sensorNumber":I
    new-instance v26, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    #@ba
    move-object/from16 v0, v26

    #@bc
    move-object/from16 v1, p0

    #@be
    move/from16 v2, v27

    #@c0
    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;I)V

    #@c3
    .line 5511
    .local v26, "sensor":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    move-object/from16 v0, p0

    #@c5
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@c7
    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@c9
    move-object/from16 v0, v26

    #@cb
    move-object/from16 v1, p3

    #@cd
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@d0
    .line 5512
    move-object/from16 v0, p0

    #@d2
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    #@d4
    move/from16 v0, v27

    #@d6
    move-object/from16 v1, v26

    #@d8
    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@db
    .line 5508
    add-int/lit8 v14, v14, 0x1

    #@dd
    goto :goto_3

    #@de
    .line 5515
    .end local v26    # "sensor":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    .end local v27    # "sensorNumber":I
    :cond_5
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@e1
    move-result v18

    #@e2
    .line 5516
    .local v18, "numProcs":I
    move-object/from16 v0, p0

    #@e4
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    #@e6
    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    #@e9
    .line 5517
    const/4 v14, 0x0

    #@ea
    :goto_4
    move/from16 v0, v18

    #@ec
    if-ge v14, v0, :cond_6

    #@ee
    .line 5518
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f1
    move-result-object v25

    #@f2
    .line 5519
    .local v25, "processName":Ljava/lang/String;
    new-instance v24, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    #@f4
    move-object/from16 v0, v24

    #@f6
    move-object/from16 v1, p0

    #@f8
    move-object/from16 v2, v25

    #@fa
    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;Ljava/lang/String;)V

    #@fd
    .line 5520
    .local v24, "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    move-object/from16 v0, v24

    #@ff
    move-object/from16 v1, p3

    #@101
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->readFromParcelLocked(Landroid/os/Parcel;)V

    #@104
    .line 5521
    move-object/from16 v0, p0

    #@106
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    #@108
    move-object/from16 v0, v25

    #@10a
    move-object/from16 v1, v24

    #@10c
    invoke-virtual {v4, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10f
    .line 5517
    add-int/lit8 v14, v14, 0x1

    #@111
    goto :goto_4

    #@112
    .line 5524
    .end local v24    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .end local v25    # "processName":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@115
    move-result v17

    #@116
    .line 5525
    .local v17, "numPkgs":I
    move-object/from16 v0, p0

    #@118
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    #@11a
    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    #@11d
    .line 5526
    const/4 v15, 0x0

    #@11e
    .local v15, "l":I
    :goto_5
    move/from16 v0, v17

    #@120
    if-ge v15, v0, :cond_7

    #@122
    .line 5527
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@125
    move-result-object v22

    #@126
    .line 5528
    .local v22, "packageName":Ljava/lang/String;
    new-instance v23, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    #@128
    move-object/from16 v0, v23

    #@12a
    move-object/from16 v1, p0

    #@12c
    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    #@12f
    .line 5529
    .local v23, "pkg":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    move-object/from16 v0, v23

    #@131
    move-object/from16 v1, p3

    #@133
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->readFromParcelLocked(Landroid/os/Parcel;)V

    #@136
    .line 5530
    move-object/from16 v0, p0

    #@138
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    #@13a
    move-object/from16 v0, v22

    #@13c
    move-object/from16 v1, v23

    #@13e
    invoke-virtual {v4, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@141
    .line 5526
    add-int/lit8 v15, v15, 0x1

    #@143
    goto :goto_5

    #@144
    .line 5533
    .end local v22    # "packageName":Ljava/lang/String;
    .end local v23    # "pkg":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    :cond_7
    const/4 v4, 0x0

    #@145
    move-object/from16 v0, p0

    #@147
    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    #@149
    .line 5534
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@14c
    move-result v4

    #@14d
    if-eqz v4, :cond_8

    #@14f
    .line 5535
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@151
    .line 5536
    move-object/from16 v0, p0

    #@153
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@155
    iget-object v7, v5, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    #@157
    move-object/from16 v0, p0

    #@159
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@15b
    iget-object v8, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@15d
    .line 5535
    const/4 v6, 0x4

    #@15e
    move-object/from16 v5, p0

    #@160
    move-object/from16 v9, p3

    #@162
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@165
    move-object/from16 v0, p0

    #@167
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@169
    .line 5540
    :goto_6
    const/4 v4, 0x0

    #@16a
    move-object/from16 v0, p0

    #@16c
    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    #@16e
    .line 5541
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@171
    move-result v4

    #@172
    if-eqz v4, :cond_9

    #@174
    .line 5542
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@176
    .line 5543
    move-object/from16 v0, p0

    #@178
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@17a
    iget-object v7, v5, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    #@17c
    move-object/from16 v0, p0

    #@17e
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@180
    iget-object v8, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@182
    .line 5542
    const/4 v6, 0x5

    #@183
    move-object/from16 v5, p0

    #@185
    move-object/from16 v9, p3

    #@187
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@18a
    move-object/from16 v0, p0

    #@18c
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@18e
    .line 5547
    :goto_7
    const/4 v4, 0x0

    #@18f
    move-object/from16 v0, p0

    #@191
    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    #@193
    .line 5548
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@196
    move-result v4

    #@197
    if-eqz v4, :cond_a

    #@199
    .line 5549
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@19b
    .line 5550
    move-object/from16 v0, p0

    #@19d
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@19f
    iget-object v7, v5, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    #@1a1
    move-object/from16 v0, p0

    #@1a3
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@1a5
    iget-object v8, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@1a7
    .line 5549
    const/4 v6, 0x6

    #@1a8
    move-object/from16 v5, p0

    #@1aa
    move-object/from16 v9, p3

    #@1ac
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@1af
    move-object/from16 v0, p0

    #@1b1
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1b3
    .line 5554
    :goto_8
    const/4 v4, -0x1

    #@1b4
    move-object/from16 v0, p0

    #@1b6
    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    #@1b8
    .line 5555
    const/4 v11, 0x0

    #@1b9
    .local v11, "i":I
    :goto_9
    const/4 v4, 0x5

    #@1ba
    if-ge v11, v4, :cond_c

    #@1bc
    .line 5556
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@1bf
    move-result v4

    #@1c0
    if-eqz v4, :cond_b

    #@1c2
    .line 5557
    move-object/from16 v0, p0

    #@1c4
    move-object/from16 v1, p3

    #@1c6
    invoke-virtual {v0, v11, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeWifiBatchedScanBin(ILandroid/os/Parcel;)V

    #@1c9
    .line 5555
    :goto_a
    add-int/lit8 v11, v11, 0x1

    #@1cb
    goto :goto_9

    #@1cc
    .line 5538
    .end local v11    # "i":I
    :cond_8
    const/4 v4, 0x0

    #@1cd
    move-object/from16 v0, p0

    #@1cf
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1d1
    goto :goto_6

    #@1d2
    .line 5545
    :cond_9
    const/4 v4, 0x0

    #@1d3
    move-object/from16 v0, p0

    #@1d5
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1d7
    goto :goto_7

    #@1d8
    .line 5552
    :cond_a
    const/4 v4, 0x0

    #@1d9
    move-object/from16 v0, p0

    #@1db
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1dd
    goto :goto_8

    #@1de
    .line 5559
    .restart local v11    # "i":I
    :cond_b
    move-object/from16 v0, p0

    #@1e0
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1e2
    const/4 v5, 0x0

    #@1e3
    aput-object v5, v4, v11

    #@1e5
    goto :goto_a

    #@1e6
    .line 5562
    :cond_c
    const/4 v4, 0x0

    #@1e7
    move-object/from16 v0, p0

    #@1e9
    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    #@1eb
    .line 5563
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@1ee
    move-result v4

    #@1ef
    if-eqz v4, :cond_d

    #@1f1
    .line 5564
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1f3
    .line 5565
    move-object/from16 v0, p0

    #@1f5
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@1f7
    iget-object v7, v5, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    #@1f9
    move-object/from16 v0, p0

    #@1fb
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@1fd
    iget-object v8, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@1ff
    .line 5564
    const/4 v6, 0x7

    #@200
    move-object/from16 v5, p0

    #@202
    move-object/from16 v9, p3

    #@204
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@207
    move-object/from16 v0, p0

    #@209
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@20b
    .line 5569
    :goto_b
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@20e
    move-result v4

    #@20f
    if-eqz v4, :cond_e

    #@211
    .line 5570
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@213
    .line 5571
    move-object/from16 v0, p0

    #@215
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@217
    iget-object v7, v5, Lcom/android/internal/os/BatteryStatsImpl;->mAudioTurnedOnTimers:Ljava/util/ArrayList;

    #@219
    move-object/from16 v0, p0

    #@21b
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@21d
    iget-object v8, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@21f
    .line 5570
    const/16 v6, 0xf

    #@221
    move-object/from16 v5, p0

    #@223
    move-object/from16 v9, p3

    #@225
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@228
    move-object/from16 v0, p0

    #@22a
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@22c
    .line 5575
    :goto_c
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@22f
    move-result v4

    #@230
    if-eqz v4, :cond_f

    #@232
    .line 5576
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@234
    .line 5577
    move-object/from16 v0, p0

    #@236
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@238
    iget-object v7, v5, Lcom/android/internal/os/BatteryStatsImpl;->mVideoTurnedOnTimers:Ljava/util/ArrayList;

    #@23a
    move-object/from16 v0, p0

    #@23c
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@23e
    iget-object v8, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@240
    .line 5576
    const/16 v6, 0x8

    #@242
    move-object/from16 v5, p0

    #@244
    move-object/from16 v9, p3

    #@246
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@249
    move-object/from16 v0, p0

    #@24b
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@24d
    .line 5581
    :goto_d
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@250
    move-result v4

    #@251
    if-eqz v4, :cond_10

    #@253
    .line 5582
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@255
    .line 5583
    move-object/from16 v0, p0

    #@257
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@259
    iget-object v7, v5, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightTurnedOnTimers:Ljava/util/ArrayList;

    #@25b
    move-object/from16 v0, p0

    #@25d
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@25f
    iget-object v8, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@261
    .line 5582
    const/16 v6, 0x10

    #@263
    move-object/from16 v5, p0

    #@265
    move-object/from16 v9, p3

    #@267
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@26a
    move-object/from16 v0, p0

    #@26c
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@26e
    .line 5587
    :goto_e
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@271
    move-result v4

    #@272
    if-eqz v4, :cond_11

    #@274
    .line 5588
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@276
    .line 5589
    move-object/from16 v0, p0

    #@278
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@27a
    iget-object v7, v5, Lcom/android/internal/os/BatteryStatsImpl;->mCameraTurnedOnTimers:Ljava/util/ArrayList;

    #@27c
    move-object/from16 v0, p0

    #@27e
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@280
    iget-object v8, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@282
    .line 5588
    const/16 v6, 0x11

    #@284
    move-object/from16 v5, p0

    #@286
    move-object/from16 v9, p3

    #@288
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@28b
    move-object/from16 v0, p0

    #@28d
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@28f
    .line 5593
    :goto_f
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@292
    move-result v4

    #@293
    if-eqz v4, :cond_12

    #@295
    .line 5594
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@297
    .line 5595
    move-object/from16 v0, p0

    #@299
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@29b
    iget-object v8, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@29d
    const/16 v6, 0xa

    #@29f
    const/4 v7, 0x0

    #@2a0
    move-object/from16 v5, p0

    #@2a2
    move-object/from16 v9, p3

    #@2a4
    .line 5594
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@2a7
    move-object/from16 v0, p0

    #@2a9
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2ab
    .line 5599
    :goto_10
    const/4 v4, 0x3

    #@2ac
    move-object/from16 v0, p0

    #@2ae
    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    #@2b0
    .line 5600
    const/4 v11, 0x0

    #@2b1
    :goto_11
    const/4 v4, 0x3

    #@2b2
    if-ge v11, v4, :cond_14

    #@2b4
    .line 5601
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@2b7
    move-result v4

    #@2b8
    if-eqz v4, :cond_13

    #@2ba
    .line 5602
    move-object/from16 v0, p0

    #@2bc
    move-object/from16 v1, p3

    #@2be
    invoke-virtual {v0, v11, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeProcessState(ILandroid/os/Parcel;)V

    #@2c1
    .line 5600
    :goto_12
    add-int/lit8 v11, v11, 0x1

    #@2c3
    goto :goto_11

    #@2c4
    .line 5567
    :cond_d
    const/4 v4, 0x0

    #@2c5
    move-object/from16 v0, p0

    #@2c7
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2c9
    goto/16 :goto_b

    #@2cb
    .line 5573
    :cond_e
    const/4 v4, 0x0

    #@2cc
    move-object/from16 v0, p0

    #@2ce
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2d0
    goto/16 :goto_c

    #@2d2
    .line 5579
    :cond_f
    const/4 v4, 0x0

    #@2d3
    move-object/from16 v0, p0

    #@2d5
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2d7
    goto/16 :goto_d

    #@2d9
    .line 5585
    :cond_10
    const/4 v4, 0x0

    #@2da
    move-object/from16 v0, p0

    #@2dc
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2de
    goto :goto_e

    #@2df
    .line 5591
    :cond_11
    const/4 v4, 0x0

    #@2e0
    move-object/from16 v0, p0

    #@2e2
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2e4
    goto :goto_f

    #@2e5
    .line 5597
    :cond_12
    const/4 v4, 0x0

    #@2e6
    move-object/from16 v0, p0

    #@2e8
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2ea
    goto :goto_10

    #@2eb
    .line 5604
    :cond_13
    move-object/from16 v0, p0

    #@2ed
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2ef
    const/4 v5, 0x0

    #@2f0
    aput-object v5, v4, v11

    #@2f2
    goto :goto_12

    #@2f3
    .line 5607
    :cond_14
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@2f6
    move-result v4

    #@2f7
    if-eqz v4, :cond_15

    #@2f9
    .line 5608
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@2fb
    move-object/from16 v0, p0

    #@2fd
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@2ff
    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@301
    const/16 v6, 0x9

    #@303
    move-object/from16 v0, p0

    #@305
    move-object/from16 v1, p3

    #@307
    invoke-direct {v4, v0, v6, v5, v1}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@30a
    move-object/from16 v0, p0

    #@30c
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@30e
    .line 5612
    :goto_13
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@311
    move-result v4

    #@312
    if-eqz v4, :cond_16

    #@314
    .line 5613
    const/4 v4, 0x3

    #@315
    new-array v4, v4, [Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@317
    move-object/from16 v0, p0

    #@319
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@31b
    .line 5614
    const/4 v11, 0x0

    #@31c
    :goto_14
    const/4 v4, 0x3

    #@31d
    if-ge v11, v4, :cond_17

    #@31f
    .line 5615
    move-object/from16 v0, p0

    #@321
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@323
    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@325
    move-object/from16 v0, p0

    #@327
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@329
    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@32b
    move-object/from16 v0, p3

    #@32d
    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@330
    aput-object v5, v4, v11

    #@332
    .line 5614
    add-int/lit8 v11, v11, 0x1

    #@334
    goto :goto_14

    #@335
    .line 5610
    :cond_15
    const/4 v4, 0x0

    #@336
    move-object/from16 v0, p0

    #@338
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@33a
    goto :goto_13

    #@33b
    .line 5618
    :cond_16
    const/4 v4, 0x0

    #@33c
    move-object/from16 v0, p0

    #@33e
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@340
    .line 5620
    :cond_17
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@343
    move-result v4

    #@344
    if-eqz v4, :cond_19

    #@346
    .line 5621
    const/4 v4, 0x4

    #@347
    new-array v4, v4, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@349
    move-object/from16 v0, p0

    #@34b
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@34d
    .line 5623
    const/4 v4, 0x4

    #@34e
    new-array v4, v4, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@350
    .line 5622
    move-object/from16 v0, p0

    #@352
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@354
    .line 5624
    const/4 v11, 0x0

    #@355
    :goto_15
    const/4 v4, 0x4

    #@356
    if-ge v11, v4, :cond_18

    #@358
    .line 5625
    move-object/from16 v0, p0

    #@35a
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@35c
    .line 5626
    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@35e
    move-object/from16 v0, p0

    #@360
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@362
    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@364
    move-object/from16 v0, p3

    #@366
    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@369
    .line 5625
    aput-object v5, v4, v11

    #@36b
    .line 5627
    move-object/from16 v0, p0

    #@36d
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@36f
    .line 5628
    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@371
    move-object/from16 v0, p0

    #@373
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@375
    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@377
    move-object/from16 v0, p3

    #@379
    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@37c
    .line 5627
    aput-object v5, v4, v11

    #@37e
    .line 5624
    add-int/lit8 v11, v11, 0x1

    #@380
    goto :goto_15

    #@381
    .line 5630
    :cond_18
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@383
    move-object/from16 v0, p0

    #@385
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@387
    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@389
    move-object/from16 v0, p3

    #@38b
    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@38e
    move-object/from16 v0, p0

    #@390
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@392
    .line 5631
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@394
    move-object/from16 v0, p0

    #@396
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@398
    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@39a
    move-object/from16 v0, p3

    #@39c
    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@39f
    move-object/from16 v0, p0

    #@3a1
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@3a3
    .line 5637
    :goto_16
    const/4 v11, 0x0

    #@3a4
    :goto_17
    const/4 v4, 0x4

    #@3a5
    if-ge v11, v4, :cond_1b

    #@3a7
    .line 5638
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@3aa
    move-result v4

    #@3ab
    if-eqz v4, :cond_1a

    #@3ad
    .line 5639
    move-object/from16 v0, p0

    #@3af
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@3b1
    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@3b3
    move-object/from16 v0, p0

    #@3b5
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@3b7
    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@3b9
    move-object/from16 v0, p3

    #@3bb
    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@3be
    aput-object v5, v4, v11

    #@3c0
    .line 5637
    :goto_18
    add-int/lit8 v11, v11, 0x1

    #@3c2
    goto :goto_17

    #@3c3
    .line 5633
    :cond_19
    const/4 v4, 0x0

    #@3c4
    move-object/from16 v0, p0

    #@3c6
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@3c8
    .line 5634
    const/4 v4, 0x0

    #@3c9
    move-object/from16 v0, p0

    #@3cb
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@3cd
    goto :goto_16

    #@3ce
    .line 5641
    :cond_1a
    move-object/from16 v0, p0

    #@3d0
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@3d2
    const/4 v5, 0x0

    #@3d3
    aput-object v5, v4, v11

    #@3d5
    goto :goto_18

    #@3d6
    .line 5645
    :cond_1b
    const/4 v11, 0x0

    #@3d7
    :goto_19
    const/4 v4, 0x4

    #@3d8
    if-ge v11, v4, :cond_1d

    #@3da
    .line 5646
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@3dd
    move-result v4

    #@3de
    if-eqz v4, :cond_1c

    #@3e0
    .line 5647
    move-object/from16 v0, p0

    #@3e2
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@3e4
    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@3e6
    move-object/from16 v0, p0

    #@3e8
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@3ea
    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@3ec
    move-object/from16 v0, p3

    #@3ee
    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@3f1
    aput-object v5, v4, v11

    #@3f3
    .line 5645
    :goto_1a
    add-int/lit8 v11, v11, 0x1

    #@3f5
    goto :goto_19

    #@3f6
    .line 5649
    :cond_1c
    move-object/from16 v0, p0

    #@3f8
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@3fa
    const/4 v5, 0x0

    #@3fb
    aput-object v5, v4, v11

    #@3fd
    goto :goto_1a

    #@3fe
    .line 5653
    :cond_1d
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@400
    move-object/from16 v0, p0

    #@402
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@404
    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@406
    move-object/from16 v0, p3

    #@408
    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@40b
    move-object/from16 v0, p0

    #@40d
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@40f
    .line 5654
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@411
    move-object/from16 v0, p0

    #@413
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@415
    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@417
    move-object/from16 v0, p3

    #@419
    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@41c
    move-object/from16 v0, p0

    #@41e
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@420
    .line 5655
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@422
    move-object/from16 v0, p0

    #@424
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@426
    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@428
    move-object/from16 v0, p3

    #@42a
    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@42d
    move-object/from16 v0, p0

    #@42f
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@431
    .line 5657
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@434
    move-result v10

    #@435
    .line 5658
    .local v10, "bins":I
    move-object/from16 v0, p0

    #@437
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@439
    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl;->getCpuSpeedSteps()I

    #@43c
    move-result v28

    #@43d
    .line 5659
    .local v28, "steps":I
    move/from16 v0, v28

    #@43f
    if-lt v10, v0, :cond_1e

    #@441
    move/from16 v28, v10

    #@443
    .end local v28    # "steps":I
    :cond_1e
    move/from16 v0, v28

    #@445
    new-array v4, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@447
    move-object/from16 v0, p0

    #@449
    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@44b
    .line 5660
    const/4 v11, 0x0

    #@44c
    :goto_1b
    if-ge v11, v10, :cond_20

    #@44e
    .line 5661
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    #@451
    move-result v4

    #@452
    if-eqz v4, :cond_1f

    #@454
    .line 5662
    move-object/from16 v0, p0

    #@456
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@458
    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@45a
    move-object/from16 v0, p0

    #@45c
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@45e
    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@460
    move-object/from16 v0, p3

    #@462
    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@465
    aput-object v5, v4, v11

    #@467
    .line 5660
    :cond_1f
    add-int/lit8 v11, v11, 0x1

    #@469
    goto :goto_1b

    #@46a
    .line 5477
    :cond_20
    return-void
.end method

.method public readJobSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 6641
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->instantiateObject()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@8
    .line 6642
    .local v0, "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@b
    .line 6643
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@d
    invoke-virtual {v1, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    #@10
    .line 6640
    return-void
.end method

.method public readSyncSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 6635
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->instantiateObject()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@8
    .line 6636
    .local v0, "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@b
    .line 6637
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@d
    invoke-virtual {v1, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    #@10
    .line 6634
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
    .line 6647
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    #@3
    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    #@6
    .line 6648
    .local v0, "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@8
    invoke-virtual {v1, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    #@b
    .line 6649
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 6650
    const/4 v1, 0x1

    #@12
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->getStopwatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@19
    .line 6652
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_1

    #@1f
    .line 6653
    invoke-virtual {v0, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->getStopwatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@26
    .line 6655
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@29
    move-result v1

    #@2a
    if-eqz v1, :cond_2

    #@2c
    .line 6656
    const/4 v1, 0x2

    #@2d
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->getStopwatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@34
    .line 6658
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@37
    move-result v1

    #@38
    if-eqz v1, :cond_3

    #@3a
    .line 6659
    const/16 v1, 0x12

    #@3c
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->getStopwatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@43
    .line 6646
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
    .line 6751
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    #@3
    move-result-object v0

    #@4
    .line 6752
    .local v0, "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v0, :cond_0

    #@6
    .line 6753
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addExcessiveCpu(JJ)V

    #@9
    .line 6750
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
    .line 6744
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    #@3
    move-result-object v0

    #@4
    .line 6745
    .local v0, "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v0, :cond_0

    #@6
    .line 6746
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addExcessiveWake(JJ)V

    #@9
    .line 6743
    :cond_0
    return-void
.end method

.method reset()Z
    .locals 28

    #@0
    .prologue
    .line 5046
    const/4 v4, 0x0

    #@1
    .line 5048
    .local v4, "active":Z
    move-object/from16 v0, p0

    #@3
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@5
    move-object/from16 v25, v0

    #@7
    if-eqz v25, :cond_0

    #@9
    .line 5049
    move-object/from16 v0, p0

    #@b
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@d
    move-object/from16 v25, v0

    #@f
    const/16 v26, 0x0

    #@11
    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@14
    move-result v25

    #@15
    if-eqz v25, :cond_4

    #@17
    const/4 v4, 0x0

    #@18
    .line 5050
    .local v4, "active":Z
    :goto_0
    move-object/from16 v0, p0

    #@1a
    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    #@1c
    move/from16 v25, v0

    #@1e
    or-int v4, v4, v25

    #@20
    .line 5052
    .end local v4    # "active":Z
    :cond_0
    move-object/from16 v0, p0

    #@22
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@24
    move-object/from16 v25, v0

    #@26
    if-eqz v25, :cond_1

    #@28
    .line 5053
    move-object/from16 v0, p0

    #@2a
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2c
    move-object/from16 v25, v0

    #@2e
    const/16 v26, 0x0

    #@30
    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@33
    move-result v25

    #@34
    if-eqz v25, :cond_5

    #@36
    const/16 v25, 0x0

    #@38
    :goto_1
    or-int v4, v4, v25

    #@3a
    .line 5054
    .restart local v4    # "active":Z
    move-object/from16 v0, p0

    #@3c
    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    #@3e
    move/from16 v25, v0

    #@40
    or-int v4, v4, v25

    #@42
    .line 5056
    .end local v4    # "active":Z
    :cond_1
    move-object/from16 v0, p0

    #@44
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@46
    move-object/from16 v25, v0

    #@48
    if-eqz v25, :cond_2

    #@4a
    .line 5057
    move-object/from16 v0, p0

    #@4c
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@4e
    move-object/from16 v25, v0

    #@50
    const/16 v26, 0x0

    #@52
    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@55
    move-result v25

    #@56
    if-eqz v25, :cond_6

    #@58
    const/16 v25, 0x0

    #@5a
    :goto_2
    or-int v4, v4, v25

    #@5c
    .line 5058
    .restart local v4    # "active":Z
    move-object/from16 v0, p0

    #@5e
    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    #@60
    move/from16 v25, v0

    #@62
    or-int v4, v4, v25

    #@64
    .line 5060
    .end local v4    # "active":Z
    :cond_2
    move-object/from16 v0, p0

    #@66
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@68
    move-object/from16 v25, v0

    #@6a
    if-eqz v25, :cond_9

    #@6c
    .line 5061
    const/4 v6, 0x0

    #@6d
    .local v6, "i":I
    :goto_3
    const/16 v25, 0x5

    #@6f
    move/from16 v0, v25

    #@71
    if-ge v6, v0, :cond_8

    #@73
    .line 5062
    move-object/from16 v0, p0

    #@75
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@77
    move-object/from16 v25, v0

    #@79
    aget-object v25, v25, v6

    #@7b
    if-eqz v25, :cond_3

    #@7d
    .line 5063
    move-object/from16 v0, p0

    #@7f
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@81
    move-object/from16 v25, v0

    #@83
    aget-object v25, v25, v6

    #@85
    const/16 v26, 0x0

    #@87
    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@8a
    move-result v25

    #@8b
    if-eqz v25, :cond_7

    #@8d
    const/16 v25, 0x0

    #@8f
    :goto_4
    or-int v4, v4, v25

    #@91
    .line 5061
    :cond_3
    add-int/lit8 v6, v6, 0x1

    #@93
    goto :goto_3

    #@94
    .line 5049
    .end local v6    # "i":I
    .local v4, "active":Z
    :cond_4
    const/4 v4, 0x1

    #@95
    goto :goto_0

    #@96
    .line 5053
    .end local v4    # "active":Z
    :cond_5
    const/16 v25, 0x1

    #@98
    goto :goto_1

    #@99
    .line 5057
    :cond_6
    const/16 v25, 0x1

    #@9b
    goto :goto_2

    #@9c
    .line 5063
    .restart local v6    # "i":I
    :cond_7
    const/16 v25, 0x1

    #@9e
    goto :goto_4

    #@9f
    .line 5066
    :cond_8
    move-object/from16 v0, p0

    #@a1
    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    #@a3
    move/from16 v25, v0

    #@a5
    const/16 v26, -0x1

    #@a7
    move/from16 v0, v25

    #@a9
    move/from16 v1, v26

    #@ab
    if-eq v0, v1, :cond_11

    #@ad
    const/16 v25, 0x1

    #@af
    :goto_5
    or-int v4, v4, v25

    #@b1
    .line 5068
    .end local v6    # "i":I
    :cond_9
    move-object/from16 v0, p0

    #@b3
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@b5
    move-object/from16 v25, v0

    #@b7
    if-eqz v25, :cond_a

    #@b9
    .line 5069
    move-object/from16 v0, p0

    #@bb
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@bd
    move-object/from16 v25, v0

    #@bf
    const/16 v26, 0x0

    #@c1
    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@c4
    move-result v25

    #@c5
    if-eqz v25, :cond_12

    #@c7
    const/16 v25, 0x0

    #@c9
    :goto_6
    or-int v4, v4, v25

    #@cb
    .line 5070
    .local v4, "active":Z
    move-object/from16 v0, p0

    #@cd
    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    #@cf
    move/from16 v25, v0

    #@d1
    or-int v4, v4, v25

    #@d3
    .line 5072
    .end local v4    # "active":Z
    :cond_a
    move-object/from16 v0, p0

    #@d5
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@d7
    move-object/from16 v25, v0

    #@d9
    if-eqz v25, :cond_b

    #@db
    .line 5073
    move-object/from16 v0, p0

    #@dd
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@df
    move-object/from16 v25, v0

    #@e1
    const/16 v26, 0x0

    #@e3
    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@e6
    move-result v25

    #@e7
    if-eqz v25, :cond_13

    #@e9
    const/16 v25, 0x0

    #@eb
    :goto_7
    or-int v4, v4, v25

    #@ed
    .line 5075
    :cond_b
    move-object/from16 v0, p0

    #@ef
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@f1
    move-object/from16 v25, v0

    #@f3
    if-eqz v25, :cond_c

    #@f5
    .line 5076
    move-object/from16 v0, p0

    #@f7
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@f9
    move-object/from16 v25, v0

    #@fb
    const/16 v26, 0x0

    #@fd
    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@100
    move-result v25

    #@101
    if-eqz v25, :cond_14

    #@103
    const/16 v25, 0x0

    #@105
    :goto_8
    or-int v4, v4, v25

    #@107
    .line 5078
    :cond_c
    move-object/from16 v0, p0

    #@109
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@10b
    move-object/from16 v25, v0

    #@10d
    if-eqz v25, :cond_d

    #@10f
    .line 5079
    move-object/from16 v0, p0

    #@111
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@113
    move-object/from16 v25, v0

    #@115
    const/16 v26, 0x0

    #@117
    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@11a
    move-result v25

    #@11b
    if-eqz v25, :cond_15

    #@11d
    const/16 v25, 0x0

    #@11f
    :goto_9
    or-int v4, v4, v25

    #@121
    .line 5081
    :cond_d
    move-object/from16 v0, p0

    #@123
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@125
    move-object/from16 v25, v0

    #@127
    if-eqz v25, :cond_e

    #@129
    .line 5082
    move-object/from16 v0, p0

    #@12b
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@12d
    move-object/from16 v25, v0

    #@12f
    const/16 v26, 0x0

    #@131
    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@134
    move-result v25

    #@135
    if-eqz v25, :cond_16

    #@137
    const/16 v25, 0x0

    #@139
    :goto_a
    or-int v4, v4, v25

    #@13b
    .line 5084
    :cond_e
    move-object/from16 v0, p0

    #@13d
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@13f
    move-object/from16 v25, v0

    #@141
    if-eqz v25, :cond_f

    #@143
    .line 5085
    move-object/from16 v0, p0

    #@145
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@147
    move-object/from16 v25, v0

    #@149
    const/16 v26, 0x0

    #@14b
    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@14e
    move-result v25

    #@14f
    if-eqz v25, :cond_17

    #@151
    const/16 v25, 0x0

    #@153
    :goto_b
    or-int v4, v4, v25

    #@155
    .line 5087
    :cond_f
    move-object/from16 v0, p0

    #@157
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@159
    move-object/from16 v25, v0

    #@15b
    if-eqz v25, :cond_1a

    #@15d
    .line 5088
    const/4 v6, 0x0

    #@15e
    .restart local v6    # "i":I
    :goto_c
    const/16 v25, 0x3

    #@160
    move/from16 v0, v25

    #@162
    if-ge v6, v0, :cond_19

    #@164
    .line 5089
    move-object/from16 v0, p0

    #@166
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@168
    move-object/from16 v25, v0

    #@16a
    aget-object v25, v25, v6

    #@16c
    if-eqz v25, :cond_10

    #@16e
    .line 5090
    move-object/from16 v0, p0

    #@170
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@172
    move-object/from16 v25, v0

    #@174
    aget-object v25, v25, v6

    #@176
    const/16 v26, 0x0

    #@178
    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@17b
    move-result v25

    #@17c
    if-eqz v25, :cond_18

    #@17e
    const/16 v25, 0x0

    #@180
    :goto_d
    or-int v4, v4, v25

    #@182
    .line 5088
    :cond_10
    add-int/lit8 v6, v6, 0x1

    #@184
    goto :goto_c

    #@185
    .line 5066
    :cond_11
    const/16 v25, 0x0

    #@187
    goto/16 :goto_5

    #@189
    .line 5069
    .end local v6    # "i":I
    :cond_12
    const/16 v25, 0x1

    #@18b
    goto/16 :goto_6

    #@18d
    .line 5073
    :cond_13
    const/16 v25, 0x1

    #@18f
    goto/16 :goto_7

    #@191
    .line 5076
    :cond_14
    const/16 v25, 0x1

    #@193
    goto/16 :goto_8

    #@195
    .line 5079
    :cond_15
    const/16 v25, 0x1

    #@197
    goto :goto_9

    #@198
    .line 5082
    :cond_16
    const/16 v25, 0x1

    #@19a
    goto :goto_a

    #@19b
    .line 5085
    :cond_17
    const/16 v25, 0x1

    #@19d
    goto :goto_b

    #@19e
    .line 5090
    .restart local v6    # "i":I
    :cond_18
    const/16 v25, 0x1

    #@1a0
    goto :goto_d

    #@1a1
    .line 5093
    :cond_19
    move-object/from16 v0, p0

    #@1a3
    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    #@1a5
    move/from16 v25, v0

    #@1a7
    const/16 v26, 0x3

    #@1a9
    move/from16 v0, v25

    #@1ab
    move/from16 v1, v26

    #@1ad
    if-eq v0, v1, :cond_1c

    #@1af
    const/16 v25, 0x1

    #@1b1
    :goto_e
    or-int v4, v4, v25

    #@1b3
    .line 5095
    .end local v6    # "i":I
    :cond_1a
    move-object/from16 v0, p0

    #@1b5
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@1b7
    move-object/from16 v25, v0

    #@1b9
    if-eqz v25, :cond_1b

    #@1bb
    .line 5096
    move-object/from16 v0, p0

    #@1bd
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@1bf
    move-object/from16 v25, v0

    #@1c1
    const/16 v26, 0x0

    #@1c3
    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->reset(Z)Z

    #@1c6
    move-result v25

    #@1c7
    if-eqz v25, :cond_1d

    #@1c9
    .line 5097
    move-object/from16 v0, p0

    #@1cb
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@1cd
    move-object/from16 v25, v0

    #@1cf
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->detach()V

    #@1d2
    .line 5098
    const/16 v25, 0x0

    #@1d4
    move-object/from16 v0, v25

    #@1d6
    move-object/from16 v1, p0

    #@1d8
    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@1da
    .line 5104
    :cond_1b
    :goto_f
    move-object/from16 v0, p0

    #@1dc
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@1de
    move-object/from16 v25, v0

    #@1e0
    if-eqz v25, :cond_1e

    #@1e2
    .line 5105
    const/4 v6, 0x0

    #@1e3
    .restart local v6    # "i":I
    :goto_10
    const/16 v25, 0x3

    #@1e5
    move/from16 v0, v25

    #@1e7
    if-ge v6, v0, :cond_1e

    #@1e9
    .line 5106
    move-object/from16 v0, p0

    #@1eb
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@1ed
    move-object/from16 v25, v0

    #@1ef
    aget-object v25, v25, v6

    #@1f1
    const/16 v26, 0x0

    #@1f3
    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->reset(Z)V

    #@1f6
    .line 5105
    add-int/lit8 v6, v6, 0x1

    #@1f8
    goto :goto_10

    #@1f9
    .line 5093
    :cond_1c
    const/16 v25, 0x0

    #@1fb
    goto :goto_e

    #@1fc
    .line 5100
    .end local v6    # "i":I
    :cond_1d
    const/4 v4, 0x1

    #@1fd
    .local v4, "active":Z
    goto :goto_f

    #@1fe
    .line 5110
    .end local v4    # "active":Z
    :cond_1e
    move-object/from16 v0, p0

    #@200
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@202
    move-object/from16 v25, v0

    #@204
    if-eqz v25, :cond_20

    #@206
    .line 5111
    const/4 v6, 0x0

    #@207
    .restart local v6    # "i":I
    :goto_11
    const/16 v25, 0x4

    #@209
    move/from16 v0, v25

    #@20b
    if-ge v6, v0, :cond_1f

    #@20d
    .line 5112
    move-object/from16 v0, p0

    #@20f
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@211
    move-object/from16 v25, v0

    #@213
    aget-object v25, v25, v6

    #@215
    const/16 v26, 0x0

    #@217
    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    #@21a
    .line 5113
    move-object/from16 v0, p0

    #@21c
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@21e
    move-object/from16 v25, v0

    #@220
    aget-object v25, v25, v6

    #@222
    const/16 v26, 0x0

    #@224
    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    #@227
    .line 5111
    add-int/lit8 v6, v6, 0x1

    #@229
    goto :goto_11

    #@22a
    .line 5115
    :cond_1f
    move-object/from16 v0, p0

    #@22c
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@22e
    move-object/from16 v25, v0

    #@230
    const/16 v26, 0x0

    #@232
    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    #@235
    .line 5116
    move-object/from16 v0, p0

    #@237
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@239
    move-object/from16 v25, v0

    #@23b
    const/16 v26, 0x0

    #@23d
    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    #@240
    .line 5119
    .end local v6    # "i":I
    :cond_20
    const/4 v6, 0x0

    #@241
    .restart local v6    # "i":I
    :goto_12
    const/16 v25, 0x4

    #@243
    move/from16 v0, v25

    #@245
    if-ge v6, v0, :cond_23

    #@247
    .line 5120
    move-object/from16 v0, p0

    #@249
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@24b
    move-object/from16 v25, v0

    #@24d
    aget-object v25, v25, v6

    #@24f
    if-eqz v25, :cond_21

    #@251
    .line 5121
    move-object/from16 v0, p0

    #@253
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@255
    move-object/from16 v25, v0

    #@257
    aget-object v25, v25, v6

    #@259
    const/16 v26, 0x0

    #@25b
    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    #@25e
    .line 5124
    :cond_21
    move-object/from16 v0, p0

    #@260
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@262
    move-object/from16 v25, v0

    #@264
    aget-object v25, v25, v6

    #@266
    if-eqz v25, :cond_22

    #@268
    .line 5125
    move-object/from16 v0, p0

    #@26a
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@26c
    move-object/from16 v25, v0

    #@26e
    aget-object v25, v25, v6

    #@270
    const/16 v26, 0x0

    #@272
    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    #@275
    .line 5119
    :cond_22
    add-int/lit8 v6, v6, 0x1

    #@277
    goto :goto_12

    #@278
    .line 5129
    :cond_23
    move-object/from16 v0, p0

    #@27a
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@27c
    move-object/from16 v25, v0

    #@27e
    const/16 v26, 0x0

    #@280
    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    #@283
    .line 5130
    move-object/from16 v0, p0

    #@285
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@287
    move-object/from16 v25, v0

    #@289
    const/16 v26, 0x0

    #@28b
    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    #@28e
    .line 5131
    move-object/from16 v0, p0

    #@290
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@292
    move-object/from16 v25, v0

    #@294
    const/16 v26, 0x0

    #@296
    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    #@299
    .line 5132
    const/4 v6, 0x0

    #@29a
    :goto_13
    move-object/from16 v0, p0

    #@29c
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@29e
    move-object/from16 v25, v0

    #@2a0
    move-object/from16 v0, v25

    #@2a2
    array-length v0, v0

    #@2a3
    move/from16 v25, v0

    #@2a5
    move/from16 v0, v25

    #@2a7
    if-ge v6, v0, :cond_25

    #@2a9
    .line 5133
    move-object/from16 v0, p0

    #@2ab
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@2ad
    move-object/from16 v25, v0

    #@2af
    aget-object v5, v25, v6

    #@2b1
    .line 5134
    .local v5, "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v5, :cond_24

    #@2b3
    .line 5135
    const/16 v25, 0x0

    #@2b5
    move/from16 v0, v25

    #@2b7
    invoke-virtual {v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    #@2ba
    .line 5132
    :cond_24
    add-int/lit8 v6, v6, 0x1

    #@2bc
    goto :goto_13

    #@2bd
    .line 5139
    .end local v5    # "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_25
    move-object/from16 v0, p0

    #@2bf
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@2c1
    move-object/from16 v25, v0

    #@2c3
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    #@2c6
    move-result-object v23

    #@2c7
    .line 5140
    .local v23, "wakeStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    invoke-virtual/range {v23 .. v23}, Landroid/util/ArrayMap;->size()I

    #@2ca
    move-result v25

    #@2cb
    add-int/lit8 v13, v25, -0x1

    #@2cd
    .local v13, "iw":I
    :goto_14
    if-ltz v13, :cond_27

    #@2cf
    .line 5141
    move-object/from16 v0, v23

    #@2d1
    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@2d4
    move-result-object v24

    #@2d5
    check-cast v24, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    #@2d7
    .line 5142
    .local v24, "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->reset()Z

    #@2da
    move-result v25

    #@2db
    if-eqz v25, :cond_26

    #@2dd
    .line 5143
    move-object/from16 v0, v23

    #@2df
    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    #@2e2
    .line 5140
    :goto_15
    add-int/lit8 v13, v13, -0x1

    #@2e4
    goto :goto_14

    #@2e5
    .line 5145
    :cond_26
    const/4 v4, 0x1

    #@2e6
    .restart local v4    # "active":Z
    goto :goto_15

    #@2e7
    .line 5148
    .end local v4    # "active":Z
    .end local v24    # "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    :cond_27
    move-object/from16 v0, p0

    #@2e9
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@2eb
    move-object/from16 v25, v0

    #@2ed
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->cleanup()V

    #@2f0
    .line 5149
    move-object/from16 v0, p0

    #@2f2
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@2f4
    move-object/from16 v25, v0

    #@2f6
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    #@2f9
    move-result-object v21

    #@2fa
    .line 5150
    .local v21, "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-virtual/range {v21 .. v21}, Landroid/util/ArrayMap;->size()I

    #@2fd
    move-result v25

    #@2fe
    add-int/lit8 v9, v25, -0x1

    #@300
    .local v9, "is":I
    :goto_16
    if-ltz v9, :cond_29

    #@302
    .line 5151
    move-object/from16 v0, v21

    #@304
    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@307
    move-result-object v22

    #@308
    check-cast v22, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@30a
    .line 5152
    .local v22, "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    const/16 v25, 0x0

    #@30c
    move-object/from16 v0, v22

    #@30e
    move/from16 v1, v25

    #@310
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@313
    move-result v25

    #@314
    if-eqz v25, :cond_28

    #@316
    .line 5153
    move-object/from16 v0, v21

    #@318
    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    #@31b
    .line 5154
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    #@31e
    .line 5150
    :goto_17
    add-int/lit8 v9, v9, -0x1

    #@320
    goto :goto_16

    #@321
    .line 5156
    :cond_28
    const/4 v4, 0x1

    #@322
    .restart local v4    # "active":Z
    goto :goto_17

    #@323
    .line 5159
    .end local v4    # "active":Z
    .end local v22    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_29
    move-object/from16 v0, p0

    #@325
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@327
    move-object/from16 v25, v0

    #@329
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->cleanup()V

    #@32c
    .line 5160
    move-object/from16 v0, p0

    #@32e
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@330
    move-object/from16 v25, v0

    #@332
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    #@335
    move-result-object v14

    #@336
    .line 5161
    .local v14, "jobStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    #@339
    move-result v25

    #@33a
    add-int/lit8 v7, v25, -0x1

    #@33c
    .local v7, "ij":I
    :goto_18
    if-ltz v7, :cond_2b

    #@33e
    .line 5162
    invoke-virtual {v14, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@341
    move-result-object v22

    #@342
    check-cast v22, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@344
    .line 5163
    .restart local v22    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    const/16 v25, 0x0

    #@346
    move-object/from16 v0, v22

    #@348
    move/from16 v1, v25

    #@34a
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    #@34d
    move-result v25

    #@34e
    if-eqz v25, :cond_2a

    #@350
    .line 5164
    invoke-virtual {v14, v7}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    #@353
    .line 5165
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    #@356
    .line 5161
    :goto_19
    add-int/lit8 v7, v7, -0x1

    #@358
    goto :goto_18

    #@359
    .line 5167
    :cond_2a
    const/4 v4, 0x1

    #@35a
    .restart local v4    # "active":Z
    goto :goto_19

    #@35b
    .line 5170
    .end local v4    # "active":Z
    .end local v22    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_2b
    move-object/from16 v0, p0

    #@35d
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@35f
    move-object/from16 v25, v0

    #@361
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->cleanup()V

    #@364
    .line 5171
    move-object/from16 v0, p0

    #@366
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    #@368
    move-object/from16 v25, v0

    #@36a
    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    #@36d
    move-result v25

    #@36e
    add-int/lit8 v10, v25, -0x1

    #@370
    .local v10, "ise":I
    :goto_1a
    if-ltz v10, :cond_2d

    #@372
    .line 5172
    move-object/from16 v0, p0

    #@374
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    #@376
    move-object/from16 v25, v0

    #@378
    move-object/from16 v0, v25

    #@37a
    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@37d
    move-result-object v19

    #@37e
    check-cast v19, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    #@380
    .line 5173
    .local v19, "s":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->reset()Z

    #@383
    move-result v25

    #@384
    if-eqz v25, :cond_2c

    #@386
    .line 5174
    move-object/from16 v0, p0

    #@388
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    #@38a
    move-object/from16 v25, v0

    #@38c
    move-object/from16 v0, v25

    #@38e
    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->removeAt(I)V

    #@391
    .line 5171
    :goto_1b
    add-int/lit8 v10, v10, -0x1

    #@393
    goto :goto_1a

    #@394
    .line 5176
    :cond_2c
    const/4 v4, 0x1

    #@395
    .restart local v4    # "active":Z
    goto :goto_1b

    #@396
    .line 5179
    .end local v4    # "active":Z
    .end local v19    # "s":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    :cond_2d
    move-object/from16 v0, p0

    #@398
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    #@39a
    move-object/from16 v25, v0

    #@39c
    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    #@39f
    move-result v25

    #@3a0
    add-int/lit8 v8, v25, -0x1

    #@3a2
    .local v8, "ip":I
    :goto_1c
    if-ltz v8, :cond_2f

    #@3a4
    .line 5180
    move-object/from16 v0, p0

    #@3a6
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    #@3a8
    move-object/from16 v25, v0

    #@3aa
    move-object/from16 v0, v25

    #@3ac
    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@3af
    move-result-object v18

    #@3b0
    check-cast v18, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    #@3b2
    .line 5181
    .local v18, "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    move-object/from16 v0, v18

    #@3b4
    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mProcessState:I

    #@3b6
    move/from16 v25, v0

    #@3b8
    const/16 v26, 0x3

    #@3ba
    move/from16 v0, v25

    #@3bc
    move/from16 v1, v26

    #@3be
    if-ne v0, v1, :cond_2e

    #@3c0
    .line 5182
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->detach()V

    #@3c3
    .line 5183
    move-object/from16 v0, p0

    #@3c5
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    #@3c7
    move-object/from16 v25, v0

    #@3c9
    move-object/from16 v0, v25

    #@3cb
    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    #@3ce
    .line 5179
    :goto_1d
    add-int/lit8 v8, v8, -0x1

    #@3d0
    goto :goto_1c

    #@3d1
    .line 5185
    :cond_2e
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->reset()V

    #@3d4
    .line 5186
    const/4 v4, 0x1

    #@3d5
    .restart local v4    # "active":Z
    goto :goto_1d

    #@3d6
    .line 5189
    .end local v4    # "active":Z
    .end local v18    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    :cond_2f
    move-object/from16 v0, p0

    #@3d8
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    #@3da
    move-object/from16 v25, v0

    #@3dc
    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    #@3df
    move-result v25

    #@3e0
    if-lez v25, :cond_31

    #@3e2
    .line 5190
    move-object/from16 v0, p0

    #@3e4
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    #@3e6
    move-object/from16 v25, v0

    #@3e8
    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    #@3eb
    move-result v25

    #@3ec
    add-int/lit8 v6, v25, -0x1

    #@3ee
    :goto_1e
    if-ltz v6, :cond_31

    #@3f0
    .line 5191
    move-object/from16 v0, p0

    #@3f2
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    #@3f4
    move-object/from16 v25, v0

    #@3f6
    move-object/from16 v0, v25

    #@3f8
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@3fb
    move-result-object v16

    #@3fc
    check-cast v16, Landroid/os/BatteryStats$Uid$Pid;

    #@3fe
    .line 5192
    .local v16, "pid":Landroid/os/BatteryStats$Uid$Pid;
    move-object/from16 v0, v16

    #@400
    iget v0, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    #@402
    move/from16 v25, v0

    #@404
    if-lez v25, :cond_30

    #@406
    .line 5193
    const/4 v4, 0x1

    #@407
    .line 5190
    :goto_1f
    add-int/lit8 v6, v6, -0x1

    #@409
    goto :goto_1e

    #@40a
    .line 5195
    :cond_30
    move-object/from16 v0, p0

    #@40c
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    #@40e
    move-object/from16 v25, v0

    #@410
    move-object/from16 v0, v25

    #@412
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->removeAt(I)V

    #@415
    goto :goto_1f

    #@416
    .line 5199
    .end local v16    # "pid":Landroid/os/BatteryStats$Uid$Pid;
    :cond_31
    move-object/from16 v0, p0

    #@418
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    #@41a
    move-object/from16 v25, v0

    #@41c
    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    #@41f
    move-result v25

    #@420
    if-lez v25, :cond_34

    #@422
    .line 5200
    move-object/from16 v0, p0

    #@424
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    #@426
    move-object/from16 v25, v0

    #@428
    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    #@42b
    move-result-object v25

    #@42c
    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@42f
    move-result-object v11

    #@430
    .line 5201
    .local v11, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;>;"
    :cond_32
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@433
    move-result v25

    #@434
    if-eqz v25, :cond_33

    #@436
    .line 5202
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@439
    move-result-object v17

    #@43a
    check-cast v17, Ljava/util/Map$Entry;

    #@43c
    .line 5203
    .local v17, "pkgEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@43f
    move-result-object v15

    #@440
    check-cast v15, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    #@442
    .line 5204
    .local v15, "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    invoke-virtual {v15}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->detach()V

    #@445
    .line 5205
    iget-object v0, v15, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    #@447
    move-object/from16 v25, v0

    #@449
    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    #@44c
    move-result v25

    #@44d
    if-lez v25, :cond_32

    #@44f
    .line 5207
    iget-object v0, v15, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    #@451
    move-object/from16 v25, v0

    #@453
    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    #@456
    move-result-object v25

    #@457
    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@45a
    move-result-object v12

    #@45b
    .line 5208
    .local v12, "it2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;>;"
    :goto_20
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@45e
    move-result v25

    #@45f
    if-eqz v25, :cond_32

    #@461
    .line 5209
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@464
    move-result-object v20

    #@465
    check-cast v20, Ljava/util/Map$Entry;

    #@467
    .line 5210
    .local v20, "servEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@46a
    move-result-object v25

    #@46b
    check-cast v25, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    #@46d
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->detach()V

    #@470
    goto :goto_20

    #@471
    .line 5214
    .end local v12    # "it2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;>;"
    .end local v15    # "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .end local v17    # "pkgEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    .end local v20    # "servEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;"
    :cond_33
    move-object/from16 v0, p0

    #@473
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    #@475
    move-object/from16 v25, v0

    #@477
    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->clear()V

    #@47a
    .line 5217
    .end local v11    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;>;"
    :cond_34
    const-wide/16 v26, 0x0

    #@47c
    move-wide/from16 v0, v26

    #@47e
    move-object/from16 v2, p0

    #@480
    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepSystemTime:J

    #@482
    const-wide/16 v26, 0x0

    #@484
    move-wide/from16 v0, v26

    #@486
    move-object/from16 v2, p0

    #@488
    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepUserTime:J

    #@48a
    .line 5218
    const-wide/16 v26, 0x0

    #@48c
    move-wide/from16 v0, v26

    #@48e
    move-object/from16 v2, p0

    #@490
    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepSystemTime:J

    #@492
    const-wide/16 v26, 0x0

    #@494
    move-wide/from16 v0, v26

    #@496
    move-object/from16 v2, p0

    #@498
    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepUserTime:J

    #@49a
    .line 5220
    if-nez v4, :cond_46

    #@49c
    .line 5221
    move-object/from16 v0, p0

    #@49e
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@4a0
    move-object/from16 v25, v0

    #@4a2
    if-eqz v25, :cond_35

    #@4a4
    .line 5222
    move-object/from16 v0, p0

    #@4a6
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@4a8
    move-object/from16 v25, v0

    #@4aa
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    #@4ad
    .line 5224
    :cond_35
    move-object/from16 v0, p0

    #@4af
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@4b1
    move-object/from16 v25, v0

    #@4b3
    if-eqz v25, :cond_36

    #@4b5
    .line 5225
    move-object/from16 v0, p0

    #@4b7
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@4b9
    move-object/from16 v25, v0

    #@4bb
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    #@4be
    .line 5227
    :cond_36
    move-object/from16 v0, p0

    #@4c0
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@4c2
    move-object/from16 v25, v0

    #@4c4
    if-eqz v25, :cond_37

    #@4c6
    .line 5228
    move-object/from16 v0, p0

    #@4c8
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@4ca
    move-object/from16 v25, v0

    #@4cc
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    #@4cf
    .line 5230
    :cond_37
    const/4 v6, 0x0

    #@4d0
    :goto_21
    const/16 v25, 0x5

    #@4d2
    move/from16 v0, v25

    #@4d4
    if-ge v6, v0, :cond_39

    #@4d6
    .line 5231
    move-object/from16 v0, p0

    #@4d8
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@4da
    move-object/from16 v25, v0

    #@4dc
    aget-object v25, v25, v6

    #@4de
    if-eqz v25, :cond_38

    #@4e0
    .line 5232
    move-object/from16 v0, p0

    #@4e2
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@4e4
    move-object/from16 v25, v0

    #@4e6
    aget-object v25, v25, v6

    #@4e8
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    #@4eb
    .line 5230
    :cond_38
    add-int/lit8 v6, v6, 0x1

    #@4ed
    goto :goto_21

    #@4ee
    .line 5235
    :cond_39
    move-object/from16 v0, p0

    #@4f0
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@4f2
    move-object/from16 v25, v0

    #@4f4
    if-eqz v25, :cond_3a

    #@4f6
    .line 5236
    move-object/from16 v0, p0

    #@4f8
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@4fa
    move-object/from16 v25, v0

    #@4fc
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    #@4ff
    .line 5238
    :cond_3a
    move-object/from16 v0, p0

    #@501
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@503
    move-object/from16 v25, v0

    #@505
    if-eqz v25, :cond_3b

    #@507
    .line 5239
    move-object/from16 v0, p0

    #@509
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@50b
    move-object/from16 v25, v0

    #@50d
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    #@510
    .line 5240
    const/16 v25, 0x0

    #@512
    move-object/from16 v0, v25

    #@514
    move-object/from16 v1, p0

    #@516
    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@518
    .line 5242
    :cond_3b
    move-object/from16 v0, p0

    #@51a
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@51c
    move-object/from16 v25, v0

    #@51e
    if-eqz v25, :cond_3c

    #@520
    .line 5243
    move-object/from16 v0, p0

    #@522
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@524
    move-object/from16 v25, v0

    #@526
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    #@529
    .line 5244
    const/16 v25, 0x0

    #@52b
    move-object/from16 v0, v25

    #@52d
    move-object/from16 v1, p0

    #@52f
    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@531
    .line 5246
    :cond_3c
    move-object/from16 v0, p0

    #@533
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@535
    move-object/from16 v25, v0

    #@537
    if-eqz v25, :cond_3d

    #@539
    .line 5247
    move-object/from16 v0, p0

    #@53b
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@53d
    move-object/from16 v25, v0

    #@53f
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    #@542
    .line 5248
    const/16 v25, 0x0

    #@544
    move-object/from16 v0, v25

    #@546
    move-object/from16 v1, p0

    #@548
    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@54a
    .line 5250
    :cond_3d
    move-object/from16 v0, p0

    #@54c
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@54e
    move-object/from16 v25, v0

    #@550
    if-eqz v25, :cond_3e

    #@552
    .line 5251
    move-object/from16 v0, p0

    #@554
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@556
    move-object/from16 v25, v0

    #@558
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    #@55b
    .line 5252
    const/16 v25, 0x0

    #@55d
    move-object/from16 v0, v25

    #@55f
    move-object/from16 v1, p0

    #@561
    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@563
    .line 5254
    :cond_3e
    move-object/from16 v0, p0

    #@565
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@567
    move-object/from16 v25, v0

    #@569
    if-eqz v25, :cond_3f

    #@56b
    .line 5255
    move-object/from16 v0, p0

    #@56d
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@56f
    move-object/from16 v25, v0

    #@571
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    #@574
    .line 5256
    const/16 v25, 0x0

    #@576
    move-object/from16 v0, v25

    #@578
    move-object/from16 v1, p0

    #@57a
    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@57c
    .line 5258
    :cond_3f
    move-object/from16 v0, p0

    #@57e
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@580
    move-object/from16 v25, v0

    #@582
    if-eqz v25, :cond_40

    #@584
    .line 5259
    const/4 v6, 0x0

    #@585
    :goto_22
    const/16 v25, 0x3

    #@587
    move/from16 v0, v25

    #@589
    if-ge v6, v0, :cond_40

    #@58b
    .line 5260
    move-object/from16 v0, p0

    #@58d
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@58f
    move-object/from16 v25, v0

    #@591
    aget-object v25, v25, v6

    #@593
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->detach()V

    #@596
    .line 5259
    add-int/lit8 v6, v6, 0x1

    #@598
    goto :goto_22

    #@599
    .line 5263
    :cond_40
    move-object/from16 v0, p0

    #@59b
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@59d
    move-object/from16 v25, v0

    #@59f
    if-eqz v25, :cond_41

    #@5a1
    .line 5264
    const/4 v6, 0x0

    #@5a2
    :goto_23
    const/16 v25, 0x4

    #@5a4
    move/from16 v0, v25

    #@5a6
    if-ge v6, v0, :cond_41

    #@5a8
    .line 5265
    move-object/from16 v0, p0

    #@5aa
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@5ac
    move-object/from16 v25, v0

    #@5ae
    aget-object v25, v25, v6

    #@5b0
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    #@5b3
    .line 5266
    move-object/from16 v0, p0

    #@5b5
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@5b7
    move-object/from16 v25, v0

    #@5b9
    aget-object v25, v25, v6

    #@5bb
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    #@5be
    .line 5264
    add-int/lit8 v6, v6, 0x1

    #@5c0
    goto :goto_23

    #@5c1
    .line 5270
    :cond_41
    const/4 v6, 0x0

    #@5c2
    :goto_24
    const/16 v25, 0x4

    #@5c4
    move/from16 v0, v25

    #@5c6
    if-ge v6, v0, :cond_44

    #@5c8
    .line 5271
    move-object/from16 v0, p0

    #@5ca
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@5cc
    move-object/from16 v25, v0

    #@5ce
    aget-object v25, v25, v6

    #@5d0
    if-eqz v25, :cond_42

    #@5d2
    .line 5272
    move-object/from16 v0, p0

    #@5d4
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@5d6
    move-object/from16 v25, v0

    #@5d8
    aget-object v25, v25, v6

    #@5da
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    #@5dd
    .line 5275
    :cond_42
    move-object/from16 v0, p0

    #@5df
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@5e1
    move-object/from16 v25, v0

    #@5e3
    aget-object v25, v25, v6

    #@5e5
    if-eqz v25, :cond_43

    #@5e7
    .line 5276
    move-object/from16 v0, p0

    #@5e9
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@5eb
    move-object/from16 v25, v0

    #@5ed
    aget-object v25, v25, v6

    #@5ef
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    #@5f2
    .line 5270
    :cond_43
    add-int/lit8 v6, v6, 0x1

    #@5f4
    goto :goto_24

    #@5f5
    .line 5279
    :cond_44
    move-object/from16 v0, p0

    #@5f7
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    #@5f9
    move-object/from16 v25, v0

    #@5fb
    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->clear()V

    #@5fe
    .line 5281
    move-object/from16 v0, p0

    #@600
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@602
    move-object/from16 v25, v0

    #@604
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    #@607
    .line 5282
    move-object/from16 v0, p0

    #@609
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@60b
    move-object/from16 v25, v0

    #@60d
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    #@610
    .line 5283
    move-object/from16 v0, p0

    #@612
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@614
    move-object/from16 v25, v0

    #@616
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    #@619
    .line 5284
    const/4 v6, 0x0

    #@61a
    :goto_25
    move-object/from16 v0, p0

    #@61c
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@61e
    move-object/from16 v25, v0

    #@620
    move-object/from16 v0, v25

    #@622
    array-length v0, v0

    #@623
    move/from16 v25, v0

    #@625
    move/from16 v0, v25

    #@627
    if-ge v6, v0, :cond_46

    #@629
    .line 5285
    move-object/from16 v0, p0

    #@62b
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@62d
    move-object/from16 v25, v0

    #@62f
    aget-object v5, v25, v6

    #@631
    .line 5286
    .restart local v5    # "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v5, :cond_45

    #@633
    .line 5287
    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    #@636
    .line 5284
    :cond_45
    add-int/lit8 v6, v6, 0x1

    #@638
    goto :goto_25

    #@639
    .line 5292
    .end local v5    # "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_46
    if-eqz v4, :cond_47

    #@63b
    const/16 v25, 0x0

    #@63d
    :goto_26
    return v25

    #@63e
    :cond_47
    const/16 v25, 0x1

    #@640
    goto :goto_26
.end method

.method public updateProcessStateLocked(Ljava/lang/String;IJ)V
    .locals 3
    .param p1, "procName"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 6551
    const/4 v1, 0x6

    #@1
    if-gt p2, v1, :cond_0

    #@3
    .line 6552
    const/4 v0, 0x0

    #@4
    .line 6558
    .local v0, "procState":I
    :goto_0
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->updateRealProcessStateLocked(Ljava/lang/String;IJ)V

    #@7
    .line 6549
    return-void

    #@8
    .line 6553
    .end local v0    # "procState":I
    :cond_0
    const/16 v1, 0xb

    #@a
    if-gt p2, v1, :cond_1

    #@c
    .line 6554
    const/4 v0, 0x1

    #@d
    .restart local v0    # "procState":I
    goto :goto_0

    #@e
    .line 6556
    .end local v0    # "procState":I
    :cond_1
    const/4 v0, 0x2

    #@f
    .restart local v0    # "procState":I
    goto :goto_0
.end method

.method public updateRealProcessStateLocked(Ljava/lang/String;IJ)V
    .locals 7
    .param p1, "procName"    # Ljava/lang/String;
    .param p2, "procState"    # I
    .param p3, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 6563
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    #@3
    move-result-object v2

    #@4
    .line 6564
    .local v2, "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    iget v4, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mProcessState:I

    #@6
    if-eq v4, p2, :cond_5

    #@8
    .line 6566
    iget v4, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mProcessState:I

    #@a
    if-ge p2, v4, :cond_2

    #@c
    .line 6570
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    #@e
    if-le v4, p2, :cond_1

    #@10
    const/4 v0, 0x1

    #@11
    .line 6577
    .local v0, "changed":Z
    :goto_0
    iput p2, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mProcessState:I

    #@13
    .line 6578
    if-eqz v0, :cond_5

    #@15
    .line 6580
    const/4 v3, 0x3

    #@16
    .line 6581
    .local v3, "uidProcState":I
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    #@18
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@1b
    move-result v4

    #@1c
    add-int/lit8 v1, v4, -0x1

    #@1e
    .local v1, "ip":I
    :goto_1
    if-ltz v1, :cond_4

    #@20
    .line 6582
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    #@22
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@25
    move-result-object v2

    #@26
    .end local v2    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    check-cast v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    #@28
    .line 6583
    .restart local v2    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    iget v4, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mProcessState:I

    #@2a
    if-ge v4, v3, :cond_0

    #@2c
    .line 6584
    iget v3, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mProcessState:I

    #@2e
    .line 6581
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@30
    goto :goto_1

    #@31
    .line 6570
    .end local v0    # "changed":Z
    .end local v1    # "ip":I
    .end local v3    # "uidProcState":I
    :cond_1
    const/4 v0, 0x0

    #@32
    .restart local v0    # "changed":Z
    goto :goto_0

    #@33
    .line 6575
    .end local v0    # "changed":Z
    :cond_2
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    #@35
    iget v5, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mProcessState:I

    #@37
    if-ne v4, v5, :cond_3

    #@39
    const/4 v0, 0x1

    #@3a
    .restart local v0    # "changed":Z
    goto :goto_0

    #@3b
    .end local v0    # "changed":Z
    :cond_3
    const/4 v0, 0x0

    #@3c
    .restart local v0    # "changed":Z
    goto :goto_0

    #@3d
    .line 6587
    .restart local v1    # "ip":I
    .restart local v3    # "uidProcState":I
    :cond_4
    invoke-virtual {p0, v3, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->updateUidProcessStateLocked(IJ)V

    #@40
    .line 6562
    .end local v0    # "changed":Z
    .end local v1    # "ip":I
    .end local v3    # "uidProcState":I
    :cond_5
    return-void
.end method

.method updateUidProcessStateLocked(IJ)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x3

    #@2
    .line 4747
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    #@4
    if-ne v0, p1, :cond_0

    #@6
    return-void

    #@7
    .line 4749
    :cond_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    #@9
    if-eq v0, v2, :cond_1

    #@b
    .line 4750
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@d
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    #@f
    aget-object v0, v0, v1

    #@11
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@14
    .line 4752
    :cond_1
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    #@16
    .line 4753
    if-eq p1, v2, :cond_3

    #@18
    .line 4754
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1a
    aget-object v0, v0, p1

    #@1c
    if-nez v0, :cond_2

    #@1e
    .line 4755
    invoke-virtual {p0, p1, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeProcessState(ILandroid/os/Parcel;)V

    #@21
    .line 4757
    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@23
    aget-object v0, v0, p1

    #@25
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    #@28
    .line 4746
    :cond_3
    return-void
.end method

.method writeToParcelLocked(Landroid/os/Parcel;J)V
    .locals 28
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    #@0
    .prologue
    .line 5296
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@4
    move-object/from16 v26, v0

    #@6
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    #@9
    move-result-object v24

    #@a
    .line 5297
    .local v24, "wakeStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    invoke-virtual/range {v24 .. v24}, Landroid/util/ArrayMap;->size()I

    #@d
    move-result v8

    #@e
    .line 5298
    .local v8, "NW":I
    move-object/from16 v0, p1

    #@10
    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 5299
    const/4 v15, 0x0

    #@14
    .local v15, "iw":I
    :goto_0
    if-ge v15, v8, :cond_0

    #@16
    .line 5300
    move-object/from16 v0, v24

    #@18
    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@1b
    move-result-object v26

    #@1c
    check-cast v26, Ljava/lang/String;

    #@1e
    move-object/from16 v0, p1

    #@20
    move-object/from16 v1, v26

    #@22
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@25
    .line 5301
    move-object/from16 v0, v24

    #@27
    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@2a
    move-result-object v25

    #@2b
    check-cast v25, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    #@2d
    .line 5302
    .local v25, "wakelock":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    move-object/from16 v0, v25

    #@2f
    move-object/from16 v1, p1

    #@31
    move-wide/from16 v2, p2

    #@33
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->writeToParcelLocked(Landroid/os/Parcel;J)V

    #@36
    .line 5299
    add-int/lit8 v15, v15, 0x1

    #@38
    goto :goto_0

    #@39
    .line 5305
    .end local v25    # "wakelock":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    :cond_0
    move-object/from16 v0, p0

    #@3b
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@3d
    move-object/from16 v26, v0

    #@3f
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    #@42
    move-result-object v22

    #@43
    .line 5306
    .local v22, "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-virtual/range {v22 .. v22}, Landroid/util/ArrayMap;->size()I

    #@46
    move-result v6

    #@47
    .line 5307
    .local v6, "NS":I
    move-object/from16 v0, p1

    #@49
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@4c
    .line 5308
    const/4 v13, 0x0

    #@4d
    .local v13, "is":I
    :goto_1
    if-ge v13, v6, :cond_1

    #@4f
    .line 5309
    move-object/from16 v0, v22

    #@51
    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@54
    move-result-object v26

    #@55
    check-cast v26, Ljava/lang/String;

    #@57
    move-object/from16 v0, p1

    #@59
    move-object/from16 v1, v26

    #@5b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5e
    .line 5310
    move-object/from16 v0, v22

    #@60
    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@63
    move-result-object v23

    #@64
    check-cast v23, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@66
    .line 5311
    .local v23, "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    move-object/from16 v0, p1

    #@68
    move-object/from16 v1, v23

    #@6a
    move-wide/from16 v2, p2

    #@6c
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V

    #@6f
    .line 5308
    add-int/lit8 v13, v13, 0x1

    #@71
    goto :goto_1

    #@72
    .line 5314
    .end local v23    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_1
    move-object/from16 v0, p0

    #@74
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    #@76
    move-object/from16 v26, v0

    #@78
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    #@7b
    move-result-object v16

    #@7c
    .line 5315
    .local v16, "jobStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-virtual/range {v16 .. v16}, Landroid/util/ArrayMap;->size()I

    #@7f
    move-result v4

    #@80
    .line 5316
    .local v4, "NJ":I
    move-object/from16 v0, p1

    #@82
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@85
    .line 5317
    const/4 v11, 0x0

    #@86
    .local v11, "ij":I
    :goto_2
    if-ge v11, v4, :cond_2

    #@88
    .line 5318
    move-object/from16 v0, v16

    #@8a
    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@8d
    move-result-object v26

    #@8e
    check-cast v26, Ljava/lang/String;

    #@90
    move-object/from16 v0, p1

    #@92
    move-object/from16 v1, v26

    #@94
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@97
    .line 5319
    move-object/from16 v0, v16

    #@99
    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@9c
    move-result-object v23

    #@9d
    check-cast v23, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@9f
    .line 5320
    .restart local v23    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    move-object/from16 v0, p1

    #@a1
    move-object/from16 v1, v23

    #@a3
    move-wide/from16 v2, p2

    #@a5
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V

    #@a8
    .line 5317
    add-int/lit8 v11, v11, 0x1

    #@aa
    goto :goto_2

    #@ab
    .line 5323
    .end local v23    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_2
    move-object/from16 v0, p0

    #@ad
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    #@af
    move-object/from16 v26, v0

    #@b1
    invoke-virtual/range {v26 .. v26}, Landroid/util/SparseArray;->size()I

    #@b4
    move-result v7

    #@b5
    .line 5324
    .local v7, "NSE":I
    move-object/from16 v0, p1

    #@b7
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@ba
    .line 5325
    const/4 v14, 0x0

    #@bb
    .local v14, "ise":I
    :goto_3
    if-ge v14, v7, :cond_3

    #@bd
    .line 5326
    move-object/from16 v0, p0

    #@bf
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    #@c1
    move-object/from16 v26, v0

    #@c3
    move-object/from16 v0, v26

    #@c5
    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->keyAt(I)I

    #@c8
    move-result v26

    #@c9
    move-object/from16 v0, p1

    #@cb
    move/from16 v1, v26

    #@cd
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@d0
    .line 5327
    move-object/from16 v0, p0

    #@d2
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    #@d4
    move-object/from16 v26, v0

    #@d6
    move-object/from16 v0, v26

    #@d8
    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@db
    move-result-object v21

    #@dc
    check-cast v21, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    #@de
    .line 5328
    .local v21, "sensor":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    move-object/from16 v0, v21

    #@e0
    move-object/from16 v1, p1

    #@e2
    move-wide/from16 v2, p2

    #@e4
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->writeToParcelLocked(Landroid/os/Parcel;J)V

    #@e7
    .line 5325
    add-int/lit8 v14, v14, 0x1

    #@e9
    goto :goto_3

    #@ea
    .line 5331
    .end local v21    # "sensor":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    :cond_3
    move-object/from16 v0, p0

    #@ec
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    #@ee
    move-object/from16 v26, v0

    #@f0
    invoke-virtual/range {v26 .. v26}, Landroid/util/ArrayMap;->size()I

    #@f3
    move-result v5

    #@f4
    .line 5332
    .local v5, "NP":I
    move-object/from16 v0, p1

    #@f6
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@f9
    .line 5333
    const/4 v12, 0x0

    #@fa
    .local v12, "ip":I
    :goto_4
    if-ge v12, v5, :cond_4

    #@fc
    .line 5334
    move-object/from16 v0, p0

    #@fe
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    #@100
    move-object/from16 v26, v0

    #@102
    move-object/from16 v0, v26

    #@104
    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@107
    move-result-object v26

    #@108
    check-cast v26, Ljava/lang/String;

    #@10a
    move-object/from16 v0, p1

    #@10c
    move-object/from16 v1, v26

    #@10e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@111
    .line 5335
    move-object/from16 v0, p0

    #@113
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    #@115
    move-object/from16 v26, v0

    #@117
    move-object/from16 v0, v26

    #@119
    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@11c
    move-result-object v20

    #@11d
    check-cast v20, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    #@11f
    .line 5336
    .local v20, "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    move-object/from16 v0, v20

    #@121
    move-object/from16 v1, p1

    #@123
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->writeToParcelLocked(Landroid/os/Parcel;)V

    #@126
    .line 5333
    add-int/lit8 v12, v12, 0x1

    #@128
    goto :goto_4

    #@129
    .line 5339
    .end local v20    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    :cond_4
    move-object/from16 v0, p0

    #@12b
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    #@12d
    move-object/from16 v26, v0

    #@12f
    invoke-virtual/range {v26 .. v26}, Landroid/util/ArrayMap;->size()I

    #@132
    move-result v26

    #@133
    move-object/from16 v0, p1

    #@135
    move/from16 v1, v26

    #@137
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13a
    .line 5340
    move-object/from16 v0, p0

    #@13c
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    #@13e
    move-object/from16 v26, v0

    #@140
    invoke-virtual/range {v26 .. v26}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    #@143
    move-result-object v26

    #@144
    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@147
    move-result-object v19

    #@148
    .local v19, "pkgEntry$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    #@14b
    move-result v26

    #@14c
    if-eqz v26, :cond_5

    #@14e
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@151
    move-result-object v18

    #@152
    check-cast v18, Ljava/util/Map$Entry;

    #@154
    .line 5341
    .local v18, "pkgEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@157
    move-result-object v26

    #@158
    check-cast v26, Ljava/lang/String;

    #@15a
    move-object/from16 v0, p1

    #@15c
    move-object/from16 v1, v26

    #@15e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@161
    .line 5342
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@164
    move-result-object v17

    #@165
    check-cast v17, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    #@167
    .line 5343
    .local v17, "pkg":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    move-object/from16 v0, v17

    #@169
    move-object/from16 v1, p1

    #@16b
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->writeToParcelLocked(Landroid/os/Parcel;)V

    #@16e
    goto :goto_5

    #@16f
    .line 5346
    .end local v17    # "pkg":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .end local v18    # "pkgEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    :cond_5
    move-object/from16 v0, p0

    #@171
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@173
    move-object/from16 v26, v0

    #@175
    if-eqz v26, :cond_6

    #@177
    .line 5347
    const/16 v26, 0x1

    #@179
    move-object/from16 v0, p1

    #@17b
    move/from16 v1, v26

    #@17d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@180
    .line 5348
    move-object/from16 v0, p0

    #@182
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@184
    move-object/from16 v26, v0

    #@186
    move-object/from16 v0, v26

    #@188
    move-object/from16 v1, p1

    #@18a
    move-wide/from16 v2, p2

    #@18c
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    #@18f
    .line 5352
    :goto_6
    move-object/from16 v0, p0

    #@191
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@193
    move-object/from16 v26, v0

    #@195
    if-eqz v26, :cond_7

    #@197
    .line 5353
    const/16 v26, 0x1

    #@199
    move-object/from16 v0, p1

    #@19b
    move/from16 v1, v26

    #@19d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a0
    .line 5354
    move-object/from16 v0, p0

    #@1a2
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1a4
    move-object/from16 v26, v0

    #@1a6
    move-object/from16 v0, v26

    #@1a8
    move-object/from16 v1, p1

    #@1aa
    move-wide/from16 v2, p2

    #@1ac
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    #@1af
    .line 5358
    :goto_7
    move-object/from16 v0, p0

    #@1b1
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1b3
    move-object/from16 v26, v0

    #@1b5
    if-eqz v26, :cond_8

    #@1b7
    .line 5359
    const/16 v26, 0x1

    #@1b9
    move-object/from16 v0, p1

    #@1bb
    move/from16 v1, v26

    #@1bd
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1c0
    .line 5360
    move-object/from16 v0, p0

    #@1c2
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1c4
    move-object/from16 v26, v0

    #@1c6
    move-object/from16 v0, v26

    #@1c8
    move-object/from16 v1, p1

    #@1ca
    move-wide/from16 v2, p2

    #@1cc
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    #@1cf
    .line 5364
    :goto_8
    const/4 v10, 0x0

    #@1d0
    .local v10, "i":I
    :goto_9
    const/16 v26, 0x5

    #@1d2
    move/from16 v0, v26

    #@1d4
    if-ge v10, v0, :cond_a

    #@1d6
    .line 5365
    move-object/from16 v0, p0

    #@1d8
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1da
    move-object/from16 v26, v0

    #@1dc
    aget-object v26, v26, v10

    #@1de
    if-eqz v26, :cond_9

    #@1e0
    .line 5366
    const/16 v26, 0x1

    #@1e2
    move-object/from16 v0, p1

    #@1e4
    move/from16 v1, v26

    #@1e6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1e9
    .line 5367
    move-object/from16 v0, p0

    #@1eb
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@1ed
    move-object/from16 v26, v0

    #@1ef
    aget-object v26, v26, v10

    #@1f1
    move-object/from16 v0, v26

    #@1f3
    move-object/from16 v1, p1

    #@1f5
    move-wide/from16 v2, p2

    #@1f7
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    #@1fa
    .line 5364
    :goto_a
    add-int/lit8 v10, v10, 0x1

    #@1fc
    goto :goto_9

    #@1fd
    .line 5350
    .end local v10    # "i":I
    :cond_6
    const/16 v26, 0x0

    #@1ff
    move-object/from16 v0, p1

    #@201
    move/from16 v1, v26

    #@203
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@206
    goto :goto_6

    #@207
    .line 5356
    :cond_7
    const/16 v26, 0x0

    #@209
    move-object/from16 v0, p1

    #@20b
    move/from16 v1, v26

    #@20d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@210
    goto :goto_7

    #@211
    .line 5362
    :cond_8
    const/16 v26, 0x0

    #@213
    move-object/from16 v0, p1

    #@215
    move/from16 v1, v26

    #@217
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@21a
    goto :goto_8

    #@21b
    .line 5369
    .restart local v10    # "i":I
    :cond_9
    const/16 v26, 0x0

    #@21d
    move-object/from16 v0, p1

    #@21f
    move/from16 v1, v26

    #@221
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@224
    goto :goto_a

    #@225
    .line 5372
    :cond_a
    move-object/from16 v0, p0

    #@227
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@229
    move-object/from16 v26, v0

    #@22b
    if-eqz v26, :cond_b

    #@22d
    .line 5373
    const/16 v26, 0x1

    #@22f
    move-object/from16 v0, p1

    #@231
    move/from16 v1, v26

    #@233
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@236
    .line 5374
    move-object/from16 v0, p0

    #@238
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@23a
    move-object/from16 v26, v0

    #@23c
    move-object/from16 v0, v26

    #@23e
    move-object/from16 v1, p1

    #@240
    move-wide/from16 v2, p2

    #@242
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    #@245
    .line 5379
    :goto_b
    move-object/from16 v0, p0

    #@247
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@249
    move-object/from16 v26, v0

    #@24b
    if-eqz v26, :cond_c

    #@24d
    .line 5380
    const/16 v26, 0x1

    #@24f
    move-object/from16 v0, p1

    #@251
    move/from16 v1, v26

    #@253
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@256
    .line 5381
    move-object/from16 v0, p0

    #@258
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@25a
    move-object/from16 v26, v0

    #@25c
    move-object/from16 v0, v26

    #@25e
    move-object/from16 v1, p1

    #@260
    move-wide/from16 v2, p2

    #@262
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    #@265
    .line 5385
    :goto_c
    move-object/from16 v0, p0

    #@267
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@269
    move-object/from16 v26, v0

    #@26b
    if-eqz v26, :cond_d

    #@26d
    .line 5386
    const/16 v26, 0x1

    #@26f
    move-object/from16 v0, p1

    #@271
    move/from16 v1, v26

    #@273
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@276
    .line 5387
    move-object/from16 v0, p0

    #@278
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@27a
    move-object/from16 v26, v0

    #@27c
    move-object/from16 v0, v26

    #@27e
    move-object/from16 v1, p1

    #@280
    move-wide/from16 v2, p2

    #@282
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    #@285
    .line 5391
    :goto_d
    move-object/from16 v0, p0

    #@287
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@289
    move-object/from16 v26, v0

    #@28b
    if-eqz v26, :cond_e

    #@28d
    .line 5392
    const/16 v26, 0x1

    #@28f
    move-object/from16 v0, p1

    #@291
    move/from16 v1, v26

    #@293
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@296
    .line 5393
    move-object/from16 v0, p0

    #@298
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@29a
    move-object/from16 v26, v0

    #@29c
    move-object/from16 v0, v26

    #@29e
    move-object/from16 v1, p1

    #@2a0
    move-wide/from16 v2, p2

    #@2a2
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    #@2a5
    .line 5397
    :goto_e
    move-object/from16 v0, p0

    #@2a7
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2a9
    move-object/from16 v26, v0

    #@2ab
    if-eqz v26, :cond_f

    #@2ad
    .line 5398
    const/16 v26, 0x1

    #@2af
    move-object/from16 v0, p1

    #@2b1
    move/from16 v1, v26

    #@2b3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2b6
    .line 5399
    move-object/from16 v0, p0

    #@2b8
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2ba
    move-object/from16 v26, v0

    #@2bc
    move-object/from16 v0, v26

    #@2be
    move-object/from16 v1, p1

    #@2c0
    move-wide/from16 v2, p2

    #@2c2
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    #@2c5
    .line 5403
    :goto_f
    move-object/from16 v0, p0

    #@2c7
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2c9
    move-object/from16 v26, v0

    #@2cb
    if-eqz v26, :cond_10

    #@2cd
    .line 5404
    const/16 v26, 0x1

    #@2cf
    move-object/from16 v0, p1

    #@2d1
    move/from16 v1, v26

    #@2d3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2d6
    .line 5405
    move-object/from16 v0, p0

    #@2d8
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2da
    move-object/from16 v26, v0

    #@2dc
    move-object/from16 v0, v26

    #@2de
    move-object/from16 v1, p1

    #@2e0
    move-wide/from16 v2, p2

    #@2e2
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    #@2e5
    .line 5409
    :goto_10
    const/4 v10, 0x0

    #@2e6
    :goto_11
    const/16 v26, 0x3

    #@2e8
    move/from16 v0, v26

    #@2ea
    if-ge v10, v0, :cond_12

    #@2ec
    .line 5410
    move-object/from16 v0, p0

    #@2ee
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2f0
    move-object/from16 v26, v0

    #@2f2
    aget-object v26, v26, v10

    #@2f4
    if-eqz v26, :cond_11

    #@2f6
    .line 5411
    const/16 v26, 0x1

    #@2f8
    move-object/from16 v0, p1

    #@2fa
    move/from16 v1, v26

    #@2fc
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2ff
    .line 5412
    move-object/from16 v0, p0

    #@301
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@303
    move-object/from16 v26, v0

    #@305
    aget-object v26, v26, v10

    #@307
    move-object/from16 v0, v26

    #@309
    move-object/from16 v1, p1

    #@30b
    move-wide/from16 v2, p2

    #@30d
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    #@310
    .line 5409
    :goto_12
    add-int/lit8 v10, v10, 0x1

    #@312
    goto :goto_11

    #@313
    .line 5376
    :cond_b
    const/16 v26, 0x0

    #@315
    move-object/from16 v0, p1

    #@317
    move/from16 v1, v26

    #@319
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@31c
    goto/16 :goto_b

    #@31e
    .line 5383
    :cond_c
    const/16 v26, 0x0

    #@320
    move-object/from16 v0, p1

    #@322
    move/from16 v1, v26

    #@324
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@327
    goto/16 :goto_c

    #@329
    .line 5389
    :cond_d
    const/16 v26, 0x0

    #@32b
    move-object/from16 v0, p1

    #@32d
    move/from16 v1, v26

    #@32f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@332
    goto/16 :goto_d

    #@334
    .line 5395
    :cond_e
    const/16 v26, 0x0

    #@336
    move-object/from16 v0, p1

    #@338
    move/from16 v1, v26

    #@33a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@33d
    goto/16 :goto_e

    #@33f
    .line 5401
    :cond_f
    const/16 v26, 0x0

    #@341
    move-object/from16 v0, p1

    #@343
    move/from16 v1, v26

    #@345
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@348
    goto/16 :goto_f

    #@34a
    .line 5407
    :cond_10
    const/16 v26, 0x0

    #@34c
    move-object/from16 v0, p1

    #@34e
    move/from16 v1, v26

    #@350
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@353
    goto :goto_10

    #@354
    .line 5414
    :cond_11
    const/16 v26, 0x0

    #@356
    move-object/from16 v0, p1

    #@358
    move/from16 v1, v26

    #@35a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@35d
    goto :goto_12

    #@35e
    .line 5417
    :cond_12
    move-object/from16 v0, p0

    #@360
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@362
    move-object/from16 v26, v0

    #@364
    if-eqz v26, :cond_13

    #@366
    .line 5418
    const/16 v26, 0x1

    #@368
    move-object/from16 v0, p1

    #@36a
    move/from16 v1, v26

    #@36c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@36f
    .line 5419
    move-object/from16 v0, p0

    #@371
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    #@373
    move-object/from16 v26, v0

    #@375
    move-object/from16 v0, v26

    #@377
    move-object/from16 v1, p1

    #@379
    move-wide/from16 v2, p2

    #@37b
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    #@37e
    .line 5423
    :goto_13
    move-object/from16 v0, p0

    #@380
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@382
    move-object/from16 v26, v0

    #@384
    if-eqz v26, :cond_14

    #@386
    .line 5424
    const/16 v26, 0x1

    #@388
    move-object/from16 v0, p1

    #@38a
    move/from16 v1, v26

    #@38c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@38f
    .line 5425
    const/4 v10, 0x0

    #@390
    :goto_14
    const/16 v26, 0x3

    #@392
    move/from16 v0, v26

    #@394
    if-ge v10, v0, :cond_15

    #@396
    .line 5426
    move-object/from16 v0, p0

    #@398
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@39a
    move-object/from16 v26, v0

    #@39c
    aget-object v26, v26, v10

    #@39e
    move-object/from16 v0, v26

    #@3a0
    move-object/from16 v1, p1

    #@3a2
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeToParcel(Landroid/os/Parcel;)V

    #@3a5
    .line 5425
    add-int/lit8 v10, v10, 0x1

    #@3a7
    goto :goto_14

    #@3a8
    .line 5421
    :cond_13
    const/16 v26, 0x0

    #@3aa
    move-object/from16 v0, p1

    #@3ac
    move/from16 v1, v26

    #@3ae
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3b1
    goto :goto_13

    #@3b2
    .line 5429
    :cond_14
    const/16 v26, 0x0

    #@3b4
    move-object/from16 v0, p1

    #@3b6
    move/from16 v1, v26

    #@3b8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3bb
    .line 5431
    :cond_15
    move-object/from16 v0, p0

    #@3bd
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@3bf
    move-object/from16 v26, v0

    #@3c1
    if-eqz v26, :cond_17

    #@3c3
    .line 5432
    const/16 v26, 0x1

    #@3c5
    move-object/from16 v0, p1

    #@3c7
    move/from16 v1, v26

    #@3c9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3cc
    .line 5433
    const/4 v10, 0x0

    #@3cd
    :goto_15
    const/16 v26, 0x4

    #@3cf
    move/from16 v0, v26

    #@3d1
    if-ge v10, v0, :cond_16

    #@3d3
    .line 5434
    move-object/from16 v0, p0

    #@3d5
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@3d7
    move-object/from16 v26, v0

    #@3d9
    aget-object v26, v26, v10

    #@3db
    move-object/from16 v0, v26

    #@3dd
    move-object/from16 v1, p1

    #@3df
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    #@3e2
    .line 5435
    move-object/from16 v0, p0

    #@3e4
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@3e6
    move-object/from16 v26, v0

    #@3e8
    aget-object v26, v26, v10

    #@3ea
    move-object/from16 v0, v26

    #@3ec
    move-object/from16 v1, p1

    #@3ee
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    #@3f1
    .line 5433
    add-int/lit8 v10, v10, 0x1

    #@3f3
    goto :goto_15

    #@3f4
    .line 5437
    :cond_16
    move-object/from16 v0, p0

    #@3f6
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@3f8
    move-object/from16 v26, v0

    #@3fa
    move-object/from16 v0, v26

    #@3fc
    move-object/from16 v1, p1

    #@3fe
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    #@401
    .line 5438
    move-object/from16 v0, p0

    #@403
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@405
    move-object/from16 v26, v0

    #@407
    move-object/from16 v0, v26

    #@409
    move-object/from16 v1, p1

    #@40b
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    #@40e
    .line 5443
    :goto_16
    const/4 v10, 0x0

    #@40f
    :goto_17
    const/16 v26, 0x4

    #@411
    move/from16 v0, v26

    #@413
    if-ge v10, v0, :cond_19

    #@415
    .line 5444
    move-object/from16 v0, p0

    #@417
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@419
    move-object/from16 v26, v0

    #@41b
    aget-object v26, v26, v10

    #@41d
    if-eqz v26, :cond_18

    #@41f
    .line 5445
    const/16 v26, 0x1

    #@421
    move-object/from16 v0, p1

    #@423
    move/from16 v1, v26

    #@425
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@428
    .line 5446
    move-object/from16 v0, p0

    #@42a
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@42c
    move-object/from16 v26, v0

    #@42e
    aget-object v26, v26, v10

    #@430
    move-object/from16 v0, v26

    #@432
    move-object/from16 v1, p1

    #@434
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    #@437
    .line 5443
    :goto_18
    add-int/lit8 v10, v10, 0x1

    #@439
    goto :goto_17

    #@43a
    .line 5440
    :cond_17
    const/16 v26, 0x0

    #@43c
    move-object/from16 v0, p1

    #@43e
    move/from16 v1, v26

    #@440
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@443
    goto :goto_16

    #@444
    .line 5448
    :cond_18
    const/16 v26, 0x0

    #@446
    move-object/from16 v0, p1

    #@448
    move/from16 v1, v26

    #@44a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@44d
    goto :goto_18

    #@44e
    .line 5452
    :cond_19
    const/4 v10, 0x0

    #@44f
    :goto_19
    const/16 v26, 0x4

    #@451
    move/from16 v0, v26

    #@453
    if-ge v10, v0, :cond_1b

    #@455
    .line 5453
    move-object/from16 v0, p0

    #@457
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@459
    move-object/from16 v26, v0

    #@45b
    aget-object v26, v26, v10

    #@45d
    if-eqz v26, :cond_1a

    #@45f
    .line 5454
    const/16 v26, 0x1

    #@461
    move-object/from16 v0, p1

    #@463
    move/from16 v1, v26

    #@465
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@468
    .line 5455
    move-object/from16 v0, p0

    #@46a
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@46c
    move-object/from16 v26, v0

    #@46e
    aget-object v26, v26, v10

    #@470
    move-object/from16 v0, v26

    #@472
    move-object/from16 v1, p1

    #@474
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    #@477
    .line 5452
    :goto_1a
    add-int/lit8 v10, v10, 0x1

    #@479
    goto :goto_19

    #@47a
    .line 5457
    :cond_1a
    const/16 v26, 0x0

    #@47c
    move-object/from16 v0, p1

    #@47e
    move/from16 v1, v26

    #@480
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@483
    goto :goto_1a

    #@484
    .line 5461
    :cond_1b
    move-object/from16 v0, p0

    #@486
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@488
    move-object/from16 v26, v0

    #@48a
    move-object/from16 v0, v26

    #@48c
    move-object/from16 v1, p1

    #@48e
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    #@491
    .line 5462
    move-object/from16 v0, p0

    #@493
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@495
    move-object/from16 v26, v0

    #@497
    move-object/from16 v0, v26

    #@499
    move-object/from16 v1, p1

    #@49b
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    #@49e
    .line 5463
    move-object/from16 v0, p0

    #@4a0
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@4a2
    move-object/from16 v26, v0

    #@4a4
    move-object/from16 v0, v26

    #@4a6
    move-object/from16 v1, p1

    #@4a8
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    #@4ab
    .line 5465
    move-object/from16 v0, p0

    #@4ad
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@4af
    move-object/from16 v26, v0

    #@4b1
    move-object/from16 v0, v26

    #@4b3
    array-length v0, v0

    #@4b4
    move/from16 v26, v0

    #@4b6
    move-object/from16 v0, p1

    #@4b8
    move/from16 v1, v26

    #@4ba
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4bd
    .line 5466
    const/4 v10, 0x0

    #@4be
    :goto_1b
    move-object/from16 v0, p0

    #@4c0
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@4c2
    move-object/from16 v26, v0

    #@4c4
    move-object/from16 v0, v26

    #@4c6
    array-length v0, v0

    #@4c7
    move/from16 v26, v0

    #@4c9
    move/from16 v0, v26

    #@4cb
    if-ge v10, v0, :cond_1d

    #@4cd
    .line 5467
    move-object/from16 v0, p0

    #@4cf
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    #@4d1
    move-object/from16 v26, v0

    #@4d3
    aget-object v9, v26, v10

    #@4d5
    .line 5468
    .local v9, "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v9, :cond_1c

    #@4d7
    .line 5469
    const/16 v26, 0x1

    #@4d9
    move-object/from16 v0, p1

    #@4db
    move/from16 v1, v26

    #@4dd
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4e0
    .line 5470
    move-object/from16 v0, p1

    #@4e2
    invoke-virtual {v9, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    #@4e5
    .line 5466
    :goto_1c
    add-int/lit8 v10, v10, 0x1

    #@4e7
    goto :goto_1b

    #@4e8
    .line 5472
    :cond_1c
    const/16 v26, 0x0

    #@4ea
    move-object/from16 v0, p1

    #@4ec
    move/from16 v1, v26

    #@4ee
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4f1
    goto :goto_1c

    #@4f2
    .line 5295
    .end local v9    # "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_1d
    return-void
.end method
