.class final Lcom/android/server/power/WirelessChargerDetector;
.super Ljava/lang/Object;
.source "WirelessChargerDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/WirelessChargerDetector$1;,
        Lcom/android/server/power/WirelessChargerDetector$2;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_GRAVITY:D = 10.806650161743164

.field private static final MIN_GRAVITY:D = 8.806650161743164

.field private static final MIN_SAMPLES:I = 0x3

.field private static final MOVEMENT_ANGLE_COS_THRESHOLD:D

.field private static final SAMPLING_INTERVAL_MILLIS:I = 0x32

.field private static final SETTLE_TIME_MILLIS:J = 0x320L

.field private static final TAG:Ljava/lang/String; = "WirelessChargerDetector"

.field private static final WIRELESS_CHARGER_TURN_ON_BATTERY_LEVEL_LIMIT:I = 0x5f


# instance fields
.field private mAtRest:Z

.field private mDetectionInProgress:Z

.field private mDetectionStartTime:J

.field private mFirstSampleX:F

.field private mFirstSampleY:F

.field private mFirstSampleZ:F

.field private mGravitySensor:Landroid/hardware/Sensor;

.field private final mHandler:Landroid/os/Handler;

.field private mLastSampleX:F

.field private mLastSampleY:F

.field private mLastSampleZ:F

.field private final mListener:Landroid/hardware/SensorEventListener;

.field private final mLock:Ljava/lang/Object;

.field private mMovingSamples:I

.field private mMustUpdateRestPosition:Z

.field private mPoweredWirelessly:Z

.field private mRestX:F

.field private mRestY:F

.field private mRestZ:F

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final mSensorTimeout:Ljava/lang/Runnable;

.field private final mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private mTotalSamples:I


# direct methods
.method static synthetic -get0(Lcom/android/server/power/WirelessChargerDetector;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/power/WirelessChargerDetector;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/power/WirelessChargerDetector;->finishDetectionLocked()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/power/WirelessChargerDetector;FFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/WirelessChargerDetector;->processSampleLocked(FFF)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 93
    const-wide v0, 0x3fb657184ae74487L    # 0.08726646259971647

    #@5
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    #@8
    move-result-wide v0

    #@9
    sput-wide v0, Lcom/android/server/power/WirelessChargerDetector;->MOVEMENT_ANGLE_COS_THRESHOLD:D

    #@b
    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/hardware/SensorManager;Lcom/android/server/power/SuspendBlocker;Landroid/os/Handler;)V
    .locals 1
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p2, "suspendBlocker"    # Lcom/android/server/power/SuspendBlocker;
    .param p3, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 99
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mLock:Ljava/lang/Object;

    #@a
    .line 336
    new-instance v0, Lcom/android/server/power/WirelessChargerDetector$1;

    #@c
    invoke-direct {v0, p0}, Lcom/android/server/power/WirelessChargerDetector$1;-><init>(Lcom/android/server/power/WirelessChargerDetector;)V

    #@f
    iput-object v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mListener:Landroid/hardware/SensorEventListener;

    #@11
    .line 349
    new-instance v0, Lcom/android/server/power/WirelessChargerDetector$2;

    #@13
    invoke-direct {v0, p0}, Lcom/android/server/power/WirelessChargerDetector$2;-><init>(Lcom/android/server/power/WirelessChargerDetector;)V

    #@16
    iput-object v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mSensorTimeout:Ljava/lang/Runnable;

    #@18
    .line 145
    iput-object p1, p0, Lcom/android/server/power/WirelessChargerDetector;->mSensorManager:Landroid/hardware/SensorManager;

    #@1a
    .line 146
    iput-object p2, p0, Lcom/android/server/power/WirelessChargerDetector;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    #@1c
    .line 147
    iput-object p3, p0, Lcom/android/server/power/WirelessChargerDetector;->mHandler:Landroid/os/Handler;

    #@1e
    .line 149
    const/16 v0, 0x9

    #@20
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    #@23
    move-result-object v0

    #@24
    iput-object v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mGravitySensor:Landroid/hardware/Sensor;

    #@26
    .line 144
    return-void
.end method

.method private clearAtRestLocked()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 306
    const/4 v0, 0x0

    #@2
    iput-boolean v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mAtRest:Z

    #@4
    .line 307
    iput v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestX:F

    #@6
    .line 308
    iput v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestY:F

    #@8
    .line 309
    iput v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestZ:F

    #@a
    .line 305
    return-void
.end method

