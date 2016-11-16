.class final Lcom/android/server/display/DisplayPowerController;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Lcom/android/server/display/AutomaticBrightnessController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayPowerController$1;,
        Lcom/android/server/display/DisplayPowerController$2;,
        Lcom/android/server/display/DisplayPowerController$3;,
        Lcom/android/server/display/DisplayPowerController$4;,
        Lcom/android/server/display/DisplayPowerController$5;,
        Lcom/android/server/display/DisplayPowerController$6;,
        Lcom/android/server/display/DisplayPowerController$7;,
        Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;,
        Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final BRIGHTNESS_RAMP_RATE_SLOW:I = 0x28

.field private static final COLOR_FADE_OFF_ANIMATION_DURATION_MILLIS:I = 0x190

.field private static final COLOR_FADE_ON_ANIMATION_DURATION_MILLIS:I = 0xfa

.field private static DEBUG:Z = false

.field private static final DEBUG_PRETEND_PROXIMITY_SENSOR_ABSENT:Z = false

.field private static final MSG_PROXIMITY_SENSOR_DEBOUNCED:I = 0x2

.field private static final MSG_SCREEN_ON_UNBLOCKED:I = 0x3

.field private static final MSG_UPDATE_POWER_STATE:I = 0x1

.field private static final PROXIMITY_NEGATIVE:I = 0x0

.field private static final PROXIMITY_POSITIVE:I = 0x1

.field private static final PROXIMITY_SENSOR_NEGATIVE_DEBOUNCE_DELAY:I = 0xfa

.field private static final PROXIMITY_SENSOR_POSITIVE_DEBOUNCE_DELAY:I = 0x0

.field private static final PROXIMITY_UNKNOWN:I = -0x1

.field private static final REPORTED_TO_POLICY_SCREEN_OFF:I = 0x0

.field private static final REPORTED_TO_POLICY_SCREEN_ON:I = 0x2

.field private static final REPORTED_TO_POLICY_SCREEN_TURNING_ON:I = 0x1

.field private static final SCREEN_DIM_MINIMUM_REDUCTION:I = 0xa

.field private static final SCREEN_ON_BLOCKED_TRACE_NAME:Ljava/lang/String; = "Screen on blocked"

.field private static final TAG:Ljava/lang/String; = "DisplayPowerController"

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field private static final USE_COLOR_FADE_ON_ANIMATION:Z


# instance fields
.field private final mAllowAutoBrightnessWhileDozingConfig:Z

.field private final mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mAppliedAutoBrightness:Z

.field private mAppliedDimming:Z

.field private mAppliedLowPower:Z

.field private mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBlanker:Lcom/android/server/display/DisplayBlanker;

.field private final mBrightnessRampRateFast:I

.field private final mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field private final mCleanListener:Ljava/lang/Runnable;

.field private mColorFadeFadesConfig:Z

.field private mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

.field private mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

.field private final mContext:Landroid/content/Context;

.field private mDisplayReadyLocked:Z

.field private final mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

.field private final mLock:Ljava/lang/Object;

.field private final mOnProximityNegativeRunnable:Ljava/lang/Runnable;

.field private final mOnProximityPositiveRunnable:Ljava/lang/Runnable;

.field private final mOnStateChangedRunnable:Ljava/lang/Runnable;

.field private mPendingProximity:I

.field private mPendingProximityDebounceTime:J

.field private mPendingRequestChangedLocked:Z

.field private mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private mPendingScreenOff:Z

.field private mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

.field private mPendingUpdatePowerStateLocked:Z

.field private mPendingWaitForNegativeProximityLocked:Z

.field private mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private mPowerState:Lcom/android/server/display/DisplayPowerState;

.field private mProximity:I

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorEnabled:Z

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mProximityThreshold:F

.field private final mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

.field private mReportedScreenStateToPolicy:I

.field private final mScreenBrightnessDarkConfig:I

.field private final mScreenBrightnessDimConfig:I

.field private final mScreenBrightnessDozeConfig:I

.field private mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/display/RampAnimator",
            "<",
            "Lcom/android/server/display/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenBrightnessRangeMaximum:I

.field private final mScreenBrightnessRangeMinimum:I

.field private mScreenOffBecauseOfProximity:Z

.field private mScreenOnBlockStartRealTime:J

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mUnfinishedBusiness:Z

.field private mUseSoftwareAutoBrightnessConfig:Z

.field private mWaitingForNegativeProximity:Z

.field private final mWindowManagerPolicy:Landroid/view/WindowManagerPolicy;


