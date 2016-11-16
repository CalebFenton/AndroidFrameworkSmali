.class Lcom/android/server/display/AutomaticBrightnessController;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/AutomaticBrightnessController$1;,
        Lcom/android/server/display/AutomaticBrightnessController$2;,
        Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;,
        Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;,
        Lcom/android/server/display/AutomaticBrightnessController$Callbacks;
    }
.end annotation


# static fields
.field private static final AMBIENT_LIGHT_PREDICTION_TIME_MILLIS:J = 0x64L

.field private static final BRIGHTENING_LIGHT_HYSTERESIS:F = 0.1f

.field private static final BRIGHTNESS_ADJUSTMENT_SAMPLE_DEBOUNCE_MILLIS:I = 0x2710

.field private static final DARKENING_LIGHT_HYSTERESIS:F = 0.2f

.field private static final DEBUG:Z = false

.field private static final DEBUG_PRETEND_LIGHT_SENSOR_ABSENT:Z = false

.field private static final MSG_BRIGHTNESS_ADJUSTMENT_SAMPLE:I = 0x2

.field private static final MSG_UPDATE_AMBIENT_LUX:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AutomaticBrightnessController"

.field private static final TWILIGHT_ADJUSTMENT_MAX_GAMMA:F = 1.0f

.field private static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z = true


# instance fields
.field private final mAmbientLightHorizon:I

.field private mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

.field private mAmbientLux:F

.field private mAmbientLuxValid:Z

.field private final mBrighteningLightDebounceConfig:J

.field private mBrighteningLuxThreshold:F

.field private mBrightnessAdjustmentSampleOldAdjustment:F

.field private mBrightnessAdjustmentSampleOldBrightness:I

.field private mBrightnessAdjustmentSampleOldGamma:F

.field private mBrightnessAdjustmentSampleOldLux:F

.field private mBrightnessAdjustmentSamplePending:Z

.field private final mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

.field private final mDarkeningLightDebounceConfig:J

.field private mDarkeningLuxThreshold:F

.field private final mDozeScaleFactor:F

.field private mDozing:Z

.field private mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

.field private mInitialHorizonAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

.field private mLastObservedLux:F

.field private mLastObservedLuxTime:J

.field private mLastScreenAutoBrightnessGamma:F

.field private final mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorEnableTime:J

.field private mLightSensorEnabled:Z

.field private final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private final mLightSensorRate:I

.field private mLightSensorWarmUpTimeConfig:I

.field private mRecentLightSamples:I

.field private final mResetAmbientLuxAfterWarmUpConfig:Z

.field private mScreenAutoBrightness:I

.field private mScreenAutoBrightnessAdjustment:F

.field private mScreenAutoBrightnessAdjustmentMaxGamma:F

.field private final mScreenAutoBrightnessSpline:Landroid/util/Spline;

.field private final mScreenBrightnessRangeMaximum:I

.field private final mScreenBrightnessRangeMinimum:I

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final mTwilight:Lcom/android/server/twilight/TwilightManager;

.field private final mTwilightListener:Lcom/android/server/twilight/TwilightListener;

.field private mUseTwilight:Z

.field private final mWeightingIntercept:I