.method private finishDetectionLocked()V
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x3

    #@1
    const/4 v4, 0x0

    #@2
    .line 241
    iget-boolean v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mDetectionInProgress:Z

    #@4
    if-eqz v0, :cond_2

    #@6
    .line 242
    iget-object v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mSensorManager:Landroid/hardware/SensorManager;

    #@8
    iget-object v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mListener:Landroid/hardware/SensorEventListener;

    #@a
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    #@d
    .line 243
    iget-object v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mHandler:Landroid/os/Handler;

    #@f
    iget-object v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mSensorTimeout:Ljava/lang/Runnable;

    #@11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@14
    .line 245
    iget-boolean v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mMustUpdateRestPosition:Z

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 246
    invoke-direct {p0}, Lcom/android/server/power/WirelessChargerDetector;->clearAtRestLocked()V

    #@1b
    .line 247
    iget v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mTotalSamples:I

    #@1d
    if-ge v0, v3, :cond_3

    #@1f
    .line 248
    const-string/jumbo v0, "WirelessChargerDetector"

    #@22
    new-instance v1, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v2, "Wireless charger detector is broken.  Only received "

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    .line 249
    iget v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mTotalSamples:I

    #@30
    .line 248
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    .line 249
    const-string/jumbo v2, " samples from the gravity sensor but we "

    #@37
    .line 248
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    .line 250
    const-string/jumbo v2, "need at least "

    #@3e
    .line 248
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    .line 250
    const-string/jumbo v2, " and we expect to see "

    #@49
    .line 248
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    .line 251
    const-string/jumbo v2, "about "

    #@50
    .line 248
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    .line 251
    const-wide/16 v2, 0x10

    #@56
    .line 248
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@59
    move-result-object v1

    #@5a
    .line 252
    const-string/jumbo v2, " on average."

    #@5d
    .line 248
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v1

    #@61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v1

    #@65
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@68
    .line 259
    :cond_0
    :goto_0
    iput-boolean v4, p0, Lcom/android/server/power/WirelessChargerDetector;->mMustUpdateRestPosition:Z

    #@6a
    .line 269
    :cond_1
    iput-boolean v4, p0, Lcom/android/server/power/WirelessChargerDetector;->mDetectionInProgress:Z

    #@6c
    .line 270
    iget-object v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    #@6e
    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    #@71
    .line 240
    :cond_2
    return-void

    #@72
    .line 253
    :cond_3
    iget v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mMovingSamples:I

    #@74
    if-nez v0, :cond_0

    #@76
    .line 254
    const/4 v0, 0x1

    #@77
    iput-boolean v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mAtRest:Z

    #@79
    .line 255
    iget v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mLastSampleX:F

    #@7b
    iput v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestX:F

    #@7d
    .line 256
    iget v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mLastSampleY:F

    #@7f
    iput v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestY:F

    #@81
    .line 257
    iget v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mLastSampleZ:F

    #@83
    iput v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestZ:F

    #@85
    goto :goto_0
.end method

.method private static hasMoved(FFFFFF)Z
    .locals 12
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "z1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "z2"    # F

    #@0
    .prologue
    .line 314
    mul-float v7, p0, p3

    #@2
    mul-float v8, p1, p4

    #@4
    add-float/2addr v7, v8

    #@5
    mul-float v8, p2, p5

    #@7
    add-float/2addr v7, v8

    #@8
    float-to-double v0, v7

    #@9
    .line 315
    .local v0, "dotProduct":D
    mul-float v7, p0, p0

    #@b
    mul-float v8, p1, p1

    #@d
    add-float/2addr v7, v8

    #@e
    mul-float v8, p2, p2

    #@10
    add-float/2addr v7, v8

    #@11
    float-to-double v8, v7

    #@12
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    #@15
    move-result-wide v2

    #@16
    .line 316
    .local v2, "mag1":D
    mul-float v7, p3, p3

    #@18
    mul-float v8, p4, p4

    #@1a
    add-float/2addr v7, v8

    #@1b
    mul-float v8, p5, p5

    #@1d
    add-float/2addr v7, v8

    #@1e
    float-to-double v8, v7

    #@1f
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    #@22
    move-result-wide v4

    #@23
    .line 317
    .local v4, "mag2":D
    const-wide v8, 0x40219d0140000000L    # 8.806650161743164

    #@28
    cmpg-double v7, v2, v8

    #@2a
    if-ltz v7, :cond_0

    #@2c
    const-wide v8, 0x40259d0140000000L    # 10.806650161743164

    #@31
    cmpl-double v7, v2, v8

    #@33
    if-lez v7, :cond_1

    #@35
    .line 322
    :cond_0
    const/4 v7, 0x1

    #@36
    return v7

    #@37
    .line 318
    :cond_1
    const-wide v8, 0x40219d0140000000L    # 8.806650161743164

    #@3c
    cmpg-double v7, v4, v8

    #@3e
    if-ltz v7, :cond_0

    #@40
    const-wide v8, 0x40259d0140000000L    # 10.806650161743164

    #@45
    cmpl-double v7, v4, v8

    #@47
    if-gtz v7, :cond_0

    #@49
    .line 324
    mul-double v8, v2, v4

    #@4b
    sget-wide v10, Lcom/android/server/power/WirelessChargerDetector;->MOVEMENT_ANGLE_COS_THRESHOLD:D

    #@4d
    mul-double/2addr v8, v10

    #@4e
    cmpg-double v7, v0, v8

    #@50
    if-gez v7, :cond_2

    #@52
    const/4 v6, 0x1

    #@53
    .line 333
    .local v6, "moved":Z
    :goto_0
    return v6

    #@54
    .line 324
    .end local v6    # "moved":Z
    :cond_2
    const/4 v6, 0x0

    #@55
    .restart local v6    # "moved":Z
    goto :goto_0
