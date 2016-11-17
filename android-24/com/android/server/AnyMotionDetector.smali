.class public Lcom/android/server/AnyMotionDetector;
.super Ljava/lang/Object;
.source "AnyMotionDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AnyMotionDetector$1;,
        Lcom/android/server/AnyMotionDetector$2;,
        Lcom/android/server/AnyMotionDetector$3;,
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


# direct methods
.method static synthetic -get0(Lcom/android/server/AnyMotionDetector;)Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mCallback:Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/AnyMotionDetector;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/AnyMotionDetector;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/AnyMotionDetector;->mNumSufficientSamples:I

    #@2
    return v0
.end method

.method static synthetic -get3(Lcom/android/server/AnyMotionDetector;)Lcom/android/server/AnyMotionDetector$RunningSignalStats;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

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
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 62
    const/high16 v0, 0x40a00000    # 5.0f

    #@6
    iput v0, p0, Lcom/android/server/AnyMotionDetector;->THRESHOLD_ENERGY:F

    #@8
    .line 83
    new-instance v0, Ljava/lang/Object;

    #@a
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/server/AnyMotionDetector;->mLock:Ljava/lang/Object;

    #@f
    .line 98
    iput-object v1, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@11
    .line 101
    iput-object v1, p0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@13
    .line 106
    iput-object v1, p0, Lcom/android/server/AnyMotionDetector;->mCallback:Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;

    #@15
    .line 259
    new-instance v0, Lcom/android/server/AnyMotionDetector$1;

    #@17
    invoke-direct {v0, p0}, Lcom/android/server/AnyMotionDetector$1;-><init>(Lcom/android/server/AnyMotionDetector;)V

    #@1a
    iput-object v0, p0, Lcom/android/server/AnyMotionDetector;->mListener:Landroid/hardware/SensorEventListener;

    #@1c
    .line 283
    new-instance v0, Lcom/android/server/AnyMotionDetector$2;

    #@1e
    invoke-direct {v0, p0}, Lcom/android/server/AnyMotionDetector$2;-><init>(Lcom/android/server/AnyMotionDetector;)V

    #@21
    iput-object v0, p0, Lcom/android/server/AnyMotionDetector;->mSensorRestart:Ljava/lang/Runnable;

    #@23
    .line 292
    new-instance v0, Lcom/android/server/AnyMotionDetector$3;

    #@25
    invoke-direct {v0, p0}, Lcom/android/server/AnyMotionDetector$3;-><init>(Lcom/android/server/AnyMotionDetector;)V

    #@28
    iput-object v0, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeout:Ljava/lang/Runnable;

    #@2a
    .line 111
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mLock:Ljava/lang/Object;

    #@2c
    monitor-enter v1

    #@2d
    .line 112
    :try_start_0
    const-string/jumbo v0, "AnyMotionDetector"

    #@30
    const/4 v2, 0x1

    #@31
    invoke-virtual {p1, v2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@34
    move-result-object v0

    #@35
    iput-object v0, p0, Lcom/android/server/AnyMotionDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@37
    .line 113
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@39
    const/4 v2, 0x0

    #@3a
    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    #@3d
    .line 114
    iput-object p2, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    #@3f
    .line 115
    iput-object p3, p0, Lcom/android/server/AnyMotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    #@41
    .line 116
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    #@43
    const/4 v2, 0x1

    #@44
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    #@47
    move-result-object v0

    #@48
    iput-object v0, p0, Lcom/android/server/AnyMotionDetector;->mAccelSensor:Landroid/hardware/Sensor;

    #@4a
    .line 117
    const/4 v0, 0x0

    #@4b
    iput-boolean v0, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    #@4d
    .line 118
    const/4 v0, 0x0

    #@4e
    iput v0, p0, Lcom/android/server/AnyMotionDetector;->mState:I

    #@50
    .line 119
    iput-object p4, p0, Lcom/android/server/AnyMotionDetector;->mCallback:Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;

    #@52
    .line 120
    iput p5, p0, Lcom/android/server/AnyMotionDetector;->mThresholdAngle:F

    #@54
    .line 121
    new-instance v0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    #@56
    invoke-direct {v0}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;-><init>()V

    #@59
    iput-object v0, p0, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    #@5b
    .line 123
    const-wide v2, 0x404f400000000000L    # 62.5

    #@60
    .line 122
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    #@63
    move-result-wide v2

    #@64
    double-to-int v0, v2

    #@65
    iput v0, p0, Lcom/android/server/AnyMotionDetector;->mNumSufficientSamples:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@67
    monitor-exit v1

    #@68
    .line 109
    return-void

    #@69
    .line 111
    :catchall_0
    move-exception v0

    #@6a
    monitor-exit v1

    #@6b
    throw v0
.end method

.method private startOrientationMeasurementLocked()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 170
    iget-boolean v1, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    #@3
    if-nez v1, :cond_1

    #@5
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mAccelSensor:Landroid/hardware/Sensor;

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 171
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    #@b
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mListener:Landroid/hardware/SensorEventListener;

    #@d
    iget-object v3, p0, Lcom/android/server/AnyMotionDetector;->mAccelSensor:Landroid/hardware/Sensor;

    #@f
    .line 172
    const v4, 0x9c40

    #@12
    .line 171
    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_0

    #@18
    .line 173
    iput-boolean v5, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    #@1a
    .line 174
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    #@1c
    invoke-virtual {v1}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->reset()V

    #@1f
    .line 176
    :cond_0
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    #@21
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeout:Ljava/lang/Runnable;

    #@23
    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    #@26
    move-result-object v0

    #@27
    .line 177
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    #@2a
    .line 178
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    #@2c
    const-wide/16 v2, 0xbb8

    #@2e
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@31
    .line 167
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private stopOrientationMeasurementLocked()I
    .locals 8

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 185
    const/4 v3, -0x1

    #@2
    .line 186
    .local v3, "status":I
    iget-boolean v4, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 187
    iget-object v4, p0, Lcom/android/server/AnyMotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    #@8
    iget-object v5, p0, Lcom/android/server/AnyMotionDetector;->mListener:Landroid/hardware/SensorEventListener;

    #@a
    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    #@d
    .line 188
    iget-object v4, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    #@f
    iget-object v5, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeout:Ljava/lang/Runnable;

    #@11
    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@14
    .line 189
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@17
    move-result-wide v0

    #@18
    .line 190
    .local v0, "detectionEndTime":J
    iput-boolean v6, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    #@1a
    .line 191
    iget-object v4, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@1c
    iput-object v4, p0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@1e
    .line 192
    iget-object v4, p0, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    #@20
    invoke-virtual {v4}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->getRunningAverage()Lcom/android/server/AnyMotionDetector$Vector3;

    #@23
    move-result-object v4

    #@24
    iput-object v4, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@26
    .line 202
    iget-object v4, p0, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    #@28
    invoke-virtual {v4}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->reset()V

    #@2b
    .line 203
    invoke-virtual {p0}, Lcom/android/server/AnyMotionDetector;->getStationaryStatus()I

    #@2e
    move-result v3

    #@2f
    .line 205
    const/4 v4, -0x1

    #@30
    if-eq v3, v4, :cond_1

    #@32
    .line 206
    iget-object v4, p0, Lcom/android/server/AnyMotionDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@34
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    #@37
    .line 210
    iput v6, p0, Lcom/android/server/AnyMotionDetector;->mState:I

    #@39
    .line 224
    .end local v0    # "detectionEndTime":J
    :cond_0
    :goto_0
    return v3

    #@3a
    .line 219
    .restart local v0    # "detectionEndTime":J
    :cond_1
    iget-object v4, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    #@3c
    iget-object v5, p0, Lcom/android/server/AnyMotionDetector;->mSensorRestart:Ljava/lang/Runnable;

    #@3e
    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    #@41
    move-result-object v2

    #@42
    .line 220
    .local v2, "msg":Landroid/os/Message;
    const/4 v4, 0x1

    #@43
    invoke-virtual {v2, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    #@46
    .line 221
    iget-object v4, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    #@48
    const-wide/16 v6, 0x1388

    #@4a
    invoke-virtual {v4, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@4d
    goto :goto_0
.end method


# virtual methods
.method public checkForAnyMotion()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 135
    iget v0, p0, Lcom/android/server/AnyMotionDetector;->mState:I

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 136
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mLock:Ljava/lang/Object;

    #@7
    monitor-enter v1

    #@8
    .line 137
    const/4 v0, 0x1

    #@9
    :try_start_0
    iput v0, p0, Lcom/android/server/AnyMotionDetector;->mState:I

    #@b
    .line 141
    const/4 v0, 0x0

    #@c
    iput-object v0, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@e
    .line 142
    const/4 v0, 0x0

    #@f
    iput-object v0, p0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@11
    .line 143
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@13
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@16
    .line 144
    invoke-direct {p0}, Lcom/android/server/AnyMotionDetector;->startOrientationMeasurementLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit v1

    #@1a
    .line 131
    :cond_0
    return-void

    #@1b
    .line 136
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit v1

    #@1d
    throw v0
.end method

.method public getStationaryStatus()I
    .locals 12

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v10, -0x1

    #@2
    .line 231
    iget-object v5, p0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@4
    if-eqz v5, :cond_0

    #@6
    iget-object v5, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@8
    if-nez v5, :cond_1

    #@a
    .line 232
    :cond_0
    return v10

    #@b
    .line 234
    :cond_1
    iget-object v5, p0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@d
    invoke-virtual {v5}, Lcom/android/server/AnyMotionDetector$Vector3;->normalized()Lcom/android/server/AnyMotionDetector$Vector3;

    #@10
    move-result-object v4

    #@11
    .line 235
    .local v4, "previousGravityVectorNormalized":Lcom/android/server/AnyMotionDetector$Vector3;
    iget-object v5, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@13
    invoke-virtual {v5}, Lcom/android/server/AnyMotionDetector$Vector3;->normalized()Lcom/android/server/AnyMotionDetector$Vector3;

    #@16
    move-result-object v1

    #@17
    .line 236
    .local v1, "currentGravityVectorNormalized":Lcom/android/server/AnyMotionDetector$Vector3;
    invoke-virtual {v4, v1}, Lcom/android/server/AnyMotionDetector$Vector3;->angleBetween(Lcom/android/server/AnyMotionDetector$Vector3;)F

    #@1a
    move-result v0

    #@1b
    .line 239
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
    .line 240
    const/4 v5, 0x0

    #@2e
    return v5

    #@2f
    .line 241
    :cond_2
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@32
    move-result v5

    #@33
    if-eqz v5, :cond_3

    #@35
    .line 247
    return v11

    #@36
    .line 249
    :cond_3
    iget-object v5, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@38
    iget-wide v6, v5, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    #@3a
    .line 250
    iget-object v5, p0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@3c
    iget-wide v8, v5, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    #@3e
    .line 249
    sub-long v2, v6, v8

    #@40
    .line 251
    .local v2, "diffTime":J
    const-wide/32 v6, 0x1d4c0

    #@43
    cmp-long v5, v2, v6

    #@45
    if-lez v5, :cond_4

    #@47
    .line 254
    return v10

    #@48
    .line 256
    :cond_4
    return v11
.end method

.method public stop()V
    .locals 3

    #@0
    .prologue
    .line 150
    iget v0, p0, Lcom/android/server/AnyMotionDetector;->mState:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_1

    #@5
    .line 151
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mLock:Ljava/lang/Object;

    #@7
    monitor-enter v1

    #@8
    .line 152
    const/4 v0, 0x0

    #@9
    :try_start_0
    iput v0, p0, Lcom/android/server/AnyMotionDetector;->mState:I

    #@b
    .line 154
    iget-boolean v0, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 155
    const/4 v0, 0x0

    #@10
    iput-boolean v0, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    #@12
    .line 156
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    #@14
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mListener:Landroid/hardware/SensorEventListener;

    #@16
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    #@19
    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    #@1b
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeout:Ljava/lang/Runnable;

    #@1d
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@20
    .line 159
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    #@22
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mSensorRestart:Ljava/lang/Runnable;

    #@24
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@27
    .line 160
    const/4 v0, 0x0

    #@28
    iput-object v0, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@2a
    .line 161
    const/4 v0, 0x0

    #@2b
    iput-object v0, p0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@2d
    .line 162
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2f
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    monitor-exit v1

    #@33
    .line 149
    :cond_1
    return-void

    #@34
    .line 151
    :catchall_0
    move-exception v0

    #@35
    monitor-exit v1

    #@36
    throw v0
.end method
