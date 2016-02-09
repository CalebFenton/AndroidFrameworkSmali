.class public Lcom/android/server/AnyMotionDetector;
.super Ljava/lang/Object;
.source "AnyMotionDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;,
        Lcom/android/server/AnyMotionDetector$Vector3;,
        Lcom/android/server/AnyMotionDetector$RunningSignalStats;,
        Lcom/android/server/AnyMotionDetector$1;,
        Lcom/android/server/AnyMotionDetector$2;,
        Lcom/android/server/AnyMotionDetector$3;
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
.field private final THRESHOLD_ANGLE:F

.field private final THRESHOLD_ENERGY:F

.field private mAccelSensor:Landroid/hardware/Sensor;

.field private mAlarmIntent:Landroid/content/Intent;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mCallback:Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;

.field private mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

.field private mDetectionStartTime:J

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
    invoke-direct {p0}, Lcom/android/server/AnyMotionDetector;->startOrientationMeasurement()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/app/AlarmManager;Landroid/os/PowerManager;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;)V
    .locals 4
    .param p1, "am"    # Landroid/app/AlarmManager;
    .param p2, "pm"    # Landroid/os/PowerManager;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "sm"    # Landroid/hardware/SensorManager;
    .param p5, "callback"    # Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 65
    const/high16 v0, 0x40000000    # 2.0f

    #@8
    iput v0, p0, Lcom/android/server/AnyMotionDetector;->THRESHOLD_ANGLE:F

    #@a
    .line 68
    const/high16 v0, 0x40a00000    # 5.0f

    #@c
    iput v0, p0, Lcom/android/server/AnyMotionDetector;->THRESHOLD_ENERGY:F

    #@e
    .line 91
    new-instance v0, Ljava/lang/Object;

    #@10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@13
    iput-object v0, p0, Lcom/android/server/AnyMotionDetector;->mLock:Ljava/lang/Object;

    #@15
    .line 106
    iput-object v1, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@17
    .line 109
    iput-object v1, p0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@19
    .line 114
    iput-object v1, p0, Lcom/android/server/AnyMotionDetector;->mCallback:Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;

    #@1b
    .line 243
    new-instance v0, Lcom/android/server/AnyMotionDetector$1;

    #@1d
    invoke-direct {v0, p0}, Lcom/android/server/AnyMotionDetector$1;-><init>(Lcom/android/server/AnyMotionDetector;)V

    #@20
    iput-object v0, p0, Lcom/android/server/AnyMotionDetector;->mListener:Landroid/hardware/SensorEventListener;

    #@22
    .line 267
    new-instance v0, Lcom/android/server/AnyMotionDetector$2;

    #@24
    invoke-direct {v0, p0}, Lcom/android/server/AnyMotionDetector$2;-><init>(Lcom/android/server/AnyMotionDetector;)V

    #@27
    iput-object v0, p0, Lcom/android/server/AnyMotionDetector;->mSensorRestart:Ljava/lang/Runnable;

    #@29
    .line 276
    new-instance v0, Lcom/android/server/AnyMotionDetector$3;

    #@2b
    invoke-direct {v0, p0}, Lcom/android/server/AnyMotionDetector$3;-><init>(Lcom/android/server/AnyMotionDetector;)V

    #@2e
    iput-object v0, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeout:Ljava/lang/Runnable;

    #@30
    .line 119
    iput-object p1, p0, Lcom/android/server/AnyMotionDetector;->mAlarmManager:Landroid/app/AlarmManager;

    #@32
    .line 120
    const-string/jumbo v0, "AnyMotionDetector"

    #@35
    invoke-virtual {p2, v3, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@38
    move-result-object v0

    #@39
    iput-object v0, p0, Lcom/android/server/AnyMotionDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@3b
    .line 121
    iput-object p3, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    #@3d
    .line 122
    iput-object p4, p0, Lcom/android/server/AnyMotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    #@3f
    .line 123
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    #@41
    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    #@44
    move-result-object v0

    #@45
    iput-object v0, p0, Lcom/android/server/AnyMotionDetector;->mAccelSensor:Landroid/hardware/Sensor;

    #@47
    .line 124
    iput-boolean v2, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    #@49
    .line 125
    iput v2, p0, Lcom/android/server/AnyMotionDetector;->mState:I

    #@4b
    .line 126
    iput-object p5, p0, Lcom/android/server/AnyMotionDetector;->mCallback:Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;

    #@4d
    .line 127
    new-instance v0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    #@4f
    invoke-direct {v0}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;-><init>()V

    #@52
    iput-object v0, p0, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    #@54
    .line 129
    const-wide v0, 0x404f400000000000L    # 62.5

    #@59
    .line 128
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    #@5c
    move-result-wide v0

    #@5d
    double-to-int v0, v0

    #@5e
    iput v0, p0, Lcom/android/server/AnyMotionDetector;->mNumSufficientSamples:I

    #@60
    .line 117
    return-void
.end method

.method private startOrientationMeasurement()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 151
    iget-boolean v1, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    #@3
    if-nez v1, :cond_1

    #@5
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mAccelSensor:Landroid/hardware/Sensor;

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 152
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    #@b
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mListener:Landroid/hardware/SensorEventListener;

    #@d
    iget-object v3, p0, Lcom/android/server/AnyMotionDetector;->mAccelSensor:Landroid/hardware/Sensor;

    #@f
    .line 153
    const v4, 0x9c40

    #@12
    .line 152
    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_0

    #@18
    .line 154
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@1a
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@1d
    .line 155
    iput-boolean v5, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    #@1f
    .line 156
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@22
    move-result-wide v2

    #@23
    iput-wide v2, p0, Lcom/android/server/AnyMotionDetector;->mDetectionStartTime:J

    #@25
    .line 157
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    #@27
    invoke-virtual {v1}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->reset()V

    #@2a
    .line 160
    :cond_0
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    #@2c
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeout:Ljava/lang/Runnable;

    #@2e
    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    #@31
    move-result-object v0

    #@32
    .line 161
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    #@35
    .line 162
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    #@37
    const-wide/16 v2, 0xbb8

    #@39
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@3c
    .line 147
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
    .line 169
    const/4 v3, -0x1

    #@2
    .line 170
    .local v3, "status":I
    iget-boolean v4, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    #@4
    if-eqz v4, :cond_1

    #@6
    .line 171
    iget-object v4, p0, Lcom/android/server/AnyMotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    #@8
    iget-object v5, p0, Lcom/android/server/AnyMotionDetector;->mListener:Landroid/hardware/SensorEventListener;

    #@a
    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    #@d
    .line 172
    iget-object v4, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    #@f
    iget-object v5, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeout:Ljava/lang/Runnable;

    #@11
    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@14
    .line 173
    iget-object v4, p0, Lcom/android/server/AnyMotionDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@16
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_0

    #@1c
    .line 174
    iget-object v4, p0, Lcom/android/server/AnyMotionDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@1e
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    #@21
    .line 176
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@24
    move-result-wide v0

    #@25
    .line 177
    .local v0, "detectionEndTime":J
    iput-boolean v6, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    #@27
    .line 178
    iget-object v4, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@29
    iput-object v4, p0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@2b
    .line 179
    iget-object v4, p0, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    #@2d
    invoke-virtual {v4}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->getRunningAverage()Lcom/android/server/AnyMotionDetector$Vector3;

    #@30
    move-result-object v4

    #@31
    iput-object v4, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@33
    .line 189
    iget-object v4, p0, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    #@35
    invoke-virtual {v4}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->reset()V

    #@38
    .line 190
    invoke-virtual {p0}, Lcom/android/server/AnyMotionDetector;->getStationaryStatus()I

    #@3b
    move-result v3

    #@3c
    .line 192
    const/4 v4, -0x1

    #@3d
    if-eq v3, v4, :cond_2

    #@3f
    .line 195
    iput v6, p0, Lcom/android/server/AnyMotionDetector;->mState:I

    #@41
    .line 209
    .end local v0    # "detectionEndTime":J
    :cond_1
    :goto_0
    return v3

    #@42
    .line 204
    .restart local v0    # "detectionEndTime":J
    :cond_2
    iget-object v4, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    #@44
    iget-object v5, p0, Lcom/android/server/AnyMotionDetector;->mSensorRestart:Ljava/lang/Runnable;

    #@46
    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    #@49
    move-result-object v2

    #@4a
    .line 205
    .local v2, "msg":Landroid/os/Message;
    const/4 v4, 0x1

    #@4b
    invoke-virtual {v2, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    #@4e
    .line 206
    iget-object v4, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    #@50
    const-wide/16 v6, 0x1388

    #@52
    invoke-virtual {v4, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@55
    goto :goto_0
.end method


# virtual methods
.method public checkForAnyMotion()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 138
    iget v0, p0, Lcom/android/server/AnyMotionDetector;->mState:I

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 139
    iput v1, p0, Lcom/android/server/AnyMotionDetector;->mState:I

    #@8
    .line 141
    iput-object v2, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@a
    .line 142
    iput-object v2, p0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@c
    .line 143
    invoke-direct {p0}, Lcom/android/server/AnyMotionDetector;->startOrientationMeasurement()V

    #@f
    .line 136
    :cond_0
    return-void
.end method

.method public getStationaryStatus()I
    .locals 12

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v10, -0x1

    #@2
    .line 216
    iget-object v5, p0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@4
    if-eqz v5, :cond_0

    #@6
    iget-object v5, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@8
    if-nez v5, :cond_1

    #@a
    .line 217
    :cond_0
    return v10

    #@b
    .line 219
    :cond_1
    iget-object v5, p0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@d
    invoke-static {v5}, Lcom/android/server/AnyMotionDetector$Vector3;->-wrap0(Lcom/android/server/AnyMotionDetector$Vector3;)Lcom/android/server/AnyMotionDetector$Vector3;

    #@10
    move-result-object v4

    #@11
    .line 220
    .local v4, "previousGravityVectorNormalized":Lcom/android/server/AnyMotionDetector$Vector3;
    iget-object v5, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@13
    invoke-static {v5}, Lcom/android/server/AnyMotionDetector$Vector3;->-wrap0(Lcom/android/server/AnyMotionDetector$Vector3;)Lcom/android/server/AnyMotionDetector$Vector3;

    #@16
    move-result-object v1

    #@17
    .line 221
    .local v1, "currentGravityVectorNormalized":Lcom/android/server/AnyMotionDetector$Vector3;
    invoke-virtual {v4, v1}, Lcom/android/server/AnyMotionDetector$Vector3;->angleBetween(Lcom/android/server/AnyMotionDetector$Vector3;)F

    #@1a
    move-result v0

    #@1b
    .line 223
    .local v0, "angle":F
    const/high16 v5, 0x40000000    # 2.0f

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
    .line 224
    const/4 v5, 0x0

    #@2e
    return v5

    #@2f
    .line 225
    :cond_2
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@32
    move-result v5

    #@33
    if-eqz v5, :cond_3

    #@35
    .line 231
    return v11

    #@36
    .line 233
    :cond_3
    iget-object v5, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@38
    iget-wide v6, v5, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    #@3a
    .line 234
    iget-object v5, p0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@3c
    iget-wide v8, v5, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    #@3e
    .line 233
    sub-long v2, v6, v8

    #@40
    .line 235
    .local v2, "diffTime":J
    const-wide/32 v6, 0x1d4c0

    #@43
    cmp-long v5, v2, v6

    #@45
    if-lez v5, :cond_4

    #@47
    .line 238
    return v10

    #@48
    .line 240
    :cond_4
    return v11
.end method
