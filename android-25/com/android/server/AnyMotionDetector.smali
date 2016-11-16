.class public Lcom/android/server/AnyMotionDetector;
.super Ljava/lang/Object;
.source "AnyMotionDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AnyMotionDetector$1;,
        Lcom/android/server/AnyMotionDetector$2;,
        Lcom/android/server/AnyMotionDetector$3;,
        Lcom/android/server/AnyMotionDetector$4;,
        Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;,
        Lcom/android/server/AnyMotionDetector$RunningSignalStats;,
        Lcom/android/server/AnyMotionDetector$Vector3;
    }
.end annotation


# static fields
.field private static final ACCELEROMETER_DATA_TIMEOUT_MILLIS:J = 0xbb8L

.field private static final DEBUG:Z = false

.field private static final ORIENTATION_MEASUREMENT_DURATION_MILLIS:J = 0x9c4L

.field private static final ORIENTATION_MEASUREMENT_INTERVAL_MILLIS:J = 0x1388L

.field public static final RESULT_MOVED:I = 0x1

.field public static final RESULT_STATIONARY:I = 0x0

.field public static final RESULT_UNKNOWN:I = -0x1

.field private static final SAMPLING_INTERVAL_MILLIS:I = 0x28

.field private static final STALE_MEASUREMENT_TIMEOUT_MILLIS:I = 0x1d4c0

.field private static final STATE_ACTIVE:I = 0x1

.field private static final STATE_INACTIVE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AnyMotionDetector"

.field private static final WAKELOCK_TIMEOUT_MILLIS:J = 0x7530L


# instance fields
.field private final THRESHOLD_ENERGY:F

.field private mAccelSensor:Landroid/hardware/Sensor;

.field private mCallback:Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;

.field private mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/hardware/SensorEventListener;

.field private final mLock:Ljava/lang/Object;

.field private mMeasurementInProgress:Z

.field private final mMeasurementTimeout:Ljava/lang/Runnable;

.field private mNumSufficientSamples:I

.field private mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

.field private mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private final mSensorRestart:Ljava/lang/Runnable;

.field private mState:I

.field private final mThresholdAngle:F

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakelockTimeout:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/server/AnyMotionDetector;)Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mCallback:Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/AnyMotionDetector;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/AnyMotionDetector;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/AnyMotionDetector;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/AnyMotionDetector;->mNumSufficientSamples:I

    #@2
    return v0
.end method