# direct methods
.method static synthetic -get0(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    #@2
    return v0
.end method

.method static synthetic -wrap0(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->collectBrightnessAdjustmentSample()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/display/AutomaticBrightnessController;JF)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "lux"    # F

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController;->handleLightSensorEvent(JF)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux()V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/display/AutomaticBrightnessController;Z)V
    .locals 0
    .param p1, "sendUpdate"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    #@3
    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/util/Spline;IIIFIJJZIF)V
    .locals 6
    .param p1, "callbacks"    # Lcom/android/server/display/AutomaticBrightnessController$Callbacks;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p4, "autoBrightnessSpline"    # Landroid/util/Spline;
    .param p5, "lightSensorWarmUpTime"    # I
    .param p6, "brightnessMin"    # I
    .param p7, "brightnessMax"    # I
    .param p8, "dozeScaleFactor"    # F
    .param p9, "lightSensorRate"    # I
    .param p10, "brighteningLightDebounceConfig"    # J
    .param p12, "darkeningLightDebounceConfig"    # J
    .param p14, "resetAmbientLuxAfterWarmUpConfig"    # Z
    .param p15, "ambientLightHorizon"    # I
    .param p16, "autoBrightnessAdjustmentMaxGamma"    # F

    #@0
    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 163
    const/4 v2, -0x1

    #@4
    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    #@6
    .line 166
    const/4 v2, 0x0

    #@7
    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    #@9
    .line 173
    const/high16 v2, 0x3f800000    # 1.0f

    #@b
    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    #@d
    .line 609
    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController$1;

    #@f
    invoke-direct {v2, p0}, Lcom/android/server/display/AutomaticBrightnessController$1;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    #@12
    iput-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    #@14
    .line 625
    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController$2;

    #@16
    invoke-direct {v2, p0}, Lcom/android/server/display/AutomaticBrightnessController$2;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    #@19
    iput-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    #@1b
    .line 194
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    #@1d
    .line 195
    const-class v2, Lcom/android/server/twilight/TwilightManager;

    #@1f
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@22
    move-result-object v2

    #@23
    check-cast v2, Lcom/android/server/twilight/TwilightManager;

    #@25
    iput-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    #@27
    .line 196
    iput-object p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    #@29
    .line 197
    iput-object p4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    #@2b
    .line 198
    iput p6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:I

    #@2d
    .line 199
    iput p7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:I

    #@2f
    .line 200
    iput p5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    #@31
    .line 201
    iput p8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozeScaleFactor:F

    #@33
    .line 202
    iput p9, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorRate:I

    #@35
    .line 203
    move-wide/from16 v0, p10

    #@37
    iput-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    #@39
    .line 204
    move-wide/from16 v0, p12

    #@3b
    iput-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    #@3d
    .line 205
    move/from16 v0, p14

    #@3f
    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    #@41
    .line 206
    move/from16 v0, p15

    #@43
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    #@45
    .line 207
    move/from16 v0, p15

    #@47
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mWeightingIntercept:I

    #@49
    .line 208
    move/from16 v0, p16

    #@4b
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustmentMaxGamma:F

    #@4d
    .line 210
    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    #@4f
    invoke-direct {v2, p0, p2}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;-><init>(Lcom/android/server/display/AutomaticBrightnessController;Landroid/os/Looper;)V

    #@52
    iput-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    #@54
    .line 212
    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    #@56
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorRate:I

    #@58
    int-to-long v4, v3

    #@59
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    #@5b
    invoke-direct {v2, v4, v5, v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;-><init>(JI)V

    #@5e
    .line 211
    iput-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    #@60
    .line 214
    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    #@62
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorRate:I

    #@64
    int-to-long v4, v3

    #@65
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    #@67
    invoke-direct {v2, v4, v5, v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;-><init>(JI)V

    #@6a
    .line 213
    iput-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialHorizonAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    #@6c
    .line 217
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    #@6e
    const/4 v3, 0x5

    #@6f
    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    #@72
    move-result-object v2

    #@73
    iput-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    #@75
    .line 193
    return-void
.end method

.method private applyLightSensorMeasurement(JF)V
    .locals 5
    .param p1, "time"    # J
    .param p3, "lux"    # F

    #@0
    .prologue
    .line 323
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    #@6
    .line 326
    iget-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    #@8
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    #@a
    int-to-long v2, v2

    #@b
    add-long/2addr v0, v2

    #@c
    cmp-long v0, p1, v0

    #@e
    if-gtz v0, :cond_0

    #@10
    .line 327
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialHorizonAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    #@12
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->push(JF)V

    #@15
    .line 329
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    #@17
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    #@19
    int-to-long v2, v1

    #@1a
    sub-long v2, p1, v2

    #@1c
    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->prune(J)V

    #@1f
    .line 330
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    #@21
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->push(JF)V

    #@24
    .line 333
    iput p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    #@26
    .line 334
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLuxTime:J

    #@28
    .line 322
    return-void
.end method

.method private calculateAmbientLux(J)F
    .locals 13
    .param p1, "now"    # J

    #@0
    .prologue
    .line 352
    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    #@2
    invoke-virtual {v10}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    #@5
    move-result v0

    #@6
    .line 353
    .local v0, "N":I
    if-nez v0, :cond_0

    #@8
    .line 354
    const-string/jumbo v10, "AutomaticBrightnessController"

    #@b
    const-string/jumbo v11, "calculateAmbientLux: No ambient light readings available"

    #@e
    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 355
    const/high16 v10, -0x40800000    # -1.0f

    #@13
    return v10

    #@14
    .line 357
    :cond_0
    const/4 v5, 0x0

    #@15
    .line 358
    .local v5, "sum":F
    const/4 v8, 0x0

    #@16
    .line 359
    .local v8, "totalWeight":F
    const-wide/16 v2, 0x64

    #@18
    .line 360
    .local v2, "endTime":J
    add-int/lit8 v1, v0, -0x1

    #@1a
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@1c
    .line 361
    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    #@1e
    invoke-virtual {v10, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    #@21
    move-result-wide v10

    #@22
    sub-long v6, v10, p1

    #@24
    .line 362
    .local v6, "startTime":J
    invoke-direct {p0, v6, v7, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController;->calculateWeight(JJ)F

    #@27
    move-result v9

    #@28
    .line 363
    .local v9, "weight":F
    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    #@2a
    invoke-virtual {v10, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    #@2d
    move-result v4

    #@2e
    .line 369
    .local v4, "lux":F
    add-float/2addr v8, v9

    #@2f
    .line 370
    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    #@31
    invoke-virtual {v10, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    #@34
    move-result v10

    #@35
    mul-float/2addr v10, v9

    #@36
    add-float/2addr v5, v10

    #@37
    .line 371
    move-wide v2, v6

    #@38
    .line 360
    add-int/lit8 v1, v1, -0x1

    #@3a
    goto :goto_0

    #@3b
    .line 377
    .end local v4    # "lux":F
    .end local v6    # "startTime":J
    .end local v9    # "weight":F
    :cond_1
    div-float v10, v5, v8

    #@3d
    return v10
.end method

.method private calculateWeight(JJ)F
    .locals 3
    .param p1, "startDelta"    # J
    .param p3, "endDelta"    # J

    #@0
    .prologue
    .line 381
    invoke-direct {p0, p3, p4}, Lcom/android/server/display/AutomaticBrightnessController;->weightIntegral(J)F

    #@3
    move-result v0

    #@4
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->weightIntegral(J)F

    #@7
    move-result v1

    #@8
    sub-float/2addr v0, v1

    #@9
    return v0
.end method

.method private cancelBrightnessAdjustmentSample()V
    .locals 2

    #@0
    .prologue
    .line 558
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 559
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    #@7
    .line 560
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    #@9
    const/4 v1, 0x2

    #@a
    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    #@d
    .line 557
    :cond_0
    return-void
.end method

.method private clampScreenBrightness(I)I
    .locals 2
    .param p1, "value"    # I

    #@0
    .prologue
    .line 539
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:I

    #@2
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:I

    #@4
    .line 538
    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method private collectBrightnessAdjustmentSample()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 565
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 566
    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    #@7
    .line 567
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    #@9
    if-eqz v0, :cond_0

    #@b
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    #@d
    if-ltz v0, :cond_0

    #@f
    .line 577
    const/16 v0, 0x8

    #@11
    new-array v0, v0, [Ljava/lang/Object;

    #@13
    .line 578
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldAdjustment:F

    #@15
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@18
    move-result-object v1

    #@19
    aput-object v1, v0, v2

    #@1b
    .line 579
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldLux:F

    #@1d
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@20
    move-result-object v1

    #@21
    const/4 v2, 0x1

    #@22
    aput-object v1, v0, v2

    #@24
    .line 580
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldBrightness:I

    #@26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@29
    move-result-object v1

    #@2a
    const/4 v2, 0x2

    #@2b
    aput-object v1, v0, v2

    #@2d
    .line 581
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldGamma:F

    #@2f
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@32
    move-result-object v1

    #@33
    const/4 v2, 0x3

    #@34
    aput-object v1, v0, v2

    #@36
    .line 582
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    #@38
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@3b
    move-result-object v1

    #@3c
    const/4 v2, 0x4

    #@3d
    aput-object v1, v0, v2

    #@3f
    .line 583
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    #@41
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@44
    move-result-object v1

    #@45
    const/4 v2, 0x5

    #@46
    aput-object v1, v0, v2

    #@48
    .line 584
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    #@4a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4d
    move-result-object v1

    #@4e
    const/4 v2, 0x6

    #@4f
    aput-object v1, v0, v2

    #@51
    .line 585
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    #@53
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@56
    move-result-object v1

    #@57
    const/4 v2, 0x7

    #@58
    aput-object v1, v0, v2

    #@5a
    .line 577
    const v1, 0x88b8

    #@5d
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@60
    .line 564
    :cond_0
    return-void
.end method

.method private handleLightSensorEvent(JF)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "lux"    # F

    #@0
    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    #@6
    .line 318
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController;->applyLightSensorMeasurement(JF)V

    #@9
    .line 319
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux(J)V

    #@c
    .line 315
    return-void
.end method

.method private nextAmbientLightBrighteningTransition(J)J
    .locals 7
    .param p1, "time"    # J

    #@0
    .prologue
    .line 391
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    #@2
    invoke-virtual {v4}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    #@5
    move-result v0

    #@6
    .line 392
    .local v0, "N":I
    move-wide v2, p1

    #@7
    .line 393
    .local v2, "earliestValidTime":J
    add-int/lit8 v1, v0, -0x1

    #@9
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    #@b
    .line 394
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    #@d
    invoke-virtual {v4, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    #@10
    move-result v4

    #@11
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    #@13
    cmpg-float v4, v4, v5

    #@15
    if-gtz v4, :cond_1

    #@17
    .line 399
    :cond_0
    iget-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    #@19
    add-long/2addr v4, v2

    #@1a
    return-wide v4

    #@1b
    .line 397
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    #@1d
    invoke-virtual {v4, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    #@20
    move-result-wide v2

    #@21
    .line 393
    add-int/lit8 v1, v1, -0x1

    #@23
    goto :goto_0
.end method

.method private nextAmbientLightDarkeningTransition(J)J
    .locals 7
    .param p1, "time"    # J

    #@0
    .prologue
    .line 403
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    #@2
    invoke-virtual {v4}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    #@5
    move-result v0

    #@6
    .line 404
    .local v0, "N":I
    move-wide v2, p1

    #@7
    .line 405
    .local v2, "earliestValidTime":J
    add-int/lit8 v1, v0, -0x1

    #@9
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    #@b
    .line 406
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    #@d
    invoke-virtual {v4, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    #@10
    move-result v4

    #@11
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    #@13
    cmpl-float v4, v4, v5

    #@15
    if-ltz v4, :cond_1

    #@17
    .line 411
    :cond_0
    iget-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    #@19
    add-long/2addr v4, v2

    #@1a
    return-wide v4

    #@1b
    .line 409
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    #@1d
    invoke-virtual {v4, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    #@20
    move-result-wide v2

    #@21
    .line 405
    add-int/lit8 v1, v1, -0x1

    #@23
    goto :goto_0
.end method

.method private prepareBrightnessAdjustmentSample()V
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    .line 543
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    #@3
    if-nez v0, :cond_1

    #@5
    .line 544
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    #@8
    .line 545
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    #@a
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldAdjustment:F

    #@c
    .line 546
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    #@e
    if-eqz v0, :cond_0

    #@10
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    #@12
    :goto_0
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldLux:F

    #@14
    .line 547
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    #@16
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldBrightness:I

    #@18
    .line 548
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    #@1a
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldGamma:F

    #@1c
    .line 553
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    #@1e
    .line 554
    const-wide/16 v2, 0x2710

    #@20
    .line 553
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageDelayed(IJ)Z

    #@23
    .line 542
    return-void

    #@24
    .line 546
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    #@26
    goto :goto_0

    #@27
    .line 550
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    #@29
    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    #@2c
    goto :goto_1
.end method

.method private setAmbientLux(F)V
    .locals 2
    .param p1, "lux"    # F

    #@0
    .prologue
    .line 346
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    #@2
    .line 347
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    #@4
    const v1, 0x3f8ccccd    # 1.1f

    #@7
    mul-float/2addr v0, v1

    #@8
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    #@a
    .line 348
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    #@c
    const v1, 0x3f4ccccd    # 0.8f

    #@f
    mul-float/2addr v0, v1

    #@10
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    #@12
    .line 345
    return-void
.end method

.method private setLightSensorEnabled(Z)Z
    .locals 6
    .param p1, "enable"    # Z

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 293
    if-eqz p1, :cond_0

    #@4
    .line 294
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    #@6
    if-nez v0, :cond_1

    #@8
    .line 295
    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    #@a
    .line 296
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@d
    move-result-wide v0

    #@e
    iput-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    #@10
    .line 297
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    #@12
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    #@14
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    #@16
    .line 298
    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorRate:I

    #@18
    mul-int/lit16 v4, v4, 0x3e8

    #@1a
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    #@1c
    .line 297
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    #@1f
    .line 299
    return v2

    #@20
    .line 302
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    #@22
    if-eqz v0, :cond_1

    #@24
    .line 303
    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    #@26
    .line 304
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    #@28
    if-eqz v0, :cond_2

    #@2a
    move v0, v1

    #@2b
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    #@2d
    .line 305
    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    #@2f
    .line 306
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    #@31
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->clear()V

    #@34
    .line 307
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialHorizonAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    #@36
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->clear()V

    #@39
    .line 308
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    #@3b
    invoke-virtual {v0, v2}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    #@3e
    .line 309
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    #@40
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    #@42
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    #@45
    .line 312
    :cond_1
    return v1

    #@46
    :cond_2
    move v0, v2

    #@47
    .line 304
    goto :goto_0
.end method

.method private setScreenAutoBrightnessAdjustment(F)Z
    .locals 1
    .param p1, "adjustment"    # F

    #@0
    .prologue
    .line 338
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    #@2
    cmpl-float v0, p1, v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 339
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    #@8
    .line 340
    const/4 v0, 0x1

    #@9
    return v0

    #@a
    .line 342
    :cond_0
    const/4 v0, 0x0

    #@b
    return v0
.end method

.method private setUseTwilight(Z)Z
    .locals 3
    .param p1, "useTwilight"    # Z

    #@0
    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseTwilight:Z

    #@2
    if-ne v0, p1, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 249
    :cond_0
    if-eqz p1, :cond_1

    #@8
    .line 250
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    #@a
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    #@c
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    #@e
    invoke-interface {v0, v1, v2}, Lcom/android/server/twilight/TwilightManager;->registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V

    #@11
    .line 254
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseTwilight:Z

    #@13
    .line 255
    const/4 v0, 0x1

    #@14
    return v0

    #@15
    .line 252
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    #@17
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    #@19
    invoke-interface {v0, v1}, Lcom/android/server/twilight/TwilightManager;->unregisterListener(Lcom/android/server/twilight/TwilightListener;)V

    #@1c
    goto :goto_0
.end method

.method private updateAmbientLux()V
    .locals 6

    #@0
    .prologue
    .line 415
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v0

    #@4
    .line 416
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    #@6
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    #@8
    int-to-long v4, v3

    #@9
    sub-long v4, v0, v4

    #@b
    invoke-virtual {v2, v4, v5}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->prune(J)V

    #@e
    .line 417
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux(J)V

    #@11
    .line 414
    return-void
.end method

.method private updateAmbientLux(J)V
    .locals 15
    .param p1, "time"    # J

    #@0
    .prologue
    .line 423
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    #@2
    if-nez v1, :cond_1

    #@4
    .line 425
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    #@6
    int-to-long v10, v1

    #@7
    iget-wide v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    #@9
    add-long v8, v10, v12

    #@b
    .line 426
    .local v8, "timeWhenSensorWarmedUp":J
    cmp-long v1, p1, v8

    #@d
    if-gez v1, :cond_0

    #@f
    .line 432
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    #@11
    const/4 v10, 0x1

    #@12
    invoke-virtual {v1, v10, v8, v9}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    #@15
    .line 434
    return-void

    #@16
    .line 436
    :cond_0
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(J)F

    #@19
    move-result v1

    #@1a
    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    #@1d
    .line 437
    const/4 v1, 0x1

    #@1e
    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    #@20
    .line 443
    const/4 v1, 0x1

    #@21
    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    #@24
    .line 446
    .end local v8    # "timeWhenSensorWarmedUp":J
    :cond_1
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightBrighteningTransition(J)J

    #@27
    move-result-wide v2

    #@28
    .line 447
    .local v2, "nextBrightenTransition":J
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightDarkeningTransition(J)J

    #@2b
    move-result-wide v4

    #@2c
    .line 448
    .local v4, "nextDarkenTransition":J
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(J)F

    #@2f
    move-result v0

    #@30
    .line 450
    .local v0, "ambientLux":F
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    #@32
    cmpl-float v1, v0, v1

    #@34
    if-ltz v1, :cond_3

    #@36
    cmp-long v1, v2, p1

    #@38
    if-gtz v1, :cond_3

    #@3a
    .line 452
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    #@3d
    .line 460
    const/4 v1, 0x1

    #@3e
    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    #@41
    .line 461
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightBrighteningTransition(J)J

    #@44
    move-result-wide v2

    #@45
    .line 462
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightDarkeningTransition(J)J

    #@48
    move-result-wide v4

    #@49
    .line 464
    :cond_2
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    #@4c
    move-result-wide v6

    #@4d
    .line 472
    .local v6, "nextTransitionTime":J
    cmp-long v1, v6, p1

    #@4f
    if-lez v1, :cond_4

    #@51
    .line 477
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    #@53
    const/4 v10, 0x1

    #@54
    invoke-virtual {v1, v10, v6, v7}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    #@57
    .line 420
    return-void

    #@58
    .line 451
    .end local v6    # "nextTransitionTime":J
    :cond_3
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    #@5a
    cmpg-float v1, v0, v1

    #@5c
    if-gtz v1, :cond_2

    #@5e
    cmp-long v1, v4, p1

    #@60
    if-gtz v1, :cond_2

    #@62
    goto :goto_0

    #@63
    .line 472
    .restart local v6    # "nextTransitionTime":J
    :cond_4
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorRate:I

    #@65
    int-to-long v10, v1

    #@66
    add-long v6, p1, v10

    #@68
    goto :goto_1
.end method

.method private updateAutoBrightness(Z)V
    .locals 18
    .param p1, "sendUpdate"    # Z

    #@0
    .prologue
    .line 481
    move-object/from16 v0, p0

    #@2
    iget-boolean v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    #@4
    if-nez v13, :cond_0

    #@6
    .line 482
    return-void

    #@7
    .line 485
    :cond_0
    move-object/from16 v0, p0

    #@9
    iget-object v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    #@b
    move-object/from16 v0, p0

    #@d
    iget v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    #@f
    invoke-virtual {v13, v14}, Landroid/util/Spline;->interpolate(F)F

    #@12
    move-result v12

    #@13
    .line 486
    .local v12, "value":F
    const/high16 v6, 0x3f800000    # 1.0f

    #@15
    .line 489
    .local v6, "gamma":F
    move-object/from16 v0, p0

    #@17
    iget v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    #@19
    const/4 v14, 0x0

    #@1a
    cmpl-float v13, v13, v14

    #@1c
    if-eqz v13, :cond_1

    #@1e
    .line 490
    move-object/from16 v0, p0

    #@20
    iget v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustmentMaxGamma:F

    #@22
    .line 491
    move-object/from16 v0, p0

    #@24
    iget v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    #@26
    neg-float v14, v14

    #@27
    const/high16 v15, -0x40800000    # -1.0f

    #@29
    invoke-static {v15, v14}, Ljava/lang/Math;->max(FF)F

    #@2c
    move-result v14

    #@2d
    const/high16 v15, 0x3f800000    # 1.0f

    #@2f
    invoke-static {v15, v14}, Ljava/lang/Math;->min(FF)F

    #@32
    move-result v14

    #@33
    .line 490
    invoke-static {v13, v14}, Landroid/util/MathUtils;->pow(FF)F

    #@36
    move-result v2

    #@37
    .line 486
    .local v2, "adjGamma":F
    const/high16 v13, 0x3f800000    # 1.0f

    #@39
    .line 492
    mul-float v6, v13, v2

    #@3b
    .line 498
    .end local v2    # "adjGamma":F
    :cond_1
    move-object/from16 v0, p0

    #@3d
    iget-boolean v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mUseTwilight:Z

    #@3f
    if-eqz v13, :cond_2

    #@41
    .line 499
    move-object/from16 v0, p0

    #@43
    iget-object v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    #@45
    invoke-interface {v13}, Lcom/android/server/twilight/TwilightManager;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    #@48
    move-result-object v9

    #@49
    .line 500
    .local v9, "state":Lcom/android/server/twilight/TwilightState;
    if-eqz v9, :cond_2

    #@4b
    invoke-virtual {v9}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    #@4e
    move-result v13

    #@4f
    if-eqz v13, :cond_2

    #@51
    .line 501
    invoke-virtual {v9}, Lcom/android/server/twilight/TwilightState;->sunriseTimeMillis()J

    #@54
    move-result-wide v14

    #@55
    invoke-virtual {v9}, Lcom/android/server/twilight/TwilightState;->sunsetTimeMillis()J

    #@58
    move-result-wide v16

    #@59
    sub-long v4, v14, v16

    #@5b
    .line 502
    .local v4, "duration":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@5e
    move-result-wide v14

    #@5f
    invoke-virtual {v9}, Lcom/android/server/twilight/TwilightState;->sunsetTimeMillis()J

    #@62
    move-result-wide v16

    #@63
    sub-long v10, v14, v16

    #@65
    .line 503
    .local v10, "progress":J
    long-to-double v14, v10

    #@66
    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    #@68
    mul-double v14, v14, v16

    #@6a
    long-to-double v0, v4

    #@6b
    move-wide/from16 v16, v0

    #@6d
    div-double v14, v14, v16

    #@6f
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    #@71
    sub-double v14, v14, v16

    #@73
    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    #@75
    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    #@78
    move-result-wide v14

    #@79
    double-to-float v3, v14

    #@7a
    .line 504
    .local v3, "amount":F
    const/high16 v13, 0x3f800000    # 1.0f

    #@7c
    mul-float/2addr v13, v3

    #@7d
    const/high16 v14, 0x3f800000    # 1.0f

    #@7f
    add-float/2addr v13, v14

    #@80
    mul-float/2addr v6, v13

    #@81
    .line 511
    .end local v3    # "amount":F
    .end local v4    # "duration":J
    .end local v9    # "state":Lcom/android/server/twilight/TwilightState;
    .end local v10    # "progress":J
    :cond_2
    const/high16 v13, 0x3f800000    # 1.0f

    #@83
    cmpl-float v13, v6, v13

    #@85
    if-eqz v13, :cond_3

    #@87
    .line 512
    move v7, v12

    #@88
    .line 513
    .local v7, "in":F
    invoke-static {v12, v6}, Landroid/util/MathUtils;->pow(FF)F

    #@8b
    move-result v12

    #@8c
    .line 521
    .end local v7    # "in":F
    :cond_3
    const/high16 v13, 0x437f0000    # 255.0f

    #@8e
    mul-float/2addr v13, v12

    #@8f
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    #@92
    move-result v13

    #@93
    move-object/from16 v0, p0

    #@95
    invoke-direct {v0, v13}, Lcom/android/server/display/AutomaticBrightnessController;->clampScreenBrightness(I)I

    #@98
    move-result v8

    #@99
    .line 522
    .local v8, "newScreenAutoBrightness":I
    move-object/from16 v0, p0

    #@9b
    iget v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    #@9d
    if-eq v13, v8, :cond_4

    #@9f
    .line 529
    move-object/from16 v0, p0

    #@a1
    iput v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    #@a3
    .line 530
    move-object/from16 v0, p0

    #@a5
    iput v6, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    #@a7
    .line 531
    if-eqz p1, :cond_4

    #@a9
    .line 532
    move-object/from16 v0, p0

    #@ab
    iget-object v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    #@ad
    invoke-interface {v13}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->updateBrightness()V

    #@b0
    .line 480
    :cond_4
    return-void
.end method

.method private weightIntegral(J)F
    .locals 3
    .param p1, "x"    # J

    #@0
    .prologue
    .line 387
    long-to-float v0, p1

    #@1
    long-to-float v1, p1

    #@2
    const/high16 v2, 0x3f000000    # 0.5f

    #@4
    mul-float/2addr v1, v2

    #@5
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mWeightingIntercept:I

    #@7
    int-to-float v2, v2

    #@8
    add-float/2addr v1, v2

    #@9
    mul-float/2addr v0, v1

    #@a
    return v0
.end method


# virtual methods
.method public configure(ZFZZZ)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "adjustment"    # F
    .param p3, "dozing"    # Z
    .param p4, "userInitiatedChange"    # Z
    .param p5, "useTwilight"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 235
    iput-boolean p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozing:Z

    #@3
    .line 236
    if-eqz p1, :cond_0

    #@5
    if-eqz p3, :cond_3

    #@7
    :cond_0
    move v1, v2

    #@8
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->setLightSensorEnabled(Z)Z

    #@b
    move-result v0

    #@c
    .line 237
    .local v0, "changed":Z
    invoke-direct {p0, p2}, Lcom/android/server/display/AutomaticBrightnessController;->setScreenAutoBrightnessAdjustment(F)Z

    #@f
    move-result v1

    #@10
    or-int/2addr v0, v1

    #@11
    .line 238
    invoke-direct {p0, p5}, Lcom/android/server/display/AutomaticBrightnessController;->setUseTwilight(Z)Z

    #@14
    move-result v1

    #@15
    or-int/2addr v0, v1

    #@16
    .line 239
    if-eqz v0, :cond_1

    #@18
    .line 240
    invoke-direct {p0, v2}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    #@1b
    .line 242
    :cond_1
    if-eqz p1, :cond_2

    #@1d
    if-eqz p3, :cond_4

    #@1f
    .line 229
    :cond_2
    :goto_1
    return-void

    #@20
    .line 236
    .end local v0    # "changed":Z
    :cond_3
    const/4 v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 242
    .restart local v0    # "changed":Z
    :cond_4
    if-eqz p4, :cond_2

    #@24
    .line 243
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->prepareBrightnessAdjustmentSample()V

    #@27
    goto :goto_1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 259
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@3
    .line 260
    const-string/jumbo v0, "Automatic Brightness Controller Configuration:"

    #@6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9
    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v1, "  mScreenAutoBrightnessSpline="

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@22
    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v1, "  mScreenBrightnessRangeMinimum="

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:I

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3b
    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v1, "  mScreenBrightnessRangeMaximum="

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:I

    #@49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v0

    #@51
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@54
    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v1, "  mLightSensorWarmUpTimeConfig="

    #@5c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    #@62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@65
    move-result-object v0

    #@66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v0

    #@6a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6d
    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v1, "  mBrighteningLightDebounceConfig="

    #@75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v0

    #@79
    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    #@7b
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v0

    #@7f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v0

    #@83
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@86
    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    #@88
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    const-string/jumbo v1, "  mDarkeningLightDebounceConfig="

    #@8e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v0

    #@92
    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    #@94
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@97
    move-result-object v0

    #@98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v0

    #@9c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9f
    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    #@a1
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a4
    const-string/jumbo v1, "  mResetAmbientLuxAfterWarmUpConfig="

    #@a7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v0

    #@ab
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    #@ad
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v0

    #@b1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v0

    #@b5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b8
    .line 269
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@bb
    .line 270
    const-string/jumbo v0, "Automatic Brightness Controller State:"

    #@be
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c1
    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    #@c3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c6
    const-string/jumbo v1, "  mLightSensor="

    #@c9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v0

    #@cd
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    #@cf
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v0

    #@d3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d6
    move-result-object v0

    #@d7
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@da
    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    #@dc
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@df
    const-string/jumbo v1, "  mTwilight.getLastTwilightState()="

    #@e2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v0

    #@e6
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    #@e8
    invoke-interface {v1}, Lcom/android/server/twilight/TwilightManager;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    #@eb
    move-result-object v1

    #@ec
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v0

    #@f0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f3
    move-result-object v0

    #@f4
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f7
    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    #@f9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@fc
    const-string/jumbo v1, "  mLightSensorEnabled="

    #@ff
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v0

    #@103
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    #@105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@108
    move-result-object v0

    #@109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10c
    move-result-object v0

    #@10d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@110
    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    #@112
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@115
    const-string/jumbo v1, "  mLightSensorEnableTime="

    #@118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v0

    #@11c
    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    #@11e
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    #@121
    move-result-object v1

    #@122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v0

    #@126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@129
    move-result-object v0

    #@12a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@12d
    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    #@12f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@132
    const-string/jumbo v1, "  mAmbientLux="

    #@135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@138
    move-result-object v0

    #@139
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    #@13b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@13e
    move-result-object v0

    #@13f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@142
    move-result-object v0

    #@143
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@146
    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    #@148
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@14b
    const-string/jumbo v1, "  mAmbientLightHorizon="

    #@14e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v0

    #@152
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    #@154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@157
    move-result-object v0

    #@158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15b
    move-result-object v0

    #@15c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@15f
    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    #@161
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@164
    const-string/jumbo v1, "  mBrighteningLuxThreshold="

    #@167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16a
    move-result-object v0

    #@16b
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    #@16d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@170
    move-result-object v0

    #@171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@174
    move-result-object v0

    #@175
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@178
    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    #@17a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@17d
    const-string/jumbo v1, "  mDarkeningLuxThreshold="

    #@180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@183
    move-result-object v0

    #@184
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    #@186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@189
    move-result-object v0

    #@18a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18d
    move-result-object v0

    #@18e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@191
    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    #@193
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@196
    const-string/jumbo v1, "  mLastObservedLux="

    #@199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19c
    move-result-object v0

    #@19d
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    #@19f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@1a2
    move-result-object v0

    #@1a3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a6
    move-result-object v0

    #@1a7
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1aa
    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    #@1ac
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1af
    const-string/jumbo v1, "  mLastObservedLuxTime="

    #@1b2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b5
    move-result-object v0

    #@1b6
    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLuxTime:J

    #@1b8
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    #@1bb
    move-result-object v1

    #@1bc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bf
    move-result-object v0

    #@1c0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c3
    move-result-object v0

    #@1c4
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1c7
    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    #@1c9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1cc
    const-string/jumbo v1, "  mRecentLightSamples="

    #@1cf
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d2
    move-result-object v0

    #@1d3
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    #@1d5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d8
    move-result-object v0

    #@1d9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1dc
    move-result-object v0

    #@1dd
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1e0
    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    #@1e2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1e5
    const-string/jumbo v1, "  mAmbientLightRingBuffer="

    #@1e8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1eb
    move-result-object v0

    #@1ec
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    #@1ee
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f1
    move-result-object v0

    #@1f2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f5
    move-result-object v0

    #@1f6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1f9
    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    #@1fb
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1fe
    const-string/jumbo v1, "  mInitialHorizonAmbientLightRingBuffer="

    #@201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@204
    move-result-object v0

    #@205
    .line 284
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialHorizonAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    #@207
    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20a
    move-result-object v0

    #@20b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20e
    move-result-object v0

    #@20f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@212
    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    #@214
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@217
    const-string/jumbo v1, "  mScreenAutoBrightness="

    #@21a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21d
    move-result-object v0

    #@21e
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    #@220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@223
    move-result-object v0

    #@224
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@227
    move-result-object v0

    #@228
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@22b
    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    #@22d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@230
    const-string/jumbo v1, "  mScreenAutoBrightnessAdjustment="

    #@233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@236
    move-result-object v0

    #@237
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    #@239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@23c
    move-result-object v0

    #@23d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@240
    move-result-object v0

    #@241
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@244
    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    #@246
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@249
    const-string/jumbo v1, "  mScreenAutoBrightnessAdjustmentMaxGamma="

    #@24c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24f
    move-result-object v0

    #@250
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustmentMaxGamma:F

    #@252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@255
    move-result-object v0

    #@256
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@259
    move-result-object v0

    #@25a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@25d
    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    #@25f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@262
    const-string/jumbo v1, "  mLastScreenAutoBrightnessGamma="

    #@265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@268
    move-result-object v0

    #@269
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    #@26b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@26e
    move-result-object v0

    #@26f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@272
    move-result-object v0

    #@273
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@276
    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    #@278
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@27b
    const-string/jumbo v1, "  mDozing="

    #@27e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@281
    move-result-object v0

    #@282
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozing:Z

    #@284
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@287
    move-result-object v0

    #@288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28b
    move-result-object v0

    #@28c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@28f
    .line 258
    return-void
.end method

.method public getAutomaticScreenBrightness()I
    .locals 2

    #@0
    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozing:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 223
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    #@6
    int-to-float v0, v0

    #@7
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozeScaleFactor:F

    #@9
    mul-float/2addr v0, v1

    #@a
    float-to-int v0, v0

    #@b
    return v0

    #@c
    .line 225
    :cond_0
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    #@e
    return v0
.end method
