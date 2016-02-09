.class public final Lcom/android/server/power/PowerManagerService;
.super Lcom/android/server/SystemService;
.source "PowerManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/PowerManagerService$BatteryReceiver;,
        Lcom/android/server/power/PowerManagerService$DreamReceiver;,
        Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;,
        Lcom/android/server/power/PowerManagerService$DockReceiver;,
        Lcom/android/server/power/PowerManagerService$SettingsObserver;,
        Lcom/android/server/power/PowerManagerService$PowerManagerHandler;,
        Lcom/android/server/power/PowerManagerService$WakeLock;,
        Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;,
        Lcom/android/server/power/PowerManagerService$BinderService;,
        Lcom/android/server/power/PowerManagerService$LocalService;,
        Lcom/android/server/power/PowerManagerService$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_SPEW:Z = false

.field private static final DEFAULT_DOUBLE_TAP_TO_WAKE:I = 0x0

.field private static final DEFAULT_SCREEN_OFF_TIMEOUT:I = 0x3a98

.field private static final DEFAULT_SLEEP_TIMEOUT:I = -0x1

.field private static final DIRTY_ACTUAL_DISPLAY_POWER_STATE_UPDATED:I = 0x8

.field private static final DIRTY_BATTERY_STATE:I = 0x100

.field private static final DIRTY_BOOT_COMPLETED:I = 0x10

.field private static final DIRTY_DOCK_STATE:I = 0x400

.field private static final DIRTY_IS_POWERED:I = 0x40

.field private static final DIRTY_PROXIMITY_POSITIVE:I = 0x200

.field private static final DIRTY_SCREEN_BRIGHTNESS_BOOST:I = 0x800

.field private static final DIRTY_SETTINGS:I = 0x20

.field private static final DIRTY_STAY_ON:I = 0x80

.field private static final DIRTY_USER_ACTIVITY:I = 0x4

.field private static final DIRTY_WAKEFULNESS:I = 0x2

.field private static final DIRTY_WAKE_LOCKS:I = 0x1

.field private static final MSG_SANDMAN:I = 0x2

.field private static final MSG_SCREEN_BRIGHTNESS_BOOST_TIMEOUT:I = 0x3

.field private static final MSG_USER_ACTIVITY_TIMEOUT:I = 0x1

.field private static final POWER_FEATURE_DOUBLE_TAP_TO_WAKE:I = 0x1

.field private static final POWER_HINT_INTERACTION:I = 0x2

.field private static final POWER_HINT_LOW_POWER:I = 0x5

.field private static final SCREEN_BRIGHTNESS_BOOST_TIMEOUT:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "PowerManagerService"

.field private static final USER_ACTIVITY_SCREEN_BRIGHT:I = 0x1

.field private static final USER_ACTIVITY_SCREEN_DIM:I = 0x2

.field private static final USER_ACTIVITY_SCREEN_DREAM:I = 0x4

.field private static final WAKE_LOCK_BUTTON_BRIGHT:I = 0x8

.field private static final WAKE_LOCK_CPU:I = 0x1

.field private static final WAKE_LOCK_DOZE:I = 0x40

.field private static final WAKE_LOCK_DRAW:I = 0x80

.field private static final WAKE_LOCK_PROXIMITY_SCREEN_OFF:I = 0x10

.field private static final WAKE_LOCK_SCREEN_BRIGHT:I = 0x2

.field private static final WAKE_LOCK_SCREEN_DIM:I = 0x4

.field private static final WAKE_LOCK_STAY_AWAKE:I = 0x20


# instance fields
.field private mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private mAttentionLight:Lcom/android/server/lights/Light;

.field private mAutoLowPowerModeConfigured:Z

.field private mAutoLowPowerModeSnoozing:Z

.field private mBatteryLevel:I

.field private mBatteryLevelLow:Z

.field private mBatteryLevelWhenDreamStarted:I

.field private mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBootCompleted:Z

.field private final mContext:Landroid/content/Context;

.field private mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

.field private mDecoupleHalInteractiveModeFromDisplayConfig:Z

.field private mDeviceIdleMode:Z