# direct methods
.method static synthetic -get0(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/display/DisplayPowerController;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    #@2
    return v0
.end method

.method static synthetic -get4(Lcom/android/server/display/DisplayPowerController;)F
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    #@2
    return v0
.end method

.method static synthetic -wrap0(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->debounceProximitySensor()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/display/DisplayPowerController;Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->dumpLocal(Ljava/io/PrintWriter;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/display/DisplayPowerController;JZ)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "positive"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayPowerController;->handleProximitySensorEvent(JZ)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const-class v0, Lcom/android/server/display/DisplayPowerController;

    #@3
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    move v0, v1

    #@a
    :goto_0
    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->-assertionsDisabled:Z

    #@c
    .line 75
    sput-boolean v1, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    #@e
    .line 71
    return-void

    #@f
    :cond_0
    const/4 v0, 0x1

    #@10
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayBlanker;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbacks"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p5, "blanker"    # Lcom/android/server/display/DisplayBlanker;

    #@0
    .prologue
    .line 260
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 112
    new-instance v2, Ljava/lang/Object;

    #@5
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    #@8
    move-object/from16 v0, p0

    #@a
    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    #@c
    .line 212
    const/4 v2, -0x1

    #@d
    move-object/from16 v0, p0

    #@f
    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    #@11
    .line 215
    const/4 v2, -0x1

    #@12
    move-object/from16 v0, p0

    #@14
    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    #@16
    .line 216
    const-wide/16 v2, -0x1

    #@18
    move-object/from16 v0, p0

    #@1a
    iput-wide v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    #@1c
    .line 483
    new-instance v2, Lcom/android/server/display/DisplayPowerController$1;

    #@1e
    move-object/from16 v0, p0

    #@20
    invoke-direct {v2, v0}, Lcom/android/server/display/DisplayPowerController$1;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    #@23
    move-object/from16 v0, p0

    #@25
    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    #@27
    .line 499
    new-instance v2, Lcom/android/server/display/DisplayPowerController$2;

    #@29
    move-object/from16 v0, p0

    #@2b
    invoke-direct {v2, v0}, Lcom/android/server/display/DisplayPowerController$2;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    #@2e
    move-object/from16 v0, p0

    #@30
    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

    #@32
    .line 951
    new-instance v2, Lcom/android/server/display/DisplayPowerController$3;

    #@34
    move-object/from16 v0, p0

    #@36
    invoke-direct {v2, v0}, Lcom/android/server/display/DisplayPowerController$3;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    #@39
    move-object/from16 v0, p0

    #@3b
    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    #@3d
    .line 1048
    new-instance v2, Lcom/android/server/display/DisplayPowerController$4;

    #@3f
    move-object/from16 v0, p0

    #@41
    invoke-direct {v2, v0}, Lcom/android/server/display/DisplayPowerController$4;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    #@44
    move-object/from16 v0, p0

    #@46
    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    #@48
    .line 1061
    new-instance v2, Lcom/android/server/display/DisplayPowerController$5;

    #@4a
    move-object/from16 v0, p0

    #@4c
    invoke-direct {v2, v0}, Lcom/android/server/display/DisplayPowerController$5;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    #@4f
    move-object/from16 v0, p0

    #@51
    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    #@53
    .line 1074
    new-instance v2, Lcom/android/server/display/DisplayPowerController$6;

    #@55
    move-object/from16 v0, p0

    #@57
    invoke-direct {v2, v0}, Lcom/android/server/display/DisplayPowerController$6;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    #@5a
    move-object/from16 v0, p0

    #@5c
    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    #@5e
    .line 1246
    new-instance v2, Lcom/android/server/display/DisplayPowerController$7;

    #@60
    move-object/from16 v0, p0

    #@62
    invoke-direct {v2, v0}, Lcom/android/server/display/DisplayPowerController$7;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    #@65
    move-object/from16 v0, p0

    #@67
    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    #@69
    .line 263
    new-instance v2, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    #@6b
    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@6e
    move-result-object v3

    #@6f
    move-object/from16 v0, p0

    #@71
    invoke-direct {v2, v0, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Looper;)V

    #@74
    move-object/from16 v0, p0

    #@76
    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    #@78
    .line 264
    move-object/from16 v0, p2

    #@7a
    move-object/from16 v1, p0

    #@7c
    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    #@7e
    .line 266
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    #@81
    move-result-object v2

    #@82
    move-object/from16 v0, p0

    #@84
    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@86
    .line 267
    move-object/from16 v0, p4

    #@88
    move-object/from16 v1, p0

    #@8a
    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    #@8c
    .line 268
    const-class v2, Landroid/view/WindowManagerPolicy;

    #@8e
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@91
    move-result-object v2

    #@92
    check-cast v2, Landroid/view/WindowManagerPolicy;

    #@94
    move-object/from16 v0, p0

    #@96
    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Landroid/view/WindowManagerPolicy;

    #@98
    .line 269
    move-object/from16 v0, p5

    #@9a
    move-object/from16 v1, p0

    #@9c
    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    #@9e
    .line 270
    move-object/from16 v0, p1

    #@a0
    move-object/from16 v1, p0

    #@a2
    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    #@a4
    .line 272
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@a7
    move-result-object v21

    #@a8
    .line 274
    .local v21, "resources":Landroid/content/res/Resources;
    const v2, 0x10e0062

    #@ab
    .line 273
    move-object/from16 v0, v21

    #@ad
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@b0
    move-result v2

    #@b1
    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    #@b4
    move-result v23

    #@b5
    .line 277
    .local v23, "screenBrightnessSettingMinimum":I
    const v2, 0x10e0065

    #@b8
    .line 276
    move-object/from16 v0, v21

    #@ba
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@bd
    move-result v2

    #@be
    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    #@c1
    move-result v2

    #@c2
    move-object/from16 v0, p0

    #@c4
    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:I

    #@c6
    .line 280
    const v2, 0x10e006a

    #@c9
    .line 279
    move-object/from16 v0, v21

    #@cb
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@ce
    move-result v2

    #@cf
    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    #@d2
    move-result v2

    #@d3
    move-object/from16 v0, p0

    #@d5
    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    #@d7
    .line 283
    const v2, 0x10e006b

    #@da
    .line 282
    move-object/from16 v0, v21

    #@dc
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@df
    move-result v2

    #@e0
    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    #@e3
    move-result v2

    #@e4
    move-object/from16 v0, p0

    #@e6
    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    #@e8
    .line 284
    move-object/from16 v0, p0

    #@ea
    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    #@ec
    move-object/from16 v0, p0

    #@ee
    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    #@f0
    if-le v2, v3, :cond_0

    #@f2
    .line 285
    const-string/jumbo v2, "DisplayPowerController"

    #@f5
    new-instance v3, Ljava/lang/StringBuilder;

    #@f7
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@fa
    const-string/jumbo v4, "Expected config_screenBrightnessDark ("

    #@fd
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v3

    #@101
    .line 286
    move-object/from16 v0, p0

    #@103
    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    #@105
    .line 285
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@108
    move-result-object v3

    #@109
    .line 286
    const-string/jumbo v4, ") to be less than or equal to "

    #@10c
    .line 285
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v3

    #@110
    .line 287
    const-string/jumbo v4, "config_screenBrightnessDim ("

    #@113
    .line 285
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@116
    move-result-object v3

    #@117
    .line 287
    move-object/from16 v0, p0

    #@119
    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    #@11b
    .line 285
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v3

    #@11f
    .line 287
    const-string/jumbo v4, ")."

    #@122
    .line 285
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v3

    #@126
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@129
    move-result-object v3

    #@12a
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@12d
    .line 289
    :cond_0
    move-object/from16 v0, p0

    #@12f
    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    #@131
    move-object/from16 v0, p0

    #@133
    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    #@135
    if-le v2, v3, :cond_1

    #@137
    .line 290
    const-string/jumbo v2, "DisplayPowerController"

    #@13a
    new-instance v3, Ljava/lang/StringBuilder;

    #@13c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13f
    const-string/jumbo v4, "Expected config_screenBrightnessDark ("

    #@142
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@145
    move-result-object v3

    #@146
    .line 291
    move-object/from16 v0, p0

    #@148
    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    #@14a
    .line 290
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14d
    move-result-object v3

    #@14e
    .line 291
    const-string/jumbo v4, ") to be less than or equal to "

    #@151
    .line 290
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@154
    move-result-object v3

    #@155
    .line 292
    const-string/jumbo v4, "config_screenBrightnessSettingMinimum ("

    #@158
    .line 290
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15b
    move-result-object v3

    #@15c
    move/from16 v0, v23

    #@15e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@161
    move-result-object v3

    #@162
    .line 293
    const-string/jumbo v4, ")."

    #@165
    .line 290
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@168
    move-result-object v3

    #@169
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16c
    move-result-object v3

    #@16d
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@170
    .line 297
    :cond_1
    move-object/from16 v0, p0

    #@172
    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    #@174
    .line 296
    move/from16 v0, v23

    #@176
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    #@179
    move-result v2

    #@17a
    .line 298
    move-object/from16 v0, p0

    #@17c
    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    #@17e
    .line 296
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    #@181
    move-result v8

    #@182
    .line 300
    .local v8, "screenBrightnessRangeMinimum":I
    const/16 v2, 0xff

    #@184
    move-object/from16 v0, p0

    #@186
    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    #@188
    .line 303
    const v2, 0x1120021

    #@18b
    .line 302
    move-object/from16 v0, v21

    #@18d
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@190
    move-result v2

    #@191
    move-object/from16 v0, p0

    #@193
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    #@195
    .line 306
    const v2, 0x112004b

    #@198
    .line 305
    move-object/from16 v0, v21

    #@19a
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@19d
    move-result v2

    #@19e
    move-object/from16 v0, p0

    #@1a0
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    #@1a2
    .line 309
    const v2, 0x10e0040

    #@1a5
    .line 308
    move-object/from16 v0, v21

    #@1a7
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@1aa
    move-result v2

    #@1ab
    move-object/from16 v0, p0

    #@1ad
    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFast:I

    #@1af
    .line 312
    const v2, 0x10e0068

    #@1b2
    .line 311
    move-object/from16 v0, v21

    #@1b4
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@1b7
    move-result v11

    #@1b8
    .line 314
    .local v11, "lightSensorRate":I
    const v2, 0x10e0066

    #@1bb
    .line 313
    move-object/from16 v0, v21

    #@1bd
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@1c0
    move-result v2

    #@1c1
    int-to-long v12, v2

    #@1c2
    .line 316
    .local v12, "brighteningLightDebounce":J
    const v2, 0x10e0067

    #@1c5
    .line 315
    move-object/from16 v0, v21

    #@1c7
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@1ca
    move-result v2

    #@1cb
    int-to-long v14, v2

    #@1cc
    .line 318
    .local v14, "darkeningLightDebounce":J
    const v2, 0x112004c

    #@1cf
    .line 317
    move-object/from16 v0, v21

    #@1d1
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@1d4
    move-result v16

    #@1d5
    .line 320
    .local v16, "autoBrightnessResetAmbientLuxAfterWarmUp":Z
    const v2, 0x10e0069

    #@1d8
    .line 319
    move-object/from16 v0, v21

    #@1da
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@1dd
    move-result v17

    #@1de
    .line 322
    .local v17, "ambientLightHorizon":I
    const v2, 0x1130001

    #@1e1
    .line 323
    const/4 v3, 0x1

    #@1e2
    const/4 v4, 0x1

    #@1e3
    .line 321
    move-object/from16 v0, v21

    #@1e5
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getFraction(III)F

    #@1e8
    move-result v18

    #@1e9
    .line 325
    .local v18, "autoBrightnessAdjustmentMaxGamma":F
    move-object/from16 v0, p0

    #@1eb
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    #@1ed
    if-eqz v2, :cond_2

    #@1ef
    .line 327
    const v2, 0x1070028

    #@1f2
    .line 326
    move-object/from16 v0, v21

    #@1f4
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    #@1f7
    move-result-object v20

    #@1f8
    .line 329
    .local v20, "lux":[I
    const v2, 0x1070029

    #@1fb
    .line 328
    move-object/from16 v0, v21

    #@1fd
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    #@200
    move-result-object v22

    #@201
    .line 331
    .local v22, "screenBrightness":[I
    const v2, 0x10e006c

    #@204
    .line 330
    move-object/from16 v0, v21

    #@206
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@209
    move-result v7

    #@20a
    .line 333
    .local v7, "lightSensorWarmUpTimeConfig":I
    const v2, 0x1130002

    #@20d
    .line 334
    const/4 v3, 0x1

    #@20e
    const/4 v4, 0x1

    #@20f
    .line 332
    move-object/from16 v0, v21

    #@211
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getFraction(III)F

    #@214
    move-result v10

    #@215
    .line 336
    .local v10, "dozeScaleFactor":F
    move-object/from16 v0, v20

    #@217
    move-object/from16 v1, v22

    #@219
    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerController;->createAutoBrightnessSpline([I[I)Landroid/util/Spline;

    #@21c
    move-result-object v6

    #@21d
    .line 337
    .local v6, "screenAutoBrightnessSpline":Landroid/util/Spline;
    if-nez v6, :cond_4

    #@21f
    .line 338
    const-string/jumbo v2, "DisplayPowerController"

    #@222
    new-instance v3, Ljava/lang/StringBuilder;

    #@224
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@227
    const-string/jumbo v4, "Error in config.xml.  config_autoBrightnessLcdBacklightValues (size "

    #@22a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22d
    move-result-object v3

    #@22e
    .line 339
    move-object/from16 v0, v22

    #@230
    array-length v4, v0

    #@231
    .line 338
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@234
    move-result-object v3

    #@235
    .line 339
    const-string/jumbo v4, ") "

    #@238
    .line 338
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23b
    move-result-object v3

    #@23c
    .line 340
    const-string/jumbo v4, "must be monotic and have exactly one more entry than "

    #@23f
    .line 338
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@242
    move-result-object v3

    #@243
    .line 341
    const-string/jumbo v4, "config_autoBrightnessLevels (size "

    #@246
    .line 338
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@249
    move-result-object v3

    #@24a
    .line 341
    move-object/from16 v0, v20

    #@24c
    array-length v4, v0

    #@24d
    .line 338
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@250
    move-result-object v3

    #@251
    .line 341
    const-string/jumbo v4, ") "

    #@254
    .line 338
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@257
    move-result-object v3

    #@258
    .line 342
    const-string/jumbo v4, "which must be strictly increasing.  "

    #@25b
    .line 338
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25e
    move-result-object v3

    #@25f
    .line 343
    const-string/jumbo v4, "Auto-brightness will be disabled."

    #@262
    .line 338
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@265
    move-result-object v3

    #@266
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@269
    move-result-object v3

    #@26a
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@26d
    .line 344
    const/4 v2, 0x0

    #@26e
    move-object/from16 v0, p0

    #@270
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    #@272
    .line 366
    .end local v6    # "screenAutoBrightnessSpline":Landroid/util/Spline;
    .end local v7    # "lightSensorWarmUpTimeConfig":I
    .end local v10    # "dozeScaleFactor":F
    .end local v20    # "lux":[I
    .end local v22    # "screenBrightness":[I
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    #@274
    iput v8, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    #@276
    .line 369
    const v2, 0x1120026

    #@279
    .line 368
    move-object/from16 v0, v21

    #@27b
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@27e
    move-result v2

    #@27f
    move-object/from16 v0, p0

    #@281
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    #@283
    .line 372
    move-object/from16 v0, p0

    #@285
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    #@287
    const/16 v3, 0x8

    #@289
    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    #@28c
    move-result-object v2

    #@28d
    move-object/from16 v0, p0

    #@28f
    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    #@291
    .line 373
    move-object/from16 v0, p0

    #@293
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    #@295
    if-eqz v2, :cond_3

    #@297
    .line 374
    move-object/from16 v0, p0

    #@299
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    #@29b
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    #@29e
    move-result v2

    #@29f
    .line 375
    const/high16 v3, 0x40a00000    # 5.0f

    #@2a1
    .line 374
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    #@2a4
    move-result v2

    #@2a5
    move-object/from16 v0, p0

    #@2a7
    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    #@2a9
    .line 262
    :cond_3
    return-void

    #@2aa
    .line 346
    .restart local v6    # "screenAutoBrightnessSpline":Landroid/util/Spline;
    .restart local v7    # "lightSensorWarmUpTimeConfig":I
    .restart local v10    # "dozeScaleFactor":F
    .restart local v20    # "lux":[I
    .restart local v22    # "screenBrightness":[I
    :cond_4
    const/4 v2, 0x0

    #@2ab
    aget v2, v22, v2

    #@2ad
    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    #@2b0
    move-result v19

    #@2b1
    .line 347
    .local v19, "bottom":I
    move-object/from16 v0, p0

    #@2b3
    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    #@2b5
    move/from16 v0, v19

    #@2b7
    if-le v2, v0, :cond_5

    #@2b9
    .line 348
    const-string/jumbo v2, "DisplayPowerController"

    #@2bc
    new-instance v3, Ljava/lang/StringBuilder;

    #@2be
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2c1
    const-string/jumbo v4, "config_screenBrightnessDark ("

    #@2c4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c7
    move-result-object v3

    #@2c8
    move-object/from16 v0, p0

    #@2ca
    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    #@2cc
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2cf
    move-result-object v3

    #@2d0
    .line 349
    const-string/jumbo v4, ") should be less than or equal to the first value of "

    #@2d3
    .line 348
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d6
    move-result-object v3

    #@2d7
    .line 350
    const-string/jumbo v4, "config_autoBrightnessLcdBacklightValues ("

    #@2da
    .line 348
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2dd
    move-result-object v3

    #@2de
    move/from16 v0, v19

    #@2e0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e3
    move-result-object v3

    #@2e4
    .line 351
    const-string/jumbo v4, ")."

    #@2e7
    .line 348
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ea
    move-result-object v3

    #@2eb
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2ee
    move-result-object v3

    #@2ef
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2f2
    .line 353
    :cond_5
    move/from16 v0, v19

    #@2f4
    if-ge v0, v8, :cond_6

    #@2f6
    .line 354
    move/from16 v8, v19

    #@2f8
    .line 356
    :cond_6
    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController;

    #@2fa
    .line 357
    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@2fd
    move-result-object v4

    #@2fe
    .line 359
    move-object/from16 v0, p0

    #@300
    iget v9, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    #@302
    move-object/from16 v3, p0

    #@304
    move-object/from16 v5, p4

    #@306
    .line 356
    invoke-direct/range {v2 .. v18}, Lcom/android/server/display/AutomaticBrightnessController;-><init>(Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/util/Spline;IIIFIJJZIF)V

    #@309
    move-object/from16 v0, p0

    #@30b
    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    #@30d
    goto/16 :goto_0
.end method

.method private animateScreenBrightness(II)V
    .locals 4
    .param p1, "target"    # I
    .param p2, "rate"    # I

    #@0
    .prologue
    .line 832
    sget-boolean v1, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 833
    const-string/jumbo v1, "DisplayPowerController"

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "Animating brightness: target="

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    const-string/jumbo v3, ", rate="

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 835
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    #@2b
    invoke-virtual {v1, p1, p2}, Lcom/android/server/display/RampAnimator;->animateTo(II)Z

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_1

    #@31
    .line 837
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@33
    invoke-interface {v1, p1}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    .line 831
    :cond_1
    :goto_0
    return-void

    #@37
    .line 838
    :catch_0
    move-exception v0

    #@38
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private animateScreenStateChange(IZ)V
    .locals 6
    .param p1, "target"    # I
    .param p2, "performScreenOffTransition"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/high16 v4, 0x3f800000    # 1.0f

    #@3
    const/4 v3, 0x4

    #@4
    const/4 v0, 0x2

    #@5
    const/4 v1, 0x1

    #@6
    .line 846
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    #@8
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isStarted()Z

    #@b
    move-result v2

    #@c
    if-nez v2, :cond_0

    #@e
    .line 847
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    #@10
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isStarted()Z

    #@13
    move-result v2

    #@14
    .line 846
    if-eqz v2, :cond_2

    #@16
    .line 848
    :cond_0
    if-eq p1, v0, :cond_1

    #@18
    .line 849
    return-void

    #@19
    .line 852
    :cond_1
    iput-boolean v5, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    #@1b
    .line 858
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    #@1d
    if-eqz v2, :cond_3

    #@1f
    if-eq p1, v1, :cond_3

    #@21
    .line 859
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    #@24
    .line 860
    iput-boolean v5, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    #@26
    .line 861
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@28
    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->dismissColorFadeResources()V

    #@2b
    .line 864
    :cond_3
    if-ne p1, v0, :cond_5

    #@2d
    .line 868
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    #@30
    move-result v0

    #@31
    if-nez v0, :cond_4

    #@33
    .line 869
    return-void

    #@34
    .line 885
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@36
    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    #@39
    .line 886
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@3b
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    #@3e
    .line 844
    :goto_0
    return-void

    #@3f
    .line 888
    :cond_5
    const/4 v2, 0x3

    #@40
    if-ne p1, v2, :cond_8

    #@42
    .line 893
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    #@44
    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    #@47
    move-result v1

    #@48
    if-eqz v1, :cond_6

    #@4a
    .line 894
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@4c
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    #@4f
    move-result v1

    #@50
    if-ne v1, v0, :cond_6

    #@52
    .line 895
    return-void

    #@53
    .line 899
    :cond_6
    const/4 v0, 0x3

    #@54
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    #@57
    move-result v0

    #@58
    if-nez v0, :cond_7

    #@5a
    .line 900
    return-void

    #@5b
    .line 904
    :cond_7
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@5d
    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    #@60
    .line 905
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@62
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    #@65
    goto :goto_0

    #@66
    .line 906
    :cond_8
    if-ne p1, v3, :cond_c

    #@68
    .line 910
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    #@6a
    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    #@6d
    move-result v0

    #@6e
    if-eqz v0, :cond_9

    #@70
    .line 911
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@72
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    #@75
    move-result v0

    #@76
    if-eq v0, v3, :cond_9

    #@78
    .line 912
    return-void

    #@79
    .line 917
    :cond_9
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@7b
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    #@7e
    move-result v0

    #@7f
    if-eq v0, v3, :cond_b

    #@81
    .line 918
    const/4 v0, 0x3

    #@82
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    #@85
    move-result v0

    #@86
    if-nez v0, :cond_a

    #@88
    .line 919
    return-void

    #@89
    .line 921
    :cond_a
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    #@8c
    .line 925
    :cond_b
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@8e
    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    #@91
    .line 926
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@93
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    #@96
    goto :goto_0

    #@97
    .line 929
    :cond_c
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    #@99
    .line 930
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@9b
    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    #@9e
    move-result v2

    #@9f
    const/4 v3, 0x0

    #@a0
    cmpl-float v2, v2, v3

    #@a2
    if-nez v2, :cond_d

    #@a4
    .line 933
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    #@a7
    .line 934
    iput-boolean v5, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    #@a9
    .line 935
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@ab
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFadeResources()V

    #@ae
    goto :goto_0

    #@af
    .line 936
    :cond_d
    if-eqz p2, :cond_f

    #@b1
    .line 937
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@b3
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    #@b5
    .line 938
    iget-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    #@b7
    if-eqz v4, :cond_e

    #@b9
    .line 937
    :goto_1
    invoke-virtual {v2, v3, v0}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    #@bc
    move-result v0

    #@bd
    .line 936
    if-eqz v0, :cond_f

    #@bf
    .line 940
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@c1
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    #@c4
    move-result v0

    #@c5
    if-eq v0, v1, :cond_f

    #@c7
    .line 942
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    #@c9
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    #@cc
    goto/16 :goto_0

    #@ce
    :cond_e
    move v0, v1

    #@cf
    .line 939
    goto :goto_1

    #@d0
    .line 946
    :cond_f
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    #@d2
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    #@d5
    goto/16 :goto_0
.end method

.method private blockScreenOn()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 770
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 771
    const-string/jumbo v0, "Screen on blocked"

    #@8
    const-wide/32 v2, 0x20000

    #@b
    const/4 v1, 0x0

    #@c
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    #@f
    .line 772
    new-instance v0, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    #@11
    invoke-direct {v0, p0, v4}, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;)V

    #@14
    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    #@16
    .line 773
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@19
    move-result-wide v0

    #@1a
    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    #@1c
    .line 774
    const-string/jumbo v0, "DisplayPowerController"

    #@1f
    const-string/jumbo v1, "Blocking screen on until initial contents have been drawn."

    #@22
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 769
    :cond_0
    return-void
.end method

.method private static clampAbsoluteBrightness(I)I
    .locals 2
    .param p0, "value"    # I

    #@0
    .prologue
    .line 1217
    const/4 v0, 0x0

    #@1
    const/16 v1, 0xff

    #@3
    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method private clampScreenBrightness(I)I
    .locals 2
    .param p1, "value"    # I

    #@0
    .prologue
    .line 828
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    #@2
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    #@4
    .line 827
    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method private clearPendingProximityDebounceTime()V
    .locals 4

    #@0
    .prologue
    .line 1030
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-ltz v0, :cond_0

    #@8
    .line 1031
    const-wide/16 v0, -0x1

    #@a
    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    #@c
    .line 1032
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    #@e
    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker()V

    #@11
    .line 1029
    :cond_0
    return-void
.end method

.method private static createAutoBrightnessSpline([I[I)Landroid/util/Spline;
    .locals 14
    .param p0, "lux"    # [I
    .param p1, "brightness"    # [I

    #@0
    .prologue
    const/high16 v13, 0x3fa00000    # 1.25f

    #@2
    const/4 v12, 0x0

    #@3
    .line 1184
    if-eqz p0, :cond_0

    #@5
    array-length v7, p0

    #@6
    if-nez v7, :cond_1

    #@8
    .line 1185
    :cond_0
    const-string/jumbo v7, "DisplayPowerController"

    #@b
    const-string/jumbo v8, "Could not create auto-brightness spline."

    #@e
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 1186
    return-object v12

    #@12
    .line 1184
    :cond_1
    if-eqz p1, :cond_0

    #@14
    array-length v7, p1

    #@15
    if-eqz v7, :cond_0

    #@17
    .line 1189
    :try_start_0
    array-length v2, p1

    #@18
    .line 1190
    .local v2, "n":I
    new-array v5, v2, [F

    #@1a
    .line 1191
    .local v5, "x":[F
    new-array v6, v2, [F

    #@1c
    .line 1192
    .local v6, "y":[F
    const/4 v7, 0x0

    #@1d
    aget v7, p1, v7

    #@1f
    invoke-static {v7}, Lcom/android/server/display/DisplayPowerController;->normalizeAbsoluteBrightness(I)F

    #@22
    move-result v7

    #@23
    const/4 v8, 0x0

    #@24
    aput v7, v6, v8

    #@26
    .line 1193
    const/4 v1, 0x1

    #@27
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    #@29
    .line 1194
    add-int/lit8 v7, v1, -0x1

    #@2b
    aget v7, p0, v7

    #@2d
    int-to-float v7, v7

    #@2e
    aput v7, v5, v1

    #@30
    .line 1195
    aget v7, p1, v1

    #@32
    invoke-static {v7}, Lcom/android/server/display/DisplayPowerController;->normalizeAbsoluteBrightness(I)F

    #@35
    move-result v7

    #@36
    aput v7, v6, v1

    #@38
    .line 1193
    add-int/lit8 v1, v1, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 1198
    :cond_2
    invoke-static {v5, v6}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    #@3e
    move-result-object v3

    #@3f
    .line 1199
    .local v3, "spline":Landroid/util/Spline;
    sget-boolean v7, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    #@41
    if-eqz v7, :cond_3

    #@43
    .line 1200
    const-string/jumbo v7, "DisplayPowerController"

    #@46
    new-instance v8, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v9, "Auto-brightness spline: "

    #@4e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v8

    #@52
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v8

    #@56
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v8

    #@5a
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5d
    .line 1201
    const/high16 v4, 0x3f800000    # 1.0f

    #@5f
    .local v4, "v":F
    :goto_1
    array-length v7, p0

    #@60
    add-int/lit8 v7, v7, -0x1

    #@62
    aget v7, p0, v7

    #@64
    int-to-float v7, v7

    #@65
    mul-float/2addr v7, v13

    #@66
    cmpg-float v7, v4, v7

    #@68
    if-gez v7, :cond_3

    #@6a
    .line 1202
    const-string/jumbo v7, "DisplayPowerController"

    #@6d
    const-string/jumbo v8, "  %7.1f: %7.1f"

    #@70
    const/4 v9, 0x2

    #@71
    new-array v9, v9, [Ljava/lang/Object;

    #@73
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@76
    move-result-object v10

    #@77
    const/4 v11, 0x0

    #@78
    aput-object v10, v9, v11

    #@7a
    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    #@7d
    move-result v10

    #@7e
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@81
    move-result-object v10

    #@82
    const/4 v11, 0x1

    #@83
    aput-object v10, v9, v11

    #@85
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@88
    move-result-object v8

    #@89
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@8c
    .line 1201
    mul-float/2addr v4, v13

    #@8d
    goto :goto_1

    #@8e
    .line 1205
    .end local v4    # "v":F
    :cond_3
    return-object v3

    #@8f
    .line 1206
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "spline":Landroid/util/Spline;
    .end local v5    # "x":[F
    .end local v6    # "y":[F
    :catch_0
    move-exception v0

    #@90
    .line 1207
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v7, "DisplayPowerController"

    #@93
    const-string/jumbo v8, "Could not create auto-brightness spline."

    #@96
    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@99
    .line 1208
    return-object v12
.end method

.method private debounceProximitySensor()V
    .locals 8

    #@0
    .prologue
    .line 1010
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1011
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    #@6
    const/4 v4, -0x1

    #@7
    if-eq v1, v4, :cond_0

    #@9
    .line 1012
    iget-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    #@b
    const-wide/16 v6, 0x0

    #@d
    cmp-long v1, v4, v6

    #@f
    if-ltz v1, :cond_0

    #@11
    .line 1013
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@14
    move-result-wide v2

    #@15
    .line 1014
    .local v2, "now":J
    iget-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    #@17
    cmp-long v1, v4, v2

    #@19
    if-gtz v1, :cond_1

    #@1b
    .line 1016
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    #@1d
    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    #@1f
    .line 1017
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    #@22
    .line 1018
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->clearPendingProximityDebounceTime()V

    #@25
    .line 1009
    .end local v2    # "now":J
    :cond_0
    :goto_0
    return-void

    #@26
    .line 1022
    .restart local v2    # "now":J
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    #@28
    const/4 v4, 0x2

    #@29
    invoke-virtual {v1, v4}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    #@2c
    move-result-object v0

    #@2d
    .line 1023
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    #@2e
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    #@31
    .line 1024
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    #@33
    iget-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    #@35
    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    #@38
    goto :goto_0
.end method

.method private dumpLocal(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 1115
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@3
    .line 1116
    const-string/jumbo v0, "Display Power Controller Thread State:"

    #@6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9
    .line 1117
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v1, "  mPowerRequest="

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

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
    .line 1118
    new-instance v0, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v1, "  mWaitingForNegativeProximity="

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3b
    .line 1120
    new-instance v0, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v1, "  mProximitySensor="

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    #@49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v0

    #@51
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@54
    .line 1121
    new-instance v0, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v1, "  mProximitySensorEnabled="

    #@5c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    #@62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@65
    move-result-object v0

    #@66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v0

    #@6a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6d
    .line 1122
    new-instance v0, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v1, "  mProximityThreshold="

    #@75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v0

    #@79
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    #@7b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v0

    #@7f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v0

    #@83
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@86
    .line 1123
    new-instance v0, Ljava/lang/StringBuilder;

    #@88
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    const-string/jumbo v1, "  mProximity="

    #@8e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v0

    #@92
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    #@94
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    #@97
    move-result-object v1

    #@98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v0

    #@9c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v0

    #@a0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a3
    .line 1124
    new-instance v0, Ljava/lang/StringBuilder;

    #@a5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a8
    const-string/jumbo v1, "  mPendingProximity="

    #@ab
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v0

    #@af
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    #@b1
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    #@b4
    move-result-object v1

    #@b5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v0

    #@b9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bc
    move-result-object v0

    #@bd
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c0
    .line 1125
    new-instance v0, Ljava/lang/StringBuilder;

    #@c2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c5
    const-string/jumbo v1, "  mPendingProximityDebounceTime="

    #@c8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v0

    #@cc
    .line 1126
    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    #@ce
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    #@d1
    move-result-object v1

    #@d2
    .line 1125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v0

    #@d6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d9
    move-result-object v0

    #@da
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@dd
    .line 1127
    new-instance v0, Ljava/lang/StringBuilder;

    #@df
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e2
    const-string/jumbo v1, "  mScreenOffBecauseOfProximity="

    #@e5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v0

    #@e9
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    #@eb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v0

    #@ef
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f2
    move-result-object v0

    #@f3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f6
    .line 1128
    new-instance v0, Ljava/lang/StringBuilder;

    #@f8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@fb
    const-string/jumbo v1, "  mAppliedAutoBrightness="

    #@fe
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v0

    #@102
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    #@104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@107
    move-result-object v0

    #@108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10b
    move-result-object v0

    #@10c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10f
    .line 1129
    new-instance v0, Ljava/lang/StringBuilder;

    #@111
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@114
    const-string/jumbo v1, "  mAppliedDimming="

    #@117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v0

    #@11b
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    #@11d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@120
    move-result-object v0

    #@121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@124
    move-result-object v0

    #@125
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@128
    .line 1130
    new-instance v0, Ljava/lang/StringBuilder;

    #@12a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@12d
    const-string/jumbo v1, "  mAppliedLowPower="

    #@130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@133
    move-result-object v0

    #@134
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    #@136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@139
    move-result-object v0

    #@13a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13d
    move-result-object v0

    #@13e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@141
    .line 1131
    new-instance v0, Ljava/lang/StringBuilder;

    #@143
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@146
    const-string/jumbo v1, "  mPendingScreenOnUnblocker="

    #@149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14c
    move-result-object v0

    #@14d
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    #@14f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@152
    move-result-object v0

    #@153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@156
    move-result-object v0

    #@157
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@15a
    .line 1132
    new-instance v0, Ljava/lang/StringBuilder;

    #@15c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@15f
    const-string/jumbo v1, "  mPendingScreenOff="

    #@162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@165
    move-result-object v0

    #@166
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    #@168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@16b
    move-result-object v0

    #@16c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16f
    move-result-object v0

    #@170
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@173
    .line 1133
    new-instance v0, Ljava/lang/StringBuilder;

    #@175
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@178
    const-string/jumbo v1, "  mReportedToPolicy="

    #@17b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17e
    move-result-object v0

    #@17f
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    #@181
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->reportedToPolicyToString(I)Ljava/lang/String;

    #@184
    move-result-object v1

    #@185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@188
    move-result-object v0

    #@189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18c
    move-result-object v0

    #@18d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@190
    .line 1135
    new-instance v0, Ljava/lang/StringBuilder;

    #@192
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@195
    const-string/jumbo v1, "  mScreenBrightnessRampAnimator.isAnimating()="

    #@198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19b
    move-result-object v0

    #@19c
    .line 1136
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    #@19e
    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    #@1a1
    move-result v1

    #@1a2
    .line 1135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1a5
    move-result-object v0

    #@1a6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a9
    move-result-object v0

    #@1aa
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1ad
    .line 1138
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    #@1af
    if-eqz v0, :cond_0

    #@1b1
    .line 1139
    new-instance v0, Ljava/lang/StringBuilder;

    #@1b3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1b6
    const-string/jumbo v1, "  mColorFadeOnAnimator.isStarted()="

    #@1b9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bc
    move-result-object v0

    #@1bd
    .line 1140
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    #@1bf
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    #@1c2
    move-result v1

    #@1c3
    .line 1139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1c6
    move-result-object v0

    #@1c7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ca
    move-result-object v0

    #@1cb
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1ce
    .line 1142
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    #@1d0
    if-eqz v0, :cond_1

    #@1d2
    .line 1143
    new-instance v0, Ljava/lang/StringBuilder;

    #@1d4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1d7
    const-string/jumbo v1, "  mColorFadeOffAnimator.isStarted()="

    #@1da
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1dd
    move-result-object v0

    #@1de
    .line 1144
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    #@1e0
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    #@1e3
    move-result v1

    #@1e4
    .line 1143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1e7
    move-result-object v0

    #@1e8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1eb
    move-result-object v0

    #@1ec
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1ef
    .line 1147
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@1f1
    if-eqz v0, :cond_2

    #@1f3
    .line 1148
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@1f5
    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayPowerState;->dump(Ljava/io/PrintWriter;)V

    #@1f8
    .line 1151
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    #@1fa
    if-eqz v0, :cond_3

    #@1fc
    .line 1152
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    #@1fe
    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->dump(Ljava/io/PrintWriter;)V

    #@201
    .line 1114
    :cond_3
    return-void
.end method

.method private handleProximitySensorEvent(JZ)V
    .locals 5
    .param p1, "time"    # J
    .param p3, "positive"    # Z

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 982
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    #@4
    if-eqz v0, :cond_3

    #@6
    .line 983
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    #@8
    if-nez v0, :cond_0

    #@a
    if-eqz p3, :cond_1

    #@c
    .line 986
    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    #@e
    if-ne v0, v3, :cond_2

    #@10
    if-eqz p3, :cond_2

    #@12
    .line 987
    return-void

    #@13
    .line 984
    :cond_1
    return-void

    #@14
    .line 993
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    #@16
    const/4 v1, 0x2

    #@17
    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    #@1a
    .line 994
    if-eqz p3, :cond_4

    #@1c
    .line 995
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    #@1e
    .line 997
    const-wide/16 v0, 0x0

    #@20
    add-long/2addr v0, p1

    #@21
    .line 996
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    #@24
    .line 1005
    :goto_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->debounceProximitySensor()V

    #@27
    .line 981
    :cond_3
    return-void

    #@28
    .line 999
    :cond_4
    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    #@2a
    .line 1001
    const-wide/16 v0, 0xfa

    #@2c
    add-long/2addr v0, p1

    #@2d
    .line 1000
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    #@30
    goto :goto_0
.end method

.method private initialize()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    .line 457
    new-instance v1, Lcom/android/server/display/DisplayPowerState;

    #@3
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    #@5
    .line 458
    new-instance v3, Lcom/android/server/display/ColorFade;

    #@7
    const/4 v4, 0x0

    #@8
    invoke-direct {v3, v4}, Lcom/android/server/display/ColorFade;-><init>(I)V

    #@b
    .line 457
    invoke-direct {v1, v2, v3}, Lcom/android/server/display/DisplayPowerState;-><init>(Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/ColorFade;)V

    #@e
    iput-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@10
    .line 461
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@12
    sget-object v2, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    #@14
    .line 460
    new-array v3, v5, [F

    #@16
    fill-array-data v3, :array_0

    #@19
    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@1c
    move-result-object v1

    #@1d
    iput-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    #@1f
    .line 462
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    #@21
    const-wide/16 v2, 0xfa

    #@23
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@26
    .line 463
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    #@28
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    #@2a
    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@2d
    .line 466
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@2f
    sget-object v2, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    #@31
    .line 465
    new-array v3, v5, [F

    #@33
    fill-array-data v3, :array_1

    #@36
    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@39
    move-result-object v1

    #@3a
    iput-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    #@3c
    .line 467
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    #@3e
    const-wide/16 v2, 0x190

    #@40
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@43
    .line 468
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    #@45
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    #@47
    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@4a
    .line 470
    new-instance v1, Lcom/android/server/display/RampAnimator;

    #@4c
    .line 471
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@4e
    sget-object v3, Lcom/android/server/display/DisplayPowerState;->SCREEN_BRIGHTNESS:Landroid/util/IntProperty;

    #@50
    .line 470
    invoke-direct {v1, v2, v3}, Lcom/android/server/display/RampAnimator;-><init>(Ljava/lang/Object;Landroid/util/IntProperty;)V

    #@53
    iput-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    #@55
    .line 472
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    #@57
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

    #@59
    invoke-virtual {v1, v2}, Lcom/android/server/display/RampAnimator;->setListener(Lcom/android/server/display/RampAnimator$Listener;)V

    #@5c
    .line 476
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@5e
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@60
    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    #@63
    move-result v2

    #@64
    invoke-interface {v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteScreenState(I)V

    #@67
    .line 477
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@69
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@6b
    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()I

    #@6e
    move-result v2

    #@6f
    invoke-interface {v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@72
    .line 454
    :goto_0
    return-void

    #@73
    .line 478
    :catch_0
    move-exception v0

    #@74
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    #@75
    .line 460
    nop

    #@76
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    #@7e
    .line 465
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private static normalizeAbsoluteBrightness(I)F
    .locals 2
    .param p0, "value"    # I

    #@0
    .prologue
    .line 1213
    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    #@3
    move-result v0

    #@4
    int-to-float v0, v0

    #@5
    const/high16 v1, 0x437f0000    # 255.0f

    #@7
    div-float/2addr v0, v1

    #@8
    return v0
.end method

.method private static proximityToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    #@0
    .prologue
    .line 1158
    packed-switch p0, :pswitch_data_0

    #@3
    .line 1166
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 1160
    :pswitch_0
    const-string/jumbo v0, "Unknown"

    #@b
    return-object v0

    #@c
    .line 1162
    :pswitch_1
    const-string/jumbo v0, "Negative"

    #@f
    return-object v0

    #@10
    .line 1164
    :pswitch_2
    const-string/jumbo v0, "Positive"

    #@13
    return-object v0

    #@14
    .line 1158
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static reportedToPolicyToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    #@0
    .prologue
    .line 1171
    packed-switch p0, :pswitch_data_0

    #@3
    .line 1179
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 1173
    :pswitch_0
    const-string/jumbo v0, "REPORTED_TO_POLICY_SCREEN_OFF"

    #@b
    return-object v0

    #@c
    .line 1175
    :pswitch_1
    const-string/jumbo v0, "REPORTED_TO_POLICY_SCREEN_TURNING_ON"

    #@f
    return-object v0

    #@10
    .line 1177
    :pswitch_2
    const-string/jumbo v0, "REPORTED_TO_POLICY_SCREEN_ON"

    #@13
    return-object v0

    #@14
    .line 1171
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private sendOnProximityNegativeWithWakelock()V
    .locals 2

    #@0
    .prologue
    .line 1070
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    #@2
    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    #@5
    .line 1071
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    #@7
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    #@9
    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    #@c
    .line 1069
    return-void
.end method

.method private sendOnProximityPositiveWithWakelock()V
    .locals 2

    #@0
    .prologue
    .line 1057
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    #@2
    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    #@5
    .line 1058
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    #@7
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    #@9
    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    #@c
    .line 1056
    return-void
.end method

.method private sendOnStateChangedWithWakelock()V
    .locals 2

    #@0
    .prologue
    .line 1044
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    #@2
    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    #@5
    .line 1045
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    #@7
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    #@9
    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    #@c
    .line 1043
    return-void
.end method

.method private sendUpdatePowerState()V
    .locals 2

    #@0
    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 441
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 439
    return-void

    #@8
    .line 440
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method

.method private sendUpdatePowerStateLocked()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 446
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 447
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    #@7
    .line 448
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    #@9
    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    #@c
    move-result-object v0

    #@d
    .line 449
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    #@10
    .line 450
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    #@12
    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessage(Landroid/os/Message;)Z

    #@15
    .line 445
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private setPendingProximityDebounceTime(J)V
    .locals 5
    .param p1, "debounceTime"    # J

    #@0
    .prologue
    .line 1037
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-gez v0, :cond_0

    #@8
    .line 1038
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    #@a
    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    #@d
    .line 1040
    :cond_0
    iput-wide p1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    #@f
    .line 1036
    return-void
.end method

.method private setProximitySensorEnabled(Z)V
    .locals 5
    .param p1, "enable"    # Z

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 959
    if-eqz p1, :cond_1

    #@3
    .line 960
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 963
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    #@a
    .line 964
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    #@c
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    #@e
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    #@10
    .line 965
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    #@12
    const/4 v4, 0x3

    #@13
    .line 964
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    #@16
    .line 958
    :cond_0
    :goto_0
    return-void

    #@17
    .line 968
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    #@19
    if-eqz v0, :cond_0

    #@1b
    .line 971
    const/4 v0, 0x0

    #@1c
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    #@1e
    .line 972
    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    #@20
    .line 973
    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    #@22
    .line 974
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    #@24
    const/4 v1, 0x2

    #@25
    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    #@28
    .line 975
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    #@2a
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    #@2c
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    #@2f
    .line 976
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->clearPendingProximityDebounceTime()V

    #@32
    goto :goto_0
.end method

.method private setScreenState(I)Z
    .locals 7
    .param p1, "state"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 788
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@4
    invoke-virtual {v5}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    #@7
    move-result v5

    #@8
    if-eq v5, p1, :cond_0

    #@a
    .line 789
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@c
    invoke-virtual {v5}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    #@f
    move-result v5

    #@10
    if-eq v5, v3, :cond_3

    #@12
    const/4 v2, 0x1

    #@13
    .line 790
    .local v2, "wasOn":Z
    :goto_0
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@15
    invoke-virtual {v5, p1}, Lcom/android/server/display/DisplayPowerState;->setScreenState(I)V

    #@18
    .line 794
    :try_start_0
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@1a
    invoke-interface {v5, p1}, Lcom/android/internal/app/IBatteryStats;->noteScreenState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 806
    .end local v2    # "wasOn":Z
    :cond_0
    :goto_1
    if-ne p1, v3, :cond_4

    #@1f
    move v1, v3

    #@20
    .line 807
    .local v1, "isOff":Z
    :goto_2
    if-eqz v1, :cond_1

    #@22
    iget v5, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    #@24
    if-eqz v5, :cond_1

    #@26
    .line 808
    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    #@28
    if-eqz v5, :cond_5

    #@2a
    .line 812
    :cond_1
    if-nez v1, :cond_2

    #@2c
    iget v5, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    #@2e
    if-nez v5, :cond_2

    #@30
    .line 813
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    #@32
    .line 814
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@34
    invoke-virtual {v5}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    #@37
    move-result v5

    #@38
    const/4 v6, 0x0

    #@39
    cmpl-float v5, v5, v6

    #@3b
    if-nez v5, :cond_6

    #@3d
    .line 815
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->blockScreenOn()V

    #@40
    .line 819
    :goto_3
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Landroid/view/WindowManagerPolicy;

    #@42
    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    #@44
    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    #@47
    .line 823
    :cond_2
    :goto_4
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    #@49
    if-nez v5, :cond_7

    #@4b
    :goto_5
    return v3

    #@4c
    .line 789
    .end local v1    # "isOff":Z
    :cond_3
    const/4 v2, 0x0

    #@4d
    .restart local v2    # "wasOn":Z
    goto :goto_0

    #@4e
    .end local v2    # "wasOn":Z
    :cond_4
    move v1, v4

    #@4f
    .line 806
    goto :goto_2

    #@50
    .line 809
    .restart local v1    # "isOff":Z
    :cond_5
    iput v4, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    #@52
    .line 810
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    #@55
    .line 811
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Landroid/view/WindowManagerPolicy;

    #@57
    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->screenTurnedOff()V

    #@5a
    goto :goto_4

    #@5b
    .line 817
    :cond_6
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    #@5e
    goto :goto_3

    #@5f
    :cond_7
    move v3, v4

    #@60
    .line 823
    goto :goto_5

    #@61
    .line 795
    .end local v1    # "isOff":Z
    .restart local v2    # "wasOn":Z
    :catch_0
    move-exception v0

    #@62
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private unblockScreenOn()V
    .locals 6

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 779
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 780
    iput-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    #@7
    .line 781
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@a
    move-result-wide v2

    #@b
    iget-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    #@d
    sub-long v0, v2, v4

    #@f
    .line 782
    .local v0, "delay":J
    const-string/jumbo v2, "DisplayPowerController"

    #@12
    new-instance v3, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v4, "Unblocked screen on after "

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    const-string/jumbo v4, " ms"

    #@25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 783
    const-string/jumbo v2, "Screen on blocked"

    #@33
    const-wide/32 v4, 0x20000

    #@36
    const/4 v3, 0x0

    #@37
    invoke-static {v4, v5, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    #@3a
    .line 778
    .end local v0    # "delay":J
    :cond_0
    return-void
.end method

.method private updatePowerState()V
    .locals 18

    #@0
    .prologue
    .line 509
    const/4 v12, 0x0

    #@1
    .line 510
    .local v12, "mustInitialize":Z
    const/4 v8, 0x0

    #@2
    .line 512
    .local v8, "autoBrightnessAdjustmentChanged":Z
    move-object/from16 v0, p0

    #@4
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v4

    #@7
    .line 513
    const/4 v2, 0x0

    #@8
    :try_start_0
    move-object/from16 v0, p0

    #@a
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    #@c
    .line 514
    move-object/from16 v0, p0

    #@e
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    if-nez v2, :cond_0

    #@12
    monitor-exit v4

    #@13
    .line 515
    return-void

    #@14
    .line 518
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    #@16
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@18
    if-nez v2, :cond_4

    #@1a
    .line 519
    new-instance v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@1c
    move-object/from16 v0, p0

    #@1e
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@20
    invoke-direct {v2, v5}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    #@23
    move-object/from16 v0, p0

    #@25
    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@27
    .line 520
    move-object/from16 v0, p0

    #@29
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    #@2b
    move-object/from16 v0, p0

    #@2d
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    #@2f
    .line 521
    const/4 v2, 0x0

    #@30
    move-object/from16 v0, p0

    #@32
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    #@34
    .line 522
    const/4 v2, 0x0

    #@35
    move-object/from16 v0, p0

    #@37
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    #@39
    .line 523
    const/4 v12, 0x1

    #@3a
    .line 534
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    #@3c
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    if-eqz v2, :cond_6

    #@40
    const/4 v13, 0x0

    #@41
    .local v13, "mustNotify":Z
    :goto_1
    monitor-exit v4

    #@42
    .line 538
    if-eqz v12, :cond_2

    #@44
    .line 539
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->initialize()V

    #@47
    .line 545
    :cond_2
    const/4 v10, -0x1

    #@48
    .line 546
    .local v10, "brightness":I
    const/4 v14, 0x0

    #@49
    .line 547
    .local v14, "performScreenOffTransition":Z
    move-object/from16 v0, p0

    #@4b
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@4d
    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    #@4f
    packed-switch v2, :pswitch_data_0

    #@52
    .line 565
    const/16 v17, 0x2

    #@54
    .line 568
    .local v17, "state":I
    :cond_3
    :goto_2
    sget-boolean v2, Lcom/android/server/display/DisplayPowerController;->-assertionsDisabled:Z

    #@56
    if-nez v2, :cond_9

    #@58
    if-eqz v17, :cond_8

    #@5a
    const/4 v2, 0x1

    #@5b
    :goto_3
    if-nez v2, :cond_9

    #@5d
    new-instance v2, Ljava/lang/AssertionError;

    #@5f
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@62
    throw v2

    #@63
    .line 524
    .end local v10    # "brightness":I
    .end local v13    # "mustNotify":Z
    .end local v14    # "performScreenOffTransition":Z
    .end local v17    # "state":I
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    #@65
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    #@67
    if-eqz v2, :cond_1

    #@69
    .line 525
    move-object/from16 v0, p0

    #@6b
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@6d
    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    #@6f
    .line 526
    move-object/from16 v0, p0

    #@71
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@73
    iget v5, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    #@75
    .line 525
    cmpl-float v2, v2, v5

    #@77
    if-eqz v2, :cond_5

    #@79
    const/4 v8, 0x1

    #@7a
    .line 527
    :goto_4
    move-object/from16 v0, p0

    #@7c
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@7e
    move-object/from16 v0, p0

    #@80
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@82
    invoke-virtual {v2, v5}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    #@85
    .line 528
    move-object/from16 v0, p0

    #@87
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    #@89
    move-object/from16 v0, p0

    #@8b
    iget-boolean v5, v0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    #@8d
    or-int/2addr v2, v5

    #@8e
    move-object/from16 v0, p0

    #@90
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    #@92
    .line 529
    const/4 v2, 0x0

    #@93
    move-object/from16 v0, p0

    #@95
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    #@97
    .line 530
    const/4 v2, 0x0

    #@98
    move-object/from16 v0, p0

    #@9a
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    #@9c
    .line 531
    const/4 v2, 0x0

    #@9d
    move-object/from16 v0, p0

    #@9f
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@a1
    goto :goto_0

    #@a2
    .line 512
    :catchall_0
    move-exception v2

    #@a3
    monitor-exit v4

    #@a4
    throw v2

    #@a5
    .line 525
    :cond_5
    const/4 v8, 0x0

    #@a6
    goto :goto_4

    #@a7
    .line 534
    :cond_6
    const/4 v13, 0x1

    #@a8
    .restart local v13    # "mustNotify":Z
    goto :goto_1

    #@a9
    .line 549
    .restart local v10    # "brightness":I
    .restart local v14    # "performScreenOffTransition":Z
    :pswitch_0
    const/16 v17, 0x1

    #@ab
    .line 550
    .restart local v17    # "state":I
    const/4 v14, 0x1

    #@ac
    .line 551
    goto :goto_2

    #@ad
    .line 553
    .end local v17    # "state":I
    :pswitch_1
    move-object/from16 v0, p0

    #@af
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@b1
    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    #@b3
    if-eqz v2, :cond_7

    #@b5
    .line 554
    move-object/from16 v0, p0

    #@b7
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@b9
    iget v0, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    #@bb
    move/from16 v17, v0

    #@bd
    .line 558
    .restart local v17    # "state":I
    :goto_5
    move-object/from16 v0, p0

    #@bf
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    #@c1
    if-nez v2, :cond_3

    #@c3
    .line 559
    move-object/from16 v0, p0

    #@c5
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@c7
    iget v10, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    #@c9
    goto :goto_2

    #@ca
    .line 556
    .end local v17    # "state":I
    :cond_7
    const/16 v17, 0x3

    #@cc
    .restart local v17    # "state":I
    goto :goto_5

    #@cd
    .line 568
    :cond_8
    const/4 v2, 0x0

    #@ce
    goto :goto_3

    #@cf
    .line 571
    :cond_9
    move-object/from16 v0, p0

    #@d1
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    #@d3
    if-eqz v2, :cond_28

    #@d5
    .line 572
    move-object/from16 v0, p0

    #@d7
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@d9
    iget-boolean v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    #@db
    if-eqz v2, :cond_26

    #@dd
    const/4 v2, 0x1

    #@de
    move/from16 v0, v17

    #@e0
    if-eq v0, v2, :cond_26

    #@e2
    .line 573
    const/4 v2, 0x1

    #@e3
    move-object/from16 v0, p0

    #@e5
    invoke-direct {v0, v2}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    #@e8
    .line 574
    move-object/from16 v0, p0

    #@ea
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    #@ec
    if-nez v2, :cond_a

    #@ee
    .line 575
    move-object/from16 v0, p0

    #@f0
    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    #@f2
    const/4 v4, 0x1

    #@f3
    if-ne v2, v4, :cond_a

    #@f5
    .line 576
    const/4 v2, 0x1

    #@f6
    move-object/from16 v0, p0

    #@f8
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    #@fa
    .line 577
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityPositiveWithWakelock()V

    #@fd
    .line 588
    :cond_a
    :goto_6
    move-object/from16 v0, p0

    #@ff
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    #@101
    if-eqz v2, :cond_b

    #@103
    .line 589
    move-object/from16 v0, p0

    #@105
    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    #@107
    const/4 v4, 0x1

    #@108
    if-eq v2, v4, :cond_b

    #@10a
    .line 590
    const/4 v2, 0x0

    #@10b
    move-object/from16 v0, p0

    #@10d
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    #@10f
    .line 591
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityNegativeWithWakelock()V

    #@112
    .line 596
    :cond_b
    :goto_7
    move-object/from16 v0, p0

    #@114
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    #@116
    if-eqz v2, :cond_c

    #@118
    .line 597
    const/16 v17, 0x1

    #@11a
    .line 603
    :cond_c
    move-object/from16 v0, p0

    #@11c
    move/from16 v1, v17

    #@11e
    invoke-direct {v0, v1, v14}, Lcom/android/server/display/DisplayPowerController;->animateScreenStateChange(IZ)V

    #@121
    .line 604
    move-object/from16 v0, p0

    #@123
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@125
    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    #@128
    move-result v17

    #@129
    .line 607
    const/4 v2, 0x1

    #@12a
    move/from16 v0, v17

    #@12c
    if-ne v0, v2, :cond_d

    #@12e
    .line 608
    const/4 v10, 0x0

    #@12f
    .line 612
    :cond_d
    const/4 v3, 0x0

    #@130
    .line 613
    .local v3, "autoBrightnessEnabled":Z
    move-object/from16 v0, p0

    #@132
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    #@134
    if-eqz v2, :cond_10

    #@136
    .line 614
    move-object/from16 v0, p0

    #@138
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    #@13a
    if-eqz v2, :cond_2a

    #@13c
    .line 615
    const/4 v2, 0x3

    #@13d
    move/from16 v0, v17

    #@13f
    if-eq v0, v2, :cond_e

    #@141
    const/4 v2, 0x4

    #@142
    move/from16 v0, v17

    #@144
    if-ne v0, v2, :cond_29

    #@146
    :cond_e
    const/4 v9, 0x1

    #@147
    .line 616
    .local v9, "autoBrightnessEnabledInDoze":Z
    :goto_8
    move-object/from16 v0, p0

    #@149
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@14b
    iget-boolean v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    #@14d
    if-eqz v2, :cond_2c

    #@14f
    .line 617
    const/4 v2, 0x2

    #@150
    move/from16 v0, v17

    #@152
    if-eq v0, v2, :cond_f

    #@154
    .line 616
    if-eqz v9, :cond_2c

    #@156
    .line 618
    :cond_f
    if-gez v10, :cond_2b

    #@158
    const/4 v3, 0x1

    #@159
    .line 619
    :goto_9
    if-eqz v8, :cond_2d

    #@15b
    .line 620
    move-object/from16 v0, p0

    #@15d
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@15f
    iget-boolean v6, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->brightnessSetByUser:Z

    #@161
    .line 621
    :goto_a
    move-object/from16 v0, p0

    #@163
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    #@165
    .line 622
    move-object/from16 v0, p0

    #@167
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@169
    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    #@16b
    const/4 v5, 0x2

    #@16c
    move/from16 v0, v17

    #@16e
    if-eq v0, v5, :cond_2e

    #@170
    const/4 v5, 0x1

    #@171
    .line 623
    :goto_b
    move-object/from16 v0, p0

    #@173
    iget-object v7, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@175
    iget-boolean v7, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useTwilight:Z

    #@177
    .line 621
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/display/AutomaticBrightnessController;->configure(ZFZZZ)V

    #@17a
    .line 631
    .end local v9    # "autoBrightnessEnabledInDoze":Z
    :cond_10
    move-object/from16 v0, p0

    #@17c
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@17e
    iget-boolean v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    #@180
    if-eqz v2, :cond_11

    #@182
    .line 632
    if-eqz v10, :cond_11

    #@184
    .line 633
    const/16 v10, 0xff

    #@186
    .line 637
    :cond_11
    const/16 v16, 0x0

    #@188
    .line 638
    .local v16, "slowChange":Z
    if-gez v10, :cond_31

    #@18a
    .line 639
    if-eqz v3, :cond_12

    #@18c
    .line 640
    move-object/from16 v0, p0

    #@18e
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    #@190
    invoke-virtual {v2}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightness()I

    #@193
    move-result v10

    #@194
    .line 642
    :cond_12
    if-ltz v10, :cond_30

    #@196
    .line 644
    move-object/from16 v0, p0

    #@198
    invoke-direct {v0, v10}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(I)I

    #@19b
    move-result v10

    #@19c
    .line 645
    move-object/from16 v0, p0

    #@19e
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    #@1a0
    if-eqz v2, :cond_13

    #@1a2
    if-eqz v8, :cond_2f

    #@1a4
    .line 648
    :cond_13
    :goto_c
    const/4 v2, 0x1

    #@1a5
    move-object/from16 v0, p0

    #@1a7
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    #@1a9
    .line 657
    :goto_d
    if-gez v10, :cond_15

    #@1ab
    const/4 v2, 0x3

    #@1ac
    move/from16 v0, v17

    #@1ae
    if-eq v0, v2, :cond_14

    #@1b0
    .line 658
    const/4 v2, 0x4

    #@1b1
    move/from16 v0, v17

    #@1b3
    if-ne v0, v2, :cond_15

    #@1b5
    .line 659
    :cond_14
    move-object/from16 v0, p0

    #@1b7
    iget v10, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:I

    #@1b9
    .line 666
    :cond_15
    if-gez v10, :cond_16

    #@1bb
    .line 667
    move-object/from16 v0, p0

    #@1bd
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@1bf
    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    #@1c1
    move-object/from16 v0, p0

    #@1c3
    invoke-direct {v0, v2}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(I)I

    #@1c6
    move-result v10

    #@1c7
    .line 672
    :cond_16
    move-object/from16 v0, p0

    #@1c9
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@1cb
    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    #@1cd
    const/4 v4, 0x2

    #@1ce
    if-ne v2, v4, :cond_32

    #@1d0
    .line 673
    move-object/from16 v0, p0

    #@1d2
    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    #@1d4
    if-le v10, v2, :cond_17

    #@1d6
    .line 674
    add-int/lit8 v2, v10, -0xa

    #@1d8
    .line 675
    move-object/from16 v0, p0

    #@1da
    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    #@1dc
    .line 674
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    #@1df
    move-result v2

    #@1e0
    .line 675
    move-object/from16 v0, p0

    #@1e2
    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    #@1e4
    .line 674
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    #@1e7
    move-result v10

    #@1e8
    .line 677
    :cond_17
    move-object/from16 v0, p0

    #@1ea
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    #@1ec
    if-nez v2, :cond_18

    #@1ee
    .line 678
    const/16 v16, 0x0

    #@1f0
    .line 680
    :cond_18
    const/4 v2, 0x1

    #@1f1
    move-object/from16 v0, p0

    #@1f3
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    #@1f5
    .line 688
    :cond_19
    :goto_e
    move-object/from16 v0, p0

    #@1f7
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@1f9
    iget-boolean v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    #@1fb
    if-eqz v2, :cond_33

    #@1fd
    .line 689
    move-object/from16 v0, p0

    #@1ff
    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    #@201
    if-le v10, v2, :cond_1a

    #@203
    .line 690
    div-int/lit8 v2, v10, 0x2

    #@205
    move-object/from16 v0, p0

    #@207
    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    #@209
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    #@20c
    move-result v10

    #@20d
    .line 692
    :cond_1a
    move-object/from16 v0, p0

    #@20f
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    #@211
    if-nez v2, :cond_1b

    #@213
    .line 693
    const/16 v16, 0x0

    #@215
    .line 695
    :cond_1b
    const/4 v2, 0x1

    #@216
    move-object/from16 v0, p0

    #@218
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    #@21a
    .line 703
    :cond_1c
    :goto_f
    move-object/from16 v0, p0

    #@21c
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    #@21e
    if-nez v2, :cond_1e

    #@220
    .line 704
    const/4 v2, 0x2

    #@221
    move/from16 v0, v17

    #@223
    if-eq v0, v2, :cond_1d

    #@225
    const/4 v2, 0x3

    #@226
    move/from16 v0, v17

    #@228
    if-ne v0, v2, :cond_35

    #@22a
    .line 706
    :cond_1d
    if-eqz v16, :cond_34

    #@22c
    const/16 v2, 0x28

    #@22e
    .line 705
    :goto_10
    move-object/from16 v0, p0

    #@230
    invoke-direct {v0, v10, v2}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(II)V

    #@233
    .line 716
    :cond_1e
    :goto_11
    move-object/from16 v0, p0

    #@235
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    #@237
    if-nez v2, :cond_1f

    #@239
    .line 717
    move-object/from16 v0, p0

    #@23b
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    #@23d
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isStarted()Z

    #@240
    move-result v2

    #@241
    if-eqz v2, :cond_36

    #@243
    .line 716
    :cond_1f
    const/4 v15, 0x0

    #@244
    .line 720
    .local v15, "ready":Z
    :goto_12
    if-eqz v15, :cond_38

    #@246
    .line 721
    move-object/from16 v0, p0

    #@248
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    #@24a
    invoke-virtual {v2}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    #@24d
    move-result v2

    #@24e
    if-eqz v2, :cond_37

    #@250
    const/4 v11, 0x0

    #@251
    .line 724
    .local v11, "finished":Z
    :goto_13
    if-eqz v15, :cond_20

    #@253
    const/4 v2, 0x1

    #@254
    move/from16 v0, v17

    #@256
    if-eq v0, v2, :cond_20

    #@258
    .line 725
    move-object/from16 v0, p0

    #@25a
    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    #@25c
    const/4 v4, 0x1

    #@25d
    if-ne v2, v4, :cond_20

    #@25f
    .line 726
    const/4 v2, 0x2

    #@260
    move-object/from16 v0, p0

    #@262
    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    #@264
    .line 727
    move-object/from16 v0, p0

    #@266
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Landroid/view/WindowManagerPolicy;

    #@268
    invoke-interface {v2}, Landroid/view/WindowManagerPolicy;->screenTurnedOn()V

    #@26b
    .line 731
    :cond_20
    if-nez v11, :cond_21

    #@26d
    move-object/from16 v0, p0

    #@26f
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    #@271
    if-eqz v2, :cond_39

    #@273
    .line 740
    :cond_21
    :goto_14
    if-eqz v15, :cond_23

    #@275
    if-eqz v13, :cond_23

    #@277
    .line 742
    move-object/from16 v0, p0

    #@279
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    #@27b
    monitor-enter v4

    #@27c
    .line 743
    :try_start_3
    move-object/from16 v0, p0

    #@27e
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    #@280
    if-nez v2, :cond_22

    #@282
    .line 744
    const/4 v2, 0x1

    #@283
    move-object/from16 v0, p0

    #@285
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    #@287
    .line 746
    sget-boolean v2, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    #@289
    if-eqz v2, :cond_22

    #@28b
    .line 747
    const-string/jumbo v2, "DisplayPowerController"

    #@28e
    const-string/jumbo v5, "Display ready!"

    #@291
    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@294
    :cond_22
    monitor-exit v4

    #@295
    .line 751
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnStateChangedWithWakelock()V

    #@298
    .line 755
    :cond_23
    if-eqz v11, :cond_25

    #@29a
    move-object/from16 v0, p0

    #@29c
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    #@29e
    if-eqz v2, :cond_25

    #@2a0
    .line 756
    sget-boolean v2, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    #@2a2
    if-eqz v2, :cond_24

    #@2a4
    .line 757
    const-string/jumbo v2, "DisplayPowerController"

    #@2a7
    const-string/jumbo v4, "Finished business..."

    #@2aa
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2ad
    .line 759
    :cond_24
    const/4 v2, 0x0

    #@2ae
    move-object/from16 v0, p0

    #@2b0
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    #@2b2
    .line 760
    move-object/from16 v0, p0

    #@2b4
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    #@2b6
    invoke-interface {v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker()V

    #@2b9
    .line 506
    :cond_25
    return-void

    #@2ba
    .line 579
    .end local v3    # "autoBrightnessEnabled":Z
    .end local v11    # "finished":Z
    .end local v15    # "ready":Z
    .end local v16    # "slowChange":Z
    :cond_26
    move-object/from16 v0, p0

    #@2bc
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    #@2be
    if-eqz v2, :cond_27

    #@2c0
    .line 580
    move-object/from16 v0, p0

    #@2c2
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    #@2c4
    .line 579
    if-eqz v2, :cond_27

    #@2c6
    .line 581
    move-object/from16 v0, p0

    #@2c8
    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    #@2ca
    const/4 v4, 0x1

    #@2cb
    if-ne v2, v4, :cond_27

    #@2cd
    .line 582
    const/4 v2, 0x1

    #@2ce
    move/from16 v0, v17

    #@2d0
    if-eq v0, v2, :cond_27

    #@2d2
    .line 583
    const/4 v2, 0x1

    #@2d3
    move-object/from16 v0, p0

    #@2d5
    invoke-direct {v0, v2}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    #@2d8
    goto/16 :goto_6

    #@2da
    .line 585
    :cond_27
    const/4 v2, 0x0

    #@2db
    move-object/from16 v0, p0

    #@2dd
    invoke-direct {v0, v2}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    #@2e0
    .line 586
    const/4 v2, 0x0

    #@2e1
    move-object/from16 v0, p0

    #@2e3
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    #@2e5
    goto/16 :goto_6

    #@2e7
    .line 594
    :cond_28
    const/4 v2, 0x0

    #@2e8
    move-object/from16 v0, p0

    #@2ea
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    #@2ec
    goto/16 :goto_7

    #@2ee
    .line 615
    .restart local v3    # "autoBrightnessEnabled":Z
    :cond_29
    const/4 v9, 0x0

    #@2ef
    .restart local v9    # "autoBrightnessEnabledInDoze":Z
    goto/16 :goto_8

    #@2f1
    .line 614
    .end local v9    # "autoBrightnessEnabledInDoze":Z
    :cond_2a
    const/4 v9, 0x0

    #@2f2
    .restart local v9    # "autoBrightnessEnabledInDoze":Z
    goto/16 :goto_8

    #@2f4
    .line 618
    :cond_2b
    const/4 v3, 0x0

    #@2f5
    goto/16 :goto_9

    #@2f7
    .line 616
    :cond_2c
    const/4 v3, 0x0

    #@2f8
    goto/16 :goto_9

    #@2fa
    .line 619
    :cond_2d
    const/4 v6, 0x0

    #@2fb
    .local v6, "userInitiatedChange":Z
    goto/16 :goto_a

    #@2fd
    .line 622
    .end local v6    # "userInitiatedChange":Z
    :cond_2e
    const/4 v5, 0x0

    #@2fe
    goto/16 :goto_b

    #@300
    .line 646
    .end local v9    # "autoBrightnessEnabledInDoze":Z
    .restart local v16    # "slowChange":Z
    :cond_2f
    const/16 v16, 0x1

    #@302
    goto/16 :goto_c

    #@304
    .line 650
    :cond_30
    const/4 v2, 0x0

    #@305
    move-object/from16 v0, p0

    #@307
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    #@309
    goto/16 :goto_d

    #@30b
    .line 653
    :cond_31
    const/4 v2, 0x0

    #@30c
    move-object/from16 v0, p0

    #@30e
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    #@310
    goto/16 :goto_d

    #@312
    .line 681
    :cond_32
    move-object/from16 v0, p0

    #@314
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    #@316
    if-eqz v2, :cond_19

    #@318
    .line 682
    const/16 v16, 0x0

    #@31a
    .line 683
    const/4 v2, 0x0

    #@31b
    move-object/from16 v0, p0

    #@31d
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    #@31f
    goto/16 :goto_e

    #@321
    .line 696
    :cond_33
    move-object/from16 v0, p0

    #@323
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    #@325
    if-eqz v2, :cond_1c

    #@327
    .line 697
    const/16 v16, 0x0

    #@329
    .line 698
    const/4 v2, 0x0

    #@32a
    move-object/from16 v0, p0

    #@32c
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    #@32e
    goto/16 :goto_f

    #@330
    .line 706
    :cond_34
    move-object/from16 v0, p0

    #@332
    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFast:I

    #@334
    goto/16 :goto_10

    #@336
    .line 708
    :cond_35
    const/4 v2, 0x0

    #@337
    move-object/from16 v0, p0

    #@339
    invoke-direct {v0, v10, v2}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(II)V

    #@33c
    goto/16 :goto_11

    #@33e
    .line 718
    :cond_36
    move-object/from16 v0, p0

    #@340
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    #@342
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isStarted()Z

    #@345
    move-result v2

    #@346
    if-nez v2, :cond_1f

    #@348
    .line 719
    move-object/from16 v0, p0

    #@34a
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@34c
    move-object/from16 v0, p0

    #@34e
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    #@350
    invoke-virtual {v2, v4}, Lcom/android/server/display/DisplayPowerState;->waitUntilClean(Ljava/lang/Runnable;)Z

    #@353
    move-result v15

    #@354
    goto/16 :goto_12

    #@356
    .line 721
    .restart local v15    # "ready":Z
    :cond_37
    const/4 v11, 0x1

    #@357
    .restart local v11    # "finished":Z
    goto/16 :goto_13

    #@359
    .line 720
    .end local v11    # "finished":Z
    :cond_38
    const/4 v11, 0x0

    #@35a
    .restart local v11    # "finished":Z
    goto/16 :goto_13

    #@35c
    .line 732
    :cond_39
    sget-boolean v2, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    #@35e
    if-eqz v2, :cond_3a

    #@360
    .line 733
    const-string/jumbo v2, "DisplayPowerController"

    #@363
    const-string/jumbo v4, "Unfinished business..."

    #@366
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@369
    .line 735
    :cond_3a
    move-object/from16 v0, p0

    #@36b
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    #@36d
    invoke-interface {v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    #@370
    .line 736
    const/4 v2, 0x1

    #@371
    move-object/from16 v0, p0

    #@373
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    #@375
    goto/16 :goto_14

    #@377
    .line 742
    :catchall_1
    move-exception v2

    #@378
    monitor-exit v4

    #@379
    throw v2

    #@37a
    .line 547
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 1083
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1084
    :try_start_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@6
    .line 1085
    const-string/jumbo v0, "Display Power Controller Locked State:"

    #@9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c
    .line 1086
    new-instance v0, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "  mDisplayReadyLocked="

    #@14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    #@1a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@25
    .line 1087
    new-instance v0, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v2, "  mPendingRequestLocked="

    #@2d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3e
    .line 1088
    new-instance v0, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v2, "  mPendingRequestChangedLocked="

    #@46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v0

    #@4a
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

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
    .line 1089
    new-instance v0, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v2, "  mPendingWaitForNegativeProximityLocked="

    #@5f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v0

    #@63
    .line 1090
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    #@65
    .line 1089
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@68
    move-result-object v0

    #@69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v0

    #@6d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@70
    .line 1091
    new-instance v0, Ljava/lang/StringBuilder;

    #@72
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@75
    const-string/jumbo v2, "  mPendingUpdatePowerStateLocked="

    #@78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v0

    #@7c
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    #@7e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@81
    move-result-object v0

    #@82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v0

    #@86
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@89
    monitor-exit v1

    #@8a
    .line 1094
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@8d
    .line 1095
    const-string/jumbo v0, "Display Power Controller Configuration:"

    #@90
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@93
    .line 1096
    new-instance v0, Ljava/lang/StringBuilder;

    #@95
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@98
    const-string/jumbo v1, "  mScreenBrightnessDozeConfig="

    #@9b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v0

    #@9f
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:I

    #@a1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v0

    #@a5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a8
    move-result-object v0

    #@a9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ac
    .line 1097
    new-instance v0, Ljava/lang/StringBuilder;

    #@ae
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b1
    const-string/jumbo v1, "  mScreenBrightnessDimConfig="

    #@b4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v0

    #@b8
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    #@ba
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v0

    #@be
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v0

    #@c2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c5
    .line 1098
    new-instance v0, Ljava/lang/StringBuilder;

    #@c7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@ca
    const-string/jumbo v1, "  mScreenBrightnessDarkConfig="

    #@cd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v0

    #@d1
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    #@d3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v0

    #@d7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@da
    move-result-object v0

    #@db
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@de
    .line 1099
    new-instance v0, Ljava/lang/StringBuilder;

    #@e0
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e3
    const-string/jumbo v1, "  mScreenBrightnessRangeMinimum="

    #@e6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v0

    #@ea
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    #@ec
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v0

    #@f0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f3
    move-result-object v0

    #@f4
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f7
    .line 1100
    new-instance v0, Ljava/lang/StringBuilder;

    #@f9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@fc
    const-string/jumbo v1, "  mScreenBrightnessRangeMaximum="

    #@ff
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v0

    #@103
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    #@105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@108
    move-result-object v0

    #@109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10c
    move-result-object v0

    #@10d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@110
    .line 1101
    new-instance v0, Ljava/lang/StringBuilder;

    #@112
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@115
    const-string/jumbo v1, "  mUseSoftwareAutoBrightnessConfig="

    #@118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v0

    #@11c
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    #@11e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@121
    move-result-object v0

    #@122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@125
    move-result-object v0

    #@126
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@129
    .line 1102
    new-instance v0, Ljava/lang/StringBuilder;

    #@12b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@12e
    const-string/jumbo v1, "  mAllowAutoBrightnessWhileDozingConfig="

    #@131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@134
    move-result-object v0

    #@135
    .line 1103
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    #@137
    .line 1102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@13a
    move-result-object v0

    #@13b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13e
    move-result-object v0

    #@13f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@142
    .line 1104
    new-instance v0, Ljava/lang/StringBuilder;

    #@144
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@147
    const-string/jumbo v1, "  mColorFadeFadesConfig="

    #@14a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14d
    move-result-object v0

    #@14e
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    #@150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@153
    move-result-object v0

    #@154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@157
    move-result-object v0

    #@158
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@15b
    .line 1106
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    #@15d
    new-instance v1, Lcom/android/server/display/DisplayPowerController$8;

    #@15f
    invoke-direct {v1, p0, p1}, Lcom/android/server/display/DisplayPowerController$8;-><init>(Lcom/android/server/display/DisplayPowerController;Ljava/io/PrintWriter;)V

    #@162
    .line 1111
    const-wide/16 v2, 0x3e8

    #@164
    .line 1106
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->runWithScissors(Ljava/lang/Runnable;J)Z

    #@167
    .line 1082
    return-void

    #@168
    .line 1083
    :catchall_0
    move-exception v0

    #@169
    monitor-exit v1

    #@16a
    throw v0
.end method

.method public isProximitySensorAvailable()Z
    .locals 1

    #@0
    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

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

.method public requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z
    .locals 4
    .param p1, "request"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .param p2, "waitForNegativeProximity"    # Z

    #@0
    .prologue
    .line 404
    sget-boolean v1, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 405
    const-string/jumbo v1, "DisplayPowerController"

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "requestPowerState: "

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    .line 406
    const-string/jumbo v3, ", waitForNegativeProximity="

    #@1a
    .line 405
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 409
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    #@2b
    monitor-enter v2

    #@2c
    .line 410
    const/4 v0, 0x0

    #@2d
    .line 412
    .local v0, "changed":Z
    if-eqz p2, :cond_1

    #@2f
    .line 413
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    #@31
    if-eqz v1, :cond_5

    #@33
    .line 418
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@35
    if-nez v1, :cond_6

    #@37
    .line 419
    new-instance v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@39
    invoke-direct {v1, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    #@3c
    iput-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@3e
    .line 420
    const/4 v0, 0x1

    #@3f
    .line 426
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    #@41
    .line 427
    const/4 v1, 0x0

    #@42
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    #@44
    .line 430
    :cond_3
    if-eqz v0, :cond_4

    #@46
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    #@48
    if-eqz v1, :cond_7

    #@4a
    .line 435
    :cond_4
    :goto_2
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4c
    monitor-exit v2

    #@4d
    return v1

    #@4e
    .line 414
    :cond_5
    const/4 v1, 0x1

    #@4f
    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    #@51
    .line 415
    const/4 v0, 0x1

    #@52
    goto :goto_0

    #@53
    .line 421
    :cond_6
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@55
    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->equals(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z

    #@58
    move-result v1

    #@59
    if-nez v1, :cond_2

    #@5b
    .line 422
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@5d
    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    #@60
    .line 423
    const/4 v0, 0x1

    #@61
    goto :goto_1

    #@62
    .line 431
    :cond_7
    const/4 v1, 0x1

    #@63
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    #@65
    .line 432
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@68
    goto :goto_2

    #@69
    .line 409
    :catchall_0
    move-exception v1

    #@6a
    monitor-exit v2

    #@6b
    throw v1
.end method

.method public updateBrightness()V
    .locals 0

    #@0
    .prologue
    .line 766
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    #@3
    .line 765
    return-void
.end method