.end method

.method private processSampleLocked(FFF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    #@0
    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mDetectionInProgress:Z

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 276
    iput p1, p0, Lcom/android/server/power/WirelessChargerDetector;->mLastSampleX:F

    #@6
    .line 277
    iput p2, p0, Lcom/android/server/power/WirelessChargerDetector;->mLastSampleY:F

    #@8
    .line 278
    iput p3, p0, Lcom/android/server/power/WirelessChargerDetector;->mLastSampleZ:F

    #@a
    .line 280
    iget v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mTotalSamples:I

    #@c
    add-int/lit8 v0, v0, 0x1

    #@e
    iput v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mTotalSamples:I

    #@10
    .line 281
    iget v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mTotalSamples:I

    #@12
    const/4 v1, 0x1

    #@13
    if-ne v0, v1, :cond_2

    #@15
    .line 283
    iput p1, p0, Lcom/android/server/power/WirelessChargerDetector;->mFirstSampleX:F

    #@17
    .line 284
    iput p2, p0, Lcom/android/server/power/WirelessChargerDetector;->mFirstSampleY:F

    #@19
    .line 285
    iput p3, p0, Lcom/android/server/power/WirelessChargerDetector;->mFirstSampleZ:F

    #@1b
    .line 294
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mAtRest:Z

    #@1d
    if-eqz v0, :cond_1

    #@1f
    iget v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestX:F

    #@21
    iget v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestY:F

    #@23
    iget v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestZ:F

    #@25
    move v3, p1

    #@26
    move v4, p2

    #@27
    move v5, p3

    #@28
    invoke-static/range {v0 .. v5}, Lcom/android/server/power/WirelessChargerDetector;->hasMoved(FFFFFF)Z

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_1

    #@2e
    .line 300
    invoke-direct {p0}, Lcom/android/server/power/WirelessChargerDetector;->clearAtRestLocked()V

    #@31
    .line 274
    :cond_1
    return-void

    #@32
    .line 288
    :cond_2
    iget v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mFirstSampleX:F

    #@34
    iget v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mFirstSampleY:F

    #@36
    iget v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mFirstSampleZ:F

    #@38
    move v3, p1

    #@39
    move v4, p2

    #@3a
    move v5, p3

    #@3b
    invoke-static/range {v0 .. v5}, Lcom/android/server/power/WirelessChargerDetector;->hasMoved(FFFFFF)Z

    #@3e
    move-result v0

    #@3f
    if-eqz v0, :cond_0

    #@41
    .line 289
    iget v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mMovingSamples:I

    #@43
    add-int/lit8 v0, v0, 0x1

    #@45
    iput v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mMovingSamples:I

    #@47
    goto :goto_0
.end method

.method private startDetectionLocked()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 224
    iget-boolean v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mDetectionInProgress:Z

    #@4
    if-nez v1, :cond_0

    #@6
    iget-object v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mGravitySensor:Landroid/hardware/Sensor;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 225
    iget-object v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mSensorManager:Landroid/hardware/SensorManager;

    #@c
    iget-object v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mListener:Landroid/hardware/SensorEventListener;

    #@e
    iget-object v3, p0, Lcom/android/server/power/WirelessChargerDetector;->mGravitySensor:Landroid/hardware/Sensor;

    #@10
    .line 226
    const v4, 0xc350

    #@13
    .line 225
    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_0

    #@19
    .line 227
    iget-object v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    #@1b
    invoke-interface {v1}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    #@1e
    .line 228
    iput-boolean v6, p0, Lcom/android/server/power/WirelessChargerDetector;->mDetectionInProgress:Z

    #@20
    .line 229
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@23
    move-result-wide v2

    #@24
    iput-wide v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mDetectionStartTime:J

    #@26
    .line 230
    iput v5, p0, Lcom/android/server/power/WirelessChargerDetector;->mTotalSamples:I

    #@28
    .line 231
    iput v5, p0, Lcom/android/server/power/WirelessChargerDetector;->mMovingSamples:I

    #@2a
    .line 233
    iget-object v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mHandler:Landroid/os/Handler;

    #@2c
    iget-object v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mSensorTimeout:Ljava/lang/Runnable;

    #@2e
    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    #@31
    move-result-object v0

    #@32
    .line 234
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v6}, Landroid/os/Message;->setAsynchronous(Z)V

    #@35
    .line 235
    iget-object v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mHandler:Landroid/os/Handler;

    #@37
    const-wide/16 v2, 0x320

    #@39
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@3c
    .line 223
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 153
    iget-object v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 154
    :try_start_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@6
    .line 155
    const-string/jumbo v0, "Wireless Charger Detector State:"

    #@9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "  mGravitySensor="

    #@14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    iget-object v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mGravitySensor:Landroid/hardware/Sensor;

    #@1a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@25
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v2, "  mPoweredWirelessly="

    #@2d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    iget-boolean v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mPoweredWirelessly:Z

    #@33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3e
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v2, "  mAtRest="

    #@46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v0

    #@4a
    iget-boolean v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mAtRest:Z

    #@4c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v0

    #@50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v0

    #@54
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@57
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v2, "  mRestX="

    #@5f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v0

    #@63
    iget v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestX:F

    #@65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@68
    move-result-object v0

    #@69
    const-string/jumbo v2, ", mRestY="

    #@6c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v0

    #@70
    iget v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestY:F

    #@72
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@75
    move-result-object v0

    #@76
    const-string/jumbo v2, ", mRestZ="

    #@79
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v0

    #@7d
    iget v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestZ:F

    #@7f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@82
    move-result-object v0

    #@83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v0

    #@87
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8a
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    #@8c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8f
    const-string/jumbo v2, "  mDetectionInProgress="

    #@92
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v0

    #@96
    iget-boolean v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mDetectionInProgress:Z

    #@98
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v0

    #@9c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v0

    #@a0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a3
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    #@a5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a8
    const-string/jumbo v2, "  mDetectionStartTime="

    #@ab
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v2

    #@af
    iget-wide v4, p0, Lcom/android/server/power/WirelessChargerDetector;->mDetectionStartTime:J

    #@b1
    const-wide/16 v6, 0x0

    #@b3
    cmp-long v0, v4, v6

    #@b5
    if-nez v0, :cond_0

    #@b7
    const-string/jumbo v0, "0 (never)"

    #@ba
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v0

    #@be
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v0

    #@c2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c5
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    #@c7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@ca
    const-string/jumbo v2, "  mMustUpdateRestPosition="

    #@cd
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v0

    #@d1
    iget-boolean v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mMustUpdateRestPosition:Z

    #@d3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v0

    #@d7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@da
    move-result-object v0

    #@db
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@de
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    #@e0
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e3
    const-string/jumbo v2, "  mTotalSamples="

    #@e6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v0

    #@ea
    iget v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mTotalSamples:I

    #@ec
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v0

    #@f0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f3
    move-result-object v0

    #@f4
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f7
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    #@f9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@fc
    const-string/jumbo v2, "  mMovingSamples="

    #@ff
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v0

    #@103
    iget v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mMovingSamples:I

    #@105
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@108
    move-result-object v0

    #@109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10c
    move-result-object v0

    #@10d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@110
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    #@112
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@115
    const-string/jumbo v2, "  mFirstSampleX="

    #@118
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v0

    #@11c
    iget v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mFirstSampleX:F

    #@11e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@121
    move-result-object v0

    #@122
    .line 167
    const-string/jumbo v2, ", mFirstSampleY="

    #@125
    .line 166
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@128
    move-result-object v0

    #@129
    .line 167
    iget v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mFirstSampleY:F

    #@12b
    .line 166
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@12e
    move-result-object v0

    #@12f
    .line 167
    const-string/jumbo v2, ", mFirstSampleZ="

    #@132
    .line 166
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@135
    move-result-object v0

    #@136
    .line 167
    iget v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mFirstSampleZ:F

    #@138
    .line 166
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@13b
    move-result-object v0

    #@13c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13f
    move-result-object v0

    #@140
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@143
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    #@145
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@148
    const-string/jumbo v2, "  mLastSampleX="

    #@14b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14e
    move-result-object v0

    #@14f
    iget v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mLastSampleX:F

    #@151
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@154
    move-result-object v0

    #@155
    .line 169
    const-string/jumbo v2, ", mLastSampleY="

    #@158
    .line 168
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15b
    move-result-object v0

    #@15c
    .line 169
    iget v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mLastSampleY:F

    #@15e
    .line 168
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@161
    move-result-object v0

    #@162
    .line 169
    const-string/jumbo v2, ", mLastSampleZ="

    #@165
    .line 168
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@168
    move-result-object v0

    #@169
    .line 169
    iget v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mLastSampleZ:F

    #@16b
    .line 168
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@16e
    move-result-object v0

    #@16f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@172
    move-result-object v0

    #@173
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@176
    monitor-exit v1

    #@177
    .line 152
    return-void

    #@178
    .line 162
    :cond_0
    :try_start_1
    iget-wide v4, p0, Lcom/android/server/power/WirelessChargerDetector;->mDetectionStartTime:J

    #@17a
    invoke-static {v4, v5}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17d
    move-result-object v0

    #@17e
    goto/16 :goto_0

    #@180
    .line 153
    :catchall_0
    move-exception v0

    #@181
    monitor-exit v1

    #@182
    throw v0