.field mDeviceIdleTempWhitelist:[I

.field mDeviceIdleWhitelist:[I

.field private mDirty:I

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private final mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field private final mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private mDisplayReady:Z

.field private final mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private mDockState:I

.field private mDoubleTapWakeEnabled:Z

.field private mDozeAfterScreenOffConfig:Z

.field private mDozeScreenBrightnessOverrideFromDreamManager:I

.field private mDozeScreenStateOverrideFromDreamManager:I

.field private mDreamManager:Landroid/service/dreams/DreamManagerInternal;

.field private mDreamsActivateOnDockSetting:Z

.field private mDreamsActivateOnSleepSetting:Z

.field private mDreamsActivatedOnDockByDefaultConfig:Z

.field private mDreamsActivatedOnSleepByDefaultConfig:Z

.field private mDreamsBatteryLevelDrainCutoffConfig:I

.field private mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

.field private mDreamsBatteryLevelMinimumWhenPoweredConfig:I

.field private mDreamsEnabledByDefaultConfig:Z

.field private mDreamsEnabledOnBatteryConfig:Z

.field private mDreamsEnabledSetting:Z

.field private mDreamsSupportedConfig:Z

.field private mHalAutoSuspendModeEnabled:Z

.field private mHalInteractiveModeEnabled:Z

.field private final mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

.field private final mHandlerThread:Lcom/android/server/ServiceThread;

.field private mHoldingDisplaySuspendBlocker:Z

.field private mHoldingWakeLockSuspendBlocker:Z

.field private mIsPowered:Z

.field private mLastInteractivePowerHintTime:J

.field private mLastScreenBrightnessBoostTime:J

.field private mLastSleepTime:J

.field private mLastUserActivityTime:J

.field private mLastUserActivityTimeNoChangeLights:J

.field private mLastWakeTime:J

.field private mLastWarningAboutUserActivityPermission:J

.field private mLightsManager:Lcom/android/server/lights/LightsManager;

.field private final mLock:Ljava/lang/Object;

.field private mLowPowerModeEnabled:Z

.field private final mLowPowerModeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/PowerManagerInternal$LowPowerModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLowPowerModeSetting:Z

.field private mMaximumScreenDimDurationConfig:I

.field private mMaximumScreenDimRatioConfig:F

.field private mMaximumScreenOffTimeoutFromDeviceAdmin:I

.field private mMinimumScreenOffTimeoutConfig:I

.field private mNotifier:Lcom/android/server/power/Notifier;

.field private mPlugType:I

.field private mPolicy:Landroid/view/WindowManagerPolicy;

.field private mProximityPositive:Z

.field private mRequestWaitForNegativeProximity:Z

.field private mSandmanScheduled:Z

.field private mSandmanSummoned:Z

.field private mScreenAutoBrightnessAdjustmentSetting:F

.field private mScreenBrightnessBoostInProgress:Z

.field private mScreenBrightnessModeSetting:I

.field private mScreenBrightnessOverrideFromWindowManager:I

.field private mScreenBrightnessSetting:I

.field private mScreenBrightnessSettingDefault:I

.field private mScreenBrightnessSettingMaximum:I

.field private mScreenBrightnessSettingMinimum:I

.field private mScreenOffTimeoutSetting:I

.field private mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

.field private mSleepTimeoutSetting:I

.field private mStayOn:Z

.field private mStayOnWhilePluggedInSetting:I

.field private mSupportsDoubleTapWakeConfig:Z

.field private final mSuspendBlockers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/SuspendBlocker;",
            ">;"
        }
    .end annotation
.end field

.field private mSuspendWhenScreenOffDueToProximityConfig:Z

.field private mSystemReady:Z

.field private mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

.field private mTemporaryScreenBrightnessSettingOverride:I

.field private mTheaterModeEnabled:Z

.field private final mUidState:Landroid/util/SparseIntArray;

.field private mUserActivitySummary:I

.field private mUserActivityTimeoutOverrideFromWindowManager:J

.field private mWakeLockSummary:I

.field private final mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private final mWakeLocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/PowerManagerService$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeUpWhenPluggedOrUnpluggedConfig:Z

.field private mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

.field private mWakefulness:I

.field private mWakefulnessChanging:Z

.field private mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;


# direct methods
.method static synthetic -get0(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    #@2
    return v0
.end method

.method static synthetic -get10(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    #@2
    return v0
.end method

.method static synthetic -get3(Lcom/android/server/power/PowerManagerService;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@2
    return v0
.end method

.method static synthetic -get4(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/SuspendBlocker;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/power/PowerManagerService;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    #@2
    return v0
.end method

.method static synthetic -get6(Lcom/android/server/power/PowerManagerService;)J
    .locals 2

    #@0
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    #@2
    return-wide v0
.end method

.method static synthetic -get7(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    #@2
    return v0
.end method

.method static synthetic -get9(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeListeners:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/power/PowerManagerService;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/server/power/PowerManagerService;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    #@2
    return p1
.end method

.method static synthetic -set2(Lcom/android/server/power/PowerManagerService;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    #@2
    return-wide p1
.end method

.method static synthetic -set3(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .locals 1
    .param p0, "workSource"    # Landroid/os/WorkSource;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->copyWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isDeviceIdleModeInternal()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->crashInternal(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/power/PowerManagerService;Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->dumpInternal(Ljava/io/PrintWriter;)V

    #@3
    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/power/PowerManagerService;JIII)V
    .locals 1
    .param p1, "eventTime"    # J
    .param p3, "reason"    # I
    .param p4, "flags"    # I
    .param p5, "uid"    # I

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->goToSleepInternal(JIII)V

    #@3
    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleBatteryStateChangedLocked()V

    #@3
    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleSandman()V

    #@3
    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleScreenBrightnessBoostTimeout()V

    #@3
    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleSettingsChangedLocked()V

    #@3
    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUserActivityTimeout()V

    #@3
    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 0
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->handleWakeLockDeath(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    #@3
    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/power/PowerManagerService;JI)V
    .locals 1
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->napInternal(JI)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isInteractiveInternal()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap20(Ljava/lang/String;)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeAcquireSuspendBlocker(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap21(Ljava/lang/String;)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeReleaseSuspendBlocker(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/power/PowerManagerService;II)V
    .locals 0
    .param p1, "hintId"    # I
    .param p2, "data"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->powerHintInternal(II)V

    #@3
    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;I)V
    .locals 0
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->releaseWakeLockInternal(Landroid/os/IBinder;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->scheduleSandmanLocked()V

    #@3
    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/power/PowerManagerService;ZI)V
    .locals 0
    .param p1, "on"    # Z
    .param p2, "color"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setAttentionLightInternal(ZI)V

    #@3
    return-void
.end method

.method static synthetic -wrap26(Lcom/android/server/power/PowerManagerService;II)V
    .locals 0
    .param p1, "screenState"    # I
    .param p2, "screenBrightness"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setDozeOverrideFromDreamManagerInternal(II)V

    #@3
    return-void
.end method

.method static synthetic -wrap27(Lcom/android/server/power/PowerManagerService;Z)V
    .locals 0
    .param p1, "enable"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap28(Lcom/android/server/power/PowerManagerService;Z)V
    .locals 0
    .param p1, "enable"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap29(Lcom/android/server/power/PowerManagerService;I)V
    .locals 0
    .param p1, "brightness"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setScreenBrightnessOverrideFromWindowManagerInternal(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isLowPowerModeInternal()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap30(Lcom/android/server/power/PowerManagerService;F)V
    .locals 0
    .param p1, "adj"    # F

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverrideInternal(F)V

    #@3
    return-void
.end method

.method static synthetic -wrap31(Lcom/android/server/power/PowerManagerService;I)V
    .locals 0
    .param p1, "brightness"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setTemporaryScreenBrightnessSettingOverrideInternal(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap32(Lcom/android/server/power/PowerManagerService;J)V
    .locals 1
    .param p1, "timeoutMillis"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setUserActivityTimeoutOverrideFromWindowManagerInternal(J)V

    #@3
    return-void
.end method

.method static synthetic -wrap33(Lcom/android/server/power/PowerManagerService;ZZLjava/lang/String;Z)V
    .locals 0
    .param p1, "shutdown"    # Z
    .param p2, "confirm"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "wait"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/power/PowerManagerService;->shutdownOrRebootInternal(ZZLjava/lang/String;Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap34(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    #@3
    return-void
.end method

.method static synthetic -wrap35(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V
    .locals 0
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "ws"    # Landroid/os/WorkSource;
    .param p3, "historyTag"    # Ljava/lang/String;
    .param p4, "callingUid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/power/PowerManagerService;->updateWakeLockWorkSourceInternal(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap36(Lcom/android/server/power/PowerManagerService;JIII)V
    .locals 1
    .param p1, "eventTime"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I
    .param p5, "uid"    # I

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->userActivityInternal(JIII)V

    #@3
    return-void
.end method

.method static synthetic -wrap37(Lcom/android/server/power/PowerManagerService;JLjava/lang/String;ILjava/lang/String;I)V
    .locals 1
    .param p1, "eventTime"    # J
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "opPackageName"    # Ljava/lang/String;
    .param p6, "opUid"    # I

    #@0
    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/server/power/PowerManagerService;->wakeUpInternal(JLjava/lang/String;ILjava/lang/String;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isScreenBrightnessBoostedInternal()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/power/PowerManagerService;I)Z
    .locals 1
    .param p1, "level"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->isWakeLockLevelSupportedInternal(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap6(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 1
    .param p1, "mode"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setLowPowerModeInternal(Z)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap7(Lcom/android/server/power/PowerManagerService;JIII)Z
    .locals 1
    .param p1, "eventTime"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I
    .param p5, "uid"    # I

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap8(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    .locals 0
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "ws"    # Landroid/os/WorkSource;
    .param p6, "historyTag"    # Ljava/lang/String;
    .param p7, "uid"    # I
    .param p8, "pid"    # I

    #@0
    .prologue
    invoke-direct/range {p0 .. p8}, Lcom/android/server/power/PowerManagerService;->acquireWakeLockInternal(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/power/PowerManagerService;JI)V
    .locals 1
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->boostScreenBrightnessInternal(JI)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 466
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@5
    .line 178
    new-instance v0, Ljava/lang/Object;

    #@7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@c
    .line 198
    new-instance v0, Ljava/util/ArrayList;

    #@e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@11
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    #@13
    .line 201
    new-instance v0, Ljava/util/ArrayList;

    #@15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@18
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    #@1a
    .line 230
    new-instance v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@1c
    invoke-direct {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>()V

    #@1f
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@21
    .line 280
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    #@23
    .line 362
    const v0, 0x7fffffff

    #@26
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    #@28
    .line 394
    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    #@2a
    .line 399
    const-wide/16 v0, -0x1

    #@2c
    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    #@2e
    .line 404
    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    #@30
    .line 410
    const/high16 v0, 0x7fc00000    # NaNf

    #@32
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    #@34
    .line 413
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    #@36
    .line 416
    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    #@38
    .line 419
    const-wide/high16 v0, -0x8000000000000000L

    #@3a
    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    #@3c
    .line 440
    new-array v0, v3, [I

    #@3e
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    #@40
    .line 443
    new-array v0, v3, [I

    #@42
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    #@44
    .line 445
    new-instance v0, Landroid/util/SparseIntArray;

    #@46
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@49
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@4b
    .line 454
    new-instance v0, Ljava/util/ArrayList;

    #@4d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@50
    .line 453
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeListeners:Ljava/util/ArrayList;

    #@52
    .line 2014
    new-instance v0, Lcom/android/server/power/PowerManagerService$1;

    #@54
    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$1;-><init>(Lcom/android/server/power/PowerManagerService;)V

    #@57
    .line 2013
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    #@59
    .line 467
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    #@5b
    .line 468
    new-instance v0, Lcom/android/server/ServiceThread;

    #@5d
    const-string/jumbo v1, "PowerManagerService"

    #@60
    .line 469
    const/4 v2, -0x4

    #@61
    .line 468
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    #@64
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    #@66
    .line 470
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    #@68
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    #@6b
    .line 471
    new-instance v0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@6d
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    #@6f
    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    #@72
    move-result-object v1

    #@73
    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Looper;)V

    #@76
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@78
    .line 473
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@7a
    monitor-enter v1

    #@7b
    .line 474
    :try_start_0
    const-string/jumbo v0, "PowerManagerService.WakeLocks"

    #@7e
    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    #@81
    move-result-object v0

    #@82
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    #@84
    .line 475
    const-string/jumbo v0, "PowerManagerService.Display"

    #@87
    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    #@8a
    move-result-object v0

    #@8b
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    #@8d
    .line 476
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    #@8f
    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    #@92
    .line 477
    const/4 v0, 0x1

    #@93
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    #@95
    .line 478
    const/4 v0, 0x0

    #@96
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    #@98
    .line 479
    const/4 v0, 0x1

    #@99
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    #@9b
    .line 481
    const/4 v0, 0x1

    #@9c
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@9e
    .line 483
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->nativeInit()V

    #@a1
    .line 484
    const/4 v0, 0x0

    #@a2
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V

    #@a5
    .line 485
    const/4 v0, 0x1

    #@a6
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->nativeSetInteractive(Z)V

    #@a9
    .line 486
    const/4 v0, 0x1

    #@aa
    const/4 v2, 0x0

    #@ab
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->nativeSetFeature(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@ae
    monitor-exit v1

    #@af
    .line 465
    return-void

    #@b0
    .line 473
    :catchall_0
    move-exception v0

    #@b1
    monitor-exit v1

    #@b2
    throw v0
.end method

.method private acquireWakeLockInternal(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    .locals 15
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "ws"    # Landroid/os/WorkSource;
    .param p6, "historyTag"    # Ljava/lang/String;
    .param p7, "uid"    # I
    .param p8, "pid"    # I

    #@0
    .prologue
    .line 775
    iget-object v14, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v14

    #@3
    .line 783
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    #@6
    move-result v12

    #@7
    .line 785
    .local v12, "index":I
    if-ltz v12, :cond_2

    #@9
    .line 786
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    #@11
    .local v1, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    move/from16 v2, p2

    #@13
    move-object/from16 v3, p3

    #@15
    move-object/from16 v4, p5

    #@17
    move/from16 v5, p7

    #@19
    move/from16 v6, p8

    #@1b
    .line 787
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameProperties(ILjava/lang/String;Landroid/os/WorkSource;II)Z

    #@1e
    move-result v2

    #@1f
    if-nez v2, :cond_0

    #@21
    move-object v2, p0

    #@22
    move-object v3, v1

    #@23
    move/from16 v4, p2

    #@25
    move-object/from16 v5, p3

    #@27
    move-object/from16 v6, p4

    #@29
    move/from16 v7, p7

    #@2b
    move/from16 v8, p8

    #@2d
    move-object/from16 v9, p5

    #@2f
    move-object/from16 v10, p6

    #@31
    .line 789
    invoke-direct/range {v2 .. v10}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    #@34
    move/from16 v2, p2

    #@36
    move-object/from16 v3, p3

    #@38
    move-object/from16 v4, p4

    #@3a
    move-object/from16 v5, p5

    #@3c
    move-object/from16 v6, p6

    #@3e
    move/from16 v7, p7

    #@40
    move/from16 v8, p8

    #@42
    .line 791
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/power/PowerManagerService$WakeLock;->updateProperties(ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V

    #@45
    .line 793
    :cond_0
    const/4 v13, 0x0

    #@46
    .line 806
    .local v13, "notifyAcquire":Z
    :goto_0
    move/from16 v0, p7

    #@48
    invoke-direct {p0, v1, v0}, Lcom/android/server/power/PowerManagerService;->applyWakeLockFlagsOnAcquireLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    #@4b
    .line 807
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@4d
    or-int/lit8 v2, v2, 0x1

    #@4f
    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@51
    .line 808
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    #@54
    .line 809
    if-eqz v13, :cond_1

    #@56
    .line 815
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@59
    :cond_1
    monitor-exit v14

    #@5a
    .line 774
    return-void

    #@5b
    .line 795
    .end local v1    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v13    # "notifyAcquire":Z
    :cond_2
    :try_start_1
    new-instance v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    #@5d
    move-object v2, p0

    #@5e
    move-object/from16 v3, p1

    #@60
    move/from16 v4, p2

    #@62
    move-object/from16 v5, p3

    #@64
    move-object/from16 v6, p4

    #@66
    move-object/from16 v7, p5

    #@68
    move-object/from16 v8, p6

    #@6a
    move/from16 v9, p7

    #@6c
    move/from16 v10, p8

    #@6e
    invoke-direct/range {v1 .. v10}, Lcom/android/server/power/PowerManagerService$WakeLock;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@71
    .line 797
    .restart local v1    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    const/4 v2, 0x0

    #@72
    :try_start_2
    move-object/from16 v0, p1

    #@74
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@77
    .line 801
    :try_start_3
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    #@79
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7c
    .line 802
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    #@7f
    .line 803
    const/4 v13, 0x1

    #@80
    .restart local v13    # "notifyAcquire":Z
    goto :goto_0

    #@81
    .line 798
    .end local v13    # "notifyAcquire":Z
    :catch_0
    move-exception v11

    #@82
    .line 799
    .local v11, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@84
    const-string/jumbo v3, "Wake lock is already dead."

    #@87
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8a
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@8b
    .line 775
    .end local v1    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v11    # "ex":Landroid/os/RemoteException;
    .end local v12    # "index":I
    :catchall_0
    move-exception v2

    #@8c
    monitor-exit v14

    #@8d
    throw v2
.end method

.method private applyWakeLockFlagsOnAcquireLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V
    .locals 8
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "uid"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 832
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    #@3
    const/high16 v1, 0x10000000

    #@5
    and-int/2addr v0, v1

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 833
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    #@b
    move-result v0

    #@c
    .line 832
    if-eqz v0, :cond_0

    #@e
    .line 836
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    #@10
    if-eqz v0, :cond_1

    #@12
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    #@14
    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 837
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    #@1c
    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    #@1f
    move-result-object v6

    #@20
    .line 838
    .local v6, "opPackageName":Ljava/lang/String;
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    #@22
    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->get(I)I

    #@25
    move-result v5

    #@26
    .line 844
    .local v5, "opUid":I
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@29
    move-result-wide v2

    #@2a
    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    #@2c
    move-object v1, p0

    #@2d
    move v7, v5

    #@2e
    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z

    #@31
    .line 831
    .end local v5    # "opUid":I
    .end local v6    # "opPackageName":Ljava/lang/String;
    :cond_0
    return-void

    #@32
    .line 840
    :cond_1
    iget-object v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    #@34
    .line 841
    .restart local v6    # "opPackageName":Ljava/lang/String;
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    #@36
    if-eqz v0, :cond_2

    #@38
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    #@3a
    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->get(I)I

    #@3d
    move-result v5

    #@3e
    .restart local v5    # "opUid":I
    goto :goto_0

    #@3f
    .line 842
    .end local v5    # "opUid":I
    :cond_2
    iget v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    #@41
    .restart local v5    # "opUid":I
    goto :goto_0
.end method

.method private applyWakeLockFlagsOnReleaseLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 7
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 901
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    #@3
    const/high16 v1, 0x20000000

    #@5
    and-int/2addr v0, v1

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 902
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    #@b
    move-result v0

    #@c
    .line 901
    if-eqz v0, :cond_0

    #@e
    .line 903
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@11
    move-result-wide v2

    #@12
    .line 906
    iget v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    #@14
    .line 905
    const/4 v5, 0x1

    #@15
    move-object v1, p0

    #@16
    .line 903
    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    #@19
    .line 900
    :cond_0
    return-void
.end method

.method private boostScreenBrightnessInternal(JI)V
    .locals 9
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    #@0
    .prologue
    .line 2444
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v7

    #@3
    .line 2445
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    if-nez v0, :cond_1

    #@b
    :cond_0
    monitor-exit v7

    #@c
    .line 2447
    return-void

    #@d
    .line 2446
    :cond_1
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    #@f
    cmp-long v0, p1, v0

    #@11
    if-ltz v0, :cond_0

    #@13
    .line 2450
    const-string/jumbo v0, "PowerManagerService"

    #@16
    new-instance v1, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v2, "Brightness boost activated (uid "

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    const-string/jumbo v2, ")..."

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    .line 2451
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    #@36
    .line 2452
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    #@38
    if-nez v0, :cond_2

    #@3a
    .line 2453
    const/4 v0, 0x1

    #@3b
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    #@3d
    .line 2454
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    #@3f
    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onScreenBrightnessBoostChanged()V

    #@42
    .line 2456
    :cond_2
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@44
    or-int/lit16 v0, v0, 0x800

    #@46
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@48
    .line 2459
    const/4 v4, 0x0

    #@49
    const/4 v5, 0x0

    #@4a
    move-object v1, p0

    #@4b
    move-wide v2, p1

    #@4c
    move v6, p3

    #@4d
    .line 2458
    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    #@50
    .line 2460
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@53
    monitor-exit v7

    #@54
    .line 2443
    return-void

    #@55
    .line 2444
    :catchall_0
    move-exception v0

    #@56
    monitor-exit v7

    #@57
    throw v0
.end method

.method private canDozeLocked()Z
    .locals 2

    #@0
    .prologue
    .line 1863
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@2
    const/4 v1, 0x3

    #@3
    if-ne v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method private canDreamLocked()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1832
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@3
    const/4 v1, 0x2

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 1833
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1834
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 1835
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@10
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 1836
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    #@18
    and-int/lit8 v0, v0, 0x7

    #@1a
    if-nez v0, :cond_1

    #@1c
    .line 1839
    :cond_0
    return v2

    #@1d
    .line 1838
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    #@1f
    if-eqz v0, :cond_0

    #@21
    .line 1841
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked()Z

    #@24
    move-result v0

    #@25
    if-nez v0, :cond_5

    #@27
    .line 1842
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    #@29
    if-nez v0, :cond_2

    #@2b
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    #@2d
    if-eqz v0, :cond_3

    #@2f
    .line 1845
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    #@31
    if-nez v0, :cond_4

    #@33
    .line 1846
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    #@35
    if-ltz v0, :cond_4

    #@37
    .line 1847
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    #@39
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    #@3b
    if-ge v0, v1, :cond_4

    #@3d
    .line 1848
    return v2

    #@3e
    .line 1843
    :cond_3
    return v2

    #@3f
    .line 1850
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    #@41
    if-eqz v0, :cond_5

    #@43
    .line 1851
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    #@45
    if-ltz v0, :cond_5

    #@47
    .line 1852
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    #@49
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    #@4b
    if-ge v0, v1, :cond_5

    #@4d
    .line 1853
    return v2

    #@4e
    .line 1856
    :cond_5
    const/4 v0, 0x1

    #@4f
    return v0
.end method

.method private static copyWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .locals 1
    .param p0, "workSource"    # Landroid/os/WorkSource;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2744
    if-eqz p0, :cond_0

    #@3
    new-instance v0, Landroid/os/WorkSource;

    #@5
    invoke-direct {v0, p0}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    #@8
    :cond_0
    return-object v0
.end method

.method private crashInternal(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2299
    new-instance v1, Lcom/android/server/power/PowerManagerService$4;

    #@2
    const-string/jumbo v2, "PowerManagerService.crash()"

    #@5
    invoke-direct {v1, p0, v2, p1}, Lcom/android/server/power/PowerManagerService$4;-><init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;Ljava/lang/String;)V

    #@8
    .line 2306
    .local v1, "t":Ljava/lang/Thread;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    #@b
    .line 2307
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 2298
    :goto_0
    return-void

    #@f
    .line 2308
    :catch_0
    move-exception v0

    #@10
    .line 2309
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v2, "PowerManagerService"

    #@13
    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@16
    goto :goto_0
.end method

.method private createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2738
    new-instance v0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;-><init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V

    #@5
    .line 2739
    .local v0, "suspendBlocker":Lcom/android/server/power/SuspendBlocker;
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a
    .line 2740
    return-object v0
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 14
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 2590
    const-string/jumbo v9, "POWER MANAGER (dumpsys power)\n"

    #@3
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 2593
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@8
    monitor-enter v10

    #@9
    .line 2594
    :try_start_0
    const-string/jumbo v9, "Power Manager State:"

    #@c
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f
    .line 2595
    new-instance v9, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v11, "  mDirty=0x"

    #@17
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v9

    #@1b
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@1d
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@20
    move-result-object v11

    #@21
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v9

    #@25
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v9

    #@29
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2c
    .line 2596
    new-instance v9, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v11, "  mWakefulness="

    #@34
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v9

    #@38
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@3a
    invoke-static {v11}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    #@3d
    move-result-object v11

    #@3e
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v9

    #@42
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v9

    #@46
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@49
    .line 2597
    new-instance v9, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v11, "  mWakefulnessChanging="

    #@51
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v9

    #@55
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    #@57
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v9

    #@5b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v9

    #@5f
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@62
    .line 2598
    new-instance v9, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v11, "  mIsPowered="

    #@6a
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v9

    #@6e
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    #@70
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@73
    move-result-object v9

    #@74
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v9

    #@78
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7b
    .line 2599
    new-instance v9, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    const-string/jumbo v11, "  mPlugType="

    #@83
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v9

    #@87
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    #@89
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v9

    #@8d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@90
    move-result-object v9

    #@91
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@94
    .line 2600
    new-instance v9, Ljava/lang/StringBuilder;

    #@96
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@99
    const-string/jumbo v11, "  mBatteryLevel="

    #@9c
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v9

    #@a0
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    #@a2
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v9

    #@a6
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a9
    move-result-object v9

    #@aa
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ad
    .line 2601
    new-instance v9, Ljava/lang/StringBuilder;

    #@af
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@b2
    const-string/jumbo v11, "  mBatteryLevelWhenDreamStarted="

    #@b5
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v9

    #@b9
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    #@bb
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@be
    move-result-object v9

    #@bf
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c2
    move-result-object v9

    #@c3
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c6
    .line 2602
    new-instance v9, Ljava/lang/StringBuilder;

    #@c8
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@cb
    const-string/jumbo v11, "  mDockState="

    #@ce
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v9

    #@d2
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    #@d4
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v9

    #@d8
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@db
    move-result-object v9

    #@dc
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@df
    .line 2603
    new-instance v9, Ljava/lang/StringBuilder;

    #@e1
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@e4
    const-string/jumbo v11, "  mStayOn="

    #@e7
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v9

    #@eb
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    #@ed
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v9

    #@f1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f4
    move-result-object v9

    #@f5
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f8
    .line 2604
    new-instance v9, Ljava/lang/StringBuilder;

    #@fa
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@fd
    const-string/jumbo v11, "  mProximityPositive="

    #@100
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v9

    #@104
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    #@106
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@109
    move-result-object v9

    #@10a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10d
    move-result-object v9

    #@10e
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@111
    .line 2605
    new-instance v9, Ljava/lang/StringBuilder;

    #@113
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@116
    const-string/jumbo v11, "  mBootCompleted="

    #@119
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v9

    #@11d
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    #@11f
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@122
    move-result-object v9

    #@123
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@126
    move-result-object v9

    #@127
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@12a
    .line 2606
    new-instance v9, Ljava/lang/StringBuilder;

    #@12c
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@12f
    const-string/jumbo v11, "  mSystemReady="

    #@132
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@135
    move-result-object v9

    #@136
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    #@138
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@13b
    move-result-object v9

    #@13c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13f
    move-result-object v9

    #@140
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@143
    .line 2607
    new-instance v9, Ljava/lang/StringBuilder;

    #@145
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@148
    const-string/jumbo v11, "  mHalAutoSuspendModeEnabled="

    #@14b
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14e
    move-result-object v9

    #@14f
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    #@151
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@154
    move-result-object v9

    #@155
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@158
    move-result-object v9

    #@159
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@15c
    .line 2608
    new-instance v9, Ljava/lang/StringBuilder;

    #@15e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@161
    const-string/jumbo v11, "  mHalInteractiveModeEnabled="

    #@164
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@167
    move-result-object v9

    #@168
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    #@16a
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v9

    #@16e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@171
    move-result-object v9

    #@172
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@175
    .line 2609
    new-instance v9, Ljava/lang/StringBuilder;

    #@177
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@17a
    const-string/jumbo v11, "  mWakeLockSummary=0x"

    #@17d
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@180
    move-result-object v9

    #@181
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@183
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@186
    move-result-object v11

    #@187
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18a
    move-result-object v9

    #@18b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18e
    move-result-object v9

    #@18f
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@192
    .line 2610
    new-instance v9, Ljava/lang/StringBuilder;

    #@194
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@197
    const-string/jumbo v11, "  mUserActivitySummary=0x"

    #@19a
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19d
    move-result-object v9

    #@19e
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    #@1a0
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1a3
    move-result-object v11

    #@1a4
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a7
    move-result-object v9

    #@1a8
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ab
    move-result-object v9

    #@1ac
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1af
    .line 2611
    new-instance v9, Ljava/lang/StringBuilder;

    #@1b1
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1b4
    const-string/jumbo v11, "  mRequestWaitForNegativeProximity="

    #@1b7
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ba
    move-result-object v9

    #@1bb
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    #@1bd
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1c0
    move-result-object v9

    #@1c1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c4
    move-result-object v9

    #@1c5
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1c8
    .line 2612
    new-instance v9, Ljava/lang/StringBuilder;

    #@1ca
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1cd
    const-string/jumbo v11, "  mSandmanScheduled="

    #@1d0
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d3
    move-result-object v9

    #@1d4
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    #@1d6
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1d9
    move-result-object v9

    #@1da
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1dd
    move-result-object v9

    #@1de
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1e1
    .line 2613
    new-instance v9, Ljava/lang/StringBuilder;

    #@1e3
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1e6
    const-string/jumbo v11, "  mSandmanSummoned="

    #@1e9
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ec
    move-result-object v9

    #@1ed
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    #@1ef
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1f2
    move-result-object v9

    #@1f3
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f6
    move-result-object v9

    #@1f7
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1fa
    .line 2614
    new-instance v9, Ljava/lang/StringBuilder;

    #@1fc
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1ff
    const-string/jumbo v11, "  mLowPowerModeEnabled="

    #@202
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@205
    move-result-object v9

    #@206
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    #@208
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@20b
    move-result-object v9

    #@20c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20f
    move-result-object v9

    #@210
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@213
    .line 2615
    new-instance v9, Ljava/lang/StringBuilder;

    #@215
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@218
    const-string/jumbo v11, "  mBatteryLevelLow="

    #@21b
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21e
    move-result-object v9

    #@21f
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    #@221
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@224
    move-result-object v9

    #@225
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@228
    move-result-object v9

    #@229
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@22c
    .line 2616
    new-instance v9, Ljava/lang/StringBuilder;

    #@22e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@231
    const-string/jumbo v11, "  mDeviceIdleMode="

    #@234
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@237
    move-result-object v9

    #@238
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    #@23a
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@23d
    move-result-object v9

    #@23e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@241
    move-result-object v9

    #@242
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@245
    .line 2617
    new-instance v9, Ljava/lang/StringBuilder;

    #@247
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@24a
    const-string/jumbo v11, "  mDeviceIdleWhitelist="

    #@24d
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@250
    move-result-object v9

    #@251
    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    #@253
    invoke-static {v11}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    #@256
    move-result-object v11

    #@257
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25a
    move-result-object v9

    #@25b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25e
    move-result-object v9

    #@25f
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@262
    .line 2618
    new-instance v9, Ljava/lang/StringBuilder;

    #@264
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@267
    const-string/jumbo v11, "  mDeviceIdleTempWhitelist="

    #@26a
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26d
    move-result-object v9

    #@26e
    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    #@270
    invoke-static {v11}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    #@273
    move-result-object v11

    #@274
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@277
    move-result-object v9

    #@278
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27b
    move-result-object v9

    #@27c
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@27f
    .line 2619
    new-instance v9, Ljava/lang/StringBuilder;

    #@281
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@284
    const-string/jumbo v11, "  mLastWakeTime="

    #@287
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28a
    move-result-object v9

    #@28b
    iget-wide v12, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    #@28d
    invoke-static {v12, v13}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    #@290
    move-result-object v11

    #@291
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@294
    move-result-object v9

    #@295
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@298
    move-result-object v9

    #@299
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@29c
    .line 2620
    new-instance v9, Ljava/lang/StringBuilder;

    #@29e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@2a1
    const-string/jumbo v11, "  mLastSleepTime="

    #@2a4
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a7
    move-result-object v9

    #@2a8
    iget-wide v12, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    #@2aa
    invoke-static {v12, v13}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    #@2ad
    move-result-object v11

    #@2ae
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b1
    move-result-object v9

    #@2b2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b5
    move-result-object v9

    #@2b6
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2b9
    .line 2621
    new-instance v9, Ljava/lang/StringBuilder;

    #@2bb
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@2be
    const-string/jumbo v11, "  mLastUserActivityTime="

    #@2c1
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c4
    move-result-object v9

    #@2c5
    iget-wide v12, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    #@2c7
    invoke-static {v12, v13}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    #@2ca
    move-result-object v11

    #@2cb
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ce
    move-result-object v9

    #@2cf
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d2
    move-result-object v9

    #@2d3
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2d6
    .line 2622
    new-instance v9, Ljava/lang/StringBuilder;

    #@2d8
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@2db
    const-string/jumbo v11, "  mLastUserActivityTimeNoChangeLights="

    #@2de
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e1
    move-result-object v9

    #@2e2
    .line 2623
    iget-wide v12, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    #@2e4
    invoke-static {v12, v13}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    #@2e7
    move-result-object v11

    #@2e8
    .line 2622
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2eb
    move-result-object v9

    #@2ec
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2ef
    move-result-object v9

    #@2f0
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2f3
    .line 2624
    new-instance v9, Ljava/lang/StringBuilder;

    #@2f5
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@2f8
    const-string/jumbo v11, "  mLastInteractivePowerHintTime="

    #@2fb
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2fe
    move-result-object v9

    #@2ff
    .line 2625
    iget-wide v12, p0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    #@301
    invoke-static {v12, v13}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    #@304
    move-result-object v11

    #@305
    .line 2624
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@308
    move-result-object v9

    #@309
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30c
    move-result-object v9

    #@30d
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@310
    .line 2626
    new-instance v9, Ljava/lang/StringBuilder;

    #@312
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@315
    const-string/jumbo v11, "  mLastScreenBrightnessBoostTime="

    #@318
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31b
    move-result-object v9

    #@31c
    .line 2627
    iget-wide v12, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    #@31e
    invoke-static {v12, v13}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    #@321
    move-result-object v11

    #@322
    .line 2626
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@325
    move-result-object v9

    #@326
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@329
    move-result-object v9

    #@32a
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@32d
    .line 2628
    new-instance v9, Ljava/lang/StringBuilder;

    #@32f
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@332
    const-string/jumbo v11, "  mScreenBrightnessBoostInProgress="

    #@335
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@338
    move-result-object v9

    #@339
    .line 2629
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    #@33b
    .line 2628
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@33e
    move-result-object v9

    #@33f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@342
    move-result-object v9

    #@343
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@346
    .line 2630
    new-instance v9, Ljava/lang/StringBuilder;

    #@348
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@34b
    const-string/jumbo v11, "  mDisplayReady="

    #@34e
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@351
    move-result-object v9

    #@352
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    #@354
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@357
    move-result-object v9

    #@358
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35b
    move-result-object v9

    #@35c
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@35f
    .line 2631
    new-instance v9, Ljava/lang/StringBuilder;

    #@361
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@364
    const-string/jumbo v11, "  mHoldingWakeLockSuspendBlocker="

    #@367
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36a
    move-result-object v9

    #@36b
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    #@36d
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@370
    move-result-object v9

    #@371
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@374
    move-result-object v9

    #@375
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@378
    .line 2632
    new-instance v9, Ljava/lang/StringBuilder;

    #@37a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@37d
    const-string/jumbo v11, "  mHoldingDisplaySuspendBlocker="

    #@380
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@383
    move-result-object v9

    #@384
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    #@386
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@389
    move-result-object v9

    #@38a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38d
    move-result-object v9

    #@38e
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@391
    .line 2634
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@394
    .line 2635
    const-string/jumbo v9, "Settings and Configuration:"

    #@397
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@39a
    .line 2636
    new-instance v9, Ljava/lang/StringBuilder;

    #@39c
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@39f
    const-string/jumbo v11, "  mDecoupleHalAutoSuspendModeFromDisplayConfig="

    #@3a2
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a5
    move-result-object v9

    #@3a6
    .line 2637
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    #@3a8
    .line 2636
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3ab
    move-result-object v9

    #@3ac
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3af
    move-result-object v9

    #@3b0
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3b3
    .line 2638
    new-instance v9, Ljava/lang/StringBuilder;

    #@3b5
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@3b8
    const-string/jumbo v11, "  mDecoupleHalInteractiveModeFromDisplayConfig="

    #@3bb
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3be
    move-result-object v9

    #@3bf
    .line 2639
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    #@3c1
    .line 2638
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3c4
    move-result-object v9

    #@3c5
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c8
    move-result-object v9

    #@3c9
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3cc
    .line 2640
    new-instance v9, Ljava/lang/StringBuilder;

    #@3ce
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@3d1
    const-string/jumbo v11, "  mWakeUpWhenPluggedOrUnpluggedConfig="

    #@3d4
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d7
    move-result-object v9

    #@3d8
    .line 2641
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    #@3da
    .line 2640
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3dd
    move-result-object v9

    #@3de
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e1
    move-result-object v9

    #@3e2
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3e5
    .line 2642
    new-instance v9, Ljava/lang/StringBuilder;

    #@3e7
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@3ea
    const-string/jumbo v11, "  mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig="

    #@3ed
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f0
    move-result-object v9

    #@3f1
    .line 2643
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    #@3f3
    .line 2642
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3f6
    move-result-object v9

    #@3f7
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3fa
    move-result-object v9

    #@3fb
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3fe
    .line 2644
    new-instance v9, Ljava/lang/StringBuilder;

    #@400
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@403
    const-string/jumbo v11, "  mTheaterModeEnabled="

    #@406
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@409
    move-result-object v9

    #@40a
    .line 2645
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    #@40c
    .line 2644
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@40f
    move-result-object v9

    #@410
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@413
    move-result-object v9

    #@414
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@417
    .line 2646
    new-instance v9, Ljava/lang/StringBuilder;

    #@419
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@41c
    const-string/jumbo v11, "  mSuspendWhenScreenOffDueToProximityConfig="

    #@41f
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@422
    move-result-object v9

    #@423
    .line 2647
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    #@425
    .line 2646
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@428
    move-result-object v9

    #@429
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42c
    move-result-object v9

    #@42d
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@430
    .line 2648
    new-instance v9, Ljava/lang/StringBuilder;

    #@432
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@435
    const-string/jumbo v11, "  mDreamsSupportedConfig="

    #@438
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43b
    move-result-object v9

    #@43c
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    #@43e
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@441
    move-result-object v9

    #@442
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@445
    move-result-object v9

    #@446
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@449
    .line 2649
    new-instance v9, Ljava/lang/StringBuilder;

    #@44b
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@44e
    const-string/jumbo v11, "  mDreamsEnabledByDefaultConfig="

    #@451
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@454
    move-result-object v9

    #@455
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    #@457
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@45a
    move-result-object v9

    #@45b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45e
    move-result-object v9

    #@45f
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@462
    .line 2650
    new-instance v9, Ljava/lang/StringBuilder;

    #@464
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@467
    const-string/jumbo v11, "  mDreamsActivatedOnSleepByDefaultConfig="

    #@46a
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46d
    move-result-object v9

    #@46e
    .line 2651
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    #@470
    .line 2650
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@473
    move-result-object v9

    #@474
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@477
    move-result-object v9

    #@478
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@47b
    .line 2652
    new-instance v9, Ljava/lang/StringBuilder;

    #@47d
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@480
    const-string/jumbo v11, "  mDreamsActivatedOnDockByDefaultConfig="

    #@483
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@486
    move-result-object v9

    #@487
    .line 2653
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    #@489
    .line 2652
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@48c
    move-result-object v9

    #@48d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@490
    move-result-object v9

    #@491
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@494
    .line 2654
    new-instance v9, Ljava/lang/StringBuilder;

    #@496
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@499
    const-string/jumbo v11, "  mDreamsEnabledOnBatteryConfig="

    #@49c
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49f
    move-result-object v9

    #@4a0
    .line 2655
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    #@4a2
    .line 2654
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4a5
    move-result-object v9

    #@4a6
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a9
    move-result-object v9

    #@4aa
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4ad
    .line 2656
    new-instance v9, Ljava/lang/StringBuilder;

    #@4af
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4b2
    const-string/jumbo v11, "  mDreamsBatteryLevelMinimumWhenPoweredConfig="

    #@4b5
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b8
    move-result-object v9

    #@4b9
    .line 2657
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    #@4bb
    .line 2656
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4be
    move-result-object v9

    #@4bf
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c2
    move-result-object v9

    #@4c3
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4c6
    .line 2658
    new-instance v9, Ljava/lang/StringBuilder;

    #@4c8
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4cb
    const-string/jumbo v11, "  mDreamsBatteryLevelMinimumWhenNotPoweredConfig="

    #@4ce
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d1
    move-result-object v9

    #@4d2
    .line 2659
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    #@4d4
    .line 2658
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4d7
    move-result-object v9

    #@4d8
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4db
    move-result-object v9

    #@4dc
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4df
    .line 2660
    new-instance v9, Ljava/lang/StringBuilder;

    #@4e1
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4e4
    const-string/jumbo v11, "  mDreamsBatteryLevelDrainCutoffConfig="

    #@4e7
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ea
    move-result-object v9

    #@4eb
    .line 2661
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    #@4ed
    .line 2660
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f0
    move-result-object v9

    #@4f1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f4
    move-result-object v9

    #@4f5
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4f8
    .line 2662
    new-instance v9, Ljava/lang/StringBuilder;

    #@4fa
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4fd
    const-string/jumbo v11, "  mDreamsEnabledSetting="

    #@500
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@503
    move-result-object v9

    #@504
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    #@506
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@509
    move-result-object v9

    #@50a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50d
    move-result-object v9

    #@50e
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@511
    .line 2663
    new-instance v9, Ljava/lang/StringBuilder;

    #@513
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@516
    const-string/jumbo v11, "  mDreamsActivateOnSleepSetting="

    #@519
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51c
    move-result-object v9

    #@51d
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    #@51f
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@522
    move-result-object v9

    #@523
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@526
    move-result-object v9

    #@527
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@52a
    .line 2664
    new-instance v9, Ljava/lang/StringBuilder;

    #@52c
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@52f
    const-string/jumbo v11, "  mDreamsActivateOnDockSetting="

    #@532
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@535
    move-result-object v9

    #@536
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    #@538
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@53b
    move-result-object v9

    #@53c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53f
    move-result-object v9

    #@540
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@543
    .line 2665
    new-instance v9, Ljava/lang/StringBuilder;

    #@545
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@548
    const-string/jumbo v11, "  mDozeAfterScreenOffConfig="

    #@54b
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54e
    move-result-object v9

    #@54f
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOffConfig:Z

    #@551
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@554
    move-result-object v9

    #@555
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@558
    move-result-object v9

    #@559
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@55c
    .line 2666
    new-instance v9, Ljava/lang/StringBuilder;

    #@55e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@561
    const-string/jumbo v11, "  mLowPowerModeSetting="

    #@564
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@567
    move-result-object v9

    #@568
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    #@56a
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@56d
    move-result-object v9

    #@56e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@571
    move-result-object v9

    #@572
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@575
    .line 2667
    new-instance v9, Ljava/lang/StringBuilder;

    #@577
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@57a
    const-string/jumbo v11, "  mAutoLowPowerModeConfigured="

    #@57d
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@580
    move-result-object v9

    #@581
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    #@583
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@586
    move-result-object v9

    #@587
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58a
    move-result-object v9

    #@58b
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@58e
    .line 2668
    new-instance v9, Ljava/lang/StringBuilder;

    #@590
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@593
    const-string/jumbo v11, "  mAutoLowPowerModeSnoozing="

    #@596
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@599
    move-result-object v9

    #@59a
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    #@59c
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@59f
    move-result-object v9

    #@5a0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a3
    move-result-object v9

    #@5a4
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5a7
    .line 2669
    new-instance v9, Ljava/lang/StringBuilder;

    #@5a9
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@5ac
    const-string/jumbo v11, "  mMinimumScreenOffTimeoutConfig="

    #@5af
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b2
    move-result-object v9

    #@5b3
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:I

    #@5b5
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5b8
    move-result-object v9

    #@5b9
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5bc
    move-result-object v9

    #@5bd
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5c0
    .line 2670
    new-instance v9, Ljava/lang/StringBuilder;

    #@5c2
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@5c5
    const-string/jumbo v11, "  mMaximumScreenDimDurationConfig="

    #@5c8
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5cb
    move-result-object v9

    #@5cc
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:I

    #@5ce
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5d1
    move-result-object v9

    #@5d2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d5
    move-result-object v9

    #@5d6
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5d9
    .line 2671
    new-instance v9, Ljava/lang/StringBuilder;

    #@5db
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@5de
    const-string/jumbo v11, "  mMaximumScreenDimRatioConfig="

    #@5e1
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e4
    move-result-object v9

    #@5e5
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    #@5e7
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@5ea
    move-result-object v9

    #@5eb
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5ee
    move-result-object v9

    #@5ef
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5f2
    .line 2672
    new-instance v9, Ljava/lang/StringBuilder;

    #@5f4
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@5f7
    const-string/jumbo v11, "  mScreenOffTimeoutSetting="

    #@5fa
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5fd
    move-result-object v9

    #@5fe
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    #@600
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@603
    move-result-object v9

    #@604
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@607
    move-result-object v9

    #@608
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@60b
    .line 2673
    new-instance v9, Ljava/lang/StringBuilder;

    #@60d
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@610
    const-string/jumbo v11, "  mSleepTimeoutSetting="

    #@613
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@616
    move-result-object v9

    #@617
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:I

    #@619
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@61c
    move-result-object v9

    #@61d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@620
    move-result-object v9

    #@621
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@624
    .line 2674
    new-instance v9, Ljava/lang/StringBuilder;

    #@626
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@629
    const-string/jumbo v11, "  mMaximumScreenOffTimeoutFromDeviceAdmin="

    #@62c
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62f
    move-result-object v9

    #@630
    .line 2675
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    #@632
    .line 2674
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@635
    move-result-object v9

    #@636
    .line 2675
    const-string/jumbo v11, " (enforced="

    #@639
    .line 2674
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63c
    move-result-object v9

    #@63d
    .line 2676
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    #@640
    move-result v11

    #@641
    .line 2674
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@644
    move-result-object v9

    #@645
    .line 2676
    const-string/jumbo v11, ")"

    #@648
    .line 2674
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64b
    move-result-object v9

    #@64c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64f
    move-result-object v9

    #@650
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@653
    .line 2677
    new-instance v9, Ljava/lang/StringBuilder;

    #@655
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@658
    const-string/jumbo v11, "  mStayOnWhilePluggedInSetting="

    #@65b
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65e
    move-result-object v9

    #@65f
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    #@661
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@664
    move-result-object v9

    #@665
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@668
    move-result-object v9

    #@669
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@66c
    .line 2678
    new-instance v9, Ljava/lang/StringBuilder;

    #@66e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@671
    const-string/jumbo v11, "  mScreenBrightnessSetting="

    #@674
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@677
    move-result-object v9

    #@678
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    #@67a
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@67d
    move-result-object v9

    #@67e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@681
    move-result-object v9

    #@682
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@685
    .line 2679
    new-instance v9, Ljava/lang/StringBuilder;

    #@687
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@68a
    const-string/jumbo v11, "  mScreenAutoBrightnessAdjustmentSetting="

    #@68d
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@690
    move-result-object v9

    #@691
    .line 2680
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    #@693
    .line 2679
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@696
    move-result-object v9

    #@697
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69a
    move-result-object v9

    #@69b
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@69e
    .line 2681
    new-instance v9, Ljava/lang/StringBuilder;

    #@6a0
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@6a3
    const-string/jumbo v11, "  mScreenBrightnessModeSetting="

    #@6a6
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a9
    move-result-object v9

    #@6aa
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    #@6ac
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6af
    move-result-object v9

    #@6b0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b3
    move-result-object v9

    #@6b4
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6b7
    .line 2682
    new-instance v9, Ljava/lang/StringBuilder;

    #@6b9
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@6bc
    const-string/jumbo v11, "  mScreenBrightnessOverrideFromWindowManager="

    #@6bf
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c2
    move-result-object v9

    #@6c3
    .line 2683
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    #@6c5
    .line 2682
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6c8
    move-result-object v9

    #@6c9
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6cc
    move-result-object v9

    #@6cd
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6d0
    .line 2684
    new-instance v9, Ljava/lang/StringBuilder;

    #@6d2
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@6d5
    const-string/jumbo v11, "  mUserActivityTimeoutOverrideFromWindowManager="

    #@6d8
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6db
    move-result-object v9

    #@6dc
    .line 2685
    iget-wide v12, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    #@6de
    .line 2684
    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@6e1
    move-result-object v9

    #@6e2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e5
    move-result-object v9

    #@6e6
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6e9
    .line 2686
    new-instance v9, Ljava/lang/StringBuilder;

    #@6eb
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@6ee
    const-string/jumbo v11, "  mTemporaryScreenBrightnessSettingOverride="

    #@6f1
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f4
    move-result-object v9

    #@6f5
    .line 2687
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    #@6f7
    .line 2686
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6fa
    move-result-object v9

    #@6fb
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6fe
    move-result-object v9

    #@6ff
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@702
    .line 2688
    new-instance v9, Ljava/lang/StringBuilder;

    #@704
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@707
    const-string/jumbo v11, "  mTemporaryScreenAutoBrightnessAdjustmentSettingOverride="

    #@70a
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70d
    move-result-object v9

    #@70e
    .line 2689
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    #@710
    .line 2688
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@713
    move-result-object v9

    #@714
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@717
    move-result-object v9

    #@718
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@71b
    .line 2690
    new-instance v9, Ljava/lang/StringBuilder;

    #@71d
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@720
    const-string/jumbo v11, "  mDozeScreenStateOverrideFromDreamManager="

    #@723
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@726
    move-result-object v9

    #@727
    .line 2691
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    #@729
    .line 2690
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@72c
    move-result-object v9

    #@72d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@730
    move-result-object v9

    #@731
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@734
    .line 2692
    new-instance v9, Ljava/lang/StringBuilder;

    #@736
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@739
    const-string/jumbo v11, "  mDozeScreenBrightnessOverrideFromDreamManager="

    #@73c
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73f
    move-result-object v9

    #@740
    .line 2693
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    #@742
    .line 2692
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@745
    move-result-object v9

    #@746
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@749
    move-result-object v9

    #@74a
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@74d
    .line 2694
    new-instance v9, Ljava/lang/StringBuilder;

    #@74f
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@752
    const-string/jumbo v11, "  mScreenBrightnessSettingMinimum="

    #@755
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@758
    move-result-object v9

    #@759
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    #@75b
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@75e
    move-result-object v9

    #@75f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@762
    move-result-object v9

    #@763
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@766
    .line 2695
    new-instance v9, Ljava/lang/StringBuilder;

    #@768
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@76b
    const-string/jumbo v11, "  mScreenBrightnessSettingMaximum="

    #@76e
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@771
    move-result-object v9

    #@772
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    #@774
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@777
    move-result-object v9

    #@778
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77b
    move-result-object v9

    #@77c
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@77f
    .line 2696
    new-instance v9, Ljava/lang/StringBuilder;

    #@781
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@784
    const-string/jumbo v11, "  mScreenBrightnessSettingDefault="

    #@787
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78a
    move-result-object v9

    #@78b
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    #@78d
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@790
    move-result-object v9

    #@791
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@794
    move-result-object v9

    #@795
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@798
    .line 2697
    new-instance v9, Ljava/lang/StringBuilder;

    #@79a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@79d
    const-string/jumbo v11, "  mDoubleTapWakeEnabled="

    #@7a0
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a3
    move-result-object v9

    #@7a4
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    #@7a6
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@7a9
    move-result-object v9

    #@7aa
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7ad
    move-result-object v9

    #@7ae
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7b1
    .line 2699
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getSleepTimeoutLocked()I

    #@7b4
    move-result v5

    #@7b5
    .line 2700
    .local v5, "sleepTimeout":I
    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(I)I

    #@7b8
    move-result v4

    #@7b9
    .line 2701
    .local v4, "screenOffTimeout":I
    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(I)I

    #@7bc
    move-result v3

    #@7bd
    .line 2702
    .local v3, "screenDimDuration":I
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@7c0
    .line 2703
    new-instance v9, Ljava/lang/StringBuilder;

    #@7c2
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@7c5
    const-string/jumbo v11, "Sleep timeout: "

    #@7c8
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7cb
    move-result-object v9

    #@7cc
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7cf
    move-result-object v9

    #@7d0
    const-string/jumbo v11, " ms"

    #@7d3
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d6
    move-result-object v9

    #@7d7
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7da
    move-result-object v9

    #@7db
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7de
    .line 2704
    new-instance v9, Ljava/lang/StringBuilder;

    #@7e0
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@7e3
    const-string/jumbo v11, "Screen off timeout: "

    #@7e6
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e9
    move-result-object v9

    #@7ea
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7ed
    move-result-object v9

    #@7ee
    const-string/jumbo v11, " ms"

    #@7f1
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f4
    move-result-object v9

    #@7f5
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f8
    move-result-object v9

    #@7f9
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7fc
    .line 2705
    new-instance v9, Ljava/lang/StringBuilder;

    #@7fe
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@801
    const-string/jumbo v11, "Screen dim duration: "

    #@804
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@807
    move-result-object v9

    #@808
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@80b
    move-result-object v9

    #@80c
    const-string/jumbo v11, " ms"

    #@80f
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@812
    move-result-object v9

    #@813
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@816
    move-result-object v9

    #@817
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@81a
    .line 2707
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@81d
    .line 2708
    const-string/jumbo v9, "UID states:"

    #@820
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@823
    .line 2709
    const/4 v0, 0x0

    #@824
    .local v0, "i":I
    :goto_0
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@826
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    #@829
    move-result v9

    #@82a
    if-ge v0, v9, :cond_0

    #@82c
    .line 2710
    const-string/jumbo v9, "  UID "

    #@82f
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@832
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@834
    invoke-virtual {v9, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@837
    move-result v9

    #@838
    invoke-static {p1, v9}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@83b
    .line 2711
    const-string/jumbo v9, ": "

    #@83e
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@841
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@843
    invoke-virtual {v9, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@846
    move-result v9

    #@847
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(I)V

    #@84a
    .line 2709
    add-int/lit8 v0, v0, 0x1

    #@84c
    goto :goto_0

    #@84d
    .line 2714
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@850
    .line 2715
    new-instance v9, Ljava/lang/StringBuilder;

    #@852
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@855
    const-string/jumbo v11, "Wake Locks: size="

    #@858
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85b
    move-result-object v9

    #@85c
    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    #@85e
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    #@861
    move-result v11

    #@862
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@865
    move-result-object v9

    #@866
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@869
    move-result-object v9

    #@86a
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@86d
    .line 2716
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    #@86f
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@872
    move-result-object v8

    #@873
    .local v8, "wl$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@876
    move-result v9

    #@877
    if-eqz v9, :cond_1

    #@879
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@87c
    move-result-object v7

    #@87d
    check-cast v7, Lcom/android/server/power/PowerManagerService$WakeLock;

    #@87f
    .line 2717
    .local v7, "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    new-instance v9, Ljava/lang/StringBuilder;

    #@881
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@884
    const-string/jumbo v11, "  "

    #@887
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88a
    move-result-object v9

    #@88b
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@88e
    move-result-object v9

    #@88f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@892
    move-result-object v9

    #@893
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@896
    goto :goto_1

    #@897
    .line 2593
    .end local v0    # "i":I
    .end local v3    # "screenDimDuration":I
    .end local v4    # "screenOffTimeout":I
    .end local v5    # "sleepTimeout":I
    .end local v7    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v8    # "wl$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v9

    #@898
    monitor-exit v10

    #@899
    throw v9

    #@89a
    .line 2720
    .restart local v0    # "i":I
    .restart local v3    # "screenDimDuration":I
    .restart local v4    # "screenOffTimeout":I
    .restart local v5    # "sleepTimeout":I
    .restart local v8    # "wl$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@89d
    .line 2721
    new-instance v9, Ljava/lang/StringBuilder;

    #@89f
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@8a2
    const-string/jumbo v11, "Suspend Blockers: size="

    #@8a5
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a8
    move-result-object v9

    #@8a9
    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    #@8ab
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    #@8ae
    move-result v11

    #@8af
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8b2
    move-result-object v9

    #@8b3
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b6
    move-result-object v9

    #@8b7
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8ba
    .line 2722
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    #@8bc
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8bf
    move-result-object v2

    #@8c0
    .local v2, "sb$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@8c3
    move-result v9

    #@8c4
    if-eqz v9, :cond_2

    #@8c6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@8c9
    move-result-object v1

    #@8ca
    check-cast v1, Lcom/android/server/power/SuspendBlocker;

    #@8cc
    .line 2723
    .local v1, "sb":Lcom/android/server/power/SuspendBlocker;
    new-instance v9, Ljava/lang/StringBuilder;

    #@8ce
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@8d1
    const-string/jumbo v11, "  "

    #@8d4
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d7
    move-result-object v9

    #@8d8
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8db
    move-result-object v9

    #@8dc
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8df
    move-result-object v9

    #@8e0
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8e3
    goto :goto_2

    #@8e4
    .line 2726
    .end local v1    # "sb":Lcom/android/server/power/SuspendBlocker;
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@8e7
    .line 2727
    new-instance v9, Ljava/lang/StringBuilder;

    #@8e9
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@8ec
    const-string/jumbo v11, "Display Power: "

    #@8ef
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f2
    move-result-object v9

    #@8f3
    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    #@8f5
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8f8
    move-result-object v9

    #@8f9
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8fc
    move-result-object v9

    #@8fd
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@900
    .line 2729
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@902
    .local v6, "wcd":Lcom/android/server/power/WirelessChargerDetector;
    monitor-exit v10

    #@903
    .line 2732
    if-eqz v6, :cond_3

    #@905
    .line 2733
    invoke-virtual {v6, p1}, Lcom/android/server/power/WirelessChargerDetector;->dump(Ljava/io/PrintWriter;)V

    #@908
    .line 2589
    :cond_3
    return-void
.end method

.method private findWakeLockIndexLocked(Landroid/os/IBinder;)I
    .locals 3
    .param p1, "lock"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 940
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 941
    .local v0, "count":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 942
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    #@11
    iget-object v2, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    #@13
    if-ne v2, p1, :cond_0

    #@15
    .line 943
    return v1

    #@16
    .line 941
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 946
    :cond_1
    const/4 v2, -0x1

    #@1a
    return v2
.end method

.method private finishWakefulnessChangeIfNeededLocked()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1247
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    #@3
    if-eqz v0, :cond_1

    #@5
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 1248
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@b
    const/4 v1, 0x3

    #@c
    if-ne v0, v1, :cond_0

    #@e
    .line 1249
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@10
    and-int/lit8 v0, v0, 0x40

    #@12
    if-nez v0, :cond_0

    #@14
    .line 1250
    return-void

    #@15
    .line 1252
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    #@17
    .line 1253
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    #@19
    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onWakefulnessChangeFinished()V

    #@1c
    .line 1246
    :cond_1
    return-void
.end method

.method private getDesiredScreenPolicyLocked()I
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x3

    #@1
    const/4 v1, 0x0

    #@2
    .line 1988
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1989
    return v1

    #@7
    .line 1992
    :cond_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@9
    if-ne v0, v2, :cond_2

    #@b
    .line 1993
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@d
    and-int/lit8 v0, v0, 0x40

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 1994
    const/4 v0, 0x1

    #@12
    return v0

    #@13
    .line 1996
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOffConfig:Z

    #@15
    if-eqz v0, :cond_2

    #@17
    .line 1997
    return v1

    #@18
    .line 2003
    :cond_2
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@1a
    and-int/lit8 v0, v0, 0x2

    #@1c
    if-nez v0, :cond_3

    #@1e
    .line 2004
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    #@20
    and-int/lit8 v0, v0, 0x1

    #@22
    if-eqz v0, :cond_4

    #@24
    .line 2007
    :cond_3
    return v2

    #@25
    .line 2005
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    #@27
    if-eqz v0, :cond_3

    #@29
    .line 2006
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    #@2b
    .line 2003
    if-nez v0, :cond_3

    #@2d
    .line 2010
    const/4 v0, 0x2

    #@2e
    return v0
.end method

.method private getScreenDimDurationLocked(I)I
    .locals 3
    .param p1, "screenOffTimeout"    # I

    #@0
    .prologue
    .line 1628
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:I

    #@2
    .line 1629
    int-to-float v1, p1

    #@3
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    #@5
    mul-float/2addr v1, v2

    #@6
    float-to-int v1, v1

    #@7
    .line 1628
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method private getScreenOffTimeoutLocked(I)I
    .locals 6
    .param p1, "sleepTimeout"    # I

    #@0
    .prologue
    .line 1614
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    #@2
    .line 1615
    .local v0, "timeout":I
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1616
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    #@a
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@d
    move-result v0

    #@e
    .line 1618
    :cond_0
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    #@10
    const-wide/16 v4, 0x0

    #@12
    cmp-long v1, v2, v4

    #@14
    if-ltz v1, :cond_1

    #@16
    .line 1619
    int-to-long v2, v0

    #@17
    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    #@19
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    #@1c
    move-result-wide v2

    #@1d
    long-to-int v0, v2

    #@1e
    .line 1621
    :cond_1
    if-ltz p1, :cond_2

    #@20
    .line 1622
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    #@23
    move-result v0

    #@24
    .line 1624
    :cond_2
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:I

    #@26
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@29
    move-result v1

    #@2a
    return v1
.end method

.method private getSleepTimeoutLocked()I
    .locals 2

    #@0
    .prologue
    .line 1606
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:I

    #@2
    .line 1607
    .local v0, "timeout":I
    if-gtz v0, :cond_0

    #@4
    .line 1608
    const/4 v1, -0x1

    #@5
    return v1

    #@6
    .line 1610
    :cond_0
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:I

    #@8
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@b
    move-result v1

    #@c
    return v1
.end method

.method private goToSleepInternal(JIII)V
    .locals 3
    .param p1, "eventTime"    # J
    .param p3, "reason"    # I
    .param p4, "flags"    # I
    .param p5, "uid"    # I

    #@0
    .prologue
    .line 1104
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1105
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1106
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v1

    #@d
    .line 1103
    return-void

    #@e
    .line 1104
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method private goToSleepNoUpdateLocked(JIII)Z
    .locals 9
    .param p1, "eventTime"    # J
    .param p3, "reason"    # I
    .param p4, "flags"    # I
    .param p5, "uid"    # I

    #@0
    .prologue
    .line 1120
    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    #@2
    cmp-long v4, p1, v4

    #@4
    if-ltz v4, :cond_0

    #@6
    .line 1121
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@8
    if-nez v4, :cond_1

    #@a
    .line 1124
    :cond_0
    const/4 v4, 0x0

    #@b
    return v4

    #@c
    .line 1122
    :cond_1
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@e
    const/4 v5, 0x3

    #@f
    if-eq v4, v5, :cond_0

    #@11
    .line 1123
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    #@13
    if-eqz v4, :cond_0

    #@15
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    #@17
    if-eqz v4, :cond_0

    #@19
    .line 1127
    const-string/jumbo v4, "goToSleep"

    #@1c
    const-wide/32 v6, 0x20000

    #@1f
    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@22
    .line 1129
    packed-switch p3, :pswitch_data_0

    #@25
    .line 1150
    :try_start_0
    const-string/jumbo v4, "PowerManagerService"

    #@28
    new-instance v5, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v6, "Going to sleep by application request (uid "

    #@30
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v5

    #@34
    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v5

    #@38
    const-string/jumbo v6, ")..."

    #@3b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v5

    #@3f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v5

    #@43
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    .line 1151
    const/4 p3, 0x0

    #@47
    .line 1155
    :goto_0
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    #@49
    .line 1156
    const/4 v4, 0x1

    #@4a
    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    #@4c
    .line 1157
    const/4 v4, 0x3

    #@4d
    invoke-direct {p0, v4, p3}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(II)V

    #@50
    .line 1160
    const/4 v2, 0x0

    #@51
    .line 1161
    .local v2, "numWakeLocksCleared":I
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    #@53
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@56
    move-result v1

    #@57
    .line 1162
    .local v1, "numWakeLocks":I
    const/4 v0, 0x0

    #@58
    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    #@5a
    .line 1163
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    #@5c
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5f
    move-result-object v3

    #@60
    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    #@62
    .line 1164
    .local v3, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v4, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    #@64
    const v5, 0xffff

    #@67
    and-int/2addr v4, v5

    #@68
    sparse-switch v4, :sswitch_data_0

    #@6b
    .line 1162
    :goto_2
    add-int/lit8 v0, v0, 0x1

    #@6d
    goto :goto_1

    #@6e
    .line 1131
    .end local v0    # "i":I
    .end local v1    # "numWakeLocks":I
    .end local v2    # "numWakeLocksCleared":I
    .end local v3    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :pswitch_0
    const-string/jumbo v4, "PowerManagerService"

    #@71
    new-instance v5, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string/jumbo v6, "Going to sleep due to device administration policy (uid "

    #@79
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v5

    #@7d
    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@80
    move-result-object v5

    #@81
    .line 1132
    const-string/jumbo v6, ")..."

    #@84
    .line 1131
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v5

    #@88
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v5

    #@8c
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8f
    goto :goto_0

    #@90
    .line 1178
    :catchall_0
    move-exception v4

    #@91
    .line 1179
    const-wide/32 v6, 0x20000

    #@94
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    #@97
    .line 1178
    throw v4

    #@98
    .line 1135
    :pswitch_1
    :try_start_1
    const-string/jumbo v4, "PowerManagerService"

    #@9b
    new-instance v5, Ljava/lang/StringBuilder;

    #@9d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@a0
    const-string/jumbo v6, "Going to sleep due to screen timeout (uid "

    #@a3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v5

    #@a7
    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v5

    #@ab
    const-string/jumbo v6, ")..."

    #@ae
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v5

    #@b2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b5
    move-result-object v5

    #@b6
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@b9
    goto :goto_0

    #@ba
    .line 1138
    :pswitch_2
    const-string/jumbo v4, "PowerManagerService"

    #@bd
    new-instance v5, Ljava/lang/StringBuilder;

    #@bf
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@c2
    const-string/jumbo v6, "Going to sleep due to lid switch (uid "

    #@c5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v5

    #@c9
    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v5

    #@cd
    const-string/jumbo v6, ")..."

    #@d0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v5

    #@d4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d7
    move-result-object v5

    #@d8
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@db
    goto/16 :goto_0

    #@dd
    .line 1141
    :pswitch_3
    const-string/jumbo v4, "PowerManagerService"

    #@e0
    new-instance v5, Ljava/lang/StringBuilder;

    #@e2
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@e5
    const-string/jumbo v6, "Going to sleep due to power button (uid "

    #@e8
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v5

    #@ec
    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v5

    #@f0
    const-string/jumbo v6, ")..."

    #@f3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v5

    #@f7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fa
    move-result-object v5

    #@fb
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@fe
    goto/16 :goto_0

    #@100
    .line 1144
    :pswitch_4
    const-string/jumbo v4, "PowerManagerService"

    #@103
    new-instance v5, Ljava/lang/StringBuilder;

    #@105
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@108
    const-string/jumbo v6, "Going to sleep due to sleep button (uid "

    #@10b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v5

    #@10f
    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@112
    move-result-object v5

    #@113
    const-string/jumbo v6, ")..."

    #@116
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v5

    #@11a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11d
    move-result-object v5

    #@11e
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@121
    goto/16 :goto_0

    #@123
    .line 1147
    :pswitch_5
    const-string/jumbo v4, "PowerManagerService"

    #@126
    new-instance v5, Ljava/lang/StringBuilder;

    #@128
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@12b
    const-string/jumbo v6, "Going to sleep due to HDMI standby (uid "

    #@12e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@131
    move-result-object v5

    #@132
    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@135
    move-result-object v5

    #@136
    const-string/jumbo v6, ")..."

    #@139
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v5

    #@13d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@140
    move-result-object v5

    #@141
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@144
    goto/16 :goto_0

    #@146
    .line 1168
    .restart local v0    # "i":I
    .restart local v1    # "numWakeLocks":I
    .restart local v2    # "numWakeLocksCleared":I
    .restart local v3    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :sswitch_0
    add-int/lit8 v2, v2, 0x1

    #@148
    .line 1169
    goto/16 :goto_2

    #@14a
    .line 1172
    .end local v3    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_2
    const/16 v4, 0xaa4

    #@14c
    invoke-static {v4, v2}, Landroid/util/EventLog;->writeEvent(II)I

    #@14f
    .line 1175
    and-int/lit8 v4, p4, 0x1

    #@151
    if-eqz v4, :cond_3

    #@153
    .line 1176
    invoke-direct {p0, p1, p2, p5}, Lcom/android/server/power/PowerManagerService;->reallyGoToSleepNoUpdateLocked(JI)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@156
    .line 1179
    :cond_3
    const-wide/32 v4, 0x20000

    #@159
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@15c
    .line 1181
    const/4 v4, 0x1

    #@15d
    return v4

    #@15e
    .line 1129
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch

    #@16e
    .line 1164
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xa -> :sswitch_0
        0x1a -> :sswitch_0
    .end sparse-switch
.end method

.method private handleBatteryStateChangedLocked()V
    .locals 1

    #@0
    .prologue
    .line 2257
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@2
    or-int/lit16 v0, v0, 0x100

    #@4
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@6
    .line 2258
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    #@9
    .line 2256
    return-void
.end method

.method private handleSandman()V
    .locals 12

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x3

    #@2
    const/4 v10, 0x0

    #@3
    .line 1737
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v2

    #@6
    .line 1738
    const/4 v1, 0x0

    #@7
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    #@9
    .line 1739
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@b
    .line 1740
    .local v9, "wakefulness":I
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    #@d
    if-eqz v1, :cond_4

    #@f
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    #@11
    if-eqz v1, :cond_4

    #@13
    .line 1741
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->canDreamLocked()Z

    #@16
    move-result v1

    #@17
    if-nez v1, :cond_3

    #@19
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->canDozeLocked()Z

    #@1c
    move-result v8

    #@1d
    .line 1742
    :goto_0
    const/4 v1, 0x0

    #@1e
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    :goto_1
    monitor-exit v2

    #@21
    .line 1752
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    #@23
    if-eqz v1, :cond_6

    #@25
    .line 1754
    if-eqz v8, :cond_0

    #@27
    .line 1755
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    #@29
    invoke-virtual {v1, v10}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    #@2c
    .line 1756
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    #@2e
    if-ne v9, v3, :cond_5

    #@30
    const/4 v1, 0x1

    #@31
    :goto_2
    invoke-virtual {v2, v1}, Landroid/service/dreams/DreamManagerInternal;->startDream(Z)V

    #@34
    .line 1758
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    #@36
    invoke-virtual {v1}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    #@39
    move-result v0

    #@3a
    .line 1764
    :goto_3
    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@3c
    monitor-enter v11

    #@3d
    .line 1766
    if-eqz v8, :cond_1

    #@3f
    if-eqz v0, :cond_1

    #@41
    .line 1767
    :try_start_1
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    #@43
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    #@45
    .line 1768
    if-ne v9, v3, :cond_7

    #@47
    .line 1769
    const-string/jumbo v1, "PowerManagerService"

    #@4a
    const-string/jumbo v2, "Dozing..."

    #@4d
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@50
    .line 1777
    :cond_1
    :goto_4
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    #@52
    if-nez v1, :cond_2

    #@54
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@56
    if-eq v1, v9, :cond_8

    #@58
    :cond_2
    monitor-exit v11

    #@59
    .line 1778
    return-void

    #@5a
    .line 1741
    :cond_3
    const/4 v8, 0x1

    #@5b
    .local v8, "startDreaming":Z
    goto :goto_0

    #@5c
    .line 1744
    .end local v8    # "startDreaming":Z
    :cond_4
    const/4 v8, 0x0

    #@5d
    .restart local v8    # "startDreaming":Z
    goto :goto_1

    #@5e
    .line 1737
    .end local v8    # "startDreaming":Z
    .end local v9    # "wakefulness":I
    :catchall_0
    move-exception v1

    #@5f
    monitor-exit v2

    #@60
    throw v1

    #@61
    .restart local v9    # "wakefulness":I
    :cond_5
    move v1, v10

    #@62
    .line 1756
    goto :goto_2

    #@63
    .line 1760
    :cond_6
    const/4 v0, 0x0

    #@64
    .local v0, "isDreaming":Z
    goto :goto_3

    #@65
    .line 1771
    .end local v0    # "isDreaming":Z
    :cond_7
    :try_start_2
    const-string/jumbo v1, "PowerManagerService"

    #@68
    const-string/jumbo v2, "Dreaming..."

    #@6b
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@6e
    goto :goto_4

    #@6f
    .line 1764
    :catchall_1
    move-exception v1

    #@70
    monitor-exit v11

    #@71
    throw v1

    #@72
    .line 1782
    :cond_8
    if-ne v9, v4, :cond_f

    #@74
    .line 1783
    if-eqz v0, :cond_b

    #@76
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->canDreamLocked()Z

    #@79
    move-result v1

    #@7a
    if-eqz v1, :cond_b

    #@7c
    .line 1784
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    #@7e
    if-ltz v1, :cond_9

    #@80
    .line 1785
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    #@82
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    #@84
    .line 1786
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    #@86
    .line 1785
    sub-int/2addr v2, v3

    #@87
    if-ge v1, v2, :cond_9

    #@89
    .line 1787
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@8c
    move-result v1

    #@8d
    if-eqz v1, :cond_a

    #@8f
    :cond_9
    monitor-exit v11

    #@90
    .line 1797
    return-void

    #@91
    .line 1791
    :cond_a
    :try_start_4
    const-string/jumbo v1, "PowerManagerService"

    #@94
    new-instance v2, Ljava/lang/StringBuilder;

    #@96
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@99
    const-string/jumbo v3, "Stopping dream because the battery appears to be draining faster than it is charging.  Battery level when dream started: "

    #@9c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v2

    #@a0
    .line 1794
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    #@a2
    .line 1791
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v2

    #@a6
    .line 1794
    const-string/jumbo v3, "%.  "

    #@a9
    .line 1791
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v2

    #@ad
    .line 1795
    const-string/jumbo v3, "Battery level now: "

    #@b0
    .line 1791
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v2

    #@b4
    .line 1795
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    #@b6
    .line 1791
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v2

    #@ba
    .line 1795
    const-string/jumbo v3, "%."

    #@bd
    .line 1791
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v2

    #@c1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c4
    move-result-object v2

    #@c5
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@c8
    .line 1802
    :cond_b
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isItBedTimeYetLocked()Z

    #@cb
    move-result v1

    #@cc
    if-eqz v1, :cond_e

    #@ce
    .line 1803
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@d1
    move-result-wide v2

    #@d2
    .line 1804
    const/4 v4, 0x2

    #@d3
    const/4 v5, 0x0

    #@d4
    const/16 v6, 0x3e8

    #@d6
    move-object v1, p0

    #@d7
    .line 1803
    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z

    #@da
    .line 1805
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@dd
    :cond_c
    :goto_5
    monitor-exit v11

    #@de
    .line 1823
    if-eqz v0, :cond_d

    #@e0
    .line 1824
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    #@e2
    invoke-virtual {v1, v10}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    #@e5
    .line 1733
    :cond_d
    return-void

    #@e6
    .line 1807
    :cond_e
    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@e9
    move-result-wide v2

    #@ea
    const-string/jumbo v4, "android.server.power:DREAM"

    #@ed
    .line 1808
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    #@ef
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@f2
    move-result-object v6

    #@f3
    const/16 v5, 0x3e8

    #@f5
    const/16 v7, 0x3e8

    #@f7
    move-object v1, p0

    #@f8
    .line 1807
    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z

    #@fb
    .line 1809
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@fe
    goto :goto_5

    #@ff
    .line 1811
    :cond_f
    if-ne v9, v3, :cond_c

    #@101
    .line 1812
    if-eqz v0, :cond_10

    #@103
    monitor-exit v11

    #@104
    .line 1813
    return-void

    #@105
    .line 1817
    :cond_10
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@108
    move-result-wide v2

    #@109
    const/16 v1, 0x3e8

    #@10b
    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/power/PowerManagerService;->reallyGoToSleepNoUpdateLocked(JI)Z

    #@10e
    .line 1818
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@111
    goto :goto_5
.end method

.method private handleScreenBrightnessBoostTimeout()V
    .locals 2

    #@0
    .prologue
    .line 2477
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2482
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@5
    or-int/lit16 v0, v0, 0x800

    #@7
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@9
    .line 2483
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v1

    #@d
    .line 2476
    return-void

    #@e
    .line 2477
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method private handleSettingsChangedLocked()V
    .locals 0

    #@0
    .prologue
    .line 769
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSettingsLocked()V

    #@3
    .line 770
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    #@6
    .line 768
    return-void
.end method

.method private handleUserActivityTimeout()V
    .locals 2

    #@0
    .prologue
    .line 1595
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1600
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@5
    or-int/lit8 v0, v0, 0x4

    #@7
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@9
    .line 1601
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v1

    #@d
    .line 1594
    return-void

    #@e
    .line 1595
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method private handleWakeLockDeath(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 3
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    #@0
    .prologue
    .line 876
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 882
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    .line 883
    .local v0, "index":I
    if-gez v0, :cond_0

    #@b
    monitor-exit v2

    #@c
    .line 884
    return-void

    #@d
    .line 887
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/android/server/power/PowerManagerService;->removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    monitor-exit v2

    #@11
    .line 875
    return-void

    #@12
    .line 876
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v2

    #@14
    throw v1
.end method

.method private isBeingKeptAwakeLocked()Z
    .locals 1

    #@0
    .prologue
    .line 1690
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1691
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    #@6
    .line 1690
    if-nez v0, :cond_0

    #@8
    .line 1692
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@a
    and-int/lit8 v0, v0, 0x20

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 1690
    :cond_0
    const/4 v0, 0x1

    #@f
    :goto_0
    return v0

    #@10
    .line 1693
    :cond_1
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    #@12
    and-int/lit8 v0, v0, 0x3

    #@14
    if-nez v0, :cond_0

    #@16
    .line 1695
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    #@18
    goto :goto_0
.end method

.method private isDeviceIdleModeInternal()Z
    .locals 2

    #@0
    .prologue
    .line 2251
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 2252
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 2251
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method private isInteractiveInternal()Z
    .locals 2

    #@0
    .prologue
    .line 2210
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2211
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@5
    invoke-static {v0}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    .line 2210
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method private isItBedTimeYetLocked()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1678
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_1

    #@b
    :cond_0
    :goto_0
    return v0

    #@c
    :cond_1
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method private isLowPowerModeInternal()Z
    .locals 2

    #@0
    .prologue
    .line 2216
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 2217
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 2216
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method private isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2426
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    #@3
    if-ltz v1, :cond_0

    #@5
    .line 2427
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    #@7
    const v2, 0x7fffffff

    #@a
    if-ge v1, v2, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    .line 2426
    :cond_0
    return v0
.end method

.method private isScreenBrightnessBoostedInternal()Z
    .locals 2

    #@0
    .prologue
    .line 2465
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 2466
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 2465
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method private static isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 2
    .param p0, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    #@0
    .prologue
    .line 822
    iget v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    #@2
    const v1, 0xffff

    #@5
    and-int/2addr v0, v1

    #@6
    sparse-switch v0, :sswitch_data_0

    #@9
    .line 828
    const/4 v0, 0x0

    #@a
    return v0

    #@b
    .line 826
    :sswitch_0
    const/4 v0, 0x1

    #@c
    return v0

    #@d
    .line 822
    nop

    #@e
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xa -> :sswitch_0
        0x1a -> :sswitch_0
    .end sparse-switch
.end method

.method private static isValidAutoBrightnessAdjustment(F)Z
    .locals 2
    .param p0, "value"    # F

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1984
    const/high16 v1, -0x40800000    # -1.0f

    #@3
    cmpl-float v1, p0, v1

    #@5
    if-ltz v1, :cond_0

    #@7
    const/high16 v1, 0x3f800000    # 1.0f

    #@9
    cmpg-float v1, p0, v1

    #@b
    if-gtz v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method private static isValidBrightness(I)Z
    .locals 2
    .param p0, "value"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1979
    if-ltz p0, :cond_0

    #@3
    const/16 v1, 0xff

    #@5
    if-gt p0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method private isWakeLockLevelSupportedInternal(I)Z
    .locals 3
    .param p1, "level"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 978
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 979
    sparse-switch p1, :sswitch_data_0

    #@7
    monitor-exit v1

    #@8
    .line 992
    return v0

    #@9
    .line 986
    :sswitch_0
    const/4 v0, 0x1

    #@a
    monitor-exit v1

    #@b
    return v0

    #@c
    .line 989
    :sswitch_1
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    #@e
    if-eqz v2, :cond_0

    #@10
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    #@12
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal;->isProximitySensorAvailable()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    move-result v0

    #@16
    :cond_0
    monitor-exit v1

    #@17
    return v0

    #@18
    .line 978
    :catchall_0
    move-exception v0

    #@19
    monitor-exit v1

    #@1a
    throw v0

    #@1b
    .line 979
    nop

    #@1c
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
        0xa -> :sswitch_0
        0x1a -> :sswitch_0
        0x20 -> :sswitch_1
        0x40 -> :sswitch_0
        0x80 -> :sswitch_0
    .end sparse-switch
.end method

.method public static lowLevelReboot(Ljava/lang/String;)V
    .locals 4
    .param p0, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2562
    if-nez p0, :cond_0

    #@2
    .line 2563
    const-string/jumbo p0, ""

    #@5
    .line 2565
    :cond_0
    const-string/jumbo v1, "recovery"

    #@8
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 2570
    const-string/jumbo v1, "ctl.start"

    #@11
    const-string/jumbo v2, "pre-recovery"

    #@14
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    .line 2575
    :goto_0
    const-wide/16 v2, 0x4e20

    #@19
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 2579
    :goto_1
    const-string/jumbo v1, "PowerManagerService"

    #@1f
    const-string/jumbo v2, "Unexpected return from lowLevelReboot!"

    #@22
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 2561
    return-void

    #@26
    .line 2572
    :cond_1
    const-string/jumbo v1, "sys.powerctl"

    #@29
    new-instance v2, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v3, "reboot,"

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@40
    goto :goto_0

    #@41
    .line 2576
    :catch_0
    move-exception v0

    #@42
    .line 2577
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    #@49
    goto :goto_1
.end method

.method public static lowLevelShutdown()V
    .locals 2

    #@0
    .prologue
    .line 2551
    const-string/jumbo v0, "sys.powerctl"

    #@3
    const-string/jumbo v1, "shutdown"

    #@6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 2550
    return-void
.end method

.method private napInternal(JI)V
    .locals 3
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    #@0
    .prologue
    .line 1185
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1186
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->napNoUpdateLocked(JI)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1187
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v1

    #@d
    .line 1184
    return-void

    #@e
    .line 1185
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method private napNoUpdateLocked(JI)Z
    .locals 7
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const-wide/32 v4, 0x20000

    #@4
    const/4 v3, 0x1

    #@5
    .line 1197
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    #@7
    cmp-long v0, p1, v0

    #@9
    if-ltz v0, :cond_0

    #@b
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@d
    if-eq v0, v3, :cond_1

    #@f
    .line 1199
    :cond_0
    return v2

    #@10
    .line 1198
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    #@12
    if-eqz v0, :cond_0

    #@14
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 1202
    const-string/jumbo v0, "nap"

    #@1b
    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@1e
    .line 1204
    :try_start_0
    const-string/jumbo v0, "PowerManagerService"

    #@21
    new-instance v1, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v2, "Nap time (uid "

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    const-string/jumbo v2, ")..."

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    .line 1206
    const/4 v0, 0x1

    #@40
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    #@42
    .line 1207
    const/4 v0, 0x2

    #@43
    const/4 v1, 0x0

    #@44
    invoke-direct {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@47
    .line 1209
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@4a
    .line 1211
    return v3

    #@4b
    .line 1208
    :catchall_0
    move-exception v0

    #@4c
    .line 1209
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@4f
    .line 1208
    throw v0
.end method

.method private static native nativeAcquireSuspendBlocker(Ljava/lang/String;)V
.end method

.method private native nativeInit()V
.end method

.method private static native nativeReleaseSuspendBlocker(Ljava/lang/String;)V
.end method

.method private static native nativeSendPowerHint(II)V
.end method

.method private static native nativeSetAutoSuspend(Z)V
.end method

.method private static native nativeSetFeature(II)V
.end method

.method private static native nativeSetInteractive(Z)V
.end method

.method private needDisplaySuspendBlockerLocked()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 2159
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 2160
    return v1

    #@6
    .line 2162
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@8
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 2167
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@10
    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    #@12
    if-eqz v0, :cond_2

    #@14
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    #@16
    if-eqz v0, :cond_2

    #@18
    .line 2168
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    #@1a
    if-eqz v0, :cond_2

    #@1c
    .line 2172
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    #@1e
    if-eqz v0, :cond_3

    #@20
    .line 2173
    return v1

    #@21
    .line 2169
    :cond_2
    return v1

    #@22
    .line 2176
    :cond_3
    const/4 v0, 0x0

    #@23
    return v0
.end method

.method private notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 8
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    #@0
    .prologue
    .line 950
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 949
    :cond_0
    :goto_0
    return-void

    #@9
    .line 951
    :cond_1
    const/4 v0, 0x1

    #@a
    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    #@c
    .line 952
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    #@e
    iget v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    #@10
    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    #@12
    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    #@14
    .line 953
    iget v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    #@16
    iget v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    #@18
    iget-object v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    #@1a
    .line 954
    iget-object v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    #@1c
    .line 952
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/power/Notifier;->onWakeLockAcquired(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    #@1f
    goto :goto_0
.end method

.method private notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    .locals 16
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "pid"    # I
    .param p7, "ws"    # Landroid/os/WorkSource;
    .param p8, "historyTag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 960
    move-object/from16 v0, p0

    #@2
    iget-boolean v1, v0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    #@4
    if-eqz v1, :cond_0

    #@6
    move-object/from16 v0, p1

    #@8
    iget-boolean v1, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 961
    move-object/from16 v0, p0

    #@e
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    #@10
    move-object/from16 v0, p1

    #@12
    iget v2, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    #@14
    move-object/from16 v0, p1

    #@16
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    #@18
    move-object/from16 v0, p1

    #@1a
    iget-object v4, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    #@1c
    .line 962
    move-object/from16 v0, p1

    #@1e
    iget v5, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    #@20
    move-object/from16 v0, p1

    #@22
    iget v6, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    #@24
    move-object/from16 v0, p1

    #@26
    iget-object v7, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    #@28
    .line 963
    move-object/from16 v0, p1

    #@2a
    iget-object v8, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    #@2c
    move/from16 v9, p2

    #@2e
    move-object/from16 v10, p3

    #@30
    move-object/from16 v11, p4

    #@32
    move/from16 v12, p5

    #@34
    move/from16 v13, p6

    #@36
    move-object/from16 v14, p7

    #@38
    move-object/from16 v15, p8

    #@3a
    .line 961
    invoke-virtual/range {v1 .. v15}, Lcom/android/server/power/Notifier;->onWakeLockChanging(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    #@3d
    .line 959
    :cond_0
    return-void
.end method

.method private notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 8
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    #@0
    .prologue
    .line 968
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 969
    const/4 v0, 0x0

    #@9
    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    #@b
    .line 970
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    #@d
    iget v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    #@f
    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    #@11
    .line 971
    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    #@13
    iget v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    #@15
    iget v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    #@17
    .line 972
    iget-object v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    #@19
    iget-object v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    #@1b
    .line 970
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/power/Notifier;->onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    #@1e
    .line 967
    :cond_0
    return-void
.end method

.method private powerHintInternal(II)V
    .locals 0
    .param p1, "hintId"    # I
    .param p2, "data"    # I

    #@0
    .prologue
    .line 2543
    invoke-static {p1, p2}, Lcom/android/server/power/PowerManagerService;->nativeSendPowerHint(II)V

    #@3
    .line 2542
    return-void
.end method

.method private readConfigurationLocked()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 617
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@6
    move-result-object v0

    #@7
    .line 620
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x112006a

    #@a
    .line 619
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@d
    move-result v1

    #@e
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    #@10
    .line 622
    const v1, 0x112006b

    #@13
    .line 621
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@16
    move-result v1

    #@17
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    #@19
    .line 624
    const v1, 0x1120023

    #@1c
    .line 623
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@1f
    move-result v1

    #@20
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    #@22
    .line 626
    const v1, 0x1120027

    #@25
    .line 625
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@28
    move-result v1

    #@29
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    #@2b
    .line 628
    const v1, 0x1120039

    #@2e
    .line 627
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@31
    move-result v1

    #@32
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    #@34
    .line 630
    const v1, 0x1120064

    #@37
    .line 629
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@3a
    move-result v1

    #@3b
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    #@3d
    .line 632
    const v1, 0x1120065

    #@40
    .line 631
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@43
    move-result v1

    #@44
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    #@46
    .line 634
    const v1, 0x1120067

    #@49
    .line 633
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@4c
    move-result v1

    #@4d
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    #@4f
    .line 636
    const v1, 0x1120066

    #@52
    .line 635
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@55
    move-result v1

    #@56
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    #@58
    .line 638
    const v1, 0x1120068

    #@5b
    .line 637
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@5e
    move-result v1

    #@5f
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    #@61
    .line 640
    const v1, 0x10e007e

    #@64
    .line 639
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@67
    move-result v1

    #@68
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    #@6a
    .line 642
    const v1, 0x10e007f

    #@6d
    .line 641
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@70
    move-result v1

    #@71
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    #@73
    .line 644
    const v1, 0x10e0080

    #@76
    .line 643
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@79
    move-result v1

    #@7a
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    #@7c
    .line 646
    const v1, 0x1120069

    #@7f
    .line 645
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@82
    move-result v1

    #@83
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOffConfig:Z

    #@85
    .line 648
    const v1, 0x10e0081

    #@88
    .line 647
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@8b
    move-result v1

    #@8c
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:I

    #@8e
    .line 650
    const v1, 0x10e0082

    #@91
    .line 649
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@94
    move-result v1

    #@95
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:I

    #@97
    .line 652
    const v1, 0x1130002

    #@9a
    .line 651
    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    #@9d
    move-result v1

    #@9e
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    #@a0
    .line 654
    const v1, 0x112009a

    #@a3
    .line 653
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@a6
    move-result v1

    #@a7
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSupportsDoubleTapWakeConfig:Z

    #@a9
    .line 616
    return-void
.end method

.method private reallyGoToSleepNoUpdateLocked(JI)Z
    .locals 7
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    #@0
    .prologue
    const-wide/32 v4, 0x20000

    #@3
    const/4 v2, 0x0

    #@4
    .line 1221
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    #@6
    cmp-long v0, p1, v0

    #@8
    if-ltz v0, :cond_0

    #@a
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@c
    if-nez v0, :cond_1

    #@e
    .line 1223
    :cond_0
    return v2

    #@f
    .line 1222
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    #@11
    if-eqz v0, :cond_0

    #@13
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 1226
    const-string/jumbo v0, "reallyGoToSleep"

    #@1a
    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@1d
    .line 1228
    :try_start_0
    const-string/jumbo v0, "PowerManagerService"

    #@20
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v2, "Sleeping (uid "

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    const-string/jumbo v2, ")..."

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 1230
    const/4 v0, 0x0

    #@3f
    const/4 v1, 0x2

    #@40
    invoke-direct {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@43
    .line 1232
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@46
    .line 1234
    const/4 v0, 0x1

    #@47
    return v0

    #@48
    .line 1231
    :catchall_0
    move-exception v0

    #@49
    .line 1232
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@4c
    .line 1231
    throw v0
.end method

.method private releaseWakeLockInternal(Landroid/os/IBinder;I)V
    .locals 5
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 850
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 851
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v0

    #@7
    .line 852
    .local v0, "index":I
    if-gez v0, :cond_0

    #@9
    monitor-exit v3

    #@a
    .line 857
    return-void

    #@b
    .line 860
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    #@13
    .line 866
    .local v1, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    and-int/lit8 v2, p2, 0x1

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 867
    const/4 v2, 0x1

    #@18
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    #@1a
    .line 870
    :cond_1
    iget-object v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@20
    .line 871
    invoke-direct {p0, v1, v0}, Lcom/android/server/power/PowerManagerService;->removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    monitor-exit v3

    #@24
    .line 849
    return-void

    #@25
    .line 850
    .end local v0    # "index":I
    .end local v1    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :catchall_0
    move-exception v2

    #@26
    monitor-exit v3

    #@27
    throw v2
.end method

.method private removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V
    .locals 1
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 892
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@5
    .line 893
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    #@8
    .line 895
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->applyWakeLockFlagsOnReleaseLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    #@b
    .line 896
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@d
    or-int/lit8 v0, v0, 0x1

    #@f
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@11
    .line 897
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    #@14
    .line 891
    return-void
.end method

.method private scheduleSandmanLocked()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1718
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 1719
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    #@7
    .line 1720
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@9
    const/4 v2, 0x2

    #@a
    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    #@d
    move-result-object v0

    #@e
    .line 1721
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    #@11
    .line 1722
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@13
    invoke-virtual {v1, v0}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessage(Landroid/os/Message;)Z

    #@16
    .line 1717
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private setAttentionLightInternal(ZI)V
    .locals 4
    .param p1, "on"    # Z
    .param p2, "color"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2432
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v3

    #@4
    .line 2433
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-nez v1, :cond_0

    #@8
    monitor-exit v3

    #@9
    .line 2434
    return-void

    #@a
    .line 2436
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mAttentionLight:Lcom/android/server/lights/Light;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c
    .local v0, "light":Lcom/android/server/lights/Light;
    monitor-exit v3

    #@d
    .line 2440
    if-eqz p1, :cond_1

    #@f
    const/4 v1, 0x3

    #@10
    :goto_0
    const/4 v3, 0x2

    #@11
    invoke-virtual {v0, p2, v3, v1, v2}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    #@14
    .line 2430
    return-void

    #@15
    .line 2432
    .end local v0    # "light":Lcom/android/server/lights/Light;
    :catchall_0
    move-exception v1

    #@16
    monitor-exit v3

    #@17
    throw v1

    #@18
    .restart local v0    # "light":Lcom/android/server/lights/Light;
    :cond_1
    move v1, v2

    #@19
    .line 2440
    goto :goto_0
.end method

.method private setDozeOverrideFromDreamManagerInternal(II)V
    .locals 2
    .param p1, "screenState"    # I
    .param p2, "screenBrightness"    # I

    #@0
    .prologue
    .line 2531
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2532
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    #@5
    if-ne v0, p1, :cond_0

    #@7
    .line 2533
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    #@9
    if-eq v0, p2, :cond_1

    #@b
    .line 2534
    :cond_0
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    #@d
    .line 2535
    iput p2, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    #@f
    .line 2536
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@11
    or-int/lit8 v0, v0, 0x20

    #@13
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@15
    .line 2537
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    :cond_1
    monitor-exit v1

    #@19
    .line 2530
    return-void

    #@1a
    .line 2531
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method

.method private setHalAutoSuspendModeLocked(Z)V
    .locals 4
    .param p1, "enable"    # Z

    #@0
    .prologue
    const-wide/32 v2, 0x20000

    #@3
    .line 2180
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    #@5
    if-eq p1, v0, :cond_0

    #@7
    .line 2184
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    #@9
    .line 2185
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v1, "setHalAutoSuspend("

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    const-string/jumbo v1, ")"

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@27
    .line 2187
    :try_start_0
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 2189
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@2d
    .line 2179
    :cond_0
    return-void

    #@2e
    .line 2188
    :catchall_0
    move-exception v0

    #@2f
    .line 2189
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@32
    .line 2188
    throw v0
.end method

.method private setHalInteractiveModeLocked(Z)V
    .locals 4
    .param p1, "enable"    # Z

    #@0
    .prologue
    const-wide/32 v2, 0x20000

    #@3
    .line 2195
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    #@5
    if-eq p1, v0, :cond_0

    #@7
    .line 2199
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    #@9
    .line 2200
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v1, "setHalInteractive("

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    const-string/jumbo v1, ")"

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@27
    .line 2202
    :try_start_0
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->nativeSetInteractive(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 2204
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@2d
    .line 2194
    :cond_0
    return-void

    #@2e
    .line 2203
    :catchall_0
    move-exception v0

    #@2f
    .line 2204
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@32
    .line 2203
    throw v0
.end method

.method private setLowPowerModeInternal(Z)Z
    .locals 5
    .param p1, "mode"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 2222
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v2

    #@5
    .line 2224
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    if-eqz v3, :cond_0

    #@9
    monitor-exit v2

    #@a
    .line 2225
    return v0

    #@b
    .line 2227
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    #@d
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@10
    move-result-object v3

    #@11
    .line 2228
    const-string/jumbo v4, "low_power"

    #@14
    if-eqz p1, :cond_1

    #@16
    move v0, v1

    #@17
    .line 2227
    :cond_1
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@1a
    .line 2229
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    #@1c
    .line 2231
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    #@1e
    if-eqz v0, :cond_2

    #@20
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    #@22
    if-eqz v0, :cond_2

    #@24
    .line 2232
    if-eqz p1, :cond_3

    #@26
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    #@28
    if-eqz v0, :cond_3

    #@2a
    .line 2236
    const/4 v0, 0x0

    #@2b
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    #@2d
    .line 2245
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateLowPowerModeLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    monitor-exit v2

    #@31
    .line 2246
    return v1

    #@32
    .line 2237
    :cond_3
    if-nez p1, :cond_2

    #@34
    :try_start_2
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    #@36
    if-nez v0, :cond_2

    #@38
    .line 2241
    const/4 v0, 0x1

    #@39
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3b
    goto :goto_0

    #@3c
    .line 2222
    :catchall_0
    move-exception v0

    #@3d
    monitor-exit v2

    #@3e
    throw v0
.end method

.method private setScreenBrightnessOverrideFromWindowManagerInternal(I)V
    .locals 2
    .param p1, "brightness"    # I

    #@0
    .prologue
    .line 2488
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2489
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    #@5
    if-eq v0, p1, :cond_0

    #@7
    .line 2490
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    #@9
    .line 2491
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@b
    or-int/lit8 v0, v0, 0x20

    #@d
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@f
    .line 2492
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit v1

    #@13
    .line 2487
    return-void

    #@14
    .line 2488
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method private setTemporaryScreenAutoBrightnessAdjustmentSettingOverrideInternal(F)V
    .locals 2
    .param p1, "adj"    # F

    #@0
    .prologue
    .line 2518
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2521
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    #@5
    cmpl-float v0, v0, p1

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2522
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    #@b
    .line 2523
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@d
    or-int/lit8 v0, v0, 0x20

    #@f
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@11
    .line 2524
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    :cond_0
    monitor-exit v1

    #@15
    .line 2517
    return-void

    #@16
    .line 2518
    :catchall_0
    move-exception v0

    #@17
    monitor-exit v1

    #@18
    throw v0
.end method

.method private setTemporaryScreenBrightnessSettingOverrideInternal(I)V
    .locals 2
    .param p1, "brightness"    # I

    #@0
    .prologue
    .line 2508
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2509
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    #@5
    if-eq v0, p1, :cond_0

    #@7
    .line 2510
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    #@9
    .line 2511
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@b
    or-int/lit8 v0, v0, 0x20

    #@d
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@f
    .line 2512
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit v1

    #@13
    .line 2507
    return-void

    #@14
    .line 2508
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method private setUserActivityTimeoutOverrideFromWindowManagerInternal(J)V
    .locals 5
    .param p1, "timeoutMillis"    # J

    #@0
    .prologue
    .line 2498
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2499
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    #@5
    cmp-long v0, v2, p1

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2500
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    #@b
    .line 2501
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@d
    or-int/lit8 v0, v0, 0x20

    #@f
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@11
    .line 2502
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    :cond_0
    monitor-exit v1

    #@15
    .line 2497
    return-void

    #@16
    .line 2498
    :catchall_0
    move-exception v0

    #@17
    monitor-exit v1

    #@18
    throw v0
.end method

.method private setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 7
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 2401
    iget v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    #@4
    const v3, 0xffff

    #@7
    and-int/2addr v2, v3

    #@8
    if-ne v2, v6, :cond_1

    #@a
    .line 2403
    const/4 v1, 0x0

    #@b
    .line 2404
    .local v1, "disabled":Z
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 2405
    iget v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    #@11
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    #@14
    move-result v0

    #@15
    .line 2408
    .local v0, "appid":I
    const/16 v2, 0x2710

    #@17
    if-lt v0, v2, :cond_0

    #@19
    .line 2409
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    #@1b
    invoke-static {v2, v0}, Ljava/util/Arrays;->binarySearch([II)I

    #@1e
    move-result v2

    #@1f
    if-gez v2, :cond_0

    #@21
    .line 2410
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    #@23
    invoke-static {v2, v0}, Ljava/util/Arrays;->binarySearch([II)I

    #@26
    move-result v2

    #@27
    if-gez v2, :cond_0

    #@29
    .line 2411
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@2b
    iget v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    #@2d
    .line 2412
    const/16 v4, 0x10

    #@2f
    .line 2411
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    #@32
    move-result v2

    #@33
    .line 2413
    const/4 v3, 0x4

    #@34
    .line 2411
    if-le v2, v3, :cond_0

    #@36
    .line 2414
    const/4 v1, 0x1

    #@37
    .line 2417
    .end local v0    # "appid":I
    :cond_0
    iget-boolean v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    #@39
    if-eq v2, v1, :cond_1

    #@3b
    .line 2418
    iput-boolean v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    #@3d
    .line 2419
    return v6

    #@3e
    .line 2422
    .end local v1    # "disabled":Z
    :cond_1
    return v5
.end method

.method private setWakefulnessLocked(II)V
    .locals 1
    .param p1, "wakefulness"    # I
    .param p2, "reason"    # I

    #@0
    .prologue
    .line 1238
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 1239
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@6
    .line 1240
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    #@9
    .line 1241
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@b
    or-int/lit8 v0, v0, 0x2

    #@d
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@f
    .line 1242
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    #@11
    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/Notifier;->onWakefulnessChangeStarted(II)V

    #@14
    .line 1237
    :cond_0
    return-void
.end method

.method private shouldNapAtBedTimeLocked()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1667
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    #@4
    if-nez v2, :cond_0

    #@6
    .line 1668
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    #@8
    if-eqz v2, :cond_2

    #@a
    .line 1669
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    #@c
    if-eqz v2, :cond_1

    #@e
    .line 1667
    :cond_0
    :goto_0
    return v0

    #@f
    :cond_1
    move v0, v1

    #@10
    .line 1669
    goto :goto_0

    #@11
    :cond_2
    move v0, v1

    #@12
    .line 1668
    goto :goto_0
.end method

.method private shouldUseProximitySensorLocked()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2091
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@3
    and-int/lit8 v1, v1, 0x10

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method private shouldWakeUpWhenPluggedOrUnpluggedLocked(ZIZ)Z
    .locals 3
    .param p1, "wasPowered"    # Z
    .param p2, "oldPlugType"    # I
    .param p3, "dockedOnWirelessCharger"    # Z

    #@0
    .prologue
    const/4 v1, 0x4

    #@1
    const/4 v2, 0x0

    #@2
    .line 1380
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1381
    return v2

    #@7
    .line 1386
    :cond_0
    if-eqz p1, :cond_1

    #@9
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    #@b
    if-eqz v0, :cond_3

    #@d
    .line 1393
    :cond_1
    if-nez p1, :cond_2

    #@f
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    #@11
    if-eqz v0, :cond_2

    #@13
    .line 1394
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    #@15
    if-ne v0, v1, :cond_2

    #@17
    .line 1395
    if-eqz p3, :cond_4

    #@19
    .line 1400
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    #@1b
    if-eqz v0, :cond_5

    #@1d
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@1f
    const/4 v1, 0x2

    #@20
    if-ne v0, v1, :cond_5

    #@22
    .line 1401
    return v2

    #@23
    .line 1387
    :cond_3
    if-ne p2, v1, :cond_1

    #@25
    .line 1388
    return v2

    #@26
    .line 1396
    :cond_4
    return v2

    #@27
    .line 1405
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    #@29
    if-eqz v0, :cond_6

    #@2b
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    #@2d
    if-eqz v0, :cond_7

    #@2f
    .line 1410
    :cond_6
    const/4 v0, 0x1

    #@30
    return v0

    #@31
    .line 1406
    :cond_7
    return v2
.end method

.method private shutdownOrRebootInternal(ZZLjava/lang/String;Z)V
    .locals 5
    .param p1, "shutdown"    # Z
    .param p2, "confirm"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "wait"    # Z

    #@0
    .prologue
    .line 2263
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@2
    if-eqz v3, :cond_0

    #@4
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 2267
    new-instance v2, Lcom/android/server/power/PowerManagerService$3;

    #@a
    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService$3;-><init>(Lcom/android/server/power/PowerManagerService;ZZLjava/lang/String;)V

    #@d
    .line 2281
    .local v2, "runnable":Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@f
    invoke-static {v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    #@12
    move-result-object v1

    #@13
    .line 2282
    .local v1, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    #@14
    invoke-virtual {v1, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    #@17
    .line 2283
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@19
    invoke-virtual {v3, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessage(Landroid/os/Message;)Z

    #@1c
    .line 2286
    if-eqz p4, :cond_1

    #@1e
    .line 2287
    monitor-enter v2

    #@1f
    .line 2290
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    goto :goto_0

    #@23
    .line 2291
    :catch_0
    move-exception v0

    #@24
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    #@25
    .line 2264
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "runnable":Ljava/lang/Runnable;
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    #@27
    const-string/jumbo v4, "Too early to call shutdown() or reboot()"

    #@2a
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v3

    #@2e
    .line 2287
    .restart local v1    # "msg":Landroid/os/Message;
    .restart local v2    # "runnable":Ljava/lang/Runnable;
    :catchall_0
    move-exception v3

    #@2f
    monitor-exit v2

    #@30
    throw v3

    #@31
    .line 2262
    :cond_1
    return-void
.end method

.method private updateDisplayPowerStateLocked(I)Z
    .locals 10
    .param p1, "dirty"    # I

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 1877
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    #@4
    .line 1878
    .local v2, "oldDisplayReady":Z
    and-int/lit16 v7, p1, 0x83f

    #@6
    if-eqz v7, :cond_3

    #@8
    .line 1881
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@a
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getDesiredScreenPolicyLocked()I

    #@d
    move-result v8

    #@e
    iput v8, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    #@10
    .line 1884
    const/4 v1, 0x1

    #@11
    .line 1885
    .local v1, "brightnessSetByUser":Z
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    #@13
    .line 1886
    .local v4, "screenBrightness":I
    const/4 v3, 0x0

    #@14
    .line 1887
    .local v3, "screenAutoBrightnessAdjustment":F
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    #@16
    if-ne v7, v6, :cond_5

    #@18
    const/4 v0, 0x1

    #@19
    .line 1889
    .local v0, "autoBrightness":Z
    :goto_0
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    #@1b
    invoke-static {v7}, Lcom/android/server/power/PowerManagerService;->isValidBrightness(I)Z

    #@1e
    move-result v7

    #@1f
    if-eqz v7, :cond_6

    #@21
    .line 1890
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    #@23
    .line 1891
    const/4 v0, 0x0

    #@24
    .line 1892
    const/4 v1, 0x0

    #@25
    .line 1898
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    #@27
    .line 1899
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    #@29
    .line 1901
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    #@2b
    .line 1900
    invoke-static {v7}, Lcom/android/server/power/PowerManagerService;->isValidAutoBrightnessAdjustment(F)Z

    #@2e
    move-result v7

    #@2f
    if-eqz v7, :cond_8

    #@31
    .line 1902
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    #@33
    .line 1910
    :cond_1
    :goto_2
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    #@35
    .line 1909
    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    #@38
    move-result v7

    #@39
    .line 1910
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    #@3b
    .line 1909
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    #@3e
    move-result v4

    #@3f
    .line 1912
    const/high16 v7, 0x3f800000    # 1.0f

    #@41
    .line 1911
    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    #@44
    move-result v7

    #@45
    .line 1912
    const/high16 v8, -0x40800000    # -1.0f

    #@47
    .line 1911
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    #@4a
    move-result v3

    #@4b
    .line 1915
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@4d
    iput v4, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    #@4f
    .line 1916
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@51
    iput v3, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    #@53
    .line 1918
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@55
    iput-boolean v1, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->brightnessSetByUser:Z

    #@57
    .line 1919
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@59
    iput-boolean v0, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    #@5b
    .line 1920
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@5d
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->shouldUseProximitySensorLocked()Z

    #@60
    move-result v8

    #@61
    iput-boolean v8, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    #@63
    .line 1921
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@65
    iget-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    #@67
    iput-boolean v8, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    #@69
    .line 1922
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@6b
    iget-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    #@6d
    iput-boolean v8, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    #@6f
    .line 1924
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@71
    iget v7, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    #@73
    if-ne v7, v6, :cond_9

    #@75
    .line 1925
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@77
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    #@79
    iput v8, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    #@7b
    .line 1926
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@7d
    iget v7, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    #@7f
    const/4 v8, 0x4

    #@80
    if-ne v7, v8, :cond_2

    #@82
    .line 1927
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@84
    and-int/lit16 v7, v7, 0x80

    #@86
    if-eqz v7, :cond_2

    #@88
    .line 1928
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@8a
    const/4 v8, 0x3

    #@8b
    iput v8, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    #@8d
    .line 1930
    :cond_2
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@8f
    .line 1931
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    #@91
    .line 1930
    iput v8, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    #@93
    .line 1937
    :goto_3
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    #@95
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@97
    .line 1938
    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    #@99
    .line 1937
    invoke-virtual {v7, v8, v9}, Landroid/hardware/display/DisplayManagerInternal;->requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z

    #@9c
    move-result v7

    #@9d
    iput-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    #@9f
    .line 1939
    iput-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    #@a1
    .line 1952
    .end local v0    # "autoBrightness":Z
    .end local v1    # "brightnessSetByUser":Z
    .end local v3    # "screenAutoBrightnessAdjustment":F
    .end local v4    # "screenBrightness":I
    :cond_3
    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    #@a3
    if-eqz v7, :cond_4

    #@a5
    if-eqz v2, :cond_a

    #@a7
    :cond_4
    :goto_4
    return v5

    #@a8
    .line 1887
    .restart local v1    # "brightnessSetByUser":Z
    .restart local v3    # "screenAutoBrightnessAdjustment":F
    .restart local v4    # "screenBrightness":I
    :cond_5
    const/4 v0, 0x0

    #@a9
    .restart local v0    # "autoBrightness":Z
    goto/16 :goto_0

    #@ab
    .line 1893
    :cond_6
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    #@ad
    invoke-static {v7}, Lcom/android/server/power/PowerManagerService;->isValidBrightness(I)Z

    #@b0
    move-result v7

    #@b1
    if-eqz v7, :cond_7

    #@b3
    .line 1894
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    #@b5
    goto/16 :goto_1

    #@b7
    .line 1895
    :cond_7
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    #@b9
    invoke-static {v7}, Lcom/android/server/power/PowerManagerService;->isValidBrightness(I)Z

    #@bc
    move-result v7

    #@bd
    if-eqz v7, :cond_0

    #@bf
    .line 1896
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    #@c1
    goto/16 :goto_1

    #@c3
    .line 1905
    :cond_8
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    #@c5
    .line 1904
    invoke-static {v7}, Lcom/android/server/power/PowerManagerService;->isValidAutoBrightnessAdjustment(F)Z

    #@c8
    move-result v7

    #@c9
    if-eqz v7, :cond_1

    #@cb
    .line 1906
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    #@cd
    goto/16 :goto_2

    #@cf
    .line 1933
    :cond_9
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@d1
    iput v5, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    #@d3
    .line 1934
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@d5
    const/4 v8, -0x1

    #@d6
    iput v8, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    #@d8
    goto :goto_3

    #@d9
    .end local v0    # "autoBrightness":Z
    .end local v1    # "brightnessSetByUser":Z
    .end local v3    # "screenAutoBrightnessAdjustment":F
    .end local v4    # "screenBrightness":I
    :cond_a
    move v5, v6

    #@da
    .line 1952
    goto :goto_4
.end method

.method private updateDreamLocked(IZ)V
    .locals 1
    .param p1, "dirty"    # I
    .param p2, "displayBecameReady"    # Z

    #@0
    .prologue
    .line 1702
    and-int/lit16 v0, p1, 0x3f7

    #@2
    if-nez v0, :cond_0

    #@4
    if-eqz p2, :cond_1

    #@6
    .line 1711
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 1712
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->scheduleSandmanLocked()V

    #@d
    .line 1701
    :cond_1
    return-void
.end method

.method private updateIsPoweredLocked(I)V
    .locals 11
    .param p1, "dirty"    # I

    #@0
    .prologue
    .line 1320
    and-int/lit16 v1, p1, 0x100

    #@2
    if-eqz v1, :cond_5

    #@4
    .line 1321
    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    #@6
    .line 1322
    .local v10, "wasPowered":Z
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    #@8
    .line 1323
    .local v9, "oldPlugType":I
    iget-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    #@a
    .line 1324
    .local v8, "oldLevelLow":Z
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    #@c
    const/4 v4, 0x7

    #@d
    invoke-virtual {v1, v4}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    #@10
    move-result v1

    #@11
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    #@13
    .line 1325
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    #@15
    invoke-virtual {v1}, Landroid/os/BatteryManagerInternal;->getPlugType()I

    #@18
    move-result v1

    #@19
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    #@1b
    .line 1326
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    #@1d
    invoke-virtual {v1}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    #@20
    move-result v1

    #@21
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    #@23
    .line 1327
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    #@25
    invoke-virtual {v1}, Landroid/os/BatteryManagerInternal;->getBatteryLevelLow()Z

    #@28
    move-result v1

    #@29
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    #@2b
    .line 1337
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    #@2d
    if-ne v10, v1, :cond_0

    #@2f
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    #@31
    if-eq v9, v1, :cond_2

    #@33
    .line 1338
    :cond_0
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@35
    or-int/lit8 v1, v1, 0x40

    #@37
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@39
    .line 1341
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    #@3b
    .line 1342
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    #@3d
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    #@3f
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    #@41
    .line 1341
    invoke-virtual {v1, v4, v5, v6}, Lcom/android/server/power/WirelessChargerDetector;->update(ZII)Z

    #@44
    move-result v0

    #@45
    .line 1349
    .local v0, "dockedOnWirelessCharger":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@48
    move-result-wide v2

    #@49
    .line 1350
    .local v2, "now":J
    invoke-direct {p0, v10, v9, v0}, Lcom/android/server/power/PowerManagerService;->shouldWakeUpWhenPluggedOrUnpluggedLocked(ZIZ)Z

    #@4c
    move-result v1

    #@4d
    if-eqz v1, :cond_1

    #@4f
    .line 1352
    const-string/jumbo v4, "android.server.power:POWER"

    #@52
    .line 1353
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    #@54
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@57
    move-result-object v6

    #@58
    .line 1352
    const/16 v5, 0x3e8

    #@5a
    .line 1353
    const/16 v7, 0x3e8

    #@5c
    move-object v1, p0

    #@5d
    .line 1352
    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z

    #@60
    .line 1356
    :cond_1
    const/4 v4, 0x0

    #@61
    const/4 v5, 0x0

    #@62
    const/16 v6, 0x3e8

    #@64
    move-object v1, p0

    #@65
    .line 1355
    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    #@68
    .line 1360
    if-eqz v0, :cond_2

    #@6a
    .line 1361
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    #@6c
    invoke-virtual {v1}, Lcom/android/server/power/Notifier;->onWirelessChargingStarted()V

    #@6f
    .line 1365
    .end local v0    # "dockedOnWirelessCharger":Z
    .end local v2    # "now":J
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    #@71
    if-ne v10, v1, :cond_3

    #@73
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    #@75
    if-eq v8, v1, :cond_5

    #@77
    .line 1366
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    #@79
    if-eq v8, v1, :cond_4

    #@7b
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    #@7d
    if-eqz v1, :cond_6

    #@7f
    .line 1372
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateLowPowerModeLocked()V

    #@82
    .line 1319
    .end local v8    # "oldLevelLow":Z
    .end local v9    # "oldPlugType":I
    .end local v10    # "wasPowered":Z
    :cond_5
    return-void

    #@83
    .line 1370
    .restart local v8    # "oldLevelLow":Z
    .restart local v9    # "oldPlugType":I
    .restart local v10    # "wasPowered":Z
    :cond_6
    const/4 v1, 0x0

    #@84
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    #@86
    goto :goto_0
.end method

.method private updatePowerStateLocked()V
    .locals 10

    #@0
    .prologue
    const-wide/32 v8, 0x20000

    #@3
    .line 1266
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    #@5
    if-eqz v3, :cond_0

    #@7
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@9
    if-nez v3, :cond_1

    #@b
    .line 1267
    :cond_0
    return-void

    #@c
    .line 1269
    :cond_1
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@e
    invoke-static {v3}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    #@11
    move-result v3

    #@12
    if-nez v3, :cond_2

    #@14
    .line 1270
    const-string/jumbo v3, "PowerManagerService"

    #@17
    const-string/jumbo v6, "Power manager lock was not held when calling updatePowerStateLocked"

    #@1a
    invoke-static {v3, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 1273
    :cond_2
    const-string/jumbo v3, "updatePowerState"

    #@20
    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@23
    .line 1276
    :try_start_0
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@25
    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->updateIsPoweredLocked(I)V

    #@28
    .line 1277
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@2a
    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->updateStayOnLocked(I)V

    #@2d
    .line 1278
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@2f
    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->updateScreenBrightnessBoostLocked(I)V

    #@32
    .line 1283
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@35
    move-result-wide v4

    #@36
    .line 1284
    .local v4, "now":J
    const/4 v1, 0x0

    #@37
    .line 1286
    .local v1, "dirtyPhase2":I
    :cond_3
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@39
    .line 1287
    .local v0, "dirtyPhase1":I
    or-int/2addr v1, v0

    #@3a
    .line 1288
    const/4 v3, 0x0

    #@3b
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@3d
    .line 1290
    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockSummaryLocked(I)V

    #@40
    .line 1291
    invoke-direct {p0, v4, v5, v0}, Lcom/android/server/power/PowerManagerService;->updateUserActivitySummaryLocked(JI)V

    #@43
    .line 1292
    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->updateWakefulnessLocked(I)Z

    #@46
    move-result v3

    #@47
    if-nez v3, :cond_3

    #@49
    .line 1298
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->updateDisplayPowerStateLocked(I)Z

    #@4c
    move-result v2

    #@4d
    .line 1301
    .local v2, "displayBecameReady":Z
    invoke-direct {p0, v1, v2}, Lcom/android/server/power/PowerManagerService;->updateDreamLocked(IZ)V

    #@50
    .line 1304
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->finishWakefulnessChangeIfNeededLocked()V

    #@53
    .line 1309
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSuspendBlockerLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@56
    .line 1311
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@59
    .line 1265
    return-void

    #@5a
    .line 1310
    .end local v0    # "dirtyPhase1":I
    .end local v1    # "dirtyPhase2":I
    .end local v2    # "displayBecameReady":Z
    .end local v4    # "now":J
    :catchall_0
    move-exception v3

    #@5b
    .line 1311
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@5e
    .line 1310
    throw v3
.end method

.method private updateScreenBrightnessBoostLocked(I)V
    .locals 12
    .param p1, "dirty"    # I

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    const/4 v4, 0x0

    #@2
    .line 1956
    and-int/lit16 v1, p1, 0x800

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 1957
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 1958
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@d
    move-result-wide v2

    #@e
    .line 1959
    .local v2, "now":J
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@10
    invoke-virtual {v1, v5}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    #@13
    .line 1960
    iget-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    #@15
    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    #@17
    cmp-long v1, v6, v10

    #@19
    if-lez v1, :cond_0

    #@1b
    .line 1961
    iget-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    #@1d
    .line 1962
    const-wide/16 v10, 0x1388

    #@1f
    .line 1961
    add-long v8, v6, v10

    #@21
    .line 1963
    .local v8, "boostTimeout":J
    cmp-long v1, v8, v2

    #@23
    if-lez v1, :cond_0

    #@25
    .line 1964
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@27
    invoke-virtual {v1, v5}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    #@2a
    move-result-object v0

    #@2b
    .line 1965
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    #@2c
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    #@2f
    .line 1966
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@31
    invoke-virtual {v1, v0, v8, v9}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    #@34
    .line 1967
    return-void

    #@35
    .line 1970
    .end local v0    # "msg":Landroid/os/Message;
    .end local v8    # "boostTimeout":J
    :cond_0
    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    #@37
    .line 1971
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    #@39
    invoke-virtual {v1}, Lcom/android/server/power/Notifier;->onScreenBrightnessBoostChanged()V

    #@3c
    .line 1973
    const/16 v6, 0x3e8

    #@3e
    move-object v1, p0

    #@3f
    move v5, v4

    #@40
    .line 1972
    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    #@43
    .line 1955
    .end local v2    # "now":J
    :cond_1
    return-void
.end method

.method private updateSettingsLocked()V
    .locals 12

    #@0
    .prologue
    const/4 v11, -0x1

    #@1
    const/4 v10, -0x2

    #@2
    const/4 v7, 0x1

    #@3
    const/4 v8, 0x0

    #@4
    .line 658
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@9
    move-result-object v5

    #@a
    .line 661
    .local v5, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v9, "screensaver_enabled"

    #@d
    .line 662
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    #@f
    if-eqz v6, :cond_5

    #@11
    move v6, v7

    #@12
    .line 660
    :goto_0
    invoke-static {v5, v9, v6, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@15
    move-result v6

    #@16
    if-eqz v6, :cond_6

    #@18
    move v6, v7

    #@19
    :goto_1
    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    #@1b
    .line 665
    const-string/jumbo v9, "screensaver_activate_on_sleep"

    #@1e
    .line 666
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    #@20
    if-eqz v6, :cond_7

    #@22
    move v6, v7

    #@23
    .line 664
    :goto_2
    invoke-static {v5, v9, v6, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@26
    move-result v6

    #@27
    if-eqz v6, :cond_8

    #@29
    move v6, v7

    #@2a
    :goto_3
    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    #@2c
    .line 669
    const-string/jumbo v9, "screensaver_activate_on_dock"

    #@2f
    .line 670
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    #@31
    if-eqz v6, :cond_9

    #@33
    move v6, v7

    #@34
    .line 668
    :goto_4
    invoke-static {v5, v9, v6, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@37
    move-result v6

    #@38
    if-eqz v6, :cond_a

    #@3a
    move v6, v7

    #@3b
    :goto_5
    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    #@3d
    .line 673
    const-string/jumbo v6, "screen_off_timeout"

    #@40
    const/16 v9, 0x3a98

    #@42
    .line 672
    invoke-static {v5, v6, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@45
    move-result v6

    #@46
    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    #@48
    .line 676
    const-string/jumbo v6, "sleep_timeout"

    #@4b
    .line 675
    invoke-static {v5, v6, v11, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@4e
    move-result v6

    #@4f
    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:I

    #@51
    .line 679
    const-string/jumbo v6, "stay_on_while_plugged_in"

    #@54
    .line 678
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@57
    move-result v6

    #@58
    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    #@5a
    .line 680
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    #@5c
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5f
    move-result-object v6

    #@60
    .line 681
    const-string/jumbo v9, "theater_mode_on"

    #@63
    .line 680
    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@66
    move-result v6

    #@67
    if-ne v6, v7, :cond_b

    #@69
    move v6, v7

    #@6a
    :goto_6
    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    #@6c
    .line 683
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mSupportsDoubleTapWakeConfig:Z

    #@6e
    if-eqz v6, :cond_0

    #@70
    .line 685
    const-string/jumbo v6, "double_tap_to_wake"

    #@73
    .line 684
    invoke-static {v5, v6, v8, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@76
    move-result v6

    #@77
    if-eqz v6, :cond_c

    #@79
    const/4 v1, 0x1

    #@7a
    .line 687
    .local v1, "doubleTapWakeEnabled":Z
    :goto_7
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    #@7c
    if-eq v1, v6, :cond_0

    #@7e
    .line 688
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    #@80
    .line 689
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    #@82
    if-eqz v6, :cond_d

    #@84
    move v6, v7

    #@85
    :goto_8
    invoke-static {v7, v6}, Lcom/android/server/power/PowerManagerService;->nativeSetFeature(II)V

    #@88
    .line 693
    .end local v1    # "doubleTapWakeEnabled":Z
    :cond_0
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    #@8a
    .line 695
    .local v4, "oldScreenBrightnessSetting":I
    const-string/jumbo v6, "screen_brightness"

    #@8d
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    #@8f
    .line 694
    invoke-static {v5, v6, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@92
    move-result v6

    #@93
    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    #@95
    .line 697
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    #@97
    if-eq v4, v6, :cond_1

    #@99
    .line 698
    iput v11, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    #@9b
    .line 701
    :cond_1
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    #@9d
    .line 704
    .local v3, "oldScreenAutoBrightnessAdjustmentSetting":F
    const-string/jumbo v6, "screen_auto_brightness_adj"

    #@a0
    const/4 v7, 0x0

    #@a1
    .line 703
    invoke-static {v5, v6, v7, v10}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    #@a4
    move-result v6

    #@a5
    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    #@a7
    .line 706
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    #@a9
    cmpl-float v6, v3, v6

    #@ab
    if-eqz v6, :cond_2

    #@ad
    .line 707
    const/high16 v6, 0x7fc00000    # NaNf

    #@af
    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    #@b1
    .line 711
    :cond_2
    const-string/jumbo v6, "screen_brightness_mode"

    #@b4
    .line 710
    invoke-static {v5, v6, v8, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@b7
    move-result v6

    #@b8
    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    #@ba
    .line 715
    const-string/jumbo v6, "low_power"

    #@bd
    .line 714
    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@c0
    move-result v6

    #@c1
    if-eqz v6, :cond_e

    #@c3
    const/4 v2, 0x1

    #@c4
    .line 717
    .local v2, "lowPowerModeEnabled":Z
    :goto_9
    const-string/jumbo v6, "low_power_trigger_level"

    #@c7
    .line 716
    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@ca
    move-result v6

    #@cb
    if-eqz v6, :cond_f

    #@cd
    const/4 v0, 0x1

    #@ce
    .line 718
    .local v0, "autoLowPowerModeConfigured":Z
    :goto_a
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    #@d0
    if-ne v2, v6, :cond_3

    #@d2
    .line 719
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    #@d4
    if-eq v0, v6, :cond_4

    #@d6
    .line 720
    :cond_3
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    #@d8
    .line 721
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    #@da
    .line 722
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateLowPowerModeLocked()V

    #@dd
    .line 725
    :cond_4
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@df
    or-int/lit8 v6, v6, 0x20

    #@e1
    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@e3
    .line 657
    return-void

    #@e4
    .end local v0    # "autoLowPowerModeConfigured":Z
    .end local v2    # "lowPowerModeEnabled":Z
    .end local v3    # "oldScreenAutoBrightnessAdjustmentSetting":F
    .end local v4    # "oldScreenBrightnessSetting":I
    :cond_5
    move v6, v8

    #@e5
    .line 662
    goto/16 :goto_0

    #@e7
    :cond_6
    move v6, v8

    #@e8
    .line 660
    goto/16 :goto_1

    #@ea
    :cond_7
    move v6, v8

    #@eb
    .line 666
    goto/16 :goto_2

    #@ed
    :cond_8
    move v6, v8

    #@ee
    .line 664
    goto/16 :goto_3

    #@f0
    :cond_9
    move v6, v8

    #@f1
    .line 670
    goto/16 :goto_4

    #@f3
    :cond_a
    move v6, v8

    #@f4
    .line 668
    goto/16 :goto_5

    #@f6
    :cond_b
    move v6, v8

    #@f7
    .line 680
    goto/16 :goto_6

    #@f9
    .line 684
    :cond_c
    const/4 v1, 0x0

    #@fa
    .restart local v1    # "doubleTapWakeEnabled":Z
    goto :goto_7

    #@fb
    :cond_d
    move v6, v8

    #@fc
    .line 689
    goto :goto_8

    #@fd
    .line 714
    .end local v1    # "doubleTapWakeEnabled":Z
    .restart local v3    # "oldScreenAutoBrightnessAdjustmentSetting":F
    .restart local v4    # "oldScreenBrightnessSetting":I
    :cond_e
    const/4 v2, 0x0

    #@fe
    .restart local v2    # "lowPowerModeEnabled":Z
    goto :goto_9

    #@ff
    .line 716
    :cond_f
    const/4 v0, 0x0

    #@100
    .restart local v0    # "autoLowPowerModeConfigured":Z
    goto :goto_a
.end method

.method private updateStayOnLocked(I)V
    .locals 3
    .param p1, "dirty"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1418
    and-int/lit16 v1, p1, 0x120

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 1419
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    #@7
    .line 1420
    .local v0, "wasStayOn":Z
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 1421
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_2

    #@11
    .line 1424
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    #@13
    .line 1427
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    #@15
    if-eq v1, v0, :cond_1

    #@17
    .line 1428
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@19
    or-int/lit16 v1, v1, 0x80

    #@1b
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@1d
    .line 1417
    .end local v0    # "wasStayOn":Z
    :cond_1
    return-void

    #@1e
    .line 1422
    .restart local v0    # "wasStayOn":Z
    :cond_2
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    #@20
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    #@22
    invoke-virtual {v1, v2}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    #@25
    move-result v1

    #@26
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    #@28
    goto :goto_0
.end method

.method private updateSuspendBlockerLocked()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 2100
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@4
    and-int/lit8 v4, v4, 0x1

    #@6
    if-eqz v4, :cond_8

    #@8
    const/4 v3, 0x1

    #@9
    .line 2101
    .local v3, "needWakeLockSuspendBlocker":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->needDisplaySuspendBlockerLocked()Z

    #@c
    move-result v2

    #@d
    .line 2102
    .local v2, "needDisplaySuspendBlocker":Z
    if-eqz v2, :cond_9

    #@f
    const/4 v0, 0x0

    #@10
    .line 2103
    .local v0, "autoSuspend":Z
    :goto_1
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@12
    invoke-virtual {v4}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    #@15
    move-result v1

    #@16
    .line 2108
    .local v1, "interactive":Z
    if-nez v0, :cond_0

    #@18
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    #@1a
    if-eqz v4, :cond_0

    #@1c
    .line 2109
    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    #@1f
    .line 2113
    :cond_0
    if-eqz v3, :cond_1

    #@21
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    #@23
    if-eqz v4, :cond_a

    #@25
    .line 2117
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    #@27
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    #@29
    if-eqz v4, :cond_b

    #@2b
    .line 2128
    :cond_2
    :goto_3
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    #@2d
    if-eqz v4, :cond_4

    #@2f
    .line 2133
    if-nez v1, :cond_3

    #@31
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    #@33
    if-eqz v4, :cond_4

    #@35
    .line 2134
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V

    #@38
    .line 2139
    :cond_4
    if-nez v3, :cond_5

    #@3a
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    #@3c
    if-eqz v4, :cond_5

    #@3e
    .line 2140
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    #@40
    invoke-interface {v4}, Lcom/android/server/power/SuspendBlocker;->release()V

    #@43
    .line 2141
    iput-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    #@45
    .line 2143
    :cond_5
    if-nez v2, :cond_6

    #@47
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    #@49
    if-eqz v4, :cond_6

    #@4b
    .line 2144
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    #@4d
    invoke-interface {v4}, Lcom/android/server/power/SuspendBlocker;->release()V

    #@50
    .line 2145
    iput-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    #@52
    .line 2149
    :cond_6
    if-eqz v0, :cond_7

    #@54
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    #@56
    if-eqz v4, :cond_7

    #@58
    .line 2150
    invoke-direct {p0, v6}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    #@5b
    .line 2099
    :cond_7
    return-void

    #@5c
    .line 2100
    .end local v0    # "autoSuspend":Z
    .end local v1    # "interactive":Z
    .end local v2    # "needDisplaySuspendBlocker":Z
    .end local v3    # "needWakeLockSuspendBlocker":Z
    :cond_8
    const/4 v3, 0x0

    #@5d
    .restart local v3    # "needWakeLockSuspendBlocker":Z
    goto :goto_0

    #@5e
    .line 2102
    .restart local v2    # "needDisplaySuspendBlocker":Z
    :cond_9
    const/4 v0, 0x1

    #@5f
    .restart local v0    # "autoSuspend":Z
    goto :goto_1

    #@60
    .line 2114
    .restart local v1    # "interactive":Z
    :cond_a
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    #@62
    invoke-interface {v4}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    #@65
    .line 2115
    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    #@67
    goto :goto_2

    #@68
    .line 2118
    :cond_b
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    #@6a
    invoke-interface {v4}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    #@6d
    .line 2119
    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    #@6f
    goto :goto_3
.end method

.method private updateUserActivitySummaryLocked(JI)V
    .locals 13
    .param p1, "now"    # J
    .param p3, "dirty"    # I

    #@0
    .prologue
    .line 1517
    and-int/lit8 v8, p3, 0x27

    #@2
    if-eqz v8, :cond_4

    #@4
    .line 1519
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@6
    const/4 v9, 0x1

    #@7
    invoke-virtual {v8, v9}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    #@a
    .line 1521
    const-wide/16 v4, 0x0

    #@c
    .line 1522
    .local v4, "nextTimeout":J
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@e
    const/4 v9, 0x1

    #@f
    if-eq v8, v9, :cond_0

    #@11
    .line 1523
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@13
    const/4 v9, 0x2

    #@14
    if-ne v8, v9, :cond_5

    #@16
    .line 1525
    :cond_0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getSleepTimeoutLocked()I

    #@19
    move-result v7

    #@1a
    .line 1526
    .local v7, "sleepTimeout":I
    invoke-direct {p0, v7}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(I)I

    #@1d
    move-result v6

    #@1e
    .line 1527
    .local v6, "screenOffTimeout":I
    invoke-direct {p0, v6}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(I)I

    #@21
    move-result v3

    #@22
    .line 1529
    .local v3, "screenDimDuration":I
    const/4 v8, 0x0

    #@23
    iput v8, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    #@25
    .line 1530
    iget-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    #@27
    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    #@29
    cmp-long v8, v8, v10

    #@2b
    if-ltz v8, :cond_1

    #@2d
    .line 1531
    iget-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    #@2f
    .line 1532
    int-to-long v10, v6

    #@30
    .line 1531
    add-long/2addr v8, v10

    #@31
    .line 1532
    int-to-long v10, v3

    #@32
    .line 1531
    sub-long v4, v8, v10

    #@34
    .line 1533
    cmp-long v8, p1, v4

    #@36
    if-gez v8, :cond_6

    #@38
    .line 1534
    const/4 v8, 0x1

    #@39
    iput v8, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    #@3b
    .line 1542
    :cond_1
    :goto_0
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    #@3d
    if-nez v8, :cond_2

    #@3f
    .line 1543
    iget-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    #@41
    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    #@43
    cmp-long v8, v8, v10

    #@45
    if-ltz v8, :cond_2

    #@47
    .line 1544
    iget-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    #@49
    int-to-long v10, v6

    #@4a
    add-long v4, v8, v10

    #@4c
    .line 1545
    cmp-long v8, p1, v4

    #@4e
    if-gez v8, :cond_2

    #@50
    .line 1546
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@52
    iget v8, v8, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    #@54
    const/4 v9, 0x3

    #@55
    if-ne v8, v9, :cond_7

    #@57
    .line 1547
    const/4 v8, 0x1

    #@58
    iput v8, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    #@5a
    .line 1553
    :cond_2
    :goto_1
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    #@5c
    if-nez v8, :cond_3

    #@5e
    .line 1554
    if-ltz v7, :cond_8

    #@60
    .line 1555
    iget-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    #@62
    .line 1556
    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    #@64
    .line 1555
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    #@67
    move-result-wide v0

    #@68
    .line 1557
    .local v0, "anyUserActivity":J
    iget-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    #@6a
    cmp-long v8, v0, v8

    #@6c
    if-ltz v8, :cond_3

    #@6e
    .line 1558
    int-to-long v8, v7

    #@6f
    add-long v4, v0, v8

    #@71
    .line 1559
    cmp-long v8, p1, v4

    #@73
    if-gez v8, :cond_3

    #@75
    .line 1560
    const/4 v8, 0x4

    #@76
    iput v8, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    #@78
    .line 1568
    .end local v0    # "anyUserActivity":J
    :cond_3
    :goto_2
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    #@7a
    if-eqz v8, :cond_4

    #@7c
    const-wide/16 v8, 0x0

    #@7e
    cmp-long v8, v4, v8

    #@80
    if-ltz v8, :cond_4

    #@82
    .line 1569
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@84
    const/4 v9, 0x1

    #@85
    invoke-virtual {v8, v9}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    #@88
    move-result-object v2

    #@89
    .line 1570
    .local v2, "msg":Landroid/os/Message;
    const/4 v8, 0x1

    #@8a
    invoke-virtual {v2, v8}, Landroid/os/Message;->setAsynchronous(Z)V

    #@8d
    .line 1571
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@8f
    invoke-virtual {v8, v2, v4, v5}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    #@92
    .line 1515
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "screenDimDuration":I
    .end local v4    # "nextTimeout":J
    .end local v6    # "screenOffTimeout":I
    .end local v7    # "sleepTimeout":I
    :cond_4
    :goto_3
    return-void

    #@93
    .line 1524
    .restart local v4    # "nextTimeout":J
    :cond_5
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@95
    const/4 v9, 0x3

    #@96
    if-eq v8, v9, :cond_0

    #@98
    .line 1574
    const/4 v8, 0x0

    #@99
    iput v8, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    #@9b
    goto :goto_3

    #@9c
    .line 1536
    .restart local v3    # "screenDimDuration":I
    .restart local v6    # "screenOffTimeout":I
    .restart local v7    # "sleepTimeout":I
    :cond_6
    iget-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    #@9e
    int-to-long v10, v6

    #@9f
    add-long v4, v8, v10

    #@a1
    .line 1537
    cmp-long v8, p1, v4

    #@a3
    if-gez v8, :cond_1

    #@a5
    .line 1538
    const/4 v8, 0x2

    #@a6
    iput v8, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    #@a8
    goto :goto_0

    #@a9
    .line 1548
    :cond_7
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@ab
    iget v8, v8, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    #@ad
    const/4 v9, 0x2

    #@ae
    if-ne v8, v9, :cond_2

    #@b0
    .line 1549
    const/4 v8, 0x2

    #@b1
    iput v8, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    #@b3
    goto :goto_1

    #@b4
    .line 1564
    :cond_8
    const/4 v8, 0x4

    #@b5
    iput v8, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    #@b7
    .line 1565
    const-wide/16 v4, -0x1

    #@b9
    goto :goto_2
.end method

.method private updateWakeLockDisabledStatesLocked()V
    .locals 6

    #@0
    .prologue
    .line 2377
    const/4 v0, 0x0

    #@1
    .line 2378
    .local v0, "changed":Z
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v2

    #@7
    .line 2379
    .local v2, "numWakeLocks":I
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    #@a
    .line 2380
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    #@12
    .line 2381
    .local v3, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v4, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    #@14
    const v5, 0xffff

    #@17
    and-int/2addr v4, v5

    #@18
    .line 2382
    const/4 v5, 0x1

    #@19
    .line 2381
    if-ne v4, v5, :cond_0

    #@1b
    .line 2383
    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    #@1e
    move-result v4

    #@1f
    if-eqz v4, :cond_0

    #@21
    .line 2384
    const/4 v0, 0x1

    #@22
    .line 2385
    iget-boolean v4, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    #@24
    if-eqz v4, :cond_1

    #@26
    .line 2387
    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    #@29
    .line 2379
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 2389
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    #@2f
    goto :goto_1

    #@30
    .line 2394
    .end local v3    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_2
    if-eqz v0, :cond_3

    #@32
    .line 2395
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@34
    or-int/lit8 v4, v4, 0x1

    #@36
    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@38
    .line 2396
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    #@3b
    .line 2376
    :cond_3
    return-void
.end method

.method private updateWakeLockSummaryLocked(I)V
    .locals 5
    .param p1, "dirty"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1441
    and-int/lit8 v3, p1, 0x3

    #@3
    if-eqz v3, :cond_6

    #@5
    .line 1442
    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@7
    .line 1444
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v1

    #@d
    .line 1445
    .local v1, "numWakeLocks":I
    const/4 v0, 0x0

    #@e
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@10
    .line 1446
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    #@18
    .line 1447
    .local v2, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    #@1a
    const v4, 0xffff

    #@1d
    and-int/2addr v3, v4

    #@1e
    sparse-switch v3, :sswitch_data_0

    #@21
    .line 1445
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 1449
    :sswitch_0
    iget-boolean v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    #@26
    if-nez v3, :cond_0

    #@28
    .line 1451
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@2a
    or-int/lit8 v3, v3, 0x1

    #@2c
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@2e
    goto :goto_1

    #@2f
    .line 1455
    :sswitch_1
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@31
    or-int/lit8 v3, v3, 0xa

    #@33
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@35
    goto :goto_1

    #@36
    .line 1458
    :sswitch_2
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@38
    or-int/lit8 v3, v3, 0x2

    #@3a
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@3c
    goto :goto_1

    #@3d
    .line 1461
    :sswitch_3
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@3f
    or-int/lit8 v3, v3, 0x4

    #@41
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@43
    goto :goto_1

    #@44
    .line 1464
    :sswitch_4
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@46
    or-int/lit8 v3, v3, 0x10

    #@48
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@4a
    goto :goto_1

    #@4b
    .line 1467
    :sswitch_5
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@4d
    or-int/lit8 v3, v3, 0x40

    #@4f
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@51
    goto :goto_1

    #@52
    .line 1470
    :sswitch_6
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@54
    or-int/lit16 v3, v3, 0x80

    #@56
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@58
    goto :goto_1

    #@59
    .line 1476
    .end local v2    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_1
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@5b
    const/4 v4, 0x3

    #@5c
    if-eq v3, v4, :cond_2

    #@5e
    .line 1477
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@60
    and-int/lit16 v3, v3, -0xc1

    #@62
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@64
    .line 1479
    :cond_2
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@66
    if-eqz v3, :cond_3

    #@68
    .line 1480
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@6a
    and-int/lit8 v3, v3, 0x40

    #@6c
    if-eqz v3, :cond_4

    #@6e
    .line 1481
    :cond_3
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@70
    and-int/lit8 v3, v3, -0xf

    #@72
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@74
    .line 1483
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@76
    if-nez v3, :cond_4

    #@78
    .line 1484
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@7a
    and-int/lit8 v3, v3, -0x11

    #@7c
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@7e
    .line 1489
    :cond_4
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@80
    and-int/lit8 v3, v3, 0x6

    #@82
    if-eqz v3, :cond_5

    #@84
    .line 1490
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@86
    const/4 v4, 0x1

    #@87
    if-ne v3, v4, :cond_7

    #@89
    .line 1491
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@8b
    or-int/lit8 v3, v3, 0x21

    #@8d
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@8f
    .line 1496
    :cond_5
    :goto_2
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@91
    and-int/lit16 v3, v3, 0x80

    #@93
    if-eqz v3, :cond_6

    #@95
    .line 1497
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@97
    or-int/lit8 v3, v3, 0x1

    #@99
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@9b
    .line 1440
    .end local v0    # "i":I
    .end local v1    # "numWakeLocks":I
    :cond_6
    return-void

    #@9c
    .line 1492
    .restart local v0    # "i":I
    .restart local v1    # "numWakeLocks":I
    :cond_7
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@9e
    const/4 v4, 0x2

    #@9f
    if-ne v3, v4, :cond_5

    #@a1
    .line 1493
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@a3
    or-int/lit8 v3, v3, 0x1

    #@a5
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@a7
    goto :goto_2

    #@a8
    .line 1447
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_3
        0xa -> :sswitch_2
        0x1a -> :sswitch_1
        0x20 -> :sswitch_4
        0x40 -> :sswitch_5
        0x80 -> :sswitch_6
    .end sparse-switch
.end method

.method private updateWakeLockWorkSourceInternal(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V
    .locals 11
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "ws"    # Landroid/os/WorkSource;
    .param p3, "historyTag"    # Ljava/lang/String;
    .param p4, "callingUid"    # I

    #@0
    .prologue
    .line 912
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v10

    #@3
    .line 913
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    #@6
    move-result v9

    #@7
    .line 914
    .local v9, "index":I
    if-gez v9, :cond_0

    #@9
    .line 919
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "Wake lock not active: "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    .line 920
    const-string/jumbo v3, " from uid "

    #@1e
    .line 919
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    .line 912
    .end local v9    # "index":I
    :catchall_0
    move-exception v0

    #@2f
    monitor-exit v10

    #@30
    throw v0

    #@31
    .line 923
    .restart local v9    # "index":I
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    #@33
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@36
    move-result-object v1

    #@37
    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    #@39
    .line 929
    .local v1, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    invoke-virtual {v1, p2}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameWorkSource(Landroid/os/WorkSource;)Z

    #@3c
    move-result v0

    #@3d
    if-nez v0, :cond_1

    #@3f
    .line 930
    iget v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    #@41
    iget-object v3, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    #@43
    .line 931
    iget-object v4, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    #@45
    iget v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    #@47
    iget v6, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    #@49
    move-object v0, p0

    #@4a
    move-object v7, p2

    #@4b
    move-object v8, p3

    #@4c
    .line 930
    invoke-direct/range {v0 .. v8}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    #@4f
    .line 933
    iput-object p3, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    #@51
    .line 934
    invoke-virtual {v1, p2}, Lcom/android/server/power/PowerManagerService$WakeLock;->updateWorkSource(Landroid/os/WorkSource;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@54
    :cond_1
    monitor-exit v10

    #@55
    .line 911
    return-void
.end method

.method private updateWakefulnessLocked(I)Z
    .locals 7
    .param p1, "dirty"    # I

    #@0
    .prologue
    const/16 v6, 0x3e8

    #@2
    const/4 v5, 0x0

    #@3
    .line 1642
    const/4 v0, 0x0

    #@4
    .line 1643
    .local v0, "changed":Z
    and-int/lit16 v1, p1, 0x697

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1646
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@a
    const/4 v4, 0x1

    #@b
    if-ne v1, v4, :cond_0

    #@d
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isItBedTimeYetLocked()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 1650
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@16
    move-result-wide v2

    #@17
    .line 1651
    .local v2, "time":J
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->shouldNapAtBedTimeLocked()Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_1

    #@1d
    .line 1652
    invoke-direct {p0, v2, v3, v6}, Lcom/android/server/power/PowerManagerService;->napNoUpdateLocked(JI)Z

    #@20
    move-result v0

    #@21
    .line 1659
    .end local v0    # "changed":Z
    .end local v2    # "time":J
    :cond_0
    :goto_0
    return v0

    #@22
    .line 1655
    .restart local v0    # "changed":Z
    .restart local v2    # "time":J
    :cond_1
    const/4 v4, 0x2

    #@23
    move-object v1, p0

    #@24
    .line 1654
    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z

    #@27
    move-result v0

    #@28
    .local v0, "changed":Z
    goto :goto_0
.end method

.method private userActivityFromNative(JII)V
    .locals 7
    .param p1, "eventTime"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I

    #@0
    .prologue
    .line 999
    const/16 v6, 0x3e8

    #@2
    move-object v1, p0

    #@3
    move-wide v2, p1

    #@4
    move v4, p3

    #@5
    move v5, p4

    #@6
    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityInternal(JIII)V

    #@9
    .line 998
    return-void
.end method

.method private userActivityInternal(JIII)V
    .locals 3
    .param p1, "eventTime"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I
    .param p5, "uid"    # I

    #@0
    .prologue
    .line 1003
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1004
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1005
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v1

    #@d
    .line 1002
    return-void

    #@e
    .line 1003
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method private userActivityNoUpdateLocked(JIII)Z
    .locals 7
    .param p1, "eventTime"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I
    .param p5, "uid"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const-wide/32 v4, 0x20000

    #@4
    const/4 v2, 0x0

    #@5
    .line 1017
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    #@7
    cmp-long v0, p1, v0

    #@9
    if-ltz v0, :cond_0

    #@b
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    #@d
    cmp-long v0, p1, v0

    #@f
    if-gez v0, :cond_1

    #@11
    .line 1019
    :cond_0
    return v2

    #@12
    .line 1018
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    #@14
    if-eqz v0, :cond_0

    #@16
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    #@18
    if-eqz v0, :cond_0

    #@1a
    .line 1022
    const-string/jumbo v0, "userActivity"

    #@1d
    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@20
    .line 1024
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    #@22
    cmp-long v0, p1, v0

    #@24
    if-lez v0, :cond_2

    #@26
    .line 1025
    const/4 v0, 0x2

    #@27
    const/4 v1, 0x0

    #@28
    invoke-direct {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->powerHintInternal(II)V

    #@2b
    .line 1026
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    #@2d
    .line 1029
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    #@2f
    invoke-virtual {v0, p3, p5}, Lcom/android/server/power/Notifier;->onUserActivity(II)V

    #@32
    .line 1031
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@34
    if-eqz v0, :cond_3

    #@36
    .line 1032
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    const/4 v1, 0x3

    #@39
    if-ne v0, v1, :cond_4

    #@3b
    .line 1052
    :cond_3
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@3e
    .line 1034
    return v2

    #@3f
    .line 1033
    :cond_4
    and-int/lit8 v0, p4, 0x2

    #@41
    if-nez v0, :cond_3

    #@43
    .line 1037
    and-int/lit8 v0, p4, 0x1

    #@45
    if-eqz v0, :cond_5

    #@47
    .line 1038
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    #@49
    cmp-long v0, p1, v0

    #@4b
    if-lez v0, :cond_6

    #@4d
    .line 1039
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    #@4f
    cmp-long v0, p1, v0

    #@51
    if-lez v0, :cond_6

    #@53
    .line 1040
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    #@55
    .line 1041
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@57
    or-int/lit8 v0, v0, 0x4

    #@59
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5b
    .line 1052
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@5e
    .line 1042
    return v3

    #@5f
    .line 1045
    :cond_5
    :try_start_2
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    #@61
    cmp-long v0, p1, v0

    #@63
    if-lez v0, :cond_6

    #@65
    .line 1046
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    #@67
    .line 1047
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@69
    or-int/lit8 v0, v0, 0x4

    #@6b
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@6d
    .line 1052
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@70
    .line 1048
    return v3

    #@71
    .line 1052
    :cond_6
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@74
    .line 1054
    return v2

    #@75
    .line 1051
    :catchall_0
    move-exception v0

    #@76
    .line 1052
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@79
    .line 1051
    throw v0
.end method

.method private wakeUpInternal(JLjava/lang/String;ILjava/lang/String;I)V
    .locals 3
    .param p1, "eventTime"    # J
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "opPackageName"    # Ljava/lang/String;
    .param p6, "opUid"    # I

    #@0
    .prologue
    .line 1059
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1060
    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1061
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v1

    #@d
    .line 1058
    return-void

    #@e
    .line 1059
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method private wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z
    .locals 7
    .param p1, "eventTime"    # J
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "reasonUid"    # I
    .param p5, "opPackageName"    # Ljava/lang/String;
    .param p6, "opUid"    # I

    #@0
    .prologue
    .line 1072
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    #@2
    cmp-long v0, p1, v0

    #@4
    if-ltz v0, :cond_0

    #@6
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@8
    const/4 v1, 0x1

    #@9
    if-ne v0, v1, :cond_1

    #@b
    .line 1074
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0

    #@d
    .line 1073
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    #@f
    if-eqz v0, :cond_0

    #@11
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 1077
    const-string/jumbo v0, "wakeUp"

    #@18
    const-wide/32 v2, 0x20000

    #@1b
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@1e
    .line 1079
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@20
    packed-switch v0, :pswitch_data_0

    #@23
    .line 1091
    :goto_0
    :pswitch_0
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    #@25
    .line 1092
    const/4 v0, 0x1

    #@26
    const/4 v1, 0x0

    #@27
    invoke-direct {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(II)V

    #@2a
    .line 1094
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    #@2c
    invoke-virtual {v0, p3, p4, p5, p6}, Lcom/android/server/power/Notifier;->onWakeUp(Ljava/lang/String;ILjava/lang/String;I)V

    #@2f
    .line 1096
    const/4 v4, 0x0

    #@30
    const/4 v5, 0x0

    #@31
    move-object v1, p0

    #@32
    move-wide v2, p1

    #@33
    move v6, p4

    #@34
    .line 1095
    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    .line 1098
    const-wide/32 v0, 0x20000

    #@3a
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@3d
    .line 1100
    const/4 v0, 0x1

    #@3e
    return v0

    #@3f
    .line 1081
    :pswitch_1
    :try_start_1
    const-string/jumbo v0, "PowerManagerService"

    #@42
    new-instance v1, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v2, "Waking up from sleep (uid "

    #@4a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@51
    move-result-object v1

    #@52
    const-string/jumbo v2, ")..."

    #@55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v1

    #@59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v1

    #@5d
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@60
    goto :goto_0

    #@61
    .line 1097
    :catchall_0
    move-exception v0

    #@62
    .line 1098
    const-wide/32 v2, 0x20000

    #@65
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@68
    .line 1097
    throw v0

    #@69
    .line 1084
    :pswitch_2
    :try_start_2
    const-string/jumbo v0, "PowerManagerService"

    #@6c
    new-instance v1, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    const-string/jumbo v2, "Waking up from dream (uid "

    #@74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v1

    #@78
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v1

    #@7c
    const-string/jumbo v2, ")..."

    #@7f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v1

    #@83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v1

    #@87
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@8a
    goto :goto_0

    #@8b
    .line 1087
    :pswitch_3
    const-string/jumbo v0, "PowerManagerService"

    #@8e
    new-instance v1, Ljava/lang/StringBuilder;

    #@90
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@93
    const-string/jumbo v2, "Waking up from dozing (uid "

    #@96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v1

    #@9a
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v1

    #@9e
    const-string/jumbo v2, ")..."

    #@a1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v1

    #@a5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a8
    move-result-object v1

    #@a9
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@ac
    goto/16 :goto_0

    #@ae
    .line 1079
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public monitor()V
    .locals 1

    #@0
    .prologue
    .line 2585
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    monitor-exit v0

    #@4
    .line 2583
    return-void
.end method

.method public onBootPhase(I)V
    .locals 8
    .param p1, "phase"    # I

    #@0
    .prologue
    const/16 v0, 0x3e8

    #@2
    .line 501
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v7

    #@5
    .line 502
    if-ne p1, v0, :cond_0

    #@7
    .line 503
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@a
    move-result-wide v2

    #@b
    .line 504
    .local v2, "now":J
    const/4 v0, 0x1

    #@c
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    #@e
    .line 505
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@10
    or-int/lit8 v0, v0, 0x10

    #@12
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@14
    .line 507
    const/4 v4, 0x0

    #@15
    const/4 v5, 0x0

    #@16
    const/16 v6, 0x3e8

    #@18
    move-object v1, p0

    #@19
    .line 506
    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    #@1c
    .line 508
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .end local v2    # "now":J
    :cond_0
    monitor-exit v7

    #@20
    .line 500
    return-void

    #@21
    .line 501
    :catchall_0
    move-exception v0

    #@22
    monitor-exit v7

    #@23
    throw v0
.end method

.method public onStart()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 492
    const-string/jumbo v0, "power"

    #@4
    new-instance v1, Lcom/android/server/power/PowerManagerService$BinderService;

    #@6
    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$BinderService;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$BinderService;)V

    #@9
    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@c
    .line 493
    const-class v0, Landroid/os/PowerManagerInternal;

    #@e
    new-instance v1, Lcom/android/server/power/PowerManagerService$LocalService;

    #@10
    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$LocalService;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$LocalService;)V

    #@13
    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    #@16
    .line 495
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    #@1d
    .line 496
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    #@20
    move-result-object v0

    #@21
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@23
    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;)V

    #@26
    .line 491
    return-void
.end method

.method setDeviceIdleModeInternal(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 2327
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2328
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    #@5
    if-eq v0, p1, :cond_0

    #@7
    .line 2329
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    #@9
    .line 2330
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    #@c
    .line 2331
    if-eqz p1, :cond_1

    #@e
    .line 2332
    const-string/jumbo v0, "power"

    #@11
    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnPhase(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    :cond_0
    :goto_0
    monitor-exit v1

    #@15
    .line 2326
    return-void

    #@16
    .line 2334
    :cond_1
    :try_start_1
    const-string/jumbo v0, "power"

    #@19
    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffPhase(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    goto :goto_0

    #@1d
    .line 2327
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit v1

    #@1f
    throw v0
.end method

.method setDeviceIdleTempWhitelistInternal([I)V
    .locals 2
    .param p1, "appids"    # [I

    #@0
    .prologue
    .line 2350
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2351
    :try_start_0
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    #@5
    .line 2352
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2353
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v1

    #@d
    .line 2349
    return-void

    #@e
    .line 2350
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method setDeviceIdleWhitelistInternal([I)V
    .locals 2
    .param p1, "appids"    # [I

    #@0
    .prologue
    .line 2341
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2342
    :try_start_0
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    #@5
    .line 2343
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2344
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v1

    #@d
    .line 2340
    return-void

    #@e
    .line 2341
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method setMaximumScreenOffTimeoutFromDeviceAdminInternal(I)V
    .locals 2
    .param p1, "timeMs"    # I

    #@0
    .prologue
    .line 2319
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2320
    :try_start_0
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    #@5
    .line 2321
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@7
    or-int/lit8 v0, v0, 0x20

    #@9
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@b
    .line 2322
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit v1

    #@f
    .line 2318
    return-void

    #@10
    .line 2319
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method

.method setStayOnSettingInternal(I)V
    .locals 2
    .param p1, "val"    # I

    #@0
    .prologue
    .line 2314
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    .line 2315
    const-string/jumbo v1, "stay_on_while_plugged_in"

    #@9
    .line 2314
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@c
    .line 2313
    return-void
.end method

.method public systemReady(Lcom/android/internal/app/IAppOpsService;)V
    .locals 12
    .param p1, "appOps"    # Lcom/android/internal/app/IAppOpsService;

    #@0
    .prologue
    .line 514
    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v11

    #@3
    .line 515
    const/4 v0, 0x1

    #@4
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    #@6
    .line 516
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    #@8
    .line 517
    const-class v0, Landroid/service/dreams/DreamManagerInternal;

    #@a
    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/service/dreams/DreamManagerInternal;

    #@10
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    #@12
    .line 518
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    #@14
    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    #@1a
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    #@1c
    .line 519
    const-class v0, Landroid/view/WindowManagerPolicy;

    #@1e
    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Landroid/view/WindowManagerPolicy;

    #@24
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@26
    .line 520
    const-class v0, Landroid/os/BatteryManagerInternal;

    #@28
    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Landroid/os/BatteryManagerInternal;

    #@2e
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    #@30
    .line 522
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    #@32
    const-string/jumbo v1, "power"

    #@35
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@38
    move-result-object v8

    #@39
    check-cast v8, Landroid/os/PowerManager;

    #@3b
    .line 523
    .local v8, "pm":Landroid/os/PowerManager;
    invoke-virtual {v8}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    #@3e
    move-result v0

    #@3f
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    #@41
    .line 524
    invoke-virtual {v8}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    #@44
    move-result v0

    #@45
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    #@47
    .line 525
    invoke-virtual {v8}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    #@4a
    move-result v0

    #@4b
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    #@4d
    .line 527
    new-instance v10, Landroid/hardware/SystemSensorManager;

    #@4f
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    #@51
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@53
    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->getLooper()Landroid/os/Looper;

    #@56
    move-result-object v1

    #@57
    invoke-direct {v10, v0, v1}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    #@5a
    .line 531
    .local v10, "sensorManager":Landroid/hardware/SensorManager;
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    #@5d
    move-result-object v0

    #@5e
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@60
    .line 532
    new-instance v0, Lcom/android/server/power/Notifier;

    #@62
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@65
    move-result-object v1

    #@66
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    #@68
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@6a
    .line 533
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    #@6c
    const-string/jumbo v5, "PowerManagerService.Broadcasts"

    #@6f
    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    #@72
    move-result-object v5

    #@73
    .line 534
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@75
    .line 532
    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/Notifier;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/internal/app/IAppOpsService;Lcom/android/server/power/SuspendBlocker;Landroid/view/WindowManagerPolicy;)V

    #@78
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    #@7a
    .line 536
    new-instance v0, Lcom/android/server/power/WirelessChargerDetector;

    #@7c
    .line 537
    const-string/jumbo v1, "PowerManagerService.WirelessChargerDetector"

    #@7f
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    #@82
    move-result-object v1

    #@83
    .line 538
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@85
    .line 536
    invoke-direct {v0, v10, v1, v2}, Lcom/android/server/power/WirelessChargerDetector;-><init>(Landroid/hardware/SensorManager;Lcom/android/server/power/SuspendBlocker;Landroid/os/Handler;)V

    #@88
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    #@8a
    .line 539
    new-instance v0, Lcom/android/server/power/PowerManagerService$SettingsObserver;

    #@8c
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@8e
    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerService$SettingsObserver;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Handler;)V

    #@91
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    #@93
    .line 541
    const-class v0, Lcom/android/server/lights/LightsManager;

    #@95
    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    #@98
    move-result-object v0

    #@99
    check-cast v0, Lcom/android/server/lights/LightsManager;

    #@9b
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLightsManager:Lcom/android/server/lights/LightsManager;

    #@9d
    .line 542
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLightsManager:Lcom/android/server/lights/LightsManager;

    #@9f
    const/4 v1, 0x5

    #@a0
    invoke-virtual {v0, v1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    #@a3
    move-result-object v0

    #@a4
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mAttentionLight:Lcom/android/server/lights/Light;

    #@a6
    .line 545
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    #@a8
    .line 546
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    #@aa
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@ac
    .line 545
    invoke-virtual {v0, v1, v2, v10}, Landroid/hardware/display/DisplayManagerInternal;->initPowerManagement(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;)V

    #@af
    .line 549
    new-instance v7, Landroid/content/IntentFilter;

    #@b1
    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    #@b4
    .line 550
    .local v7, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.BATTERY_CHANGED"

    #@b7
    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@ba
    .line 551
    const/16 v0, 0x3e8

    #@bc
    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    #@bf
    .line 552
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    #@c1
    new-instance v1, Lcom/android/server/power/PowerManagerService$BatteryReceiver;

    #@c3
    const/4 v2, 0x0

    #@c4
    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$BatteryReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$BatteryReceiver;)V

    #@c7
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@c9
    const/4 v3, 0x0

    #@ca
    invoke-virtual {v0, v1, v7, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@cd
    .line 554
    new-instance v7, Landroid/content/IntentFilter;

    #@cf
    .end local v7    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    #@d2
    .line 555
    .restart local v7    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.DREAMING_STARTED"

    #@d5
    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@d8
    .line 556
    const-string/jumbo v0, "android.intent.action.DREAMING_STOPPED"

    #@db
    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@de
    .line 557
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    #@e0
    new-instance v1, Lcom/android/server/power/PowerManagerService$DreamReceiver;

    #@e2
    const/4 v2, 0x0

    #@e3
    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$DreamReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$DreamReceiver;)V

    #@e6
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@e8
    const/4 v3, 0x0

    #@e9
    invoke-virtual {v0, v1, v7, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@ec
    .line 559
    new-instance v7, Landroid/content/IntentFilter;

    #@ee
    .end local v7    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    #@f1
    .line 560
    .restart local v7    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    #@f4
    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@f7
    .line 561
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    #@f9
    new-instance v1, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;

    #@fb
    const/4 v2, 0x0

    #@fc
    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;)V

    #@ff
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@101
    const/4 v3, 0x0

    #@102
    invoke-virtual {v0, v1, v7, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@105
    .line 563
    new-instance v7, Landroid/content/IntentFilter;

    #@107
    .end local v7    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    #@10a
    .line 564
    .restart local v7    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.DOCK_EVENT"

    #@10d
    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@110
    .line 565
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    #@112
    new-instance v1, Lcom/android/server/power/PowerManagerService$DockReceiver;

    #@114
    const/4 v2, 0x0

    #@115
    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$DockReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$DockReceiver;)V

    #@118
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@11a
    const/4 v3, 0x0

    #@11b
    invoke-virtual {v0, v1, v7, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@11e
    .line 568
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    #@120
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@123
    move-result-object v9

    #@124
    .line 570
    .local v9, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v0, "screensaver_enabled"

    #@127
    .line 569
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@12a
    move-result-object v0

    #@12b
    .line 571
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    #@12d
    const/4 v2, 0x0

    #@12e
    const/4 v3, -0x1

    #@12f
    .line 569
    invoke-virtual {v9, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@132
    .line 573
    const-string/jumbo v0, "screensaver_activate_on_sleep"

    #@135
    .line 572
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@138
    move-result-object v0

    #@139
    .line 574
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    #@13b
    const/4 v2, 0x0

    #@13c
    const/4 v3, -0x1

    #@13d
    .line 572
    invoke-virtual {v9, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@140
    .line 576
    const-string/jumbo v0, "screensaver_activate_on_dock"

    #@143
    .line 575
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@146
    move-result-object v0

    #@147
    .line 577
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    #@149
    const/4 v2, 0x0

    #@14a
    const/4 v3, -0x1

    #@14b
    .line 575
    invoke-virtual {v9, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@14e
    .line 579
    const-string/jumbo v0, "screen_off_timeout"

    #@151
    .line 578
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@154
    move-result-object v0

    #@155
    .line 580
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    #@157
    const/4 v2, 0x0

    #@158
    const/4 v3, -0x1

    #@159
    .line 578
    invoke-virtual {v9, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@15c
    .line 582
    const-string/jumbo v0, "sleep_timeout"

    #@15f
    .line 581
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@162
    move-result-object v0

    #@163
    .line 583
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    #@165
    const/4 v2, 0x0

    #@166
    const/4 v3, -0x1

    #@167
    .line 581
    invoke-virtual {v9, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@16a
    .line 585
    const-string/jumbo v0, "stay_on_while_plugged_in"

    #@16d
    .line 584
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@170
    move-result-object v0

    #@171
    .line 586
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    #@173
    const/4 v2, 0x0

    #@174
    const/4 v3, -0x1

    #@175
    .line 584
    invoke-virtual {v9, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@178
    .line 588
    const-string/jumbo v0, "screen_brightness"

    #@17b
    .line 587
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@17e
    move-result-object v0

    #@17f
    .line 589
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    #@181
    const/4 v2, 0x0

    #@182
    const/4 v3, -0x1

    #@183
    .line 587
    invoke-virtual {v9, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@186
    .line 591
    const-string/jumbo v0, "screen_brightness_mode"

    #@189
    .line 590
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@18c
    move-result-object v0

    #@18d
    .line 592
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    #@18f
    const/4 v2, 0x0

    #@190
    const/4 v3, -0x1

    #@191
    .line 590
    invoke-virtual {v9, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@194
    .line 594
    const-string/jumbo v0, "screen_auto_brightness_adj"

    #@197
    .line 593
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@19a
    move-result-object v0

    #@19b
    .line 595
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    #@19d
    const/4 v2, 0x0

    #@19e
    const/4 v3, -0x1

    #@19f
    .line 593
    invoke-virtual {v9, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@1a2
    .line 597
    const-string/jumbo v0, "low_power"

    #@1a5
    .line 596
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@1a8
    move-result-object v0

    #@1a9
    .line 598
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    #@1ab
    const/4 v2, 0x0

    #@1ac
    const/4 v3, -0x1

    #@1ad
    .line 596
    invoke-virtual {v9, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@1b0
    .line 600
    const-string/jumbo v0, "low_power_trigger_level"

    #@1b3
    .line 599
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@1b6
    move-result-object v0

    #@1b7
    .line 601
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    #@1b9
    const/4 v2, 0x0

    #@1ba
    const/4 v3, -0x1

    #@1bb
    .line 599
    invoke-virtual {v9, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@1be
    .line 603
    const-string/jumbo v0, "theater_mode_on"

    #@1c1
    .line 602
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@1c4
    move-result-object v0

    #@1c5
    .line 604
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    #@1c7
    const/4 v2, 0x0

    #@1c8
    const/4 v3, -0x1

    #@1c9
    .line 602
    invoke-virtual {v9, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@1cc
    .line 606
    const-string/jumbo v0, "double_tap_to_wake"

    #@1cf
    .line 605
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@1d2
    move-result-object v0

    #@1d3
    .line 607
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    #@1d5
    const/4 v2, 0x0

    #@1d6
    const/4 v3, -0x1

    #@1d7
    .line 605
    invoke-virtual {v9, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@1da
    .line 609
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->readConfigurationLocked()V

    #@1dd
    .line 610
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSettingsLocked()V

    #@1e0
    .line 611
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@1e2
    or-int/lit16 v0, v0, 0x100

    #@1e4
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@1e6
    .line 612
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e9
    monitor-exit v11

    #@1ea
    .line 513
    return-void

    #@1eb
    .line 514
    .end local v7    # "filter":Landroid/content/IntentFilter;
    .end local v8    # "pm":Landroid/os/PowerManager;
    .end local v9    # "resolver":Landroid/content/ContentResolver;
    .end local v10    # "sensorManager":Landroid/hardware/SensorManager;
    :catchall_0
    move-exception v0

    #@1ec
    monitor-exit v11

    #@1ed
    throw v0
.end method

.method uidGoneInternal(I)V
    .locals 2
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 2368
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2369
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@5
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    #@8
    .line 2370
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 2371
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    :cond_0
    monitor-exit v1

    #@10
    .line 2367
    return-void

    #@11
    .line 2368
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
    throw v0
.end method

.method updateLowPowerModeLocked()V
    .locals 5

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 729
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    #@3
    if-eqz v3, :cond_0

    #@5
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    #@7
    if-eqz v3, :cond_0

    #@9
    .line 734
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    #@b
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@e
    move-result-object v3

    #@f
    .line 735
    const-string/jumbo v4, "low_power"

    #@12
    .line 734
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@15
    .line 736
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    #@17
    .line 738
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    #@19
    if-nez v3, :cond_1

    #@1b
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    #@1d
    if-eqz v3, :cond_1

    #@1f
    .line 739
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    #@21
    if-eqz v3, :cond_4

    #@23
    .line 738
    :cond_1
    const/4 v0, 0x0

    #@24
    .line 740
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    #@26
    if-nez v3, :cond_5

    #@28
    move v1, v0

    #@29
    .line 742
    :goto_1
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    #@2b
    if-eq v3, v1, :cond_3

    #@2d
    .line 743
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    #@2f
    .line 744
    if-eqz v1, :cond_2

    #@31
    const/4 v2, 0x1

    #@32
    :cond_2
    const/4 v3, 0x5

    #@33
    invoke-direct {p0, v3, v2}, Lcom/android/server/power/PowerManagerService;->powerHintInternal(II)V

    #@36
    .line 745
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    #@39
    move-result-object v2

    #@3a
    new-instance v3, Lcom/android/server/power/PowerManagerService$2;

    #@3c
    invoke-direct {v3, p0, v1}, Lcom/android/server/power/PowerManagerService$2;-><init>(Lcom/android/server/power/PowerManagerService;Z)V

    #@3f
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@42
    .line 728
    :cond_3
    return-void

    #@43
    .line 739
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    #@45
    .local v0, "autoLowPowerModeEnabled":Z
    goto :goto_0

    #@46
    .line 740
    .end local v0    # "autoLowPowerModeEnabled":Z
    :cond_5
    const/4 v1, 0x1

    #@47
    .local v1, "lowPowerModeEnabled":Z
    goto :goto_1
.end method

.method updateUidProcStateInternal(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    #@0
    .prologue
    .line 2359
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2360
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    #@8
    .line 2361
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 2362
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    :cond_0
    monitor-exit v1

    #@10
    .line 2358
    return-void

    #@11
    .line 2359
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
    throw v0
.end method
