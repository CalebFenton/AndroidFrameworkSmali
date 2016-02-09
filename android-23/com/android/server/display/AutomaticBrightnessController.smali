.class Lcom/android/server/display/AutomaticBrightnessController;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;,
        Lcom/android/server/display/AutomaticBrightnessController$Callbacks;,
        Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;,
        Lcom/android/server/display/AutomaticBrightnessController$1;,
        Lcom/android/server/display/AutomaticBrightnessController$2;
    }
.end annotation


# static fields
.field private static final AMBIENT_LIGHT_HORIZON:I = 0x2710

.field private static final AMBIENT_LIGHT_PREDICTION_TIME_MILLIS:J = 0x64L

.field private static final BRIGHTENING_LIGHT_HYSTERESIS:F = 0.1f

.field private static final BRIGHTNESS_ADJUSTMENT_SAMPLE_DEBOUNCE_MILLIS:I = 0x2710

.field private static final DARKENING_LIGHT_HYSTERESIS:F = 0.2f

.field private static final DEBUG:Z = false

.field private static final DEBUG_PRETEND_LIGHT_SENSOR_ABSENT:Z = false

.field private static final MSG_BRIGHTNESS_ADJUSTMENT_SAMPLE:I = 0x2

.field private static final MSG_UPDATE_AMBIENT_LUX:I = 0x1

.field private static final SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT_MAX_GAMMA:F = 3.0f

.field private static final TAG:Ljava/lang/String; = "AutomaticBrightnessController"

.field private static final TWILIGHT_ADJUSTMENT_MAX_GAMMA:F = 1.5f

.field private static final TWILIGHT_ADJUSTMENT_TIME:J = 0x6ddd00L

.field private static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z = true

.field private static final USE_TWILIGHT_ADJUSTMENT:Z

.field private static final WEIGHTING_INTERCEPT:I = 0x2710


# instance fields
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

.field private final mScreenAutoBrightnessSpline:Landroid/util/Spline;

.field private final mScreenBrightnessRangeMaximum:I

.field private final mScreenBrightnessRangeMinimum:I

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final mTwilight:Lcom/android/server/twilight/TwilightManager;

.field private final mTwilightListener:Lcom/android/server/twilight/TwilightListener;


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

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 80
    invoke-static {}, Landroid/os/PowerManager;->useTwilightAdjustmentFeature()Z

    #@3
    move-result v0

    #@4
    .line 79
    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->USE_TWILIGHT_ADJUSTMENT:Z

    #@6
    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/util/Spline;IIIFIJJZ)V
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

    #@0
    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 177
    const/4 v2, -0x1

    #@4
    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    #@6
    .line 180
    const/4 v2, 0x0

    #@7
    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    #@9
    .line 183
    const/high16 v2, 0x3f800000    # 1.0f

    #@b
    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    #@d
    .line 614
    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController$1;

    #@f
    invoke-direct {v2, p0}, Lcom/android/server/display/AutomaticBrightnessController$1;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    #@12
    iput-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    #@14
    .line 630
    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController$2;

    #@16
    invoke-direct {v2, p0}, Lcom/android/server/display/AutomaticBrightnessController$2;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    #@19
    iput-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    #@1b
    .line 201
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    #@1d
    .line 202
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
    .line 203
    iput-object p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    #@29
    .line 204
    iput-object p4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    #@2b
    .line 205
    iput p6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:I

    #@2d
    .line 206
    iput p7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:I

    #@2f
    .line 207
    iput p5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    #@31
    .line 208
    iput p8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozeScaleFactor:F

    #@33
    .line 209
    iput p9, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorRate:I

    #@35
    .line 210
    move-wide/from16 v0, p10

    #@37
    iput-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    #@39
    .line 211
    move-wide/from16 v0, p12

    #@3b
    iput-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    #@3d
    .line 212
    move/from16 v0, p14

    #@3f
    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    #@41
    .line 214
    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    #@43
    invoke-direct {v2, p0, p2}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;-><init>(Lcom/android/server/display/AutomaticBrightnessController;Landroid/os/Looper;)V

    #@46
    iput-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    #@48
    .line 215
    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    #@4a
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorRate:I

    #@4c
    int-to-long v4, v3

    #@4d
    invoke-direct {v2, v4, v5}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;-><init>(J)V

    #@50
    iput-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    #@52
    .line 218
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    #@54
    const/4 v3, 0x5

    #@55
    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    #@58
    move-result-object v2

    #@59
    iput-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    #@5b
    .line 221
    sget-boolean v2, Lcom/android/server/display/AutomaticBrightnessController;->USE_TWILIGHT_ADJUSTMENT:Z

    #@5d
    if-eqz v2, :cond_0

    #@5f
    .line 222
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    #@61
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    #@63
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    #@65
    invoke-interface {v2, v3, v4}, Lcom/android/server/twilight/TwilightManager;->registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V

    #@68
    .line 200
    :cond_0
    return-void
