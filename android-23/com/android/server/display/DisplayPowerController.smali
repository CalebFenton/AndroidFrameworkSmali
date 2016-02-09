.class final Lcom/android/server/display/DisplayPowerController;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Lcom/android/server/display/AutomaticBrightnessController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;,
        Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;,
        Lcom/android/server/display/DisplayPowerController$1;,
        Lcom/android/server/display/DisplayPowerController$2;,
        Lcom/android/server/display/DisplayPowerController$3;,
        Lcom/android/server/display/DisplayPowerController$4;,
        Lcom/android/server/display/DisplayPowerController$5;,
        Lcom/android/server/display/DisplayPowerController$6;,
        Lcom/android/server/display/DisplayPowerController$7;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final BRIGHTNESS_RAMP_RATE_FAST:I = 0xc8

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
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbacks"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p5, "blanker"    # Lcom/android/server/display/DisplayBlanker;

    #@0
    .prologue
    .line 258
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 113
    new-instance v2, Ljava/lang/Object;

    #@5
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    #@8
    move-object/from16 v0, p0

    #@a
    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    #@c
    .line 213
    const/4 v2, -0x1

    #@d
    move-object/from16 v0, p0

    #@f
    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    #@11
    .line 216
    const/4 v2, -0x1

    #@12
    move-object/from16 v0, p0

    #@14
    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    #@16
    .line 217
    const-wide/16 v2, -0x1

    #@18
    move-object/from16 v0, p0

    #@1a
    iput-wide v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    #@1c
    .line 472
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
    .line 488
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
    .line 928
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
    .line 1025
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
    .line 1038
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
    .line 1051
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
    .line 1219
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
    .line 261
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
    .line 262
    move-object/from16 v0, p2

    #@7a
    move-object/from16 v1, p0

    #@7c
    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    #@7e
    .line 264
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    #@81
    move-result-object v2

    #@82
    move-object/from16 v0, p0

    #@84
    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@86
    .line 265
    move-object/from16 v0, p4

    #@88
    move-object/from16 v1, p0

    #@8a
    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    #@8c
    .line 266
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
    .line 267
    move-object/from16 v0, p5

    #@9a
    move-object/from16 v1, p0

    #@9c
    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    #@9e
    .line 268
    move-object/from16 v0, p1

    #@a0
    move-object/from16 v1, p0

    #@a2
    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    #@a4
    .line 270
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@a7
    move-result-object v19

    #@a8
    .line 272
    .local v19, "resources":Landroid/content/res/Resources;
    const v2, 0x10e005b

    #@ab
    .line 271
    move-object/from16 v0, v19

    #@ad
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@b0
    move-result v2

    #@b1
    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    #@b4
    move-result v21

    #@b5
    .line 275
    .local v21, "screenBrightnessSettingMinimum":I
    const v2, 0x10e005e

    #@b8
    .line 274
    move-object/from16 v0, v19

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
    .line 278
    const v2, 0x10e0062

    #@c9
    .line 277
    move-object/from16 v0, v19

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
    .line 281
    const v2, 0x10e0063

    #@da
    .line 280
    move-object/from16 v0, v19

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
    .line 282
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
    .line 283
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
    .line 284
    move-object/from16 v0, p0

    #@103
    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    #@105
    .line 283
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@108
    move-result-object v3

    #@109
    .line 284
    const-string/jumbo v4, ") to be less than or equal to "

    #@10c
    .line 283
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v3

    #@110
    .line 285
    const-string/jumbo v4, "config_screenBrightnessDim ("

    #@113
    .line 283
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@116
    move-result-object v3

    #@117
    .line 285
    move-object/from16 v0, p0

    #@119
    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    #@11b
    .line 283
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v3

    #@11f
    .line 285
    const-string/jumbo v4, ")."

    #@122
    .line 283
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
    .line 287
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
    .line 288
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
    .line 289
    move-object/from16 v0, p0

    #@148
    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    #@14a
    .line 288
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14d
    move-result-object v3

    #@14e
    .line 289
    const-string/jumbo v4, ") to be less than or equal to "

    #@151
    .line 288
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@154
    move-result-object v3

    #@155
    .line 290
    const-string/jumbo v4, "config_screenBrightnessSettingMinimum ("

    #@158
    .line 288
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15b
    move-result-object v3

    #@15c
    move/from16 v0, v21

    #@15e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@161
    move-result-object v3

    #@162
    .line 291
    const-string/jumbo v4, ")."

    #@165
    .line 288
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
    .line 295
    :cond_1
    move-object/from16 v0, p0

    #@172
    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    #@174
    .line 294
    move/from16 v0, v21

    #@176
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    #@179
    move-result v2

    #@17a
    .line 296
    move-object/from16 v0, p0

    #@17c
    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    #@17e
    .line 294
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    #@181
    move-result v8

    #@182
    .line 298
    .local v8, "screenBrightnessRangeMinimum":I
    const/16 v2, 0xff

    #@184
    move-object/from16 v0, p0

    #@186
    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    #@188
    .line 301
    const v2, 0x1120021

    #@18b
    .line 300
    move-object/from16 v0, v19

    #@18d
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@190
    move-result v2

    #@191
    move-object/from16 v0, p0

    #@193
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    #@195
    .line 304
    const v2, 0x1120045

    #@198
    .line 303
    move-object/from16 v0, v19

    #@19a
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@19d
    move-result v2

    #@19e
    move-object/from16 v0, p0

    #@1a0
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    #@1a2
    .line 307
    const v2, 0x10e0061

    #@1a5
    .line 306
    move-object/from16 v0, v19

    #@1a7
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@1aa
    move-result v11

    #@1ab
    .line 309
    .local v11, "lightSensorRate":I
    const v2, 0x10e005f

    #@1ae
    .line 308
    move-object/from16 v0, v19

    #@1b0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@1b3
    move-result v2

    #@1b4
    int-to-long v12, v2

    #@1b5
    .line 311
    .local v12, "brighteningLightDebounce":J
    const v2, 0x10e0060

    #@1b8
    .line 310
    move-object/from16 v0, v19

    #@1ba
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@1bd
    move-result v2

    #@1be
    int-to-long v14, v2

    #@1bf
    .line 313
    .local v14, "darkeningLightDebounce":J
    const v2, 0x1120046

    #@1c2
    .line 312
    move-object/from16 v0, v19

    #@1c4
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@1c7
    move-result v16

    #@1c8
    .line 315
    .local v16, "autoBrightnessResetAmbientLuxAfterWarmUp":Z
    move-object/from16 v0, p0

    #@1ca
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    #@1cc
    if-eqz v2, :cond_2

    #@1ce
    .line 317
    const v2, 0x1070025

    #@1d1
    .line 316
    move-object/from16 v0, v19

    #@1d3
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    #@1d6
    move-result-object v18

    #@1d7
    .line 319
    .local v18, "lux":[I
    const v2, 0x1070026

    #@1da
    .line 318
    move-object/from16 v0, v19

    #@1dc
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    #@1df
    move-result-object v20

    #@1e0
    .line 321
    .local v20, "screenBrightness":[I
    const v2, 0x10e0064

    #@1e3
    .line 320
    move-object/from16 v0, v19

    #@1e5
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@1e8
    move-result v7

    #@1e9
    .line 323
    .local v7, "lightSensorWarmUpTimeConfig":I
    const v2, 0x1130001

    #@1ec
    .line 324
    const/4 v3, 0x1

    #@1ed
    const/4 v4, 0x1

    #@1ee
    .line 322
    move-object/from16 v0, v19

    #@1f0
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getFraction(III)F

    #@1f3
    move-result v10

    #@1f4
    .line 326
    .local v10, "dozeScaleFactor":F
    move-object/from16 v0, v18

    #@1f6
    move-object/from16 v1, v20

    #@1f8
    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerController;->createAutoBrightnessSpline([I[I)Landroid/util/Spline;

    #@1fb
    move-result-object v6

    #@1fc
    .line 327
    .local v6, "screenAutoBrightnessSpline":Landroid/util/Spline;
    if-nez v6, :cond_4

    #@1fe
    .line 328
    const-string/jumbo v2, "DisplayPowerController"

    #@201
    new-instance v3, Ljava/lang/StringBuilder;

    #@203
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@206
    const-string/jumbo v4, "Error in config.xml.  config_autoBrightnessLcdBacklightValues (size "

    #@209
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20c
    move-result-object v3

    #@20d
    .line 329
    move-object/from16 v0, v20

    #@20f
    array-length v4, v0

    #@210
    .line 328
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@213
    move-result-object v3

    #@214
    .line 329
    const-string/jumbo v4, ") "

    #@217
    .line 328
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21a
    move-result-object v3

    #@21b
    .line 330
    const-string/jumbo v4, "must be monotic and have exactly one more entry than "

    #@21e
    .line 328
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@221
    move-result-object v3

    #@222
    .line 331
    const-string/jumbo v4, "config_autoBrightnessLevels (size "

    #@225
    .line 328
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@228
    move-result-object v3

    #@229
    .line 331
    move-object/from16 v0, v18

    #@22b
    array-length v4, v0

    #@22c
    .line 328
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22f
    move-result-object v3

    #@230
    .line 331
    const-string/jumbo v4, ") "

    #@233
    .line 328
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@236
    move-result-object v3

    #@237
    .line 332
    const-string/jumbo v4, "which must be strictly increasing.  "

    #@23a
    .line 328
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23d
    move-result-object v3

    #@23e
    .line 333
    const-string/jumbo v4, "Auto-brightness will be disabled."

    #@241
    .line 328
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@244
    move-result-object v3

    #@245
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@248
    move-result-object v3

    #@249
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@24c
    .line 334
    const/4 v2, 0x0

    #@24d
    move-object/from16 v0, p0

    #@24f
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    #@251
    .line 355
    .end local v6    # "screenAutoBrightnessSpline":Landroid/util/Spline;
    .end local v7    # "lightSensorWarmUpTimeConfig":I
    .end local v10    # "dozeScaleFactor":F
    .end local v18    # "lux":[I
    .end local v20    # "screenBrightness":[I
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    #@253
    iput v8, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    #@255
    .line 358
    const v2, 0x1120025

    #@258
    .line 357
    move-object/from16 v0, v19

    #@25a
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@25d
    move-result v2

    #@25e
    move-object/from16 v0, p0

    #@260
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    #@262
    .line 361
    move-object/from16 v0, p0

    #@264
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    #@266
    const/16 v3, 0x8

    #@268
    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    #@26b
    move-result-object v2

    #@26c
    move-object/from16 v0, p0

    #@26e
    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    #@270
    .line 362
    move-object/from16 v0, p0

    #@272
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    #@274
    if-eqz v2, :cond_3

    #@276
    .line 363
    move-object/from16 v0, p0

    #@278
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    #@27a
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    #@27d
    move-result v2

    #@27e
    .line 364
    const/high16 v3, 0x40a00000    # 5.0f

    #@280
    .line 363
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    #@283
    move-result v2

    #@284
    move-object/from16 v0, p0

    #@286
    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    #@288
    .line 260
    :cond_3
    return-void

    #@289
    .line 336
    .restart local v6    # "screenAutoBrightnessSpline":Landroid/util/Spline;
    .restart local v7    # "lightSensorWarmUpTimeConfig":I
    .restart local v10    # "dozeScaleFactor":F
    .restart local v18    # "lux":[I
    .restart local v20    # "screenBrightness":[I
    :cond_4
    const/4 v2, 0x0

    #@28a
    aget v2, v20, v2

    #@28c
    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    #@28f
    move-result v17

    #@290
    .line 337
    .local v17, "bottom":I
    move-object/from16 v0, p0

    #@292
    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    #@294
    move/from16 v0, v17

    #@296
    if-le v2, v0, :cond_5

    #@298
    .line 338
    const-string/jumbo v2, "DisplayPowerController"

    #@29b
    new-instance v3, Ljava/lang/StringBuilder;

    #@29d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2a0
    const-string/jumbo v4, "config_screenBrightnessDark ("

    #@2a3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a6
    move-result-object v3

    #@2a7
    move-object/from16 v0, p0

    #@2a9
    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    #@2ab
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2ae
    move-result-object v3

    #@2af
    .line 339
    const-string/jumbo v4, ") should be less than or equal to the first value of "

    #@2b2
    .line 338
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b5
    move-result-object v3

    #@2b6
    .line 340
    const-string/jumbo v4, "config_autoBrightnessLcdBacklightValues ("

    #@2b9
    .line 338
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2bc
    move-result-object v3

    #@2bd
    move/from16 v0, v17

    #@2bf
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c2
    move-result-object v3

    #@2c3
    .line 341
    const-string/jumbo v4, ")."

    #@2c6
    .line 338
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c9
    move-result-object v3

    #@2ca
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2cd
    move-result-object v3

    #@2ce
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2d1
    .line 343
    :cond_5
    move/from16 v0, v17

    #@2d3
    if-ge v0, v8, :cond_6

    #@2d5
    .line 344
    move/from16 v8, v17

    #@2d7
    .line 346
    :cond_6
    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController;

    #@2d9
    .line 347
    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@2dc
    move-result-object v4

    #@2dd
    .line 349
    move-object/from16 v0, p0

    #@2df
    iget v9, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    #@2e1
    move-object/from16 v3, p0

    #@2e3
    move-object/from16 v5, p4

    #@2e5
    .line 346
    invoke-direct/range {v2 .. v16}, Lcom/android/server/display/AutomaticBrightnessController;-><init>(Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/util/Spline;IIIFIJJZ)V

    #@2e8
    move-object/from16 v0, p0

    #@2ea
    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    #@2ec
    goto/16 :goto_0
.end method

.method private animateScreenBrightness(II)V
    .locals 4
    .param p1, "target"    # I
    .param p2, "rate"    # I

    #@0
    .prologue
    .line 815
    sget-boolean v1, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 816
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
    .line 818
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    #@2b
    invoke-virtual {v1, p1, p2}, Lcom/android/server/display/RampAnimator;->animateTo(II)Z

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_1

    #@31
    .line 820
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@33
    invoke-interface {v1, p1}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    .line 814
    :cond_1
    :goto_0
    return-void

    #@37
    .line 821
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
    const/4 v5, 0x3

    #@1
    const/high16 v4, 0x3f800000    # 1.0f

    #@3
    const/4 v3, 0x4

    #@4
    const/4 v0, 0x2

    #@5
    const/4 v1, 0x1

    #@6
    .line 829
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    #@8
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isStarted()Z

    #@b
    move-result v2

    #@c
    if-nez v2, :cond_0

    #@e
    .line 830
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    #@10
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isStarted()Z

    #@13
    move-result v2

    #@14
    .line 829
    if-eqz v2, :cond_1

    #@16
    .line 831
    :cond_0
    return-void

    #@17
    .line 837
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    #@19
    if-eqz v2, :cond_2

    #@1b
    if-eq p1, v1, :cond_2

    #@1d
    .line 838
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    #@20
    .line 839
    const/4 v2, 0x0

    #@21
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    #@23
    .line 842
    :cond_2
    if-ne p1, v0, :cond_4

    #@25
    .line 846
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    #@28
    move-result v0

    #@29
    if-nez v0, :cond_3

    #@2b
    .line 847
    return-void

    #@2c
    .line 863
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@2e
    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    #@31
    .line 864
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@33
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    #@36
    .line 827
    :goto_0
    return-void

    #@37
    .line 866
    :cond_4
    if-ne p1, v5, :cond_7

    #@39
    .line 871
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    #@3b
    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    #@3e
    move-result v1

    #@3f
    if-eqz v1, :cond_5

    #@41
    .line 872
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@43
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    #@46
    move-result v1

    #@47
    if-ne v1, v0, :cond_5

    #@49
    .line 873
    return-void

    #@4a
    .line 877
    :cond_5
    invoke-direct {p0, v5}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    #@4d
    move-result v0

    #@4e
    if-nez v0, :cond_6

    #@50
    .line 878
    return-void

    #@51
    .line 882
    :cond_6
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@53
    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    #@56
    .line 883
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@58
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    #@5b
    goto :goto_0

    #@5c
    .line 884
    :cond_7
    if-ne p1, v3, :cond_b

    #@5e
    .line 888
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    #@60
    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    #@63
    move-result v0

    #@64
    if-eqz v0, :cond_8

    #@66
    .line 889
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@68
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    #@6b
    move-result v0

    #@6c
    if-eq v0, v3, :cond_8

    #@6e
    .line 890
    return-void

    #@6f
    .line 895
    :cond_8
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@71
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    #@74
    move-result v0

    #@75
    if-eq v0, v3, :cond_a

    #@77
    .line 896
    invoke-direct {p0, v5}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    #@7a
    move-result v0

    #@7b
    if-nez v0, :cond_9

    #@7d
    .line 897
    return-void

    #@7e
    .line 899
    :cond_9
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    #@81
    .line 903
    :cond_a
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@83
    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    #@86
    .line 904
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@88
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    #@8b
    goto :goto_0

    #@8c
    .line 907
    :cond_b
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    #@8e
    .line 908
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@90
    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    #@93
    move-result v2

    #@94
    const/4 v3, 0x0

    #@95
    cmpl-float v2, v2, v3

    #@97
    if-nez v2, :cond_c

    #@99
    .line 911
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    #@9c
    .line 912
    const/4 v0, 0x0

    #@9d
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    #@9f
    goto :goto_0

    #@a0
    .line 913
    :cond_c
    if-eqz p2, :cond_e

    #@a2
    .line 914
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@a4
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    #@a6
    .line 915
    iget-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    #@a8
    if-eqz v4, :cond_d

    #@aa
    .line 914
    :goto_1
    invoke-virtual {v2, v3, v0}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    #@ad
    move-result v0

    #@ae
    .line 913
    if-eqz v0, :cond_e

    #@b0
    .line 917
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@b2
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    #@b5
    move-result v0

    #@b6
    if-eq v0, v1, :cond_e

    #@b8
    .line 919
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    #@ba
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    #@bd
    goto/16 :goto_0

    #@bf
    :cond_d
    move v0, v1

    #@c0
    .line 916
    goto :goto_1

    #@c1
    .line 923
    :cond_e
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    #@c3
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    #@c6
    goto/16 :goto_0
.end method

.method private blockScreenOn()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 753
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 754
    const-string/jumbo v0, "Screen on blocked"

    #@8
    const-wide/32 v2, 0x20000

    #@b
    const/4 v1, 0x0

    #@c
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    #@f
    .line 755
    new-instance v0, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    #@11
    invoke-direct {v0, p0, v4}, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;)V

    #@14
    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    #@16
    .line 756
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@19
    move-result-wide v0

    #@1a
    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    #@1c
    .line 757
    const-string/jumbo v0, "DisplayPowerController"

    #@1f
    const-string/jumbo v1, "Blocking screen on until initial contents have been drawn."

    #@22
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 752
    :cond_0
    return-void
.end method

.method private static clampAbsoluteBrightness(I)I
    .locals 2
    .param p0, "value"    # I

    #@0
    .prologue
    .line 1190
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
    .line 811
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    #@2
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    #@4
    .line 810
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
    .line 1007
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-ltz v0, :cond_0

    #@8
    .line 1008
    const-wide/16 v0, -0x1

    #@a
    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    #@c
    .line 1009
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    #@e
    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker()V

    #@11
    .line 1006
    :cond_0
    return-void
.end method

.method private static createAutoBrightnessSpline([I[I)Landroid/util/Spline;
    .locals 13
    .param p0, "lux"    # [I
    .param p1, "brightness"    # [I

    #@0
    .prologue
    const/high16 v12, 0x3fa00000    # 1.25f

    #@2
    .line 1162
    :try_start_0
    array-length v2, p1

    #@3
    .line 1163
    .local v2, "n":I
    new-array v5, v2, [F

    #@5
    .line 1164
    .local v5, "x":[F
    new-array v6, v2, [F

    #@7
    .line 1165
    .local v6, "y":[F
    const/4 v7, 0x0

    #@8
    aget v7, p1, v7

    #@a
    invoke-static {v7}, Lcom/android/server/display/DisplayPowerController;->normalizeAbsoluteBrightness(I)F

    #@d
    move-result v7

    #@e
    const/4 v8, 0x0

    #@f
    aput v7, v6, v8

    #@11
    .line 1166
    const/4 v1, 0x1

    #@12
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@14
    .line 1167
    add-int/lit8 v7, v1, -0x1

    #@16
    aget v7, p0, v7

    #@18
    int-to-float v7, v7

    #@19
    aput v7, v5, v1

    #@1b
    .line 1168
    aget v7, p1, v1

    #@1d
    invoke-static {v7}, Lcom/android/server/display/DisplayPowerController;->normalizeAbsoluteBrightness(I)F

    #@20
    move-result v7

    #@21
    aput v7, v6, v1

    #@23
    .line 1166
    add-int/lit8 v1, v1, 0x1

    #@25
    goto :goto_0

    #@26
    .line 1171
    :cond_0
    invoke-static {v5, v6}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    #@29
    move-result-object v3

    #@2a
    .line 1172
    .local v3, "spline":Landroid/util/Spline;
    sget-boolean v7, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    #@2c
    if-eqz v7, :cond_1

    #@2e
    .line 1173
    const-string/jumbo v7, "DisplayPowerController"

    #@31
    new-instance v8, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v9, "Auto-brightness spline: "

    #@39
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v8

    #@3d
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v8

    #@41
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v8

    #@45
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    .line 1174
    const/high16 v4, 0x3f800000    # 1.0f

    #@4a
    .local v4, "v":F
    :goto_1
    array-length v7, p0

    #@4b
    add-int/lit8 v7, v7, -0x1

    #@4d
    aget v7, p0, v7

    #@4f
    int-to-float v7, v7

    #@50
    mul-float/2addr v7, v12

    #@51
    cmpg-float v7, v4, v7

    #@53
    if-gez v7, :cond_1

    #@55
    .line 1175
    const-string/jumbo v7, "DisplayPowerController"

    #@58
    const-string/jumbo v8, "  %7.1f: %7.1f"

    #@5b
    const/4 v9, 0x2

    #@5c
    new-array v9, v9, [Ljava/lang/Object;

    #@5e
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@61
    move-result-object v10

    #@62
    const/4 v11, 0x0

    #@63
    aput-object v10, v9, v11

    #@65
    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    #@68
    move-result v10

    #@69
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@6c
    move-result-object v10

    #@6d
    const/4 v11, 0x1

    #@6e
    aput-object v10, v9, v11

    #@70
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@73
    move-result-object v8

    #@74
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@77
    .line 1174
    mul-float/2addr v4, v12

    #@78
    goto :goto_1

    #@79
    .line 1178
    .end local v4    # "v":F
    :cond_1
    return-object v3

    #@7a
    .line 1179
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "spline":Landroid/util/Spline;
    .end local v5    # "x":[F
    .end local v6    # "y":[F
    :catch_0
    move-exception v0

    #@7b
    .line 1180
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v7, "DisplayPowerController"

    #@7e
    const-string/jumbo v8, "Could not create auto-brightness spline."

    #@81
    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@84
    .line 1181
    const/4 v7, 0x0

    #@85
    return-object v7
.end method

.method private debounceProximitySensor()V
    .locals 8

    #@0
    .prologue
    .line 987
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 988
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    #@6
    const/4 v4, -0x1

    #@7
    if-eq v1, v4, :cond_0

    #@9
    .line 989
    iget-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    #@b
    const-wide/16 v6, 0x0

    #@d
    cmp-long v1, v4, v6

    #@f
    if-ltz v1, :cond_0

    #@11
    .line 990
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@14
    move-result-wide v2

    #@15
    .line 991
    .local v2, "now":J
    iget-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    #@17
    cmp-long v1, v4, v2

    #@19
    if-gtz v1, :cond_1

    #@1b
    .line 993
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    #@1d
    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    #@1f
    .line 994
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    #@22
    .line 995
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->clearPendingProximityDebounceTime()V

    #@25
    .line 986
    .end local v2    # "now":J
    :cond_0
    :goto_0
    return-void

    #@26
    .line 999
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
    .line 1000
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    #@2e
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    #@31
    .line 1001
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
    .line 1092
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@3
    .line 1093
    const-string/jumbo v0, "Display Power Controller Thread State:"

    #@6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9
    .line 1094
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
    .line 1095
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
    .line 1097
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
    .line 1098
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
    .line 1099
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
    .line 1100
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
    .line 1101
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
    .line 1102
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
    .line 1103
    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    #@ce
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    #@d1
    move-result-object v1

    #@d2
    .line 1102
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
    .line 1104
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
    .line 1105
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
    .line 1106
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
    .line 1107
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
    .line 1108
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
    .line 1109
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
    .line 1110
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
    .line 1112
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
    .line 1113
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    #@19e
    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    #@1a1
    move-result v1

    #@1a2
    .line 1112
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
    .line 1115
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    #@1af
    if-eqz v0, :cond_0

    #@1b1
    .line 1116
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
    .line 1117
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    #@1bf
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    #@1c2
    move-result v1

    #@1c3
    .line 1116
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
    .line 1119
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    #@1d0
    if-eqz v0, :cond_1

    #@1d2
    .line 1120
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
    .line 1121
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    #@1e0
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    #@1e3
    move-result v1

    #@1e4
    .line 1120
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
    .line 1124
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@1f1
    if-eqz v0, :cond_2

    #@1f3
    .line 1125
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@1f5
    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayPowerState;->dump(Ljava/io/PrintWriter;)V

    #@1f8
    .line 1128
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    #@1fa
    if-eqz v0, :cond_3

    #@1fc
    .line 1129
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    #@1fe
    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->dump(Ljava/io/PrintWriter;)V

    #@201
    .line 1091
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
    .line 959
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    #@4
    if-eqz v0, :cond_3

    #@6
    .line 960
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    #@8
    if-nez v0, :cond_0

    #@a
    if-eqz p3, :cond_1

    #@c
    .line 963
    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    #@e
    if-ne v0, v3, :cond_2

    #@10
    if-eqz p3, :cond_2

    #@12
    .line 964
    return-void

    #@13
    .line 961
    :cond_1
    return-void

    #@14
    .line 970
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    #@16
    const/4 v1, 0x2

    #@17
    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    #@1a
    .line 971
    if-eqz p3, :cond_4

    #@1c
    .line 972
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    #@1e
    .line 974
    const-wide/16 v0, 0x0

    #@20
    add-long/2addr v0, p1

    #@21
    .line 973
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    #@24
    .line 982
    :goto_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->debounceProximitySensor()V

    #@27
    .line 958
    :cond_3
    return-void

    #@28
    .line 976
    :cond_4
    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    #@2a
    .line 978
    const-wide/16 v0, 0xfa

    #@2c
    add-long/2addr v0, p1

    #@2d
    .line 977
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
    .line 446
    new-instance v1, Lcom/android/server/display/DisplayPowerState;

    #@3
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    #@5
    .line 447
    new-instance v3, Lcom/android/server/display/ColorFade;

    #@7
    const/4 v4, 0x0

    #@8
    invoke-direct {v3, v4}, Lcom/android/server/display/ColorFade;-><init>(I)V

    #@b
    .line 446
    invoke-direct {v1, v2, v3}, Lcom/android/server/display/DisplayPowerState;-><init>(Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/ColorFade;)V

    #@e
    iput-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@10
    .line 450
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@12
    sget-object v2, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    #@14
    .line 449
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
    .line 451
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    #@21
    const-wide/16 v2, 0xfa

    #@23
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@26
    .line 452
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    #@28
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    #@2a
    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@2d
    .line 455
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@2f
    sget-object v2, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    #@31
    .line 454
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
    .line 456
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    #@3e
    const-wide/16 v2, 0x190

    #@40
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@43
    .line 457
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    #@45
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    #@47
    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@4a
    .line 459
    new-instance v1, Lcom/android/server/display/RampAnimator;

    #@4c
    .line 460
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@4e
    sget-object v3, Lcom/android/server/display/DisplayPowerState;->SCREEN_BRIGHTNESS:Landroid/util/IntProperty;

    #@50
    .line 459
    invoke-direct {v1, v2, v3}, Lcom/android/server/display/RampAnimator;-><init>(Ljava/lang/Object;Landroid/util/IntProperty;)V

    #@53
    iput-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    #@55
    .line 461
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    #@57
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

    #@59
    invoke-virtual {v1, v2}, Lcom/android/server/display/RampAnimator;->setListener(Lcom/android/server/display/RampAnimator$Listener;)V

    #@5c
    .line 465
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
    .line 466
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
    .line 443
    :goto_0
    return-void

    #@73
    .line 467
    :catch_0
    move-exception v0

    #@74
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    #@75
    .line 449
    nop

    #@76
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    #@7e
    .line 454
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
    .line 1186
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
    .line 1135
    packed-switch p0, :pswitch_data_0

    #@3
    .line 1143
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 1137
    :pswitch_0
    const-string/jumbo v0, "Unknown"

    #@b
    return-object v0

    #@c
    .line 1139
    :pswitch_1
    const-string/jumbo v0, "Negative"

    #@f
    return-object v0

    #@10
    .line 1141
    :pswitch_2
    const-string/jumbo v0, "Positive"

    #@13
    return-object v0

    #@14
    .line 1135
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
    .line 1148
    packed-switch p0, :pswitch_data_0

    #@3
    .line 1156
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 1150
    :pswitch_0
    const-string/jumbo v0, "REPORTED_TO_POLICY_SCREEN_OFF"

    #@b
    return-object v0

    #@c
    .line 1152
    :pswitch_1
    const-string/jumbo v0, "REPORTED_TO_POLICY_SCREEN_TURNING_ON"

    #@f
    return-object v0

    #@10
    .line 1154
    :pswitch_2
    const-string/jumbo v0, "REPORTED_TO_POLICY_SCREEN_ON"

    #@13
    return-object v0

    #@14
    .line 1148
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
    .line 1047
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    #@2
    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    #@5
    .line 1048
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    #@7
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    #@9
    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    #@c
    .line 1046
    return-void
.end method

.method private sendOnProximityPositiveWithWakelock()V
    .locals 2

    #@0
    .prologue
    .line 1034
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    #@2
    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    #@5
    .line 1035
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    #@7
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    #@9
    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    #@c
    .line 1033
    return-void
.end method

.method private sendOnStateChangedWithWakelock()V
    .locals 2

    #@0
    .prologue
    .line 1021
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    #@2
    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    #@5
    .line 1022
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    #@7
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    #@9
    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    #@c
    .line 1020
    return-void
.end method

.method private sendUpdatePowerState()V
    .locals 2

    #@0
    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 430
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 428
    return-void

    #@8
    .line 429
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
    .line 435
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 436
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    #@7
    .line 437
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    #@9
    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    #@c
    move-result-object v0

    #@d
    .line 438
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    #@10
    .line 439
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    #@12
    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessage(Landroid/os/Message;)Z

    #@15
    .line 434
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private setPendingProximityDebounceTime(J)V
    .locals 5
    .param p1, "debounceTime"    # J

    #@0
    .prologue
    .line 1014
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-gez v0, :cond_0

    #@8
    .line 1015
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    #@a
    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    #@d
    .line 1017
    :cond_0
    iput-wide p1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    #@f
    .line 1013
    return-void
.end method

.method private setProximitySensorEnabled(Z)V
    .locals 5
    .param p1, "enable"    # Z

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 936
    if-eqz p1, :cond_1

    #@3
    .line 937
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 940
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    #@a
    .line 941
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    #@c
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    #@e
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    #@10
    .line 942
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    #@12
    const/4 v4, 0x3

    #@13
    .line 941
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    #@16
    .line 935
    :cond_0
    :goto_0
    return-void

    #@17
    .line 945
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    #@19
    if-eqz v0, :cond_0

    #@1b
    .line 948
    const/4 v0, 0x0

    #@1c
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    #@1e
    .line 949
    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    #@20
    .line 950
    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    #@22
    .line 951
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    #@24
    const/4 v1, 0x2

    #@25
    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    #@28
    .line 952
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    #@2a
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    #@2c
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    #@2f
    .line 953
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
    .line 771
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@4
    invoke-virtual {v5}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    #@7
    move-result v5

    #@8
    if-eq v5, p1, :cond_0

    #@a
    .line 772
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
    .line 773
    .local v2, "wasOn":Z
    :goto_0
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@15
    invoke-virtual {v5, p1}, Lcom/android/server/display/DisplayPowerState;->setScreenState(I)V

    #@18
    .line 777
    :try_start_0
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@1a
    invoke-interface {v5, p1}, Lcom/android/internal/app/IBatteryStats;->noteScreenState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 789
    .end local v2    # "wasOn":Z
    :cond_0
    :goto_1
    if-ne p1, v3, :cond_4

    #@1f
    const/4 v1, 0x1

    #@20
    .line 790
    .local v1, "isOff":Z
    :goto_2
    if-eqz v1, :cond_1

    #@22
    iget v5, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    #@24
    if-eqz v5, :cond_1

    #@26
    .line 791
    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    #@28
    if-eqz v5, :cond_5

    #@2a
    .line 795
    :cond_1
    if-nez v1, :cond_2

    #@2c
    iget v5, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    #@2e
    if-nez v5, :cond_2

    #@30
    .line 796
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    #@32
    .line 797
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
    .line 798
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->blockScreenOn()V

    #@40
    .line 802
    :goto_3
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Landroid/view/WindowManagerPolicy;

    #@42
    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    #@44
    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    #@47
    .line 806
    :cond_2
    :goto_4
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    #@49
    if-nez v5, :cond_7

    #@4b
    :goto_5
    return v3

    #@4c
    .line 772
    .end local v1    # "isOff":Z
    :cond_3
    const/4 v2, 0x0

    #@4d
    .restart local v2    # "wasOn":Z
    goto :goto_0

    #@4e
    .line 789
    .end local v2    # "wasOn":Z
    :cond_4
    const/4 v1, 0x0

    #@4f
    .restart local v1    # "isOff":Z
    goto :goto_2

    #@50
    .line 792
    :cond_5
    iput v4, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    #@52
    .line 793
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    #@55
    .line 794
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Landroid/view/WindowManagerPolicy;

    #@57
    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->screenTurnedOff()V

    #@5a
    goto :goto_4

    #@5b
    .line 800
    :cond_6
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    #@5e
    goto :goto_3

    #@5f
    :cond_7
    move v3, v4

    #@60
    .line 806
    goto :goto_5

    #@61
    .line 778
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
    .line 762
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 763
    iput-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    #@7
    .line 764
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@a
    move-result-wide v2

    #@b
    iget-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    #@d
    sub-long v0, v2, v4

    #@f
    .line 765
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
    .line 766
    const-string/jumbo v2, "Screen on blocked"

    #@33
    const-wide/32 v4, 0x20000

    #@36
    const/4 v3, 0x0

    #@37
    invoke-static {v4, v5, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    #@3a
    .line 761
    .end local v0    # "delay":J
    :cond_0
    return-void
.end method

.method private updatePowerState()V
    .locals 15

    #@0
    .prologue
    .line 498
    const/4 v5, 0x0

    #@1
    .line 499
    .local v5, "mustInitialize":Z
    const/4 v0, 0x0

    #@2
    .line 501
    .local v0, "autoBrightnessAdjustmentChanged":Z
    iget-object v13, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v13

    #@5
    .line 502
    const/4 v12, 0x0

    #@6
    :try_start_0
    iput-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    #@8
    .line 503
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    if-nez v12, :cond_0

    #@c
    monitor-exit v13

    #@d
    .line 504
    return-void

    #@e
    .line 507
    :cond_0
    :try_start_1
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@10
    if-nez v12, :cond_4

    #@12
    .line 508
    new-instance v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@14
    iget-object v14, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@16
    invoke-direct {v12, v14}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    #@19
    iput-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@1b
    .line 509
    iget-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    #@1d
    iput-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    #@1f
    .line 510
    const/4 v12, 0x0

    #@20
    iput-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    #@22
    .line 511
    const/4 v12, 0x0

    #@23
    iput-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    #@25
    .line 512
    const/4 v5, 0x1

    #@26
    .line 523
    :cond_1
    :goto_0
    iget-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    if-eqz v12, :cond_6

    #@2a
    const/4 v6, 0x0

    #@2b
    .local v6, "mustNotify":Z
    :goto_1
    monitor-exit v13

    #@2c
    .line 527
    if-eqz v5, :cond_2

    #@2e
    .line 528
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->initialize()V

    #@31
    .line 534
    :cond_2
    const/4 v3, -0x1

    #@32
    .line 535
    .local v3, "brightness":I
    const/4 v7, 0x0

    #@33
    .line 536
    .local v7, "performScreenOffTransition":Z
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@35
    iget v12, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    #@37
    packed-switch v12, :pswitch_data_0

    #@3a
    .line 554
    const/4 v10, 0x2

    #@3b
    .line 557
    .local v10, "state":I
    :cond_3
    :goto_2
    sget-boolean v12, Lcom/android/server/display/DisplayPowerController;->-assertionsDisabled:Z

    #@3d
    if-nez v12, :cond_9

    #@3f
    if-eqz v10, :cond_8

    #@41
    const/4 v12, 0x1

    #@42
    :goto_3
    if-nez v12, :cond_9

    #@44
    new-instance v12, Ljava/lang/AssertionError;

    #@46
    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    #@49
    throw v12

    #@4a
    .line 513
    .end local v3    # "brightness":I
    .end local v6    # "mustNotify":Z
    .end local v7    # "performScreenOffTransition":Z
    .end local v10    # "state":I
    :cond_4
    :try_start_2
    iget-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    #@4c
    if-eqz v12, :cond_1

    #@4e
    .line 514
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@50
    iget v12, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    #@52
    .line 515
    iget-object v14, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@54
    iget v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    #@56
    .line 514
    cmpl-float v12, v12, v14

    #@58
    if-eqz v12, :cond_5

    #@5a
    const/4 v0, 0x1

    #@5b
    .line 516
    :goto_4
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@5d
    iget-object v14, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@5f
    invoke-virtual {v12, v14}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    #@62
    .line 517
    iget-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    #@64
    iget-boolean v14, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    #@66
    or-int/2addr v12, v14

    #@67
    iput-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    #@69
    .line 518
    const/4 v12, 0x0

    #@6a
    iput-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    #@6c
    .line 519
    const/4 v12, 0x0

    #@6d
    iput-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    #@6f
    .line 520
    const/4 v12, 0x0

    #@70
    iput-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@72
    goto :goto_0

    #@73
    .line 501
    :catchall_0
    move-exception v12

    #@74
    monitor-exit v13

    #@75
    throw v12

    #@76
    .line 514
    :cond_5
    const/4 v0, 0x0

    #@77
    goto :goto_4

    #@78
    .line 523
    :cond_6
    const/4 v6, 0x1

    #@79
    .restart local v6    # "mustNotify":Z
    goto :goto_1

    #@7a
    .line 538
    .restart local v3    # "brightness":I
    .restart local v7    # "performScreenOffTransition":Z
    :pswitch_0
    const/4 v10, 0x1

    #@7b
    .line 539
    .restart local v10    # "state":I
    const/4 v7, 0x1

    #@7c
    .line 540
    goto :goto_2

    #@7d
    .line 542
    .end local v10    # "state":I
    :pswitch_1
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@7f
    iget v12, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    #@81
    if-eqz v12, :cond_7

    #@83
    .line 543
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@85
    iget v10, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    #@87
    .line 547
    .restart local v10    # "state":I
    :goto_5
    iget-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    #@89
    if-nez v12, :cond_3

    #@8b
    .line 548
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@8d
    iget v3, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    #@8f
    goto :goto_2

    #@90
    .line 545
    .end local v10    # "state":I
    :cond_7
    const/4 v10, 0x3

    #@91
    .restart local v10    # "state":I
    goto :goto_5

    #@92
    .line 557
    :cond_8
    const/4 v12, 0x0

    #@93
    goto :goto_3

    #@94
    .line 560
    :cond_9
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    #@96
    if-eqz v12, :cond_28

    #@98
    .line 561
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@9a
    iget-boolean v12, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    #@9c
    if-eqz v12, :cond_26

    #@9e
    const/4 v12, 0x1

    #@9f
    if-eq v10, v12, :cond_26

    #@a1
    .line 562
    const/4 v12, 0x1

    #@a2
    invoke-direct {p0, v12}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    #@a5
    .line 563
    iget-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    #@a7
    if-nez v12, :cond_a

    #@a9
    .line 564
    iget v12, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    #@ab
    const/4 v13, 0x1

    #@ac
    if-ne v12, v13, :cond_a

    #@ae
    .line 565
    const/4 v12, 0x1

    #@af
    iput-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    #@b1
    .line 566
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityPositiveWithWakelock()V

    #@b4
    .line 577
    :cond_a
    :goto_6
    iget-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    #@b6
    if-eqz v12, :cond_b

    #@b8
    .line 578
    iget v12, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    #@ba
    const/4 v13, 0x1

    #@bb
    if-eq v12, v13, :cond_b

    #@bd
    .line 579
    const/4 v12, 0x0

    #@be
    iput-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    #@c0
    .line 580
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityNegativeWithWakelock()V

    #@c3
    .line 585
    :cond_b
    :goto_7
    iget-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    #@c5
    if-eqz v12, :cond_c

    #@c7
    .line 586
    const/4 v10, 0x1

    #@c8
    .line 592
    :cond_c
    invoke-direct {p0, v10, v7}, Lcom/android/server/display/DisplayPowerController;->animateScreenStateChange(IZ)V

    #@cb
    .line 593
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@cd
    invoke-virtual {v12}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    #@d0
    move-result v10

    #@d1
    .line 596
    const/4 v12, 0x1

    #@d2
    if-ne v10, v12, :cond_d

    #@d4
    .line 597
    const/4 v3, 0x0

    #@d5
    .line 601
    :cond_d
    const/4 v1, 0x0

    #@d6
    .line 602
    .local v1, "autoBrightnessEnabled":Z
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    #@d8
    if-eqz v12, :cond_10

    #@da
    .line 603
    iget-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    #@dc
    if-eqz v12, :cond_2a

    #@de
    .line 604
    const/4 v12, 0x3

    #@df
    if-eq v10, v12, :cond_e

    #@e1
    const/4 v12, 0x4

    #@e2
    if-ne v10, v12, :cond_29

    #@e4
    :cond_e
    const/4 v2, 0x1

    #@e5
    .line 605
    .local v2, "autoBrightnessEnabledInDoze":Z
    :goto_8
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@e7
    iget-boolean v12, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    #@e9
    if-eqz v12, :cond_2c

    #@eb
    .line 606
    const/4 v12, 0x2

    #@ec
    if-eq v10, v12, :cond_f

    #@ee
    .line 605
    if-eqz v2, :cond_2c

    #@f0
    .line 607
    :cond_f
    if-gez v3, :cond_2b

    #@f2
    const/4 v1, 0x1

    #@f3
    .line 608
    :goto_9
    if-eqz v0, :cond_2d

    #@f5
    .line 609
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@f7
    iget-boolean v11, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->brightnessSetByUser:Z

    #@f9
    .line 610
    :goto_a
    iget-object v13, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    #@fb
    .line 611
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@fd
    iget v14, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    #@ff
    const/4 v12, 0x2

    #@100
    if-eq v10, v12, :cond_2e

    #@102
    const/4 v12, 0x1

    #@103
    .line 610
    :goto_b
    invoke-virtual {v13, v1, v14, v12, v11}, Lcom/android/server/display/AutomaticBrightnessController;->configure(ZFZZ)V

    #@106
    .line 620
    .end local v2    # "autoBrightnessEnabledInDoze":Z
    :cond_10
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@108
    iget-boolean v12, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    #@10a
    if-eqz v12, :cond_11

    #@10c
    .line 621
    if-eqz v3, :cond_11

    #@10e
    .line 622
    const/16 v3, 0xff

    #@110
    .line 626
    :cond_11
    const/4 v9, 0x0

    #@111
    .line 627
    .local v9, "slowChange":Z
    if-gez v3, :cond_31

    #@113
    .line 628
    if-eqz v1, :cond_12

    #@115
    .line 629
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    #@117
    invoke-virtual {v12}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightness()I

    #@11a
    move-result v3

    #@11b
    .line 631
    :cond_12
    if-ltz v3, :cond_30

    #@11d
    .line 633
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(I)I

    #@120
    move-result v3

    #@121
    .line 634
    iget-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    #@123
    if-eqz v12, :cond_13

    #@125
    if-eqz v0, :cond_2f

    #@127
    .line 637
    :cond_13
    :goto_c
    const/4 v12, 0x1

    #@128
    iput-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    #@12a
    .line 646
    :goto_d
    if-gez v3, :cond_15

    #@12c
    const/4 v12, 0x3

    #@12d
    if-eq v10, v12, :cond_14

    #@12f
    .line 647
    const/4 v12, 0x4

    #@130
    if-ne v10, v12, :cond_15

    #@132
    .line 648
    :cond_14
    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:I

    #@134
    .line 655
    :cond_15
    if-gez v3, :cond_16

    #@136
    .line 656
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@138
    iget v12, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    #@13a
    invoke-direct {p0, v12}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(I)I

    #@13d
    move-result v3

    #@13e
    .line 661
    :cond_16
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@140
    iget v12, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    #@142
    const/4 v13, 0x2

    #@143
    if-ne v12, v13, :cond_19

    #@145
    .line 662
    iget v12, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    #@147
    if-le v3, v12, :cond_17

    #@149
    .line 663
    add-int/lit8 v12, v3, -0xa

    #@14b
    .line 664
    iget v13, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    #@14d
    .line 663
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    #@150
    move-result v12

    #@151
    .line 664
    iget v13, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    #@153
    .line 663
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    #@156
    move-result v3

    #@157
    .line 666
    :cond_17
    iget-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    #@159
    if-nez v12, :cond_18

    #@15b
    .line 667
    const/4 v9, 0x0

    #@15c
    .line 669
    :cond_18
    const/4 v12, 0x1

    #@15d
    iput-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    #@15f
    .line 674
    :cond_19
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@161
    iget-boolean v12, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    #@163
    if-eqz v12, :cond_1c

    #@165
    .line 675
    iget v12, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    #@167
    if-le v3, v12, :cond_1a

    #@169
    .line 676
    div-int/lit8 v12, v3, 0x2

    #@16b
    iget v13, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    #@16d
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    #@170
    move-result v3

    #@171
    .line 678
    :cond_1a
    iget-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    #@173
    if-nez v12, :cond_1b

    #@175
    .line 679
    const/4 v9, 0x0

    #@176
    .line 681
    :cond_1b
    const/4 v12, 0x1

    #@177
    iput-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    #@179
    .line 686
    :cond_1c
    iget-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    #@17b
    if-nez v12, :cond_1e

    #@17d
    .line 687
    const/4 v12, 0x2

    #@17e
    if-eq v10, v12, :cond_1d

    #@180
    const/4 v12, 0x3

    #@181
    if-ne v10, v12, :cond_33

    #@183
    .line 689
    :cond_1d
    if-eqz v9, :cond_32

    #@185
    const/16 v12, 0x28

    #@187
    .line 688
    :goto_e
    invoke-direct {p0, v3, v12}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(II)V

    #@18a
    .line 699
    :cond_1e
    :goto_f
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    #@18c
    if-nez v12, :cond_1f

    #@18e
    .line 700
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    #@190
    invoke-virtual {v12}, Landroid/animation/ObjectAnimator;->isStarted()Z

    #@193
    move-result v12

    #@194
    if-eqz v12, :cond_34

    #@196
    .line 699
    :cond_1f
    const/4 v8, 0x0

    #@197
    .line 703
    :goto_10
    if-eqz v8, :cond_36

    #@199
    .line 704
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    #@19b
    invoke-virtual {v12}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    #@19e
    move-result v12

    #@19f
    if-eqz v12, :cond_35

    #@1a1
    const/4 v4, 0x0

    #@1a2
    .line 707
    .local v4, "finished":Z
    :goto_11
    if-eqz v8, :cond_20

    #@1a4
    const/4 v12, 0x1

    #@1a5
    if-eq v10, v12, :cond_20

    #@1a7
    .line 708
    iget v12, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    #@1a9
    const/4 v13, 0x1

    #@1aa
    if-ne v12, v13, :cond_20

    #@1ac
    .line 709
    const/4 v12, 0x2

    #@1ad
    iput v12, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    #@1af
    .line 710
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Landroid/view/WindowManagerPolicy;

    #@1b1
    invoke-interface {v12}, Landroid/view/WindowManagerPolicy;->screenTurnedOn()V

    #@1b4
    .line 714
    :cond_20
    if-nez v4, :cond_21

    #@1b6
    iget-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    #@1b8
    if-eqz v12, :cond_37

    #@1ba
    .line 723
    :cond_21
    :goto_12
    if-eqz v8, :cond_23

    #@1bc
    if-eqz v6, :cond_23

    #@1be
    .line 725
    iget-object v13, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    #@1c0
    monitor-enter v13

    #@1c1
    .line 726
    :try_start_3
    iget-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    #@1c3
    if-nez v12, :cond_22

    #@1c5
    .line 727
    const/4 v12, 0x1

    #@1c6
    iput-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    #@1c8
    .line 729
    sget-boolean v12, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    #@1ca
    if-eqz v12, :cond_22

    #@1cc
    .line 730
    const-string/jumbo v12, "DisplayPowerController"

    #@1cf
    const-string/jumbo v14, "Display ready!"

    #@1d2
    invoke-static {v12, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@1d5
    :cond_22
    monitor-exit v13

    #@1d6
    .line 734
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendOnStateChangedWithWakelock()V

    #@1d9
    .line 738
    :cond_23
    if-eqz v4, :cond_25

    #@1db
    iget-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    #@1dd
    if-eqz v12, :cond_25

    #@1df
    .line 739
    sget-boolean v12, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    #@1e1
    if-eqz v12, :cond_24

    #@1e3
    .line 740
    const-string/jumbo v12, "DisplayPowerController"

    #@1e6
    const-string/jumbo v13, "Finished business..."

    #@1e9
    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1ec
    .line 742
    :cond_24
    const/4 v12, 0x0

    #@1ed
    iput-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    #@1ef
    .line 743
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    #@1f1
    invoke-interface {v12}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker()V

    #@1f4
    .line 495
    :cond_25
    return-void

    #@1f5
    .line 568
    .end local v1    # "autoBrightnessEnabled":Z
    .end local v4    # "finished":Z
    .end local v9    # "slowChange":Z
    :cond_26
    iget-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    #@1f7
    if-eqz v12, :cond_27

    #@1f9
    .line 569
    iget-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    #@1fb
    .line 568
    if-eqz v12, :cond_27

    #@1fd
    .line 570
    iget v12, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    #@1ff
    const/4 v13, 0x1

    #@200
    if-ne v12, v13, :cond_27

    #@202
    .line 571
    const/4 v12, 0x1

    #@203
    if-eq v10, v12, :cond_27

    #@205
    .line 572
    const/4 v12, 0x1

    #@206
    invoke-direct {p0, v12}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    #@209
    goto/16 :goto_6

    #@20b
    .line 574
    :cond_27
    const/4 v12, 0x0

    #@20c
    invoke-direct {p0, v12}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    #@20f
    .line 575
    const/4 v12, 0x0

    #@210
    iput-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    #@212
    goto/16 :goto_6

    #@214
    .line 583
    :cond_28
    const/4 v12, 0x0

    #@215
    iput-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    #@217
    goto/16 :goto_7

    #@219
    .line 604
    .restart local v1    # "autoBrightnessEnabled":Z
    :cond_29
    const/4 v2, 0x0

    #@21a
    .restart local v2    # "autoBrightnessEnabledInDoze":Z
    goto/16 :goto_8

    #@21c
    .line 603
    .end local v2    # "autoBrightnessEnabledInDoze":Z
    :cond_2a
    const/4 v2, 0x0

    #@21d
    .restart local v2    # "autoBrightnessEnabledInDoze":Z
    goto/16 :goto_8

    #@21f
    .line 607
    :cond_2b
    const/4 v1, 0x0

    #@220
    goto/16 :goto_9

    #@222
    .line 605
    :cond_2c
    const/4 v1, 0x0

    #@223
    goto/16 :goto_9

    #@225
    .line 608
    :cond_2d
    const/4 v11, 0x0

    #@226
    .local v11, "userInitiatedChange":Z
    goto/16 :goto_a

    #@228
    .line 611
    .end local v11    # "userInitiatedChange":Z
    :cond_2e
    const/4 v12, 0x0

    #@229
    goto/16 :goto_b

    #@22b
    .line 635
    .end local v2    # "autoBrightnessEnabledInDoze":Z
    .restart local v9    # "slowChange":Z
    :cond_2f
    const/4 v9, 0x1

    #@22c
    goto/16 :goto_c

    #@22e
    .line 639
    :cond_30
    const/4 v12, 0x0

    #@22f
    iput-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    #@231
    goto/16 :goto_d

    #@233
    .line 642
    :cond_31
    const/4 v12, 0x0

    #@234
    iput-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    #@236
    goto/16 :goto_d

    #@238
    .line 689
    :cond_32
    const/16 v12, 0xc8

    #@23a
    goto/16 :goto_e

    #@23c
    .line 691
    :cond_33
    const/4 v12, 0x0

    #@23d
    invoke-direct {p0, v3, v12}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(II)V

    #@240
    goto/16 :goto_f

    #@242
    .line 701
    :cond_34
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    #@244
    invoke-virtual {v12}, Landroid/animation/ObjectAnimator;->isStarted()Z

    #@247
    move-result v12

    #@248
    if-nez v12, :cond_1f

    #@24a
    .line 702
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    #@24c
    iget-object v13, p0, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    #@24e
    invoke-virtual {v12, v13}, Lcom/android/server/display/DisplayPowerState;->waitUntilClean(Ljava/lang/Runnable;)Z

    #@251
    move-result v8

    #@252
    .local v8, "ready":Z
    goto/16 :goto_10

    #@254
    .line 704
    .end local v8    # "ready":Z
    :cond_35
    const/4 v4, 0x1

    #@255
    .restart local v4    # "finished":Z
    goto/16 :goto_11

    #@257
    .line 703
    .end local v4    # "finished":Z
    :cond_36
    const/4 v4, 0x0

    #@258
    .restart local v4    # "finished":Z
    goto/16 :goto_11

    #@25a
    .line 715
    :cond_37
    sget-boolean v12, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    #@25c
    if-eqz v12, :cond_38

    #@25e
    .line 716
    const-string/jumbo v12, "DisplayPowerController"

    #@261
    const-string/jumbo v13, "Unfinished business..."

    #@264
    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@267
    .line 718
    :cond_38
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    #@269
    invoke-interface {v12}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    #@26c
    .line 719
    const/4 v12, 0x1

    #@26d
    iput-boolean v12, p0, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    #@26f
    goto/16 :goto_12

    #@271
    .line 725
    :catchall_1
    move-exception v12

    #@272
    monitor-exit v13

    #@273
    throw v12

    #@274
    .line 536
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
    .line 1060
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1061
    :try_start_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@6
    .line 1062
    const-string/jumbo v0, "Display Power Controller Locked State:"

    #@9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c
    .line 1063
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
    .line 1064
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
    .line 1065
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
    .line 1066
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
    .line 1067
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    #@65
    .line 1066
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
    .line 1068
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
    .line 1071
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@8d
    .line 1072
    const-string/jumbo v0, "Display Power Controller Configuration:"

    #@90
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@93
    .line 1073
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
    .line 1074
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
    .line 1075
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
    .line 1076
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
    .line 1077
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
    .line 1078
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
    .line 1079
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
    .line 1080
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    #@137
    .line 1079
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
    .line 1081
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
    .line 1083
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    #@15d
    new-instance v1, Lcom/android/server/display/DisplayPowerController$8;

    #@15f
    invoke-direct {v1, p0, p1}, Lcom/android/server/display/DisplayPowerController$8;-><init>(Lcom/android/server/display/DisplayPowerController;Ljava/io/PrintWriter;)V

    #@162
    .line 1088
    const-wide/16 v2, 0x3e8

    #@164
    .line 1083
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->runWithScissors(Ljava/lang/Runnable;J)Z

    #@167
    .line 1059
    return-void

    #@168
    .line 1060
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
    .line 374
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
    .line 393
    sget-boolean v1, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 394
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
    .line 395
    const-string/jumbo v3, ", waitForNegativeProximity="

    #@1a
    .line 394
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
    .line 398
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    #@2b
    monitor-enter v2

    #@2c
    .line 399
    const/4 v0, 0x0

    #@2d
    .line 401
    .local v0, "changed":Z
    if-eqz p2, :cond_1

    #@2f
    .line 402
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    #@31
    if-eqz v1, :cond_5

    #@33
    .line 407
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@35
    if-nez v1, :cond_6

    #@37
    .line 408
    new-instance v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@39
    invoke-direct {v1, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    #@3c
    iput-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@3e
    .line 409
    const/4 v0, 0x1

    #@3f
    .line 415
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    #@41
    .line 416
    const/4 v1, 0x0

    #@42
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    #@44
    .line 419
    :cond_3
    if-eqz v0, :cond_4

    #@46
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    #@48
    if-eqz v1, :cond_7

    #@4a
    .line 424
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
    .line 403
    :cond_5
    const/4 v1, 0x1

    #@4f
    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    #@51
    .line 404
    const/4 v0, 0x1

    #@52
    goto :goto_0

    #@53
    .line 410
    :cond_6
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@55
    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->equals(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z

    #@58
    move-result v1

    #@59
    if-nez v1, :cond_2

    #@5b
    .line 411
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@5d
    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    #@60
    .line 412
    const/4 v0, 0x1

    #@61
    goto :goto_1

    #@62
    .line 420
    :cond_7
    const/4 v1, 0x1

    #@63
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    #@65
    .line 421
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@68
    goto :goto_2

    #@69
    .line 398
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
    .line 749
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    #@3
    .line 748
    return-void
.end method