.method static synthetic -get4(Lcom/android/server/AnyMotionDetector;)Lcom/android/server/AnyMotionDetector$RunningSignalStats;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/AnyMotionDetector;)Ljava/lang/Runnable;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeout:Ljava/lang/Runnable;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/AnyMotionDetector;)I
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/AnyMotionDetector;->stopOrientationMeasurementLocked()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/AnyMotionDetector;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/AnyMotionDetector;->startOrientationMeasurementLocked()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/os/PowerManager;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;F)V
    .locals 4
    .param p1, "pm"    # Landroid/os/PowerManager;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "sm"    # Landroid/hardware/SensorManager;
    .param p4, "callback"    # Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;
    .param p5, "thresholdAngle"    # F

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 62
    const/high16 v0, 0x40a00000    # 5.0f

    #@6
    iput v0, p0, Lcom/android/server/AnyMotionDetector;->THRESHOLD_ENERGY:F

    #@8
    .line 86
    new-instance v0, Ljava/lang/Object;

    #@a
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/server/AnyMotionDetector;->mLock:Ljava/lang/Object;

    #@f
    .line 101
    iput-object v1, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@11
    .line 104
    iput-object v1, p0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@13
    .line 109
    iput-object v1, p0, Lcom/android/server/AnyMotionDetector;->mCallback:Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;

    #@15
    .line 270
    new-instance v0, Lcom/android/server/AnyMotionDetector$1;

    #@17
    invoke-direct {v0, p0}, Lcom/android/server/AnyMotionDetector$1;-><init>(Lcom/android/server/AnyMotionDetector;)V

    #@1a
    iput-object v0, p0, Lcom/android/server/AnyMotionDetector;->mListener:Landroid/hardware/SensorEventListener;

    #@1c
    .line 295
    new-instance v0, Lcom/android/server/AnyMotionDetector$2;

    #@1e
    invoke-direct {v0, p0}, Lcom/android/server/AnyMotionDetector$2;-><init>(Lcom/android/server/AnyMotionDetector;)V

    #@21
    iput-object v0, p0, Lcom/android/server/AnyMotionDetector;->mSensorRestart:Ljava/lang/Runnable;

    #@23
    .line 304
    new-instance v0, Lcom/android/server/AnyMotionDetector$3;

    #@25
    invoke-direct {v0, p0}, Lcom/android/server/AnyMotionDetector$3;-><init>(Lcom/android/server/AnyMotionDetector;)V

    #@28
    iput-object v0, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeout:Ljava/lang/Runnable;

    #@2a
    .line 321
    new-instance v0, Lcom/android/server/AnyMotionDetector$4;

    #@2c
    invoke-direct {v0, p0}, Lcom/android/server/AnyMotionDetector$4;-><init>(Lcom/android/server/AnyMotionDetector;)V

    #@2f
    iput-object v0, p0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeout:Ljava/lang/Runnable;

    #@31
    .line 114
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mLock:Ljava/lang/Object;

    #@33
    monitor-enter v1

    #@34
    .line 115
    :try_start_0
    const-string/jumbo v0, "AnyMotionDetector"

    #@37
    const/4 v2, 0x1

    #@38
    invoke-virtual {p1, v2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@3b
    move-result-object v0

    #@3c
    iput-object v0, p0, Lcom/android/server/AnyMotionDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@3e
    .line 116
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@40
    const/4 v2, 0x0

    #@41
    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    #@44
    .line 117
    iput-object p2, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    #@46
    .line 118
    iput-object p3, p0, Lcom/android/server/AnyMotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    #@48
    .line 119
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    #@4a
    const/4 v2, 0x1

    #@4b
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    #@4e
    move-result-object v0

    #@4f
    iput-object v0, p0, Lcom/android/server/AnyMotionDetector;->mAccelSensor:Landroid/hardware/Sensor;

    #@51
    .line 120
    const/4 v0, 0x0

    #@52
    iput-boolean v0, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    #@54
    .line 121
    const/4 v0, 0x0

    #@55
    iput v0, p0, Lcom/android/server/AnyMotionDetector;->mState:I

    #@57
    .line 122
    iput-object p4, p0, Lcom/android/server/AnyMotionDetector;->mCallback:Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;

    #@59
    .line 123
    iput p5, p0, Lcom/android/server/AnyMotionDetector;->mThresholdAngle:F

    #@5b
    .line 124
    new-instance v0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    #@5d
    invoke-direct {v0}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;-><init>()V

    #@60
    iput-object v0, p0, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    #@62
    .line 126
    const-wide v2, 0x404f400000000000L    # 62.5

    #@67
    .line 125
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    #@6a
    move-result-wide v2

    #@6b
    double-to-int v0, v2

    #@6c
    iput v0, p0, Lcom/android/server/AnyMotionDetector;->mNumSufficientSamples:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6e
    monitor-exit v1

    #@6f
    .line 112
    return-void

    #@70
    .line 114
    :catchall_0
    move-exception v0

    #@71
    monitor-exit v1

    #@72
    throw v0
.end method

.method private startOrientationMeasurementLocked()V
    .locals 5

    #@0
    .prologue
    .line 178
    iget-boolean v1, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    #@2
    if-nez v1, :cond_1

    #@4
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mAccelSensor:Landroid/hardware/Sensor;

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 179
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    #@a
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mListener:Landroid/hardware/SensorEventListener;

    #@c
    iget-object v3, p0, Lcom/android/server/AnyMotionDetector;->mAccelSensor:Landroid/hardware/Sensor;

    #@e
    .line 180
    const v4, 0x9c40

    #@11
    .line 179
    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 181
    const/4 v1, 0x1

    #@18
    iput-boolean v1, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    #@1a
    .line 182
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    #@1c
    invoke-virtual {v1}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->reset()V

    #@1f
    .line 184
    :cond_0
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    #@21
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeout:Ljava/lang/Runnable;

    #@23
    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    #@26
    move-result-object v0

    #@27
    .line 185
    .local v0, "measurementTimeoutMsg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    #@29
    const-wide/16 v2, 0xbb8

    #@2b
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@2e
    .line 175
    .end local v0    # "measurementTimeoutMsg":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private stopOrientationMeasurementLocked()I
    .locals 6

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 192
    const/4 v1, -0x1

    #@2
    .line 193
    .local v1, "status":I
    iget-boolean v2, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    #@4
    if-eqz v2, :cond_2

    #@6
    .line 194
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    #@8
    iget-object v3, p0, Lcom/android/server/AnyMotionDetector;->mListener:Landroid/hardware/SensorEventListener;

    #@a
    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    #@d
    .line 195
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    #@f
    iget-object v3, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeout:Ljava/lang/Runnable;

    #@11
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@14
    .line 196
    iput-boolean v4, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    #@16
    .line 197
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@18
    iput-object v2, p0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@1a
    .line 198
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    #@1c
    invoke-virtual {v2}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->getRunningAverage()Lcom/android/server/AnyMotionDetector$Vector3;

    #@1f
    move-result-object v2

    #@20
    iput-object v2, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@22
    .line 199
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    #@24
    invoke-virtual {v2}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->getSampleCount()I

    #@27
    move-result v2

    #@28
    if-nez v2, :cond_0

    #@2a
    .line 200
    const-string/jumbo v2, "AnyMotionDetector"

    #@2d
    const-string/jumbo v3, "No accelerometer data acquired for orientation measurement."

    #@30
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 211
    :cond_0
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    #@35
    invoke-virtual {v2}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->reset()V

    #@38
    .line 212
    invoke-virtual {p0}, Lcom/android/server/AnyMotionDetector;->getStationaryStatus()I

    #@3b
    move-result v1

    #@3c
    .line 214
    const/4 v2, -0x1

    #@3d
    if-eq v1, v2, :cond_3

    #@3f
    .line 215
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@41
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@44
    move-result v2

    #@45
    if-eqz v2, :cond_1

    #@47
    .line 216
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@49
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    #@4c
    .line 217
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    #@4e
    iget-object v3, p0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeout:Ljava/lang/Runnable;

    #@50
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@53
    .line 222
    :cond_1
    iput v4, p0, Lcom/android/server/AnyMotionDetector;->mState:I

    #@55
    .line 235
    :cond_2
    :goto_0
    return v1

    #@56
    .line 231
    :cond_3
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    #@58
    iget-object v3, p0, Lcom/android/server/AnyMotionDetector;->mSensorRestart:Ljava/lang/Runnable;

    #@5a
    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    #@5d
    move-result-object v0

    #@5e
    .line 232
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    #@60
    const-wide/16 v4, 0x1388

    #@62
    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@65
    goto :goto_0
.end method


# virtual methods
.method public checkForAnyMotion()V
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 138
    iget v1, p0, Lcom/android/server/AnyMotionDetector;->mState:I

    #@3
    if-eq v1, v2, :cond_0

    #@5
    .line 139
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mLock:Ljava/lang/Object;

    #@7
    monitor-enter v2

    #@8
    .line 140
    const/4 v1, 0x1

    #@9
    :try_start_0
    iput v1, p0, Lcom/android/server/AnyMotionDetector;->mState:I

    #@b
    .line 144
    const/4 v1, 0x0

    #@c
    iput-object v1, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@e
    .line 145
    const/4 v1, 0x0

    #@f
    iput-object v1, p0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@11
    .line 146
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@13
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@16
    .line 147
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    #@18
    iget-object v3, p0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeout:Ljava/lang/Runnable;

    #@1a
    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    #@1d
    move-result-object v0

    #@1e
    .line 148
    .local v0, "wakelockTimeoutMsg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    #@20
    const-wide/16 v4, 0x7530

    #@22
    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@25
    .line 149
    invoke-direct {p0}, Lcom/android/server/AnyMotionDetector;->startOrientationMeasurementLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    monitor-exit v2

    #@29
    .line 134
    .end local v0    # "wakelockTimeoutMsg":Landroid/os/Message;
    :cond_0
    return-void

    #@2a
    .line 139
    :catchall_0
    move-exception v1

    #@2b
    monitor-exit v2

    #@2c
    throw v1
.end method

.method public getStationaryStatus()I
    .locals 12

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v10, -0x1

    #@2
    .line 242
    iget-object v5, p0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@4
    if-eqz v5, :cond_0

    #@6
    iget-object v5, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@8
    if-nez v5, :cond_1

    #@a
    .line 243
    :cond_0
    return v10

    #@b
    .line 245
    :cond_1
    iget-object v5, p0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@d
    invoke-virtual {v5}, Lcom/android/server/AnyMotionDetector$Vector3;->normalized()Lcom/android/server/AnyMotionDetector$Vector3;

    #@10
    move-result-object v4

    #@11
    .line 246
    .local v4, "previousGravityVectorNormalized":Lcom/android/server/AnyMotionDetector$Vector3;
    iget-object v5, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@13
    invoke-virtual {v5}, Lcom/android/server/AnyMotionDetector$Vector3;->normalized()Lcom/android/server/AnyMotionDetector$Vector3;

    #@16
    move-result-object v1

    #@17
    .line 247
    .local v1, "currentGravityVectorNormalized":Lcom/android/server/AnyMotionDetector$Vector3;
    invoke-virtual {v4, v1}, Lcom/android/server/AnyMotionDetector$Vector3;->angleBetween(Lcom/android/server/AnyMotionDetector$Vector3;)F

    #@1a
    move-result v0

    #@1b
    .line 250
    .local v0, "angle":F
    iget v5, p0, Lcom/android/server/AnyMotionDetector;->mThresholdAngle:F

    #@1d
    cmpg-float v5, v0, v5

    #@1f
    if-gez v5, :cond_2

    #@21
    iget-object v5, p0, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    #@23
    invoke-virtual {v5}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->getEnergy()F

    #@26
    move-result v5

    #@27
    const/high16 v6, 0x40a00000    # 5.0f

    #@29
    cmpg-float v5, v5, v6

    #@2b
    if-gez v5, :cond_2

    #@2d
    .line 251
    const/4 v5, 0x0

    #@2e
    return v5

    #@2f
    .line 252
    :cond_2
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@32
    move-result v5

    #@33
    if-eqz v5, :cond_3

    #@35
    .line 258
    return v11

    #@36
    .line 260
    :cond_3
    iget-object v5, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@38
    iget-wide v6, v5, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    #@3a
    .line 261
    iget-object v5, p0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@3c
    iget-wide v8, v5, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    #@3e
    .line 260
    sub-long v2, v6, v8

    #@40
    .line 262
    .local v2, "diffTime":J
    const-wide/32 v6, 0x1d4c0

    #@43
    cmp-long v5, v2, v6

    #@45
    if-lez v5, :cond_4

    #@47
    .line 265
    return v10

    #@48
    .line 267
    :cond_4
    return v11
.end method

.method public stop()V
    .locals 3

    #@0
    .prologue
    .line 155
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 156
    :try_start_0
    iget v0, p0, Lcom/android/server/AnyMotionDetector;->mState:I

    #@5
    const/4 v2, 0x1

    #@6
    if-ne v0, v2, :cond_0

    #@8
    .line 157
    const/4 v0, 0x0

    #@9
    iput v0, p0, Lcom/android/server/AnyMotionDetector;->mState:I

    #@b
    .line 160
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 161
    const/4 v0, 0x0

    #@10
    iput-boolean v0, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    #@12
    .line 162
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    #@14
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mListener:Landroid/hardware/SensorEventListener;

    #@16
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    #@19
    .line 164
    :cond_1
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    #@1b
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeout:Ljava/lang/Runnable;

    #@1d
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@20
    .line 165
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    #@22
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mSensorRestart:Ljava/lang/Runnable;

    #@24
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@27
    .line 166
    const/4 v0, 0x0

    #@28
    iput-object v0, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@2a
    .line 167
    const/4 v0, 0x0

    #@2b
    iput-object v0, p0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@2d
    .line 168
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2f
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@32
    move-result v0

    #@33
    if-eqz v0, :cond_2

    #@35
    .line 169
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@37
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@3a
    .line 170
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    #@3c
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeout:Ljava/lang/Runnable;

    #@3e
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@41
    :cond_2
    monitor-exit v1

    #@42
    .line 154
    return-void

    #@43
    .line 155
    :catchall_0
    move-exception v0

    #@44
    monitor-exit v1

    #@45
    throw v0
.end method