.end method

.method public update(ZII)Z
    .locals 6
    .param p1, "isPowered"    # Z
    .param p2, "plugType"    # I
    .param p3, "batteryLevel"    # I

    #@0
    .prologue
    const/4 v5, 0x4

    #@1
    const/4 v2, 0x1

    #@2
    const/4 v1, 0x0

    #@3
    .line 183
    iget-object v3, p0, Lcom/android/server/power/WirelessChargerDetector;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v3

    #@6
    .line 184
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mPoweredWirelessly:Z

    #@8
    .line 186
    .local v0, "wasPoweredWirelessly":Z
    if-eqz p1, :cond_2

    #@a
    if-ne p2, v5, :cond_2

    #@c
    .line 189
    const/4 v4, 0x1

    #@d
    iput-boolean v4, p0, Lcom/android/server/power/WirelessChargerDetector;->mPoweredWirelessly:Z

    #@f
    .line 190
    const/4 v4, 0x1

    #@10
    iput-boolean v4, p0, Lcom/android/server/power/WirelessChargerDetector;->mMustUpdateRestPosition:Z

    #@12
    .line 191
    invoke-direct {p0}, Lcom/android/server/power/WirelessChargerDetector;->startDetectionLocked()V

    #@15
    .line 217
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/android/server/power/WirelessChargerDetector;->mPoweredWirelessly:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    if-eqz v4, :cond_1

    #@19
    if-eqz v0, :cond_4

    #@1b
    :cond_1
    :goto_1
    monitor-exit v3

    #@1c
    return v1

    #@1d
    .line 195
    :cond_2
    const/4 v4, 0x0

    #@1e
    :try_start_1
    iput-boolean v4, p0, Lcom/android/server/power/WirelessChargerDetector;->mPoweredWirelessly:Z

    #@20
    .line 196
    iget-boolean v4, p0, Lcom/android/server/power/WirelessChargerDetector;->mAtRest:Z

    #@22
    if-eqz v4, :cond_0

    #@24
    .line 197
    if-eqz p2, :cond_3

    #@26
    if-eq p2, v5, :cond_3

    #@28
    .line 200
    const/4 v4, 0x0

    #@29
    iput-boolean v4, p0, Lcom/android/server/power/WirelessChargerDetector;->mMustUpdateRestPosition:Z

    #@2b
    .line 201
    invoke-direct {p0}, Lcom/android/server/power/WirelessChargerDetector;->clearAtRestLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    goto :goto_0

    #@2f
    .line 183
    .end local v0    # "wasPoweredWirelessly":Z
    :catchall_0
    move-exception v1

    #@30
    monitor-exit v3

    #@31
    throw v1

    #@32
    .line 207
    .restart local v0    # "wasPoweredWirelessly":Z
    :cond_3
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/power/WirelessChargerDetector;->startDetectionLocked()V

    #@35
    goto :goto_0

    #@36
    .line 218
    :cond_4
    const/16 v4, 0x5f

    #@38
    if-ge p3, v4, :cond_1

    #@3a
    .line 219
    iget-boolean v4, p0, Lcom/android/server/power/WirelessChargerDetector;->mAtRest:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3c
    if-nez v4, :cond_1

    #@3e
    move v1, v2

    #@3f
    goto :goto_1
.end method