.end method

.method private applyLightSensorMeasurement(JF)V
    .locals 5
    .param p1, "time"    # J
    .param p3, "lux"    # F

    #@0
    .prologue
    .line 311
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    #@6
    .line 312
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    #@8
    const-wide/16 v2, 0x2710

    #@a
    sub-long v2, p1, v2

    #@c
    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->prune(J)V

    #@f
    .line 313
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    #@11
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->push(JF)V

    #@14
    .line 316
    iput p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    #@16
    .line 317
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLuxTime:J

    #@18
    .line 310
    return-void
.end method

.method private calculateAmbientLux(J)F
    .locals 13
    .param p1, "now"    # J

    #@0
    .prologue
    .line 335
    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    #@2
    invoke-virtual {v10}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    #@5
    move-result v0

    #@6
    .line 336
    .local v0, "N":I
    if-nez v0, :cond_0

    #@8
    .line 337
    const-string/jumbo v10, "AutomaticBrightnessController"

    #@b
    const-string/jumbo v11, "calculateAmbientLux: No ambient light readings available"

    #@e
    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 338
    const/high16 v10, -0x40800000    # -1.0f

    #@13
    return v10

    #@14
    .line 340
    :cond_0
    const/4 v5, 0x0

    #@15
    .line 341
    .local v5, "sum":F
    const/4 v8, 0x0

    #@16
    .line 342
    .local v8, "totalWeight":F
    const-wide/16 v2, 0x64

    #@18
    .line 343
    .local v2, "endTime":J
    add-int/lit8 v1, v0, -0x1

    #@1a
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@1c
    .line 344
    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    #@1e
    invoke-virtual {v10, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    #@21
    move-result-wide v10

    #@22
    sub-long v6, v10, p1

    #@24
    .line 345
    .local v6, "startTime":J
    invoke-static {v6, v7, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController;->calculateWeight(JJ)F

    #@27
    move-result v9

    #@28
    .line 346
    .local v9, "weight":F
    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    #@2a
    invoke-virtual {v10, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    #@2d
    move-result v4

    #@2e
    .line 352
    .local v4, "lux":F
    add-float/2addr v8, v9

    #@2f
    .line 353
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
    .line 354
    move-wide v2, v6

    #@38
    .line 343
    add-int/lit8 v1, v1, -0x1

    #@3a
    goto :goto_0

    #@3b
    .line 360
    .end local v4    # "lux":F
    .end local v6    # "startTime":J
    .end local v9    # "weight":F
    :cond_1
    div-float v10, v5, v8

    #@3d
    return v10
.end method

.method private static calculateWeight(JJ)F
    .locals 2
    .param p0, "startDelta"    # J
    .param p2, "endDelta"    # J

    #@0
    .prologue
    .line 364
    invoke-static {p2, p3}, Lcom/android/server/display/AutomaticBrightnessController;->weightIntegral(J)F

    #@3
    move-result v0

    #@4
    invoke-static {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->weightIntegral(J)F

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
    .line 544
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 545
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    #@7
    .line 546
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    #@9
    const/4 v1, 0x2

    #@a
    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    #@d
    .line 543
    :cond_0
    return-void
.end method

.method private clampScreenBrightness(I)I
    .locals 2
    .param p1, "value"    # I

    #@0
    .prologue
    .line 525
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:I

    #@2
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:I

    #@4
    .line 524
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
    .line 551
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 552
    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    #@7
    .line 553
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    #@9
    if-eqz v0, :cond_0

    #@b
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    #@d
    if-ltz v0, :cond_0

    #@f
    .line 563
    const/16 v0, 0x8

    #@11
    new-array v0, v0, [Ljava/lang/Object;

    #@13
    .line 564
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldAdjustment:F

    #@15
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@18
    move-result-object v1

    #@19
    aput-object v1, v0, v2

    #@1b
    .line 565
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
    .line 566
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
    .line 567
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
    .line 568
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
    .line 569
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
    .line 570
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
    .line 571
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
    .line 563
    const v1, 0x88b8

    #@5d
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@60
    .line 550
    :cond_0
    return-void
.end method

.method private static getTwilightGamma(JJJ)F
    .locals 10
    .param p0, "now"    # J
    .param p2, "lastSunset"    # J
    .param p4, "nextSunrise"    # J

    #@0
    .prologue
    const-wide/32 v8, 0x6ddd00

    #@3
    const-wide/16 v6, 0x0

    #@5
    const v4, 0x4adbba00    # 7200000.0f

    #@8
    const/high16 v3, 0x3fc00000    # 1.5f

    #@a
    const/high16 v2, 0x3f800000    # 1.0f

    #@c
    .line 577
    cmp-long v0, p2, v6

    #@e
    if-ltz v0, :cond_0

    #@10
    cmp-long v0, p4, v6

    #@12
    if-gez v0, :cond_1

    #@14
    .line 579
    :cond_0
    return v2

    #@15
    .line 578
    :cond_1
    cmp-long v0, p0, p2

    #@17
    if-ltz v0, :cond_0

    #@19
    cmp-long v0, p0, p4

    #@1b
    if-gtz v0, :cond_0

    #@1d
    .line 582
    add-long v0, p2, v8

    #@1f
    cmp-long v0, p0, v0

    #@21
    if-gez v0, :cond_2

    #@23
    .line 584
    sub-long v0, p0, p2

    #@25
    long-to-float v0, v0

    #@26
    div-float/2addr v0, v4

    #@27
    .line 583
    invoke-static {v2, v3, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    #@2a
    move-result v0

    #@2b
    return v0

    #@2c
    .line 587
    :cond_2
    sub-long v0, p4, v8

    #@2e
    cmp-long v0, p0, v0

    #@30
    if-lez v0, :cond_3

    #@32
    .line 589
    sub-long v0, p4, p0

    #@34
    long-to-float v0, v0

    #@35
    div-float/2addr v0, v4

    #@36
    .line 588
    invoke-static {v2, v3, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    #@39
    move-result v0

    #@3a
    return v0

    #@3b
    .line 592
    :cond_3
    return v3
.end method

.method private handleLightSensorEvent(JF)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "lux"    # F

    #@0
    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    #@6
    .line 306
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController;->applyLightSensorMeasurement(JF)V

    #@9
    .line 307
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux(J)V

    #@c
    .line 303
    return-void
.end method

.method private nextAmbientLightBrighteningTransition(J)J
    .locals 7
    .param p1, "time"    # J

    #@0
    .prologue
    .line 374
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    #@2
    invoke-virtual {v4}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    #@5
    move-result v0

    #@6
    .line 375
    .local v0, "N":I
    move-wide v2, p1

    #@7
    .line 376
    .local v2, "earliestValidTime":J
    add-int/lit8 v1, v0, -0x1

    #@9
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    #@b
    .line 377
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
    .line 382
    :cond_0
    iget-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    #@19
    add-long/2addr v4, v2

    #@1a
    return-wide v4

    #@1b
    .line 380
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    #@1d
    invoke-virtual {v4, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    #@20
    move-result-wide v2

    #@21
    .line 376
    add-int/lit8 v1, v1, -0x1

    #@23
    goto :goto_0
.end method

.method private nextAmbientLightDarkeningTransition(J)J
    .locals 7
    .param p1, "time"    # J

    #@0
    .prologue
    .line 386
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    #@2
    invoke-virtual {v4}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    #@5
    move-result v0

    #@6
    .line 387
    .local v0, "N":I
    move-wide v2, p1

    #@7
    .line 388
    .local v2, "earliestValidTime":J
    add-int/lit8 v1, v0, -0x1

    #@9
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    #@b
    .line 389
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
    .line 394
    :cond_0
    iget-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    #@19
    add-long/2addr v4, v2

    #@1a
    return-wide v4

    #@1b
    .line 392
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    #@1d
    invoke-virtual {v4, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    #@20
    move-result-wide v2

    #@21
    .line 388
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
    .line 529
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    #@3
    if-nez v0, :cond_1

    #@5
    .line 530
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    #@8
    .line 531
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    #@a
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldAdjustment:F

    #@c
    .line 532
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    #@e
    if-eqz v0, :cond_0

    #@10
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    #@12
    :goto_0
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldLux:F

    #@14
    .line 533
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    #@16
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldBrightness:I

    #@18
    .line 534
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    #@1a
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldGamma:F

    #@1c
    .line 539
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    #@1e
    .line 540
    const-wide/16 v2, 0x2710

    #@20
    .line 539
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageDelayed(IJ)Z

    #@23
    .line 528
    return-void

    #@24
    .line 532
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    #@26
    goto :goto_0

    #@27
    .line 536
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
    .line 329
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    #@2
    .line 330
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    #@4
    const v1, 0x3f8ccccd    # 1.1f

    #@7
    mul-float/2addr v0, v1

    #@8
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    #@a
    .line 331
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    #@c
    const v1, 0x3f4ccccd    # 0.8f

    #@f
    mul-float/2addr v0, v1

    #@10
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    #@12
    .line 328
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
    .line 282
    if-eqz p1, :cond_0

    #@4
    .line 283
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    #@6
    if-nez v0, :cond_1

    #@8
    .line 284
    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    #@a
    .line 285
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@d
    move-result-wide v0

    #@e
    iput-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    #@10
    .line 286
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    #@12
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    #@14
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    #@16
    .line 287
    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorRate:I

    #@18
    mul-int/lit16 v4, v4, 0x3e8

    #@1a
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    #@1c
    .line 286
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    #@1f
    .line 288
    return v2

    #@20
    .line 291
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    #@22
    if-eqz v0, :cond_1

    #@24
    .line 292
    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    #@26
    .line 293
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    #@28
    if-eqz v0, :cond_2

    #@2a
    move v0, v1

    #@2b
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    #@2d
    .line 294
    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    #@2f
    .line 295
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    #@31
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->clear()V

    #@34
    .line 296
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    #@36
    invoke-virtual {v0, v2}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    #@39
    .line 297
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    #@3b
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    #@3d
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    #@40
    .line 300
    :cond_1
    return v1

    #@41
    :cond_2
    move v0, v2

    #@42
    .line 293
    goto :goto_0
.end method

.method private setScreenAutoBrightnessAdjustment(F)Z
    .locals 1
    .param p1, "adjustment"    # F

    #@0
    .prologue
    .line 321
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    #@2
    cmpl-float v0, p1, v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 322
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    #@8
    .line 323
    const/4 v0, 0x1

    #@9
    return v0

    #@a
    .line 325
    :cond_0
    const/4 v0, 0x0

    #@b
    return v0
.end method

.method private updateAmbientLux()V
    .locals 6

    #@0
    .prologue
    .line 398
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v0

    #@4
    .line 399
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    #@6
    const-wide/16 v4, 0x2710

    #@8
    sub-long v4, v0, v4

    #@a
    invoke-virtual {v2, v4, v5}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->prune(J)V

    #@d
    .line 400
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux(J)V

    #@10
    .line 397
    return-void
.end method

.method private updateAmbientLux(J)V
    .locals 15
    .param p1, "time"    # J

    #@0
    .prologue
    .line 406
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    #@2
    if-nez v1, :cond_1

    #@4
    .line 408
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    #@6
    int-to-long v10, v1

    #@7
    iget-wide v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    #@9
    add-long v8, v10, v12

    #@b
    .line 409
    .local v8, "timeWhenSensorWarmedUp":J
    cmp-long v1, p1, v8

    #@d
    if-gez v1, :cond_0

    #@f
    .line 415
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    #@11
    const/4 v10, 0x1

    #@12
    invoke-virtual {v1, v10, v8, v9}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    #@15
    .line 417
    return-void

    #@16
    .line 419
    :cond_0
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(J)F

    #@19
    move-result v1

    #@1a
    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    #@1d
    .line 420
    const/4 v1, 0x1

    #@1e
    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    #@20
    .line 426
    const/4 v1, 0x1

    #@21
    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    #@24
    .line 429
    .end local v8    # "timeWhenSensorWarmedUp":J
    :cond_1
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightBrighteningTransition(J)J

    #@27
    move-result-wide v2

    #@28
    .line 430
    .local v2, "nextBrightenTransition":J
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightDarkeningTransition(J)J

    #@2b
    move-result-wide v4

    #@2c
    .line 431
    .local v4, "nextDarkenTransition":J
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(J)F

    #@2f
    move-result v0

    #@30
    .line 433
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
    .line 435
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    #@3d
    .line 443
    const/4 v1, 0x1

    #@3e
    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    #@41
    .line 444
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightBrighteningTransition(J)J

    #@44
    move-result-wide v2

    #@45
    .line 445
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightDarkeningTransition(J)J

    #@48
    move-result-wide v4

    #@49
    .line 447
    :cond_2
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    #@4c
    move-result-wide v6

    #@4d
    .line 455
    .local v6, "nextTransitionTime":J
    cmp-long v1, v6, p1

    #@4f
    if-lez v1, :cond_4

    #@51
    .line 460
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    #@53
    const/4 v10, 0x1

    #@54
    invoke-virtual {v1, v10, v6, v7}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    #@57
    .line 403
    return-void

    #@58
    .line 434
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
    .line 455
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
    .locals 14
    .param p1, "sendUpdate"    # Z

    #@0
    .prologue
    .line 464
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    #@2
    if-nez v2, :cond_0

    #@4
    .line 465
    return-void

    #@5
    .line 468
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    #@7
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    #@9
    invoke-virtual {v2, v3}, Landroid/util/Spline;->interpolate(F)F

    #@c
    move-result v13

    #@d
    .line 469
    .local v13, "value":F
    const/high16 v8, 0x3f800000    # 1.0f

    #@f
    .line 472
    .local v8, "gamma":F
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    #@11
    const/4 v3, 0x0

    #@12
    cmpl-float v2, v2, v3

    #@14
    if-eqz v2, :cond_1

    #@16
    .line 474
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    #@18
    neg-float v2, v2

    #@19
    const/high16 v3, -0x40800000    # -1.0f

    #@1b
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    #@1e
    move-result v2

    #@1f
    const/high16 v3, 0x3f800000    # 1.0f

    #@21
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    #@24
    move-result v2

    #@25
    .line 473
    const/high16 v3, 0x40400000    # 3.0f

    #@27
    invoke-static {v3, v2}, Landroid/util/MathUtils;->pow(FF)F

    #@2a
    move-result v6

    #@2b
    .line 469
    .local v6, "adjGamma":F
    const/high16 v2, 0x3f800000    # 1.0f

    #@2d
    .line 475
    mul-float v8, v2, v6

    #@2f
    .line 481
    .end local v6    # "adjGamma":F
    :cond_1
    sget-boolean v2, Lcom/android/server/display/AutomaticBrightnessController;->USE_TWILIGHT_ADJUSTMENT:Z

    #@31
    if-eqz v2, :cond_2

    #@33
    .line 482
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    #@35
    invoke-interface {v2}, Lcom/android/server/twilight/TwilightManager;->getCurrentState()Lcom/android/server/twilight/TwilightState;

    #@38
    move-result-object v12

    #@39
    .line 483
    .local v12, "state":Lcom/android/server/twilight/TwilightState;
    if-eqz v12, :cond_2

    #@3b
    invoke-virtual {v12}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    #@3e
    move-result v2

    #@3f
    if-eqz v2, :cond_2

    #@41
    .line 484
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@44
    move-result-wide v0

    #@45
    .line 486
    .local v0, "now":J
    invoke-virtual {v12}, Lcom/android/server/twilight/TwilightState;->getYesterdaySunset()J

    #@48
    move-result-wide v2

    #@49
    invoke-virtual {v12}, Lcom/android/server/twilight/TwilightState;->getTodaySunrise()J

    #@4c
    move-result-wide v4

    #@4d
    invoke-static/range {v0 .. v5}, Lcom/android/server/display/AutomaticBrightnessController;->getTwilightGamma(JJJ)F

    #@50
    move-result v7

    #@51
    .line 488
    .local v7, "earlyGamma":F
    invoke-virtual {v12}, Lcom/android/server/twilight/TwilightState;->getTodaySunset()J

    #@54
    move-result-wide v2

    #@55
    invoke-virtual {v12}, Lcom/android/server/twilight/TwilightState;->getTomorrowSunrise()J

    #@58
    move-result-wide v4

    #@59
    invoke-static/range {v0 .. v5}, Lcom/android/server/display/AutomaticBrightnessController;->getTwilightGamma(JJJ)F

    #@5c
    move-result v10

    #@5d
    .line 489
    .local v10, "lateGamma":F
    mul-float v2, v7, v10

    #@5f
    mul-float/2addr v8, v2

    #@60
    .line 497
    .end local v0    # "now":J
    .end local v7    # "earlyGamma":F
    .end local v10    # "lateGamma":F
    .end local v12    # "state":Lcom/android/server/twilight/TwilightState;
    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    #@62
    cmpl-float v2, v8, v2

    #@64
    if-eqz v2, :cond_3

    #@66
    .line 498
    move v9, v13

    #@67
    .line 499
    .local v9, "in":F
    invoke-static {v13, v8}, Landroid/util/MathUtils;->pow(FF)F

    #@6a
    move-result v13

    #@6b
    .line 507
    .end local v9    # "in":F
    :cond_3
    const/high16 v2, 0x437f0000    # 255.0f

    #@6d
    mul-float/2addr v2, v13

    #@6e
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    #@71
    move-result v2

    #@72
    invoke-direct {p0, v2}, Lcom/android/server/display/AutomaticBrightnessController;->clampScreenBrightness(I)I

    #@75
    move-result v11

    #@76
    .line 508
    .local v11, "newScreenAutoBrightness":I
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    #@78
    if-eq v2, v11, :cond_4

    #@7a
    .line 515
    iput v11, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    #@7c
    .line 516
    iput v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    #@7e
    .line 517
    if-eqz p1, :cond_4

    #@80
    .line 518
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    #@82
    invoke-interface {v2}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->updateBrightness()V

    #@85
    .line 463
    :cond_4
    return-void
.end method

.method private static weightIntegral(J)F
    .locals 4
    .param p0, "x"    # J

    #@0
    .prologue
    .line 370
    long-to-float v0, p0

    #@1
    long-to-float v1, p0

    #@2
    const/high16 v2, 0x3f000000    # 0.5f

    #@4
    mul-float/2addr v1, v2

    #@5
    const v2, 0x461c4000    # 10000.0f

    #@8
    add-float/2addr v1, v2

    #@9
    mul-float/2addr v0, v1

    #@a
    return v0
.end method


# virtual methods
.method public configure(ZFZZ)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "adjustment"    # F
    .param p3, "dozing"    # Z
    .param p4, "userInitiatedChange"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 240
    iput-boolean p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozing:Z

    #@3
    .line 241
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
    .line 242
    .local v0, "changed":Z
    invoke-direct {p0, p2}, Lcom/android/server/display/AutomaticBrightnessController;->setScreenAutoBrightnessAdjustment(F)Z

    #@f
    move-result v1

    #@10
    or-int/2addr v0, v1

    #@11
    .line 243
    if-eqz v0, :cond_1

    #@13
    .line 244
    invoke-direct {p0, v2}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    #@16
    .line 246
    :cond_1
    if-eqz p1, :cond_2

    #@18
    if-eqz p3, :cond_4

    #@1a
    .line 234
    :cond_2
    :goto_1
    return-void

    #@1b
    .line 241
    .end local v0    # "changed":Z
    :cond_3
    const/4 v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 246
    .restart local v0    # "changed":Z
    :cond_4
    if-eqz p4, :cond_2

    #@1f
    .line 247
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->prepareBrightnessAdjustmentSample()V

    #@22
    goto :goto_1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 252
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@3
    .line 253
    const-string/jumbo v0, "Automatic Brightness Controller Configuration:"

    #@6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9
    .line 254
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
    .line 255
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
    .line 256
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
    .line 257
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
    .line 258
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
    .line 259
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
    .line 260
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
    .line 262
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@bb
    .line 263
    const-string/jumbo v0, "Automatic Brightness Controller State:"

    #@be
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c1
    .line 264
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
    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    #@dc
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@df
    const-string/jumbo v1, "  mTwilight.getCurrentState()="

    #@e2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v0

    #@e6
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    #@e8
    invoke-interface {v1}, Lcom/android/server/twilight/TwilightManager;->getCurrentState()Lcom/android/server/twilight/TwilightState;

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
    .line 266
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
    .line 267
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
    .line 268
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
    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    #@148
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@14b
    const-string/jumbo v1, "  mBrighteningLuxThreshold="

    #@14e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v0

    #@152
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    #@154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@157
    move-result-object v0

    #@158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15b
    move-result-object v0

    #@15c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@15f
    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    #@161
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@164
    const-string/jumbo v1, "  mDarkeningLuxThreshold="

    #@167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16a
    move-result-object v0

    #@16b
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

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
    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    #@17a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@17d
    const-string/jumbo v1, "  mLastObservedLux="

    #@180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@183
    move-result-object v0

    #@184
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

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
    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    #@193
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@196
    const-string/jumbo v1, "  mLastObservedLuxTime="

    #@199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19c
    move-result-object v0

    #@19d
    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLuxTime:J

    #@19f
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    #@1a2
    move-result-object v1

    #@1a3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a6
    move-result-object v0

    #@1a7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1aa
    move-result-object v0

    #@1ab
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1ae
    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    #@1b0
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1b3
    const-string/jumbo v1, "  mRecentLightSamples="

    #@1b6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b9
    move-result-object v0

    #@1ba
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    #@1bc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1bf
    move-result-object v0

    #@1c0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c3
    move-result-object v0

    #@1c4
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1c7
    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    #@1c9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1cc
    const-string/jumbo v1, "  mAmbientLightRingBuffer="

    #@1cf
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d2
    move-result-object v0

    #@1d3
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    #@1d5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d8
    move-result-object v0

    #@1d9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1dc
    move-result-object v0

    #@1dd
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1e0
    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    #@1e2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1e5
    const-string/jumbo v1, "  mScreenAutoBrightness="

    #@1e8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1eb
    move-result-object v0

    #@1ec
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    #@1ee
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f1
    move-result-object v0

    #@1f2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f5
    move-result-object v0

    #@1f6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1f9
    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    #@1fb
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1fe
    const-string/jumbo v1, "  mScreenAutoBrightnessAdjustment="

    #@201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@204
    move-result-object v0

    #@205
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    #@207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@20a
    move-result-object v0

    #@20b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20e
    move-result-object v0

    #@20f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@212
    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    #@214
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@217
    const-string/jumbo v1, "  mLastScreenAutoBrightnessGamma="

    #@21a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21d
    move-result-object v0

    #@21e
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    #@220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@223
    move-result-object v0

    #@224
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@227
    move-result-object v0

    #@228
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@22b
    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    #@22d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@230
    const-string/jumbo v1, "  mDozing="

    #@233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@236
    move-result-object v0

    #@237
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozing:Z

    #@239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@23c
    move-result-object v0

    #@23d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@240
    move-result-object v0

    #@241
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@244
    .line 251
    return-void
.end method

.method public getAutomaticScreenBrightness()I
    .locals 2

    #@0
    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozing:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 228
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
    .line 230
    :cond_0
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    #@e
    return v0
.end method
