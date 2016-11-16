.class public final Lcom/android/server/power/PowerManagerService;
.super Lcom/android/server/SystemService;
.source "PowerManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/PowerManagerService$1;,
        Lcom/android/server/power/PowerManagerService$2;,
        Lcom/android/server/power/PowerManagerService$BatteryReceiver;,
        Lcom/android/server/power/PowerManagerService$BinderService;,
        Lcom/android/server/power/PowerManagerService$DockReceiver;,
        Lcom/android/server/power/PowerManagerService$DreamReceiver;,
        Lcom/android/server/power/PowerManagerService$HaltMode;,
        Lcom/android/server/power/PowerManagerService$LocalService;,
        Lcom/android/server/power/PowerManagerService$PowerManagerHandler;,
        Lcom/android/server/power/PowerManagerService$SettingsObserver;,
        Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;,
        Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;,
        Lcom/android/server/power/PowerManagerService$WakeLock;
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

.field private static final HALT_MODE_REBOOT:I = 0x1

.field private static final HALT_MODE_REBOOT_SAFE_MODE:I = 0x2

.field private static final HALT_MODE_SHUTDOWN:I = 0x0

.field static final MIN_LONG_WAKE_CHECK_INTERVAL:J = 0xea60L

.field private static final MSG_CHECK_FOR_LONG_WAKELOCKS:I = 0x4

.field private static final MSG_SANDMAN:I = 0x2

.field private static final MSG_SCREEN_BRIGHTNESS_BOOST_TIMEOUT:I = 0x3

.field private static final MSG_USER_ACTIVITY_TIMEOUT:I = 0x1

.field private static final POWER_FEATURE_DOUBLE_TAP_TO_WAKE:I = 0x1

.field private static final POWER_HINT_LOW_POWER:I = 0x5

.field private static final POWER_HINT_VR_MODE:I = 0x7

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

.field private mBootCompletedRunnables:[Ljava/lang/Runnable;

.field private mBrightnessUseTwilight:Z

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

.field private mLightDeviceIdleMode:Z

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

.field private mNotifyLongDispatched:J

.field private mNotifyLongNextCheck:J

.field private mNotifyLongScheduled:J

.field private mOverriddenTimeout:J

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

.field private mUserInactiveOverrideFromWindowManager:Z

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

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
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isInteractiveInternal()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/power/PowerManagerService;Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->dumpInternal(Ljava/io/PrintWriter;)V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/power/PowerManagerService;JIII)V
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

.method static synthetic -wrap12(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleBatteryStateChangedLocked()V

    #@3
    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleSandman()V

    #@3
    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleScreenBrightnessBoostTimeout()V

    #@3
    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleSettingsChangedLocked()V

    #@3
    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUserActivityTimeout()V

    #@3
    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 0
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->handleWakeLockDeath(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    #@3
    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/power/PowerManagerService;JI)V
    .locals 1
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->napInternal(JI)V

    #@3
    return-void
.end method

.method static synthetic -wrap19(Ljava/lang/String;)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeAcquireSuspendBlocker(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isLowPowerModeInternal()Z

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
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeReleaseSuspendBlocker(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/power/PowerManagerService;II)V
    .locals 0
    .param p1, "hintId"    # I
    .param p2, "data"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->powerHintInternal(II)V

    #@3
    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;I)V
    .locals 0
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->releaseWakeLockInternal(Landroid/os/IBinder;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->scheduleSandmanLocked()V

    #@3
    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/power/PowerManagerService;ZI)V
    .locals 0
    .param p1, "on"    # Z
    .param p2, "color"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setAttentionLightInternal(ZI)V

    #@3
    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/power/PowerManagerService;II)V
    .locals 0
    .param p1, "screenState"    # I
    .param p2, "screenBrightness"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setDozeOverrideFromDreamManagerInternal(II)V

    #@3
    return-void
.end method

.method static synthetic -wrap26(Lcom/android/server/power/PowerManagerService;Z)V
    .locals 0
    .param p1, "enable"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap27(Lcom/android/server/power/PowerManagerService;Z)V
    .locals 0
    .param p1, "enable"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap28(Lcom/android/server/power/PowerManagerService;I)V
    .locals 0
    .param p1, "brightness"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setScreenBrightnessOverrideFromWindowManagerInternal(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap29(Lcom/android/server/power/PowerManagerService;F)V
    .locals 0
    .param p1, "adj"    # F

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverrideInternal(F)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isScreenBrightnessBoostedInternal()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap30(Lcom/android/server/power/PowerManagerService;I)V
    .locals 0
    .param p1, "brightness"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setTemporaryScreenBrightnessSettingOverrideInternal(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap31(Lcom/android/server/power/PowerManagerService;J)V
    .locals 1
    .param p1, "timeoutMillis"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setUserActivityTimeoutOverrideFromWindowManagerInternal(J)V

    #@3
    return-void
.end method

.method static synthetic -wrap32(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->setUserInactiveOverrideFromWindowManagerInternal()V

    #@3
    return-void
.end method

.method static synthetic -wrap33(Lcom/android/server/power/PowerManagerService;IZLjava/lang/String;Z)V
    .locals 0
    .param p1, "haltMode"    # I
    .param p2, "confirm"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "wait"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/power/PowerManagerService;->shutdownOrRebootInternal(IZLjava/lang/String;Z)V

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

.method static synthetic -wrap4(Lcom/android/server/power/PowerManagerService;I)Z
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

.method static synthetic -wrap5(Lcom/android/server/power/PowerManagerService;Z)Z
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

.method static synthetic -wrap6(Lcom/android/server/power/PowerManagerService;JIII)Z
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

.method static synthetic -wrap7(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
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

.method static synthetic -wrap8(Lcom/android/server/power/PowerManagerService;JI)V
    .locals 1
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->boostScreenBrightnessInternal(JI)V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->crashInternal(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const-wide/16 v4, -0x1

    #@2
    const/4 v1, -0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 514
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@7
    .line 200
    new-instance v0, Ljava/lang/Object;

    #@9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@c
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@e
    .line 220
    new-instance v0, Ljava/util/ArrayList;

    #@10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@13
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    #@15
    .line 223
    new-instance v0, Ljava/util/ArrayList;

    #@17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1a
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    #@1c
    .line 261
    new-instance v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@1e
    invoke-direct {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>()V

    #@21
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@23
    .line 314
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    #@25
    .line 396
    const v0, 0x7fffffff

    #@28
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    #@2a
    .line 428
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    #@2c
    .line 436
    iput-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    #@2e
    .line 441
    iput-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    #@30
    .line 446
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    #@32
    .line 452
    const/high16 v0, 0x7fc00000    # NaNf

    #@34
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    #@36
    .line 455
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    #@38
    .line 458
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    #@3a
    .line 461
    const-wide/high16 v0, -0x8000000000000000L

    #@3c
    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    #@3e
    .line 485
    new-array v0, v3, [I

    #@40
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    #@42
    .line 488
    new-array v0, v3, [I

    #@44
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    #@46
    .line 490
    new-instance v0, Landroid/util/SparseIntArray;

    #@48
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@4b
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@4d
    .line 499
    new-instance v0, Ljava/util/ArrayList;

    #@4f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@52
    .line 498
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeListeners:Ljava/util/ArrayList;

    #@54
    .line 2220
    new-instance v0, Lcom/android/server/power/PowerManagerService$1;

    #@56
    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$1;-><init>(Lcom/android/server/power/PowerManagerService;)V

    #@59
    .line 2219
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    #@5b
    .line 3080
    new-instance v0, Lcom/android/server/power/PowerManagerService$2;

    #@5d
    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$2;-><init>(Lcom/android/server/power/PowerManagerService;)V

    #@60
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    #@62
    .line 515
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    #@64
    .line 516
    new-instance v0, Lcom/android/server/ServiceThread;

    #@66
    const-string/jumbo v1, "PowerManagerService"

    #@69
    .line 517
    const/4 v2, -0x4

    #@6a
    .line 516
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    #@6d
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    #@6f
    .line 518
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    #@71
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    #@74
    .line 519
    new-instance v0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@76
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    #@78
    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    #@7b
    move-result-object v1

    #@7c
    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Looper;)V

    #@7f
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@81
    .line 521
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@83
    monitor-enter v1

    #@84
    .line 522
    :try_start_0
    const-string/jumbo v0, "PowerManagerService.WakeLocks"

    #@87
    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    #@8a
    move-result-object v0

    #@8b
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    #@8d
    .line 523
    const-string/jumbo v0, "PowerManagerService.Display"

    #@90
    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    #@93
    move-result-object v0

    #@94
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    #@96
    .line 524
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    #@98
    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    #@9b
    .line 525
    const/4 v0, 0x1

    #@9c
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    #@9e
    .line 526
    const/4 v0, 0x0

    #@9f
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    #@a1
    .line 527
    const/4 v0, 0x1

    #@a2
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    #@a4
    .line 529
    const/4 v0, 0x1

    #@a5
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@a7
    .line 531
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->nativeInit()V

    #@aa
    .line 532
    const/4 v0, 0x0

    #@ab
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V

    #@ae
    .line 533
    const/4 v0, 0x1

    #@af
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->nativeSetInteractive(Z)V

    #@b2
    .line 534
    const/4 v0, 0x1

    #@b3
    const/4 v2, 0x0

    #@b4
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->nativeSetFeature(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b7
    monitor-exit v1

    #@b8
    .line 513
    return-void

    #@b9
    .line 521
    :catchall_0
    move-exception v0

    #@ba
    monitor-exit v1

    #@bb
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
    .line 862
    iget-object v14, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v14

    #@3
    .line 870
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    #@6
    move-result v12

    #@7
    .line 872
    .local v12, "index":I
    if-ltz v12, :cond_2

    #@9
    .line 873
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
    .line 874
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
    .line 876
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
    .line 878
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/power/PowerManagerService$WakeLock;->updateProperties(ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V

    #@45
    .line 880
    :cond_0
    const/4 v13, 0x0

    #@46
    .line 893
    .local v13, "notifyAcquire":Z
    :goto_0
    move/from16 v0, p7

    #@48
    invoke-direct {p0, v1, v0}, Lcom/android/server/power/PowerManagerService;->applyWakeLockFlagsOnAcquireLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    #@4b
    .line 894
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@4d
    or-int/lit8 v2, v2, 0x1

    #@4f
    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@51
    .line 895
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    #@54
    .line 896
    if-eqz v13, :cond_1

    #@56
    .line 902
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@59
    :cond_1
    monitor-exit v14

    #@5a
    .line 861
    return-void

    #@5b
    .line 882
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
    .line 884
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
    .line 888
    :try_start_3
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    #@79
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7c
    .line 889
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    #@7f
    .line 890
    const/4 v13, 0x1

    #@80
    .restart local v13    # "notifyAcquire":Z
    goto :goto_0

    #@81
    .line 885
    .end local v13    # "notifyAcquire":Z
    :catch_0
    move-exception v11

    #@82
    .line 886
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
    .line 862
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
    .line 919
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    #@3
    const/high16 v1, 0x10000000

    #@5
    and-int/2addr v0, v1

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 920
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    #@b
    move-result v0

    #@c
    .line 919
    if-eqz v0, :cond_0

    #@e
    .line 923
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
    .line 924
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    #@1c
    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    #@1f
    move-result-object v6

    #@20
    .line 925
    .local v6, "opPackageName":Ljava/lang/String;
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    #@22
    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->get(I)I

    #@25
    move-result v5

    #@26
    .line 931
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
    .line 918
    .end local v5    # "opUid":I
    .end local v6    # "opPackageName":Ljava/lang/String;
    :cond_0
    return-void

    #@32
    .line 927
    :cond_1
    iget-object v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    #@34
    .line 928
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
    .line 929
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
    .line 988
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    #@3
    const/high16 v1, 0x20000000

    #@5
    and-int/2addr v0, v1

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 989
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    #@b
    move-result v0

    #@c
    .line 988
    if-eqz v0, :cond_0

    #@e
    .line 990
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@11
    move-result-wide v2

    #@12
    .line 993
    iget v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    #@14
    .line 992
    const/4 v5, 0x1

    #@15
    move-object v1, p0

    #@16
    .line 990
    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    #@19
    .line 987
    :cond_0
    return-void
.end method

.method private boostScreenBrightnessInternal(JI)V
    .locals 9
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    #@0
    .prologue
    .line 2670
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v7

    #@3
    .line 2671
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
    .line 2673
    return-void

    #@d
    .line 2672
    :cond_1
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    #@f
    cmp-long v0, p1, v0

    #@11
    if-ltz v0, :cond_0

    #@13
    .line 2676
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
    .line 2677
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    #@36
    .line 2678
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    #@38
    if-nez v0, :cond_2

    #@3a
    .line 2679
    const/4 v0, 0x1

    #@3b
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    #@3d
    .line 2680
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    #@3f
    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onScreenBrightnessBoostChanged()V

    #@42
    .line 2682
    :cond_2
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@44
    or-int/lit16 v0, v0, 0x800

    #@46
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@48
    .line 2685
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
    .line 2684
    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    #@50
    .line 2686
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@53
    monitor-exit v7

    #@54
    .line 2669
    return-void

    #@55
    .line 2670
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
    .line 2063
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
    .line 2032
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@3
    const/4 v1, 0x2

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 2033
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 2034
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 2035
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@10
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 2036
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    #@18
    and-int/lit8 v0, v0, 0x7

    #@1a
    if-nez v0, :cond_1

    #@1c
    .line 2039
    :cond_0
    return v2

    #@1d
    .line 2038
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    #@1f
    if-eqz v0, :cond_0

    #@21
    .line 2041
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked()Z

    #@24
    move-result v0

    #@25
    if-nez v0, :cond_5

    #@27
    .line 2042
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    #@29
    if-nez v0, :cond_2

    #@2b
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    #@2d
    if-eqz v0, :cond_3

    #@2f
    .line 2045
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    #@31
    if-nez v0, :cond_4

    #@33
    .line 2046
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    #@35
    if-ltz v0, :cond_4

    #@37
    .line 2047
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    #@39
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    #@3b
    if-ge v0, v1, :cond_4

    #@3d
    .line 2048
    return v2

    #@3e
    .line 2043
    :cond_3
    return v2

    #@3f
    .line 2050
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    #@41
    if-eqz v0, :cond_5

    #@43
    .line 2051
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    #@45
    if-ltz v0, :cond_5

    #@47
    .line 2052
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    #@49
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    #@4b
    if-ge v0, v1, :cond_5

    #@4d
    .line 2053
    return v2

    #@4e
    .line 2056
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
    .line 3022
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
    .line 2513
    new-instance v1, Lcom/android/server/power/PowerManagerService$5;

    #@2
    const-string/jumbo v2, "PowerManagerService.crash()"

    #@5
    invoke-direct {v1, p0, v2, p1}, Lcom/android/server/power/PowerManagerService$5;-><init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;Ljava/lang/String;)V

    #@8
    .line 2520
    .local v1, "t":Ljava/lang/Thread;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    #@b
    .line 2521
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 2512
    :goto_0
    return-void

    #@f
    .line 2522
    :catch_0
    move-exception v0

    #@10
    .line 2523
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
    .line 3002
    new-instance v0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;-><init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V

    #@5
    .line 3003
    .local v0, "suspendBlocker":Lcom/android/server/power/SuspendBlocker;
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a
    .line 3004
    return-object v0
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 22
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 2826
    const-string/jumbo v15, "POWER MANAGER (dumpsys power)\n"

    #@3
    move-object/from16 v0, p1

    #@5
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8
    .line 2829
    move-object/from16 v0, p0

    #@a
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@c
    move-object/from16 v16, v0

    #@e
    monitor-enter v16

    #@f
    .line 2830
    :try_start_0
    const-string/jumbo v15, "Power Manager State:"

    #@12
    move-object/from16 v0, p1

    #@14
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@17
    .line 2831
    new-instance v15, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v17, "  mDirty=0x"

    #@1f
    move-object/from16 v0, v17

    #@21
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v15

    #@25
    move-object/from16 v0, p0

    #@27
    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@29
    move/from16 v17, v0

    #@2b
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@2e
    move-result-object v17

    #@2f
    move-object/from16 v0, v17

    #@31
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v15

    #@35
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v15

    #@39
    move-object/from16 v0, p1

    #@3b
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3e
    .line 2832
    new-instance v15, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v17, "  mWakefulness="

    #@46
    move-object/from16 v0, v17

    #@48
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v15

    #@4c
    move-object/from16 v0, p0

    #@4e
    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@50
    move/from16 v17, v0

    #@52
    invoke-static/range {v17 .. v17}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    #@55
    move-result-object v17

    #@56
    move-object/from16 v0, v17

    #@58
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v15

    #@5c
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v15

    #@60
    move-object/from16 v0, p1

    #@62
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@65
    .line 2833
    new-instance v15, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v17, "  mWakefulnessChanging="

    #@6d
    move-object/from16 v0, v17

    #@6f
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v15

    #@73
    move-object/from16 v0, p0

    #@75
    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    #@77
    move/from16 v17, v0

    #@79
    move/from16 v0, v17

    #@7b
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v15

    #@7f
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v15

    #@83
    move-object/from16 v0, p1

    #@85
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@88
    .line 2834
    new-instance v15, Ljava/lang/StringBuilder;

    #@8a
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@8d
    const-string/jumbo v17, "  mIsPowered="

    #@90
    move-object/from16 v0, v17

    #@92
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v15

    #@96
    move-object/from16 v0, p0

    #@98
    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    #@9a
    move/from16 v17, v0

    #@9c
    move/from16 v0, v17

    #@9e
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v15

    #@a2
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v15

    #@a6
    move-object/from16 v0, p1

    #@a8
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ab
    .line 2835
    new-instance v15, Ljava/lang/StringBuilder;

    #@ad
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@b0
    const-string/jumbo v17, "  mPlugType="

    #@b3
    move-object/from16 v0, v17

    #@b5
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v15

    #@b9
    move-object/from16 v0, p0

    #@bb
    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    #@bd
    move/from16 v17, v0

    #@bf
    move/from16 v0, v17

    #@c1
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v15

    #@c5
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c8
    move-result-object v15

    #@c9
    move-object/from16 v0, p1

    #@cb
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ce
    .line 2836
    new-instance v15, Ljava/lang/StringBuilder;

    #@d0
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@d3
    const-string/jumbo v17, "  mBatteryLevel="

    #@d6
    move-object/from16 v0, v17

    #@d8
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v15

    #@dc
    move-object/from16 v0, p0

    #@de
    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    #@e0
    move/from16 v17, v0

    #@e2
    move/from16 v0, v17

    #@e4
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v15

    #@e8
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@eb
    move-result-object v15

    #@ec
    move-object/from16 v0, p1

    #@ee
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f1
    .line 2837
    new-instance v15, Ljava/lang/StringBuilder;

    #@f3
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@f6
    const-string/jumbo v17, "  mBatteryLevelWhenDreamStarted="

    #@f9
    move-object/from16 v0, v17

    #@fb
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v15

    #@ff
    move-object/from16 v0, p0

    #@101
    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    #@103
    move/from16 v17, v0

    #@105
    move/from16 v0, v17

    #@107
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v15

    #@10b
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10e
    move-result-object v15

    #@10f
    move-object/from16 v0, p1

    #@111
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@114
    .line 2838
    new-instance v15, Ljava/lang/StringBuilder;

    #@116
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@119
    const-string/jumbo v17, "  mDockState="

    #@11c
    move-object/from16 v0, v17

    #@11e
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@121
    move-result-object v15

    #@122
    move-object/from16 v0, p0

    #@124
    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    #@126
    move/from16 v17, v0

    #@128
    move/from16 v0, v17

    #@12a
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12d
    move-result-object v15

    #@12e
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@131
    move-result-object v15

    #@132
    move-object/from16 v0, p1

    #@134
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@137
    .line 2839
    new-instance v15, Ljava/lang/StringBuilder;

    #@139
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@13c
    const-string/jumbo v17, "  mStayOn="

    #@13f
    move-object/from16 v0, v17

    #@141
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@144
    move-result-object v15

    #@145
    move-object/from16 v0, p0

    #@147
    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    #@149
    move/from16 v17, v0

    #@14b
    move/from16 v0, v17

    #@14d
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@150
    move-result-object v15

    #@151
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@154
    move-result-object v15

    #@155
    move-object/from16 v0, p1

    #@157
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@15a
    .line 2840
    new-instance v15, Ljava/lang/StringBuilder;

    #@15c
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@15f
    const-string/jumbo v17, "  mProximityPositive="

    #@162
    move-object/from16 v0, v17

    #@164
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@167
    move-result-object v15

    #@168
    move-object/from16 v0, p0

    #@16a
    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    #@16c
    move/from16 v17, v0

    #@16e
    move/from16 v0, v17

    #@170
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@173
    move-result-object v15

    #@174
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@177
    move-result-object v15

    #@178
    move-object/from16 v0, p1

    #@17a
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@17d
    .line 2841
    new-instance v15, Ljava/lang/StringBuilder;

    #@17f
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@182
    const-string/jumbo v17, "  mBootCompleted="

    #@185
    move-object/from16 v0, v17

    #@187
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18a
    move-result-object v15

    #@18b
    move-object/from16 v0, p0

    #@18d
    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    #@18f
    move/from16 v17, v0

    #@191
    move/from16 v0, v17

    #@193
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@196
    move-result-object v15

    #@197
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19a
    move-result-object v15

    #@19b
    move-object/from16 v0, p1

    #@19d
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1a0
    .line 2842
    new-instance v15, Ljava/lang/StringBuilder;

    #@1a2
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@1a5
    const-string/jumbo v17, "  mSystemReady="

    #@1a8
    move-object/from16 v0, v17

    #@1aa
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ad
    move-result-object v15

    #@1ae
    move-object/from16 v0, p0

    #@1b0
    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    #@1b2
    move/from16 v17, v0

    #@1b4
    move/from16 v0, v17

    #@1b6
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1b9
    move-result-object v15

    #@1ba
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1bd
    move-result-object v15

    #@1be
    move-object/from16 v0, p1

    #@1c0
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1c3
    .line 2843
    new-instance v15, Ljava/lang/StringBuilder;

    #@1c5
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@1c8
    const-string/jumbo v17, "  mHalAutoSuspendModeEnabled="

    #@1cb
    move-object/from16 v0, v17

    #@1cd
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d0
    move-result-object v15

    #@1d1
    move-object/from16 v0, p0

    #@1d3
    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    #@1d5
    move/from16 v17, v0

    #@1d7
    move/from16 v0, v17

    #@1d9
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1dc
    move-result-object v15

    #@1dd
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e0
    move-result-object v15

    #@1e1
    move-object/from16 v0, p1

    #@1e3
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1e6
    .line 2844
    new-instance v15, Ljava/lang/StringBuilder;

    #@1e8
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@1eb
    const-string/jumbo v17, "  mHalInteractiveModeEnabled="

    #@1ee
    move-object/from16 v0, v17

    #@1f0
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f3
    move-result-object v15

    #@1f4
    move-object/from16 v0, p0

    #@1f6
    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    #@1f8
    move/from16 v17, v0

    #@1fa
    move/from16 v0, v17

    #@1fc
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1ff
    move-result-object v15

    #@200
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@203
    move-result-object v15

    #@204
    move-object/from16 v0, p1

    #@206
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@209
    .line 2845
    new-instance v15, Ljava/lang/StringBuilder;

    #@20b
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@20e
    const-string/jumbo v17, "  mWakeLockSummary=0x"

    #@211
    move-object/from16 v0, v17

    #@213
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@216
    move-result-object v15

    #@217
    move-object/from16 v0, p0

    #@219
    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@21b
    move/from16 v17, v0

    #@21d
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@220
    move-result-object v17

    #@221
    move-object/from16 v0, v17

    #@223
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@226
    move-result-object v15

    #@227
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22a
    move-result-object v15

    #@22b
    move-object/from16 v0, p1

    #@22d
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@230
    .line 2846
    const-string/jumbo v15, "  mNotifyLongScheduled="

    #@233
    move-object/from16 v0, p1

    #@235
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@238
    .line 2847
    move-object/from16 v0, p0

    #@23a
    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    #@23c
    move-wide/from16 v18, v0

    #@23e
    const-wide/16 v20, 0x0

    #@240
    cmp-long v15, v18, v20

    #@242
    if-nez v15, :cond_0

    #@244
    .line 2848
    const-string/jumbo v15, "(none)"

    #@247
    move-object/from16 v0, p1

    #@249
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@24c
    .line 2852
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@24f
    .line 2853
    const-string/jumbo v15, "  mNotifyLongDispatched="

    #@252
    move-object/from16 v0, p1

    #@254
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@257
    .line 2854
    move-object/from16 v0, p0

    #@259
    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mNotifyLongDispatched:J

    #@25b
    move-wide/from16 v18, v0

    #@25d
    const-wide/16 v20, 0x0

    #@25f
    cmp-long v15, v18, v20

    #@261
    if-nez v15, :cond_1

    #@263
    .line 2855
    const-string/jumbo v15, "(none)"

    #@266
    move-object/from16 v0, p1

    #@268
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26b
    .line 2859
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@26e
    .line 2860
    const-string/jumbo v15, "  mNotifyLongNextCheck="

    #@271
    move-object/from16 v0, p1

    #@273
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@276
    .line 2861
    move-object/from16 v0, p0

    #@278
    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    #@27a
    move-wide/from16 v18, v0

    #@27c
    const-wide/16 v20, 0x0

    #@27e
    cmp-long v15, v18, v20

    #@280
    if-nez v15, :cond_2

    #@282
    .line 2862
    const-string/jumbo v15, "(none)"

    #@285
    move-object/from16 v0, p1

    #@287
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@28a
    .line 2866
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@28d
    .line 2867
    new-instance v15, Ljava/lang/StringBuilder;

    #@28f
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@292
    const-string/jumbo v17, "  mUserActivitySummary=0x"

    #@295
    move-object/from16 v0, v17

    #@297
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29a
    move-result-object v15

    #@29b
    move-object/from16 v0, p0

    #@29d
    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    #@29f
    move/from16 v17, v0

    #@2a1
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@2a4
    move-result-object v17

    #@2a5
    move-object/from16 v0, v17

    #@2a7
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2aa
    move-result-object v15

    #@2ab
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2ae
    move-result-object v15

    #@2af
    move-object/from16 v0, p1

    #@2b1
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2b4
    .line 2868
    new-instance v15, Ljava/lang/StringBuilder;

    #@2b6
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@2b9
    const-string/jumbo v17, "  mRequestWaitForNegativeProximity="

    #@2bc
    move-object/from16 v0, v17

    #@2be
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c1
    move-result-object v15

    #@2c2
    move-object/from16 v0, p0

    #@2c4
    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    #@2c6
    move/from16 v17, v0

    #@2c8
    move/from16 v0, v17

    #@2ca
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2cd
    move-result-object v15

    #@2ce
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d1
    move-result-object v15

    #@2d2
    move-object/from16 v0, p1

    #@2d4
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2d7
    .line 2869
    new-instance v15, Ljava/lang/StringBuilder;

    #@2d9
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@2dc
    const-string/jumbo v17, "  mSandmanScheduled="

    #@2df
    move-object/from16 v0, v17

    #@2e1
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e4
    move-result-object v15

    #@2e5
    move-object/from16 v0, p0

    #@2e7
    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    #@2e9
    move/from16 v17, v0

    #@2eb
    move/from16 v0, v17

    #@2ed
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2f0
    move-result-object v15

    #@2f1
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f4
    move-result-object v15

    #@2f5
    move-object/from16 v0, p1

    #@2f7
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2fa
    .line 2870
    new-instance v15, Ljava/lang/StringBuilder;

    #@2fc
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@2ff
    const-string/jumbo v17, "  mSandmanSummoned="

    #@302
    move-object/from16 v0, v17

    #@304
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@307
    move-result-object v15

    #@308
    move-object/from16 v0, p0

    #@30a
    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    #@30c
    move/from16 v17, v0

    #@30e
    move/from16 v0, v17

    #@310
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@313
    move-result-object v15

    #@314
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@317
    move-result-object v15

    #@318
    move-object/from16 v0, p1

    #@31a
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@31d
    .line 2871
    new-instance v15, Ljava/lang/StringBuilder;

    #@31f
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@322
    const-string/jumbo v17, "  mLowPowerModeEnabled="

    #@325
    move-object/from16 v0, v17

    #@327
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32a
    move-result-object v15

    #@32b
    move-object/from16 v0, p0

    #@32d
    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    #@32f
    move/from16 v17, v0

    #@331
    move/from16 v0, v17

    #@333
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@336
    move-result-object v15

    #@337
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33a
    move-result-object v15

    #@33b
    move-object/from16 v0, p1

    #@33d
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@340
    .line 2872
    new-instance v15, Ljava/lang/StringBuilder;

    #@342
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@345
    const-string/jumbo v17, "  mBatteryLevelLow="

    #@348
    move-object/from16 v0, v17

    #@34a
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34d
    move-result-object v15

    #@34e
    move-object/from16 v0, p0

    #@350
    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    #@352
    move/from16 v17, v0

    #@354
    move/from16 v0, v17

    #@356
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@359
    move-result-object v15

    #@35a
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35d
    move-result-object v15

    #@35e
    move-object/from16 v0, p1

    #@360
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@363
    .line 2873
    new-instance v15, Ljava/lang/StringBuilder;

    #@365
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@368
    const-string/jumbo v17, "  mLightDeviceIdleMode="

    #@36b
    move-object/from16 v0, v17

    #@36d
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@370
    move-result-object v15

    #@371
    move-object/from16 v0, p0

    #@373
    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    #@375
    move/from16 v17, v0

    #@377
    move/from16 v0, v17

    #@379
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@37c
    move-result-object v15

    #@37d
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@380
    move-result-object v15

    #@381
    move-object/from16 v0, p1

    #@383
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@386
    .line 2874
    new-instance v15, Ljava/lang/StringBuilder;

    #@388
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@38b
    const-string/jumbo v17, "  mDeviceIdleMode="

    #@38e
    move-object/from16 v0, v17

    #@390
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@393
    move-result-object v15

    #@394
    move-object/from16 v0, p0

    #@396
    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    #@398
    move/from16 v17, v0

    #@39a
    move/from16 v0, v17

    #@39c
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@39f
    move-result-object v15

    #@3a0
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a3
    move-result-object v15

    #@3a4
    move-object/from16 v0, p1

    #@3a6
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3a9
    .line 2875
    new-instance v15, Ljava/lang/StringBuilder;

    #@3ab
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@3ae
    const-string/jumbo v17, "  mDeviceIdleWhitelist="

    #@3b1
    move-object/from16 v0, v17

    #@3b3
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b6
    move-result-object v15

    #@3b7
    move-object/from16 v0, p0

    #@3b9
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    #@3bb
    move-object/from16 v17, v0

    #@3bd
    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    #@3c0
    move-result-object v17

    #@3c1
    move-object/from16 v0, v17

    #@3c3
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c6
    move-result-object v15

    #@3c7
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3ca
    move-result-object v15

    #@3cb
    move-object/from16 v0, p1

    #@3cd
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3d0
    .line 2876
    new-instance v15, Ljava/lang/StringBuilder;

    #@3d2
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@3d5
    const-string/jumbo v17, "  mDeviceIdleTempWhitelist="

    #@3d8
    move-object/from16 v0, v17

    #@3da
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3dd
    move-result-object v15

    #@3de
    move-object/from16 v0, p0

    #@3e0
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    #@3e2
    move-object/from16 v17, v0

    #@3e4
    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    #@3e7
    move-result-object v17

    #@3e8
    move-object/from16 v0, v17

    #@3ea
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ed
    move-result-object v15

    #@3ee
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f1
    move-result-object v15

    #@3f2
    move-object/from16 v0, p1

    #@3f4
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3f7
    .line 2877
    new-instance v15, Ljava/lang/StringBuilder;

    #@3f9
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@3fc
    const-string/jumbo v17, "  mLastWakeTime="

    #@3ff
    move-object/from16 v0, v17

    #@401
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@404
    move-result-object v15

    #@405
    move-object/from16 v0, p0

    #@407
    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    #@409
    move-wide/from16 v18, v0

    #@40b
    invoke-static/range {v18 .. v19}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    #@40e
    move-result-object v17

    #@40f
    move-object/from16 v0, v17

    #@411
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@414
    move-result-object v15

    #@415
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@418
    move-result-object v15

    #@419
    move-object/from16 v0, p1

    #@41b
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@41e
    .line 2878
    new-instance v15, Ljava/lang/StringBuilder;

    #@420
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@423
    const-string/jumbo v17, "  mLastSleepTime="

    #@426
    move-object/from16 v0, v17

    #@428
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42b
    move-result-object v15

    #@42c
    move-object/from16 v0, p0

    #@42e
    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    #@430
    move-wide/from16 v18, v0

    #@432
    invoke-static/range {v18 .. v19}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    #@435
    move-result-object v17

    #@436
    move-object/from16 v0, v17

    #@438
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43b
    move-result-object v15

    #@43c
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43f
    move-result-object v15

    #@440
    move-object/from16 v0, p1

    #@442
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@445
    .line 2879
    new-instance v15, Ljava/lang/StringBuilder;

    #@447
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@44a
    const-string/jumbo v17, "  mLastUserActivityTime="

    #@44d
    move-object/from16 v0, v17

    #@44f
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@452
    move-result-object v15

    #@453
    move-object/from16 v0, p0

    #@455
    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    #@457
    move-wide/from16 v18, v0

    #@459
    invoke-static/range {v18 .. v19}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    #@45c
    move-result-object v17

    #@45d
    move-object/from16 v0, v17

    #@45f
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@462
    move-result-object v15

    #@463
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@466
    move-result-object v15

    #@467
    move-object/from16 v0, p1

    #@469
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@46c
    .line 2880
    new-instance v15, Ljava/lang/StringBuilder;

    #@46e
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@471
    const-string/jumbo v17, "  mLastUserActivityTimeNoChangeLights="

    #@474
    move-object/from16 v0, v17

    #@476
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@479
    move-result-object v15

    #@47a
    .line 2881
    move-object/from16 v0, p0

    #@47c
    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    #@47e
    move-wide/from16 v18, v0

    #@480
    invoke-static/range {v18 .. v19}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    #@483
    move-result-object v17

    #@484
    .line 2880
    move-object/from16 v0, v17

    #@486
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@489
    move-result-object v15

    #@48a
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48d
    move-result-object v15

    #@48e
    move-object/from16 v0, p1

    #@490
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@493
    .line 2882
    new-instance v15, Ljava/lang/StringBuilder;

    #@495
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@498
    const-string/jumbo v17, "  mLastInteractivePowerHintTime="

    #@49b
    move-object/from16 v0, v17

    #@49d
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a0
    move-result-object v15

    #@4a1
    .line 2883
    move-object/from16 v0, p0

    #@4a3
    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    #@4a5
    move-wide/from16 v18, v0

    #@4a7
    invoke-static/range {v18 .. v19}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    #@4aa
    move-result-object v17

    #@4ab
    .line 2882
    move-object/from16 v0, v17

    #@4ad
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b0
    move-result-object v15

    #@4b1
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b4
    move-result-object v15

    #@4b5
    move-object/from16 v0, p1

    #@4b7
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4ba
    .line 2884
    new-instance v15, Ljava/lang/StringBuilder;

    #@4bc
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@4bf
    const-string/jumbo v17, "  mLastScreenBrightnessBoostTime="

    #@4c2
    move-object/from16 v0, v17

    #@4c4
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c7
    move-result-object v15

    #@4c8
    .line 2885
    move-object/from16 v0, p0

    #@4ca
    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    #@4cc
    move-wide/from16 v18, v0

    #@4ce
    invoke-static/range {v18 .. v19}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    #@4d1
    move-result-object v17

    #@4d2
    .line 2884
    move-object/from16 v0, v17

    #@4d4
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d7
    move-result-object v15

    #@4d8
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4db
    move-result-object v15

    #@4dc
    move-object/from16 v0, p1

    #@4de
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4e1
    .line 2886
    new-instance v15, Ljava/lang/StringBuilder;

    #@4e3
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@4e6
    const-string/jumbo v17, "  mScreenBrightnessBoostInProgress="

    #@4e9
    move-object/from16 v0, v17

    #@4eb
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ee
    move-result-object v15

    #@4ef
    .line 2887
    move-object/from16 v0, p0

    #@4f1
    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    #@4f3
    move/from16 v17, v0

    #@4f5
    .line 2886
    move/from16 v0, v17

    #@4f7
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4fa
    move-result-object v15

    #@4fb
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4fe
    move-result-object v15

    #@4ff
    move-object/from16 v0, p1

    #@501
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@504
    .line 2888
    new-instance v15, Ljava/lang/StringBuilder;

    #@506
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@509
    const-string/jumbo v17, "  mDisplayReady="

    #@50c
    move-object/from16 v0, v17

    #@50e
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@511
    move-result-object v15

    #@512
    move-object/from16 v0, p0

    #@514
    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    #@516
    move/from16 v17, v0

    #@518
    move/from16 v0, v17

    #@51a
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@51d
    move-result-object v15

    #@51e
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@521
    move-result-object v15

    #@522
    move-object/from16 v0, p1

    #@524
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@527
    .line 2889
    new-instance v15, Ljava/lang/StringBuilder;

    #@529
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@52c
    const-string/jumbo v17, "  mHoldingWakeLockSuspendBlocker="

    #@52f
    move-object/from16 v0, v17

    #@531
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@534
    move-result-object v15

    #@535
    move-object/from16 v0, p0

    #@537
    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    #@539
    move/from16 v17, v0

    #@53b
    move/from16 v0, v17

    #@53d
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@540
    move-result-object v15

    #@541
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@544
    move-result-object v15

    #@545
    move-object/from16 v0, p1

    #@547
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@54a
    .line 2890
    new-instance v15, Ljava/lang/StringBuilder;

    #@54c
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@54f
    const-string/jumbo v17, "  mHoldingDisplaySuspendBlocker="

    #@552
    move-object/from16 v0, v17

    #@554
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@557
    move-result-object v15

    #@558
    move-object/from16 v0, p0

    #@55a
    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    #@55c
    move/from16 v17, v0

    #@55e
    move/from16 v0, v17

    #@560
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@563
    move-result-object v15

    #@564
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@567
    move-result-object v15

    #@568
    move-object/from16 v0, p1

    #@56a
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@56d
    .line 2892
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@570
    .line 2893
    const-string/jumbo v15, "Settings and Configuration:"

    #@573
    move-object/from16 v0, p1

    #@575
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@578
    .line 2894
    new-instance v15, Ljava/lang/StringBuilder;

    #@57a
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@57d
    const-string/jumbo v17, "  mDecoupleHalAutoSuspendModeFromDisplayConfig="

    #@580
    move-object/from16 v0, v17

    #@582
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@585
    move-result-object v15

    #@586
    .line 2895
    move-object/from16 v0, p0

    #@588
    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    #@58a
    move/from16 v17, v0

    #@58c
    .line 2894
    move/from16 v0, v17

    #@58e
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@591
    move-result-object v15

    #@592
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@595
    move-result-object v15

    #@596
    move-object/from16 v0, p1

    #@598
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@59b
    .line 2896
    new-instance v15, Ljava/lang/StringBuilder;

    #@59d
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@5a0
    const-string/jumbo v17, "  mDecoupleHalInteractiveModeFromDisplayConfig="

    #@5a3
    move-object/from16 v0, v17

    #@5a5
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a8
    move-result-object v15

    #@5a9
    .line 2897
    move-object/from16 v0, p0

    #@5ab
    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    #@5ad
    move/from16 v17, v0

    #@5af
    .line 2896
    move/from16 v0, v17

    #@5b1
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5b4
    move-result-object v15

    #@5b5
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b8
    move-result-object v15

    #@5b9
    move-object/from16 v0, p1

    #@5bb
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5be
    .line 2898
    new-instance v15, Ljava/lang/StringBuilder;

    #@5c0
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@5c3
    const-string/jumbo v17, "  mWakeUpWhenPluggedOrUnpluggedConfig="

    #@5c6
    move-object/from16 v0, v17

    #@5c8
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5cb
    move-result-object v15

    #@5cc
    .line 2899
    move-object/from16 v0, p0

    #@5ce
    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    #@5d0
    move/from16 v17, v0

    #@5d2
    .line 2898
    move/from16 v0, v17

    #@5d4
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5d7
    move-result-object v15

    #@5d8
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5db
    move-result-object v15

    #@5dc
    move-object/from16 v0, p1

    #@5de
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5e1
    .line 2900
    new-instance v15, Ljava/lang/StringBuilder;

    #@5e3
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@5e6
    const-string/jumbo v17, "  mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig="

    #@5e9
    move-object/from16 v0, v17

    #@5eb
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5ee
    move-result-object v15

    #@5ef
    .line 2901
    move-object/from16 v0, p0

    #@5f1
    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    #@5f3
    move/from16 v17, v0

    #@5f5
    .line 2900
    move/from16 v0, v17

    #@5f7
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5fa
    move-result-object v15

    #@5fb
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5fe
    move-result-object v15

    #@5ff
    move-object/from16 v0, p1

    #@601
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@604
    .line 2902
    new-instance v15, Ljava/lang/StringBuilder;

    #@606
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@609
    const-string/jumbo v17, "  mTheaterModeEnabled="

    #@60c
    move-object/from16 v0, v17

    #@60e
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@611
    move-result-object v15

    #@612
    .line 2903
    move-object/from16 v0, p0

    #@614
    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    #@616
    move/from16 v17, v0

    #@618
    .line 2902
    move/from16 v0, v17

    #@61a
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@61d
    move-result-object v15

    #@61e
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@621
    move-result-object v15

    #@622
    move-object/from16 v0, p1

    #@624
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@627
    .line 2904
    new-instance v15, Ljava/lang/StringBuilder;

    #@629
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@62c
    const-string/jumbo v17, "  mSuspendWhenScreenOffDueToProximityConfig="

    #@62f
    move-object/from16 v0, v17

    #@631
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@634
    move-result-object v15

    #@635
    .line 2905
    move-object/from16 v0, p0

    #@637
    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    #@639
    move/from16 v17, v0

    #@63b
    .line 2904
    move/from16 v0, v17

    #@63d
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@640
    move-result-object v15

    #@641
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@644
    move-result-object v15

    #@645
    move-object/from16 v0, p1

    #@647
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@64a
    .line 2906
    new-instance v15, Ljava/lang/StringBuilder;

    #@64c
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@64f
    const-string/jumbo v17, "  mDreamsSupportedConfig="

    #@652
    move-object/from16 v0, v17

    #@654
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@657
    move-result-object v15

    #@658
    move-object/from16 v0, p0

    #@65a
    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    #@65c
    move/from16 v17, v0

    #@65e
    move/from16 v0, v17

    #@660
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@663
    move-result-object v15

    #@664
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@667
    move-result-object v15

    #@668
    move-object/from16 v0, p1

    #@66a
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@66d
    .line 2907
    new-instance v15, Ljava/lang/StringBuilder;

    #@66f
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@672
    const-string/jumbo v17, "  mDreamsEnabledByDefaultConfig="

    #@675
    move-object/from16 v0, v17

    #@677
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67a
    move-result-object v15

    #@67b
    move-object/from16 v0, p0

    #@67d
    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    #@67f
    move/from16 v17, v0

    #@681
    move/from16 v0, v17

    #@683
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@686
    move-result-object v15

    #@687
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68a
    move-result-object v15

    #@68b
    move-object/from16 v0, p1

    #@68d
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@690
    .line 2908
    new-instance v15, Ljava/lang/StringBuilder;

    #@692
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@695
    const-string/jumbo v17, "  mDreamsActivatedOnSleepByDefaultConfig="

    #@698
    move-object/from16 v0, v17

    #@69a
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69d
    move-result-object v15

    #@69e
    .line 2909
    move-object/from16 v0, p0

    #@6a0
    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    #@6a2
    move/from16 v17, v0

    #@6a4
    .line 2908
    move/from16 v0, v17

    #@6a6
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@6a9
    move-result-object v15

    #@6aa
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6ad
    move-result-object v15

    #@6ae
    move-object/from16 v0, p1

    #@6b0
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6b3
    .line 2910
    new-instance v15, Ljava/lang/StringBuilder;

    #@6b5
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@6b8
    const-string/jumbo v17, "  mDreamsActivatedOnDockByDefaultConfig="

    #@6bb
    move-object/from16 v0, v17

    #@6bd
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c0
    move-result-object v15

    #@6c1
    .line 2911
    move-object/from16 v0, p0

    #@6c3
    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    #@6c5
    move/from16 v17, v0

    #@6c7
    .line 2910
    move/from16 v0, v17

    #@6c9
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@6cc
    move-result-object v15

    #@6cd
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d0
    move-result-object v15

    #@6d1
    move-object/from16 v0, p1

    #@6d3
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6d6
    .line 2912
    new-instance v15, Ljava/lang/StringBuilder;

    #@6d8
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@6db
    const-string/jumbo v17, "  mDreamsEnabledOnBatteryConfig="

    #@6de
    move-object/from16 v0, v17

    #@6e0
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e3
    move-result-object v15

    #@6e4
    .line 2913
    move-object/from16 v0, p0

    #@6e6
    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    #@6e8
    move/from16 v17, v0

    #@6ea
    .line 2912
    move/from16 v0, v17

    #@6ec
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@6ef
    move-result-object v15

    #@6f0
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f3
    move-result-object v15

    #@6f4
    move-object/from16 v0, p1

    #@6f6
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6f9
    .line 2914
    new-instance v15, Ljava/lang/StringBuilder;

    #@6fb
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@6fe
    const-string/jumbo v17, "  mDreamsBatteryLevelMinimumWhenPoweredConfig="

    #@701
    move-object/from16 v0, v17

    #@703
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@706
    move-result-object v15

    #@707
    .line 2915
    move-object/from16 v0, p0

    #@709
    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    #@70b
    move/from16 v17, v0

    #@70d
    .line 2914
    move/from16 v0, v17

    #@70f
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@712
    move-result-object v15

    #@713
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@716
    move-result-object v15

    #@717
    move-object/from16 v0, p1

    #@719
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@71c
    .line 2916
    new-instance v15, Ljava/lang/StringBuilder;

    #@71e
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@721
    const-string/jumbo v17, "  mDreamsBatteryLevelMinimumWhenNotPoweredConfig="

    #@724
    move-object/from16 v0, v17

    #@726
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@729
    move-result-object v15

    #@72a
    .line 2917
    move-object/from16 v0, p0

    #@72c
    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    #@72e
    move/from16 v17, v0

    #@730
    .line 2916
    move/from16 v0, v17

    #@732
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@735
    move-result-object v15

    #@736
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@739
    move-result-object v15

    #@73a
    move-object/from16 v0, p1

    #@73c
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@73f
    .line 2918
    new-instance v15, Ljava/lang/StringBuilder;

    #@741
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@744
    const-string/jumbo v17, "  mDreamsBatteryLevelDrainCutoffConfig="

    #@747
    move-object/from16 v0, v17

    #@749
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74c
    move-result-object v15

    #@74d
    .line 2919
    move-object/from16 v0, p0

    #@74f
    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    #@751
    move/from16 v17, v0

    #@753
    .line 2918
    move/from16 v0, v17

    #@755
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@758
    move-result-object v15

    #@759
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75c
    move-result-object v15

    #@75d
    move-object/from16 v0, p1

    #@75f
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@762
    .line 2920
    new-instance v15, Ljava/lang/StringBuilder;

    #@764
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@767
    const-string/jumbo v17, "  mDreamsEnabledSetting="

    #@76a
    move-object/from16 v0, v17

    #@76c
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76f
    move-result-object v15

    #@770
    move-object/from16 v0, p0

    #@772
    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    #@774
    move/from16 v17, v0

    #@776
    move/from16 v0, v17

    #@778
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@77b
    move-result-object v15

    #@77c
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77f
    move-result-object v15

    #@780
    move-object/from16 v0, p1

    #@782
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@785
    .line 2921
    new-instance v15, Ljava/lang/StringBuilder;

    #@787
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@78a
    const-string/jumbo v17, "  mDreamsActivateOnSleepSetting="

    #@78d
    move-object/from16 v0, v17

    #@78f
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@792
    move-result-object v15

    #@793
    move-object/from16 v0, p0

    #@795
    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    #@797
    move/from16 v17, v0

    #@799
    move/from16 v0, v17

    #@79b
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@79e
    move-result-object v15

    #@79f
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a2
    move-result-object v15

    #@7a3
    move-object/from16 v0, p1

    #@7a5
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7a8
    .line 2922
    new-instance v15, Ljava/lang/StringBuilder;

    #@7aa
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@7ad
    const-string/jumbo v17, "  mDreamsActivateOnDockSetting="

    #@7b0
    move-object/from16 v0, v17

    #@7b2
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b5
    move-result-object v15

    #@7b6
    move-object/from16 v0, p0

    #@7b8
    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    #@7ba
    move/from16 v17, v0

    #@7bc
    move/from16 v0, v17

    #@7be
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@7c1
    move-result-object v15

    #@7c2
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c5
    move-result-object v15

    #@7c6
    move-object/from16 v0, p1

    #@7c8
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7cb
    .line 2923
    new-instance v15, Ljava/lang/StringBuilder;

    #@7cd
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@7d0
    const-string/jumbo v17, "  mDozeAfterScreenOffConfig="

    #@7d3
    move-object/from16 v0, v17

    #@7d5
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d8
    move-result-object v15

    #@7d9
    move-object/from16 v0, p0

    #@7db
    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOffConfig:Z

    #@7dd
    move/from16 v17, v0

    #@7df
    move/from16 v0, v17

    #@7e1
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@7e4
    move-result-object v15

    #@7e5
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e8
    move-result-object v15

    #@7e9
    move-object/from16 v0, p1

    #@7eb
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7ee
    .line 2924
    new-instance v15, Ljava/lang/StringBuilder;

    #@7f0
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@7f3
    const-string/jumbo v17, "  mLowPowerModeSetting="

    #@7f6
    move-object/from16 v0, v17

    #@7f8
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7fb
    move-result-object v15

    #@7fc
    move-object/from16 v0, p0

    #@7fe
    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    #@800
    move/from16 v17, v0

    #@802
    move/from16 v0, v17

    #@804
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@807
    move-result-object v15

    #@808
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80b
    move-result-object v15

    #@80c
    move-object/from16 v0, p1

    #@80e
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@811
    .line 2925
    new-instance v15, Ljava/lang/StringBuilder;

    #@813
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@816
    const-string/jumbo v17, "  mAutoLowPowerModeConfigured="

    #@819
    move-object/from16 v0, v17

    #@81b
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81e
    move-result-object v15

    #@81f
    move-object/from16 v0, p0

    #@821
    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    #@823
    move/from16 v17, v0

    #@825
    move/from16 v0, v17

    #@827
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@82a
    move-result-object v15

    #@82b
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82e
    move-result-object v15

    #@82f
    move-object/from16 v0, p1

    #@831
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@834
    .line 2926
    new-instance v15, Ljava/lang/StringBuilder;

    #@836
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@839
    const-string/jumbo v17, "  mAutoLowPowerModeSnoozing="

    #@83c
    move-object/from16 v0, v17

    #@83e
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@841
    move-result-object v15

    #@842
    move-object/from16 v0, p0

    #@844
    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    #@846
    move/from16 v17, v0

    #@848
    move/from16 v0, v17

    #@84a
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@84d
    move-result-object v15

    #@84e
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@851
    move-result-object v15

    #@852
    move-object/from16 v0, p1

    #@854
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@857
    .line 2927
    new-instance v15, Ljava/lang/StringBuilder;

    #@859
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@85c
    const-string/jumbo v17, "  mMinimumScreenOffTimeoutConfig="

    #@85f
    move-object/from16 v0, v17

    #@861
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@864
    move-result-object v15

    #@865
    move-object/from16 v0, p0

    #@867
    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:I

    #@869
    move/from16 v17, v0

    #@86b
    move/from16 v0, v17

    #@86d
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@870
    move-result-object v15

    #@871
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@874
    move-result-object v15

    #@875
    move-object/from16 v0, p1

    #@877
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@87a
    .line 2928
    new-instance v15, Ljava/lang/StringBuilder;

    #@87c
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@87f
    const-string/jumbo v17, "  mMaximumScreenDimDurationConfig="

    #@882
    move-object/from16 v0, v17

    #@884
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@887
    move-result-object v15

    #@888
    move-object/from16 v0, p0

    #@88a
    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:I

    #@88c
    move/from16 v17, v0

    #@88e
    move/from16 v0, v17

    #@890
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@893
    move-result-object v15

    #@894
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@897
    move-result-object v15

    #@898
    move-object/from16 v0, p1

    #@89a
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@89d
    .line 2929
    new-instance v15, Ljava/lang/StringBuilder;

    #@89f
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@8a2
    const-string/jumbo v17, "  mMaximumScreenDimRatioConfig="

    #@8a5
    move-object/from16 v0, v17

    #@8a7
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8aa
    move-result-object v15

    #@8ab
    move-object/from16 v0, p0

    #@8ad
    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    #@8af
    move/from16 v17, v0

    #@8b1
    move/from16 v0, v17

    #@8b3
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@8b6
    move-result-object v15

    #@8b7
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8ba
    move-result-object v15

    #@8bb
    move-object/from16 v0, p1

    #@8bd
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8c0
    .line 2930
    new-instance v15, Ljava/lang/StringBuilder;

    #@8c2
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@8c5
    const-string/jumbo v17, "  mScreenOffTimeoutSetting="

    #@8c8
    move-object/from16 v0, v17

    #@8ca
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8cd
    move-result-object v15

    #@8ce
    move-object/from16 v0, p0

    #@8d0
    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    #@8d2
    move/from16 v17, v0

    #@8d4
    move/from16 v0, v17

    #@8d6
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8d9
    move-result-object v15

    #@8da
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8dd
    move-result-object v15

    #@8de
    move-object/from16 v0, p1

    #@8e0
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8e3
    .line 2931
    new-instance v15, Ljava/lang/StringBuilder;

    #@8e5
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@8e8
    const-string/jumbo v17, "  mSleepTimeoutSetting="

    #@8eb
    move-object/from16 v0, v17

    #@8ed
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f0
    move-result-object v15

    #@8f1
    move-object/from16 v0, p0

    #@8f3
    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:I

    #@8f5
    move/from16 v17, v0

    #@8f7
    move/from16 v0, v17

    #@8f9
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8fc
    move-result-object v15

    #@8fd
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@900
    move-result-object v15

    #@901
    move-object/from16 v0, p1

    #@903
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@906
    .line 2932
    new-instance v15, Ljava/lang/StringBuilder;

    #@908
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@90b
    const-string/jumbo v17, "  mMaximumScreenOffTimeoutFromDeviceAdmin="

    #@90e
    move-object/from16 v0, v17

    #@910
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@913
    move-result-object v15

    #@914
    .line 2933
    move-object/from16 v0, p0

    #@916
    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    #@918
    move/from16 v17, v0

    #@91a
    .line 2932
    move/from16 v0, v17

    #@91c
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@91f
    move-result-object v15

    #@920
    .line 2933
    const-string/jumbo v17, " (enforced="

    #@923
    .line 2932
    move-object/from16 v0, v17

    #@925
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@928
    move-result-object v15

    #@929
    .line 2934
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    #@92c
    move-result v17

    #@92d
    .line 2932
    move/from16 v0, v17

    #@92f
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@932
    move-result-object v15

    #@933
    .line 2934
    const-string/jumbo v17, ")"

    #@936
    .line 2932
    move-object/from16 v0, v17

    #@938
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93b
    move-result-object v15

    #@93c
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93f
    move-result-object v15

    #@940
    move-object/from16 v0, p1

    #@942
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@945
    .line 2935
    new-instance v15, Ljava/lang/StringBuilder;

    #@947
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@94a
    const-string/jumbo v17, "  mStayOnWhilePluggedInSetting="

    #@94d
    move-object/from16 v0, v17

    #@94f
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@952
    move-result-object v15

    #@953
    move-object/from16 v0, p0

    #@955
    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    #@957
    move/from16 v17, v0

    #@959
    move/from16 v0, v17

    #@95b
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@95e
    move-result-object v15

    #@95f
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@962
    move-result-object v15

    #@963
    move-object/from16 v0, p1

    #@965
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@968
    .line 2936
    new-instance v15, Ljava/lang/StringBuilder;

    #@96a
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@96d
    const-string/jumbo v17, "  mScreenBrightnessSetting="

    #@970
    move-object/from16 v0, v17

    #@972
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@975
    move-result-object v15

    #@976
    move-object/from16 v0, p0

    #@978
    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    #@97a
    move/from16 v17, v0

    #@97c
    move/from16 v0, v17

    #@97e
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@981
    move-result-object v15

    #@982
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@985
    move-result-object v15

    #@986
    move-object/from16 v0, p1

    #@988
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@98b
    .line 2937
    new-instance v15, Ljava/lang/StringBuilder;

    #@98d
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@990
    const-string/jumbo v17, "  mScreenAutoBrightnessAdjustmentSetting="

    #@993
    move-object/from16 v0, v17

    #@995
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@998
    move-result-object v15

    #@999
    .line 2938
    move-object/from16 v0, p0

    #@99b
    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    #@99d
    move/from16 v17, v0

    #@99f
    .line 2937
    move/from16 v0, v17

    #@9a1
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@9a4
    move-result-object v15

    #@9a5
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a8
    move-result-object v15

    #@9a9
    move-object/from16 v0, p1

    #@9ab
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9ae
    .line 2939
    new-instance v15, Ljava/lang/StringBuilder;

    #@9b0
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@9b3
    const-string/jumbo v17, "  mScreenBrightnessModeSetting="

    #@9b6
    move-object/from16 v0, v17

    #@9b8
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9bb
    move-result-object v15

    #@9bc
    move-object/from16 v0, p0

    #@9be
    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    #@9c0
    move/from16 v17, v0

    #@9c2
    move/from16 v0, v17

    #@9c4
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9c7
    move-result-object v15

    #@9c8
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9cb
    move-result-object v15

    #@9cc
    move-object/from16 v0, p1

    #@9ce
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9d1
    .line 2940
    new-instance v15, Ljava/lang/StringBuilder;

    #@9d3
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@9d6
    const-string/jumbo v17, "  mScreenBrightnessOverrideFromWindowManager="

    #@9d9
    move-object/from16 v0, v17

    #@9db
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9de
    move-result-object v15

    #@9df
    .line 2941
    move-object/from16 v0, p0

    #@9e1
    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    #@9e3
    move/from16 v17, v0

    #@9e5
    .line 2940
    move/from16 v0, v17

    #@9e7
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9ea
    move-result-object v15

    #@9eb
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9ee
    move-result-object v15

    #@9ef
    move-object/from16 v0, p1

    #@9f1
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9f4
    .line 2942
    new-instance v15, Ljava/lang/StringBuilder;

    #@9f6
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@9f9
    const-string/jumbo v17, "  mUserActivityTimeoutOverrideFromWindowManager="

    #@9fc
    move-object/from16 v0, v17

    #@9fe
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a01
    move-result-object v15

    #@a02
    .line 2943
    move-object/from16 v0, p0

    #@a04
    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    #@a06
    move-wide/from16 v18, v0

    #@a08
    .line 2942
    move-wide/from16 v0, v18

    #@a0a
    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@a0d
    move-result-object v15

    #@a0e
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a11
    move-result-object v15

    #@a12
    move-object/from16 v0, p1

    #@a14
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a17
    .line 2944
    new-instance v15, Ljava/lang/StringBuilder;

    #@a19
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@a1c
    const-string/jumbo v17, "  mUserInactiveOverrideFromWindowManager="

    #@a1f
    move-object/from16 v0, v17

    #@a21
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a24
    move-result-object v15

    #@a25
    .line 2945
    move-object/from16 v0, p0

    #@a27
    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    #@a29
    move/from16 v17, v0

    #@a2b
    .line 2944
    move/from16 v0, v17

    #@a2d
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@a30
    move-result-object v15

    #@a31
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a34
    move-result-object v15

    #@a35
    move-object/from16 v0, p1

    #@a37
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a3a
    .line 2946
    new-instance v15, Ljava/lang/StringBuilder;

    #@a3c
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@a3f
    const-string/jumbo v17, "  mTemporaryScreenBrightnessSettingOverride="

    #@a42
    move-object/from16 v0, v17

    #@a44
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a47
    move-result-object v15

    #@a48
    .line 2947
    move-object/from16 v0, p0

    #@a4a
    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    #@a4c
    move/from16 v17, v0

    #@a4e
    .line 2946
    move/from16 v0, v17

    #@a50
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a53
    move-result-object v15

    #@a54
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a57
    move-result-object v15

    #@a58
    move-object/from16 v0, p1

    #@a5a
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a5d
    .line 2948
    new-instance v15, Ljava/lang/StringBuilder;

    #@a5f
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@a62
    const-string/jumbo v17, "  mTemporaryScreenAutoBrightnessAdjustmentSettingOverride="

    #@a65
    move-object/from16 v0, v17

    #@a67
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6a
    move-result-object v15

    #@a6b
    .line 2949
    move-object/from16 v0, p0

    #@a6d
    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    #@a6f
    move/from16 v17, v0

    #@a71
    .line 2948
    move/from16 v0, v17

    #@a73
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@a76
    move-result-object v15

    #@a77
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a7a
    move-result-object v15

    #@a7b
    move-object/from16 v0, p1

    #@a7d
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a80
    .line 2950
    new-instance v15, Ljava/lang/StringBuilder;

    #@a82
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@a85
    const-string/jumbo v17, "  mDozeScreenStateOverrideFromDreamManager="

    #@a88
    move-object/from16 v0, v17

    #@a8a
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8d
    move-result-object v15

    #@a8e
    .line 2951
    move-object/from16 v0, p0

    #@a90
    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    #@a92
    move/from16 v17, v0

    #@a94
    .line 2950
    move/from16 v0, v17

    #@a96
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a99
    move-result-object v15

    #@a9a
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a9d
    move-result-object v15

    #@a9e
    move-object/from16 v0, p1

    #@aa0
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@aa3
    .line 2952
    new-instance v15, Ljava/lang/StringBuilder;

    #@aa5
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@aa8
    const-string/jumbo v17, "  mDozeScreenBrightnessOverrideFromDreamManager="

    #@aab
    move-object/from16 v0, v17

    #@aad
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab0
    move-result-object v15

    #@ab1
    .line 2953
    move-object/from16 v0, p0

    #@ab3
    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    #@ab5
    move/from16 v17, v0

    #@ab7
    .line 2952
    move/from16 v0, v17

    #@ab9
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@abc
    move-result-object v15

    #@abd
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac0
    move-result-object v15

    #@ac1
    move-object/from16 v0, p1

    #@ac3
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ac6
    .line 2954
    new-instance v15, Ljava/lang/StringBuilder;

    #@ac8
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@acb
    const-string/jumbo v17, "  mScreenBrightnessSettingMinimum="

    #@ace
    move-object/from16 v0, v17

    #@ad0
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad3
    move-result-object v15

    #@ad4
    move-object/from16 v0, p0

    #@ad6
    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    #@ad8
    move/from16 v17, v0

    #@ada
    move/from16 v0, v17

    #@adc
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@adf
    move-result-object v15

    #@ae0
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ae3
    move-result-object v15

    #@ae4
    move-object/from16 v0, p1

    #@ae6
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ae9
    .line 2955
    new-instance v15, Ljava/lang/StringBuilder;

    #@aeb
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@aee
    const-string/jumbo v17, "  mScreenBrightnessSettingMaximum="

    #@af1
    move-object/from16 v0, v17

    #@af3
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af6
    move-result-object v15

    #@af7
    move-object/from16 v0, p0

    #@af9
    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    #@afb
    move/from16 v17, v0

    #@afd
    move/from16 v0, v17

    #@aff
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b02
    move-result-object v15

    #@b03
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b06
    move-result-object v15

    #@b07
    move-object/from16 v0, p1

    #@b09
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b0c
    .line 2956
    new-instance v15, Ljava/lang/StringBuilder;

    #@b0e
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@b11
    const-string/jumbo v17, "  mScreenBrightnessSettingDefault="

    #@b14
    move-object/from16 v0, v17

    #@b16
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b19
    move-result-object v15

    #@b1a
    move-object/from16 v0, p0

    #@b1c
    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    #@b1e
    move/from16 v17, v0

    #@b20
    move/from16 v0, v17

    #@b22
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b25
    move-result-object v15

    #@b26
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b29
    move-result-object v15

    #@b2a
    move-object/from16 v0, p1

    #@b2c
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b2f
    .line 2957
    new-instance v15, Ljava/lang/StringBuilder;

    #@b31
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@b34
    const-string/jumbo v17, "  mDoubleTapWakeEnabled="

    #@b37
    move-object/from16 v0, v17

    #@b39
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3c
    move-result-object v15

    #@b3d
    move-object/from16 v0, p0

    #@b3f
    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    #@b41
    move/from16 v17, v0

    #@b43
    move/from16 v0, v17

    #@b45
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@b48
    move-result-object v15

    #@b49
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4c
    move-result-object v15

    #@b4d
    move-object/from16 v0, p1

    #@b4f
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b52
    .line 2959
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getSleepTimeoutLocked()I

    #@b55
    move-result v11

    #@b56
    .line 2960
    .local v11, "sleepTimeout":I
    move-object/from16 v0, p0

    #@b58
    invoke-direct {v0, v11}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(I)I

    #@b5b
    move-result v10

    #@b5c
    .line 2961
    .local v10, "screenOffTimeout":I
    move-object/from16 v0, p0

    #@b5e
    invoke-direct {v0, v10}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(I)I

    #@b61
    move-result v9

    #@b62
    .line 2962
    .local v9, "screenDimDuration":I
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@b65
    .line 2963
    new-instance v15, Ljava/lang/StringBuilder;

    #@b67
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@b6a
    const-string/jumbo v17, "Sleep timeout: "

    #@b6d
    move-object/from16 v0, v17

    #@b6f
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b72
    move-result-object v15

    #@b73
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b76
    move-result-object v15

    #@b77
    const-string/jumbo v17, " ms"

    #@b7a
    move-object/from16 v0, v17

    #@b7c
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7f
    move-result-object v15

    #@b80
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b83
    move-result-object v15

    #@b84
    move-object/from16 v0, p1

    #@b86
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b89
    .line 2964
    new-instance v15, Ljava/lang/StringBuilder;

    #@b8b
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@b8e
    const-string/jumbo v17, "Screen off timeout: "

    #@b91
    move-object/from16 v0, v17

    #@b93
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b96
    move-result-object v15

    #@b97
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b9a
    move-result-object v15

    #@b9b
    const-string/jumbo v17, " ms"

    #@b9e
    move-object/from16 v0, v17

    #@ba0
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba3
    move-result-object v15

    #@ba4
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ba7
    move-result-object v15

    #@ba8
    move-object/from16 v0, p1

    #@baa
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@bad
    .line 2965
    new-instance v15, Ljava/lang/StringBuilder;

    #@baf
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@bb2
    const-string/jumbo v17, "Screen dim duration: "

    #@bb5
    move-object/from16 v0, v17

    #@bb7
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bba
    move-result-object v15

    #@bbb
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bbe
    move-result-object v15

    #@bbf
    const-string/jumbo v17, " ms"

    #@bc2
    move-object/from16 v0, v17

    #@bc4
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc7
    move-result-object v15

    #@bc8
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bcb
    move-result-object v15

    #@bcc
    move-object/from16 v0, p1

    #@bce
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@bd1
    .line 2967
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@bd4
    .line 2968
    const-string/jumbo v15, "UID states:"

    #@bd7
    move-object/from16 v0, p1

    #@bd9
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@bdc
    .line 2969
    const/4 v6, 0x0

    #@bdd
    .local v6, "i":I
    :goto_3
    move-object/from16 v0, p0

    #@bdf
    iget-object v15, v0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@be1
    invoke-virtual {v15}, Landroid/util/SparseIntArray;->size()I

    #@be4
    move-result v15

    #@be5
    if-ge v6, v15, :cond_3

    #@be7
    .line 2970
    const-string/jumbo v15, "  UID "

    #@bea
    move-object/from16 v0, p1

    #@bec
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@bef
    move-object/from16 v0, p0

    #@bf1
    iget-object v15, v0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@bf3
    invoke-virtual {v15, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@bf6
    move-result v15

    #@bf7
    move-object/from16 v0, p1

    #@bf9
    invoke-static {v0, v15}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@bfc
    .line 2971
    const-string/jumbo v15, ": "

    #@bff
    move-object/from16 v0, p1

    #@c01
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c04
    move-object/from16 v0, p0

    #@c06
    iget-object v15, v0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@c08
    invoke-virtual {v15, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@c0b
    move-result v15

    #@c0c
    move-object/from16 v0, p1

    #@c0e
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(I)V

    #@c11
    .line 2969
    add-int/lit8 v6, v6, 0x1

    #@c13
    goto :goto_3

    #@c14
    .line 2850
    .end local v6    # "i":I
    .end local v9    # "screenDimDuration":I
    .end local v10    # "screenOffTimeout":I
    .end local v11    # "sleepTimeout":I
    :cond_0
    move-object/from16 v0, p0

    #@c16
    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    #@c18
    move-wide/from16 v18, v0

    #@c1a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@c1d
    move-result-wide v20

    #@c1e
    move-wide/from16 v0, v18

    #@c20
    move-wide/from16 v2, v20

    #@c22
    move-object/from16 v4, p1

    #@c24
    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c27
    goto/16 :goto_0

    #@c29
    .line 2829
    :catchall_0
    move-exception v15

    #@c2a
    monitor-exit v16

    #@c2b
    throw v15

    #@c2c
    .line 2857
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    #@c2e
    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mNotifyLongDispatched:J

    #@c30
    move-wide/from16 v18, v0

    #@c32
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@c35
    move-result-wide v20

    #@c36
    move-wide/from16 v0, v18

    #@c38
    move-wide/from16 v2, v20

    #@c3a
    move-object/from16 v4, p1

    #@c3c
    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@c3f
    goto/16 :goto_1

    #@c41
    .line 2864
    :cond_2
    move-object/from16 v0, p0

    #@c43
    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    #@c45
    move-wide/from16 v18, v0

    #@c47
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@c4a
    move-result-wide v20

    #@c4b
    move-wide/from16 v0, v18

    #@c4d
    move-wide/from16 v2, v20

    #@c4f
    move-object/from16 v4, p1

    #@c51
    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@c54
    goto/16 :goto_2

    #@c56
    .line 2974
    .restart local v6    # "i":I
    .restart local v9    # "screenDimDuration":I
    .restart local v10    # "screenOffTimeout":I
    .restart local v11    # "sleepTimeout":I
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@c59
    .line 2975
    const-string/jumbo v15, "Looper state:"

    #@c5c
    move-object/from16 v0, p1

    #@c5e
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c61
    .line 2976
    move-object/from16 v0, p0

    #@c63
    iget-object v15, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@c65
    invoke-virtual {v15}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->getLooper()Landroid/os/Looper;

    #@c68
    move-result-object v15

    #@c69
    new-instance v17, Landroid/util/PrintWriterPrinter;

    #@c6b
    move-object/from16 v0, v17

    #@c6d
    move-object/from16 v1, p1

    #@c6f
    invoke-direct {v0, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    #@c72
    const-string/jumbo v18, "  "

    #@c75
    move-object/from16 v0, v17

    #@c77
    move-object/from16 v1, v18

    #@c79
    invoke-virtual {v15, v0, v1}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    #@c7c
    .line 2978
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@c7f
    .line 2979
    new-instance v15, Ljava/lang/StringBuilder;

    #@c81
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@c84
    const-string/jumbo v17, "Wake Locks: size="

    #@c87
    move-object/from16 v0, v17

    #@c89
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8c
    move-result-object v15

    #@c8d
    move-object/from16 v0, p0

    #@c8f
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    #@c91
    move-object/from16 v17, v0

    #@c93
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    #@c96
    move-result v17

    #@c97
    move/from16 v0, v17

    #@c99
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c9c
    move-result-object v15

    #@c9d
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ca0
    move-result-object v15

    #@ca1
    move-object/from16 v0, p1

    #@ca3
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ca6
    .line 2980
    move-object/from16 v0, p0

    #@ca8
    iget-object v15, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    #@caa
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@cad
    move-result-object v14

    #@cae
    .local v14, "wl$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@cb1
    move-result v15

    #@cb2
    if-eqz v15, :cond_4

    #@cb4
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@cb7
    move-result-object v13

    #@cb8
    check-cast v13, Lcom/android/server/power/PowerManagerService$WakeLock;

    #@cba
    .line 2981
    .local v13, "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    new-instance v15, Ljava/lang/StringBuilder;

    #@cbc
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@cbf
    const-string/jumbo v17, "  "

    #@cc2
    move-object/from16 v0, v17

    #@cc4
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc7
    move-result-object v15

    #@cc8
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ccb
    move-result-object v15

    #@ccc
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ccf
    move-result-object v15

    #@cd0
    move-object/from16 v0, p1

    #@cd2
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@cd5
    goto :goto_4

    #@cd6
    .line 2984
    .end local v13    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@cd9
    .line 2985
    new-instance v15, Ljava/lang/StringBuilder;

    #@cdb
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@cde
    const-string/jumbo v17, "Suspend Blockers: size="

    #@ce1
    move-object/from16 v0, v17

    #@ce3
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce6
    move-result-object v15

    #@ce7
    move-object/from16 v0, p0

    #@ce9
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    #@ceb
    move-object/from16 v17, v0

    #@ced
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    #@cf0
    move-result v17

    #@cf1
    move/from16 v0, v17

    #@cf3
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@cf6
    move-result-object v15

    #@cf7
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cfa
    move-result-object v15

    #@cfb
    move-object/from16 v0, p1

    #@cfd
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d00
    .line 2986
    move-object/from16 v0, p0

    #@d02
    iget-object v15, v0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    #@d04
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d07
    move-result-object v8

    #@d08
    .local v8, "sb$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@d0b
    move-result v15

    #@d0c
    if-eqz v15, :cond_5

    #@d0e
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d11
    move-result-object v7

    #@d12
    check-cast v7, Lcom/android/server/power/SuspendBlocker;

    #@d14
    .line 2987
    .local v7, "sb":Lcom/android/server/power/SuspendBlocker;
    new-instance v15, Ljava/lang/StringBuilder;

    #@d16
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@d19
    const-string/jumbo v17, "  "

    #@d1c
    move-object/from16 v0, v17

    #@d1e
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d21
    move-result-object v15

    #@d22
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d25
    move-result-object v15

    #@d26
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d29
    move-result-object v15

    #@d2a
    move-object/from16 v0, p1

    #@d2c
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d2f
    goto :goto_5

    #@d30
    .line 2990
    .end local v7    # "sb":Lcom/android/server/power/SuspendBlocker;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@d33
    .line 2991
    new-instance v15, Ljava/lang/StringBuilder;

    #@d35
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@d38
    const-string/jumbo v17, "Display Power: "

    #@d3b
    move-object/from16 v0, v17

    #@d3d
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d40
    move-result-object v15

    #@d41
    move-object/from16 v0, p0

    #@d43
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    #@d45
    move-object/from16 v17, v0

    #@d47
    move-object/from16 v0, v17

    #@d49
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d4c
    move-result-object v15

    #@d4d
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d50
    move-result-object v15

    #@d51
    move-object/from16 v0, p1

    #@d53
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d56
    .line 2993
    move-object/from16 v0, p0

    #@d58
    iget-object v12, v0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d5a
    .local v12, "wcd":Lcom/android/server/power/WirelessChargerDetector;
    monitor-exit v16

    #@d5b
    .line 2996
    if-eqz v12, :cond_6

    #@d5d
    .line 2997
    move-object/from16 v0, p1

    #@d5f
    invoke-virtual {v12, v0}, Lcom/android/server/power/WirelessChargerDetector;->dump(Ljava/io/PrintWriter;)V

    #@d62
    .line 2825
    :cond_6
    return-void
.end method

.method private enqueueNotifyLongMsgLocked(J)V
    .locals 3
    .param p1, "time"    # J

    #@0
    .prologue
    .line 1047
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    #@2
    .line 1048
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@4
    const/4 v2, 0x4

    #@5
    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    #@8
    move-result-object v0

    #@9
    .line 1049
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    #@a
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    #@d
    .line 1050
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@f
    invoke-virtual {v1, v0, p1, p2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    #@12
    .line 1046
    return-void
.end method

.method private findWakeLockIndexLocked(Landroid/os/IBinder;)I
    .locals 3
    .param p1, "lock"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1027
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 1028
    .local v0, "count":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 1029
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
    .line 1030
    return v1

    #@16
    .line 1028
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 1033
    :cond_1
    const/4 v2, -0x1

    #@1a
    return v2
.end method

.method private finishWakefulnessChangeIfNeededLocked()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x3

    #@1
    const/4 v1, 0x0

    #@2
    .line 1392
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    #@4
    if-eqz v0, :cond_3

    #@6
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    #@8
    if-eqz v0, :cond_3

    #@a
    .line 1393
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@c
    if-ne v0, v2, :cond_0

    #@e
    .line 1394
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@10
    and-int/lit8 v0, v0, 0x40

    #@12
    if-nez v0, :cond_0

    #@14
    .line 1395
    return-void

    #@15
    .line 1397
    :cond_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@17
    if-eq v0, v2, :cond_1

    #@19
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@1b
    if-nez v0, :cond_2

    #@1d
    .line 1398
    :cond_1
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->logSleepTimeoutRecapturedLocked()V

    #@20
    .line 1400
    :cond_2
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    #@22
    .line 1401
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    #@24
    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onWakefulnessChangeFinished()V

    #@27
    .line 1391
    :cond_3
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
    .line 2194
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@4
    if-nez v0, :cond_0

    #@6
    .line 2195
    return v1

    #@7
    .line 2198
    :cond_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@9
    if-ne v0, v2, :cond_2

    #@b
    .line 2199
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@d
    and-int/lit8 v0, v0, 0x40

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 2200
    const/4 v0, 0x1

    #@12
    return v0

    #@13
    .line 2202
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOffConfig:Z

    #@15
    if-eqz v0, :cond_2

    #@17
    .line 2203
    return v1

    #@18
    .line 2209
    :cond_2
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@1a
    and-int/lit8 v0, v0, 0x2

    #@1c
    if-nez v0, :cond_3

    #@1e
    .line 2210
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    #@20
    and-int/lit8 v0, v0, 0x1

    #@22
    if-eqz v0, :cond_4

    #@24
    .line 2213
    :cond_3
    return v2

    #@25
    .line 2211
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    #@27
    if-eqz v0, :cond_3

    #@29
    .line 2212
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    #@2b
    .line 2209
    if-nez v0, :cond_3

    #@2d
    .line 2216
    const/4 v0, 0x2

    #@2e
    return v0
.end method

.method private getScreenDimDurationLocked(I)I
    .locals 3
    .param p1, "screenOffTimeout"    # I

    #@0
    .prologue
    .line 1828
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:I

    #@2
    .line 1829
    int-to-float v1, p1

    #@3
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    #@5
    mul-float/2addr v1, v2

    #@6
    float-to-int v1, v1

    #@7
    .line 1828
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
    .line 1814
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    #@2
    .line 1815
    .local v0, "timeout":I
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1816
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    #@a
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@d
    move-result v0

    #@e
    .line 1818
    :cond_0
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    #@10
    const-wide/16 v4, 0x0

    #@12
    cmp-long v1, v2, v4

    #@14
    if-ltz v1, :cond_1

    #@16
    .line 1819
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
    .line 1821
    :cond_1
    if-ltz p1, :cond_2

    #@20
    .line 1822
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    #@23
    move-result v0

    #@24
    .line 1824
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
    .line 1806
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:I

    #@2
    .line 1807
    .local v0, "timeout":I
    if-gtz v0, :cond_0

    #@4
    .line 1808
    const/4 v1, -0x1

    #@5
    return v1

    #@6
    .line 1810
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
    .line 1236
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1237
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1238
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v1

    #@d
    .line 1235
    return-void

    #@e
    .line 1236
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
    .line 1252
    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    #@2
    cmp-long v4, p1, v4

    #@4
    if-ltz v4, :cond_0

    #@6
    .line 1253
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@8
    if-nez v4, :cond_1

    #@a
    .line 1256
    :cond_0
    const/4 v4, 0x0

    #@b
    return v4

    #@c
    .line 1254
    :cond_1
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@e
    const/4 v5, 0x3

    #@f
    if-eq v4, v5, :cond_0

    #@11
    .line 1255
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    #@13
    if-eqz v4, :cond_0

    #@15
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    #@17
    if-eqz v4, :cond_0

    #@19
    .line 1259
    const-string/jumbo v4, "goToSleep"

    #@1c
    const-wide/32 v6, 0x20000

    #@1f
    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@22
    .line 1261
    packed-switch p3, :pswitch_data_0

    #@25
    .line 1282
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
    .line 1283
    const/4 p3, 0x0

    #@47
    .line 1287
    :goto_0
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    #@49
    .line 1288
    const/4 v4, 0x1

    #@4a
    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    #@4c
    .line 1289
    const/4 v4, 0x3

    #@4d
    invoke-direct {p0, v4, p3}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(II)V

    #@50
    .line 1292
    const/4 v2, 0x0

    #@51
    .line 1293
    .local v2, "numWakeLocksCleared":I
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    #@53
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@56
    move-result v1

    #@57
    .line 1294
    .local v1, "numWakeLocks":I
    const/4 v0, 0x0

    #@58
    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    #@5a
    .line 1295
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    #@5c
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5f
    move-result-object v3

    #@60
    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    #@62
    .line 1296
    .local v3, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v4, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    #@64
    const v5, 0xffff

    #@67
    and-int/2addr v4, v5

    #@68
    sparse-switch v4, :sswitch_data_0

    #@6b
    .line 1294
    :goto_2
    add-int/lit8 v0, v0, 0x1

    #@6d
    goto :goto_1

    #@6e
    .line 1263
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
    .line 1264
    const-string/jumbo v6, ")..."

    #@84
    .line 1263
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
    .line 1310
    :catchall_0
    move-exception v4

    #@91
    .line 1311
    const-wide/32 v6, 0x20000

    #@94
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    #@97
    .line 1310
    throw v4

    #@98
    .line 1267
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
    .line 1270
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
    .line 1273
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
    .line 1276
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
    .line 1279
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
    .line 1300
    .restart local v0    # "i":I
    .restart local v1    # "numWakeLocks":I
    .restart local v2    # "numWakeLocksCleared":I
    .restart local v3    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :sswitch_0
    add-int/lit8 v2, v2, 0x1

    #@148
    .line 1301
    goto/16 :goto_2

    #@14a
    .line 1304
    .end local v3    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_2
    const/16 v4, 0xaa4

    #@14c
    invoke-static {v4, v2}, Landroid/util/EventLog;->writeEvent(II)I

    #@14f
    .line 1307
    and-int/lit8 v4, p4, 0x1

    #@151
    if-eqz v4, :cond_3

    #@153
    .line 1308
    invoke-direct {p0, p1, p2, p5}, Lcom/android/server/power/PowerManagerService;->reallyGoToSleepNoUpdateLocked(JI)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@156
    .line 1311
    :cond_3
    const-wide/32 v4, 0x20000

    #@159
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@15c
    .line 1313
    const/4 v4, 0x1

    #@15d
    return v4

    #@15e
    .line 1261
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
    .line 1296
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
    .line 2469
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@2
    or-int/lit16 v0, v0, 0x100

    #@4
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@6
    .line 2470
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    #@9
    .line 2468
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
    .line 1937
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v2

    #@6
    .line 1938
    const/4 v1, 0x0

    #@7
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    #@9
    .line 1939
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@b
    .line 1940
    .local v9, "wakefulness":I
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    #@d
    if-eqz v1, :cond_4

    #@f
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    #@11
    if-eqz v1, :cond_4

    #@13
    .line 1941
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
    .line 1942
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
    .line 1952
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    #@23
    if-eqz v1, :cond_6

    #@25
    .line 1954
    if-eqz v8, :cond_0

    #@27
    .line 1955
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    #@29
    invoke-virtual {v1, v10}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    #@2c
    .line 1956
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    #@2e
    if-ne v9, v3, :cond_5

    #@30
    const/4 v1, 0x1

    #@31
    :goto_2
    invoke-virtual {v2, v1}, Landroid/service/dreams/DreamManagerInternal;->startDream(Z)V

    #@34
    .line 1958
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    #@36
    invoke-virtual {v1}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    #@39
    move-result v0

    #@3a
    .line 1964
    :goto_3
    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@3c
    monitor-enter v11

    #@3d
    .line 1966
    if-eqz v8, :cond_1

    #@3f
    if-eqz v0, :cond_1

    #@41
    .line 1967
    :try_start_1
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    #@43
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    #@45
    .line 1968
    if-ne v9, v3, :cond_7

    #@47
    .line 1969
    const-string/jumbo v1, "PowerManagerService"

    #@4a
    const-string/jumbo v2, "Dozing..."

    #@4d
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@50
    .line 1977
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
    .line 1978
    return-void

    #@5a
    .line 1941
    :cond_3
    const/4 v8, 0x1

    #@5b
    .local v8, "startDreaming":Z
    goto :goto_0

    #@5c
    .line 1944
    .end local v8    # "startDreaming":Z
    :cond_4
    const/4 v8, 0x0

    #@5d
    .restart local v8    # "startDreaming":Z
    goto :goto_1

    #@5e
    .line 1937
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
    .line 1956
    goto :goto_2

    #@63
    .line 1960
    :cond_6
    const/4 v0, 0x0

    #@64
    .local v0, "isDreaming":Z
    goto :goto_3

    #@65
    .line 1971
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
    .line 1964
    :catchall_1
    move-exception v1

    #@70
    monitor-exit v11

    #@71
    throw v1

    #@72
    .line 1982
    :cond_8
    if-ne v9, v4, :cond_f

    #@74
    .line 1983
    if-eqz v0, :cond_b

    #@76
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->canDreamLocked()Z

    #@79
    move-result v1

    #@7a
    if-eqz v1, :cond_b

    #@7c
    .line 1984
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    #@7e
    if-ltz v1, :cond_9

    #@80
    .line 1985
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    #@82
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    #@84
    .line 1986
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    #@86
    .line 1985
    sub-int/2addr v2, v3

    #@87
    if-ge v1, v2, :cond_9

    #@89
    .line 1987
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
    .line 1997
    return-void

    #@91
    .line 1991
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
    .line 1994
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    #@a2
    .line 1991
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v2

    #@a6
    .line 1994
    const-string/jumbo v3, "%.  "

    #@a9
    .line 1991
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v2

    #@ad
    .line 1995
    const-string/jumbo v3, "Battery level now: "

    #@b0
    .line 1991
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v2

    #@b4
    .line 1995
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    #@b6
    .line 1991
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v2

    #@ba
    .line 1995
    const-string/jumbo v3, "%."

    #@bd
    .line 1991
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
    .line 2002
    :cond_b
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isItBedTimeYetLocked()Z

    #@cb
    move-result v1

    #@cc
    if-eqz v1, :cond_e

    #@ce
    .line 2003
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@d1
    move-result-wide v2

    #@d2
    .line 2004
    const/4 v4, 0x2

    #@d3
    const/4 v5, 0x0

    #@d4
    const/16 v6, 0x3e8

    #@d6
    move-object v1, p0

    #@d7
    .line 2003
    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z

    #@da
    .line 2005
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@dd
    :cond_c
    :goto_5
    monitor-exit v11

    #@de
    .line 2023
    if-eqz v0, :cond_d

    #@e0
    .line 2024
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    #@e2
    invoke-virtual {v1, v10}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    #@e5
    .line 1933
    :cond_d
    return-void

    #@e6
    .line 2007
    :cond_e
    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@e9
    move-result-wide v2

    #@ea
    const-string/jumbo v4, "android.server.power:DREAM"

    #@ed
    .line 2008
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
    .line 2007
    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z

    #@fb
    .line 2009
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@fe
    goto :goto_5

    #@ff
    .line 2011
    :cond_f
    if-ne v9, v3, :cond_c

    #@101
    .line 2012
    if-eqz v0, :cond_10

    #@103
    monitor-exit v11

    #@104
    .line 2013
    return-void

    #@105
    .line 2017
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
    .line 2018
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
    .line 2703
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2708
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@5
    or-int/lit16 v0, v0, 0x800

    #@7
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@9
    .line 2709
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v1

    #@d
    .line 2702
    return-void

    #@e
    .line 2703
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
    .line 856
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSettingsLocked()V

    #@3
    .line 857
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    #@6
    .line 855
    return-void
.end method

.method private handleUserActivityTimeout()V
    .locals 2

    #@0
    .prologue
    .line 1795
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1800
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@5
    or-int/lit8 v0, v0, 0x4

    #@7
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@9
    .line 1801
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v1

    #@d
    .line 1794
    return-void

    #@e
    .line 1795
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
    .line 963
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 969
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    .line 970
    .local v0, "index":I
    if-gez v0, :cond_0

    #@b
    monitor-exit v2

    #@c
    .line 971
    return-void

    #@d
    .line 974
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/android/server/power/PowerManagerService;->removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    monitor-exit v2

    #@11
    .line 962
    return-void

    #@12
    .line 963
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v2

    #@14
    throw v1
.end method

.method private incrementBootCount()V
    .locals 6

    #@0
    .prologue
    .line 3008
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 3012
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getContext()Landroid/content/Context;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@a
    move-result-object v2

    #@b
    const-string/jumbo v4, "boot_count"

    #@e
    .line 3011
    invoke-static {v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result v0

    #@12
    .line 3017
    .local v0, "count":I
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getContext()Landroid/content/Context;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@19
    move-result-object v2

    #@1a
    const-string/jumbo v4, "boot_count"

    #@1d
    add-int/lit8 v5, v0, 0x1

    #@1f
    .line 3016
    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    monitor-exit v3

    #@23
    .line 3007
    return-void

    #@24
    .line 3013
    .end local v0    # "count":I
    :catch_0
    move-exception v1

    #@25
    .line 3014
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v0, 0x0

    #@26
    .restart local v0    # "count":I
    goto :goto_0

    #@27
    .line 3008
    .end local v0    # "count":I
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :catchall_0
    move-exception v2

    #@28
    monitor-exit v3

    #@29
    throw v2
.end method

.method private isBeingKeptAwakeLocked()Z
    .locals 1

    #@0
    .prologue
    .line 1890
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1891
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    #@6
    .line 1890
    if-nez v0, :cond_0

    #@8
    .line 1892
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@a
    and-int/lit8 v0, v0, 0x20

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 1890
    :cond_0
    const/4 v0, 0x1

    #@f
    :goto_0
    return v0

    #@10
    .line 1893
    :cond_1
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    #@12
    and-int/lit8 v0, v0, 0x3

    #@14
    if-nez v0, :cond_0

    #@16
    .line 1895
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    #@18
    goto :goto_0
.end method

.method private isInteractiveInternal()Z
    .locals 2

    #@0
    .prologue
    .line 2416
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2417
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
    .line 2416
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
    .line 1878
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
    .line 2422
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 2423
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 2422
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
    .line 2652
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    #@3
    if-ltz v1, :cond_0

    #@5
    .line 2653
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    #@7
    const v2, 0x7fffffff

    #@a
    if-ge v1, v2, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    .line 2652
    :cond_0
    return v0
.end method

.method private isScreenBrightnessBoostedInternal()Z
    .locals 2

    #@0
    .prologue
    .line 2691
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 2692
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 2691
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
    .line 909
    iget v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    #@2
    const v1, 0xffff

    #@5
    and-int/2addr v0, v1

    #@6
    sparse-switch v0, :sswitch_data_0

    #@9
    .line 915
    const/4 v0, 0x0

    #@a
    return v0

    #@b
    .line 913
    :sswitch_0
    const/4 v0, 0x1

    #@c
    return v0

    #@d
    .line 909
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
    .line 2190
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
    .line 2185
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
    .line 1105
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 1106
    sparse-switch p1, :sswitch_data_0

    #@7
    monitor-exit v1

    #@8
    .line 1119
    return v0

    #@9
    .line 1113
    :sswitch_0
    const/4 v0, 0x1

    #@a
    monitor-exit v1

    #@b
    return v0

    #@c
    .line 1116
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
    .line 1105
    :catchall_0
    move-exception v0

    #@19
    monitor-exit v1

    #@1a
    throw v0

    #@1b
    .line 1106
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

.method private logSleepTimeoutRecapturedLocked()V
    .locals 6

    #@0
    .prologue
    .line 1383
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v0

    #@4
    .line 1384
    .local v0, "now":J
    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    #@6
    sub-long v2, v4, v0

    #@8
    .line 1385
    .local v2, "savedWakeTimeMs":J
    const-wide/16 v4, 0x0

    #@a
    cmp-long v4, v2, v4

    #@c
    if-ltz v4, :cond_0

    #@e
    .line 1386
    const/16 v4, 0xaab

    #@10
    invoke-static {v4, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    #@13
    .line 1387
    const-wide/16 v4, -0x1

    #@15
    iput-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    #@17
    .line 1382
    :cond_0
    return-void
.end method

.method public static lowLevelReboot(Ljava/lang/String;)V
    .locals 4
    .param p0, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2801
    if-nez p0, :cond_0

    #@2
    .line 2802
    const-string/jumbo p0, ""

    #@5
    .line 2804
    :cond_0
    const-string/jumbo v1, "recovery"

    #@8
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_1

    #@e
    .line 2805
    const-string/jumbo v1, "recovery-update"

    #@11
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    .line 2804
    if-eqz v1, :cond_2

    #@17
    .line 2806
    :cond_1
    const-string/jumbo v1, "sys.powerctl"

    #@1a
    const-string/jumbo v2, "reboot,recovery"

    #@1d
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@20
    .line 2811
    :goto_0
    const-wide/16 v2, 0x4e20

    #@22
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 2815
    :goto_1
    const-string/jumbo v1, "PowerManagerService"

    #@28
    const-string/jumbo v2, "Unexpected return from lowLevelReboot!"

    #@2b
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 2800
    return-void

    #@2f
    .line 2808
    :cond_2
    const-string/jumbo v1, "sys.powerctl"

    #@32
    new-instance v2, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v3, "reboot,"

    #@3a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@49
    goto :goto_0

    #@4a
    .line 2812
    :catch_0
    move-exception v0

    #@4b
    .line 2813
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    #@52
    goto :goto_1
.end method

.method public static lowLevelShutdown(Ljava/lang/String;)V
    .locals 3
    .param p0, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2787
    if-nez p0, :cond_0

    #@2
    .line 2788
    const-string/jumbo p0, ""

    #@5
    .line 2790
    :cond_0
    const-string/jumbo v0, "sys.powerctl"

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "shutdown,"

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@1f
    .line 2786
    return-void
.end method

.method private napInternal(JI)V
    .locals 3
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    #@0
    .prologue
    .line 1317
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1318
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->napNoUpdateLocked(JI)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1319
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v1

    #@d
    .line 1316
    return-void

    #@e
    .line 1317
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
    .line 1329
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
    .line 1331
    :cond_0
    return v2

    #@10
    .line 1330
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    #@12
    if-eqz v0, :cond_0

    #@14
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 1334
    const-string/jumbo v0, "nap"

    #@1b
    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@1e
    .line 1336
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
    .line 1338
    const/4 v0, 0x1

    #@40
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    #@42
    .line 1339
    const/4 v0, 0x2

    #@43
    const/4 v1, 0x0

    #@44
    invoke-direct {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@47
    .line 1341
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@4a
    .line 1343
    return v3

    #@4b
    .line 1340
    :catchall_0
    move-exception v0

    #@4c
    .line 1341
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@4f
    .line 1340
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
    .line 2365
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 2366
    return v1

    #@6
    .line 2368
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@8
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 2373
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
    .line 2374
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    #@1a
    if-eqz v0, :cond_2

    #@1c
    .line 2378
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    #@1e
    if-eqz v0, :cond_3

    #@20
    .line 2379
    return v1

    #@21
    .line 2375
    :cond_2
    return v1

    #@22
    .line 2382
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
    .line 1037
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 1036
    :cond_0
    :goto_0
    return-void

    #@9
    .line 1038
    :cond_1
    const/4 v0, 0x1

    #@a
    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    #@c
    .line 1039
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    #@e
    iget v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    #@10
    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    #@12
    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    #@14
    .line 1040
    iget v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    #@16
    iget v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    #@18
    iget-object v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    #@1a
    .line 1041
    iget-object v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    #@1c
    .line 1039
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/power/Notifier;->onWakeLockAcquired(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    #@1f
    .line 1042
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->restartNofifyLongTimerLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    #@22
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
    .line 1079
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
    .line 1080
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
    .line 1081
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
    .line 1082
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
    .line 1080
    invoke-virtual/range {v1 .. v15}, Lcom/android/server/power/Notifier;->onWakeLockChanging(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    #@3d
    .line 1083
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockLongFinishedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    #@40
    .line 1088
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->restartNofifyLongTimerLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    #@43
    .line 1078
    :cond_0
    return-void
.end method

.method private notifyWakeLockLongFinishedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 5
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    #@0
    .prologue
    .line 1070
    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1071
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    #@7
    .line 1072
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    #@9
    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    #@b
    iget v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    #@d
    .line 1073
    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    #@f
    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    #@11
    .line 1072
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/power/Notifier;->onLongPartialWakeLockFinish(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V

    #@14
    .line 1069
    :cond_0
    return-void
.end method

.method private notifyWakeLockLongStartedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 5
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    #@0
    .prologue
    .line 1062
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 1061
    :cond_0
    :goto_0
    return-void

    #@9
    .line 1063
    :cond_1
    const/4 v0, 0x1

    #@a
    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    #@c
    .line 1064
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    #@e
    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    #@10
    iget v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    #@12
    .line 1065
    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    #@14
    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    #@16
    .line 1064
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/power/Notifier;->onLongPartialWakeLockStart(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V

    #@19
    goto :goto_0
.end method

.method private notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 8
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    #@0
    .prologue
    .line 1093
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1094
    const/4 v0, 0x0

    #@9
    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    #@b
    .line 1095
    const-wide/16 v0, 0x0

    #@d
    iput-wide v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    #@f
    .line 1096
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    #@11
    iget v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    #@13
    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    #@15
    .line 1097
    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    #@17
    iget v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    #@19
    iget v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    #@1b
    .line 1098
    iget-object v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    #@1d
    iget-object v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    #@1f
    .line 1096
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/power/Notifier;->onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    #@22
    .line 1099
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockLongFinishedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    #@25
    .line 1092
    :cond_0
    return-void
.end method

.method private postAfterBootCompleted(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 801
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 802
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@b
    .line 800
    :goto_0
    return-void

    #@c
    .line 804
    :cond_0
    const-string/jumbo v0, "PowerManagerService"

    #@f
    const-string/jumbo v1, "Delaying runnable until system is booted"

    #@12
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 805
    const-class v0, Ljava/lang/Runnable;

    #@17
    .line 806
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompletedRunnables:[Ljava/lang/Runnable;

    #@19
    .line 805
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, [Ljava/lang/Runnable;

    #@1f
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompletedRunnables:[Ljava/lang/Runnable;

    #@21
    goto :goto_0
.end method

.method private powerHintInternal(II)V
    .locals 0
    .param p1, "hintId"    # I
    .param p2, "data"    # I

    #@0
    .prologue
    .line 2777
    invoke-static {p1, p2}, Lcom/android/server/power/PowerManagerService;->nativeSendPowerHint(II)V

    #@3
    .line 2776
    return-void
.end method

.method private readConfigurationLocked()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 686
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@6
    move-result-object v0

    #@7
    .line 689
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x1120071

    #@a
    .line 688
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@d
    move-result v1

    #@e
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    #@10
    .line 691
    const v1, 0x1120072

    #@13
    .line 690
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@16
    move-result v1

    #@17
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    #@19
    .line 693
    const v1, 0x1120023

    #@1c
    .line 692
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@1f
    move-result v1

    #@20
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    #@22
    .line 695
    const v1, 0x1120028

    #@25
    .line 694
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@28
    move-result v1

    #@29
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    #@2b
    .line 697
    const v1, 0x112003f

    #@2e
    .line 696
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@31
    move-result v1

    #@32
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    #@34
    .line 699
    const v1, 0x112006b

    #@37
    .line 698
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@3a
    move-result v1

    #@3b
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    #@3d
    .line 701
    const v1, 0x112006c

    #@40
    .line 700
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@43
    move-result v1

    #@44
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    #@46
    .line 703
    const v1, 0x112006e

    #@49
    .line 702
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@4c
    move-result v1

    #@4d
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    #@4f
    .line 705
    const v1, 0x112006d

    #@52
    .line 704
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@55
    move-result v1

    #@56
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    #@58
    .line 707
    const v1, 0x112006f

    #@5b
    .line 706
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@5e
    move-result v1

    #@5f
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    #@61
    .line 709
    const v1, 0x10e0086

    #@64
    .line 708
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@67
    move-result v1

    #@68
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    #@6a
    .line 711
    const v1, 0x10e0087

    #@6d
    .line 710
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@70
    move-result v1

    #@71
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    #@73
    .line 713
    const v1, 0x10e0088

    #@76
    .line 712
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@79
    move-result v1

    #@7a
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    #@7c
    .line 715
    const v1, 0x1120070

    #@7f
    .line 714
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@82
    move-result v1

    #@83
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOffConfig:Z

    #@85
    .line 717
    const v1, 0x10e0089

    #@88
    .line 716
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@8b
    move-result v1

    #@8c
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:I

    #@8e
    .line 719
    const v1, 0x10e008a

    #@91
    .line 718
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@94
    move-result v1

    #@95
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:I

    #@97
    .line 721
    const v1, 0x1130003

    #@9a
    .line 720
    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    #@9d
    move-result v1

    #@9e
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    #@a0
    .line 723
    const v1, 0x11200a3

    #@a3
    .line 722
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@a6
    move-result v1

    #@a7
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSupportsDoubleTapWakeConfig:Z

    #@a9
    .line 685
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
    .line 1353
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
    .line 1355
    :cond_0
    return v2

    #@f
    .line 1354
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    #@11
    if-eqz v0, :cond_0

    #@13
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 1358
    const-string/jumbo v0, "reallyGoToSleep"

    #@1a
    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@1d
    .line 1360
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
    .line 1362
    const/4 v0, 0x0

    #@3f
    const/4 v1, 0x2

    #@40
    invoke-direct {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@43
    .line 1364
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@46
    .line 1366
    const/4 v0, 0x1

    #@47
    return v0

    #@48
    .line 1363
    :catchall_0
    move-exception v0

    #@49
    .line 1364
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@4c
    .line 1363
    throw v0
.end method

.method private releaseWakeLockInternal(Landroid/os/IBinder;I)V
    .locals 5
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 937
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 938
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v0

    #@7
    .line 939
    .local v0, "index":I
    if-gez v0, :cond_0

    #@9
    monitor-exit v3

    #@a
    .line 944
    return-void

    #@b
    .line 947
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
    .line 953
    .local v1, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    and-int/lit8 v2, p2, 0x1

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 954
    const/4 v2, 0x1

    #@18
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    #@1a
    .line 957
    :cond_1
    iget-object v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@20
    .line 958
    invoke-direct {p0, v1, v0}, Lcom/android/server/power/PowerManagerService;->removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    monitor-exit v3

    #@24
    .line 936
    return-void

    #@25
    .line 937
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
    .line 979
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@5
    .line 980
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    #@8
    .line 982
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->applyWakeLockFlagsOnReleaseLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    #@b
    .line 983
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@d
    or-int/lit8 v0, v0, 0x1

    #@f
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@11
    .line 984
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    #@14
    .line 978
    return-void
.end method

.method private restartNofifyLongTimerLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 4
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    #@0
    .prologue
    .line 1054
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    #@6
    .line 1055
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    #@8
    const v1, 0xffff

    #@b
    and-int/2addr v0, v1

    #@c
    .line 1056
    const/4 v1, 0x1

    #@d
    .line 1055
    if-ne v0, v1, :cond_0

    #@f
    .line 1056
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    #@11
    const-wide/16 v2, 0x0

    #@13
    cmp-long v0, v0, v2

    #@15
    if-nez v0, :cond_0

    #@17
    .line 1057
    iget-wide v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    #@19
    const-wide/32 v2, 0xea60

    #@1c
    add-long/2addr v0, v2

    #@1d
    invoke-direct {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->enqueueNotifyLongMsgLocked(J)V

    #@20
    .line 1053
    :cond_0
    return-void
.end method

.method private scheduleSandmanLocked()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1918
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 1919
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    #@7
    .line 1920
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@9
    const/4 v2, 0x2

    #@a
    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    #@d
    move-result-object v0

    #@e
    .line 1921
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    #@11
    .line 1922
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@13
    invoke-virtual {v1, v0}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessage(Landroid/os/Message;)Z

    #@16
    .line 1917
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
    .line 2658
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v3

    #@4
    .line 2659
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-nez v1, :cond_0

    #@8
    monitor-exit v3

    #@9
    .line 2660
    return-void

    #@a
    .line 2662
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mAttentionLight:Lcom/android/server/lights/Light;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c
    .local v0, "light":Lcom/android/server/lights/Light;
    monitor-exit v3

    #@d
    .line 2666
    if-eqz p1, :cond_1

    #@f
    const/4 v1, 0x3

    #@10
    :goto_0
    const/4 v3, 0x2

    #@11
    invoke-virtual {v0, p2, v3, v1, v2}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    #@14
    .line 2656
    return-void

    #@15
    .line 2658
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
    .line 2666
    goto :goto_0
.end method

.method private setDozeOverrideFromDreamManagerInternal(II)V
    .locals 2
    .param p1, "screenState"    # I
    .param p2, "screenBrightness"    # I

    #@0
    .prologue
    .line 2765
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2766
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    #@5
    if-ne v0, p1, :cond_0

    #@7
    .line 2767
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    #@9
    if-eq v0, p2, :cond_1

    #@b
    .line 2768
    :cond_0
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    #@d
    .line 2769
    iput p2, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    #@f
    .line 2770
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@11
    or-int/lit8 v0, v0, 0x20

    #@13
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@15
    .line 2771
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    :cond_1
    monitor-exit v1

    #@19
    .line 2764
    return-void

    #@1a
    .line 2765
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
    .line 2386
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    #@5
    if-eq p1, v0, :cond_0

    #@7
    .line 2390
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    #@9
    .line 2391
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
    .line 2393
    :try_start_0
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 2395
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@2d
    .line 2385
    :cond_0
    return-void

    #@2e
    .line 2394
    :catchall_0
    move-exception v0

    #@2f
    .line 2395
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@32
    .line 2394
    throw v0
.end method

.method private setHalInteractiveModeLocked(Z)V
    .locals 4
    .param p1, "enable"    # Z

    #@0
    .prologue
    const-wide/32 v2, 0x20000

    #@3
    .line 2401
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    #@5
    if-eq p1, v0, :cond_0

    #@7
    .line 2405
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    #@9
    .line 2406
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
    .line 2408
    :try_start_0
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->nativeSetInteractive(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 2410
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@2d
    .line 2400
    :cond_0
    return-void

    #@2e
    .line 2409
    :catchall_0
    move-exception v0

    #@2f
    .line 2410
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@32
    .line 2409
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
    .line 2428
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v2

    #@5
    .line 2430
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    if-eqz v3, :cond_0

    #@9
    monitor-exit v2

    #@a
    .line 2431
    return v0

    #@b
    .line 2433
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    #@d
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@10
    move-result-object v3

    #@11
    .line 2434
    const-string/jumbo v4, "low_power"

    #@14
    if-eqz p1, :cond_1

    #@16
    move v0, v1

    #@17
    .line 2433
    :cond_1
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@1a
    .line 2435
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    #@1c
    .line 2437
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    #@1e
    if-eqz v0, :cond_2

    #@20
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    #@22
    if-eqz v0, :cond_2

    #@24
    .line 2438
    if-eqz p1, :cond_3

    #@26
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    #@28
    if-eqz v0, :cond_3

    #@2a
    .line 2442
    const/4 v0, 0x0

    #@2b
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    #@2d
    .line 2451
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateLowPowerModeLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    monitor-exit v2

    #@31
    .line 2452
    return v1

    #@32
    .line 2443
    :cond_3
    if-nez p1, :cond_2

    #@34
    :try_start_2
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    #@36
    if-nez v0, :cond_2

    #@38
    .line 2447
    const/4 v0, 0x1

    #@39
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3b
    goto :goto_0

    #@3c
    .line 2428
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
    .line 2714
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2715
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    #@5
    if-eq v0, p1, :cond_0

    #@7
    .line 2716
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    #@9
    .line 2717
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@b
    or-int/lit8 v0, v0, 0x20

    #@d
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@f
    .line 2718
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit v1

    #@13
    .line 2713
    return-void

    #@14
    .line 2714
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
    .line 2752
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2755
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    #@5
    cmpl-float v0, v0, p1

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2756
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    #@b
    .line 2757
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@d
    or-int/lit8 v0, v0, 0x20

    #@f
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@11
    .line 2758
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    :cond_0
    monitor-exit v1

    #@15
    .line 2751
    return-void

    #@16
    .line 2752
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
    .line 2742
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2743
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    #@5
    if-eq v0, p1, :cond_0

    #@7
    .line 2744
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    #@9
    .line 2745
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@b
    or-int/lit8 v0, v0, 0x20

    #@d
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@f
    .line 2746
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit v1

    #@13
    .line 2741
    return-void

    #@14
    .line 2742
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
    .line 2732
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2733
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    #@5
    cmp-long v0, v2, p1

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2734
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    #@b
    .line 2735
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@d
    or-int/lit8 v0, v0, 0x20

    #@f
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@11
    .line 2736
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    :cond_0
    monitor-exit v1

    #@15
    .line 2731
    return-void

    #@16
    .line 2732
    :catchall_0
    move-exception v0

    #@17
    monitor-exit v1

    #@18
    throw v0
.end method

.method private setUserInactiveOverrideFromWindowManagerInternal()V
    .locals 2

    #@0
    .prologue
    .line 2724
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2725
    const/4 v0, 0x1

    #@4
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    #@6
    .line 2726
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@8
    or-int/lit8 v0, v0, 0x4

    #@a
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@c
    .line 2727
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit v1

    #@10
    .line 2723
    return-void

    #@11
    .line 2724
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
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
    .line 2627
    iget v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    #@4
    const v3, 0xffff

    #@7
    and-int/2addr v2, v3

    #@8
    if-ne v2, v6, :cond_1

    #@a
    .line 2629
    const/4 v1, 0x0

    #@b
    .line 2630
    .local v1, "disabled":Z
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 2631
    iget v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    #@11
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    #@14
    move-result v0

    #@15
    .line 2634
    .local v0, "appid":I
    const/16 v2, 0x2710

    #@17
    if-lt v0, v2, :cond_0

    #@19
    .line 2635
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    #@1b
    invoke-static {v2, v0}, Ljava/util/Arrays;->binarySearch([II)I

    #@1e
    move-result v2

    #@1f
    if-gez v2, :cond_0

    #@21
    .line 2636
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    #@23
    invoke-static {v2, v0}, Ljava/util/Arrays;->binarySearch([II)I

    #@26
    move-result v2

    #@27
    if-gez v2, :cond_0

    #@29
    .line 2637
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@2b
    iget v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    #@2d
    .line 2638
    const/16 v4, 0x10

    #@2f
    .line 2637
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    #@32
    move-result v2

    #@33
    .line 2639
    const/4 v3, 0x4

    #@34
    .line 2637
    if-le v2, v3, :cond_0

    #@36
    .line 2640
    const/4 v1, 0x1

    #@37
    .line 2643
    .end local v0    # "appid":I
    :cond_0
    iget-boolean v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    #@39
    if-eq v2, v1, :cond_1

    #@3b
    .line 2644
    iput-boolean v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    #@3d
    .line 2645
    return v6

    #@3e
    .line 2648
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
    .line 1370
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 1371
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@6
    .line 1372
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    #@9
    .line 1373
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@b
    or-int/lit8 v0, v0, 0x2

    #@d
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@f
    .line 1374
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    #@11
    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/Notifier;->onWakefulnessChangeStarted(II)V

    #@14
    .line 1369
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
    .line 1867
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    #@4
    if-nez v2, :cond_0

    #@6
    .line 1868
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    #@8
    if-eqz v2, :cond_2

    #@a
    .line 1869
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    #@c
    if-eqz v2, :cond_1

    #@e
    .line 1867
    :cond_0
    :goto_0
    return v0

    #@f
    :cond_1
    move v0, v1

    #@10
    .line 1869
    goto :goto_0

    #@11
    :cond_2
    move v0, v1

    #@12
    .line 1868
    goto :goto_0
.end method

.method private shouldUseProximitySensorLocked()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2297
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
    .line 1528
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1529
    return v2

    #@7
    .line 1534
    :cond_0
    if-eqz p1, :cond_1

    #@9
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    #@b
    if-eqz v0, :cond_3

    #@d
    .line 1541
    :cond_1
    if-nez p1, :cond_2

    #@f
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    #@11
    if-eqz v0, :cond_2

    #@13
    .line 1542
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    #@15
    if-ne v0, v1, :cond_2

    #@17
    .line 1543
    if-eqz p3, :cond_4

    #@19
    .line 1548
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
    .line 1549
    return v2

    #@23
    .line 1535
    :cond_3
    if-ne p2, v1, :cond_1

    #@25
    .line 1536
    return v2

    #@26
    .line 1544
    :cond_4
    return v2

    #@27
    .line 1553
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    #@29
    if-eqz v0, :cond_6

    #@2b
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    #@2d
    if-eqz v0, :cond_7

    #@2f
    .line 1558
    :cond_6
    const/4 v0, 0x1

    #@30
    return v0

    #@31
    .line 1554
    :cond_7
    return v2
.end method

.method private shutdownOrRebootInternal(IZLjava/lang/String;Z)V
    .locals 5
    .param p1, "haltMode"    # I
    .param p2, "confirm"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "wait"    # Z

    #@0
    .prologue
    .line 2475
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@2
    if-eqz v3, :cond_0

    #@4
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 2479
    new-instance v2, Lcom/android/server/power/PowerManagerService$4;

    #@a
    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService$4;-><init>(Lcom/android/server/power/PowerManagerService;IZLjava/lang/String;)V

    #@d
    .line 2495
    .local v2, "runnable":Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@f
    invoke-static {v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    #@12
    move-result-object v1

    #@13
    .line 2496
    .local v1, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    #@14
    invoke-virtual {v1, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    #@17
    .line 2497
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@19
    invoke-virtual {v3, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessage(Landroid/os/Message;)Z

    #@1c
    .line 2500
    if-eqz p4, :cond_1

    #@1e
    .line 2501
    monitor-enter v2

    #@1f
    .line 2504
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    goto :goto_0

    #@23
    .line 2505
    :catch_0
    move-exception v0

    #@24
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    #@25
    .line 2476
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
    .line 2501
    .restart local v1    # "msg":Landroid/os/Message;
    .restart local v2    # "runnable":Ljava/lang/Runnable;
    :catchall_0
    move-exception v3

    #@2f
    monitor-exit v2

    #@30
    throw v3

    #@31
    .line 2474
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
    .line 2077
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    #@4
    .line 2078
    .local v2, "oldDisplayReady":Z
    and-int/lit16 v7, p1, 0x83f

    #@6
    if-eqz v7, :cond_3

    #@8
    .line 2081
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@a
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getDesiredScreenPolicyLocked()I

    #@d
    move-result v8

    #@e
    iput v8, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    #@10
    .line 2084
    const/4 v1, 0x1

    #@11
    .line 2085
    .local v1, "brightnessSetByUser":Z
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    #@13
    .line 2086
    .local v4, "screenBrightness":I
    const/4 v3, 0x0

    #@14
    .line 2087
    .local v3, "screenAutoBrightnessAdjustment":F
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    #@16
    if-ne v7, v6, :cond_5

    #@18
    const/4 v0, 0x1

    #@19
    .line 2089
    .local v0, "autoBrightness":Z
    :goto_0
    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    #@1b
    if-nez v7, :cond_6

    #@1d
    .line 2092
    const/4 v0, 0x0

    #@1e
    .line 2093
    const/4 v1, 0x0

    #@1f
    .line 2103
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    #@21
    .line 2104
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    #@23
    .line 2106
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    #@25
    .line 2105
    invoke-static {v7}, Lcom/android/server/power/PowerManagerService;->isValidAutoBrightnessAdjustment(F)Z

    #@28
    move-result v7

    #@29
    if-eqz v7, :cond_9

    #@2b
    .line 2107
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    #@2d
    .line 2115
    :cond_1
    :goto_2
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    #@2f
    .line 2114
    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    #@32
    move-result v7

    #@33
    .line 2115
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    #@35
    .line 2114
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    #@38
    move-result v4

    #@39
    .line 2117
    const/high16 v7, 0x3f800000    # 1.0f

    #@3b
    .line 2116
    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    #@3e
    move-result v7

    #@3f
    .line 2117
    const/high16 v8, -0x40800000    # -1.0f

    #@41
    .line 2116
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    #@44
    move-result v3

    #@45
    .line 2120
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@47
    iput v4, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    #@49
    .line 2121
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@4b
    iput v3, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    #@4d
    .line 2123
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@4f
    iput-boolean v1, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->brightnessSetByUser:Z

    #@51
    .line 2124
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@53
    iput-boolean v0, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    #@55
    .line 2125
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@57
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->shouldUseProximitySensorLocked()Z

    #@5a
    move-result v8

    #@5b
    iput-boolean v8, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    #@5d
    .line 2126
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@5f
    iget-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    #@61
    iput-boolean v8, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    #@63
    .line 2127
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@65
    iget-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    #@67
    iput-boolean v8, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    #@69
    .line 2128
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@6b
    iget-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mBrightnessUseTwilight:Z

    #@6d
    iput-boolean v8, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useTwilight:Z

    #@6f
    .line 2130
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@71
    iget v7, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    #@73
    if-ne v7, v6, :cond_a

    #@75
    .line 2131
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@77
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    #@79
    iput v8, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    #@7b
    .line 2132
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@7d
    iget v7, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    #@7f
    const/4 v8, 0x4

    #@80
    if-ne v7, v8, :cond_2

    #@82
    .line 2133
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@84
    and-int/lit16 v7, v7, 0x80

    #@86
    if-eqz v7, :cond_2

    #@88
    .line 2134
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@8a
    const/4 v8, 0x3

    #@8b
    iput v8, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    #@8d
    .line 2136
    :cond_2
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@8f
    .line 2137
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    #@91
    .line 2136
    iput v8, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    #@93
    .line 2143
    :goto_3
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    #@95
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@97
    .line 2144
    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    #@99
    .line 2143
    invoke-virtual {v7, v8, v9}, Landroid/hardware/display/DisplayManagerInternal;->requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z

    #@9c
    move-result v7

    #@9d
    iput-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    #@9f
    .line 2145
    iput-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    #@a1
    .line 2158
    .end local v0    # "autoBrightness":Z
    .end local v1    # "brightnessSetByUser":Z
    .end local v3    # "screenAutoBrightnessAdjustment":F
    .end local v4    # "screenBrightness":I
    :cond_3
    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    #@a3
    if-eqz v7, :cond_4

    #@a5
    if-eqz v2, :cond_b

    #@a7
    :cond_4
    :goto_4
    return v5

    #@a8
    .line 2087
    .restart local v1    # "brightnessSetByUser":Z
    .restart local v3    # "screenAutoBrightnessAdjustment":F
    .restart local v4    # "screenBrightness":I
    :cond_5
    const/4 v0, 0x0

    #@a9
    .restart local v0    # "autoBrightness":Z
    goto/16 :goto_0

    #@ab
    .line 2094
    :cond_6
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    #@ad
    invoke-static {v7}, Lcom/android/server/power/PowerManagerService;->isValidBrightness(I)Z

    #@b0
    move-result v7

    #@b1
    if-eqz v7, :cond_7

    #@b3
    .line 2095
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    #@b5
    .line 2096
    const/4 v0, 0x0

    #@b6
    .line 2097
    const/4 v1, 0x0

    #@b7
    goto/16 :goto_1

    #@b9
    .line 2098
    :cond_7
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    #@bb
    invoke-static {v7}, Lcom/android/server/power/PowerManagerService;->isValidBrightness(I)Z

    #@be
    move-result v7

    #@bf
    if-eqz v7, :cond_8

    #@c1
    .line 2099
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    #@c3
    goto/16 :goto_1

    #@c5
    .line 2100
    :cond_8
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    #@c7
    invoke-static {v7}, Lcom/android/server/power/PowerManagerService;->isValidBrightness(I)Z

    #@ca
    move-result v7

    #@cb
    if-eqz v7, :cond_0

    #@cd
    .line 2101
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    #@cf
    goto/16 :goto_1

    #@d1
    .line 2110
    :cond_9
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    #@d3
    .line 2109
    invoke-static {v7}, Lcom/android/server/power/PowerManagerService;->isValidAutoBrightnessAdjustment(F)Z

    #@d6
    move-result v7

    #@d7
    if-eqz v7, :cond_1

    #@d9
    .line 2111
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    #@db
    goto/16 :goto_2

    #@dd
    .line 2139
    :cond_a
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@df
    iput v5, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    #@e1
    .line 2140
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@e3
    const/4 v8, -0x1

    #@e4
    iput v8, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    #@e6
    goto :goto_3

    #@e7
    .end local v0    # "autoBrightness":Z
    .end local v1    # "brightnessSetByUser":Z
    .end local v3    # "screenAutoBrightnessAdjustment":F
    .end local v4    # "screenBrightness":I
    :cond_b
    move v5, v6

    #@e8
    .line 2158
    goto :goto_4
.end method

.method private updateDreamLocked(IZ)V
    .locals 1
    .param p1, "dirty"    # I
    .param p2, "displayBecameReady"    # Z

    #@0
    .prologue
    .line 1902
    and-int/lit16 v0, p1, 0x3f7

    #@2
    if-nez v0, :cond_0

    #@4
    if-eqz p2, :cond_1

    #@6
    .line 1911
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 1912
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->scheduleSandmanLocked()V

    #@d
    .line 1901
    :cond_1
    return-void
.end method

.method private updateIsPoweredLocked(I)V
    .locals 11
    .param p1, "dirty"    # I

    #@0
    .prologue
    .line 1468
    and-int/lit16 v1, p1, 0x100

    #@2
    if-eqz v1, :cond_5

    #@4
    .line 1469
    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    #@6
    .line 1470
    .local v10, "wasPowered":Z
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    #@8
    .line 1471
    .local v9, "oldPlugType":I
    iget-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    #@a
    .line 1472
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
    .line 1473
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    #@15
    invoke-virtual {v1}, Landroid/os/BatteryManagerInternal;->getPlugType()I

    #@18
    move-result v1

    #@19
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    #@1b
    .line 1474
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    #@1d
    invoke-virtual {v1}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    #@20
    move-result v1

    #@21
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    #@23
    .line 1475
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    #@25
    invoke-virtual {v1}, Landroid/os/BatteryManagerInternal;->getBatteryLevelLow()Z

    #@28
    move-result v1

    #@29
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    #@2b
    .line 1485
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    #@2d
    if-ne v10, v1, :cond_0

    #@2f
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    #@31
    if-eq v9, v1, :cond_2

    #@33
    .line 1486
    :cond_0
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@35
    or-int/lit8 v1, v1, 0x40

    #@37
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@39
    .line 1489
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    #@3b
    .line 1490
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    #@3d
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    #@3f
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    #@41
    .line 1489
    invoke-virtual {v1, v4, v5, v6}, Lcom/android/server/power/WirelessChargerDetector;->update(ZII)Z

    #@44
    move-result v0

    #@45
    .line 1497
    .local v0, "dockedOnWirelessCharger":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@48
    move-result-wide v2

    #@49
    .line 1498
    .local v2, "now":J
    invoke-direct {p0, v10, v9, v0}, Lcom/android/server/power/PowerManagerService;->shouldWakeUpWhenPluggedOrUnpluggedLocked(ZIZ)Z

    #@4c
    move-result v1

    #@4d
    if-eqz v1, :cond_1

    #@4f
    .line 1500
    const-string/jumbo v4, "android.server.power:POWER"

    #@52
    .line 1501
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    #@54
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@57
    move-result-object v6

    #@58
    .line 1500
    const/16 v5, 0x3e8

    #@5a
    .line 1501
    const/16 v7, 0x3e8

    #@5c
    move-object v1, p0

    #@5d
    .line 1500
    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z

    #@60
    .line 1504
    :cond_1
    const/4 v4, 0x0

    #@61
    const/4 v5, 0x0

    #@62
    const/16 v6, 0x3e8

    #@64
    move-object v1, p0

    #@65
    .line 1503
    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    #@68
    .line 1508
    if-eqz v0, :cond_2

    #@6a
    .line 1509
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    #@6c
    invoke-virtual {v1}, Lcom/android/server/power/Notifier;->onWirelessChargingStarted()V

    #@6f
    .line 1513
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
    .line 1514
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    #@79
    if-eq v8, v1, :cond_4

    #@7b
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    #@7d
    if-eqz v1, :cond_6

    #@7f
    .line 1520
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateLowPowerModeLocked()V

    #@82
    .line 1467
    .end local v8    # "oldLevelLow":Z
    .end local v9    # "oldPlugType":I
    .end local v10    # "wasPowered":Z
    :cond_5
    return-void

    #@83
    .line 1518
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

.method private updateLowPowerModeLocked()V
    .locals 5

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 811
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    #@3
    if-nez v3, :cond_4

    #@5
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    #@7
    if-nez v3, :cond_0

    #@9
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    #@b
    if-eqz v3, :cond_4

    #@d
    .line 821
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    #@f
    if-nez v3, :cond_1

    #@11
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    #@13
    if-eqz v3, :cond_1

    #@15
    .line 822
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    #@17
    if-eqz v3, :cond_5

    #@19
    .line 821
    :cond_1
    const/4 v0, 0x0

    #@1a
    .line 823
    :goto_1
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    #@1c
    if-nez v3, :cond_6

    #@1e
    move v1, v0

    #@1f
    .line 825
    :goto_2
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    #@21
    if-eq v3, v1, :cond_3

    #@23
    .line 826
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    #@25
    .line 827
    if-eqz v1, :cond_2

    #@27
    const/4 v2, 0x1

    #@28
    :cond_2
    const/4 v3, 0x5

    #@29
    invoke-direct {p0, v3, v2}, Lcom/android/server/power/PowerManagerService;->powerHintInternal(II)V

    #@2c
    .line 828
    new-instance v2, Lcom/android/server/power/PowerManagerService$3;

    #@2e
    invoke-direct {v2, p0, v1}, Lcom/android/server/power/PowerManagerService$3;-><init>(Lcom/android/server/power/PowerManagerService;Z)V

    #@31
    invoke-direct {p0, v2}, Lcom/android/server/power/PowerManagerService;->postAfterBootCompleted(Ljava/lang/Runnable;)V

    #@34
    .line 810
    :cond_3
    return-void

    #@35
    .line 811
    :cond_4
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    #@37
    if-eqz v3, :cond_0

    #@39
    .line 817
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    #@3b
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3e
    move-result-object v3

    #@3f
    .line 818
    const-string/jumbo v4, "low_power"

    #@42
    .line 817
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@45
    .line 819
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    #@47
    goto :goto_0

    #@48
    .line 822
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    #@4a
    .local v0, "autoLowPowerModeEnabled":Z
    goto :goto_1

    #@4b
    .line 823
    .end local v0    # "autoLowPowerModeEnabled":Z
    :cond_6
    const/4 v1, 0x1

    #@4c
    .local v1, "lowPowerModeEnabled":Z
    goto :goto_2
.end method

.method private updatePowerStateLocked()V
    .locals 10

    #@0
    .prologue
    const-wide/32 v8, 0x20000

    #@3
    .line 1414
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    #@5
    if-eqz v3, :cond_0

    #@7
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@9
    if-nez v3, :cond_1

    #@b
    .line 1415
    :cond_0
    return-void

    #@c
    .line 1417
    :cond_1
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@e
    invoke-static {v3}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    #@11
    move-result v3

    #@12
    if-nez v3, :cond_2

    #@14
    .line 1418
    const-string/jumbo v3, "PowerManagerService"

    #@17
    const-string/jumbo v6, "Power manager lock was not held when calling updatePowerStateLocked"

    #@1a
    invoke-static {v3, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 1421
    :cond_2
    const-string/jumbo v3, "updatePowerState"

    #@20
    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@23
    .line 1424
    :try_start_0
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@25
    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->updateIsPoweredLocked(I)V

    #@28
    .line 1425
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@2a
    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->updateStayOnLocked(I)V

    #@2d
    .line 1426
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@2f
    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->updateScreenBrightnessBoostLocked(I)V

    #@32
    .line 1431
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@35
    move-result-wide v4

    #@36
    .line 1432
    .local v4, "now":J
    const/4 v1, 0x0

    #@37
    .line 1434
    .local v1, "dirtyPhase2":I
    :cond_3
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@39
    .line 1435
    .local v0, "dirtyPhase1":I
    or-int/2addr v1, v0

    #@3a
    .line 1436
    const/4 v3, 0x0

    #@3b
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@3d
    .line 1438
    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockSummaryLocked(I)V

    #@40
    .line 1439
    invoke-direct {p0, v4, v5, v0}, Lcom/android/server/power/PowerManagerService;->updateUserActivitySummaryLocked(JI)V

    #@43
    .line 1440
    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->updateWakefulnessLocked(I)Z

    #@46
    move-result v3

    #@47
    if-nez v3, :cond_3

    #@49
    .line 1446
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->updateDisplayPowerStateLocked(I)Z

    #@4c
    move-result v2

    #@4d
    .line 1449
    .local v2, "displayBecameReady":Z
    invoke-direct {p0, v1, v2}, Lcom/android/server/power/PowerManagerService;->updateDreamLocked(IZ)V

    #@50
    .line 1452
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->finishWakefulnessChangeIfNeededLocked()V

    #@53
    .line 1457
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSuspendBlockerLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@56
    .line 1459
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@59
    .line 1413
    return-void

    #@5a
    .line 1458
    .end local v0    # "dirtyPhase1":I
    .end local v1    # "dirtyPhase2":I
    .end local v2    # "displayBecameReady":Z
    .end local v4    # "now":J
    :catchall_0
    move-exception v3

    #@5b
    .line 1459
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@5e
    .line 1458
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
    .line 2162
    and-int/lit16 v1, p1, 0x800

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 2163
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 2164
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@d
    move-result-wide v2

    #@e
    .line 2165
    .local v2, "now":J
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@10
    invoke-virtual {v1, v5}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    #@13
    .line 2166
    iget-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    #@15
    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    #@17
    cmp-long v1, v6, v10

    #@19
    if-lez v1, :cond_0

    #@1b
    .line 2167
    iget-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    #@1d
    .line 2168
    const-wide/16 v10, 0x1388

    #@1f
    .line 2167
    add-long v8, v6, v10

    #@21
    .line 2169
    .local v8, "boostTimeout":J
    cmp-long v1, v8, v2

    #@23
    if-lez v1, :cond_0

    #@25
    .line 2170
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@27
    invoke-virtual {v1, v5}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    #@2a
    move-result-object v0

    #@2b
    .line 2171
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    #@2c
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    #@2f
    .line 2172
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@31
    invoke-virtual {v1, v0, v8, v9}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    #@34
    .line 2173
    return-void

    #@35
    .line 2176
    .end local v0    # "msg":Landroid/os/Message;
    .end local v8    # "boostTimeout":J
    :cond_0
    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    #@37
    .line 2177
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    #@39
    invoke-virtual {v1}, Lcom/android/server/power/Notifier;->onScreenBrightnessBoostChanged()V

    #@3c
    .line 2179
    const/16 v6, 0x3e8

    #@3e
    move-object v1, p0

    #@3f
    move v5, v4

    #@40
    .line 2178
    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    #@43
    .line 2161
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
    .line 727
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@9
    move-result-object v5

    #@a
    .line 730
    .local v5, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v9, "screensaver_enabled"

    #@d
    .line 731
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    #@f
    if-eqz v6, :cond_5

    #@11
    move v6, v7

    #@12
    .line 729
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
    .line 734
    const-string/jumbo v9, "screensaver_activate_on_sleep"

    #@1e
    .line 735
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    #@20
    if-eqz v6, :cond_7

    #@22
    move v6, v7

    #@23
    .line 733
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
    .line 738
    const-string/jumbo v9, "screensaver_activate_on_dock"

    #@2f
    .line 739
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    #@31
    if-eqz v6, :cond_9

    #@33
    move v6, v7

    #@34
    .line 737
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
    .line 742
    const-string/jumbo v6, "screen_off_timeout"

    #@40
    const/16 v9, 0x3a98

    #@42
    .line 741
    invoke-static {v5, v6, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@45
    move-result v6

    #@46
    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    #@48
    .line 745
    const-string/jumbo v6, "sleep_timeout"

    #@4b
    .line 744
    invoke-static {v5, v6, v11, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@4e
    move-result v6

    #@4f
    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:I

    #@51
    .line 748
    const-string/jumbo v6, "stay_on_while_plugged_in"

    #@54
    .line 747
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@57
    move-result v6

    #@58
    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    #@5a
    .line 749
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    #@5c
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5f
    move-result-object v6

    #@60
    .line 750
    const-string/jumbo v9, "theater_mode_on"

    #@63
    .line 749
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
    .line 752
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mSupportsDoubleTapWakeConfig:Z

    #@6e
    if-eqz v6, :cond_0

    #@70
    .line 754
    const-string/jumbo v6, "double_tap_to_wake"

    #@73
    .line 753
    invoke-static {v5, v6, v8, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@76
    move-result v6

    #@77
    if-eqz v6, :cond_c

    #@79
    const/4 v1, 0x1

    #@7a
    .line 756
    .local v1, "doubleTapWakeEnabled":Z
    :goto_7
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    #@7c
    if-eq v1, v6, :cond_0

    #@7e
    .line 757
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    #@80
    .line 758
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    #@82
    if-eqz v6, :cond_d

    #@84
    move v6, v7

    #@85
    :goto_8
    invoke-static {v7, v6}, Lcom/android/server/power/PowerManagerService;->nativeSetFeature(II)V

    #@88
    .line 762
    .end local v1    # "doubleTapWakeEnabled":Z
    :cond_0
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    #@8a
    .line 764
    .local v4, "oldScreenBrightnessSetting":I
    const-string/jumbo v6, "screen_brightness"

    #@8d
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    #@8f
    .line 763
    invoke-static {v5, v6, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@92
    move-result v6

    #@93
    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    #@95
    .line 766
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    #@97
    if-eq v4, v6, :cond_1

    #@99
    .line 767
    iput v11, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    #@9b
    .line 770
    :cond_1
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    #@9d
    .line 773
    .local v3, "oldScreenAutoBrightnessAdjustmentSetting":F
    const-string/jumbo v6, "screen_auto_brightness_adj"

    #@a0
    const/4 v9, 0x0

    #@a1
    .line 772
    invoke-static {v5, v6, v9, v10}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    #@a4
    move-result v6

    #@a5
    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    #@a7
    .line 775
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    #@a9
    cmpl-float v6, v3, v6

    #@ab
    if-eqz v6, :cond_2

    #@ad
    .line 776
    const/high16 v6, 0x7fc00000    # NaNf

    #@af
    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    #@b1
    .line 780
    :cond_2
    const-string/jumbo v6, "screen_brightness_mode"

    #@b4
    .line 779
    invoke-static {v5, v6, v8, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@b7
    move-result v6

    #@b8
    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    #@ba
    .line 784
    const-string/jumbo v6, "brightness_use_twilight"

    #@bd
    .line 783
    invoke-static {v5, v6, v8, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@c0
    move-result v6

    #@c1
    if-eqz v6, :cond_e

    #@c3
    :goto_9
    iput-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mBrightnessUseTwilight:Z

    #@c5
    .line 787
    const-string/jumbo v6, "low_power"

    #@c8
    .line 786
    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@cb
    move-result v6

    #@cc
    if-eqz v6, :cond_f

    #@ce
    const/4 v2, 0x1

    #@cf
    .line 789
    .local v2, "lowPowerModeEnabled":Z
    :goto_a
    const-string/jumbo v6, "low_power_trigger_level"

    #@d2
    .line 788
    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@d5
    move-result v6

    #@d6
    if-eqz v6, :cond_10

    #@d8
    const/4 v0, 0x1

    #@d9
    .line 790
    .local v0, "autoLowPowerModeConfigured":Z
    :goto_b
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    #@db
    if-ne v2, v6, :cond_3

    #@dd
    .line 791
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    #@df
    if-eq v0, v6, :cond_4

    #@e1
    .line 792
    :cond_3
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    #@e3
    .line 793
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    #@e5
    .line 794
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateLowPowerModeLocked()V

    #@e8
    .line 797
    :cond_4
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@ea
    or-int/lit8 v6, v6, 0x20

    #@ec
    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@ee
    .line 726
    return-void

    #@ef
    .end local v0    # "autoLowPowerModeConfigured":Z
    .end local v2    # "lowPowerModeEnabled":Z
    .end local v3    # "oldScreenAutoBrightnessAdjustmentSetting":F
    .end local v4    # "oldScreenBrightnessSetting":I
    :cond_5
    move v6, v8

    #@f0
    .line 731
    goto/16 :goto_0

    #@f2
    :cond_6
    move v6, v8

    #@f3
    .line 729
    goto/16 :goto_1

    #@f5
    :cond_7
    move v6, v8

    #@f6
    .line 735
    goto/16 :goto_2

    #@f8
    :cond_8
    move v6, v8

    #@f9
    .line 733
    goto/16 :goto_3

    #@fb
    :cond_9
    move v6, v8

    #@fc
    .line 739
    goto/16 :goto_4

    #@fe
    :cond_a
    move v6, v8

    #@ff
    .line 737
    goto/16 :goto_5

    #@101
    :cond_b
    move v6, v8

    #@102
    .line 749
    goto/16 :goto_6

    #@104
    .line 753
    :cond_c
    const/4 v1, 0x0

    #@105
    .restart local v1    # "doubleTapWakeEnabled":Z
    goto/16 :goto_7

    #@107
    :cond_d
    move v6, v8

    #@108
    .line 758
    goto/16 :goto_8

    #@10a
    .end local v1    # "doubleTapWakeEnabled":Z
    .restart local v3    # "oldScreenAutoBrightnessAdjustmentSetting":F
    .restart local v4    # "oldScreenBrightnessSetting":I
    :cond_e
    move v7, v8

    #@10b
    .line 783
    goto :goto_9

    #@10c
    .line 786
    :cond_f
    const/4 v2, 0x0

    #@10d
    .restart local v2    # "lowPowerModeEnabled":Z
    goto :goto_a

    #@10e
    .line 788
    :cond_10
    const/4 v0, 0x0

    #@10f
    .restart local v0    # "autoLowPowerModeConfigured":Z
    goto :goto_b
.end method

.method private updateStayOnLocked(I)V
    .locals 3
    .param p1, "dirty"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1566
    and-int/lit16 v1, p1, 0x120

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 1567
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    #@7
    .line 1568
    .local v0, "wasStayOn":Z
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 1569
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_2

    #@11
    .line 1572
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    #@13
    .line 1575
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    #@15
    if-eq v1, v0, :cond_1

    #@17
    .line 1576
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@19
    or-int/lit16 v1, v1, 0x80

    #@1b
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@1d
    .line 1565
    .end local v0    # "wasStayOn":Z
    :cond_1
    return-void

    #@1e
    .line 1570
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
    .line 2306
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@4
    and-int/lit8 v4, v4, 0x1

    #@6
    if-eqz v4, :cond_8

    #@8
    const/4 v3, 0x1

    #@9
    .line 2307
    .local v3, "needWakeLockSuspendBlocker":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->needDisplaySuspendBlockerLocked()Z

    #@c
    move-result v2

    #@d
    .line 2308
    .local v2, "needDisplaySuspendBlocker":Z
    if-eqz v2, :cond_9

    #@f
    const/4 v0, 0x0

    #@10
    .line 2309
    .local v0, "autoSuspend":Z
    :goto_1
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@12
    invoke-virtual {v4}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    #@15
    move-result v1

    #@16
    .line 2314
    .local v1, "interactive":Z
    if-nez v0, :cond_0

    #@18
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    #@1a
    if-eqz v4, :cond_0

    #@1c
    .line 2315
    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    #@1f
    .line 2319
    :cond_0
    if-eqz v3, :cond_1

    #@21
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    #@23
    if-eqz v4, :cond_a

    #@25
    .line 2323
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    #@27
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    #@29
    if-eqz v4, :cond_b

    #@2b
    .line 2334
    :cond_2
    :goto_3
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    #@2d
    if-eqz v4, :cond_4

    #@2f
    .line 2339
    if-nez v1, :cond_3

    #@31
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    #@33
    if-eqz v4, :cond_4

    #@35
    .line 2340
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V

    #@38
    .line 2345
    :cond_4
    if-nez v3, :cond_5

    #@3a
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    #@3c
    if-eqz v4, :cond_5

    #@3e
    .line 2346
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    #@40
    invoke-interface {v4}, Lcom/android/server/power/SuspendBlocker;->release()V

    #@43
    .line 2347
    iput-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    #@45
    .line 2349
    :cond_5
    if-nez v2, :cond_6

    #@47
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    #@49
    if-eqz v4, :cond_6

    #@4b
    .line 2350
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    #@4d
    invoke-interface {v4}, Lcom/android/server/power/SuspendBlocker;->release()V

    #@50
    .line 2351
    iput-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    #@52
    .line 2355
    :cond_6
    if-eqz v0, :cond_7

    #@54
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    #@56
    if-eqz v4, :cond_7

    #@58
    .line 2356
    invoke-direct {p0, v6}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    #@5b
    .line 2305
    :cond_7
    return-void

    #@5c
    .line 2306
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
    .line 2308
    .restart local v2    # "needDisplaySuspendBlocker":Z
    :cond_9
    const/4 v0, 0x1

    #@5f
    .restart local v0    # "autoSuspend":Z
    goto :goto_1

    #@60
    .line 2320
    .restart local v1    # "interactive":Z
    :cond_a
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    #@62
    invoke-interface {v4}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    #@65
    .line 2321
    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    #@67
    goto :goto_2

    #@68
    .line 2324
    :cond_b
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    #@6a
    invoke-interface {v4}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    #@6d
    .line 2325
    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    #@6f
    goto :goto_3
.end method

.method private updateUserActivitySummaryLocked(JI)V
    .locals 15
    .param p1, "now"    # J
    .param p3, "dirty"    # I

    #@0
    .prologue
    .line 1701
    and-int/lit8 v9, p3, 0x27

    #@2
    if-eqz v9, :cond_6

    #@4
    .line 1703
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@6
    const/4 v10, 0x1

    #@7
    invoke-virtual {v9, v10}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    #@a
    .line 1705
    const-wide/16 v4, 0x0

    #@c
    .line 1706
    .local v4, "nextTimeout":J
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@e
    const/4 v10, 0x1

    #@f
    if-eq v9, v10, :cond_0

    #@11
    .line 1707
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@13
    const/4 v10, 0x2

    #@14
    if-ne v9, v10, :cond_7

    #@16
    .line 1709
    :cond_0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getSleepTimeoutLocked()I

    #@19
    move-result v7

    #@1a
    .line 1710
    .local v7, "sleepTimeout":I
    invoke-direct {p0, v7}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(I)I

    #@1d
    move-result v6

    #@1e
    .line 1711
    .local v6, "screenOffTimeout":I
    invoke-direct {p0, v6}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(I)I

    #@21
    move-result v3

    #@22
    .line 1712
    .local v3, "screenDimDuration":I
    iget-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    #@24
    .line 1714
    .local v8, "userInactiveOverride":Z
    const/4 v9, 0x0

    #@25
    iput v9, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    #@27
    .line 1715
    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    #@29
    iget-wide v12, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    #@2b
    cmp-long v9, v10, v12

    #@2d
    if-ltz v9, :cond_1

    #@2f
    .line 1716
    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    #@31
    .line 1717
    int-to-long v12, v6

    #@32
    .line 1716
    add-long/2addr v10, v12

    #@33
    .line 1717
    int-to-long v12, v3

    #@34
    .line 1716
    sub-long v4, v10, v12

    #@36
    .line 1718
    cmp-long v9, p1, v4

    #@38
    if-gez v9, :cond_8

    #@3a
    .line 1719
    const/4 v9, 0x1

    #@3b
    iput v9, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    #@3d
    .line 1727
    :cond_1
    :goto_0
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    #@3f
    if-nez v9, :cond_2

    #@41
    .line 1728
    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    #@43
    iget-wide v12, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    #@45
    cmp-long v9, v10, v12

    #@47
    if-ltz v9, :cond_2

    #@49
    .line 1729
    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    #@4b
    int-to-long v12, v6

    #@4c
    add-long v4, v10, v12

    #@4e
    .line 1730
    cmp-long v9, p1, v4

    #@50
    if-gez v9, :cond_2

    #@52
    .line 1731
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@54
    iget v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    #@56
    const/4 v10, 0x3

    #@57
    if-ne v9, v10, :cond_9

    #@59
    .line 1732
    const/4 v9, 0x1

    #@5a
    iput v9, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    #@5c
    .line 1739
    :cond_2
    :goto_1
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    #@5e
    if-nez v9, :cond_3

    #@60
    .line 1740
    if-ltz v7, :cond_a

    #@62
    .line 1741
    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    #@64
    .line 1742
    iget-wide v12, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    #@66
    .line 1741
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    #@69
    move-result-wide v0

    #@6a
    .line 1743
    .local v0, "anyUserActivity":J
    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    #@6c
    cmp-long v9, v0, v10

    #@6e
    if-ltz v9, :cond_3

    #@70
    .line 1744
    int-to-long v10, v7

    #@71
    add-long v4, v0, v10

    #@73
    .line 1745
    cmp-long v9, p1, v4

    #@75
    if-gez v9, :cond_3

    #@77
    .line 1746
    const/4 v9, 0x4

    #@78
    iput v9, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    #@7a
    .line 1755
    .end local v0    # "anyUserActivity":J
    :cond_3
    :goto_2
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    #@7c
    const/4 v10, 0x4

    #@7d
    if-eq v9, v10, :cond_5

    #@7f
    if-eqz v8, :cond_5

    #@81
    .line 1756
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    #@83
    and-int/lit8 v9, v9, 0x3

    #@85
    if-eqz v9, :cond_4

    #@87
    .line 1759
    cmp-long v9, v4, p1

    #@89
    if-ltz v9, :cond_4

    #@8b
    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    #@8d
    const-wide/16 v12, -0x1

    #@8f
    cmp-long v9, v10, v12

    #@91
    if-nez v9, :cond_4

    #@93
    .line 1761
    iput-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    #@95
    .line 1764
    :cond_4
    const/4 v9, 0x4

    #@96
    iput v9, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    #@98
    .line 1765
    const-wide/16 v4, -0x1

    #@9a
    .line 1768
    :cond_5
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    #@9c
    if-eqz v9, :cond_6

    #@9e
    const-wide/16 v10, 0x0

    #@a0
    cmp-long v9, v4, v10

    #@a2
    if-ltz v9, :cond_6

    #@a4
    .line 1769
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@a6
    const/4 v10, 0x1

    #@a7
    invoke-virtual {v9, v10}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    #@aa
    move-result-object v2

    #@ab
    .line 1770
    .local v2, "msg":Landroid/os/Message;
    const/4 v9, 0x1

    #@ac
    invoke-virtual {v2, v9}, Landroid/os/Message;->setAsynchronous(Z)V

    #@af
    .line 1771
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@b1
    invoke-virtual {v9, v2, v4, v5}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    #@b4
    .line 1699
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "screenDimDuration":I
    .end local v4    # "nextTimeout":J
    .end local v6    # "screenOffTimeout":I
    .end local v7    # "sleepTimeout":I
    .end local v8    # "userInactiveOverride":Z
    :cond_6
    :goto_3
    return-void

    #@b5
    .line 1708
    .restart local v4    # "nextTimeout":J
    :cond_7
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@b7
    const/4 v10, 0x3

    #@b8
    if-eq v9, v10, :cond_0

    #@ba
    .line 1774
    const/4 v9, 0x0

    #@bb
    iput v9, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    #@bd
    goto :goto_3

    #@be
    .line 1721
    .restart local v3    # "screenDimDuration":I
    .restart local v6    # "screenOffTimeout":I
    .restart local v7    # "sleepTimeout":I
    .restart local v8    # "userInactiveOverride":Z
    :cond_8
    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    #@c0
    int-to-long v12, v6

    #@c1
    add-long v4, v10, v12

    #@c3
    .line 1722
    cmp-long v9, p1, v4

    #@c5
    if-gez v9, :cond_1

    #@c7
    .line 1723
    const/4 v9, 0x2

    #@c8
    iput v9, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    #@ca
    goto/16 :goto_0

    #@cc
    .line 1733
    :cond_9
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@ce
    iget v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    #@d0
    const/4 v10, 0x2

    #@d1
    if-ne v9, v10, :cond_2

    #@d3
    .line 1734
    const/4 v9, 0x2

    #@d4
    iput v9, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    #@d6
    goto :goto_1

    #@d7
    .line 1750
    :cond_a
    const/4 v9, 0x4

    #@d8
    iput v9, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    #@da
    .line 1751
    const-wide/16 v4, -0x1

    #@dc
    goto :goto_2
.end method

.method private updateWakeLockDisabledStatesLocked()V
    .locals 6

    #@0
    .prologue
    .line 2603
    const/4 v0, 0x0

    #@1
    .line 2604
    .local v0, "changed":Z
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v2

    #@7
    .line 2605
    .local v2, "numWakeLocks":I
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    #@a
    .line 2606
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    #@12
    .line 2607
    .local v3, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v4, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    #@14
    const v5, 0xffff

    #@17
    and-int/2addr v4, v5

    #@18
    .line 2608
    const/4 v5, 0x1

    #@19
    .line 2607
    if-ne v4, v5, :cond_0

    #@1b
    .line 2609
    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    #@1e
    move-result v4

    #@1f
    if-eqz v4, :cond_0

    #@21
    .line 2610
    const/4 v0, 0x1

    #@22
    .line 2611
    iget-boolean v4, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    #@24
    if-eqz v4, :cond_1

    #@26
    .line 2613
    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    #@29
    .line 2605
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 2615
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    #@2f
    goto :goto_1

    #@30
    .line 2620
    .end local v3    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_2
    if-eqz v0, :cond_3

    #@32
    .line 2621
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@34
    or-int/lit8 v4, v4, 0x1

    #@36
    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@38
    .line 2622
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    #@3b
    .line 2602
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
    .line 1589
    and-int/lit8 v3, p1, 0x3

    #@3
    if-eqz v3, :cond_6

    #@5
    .line 1590
    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@7
    .line 1592
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v1

    #@d
    .line 1593
    .local v1, "numWakeLocks":I
    const/4 v0, 0x0

    #@e
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@10
    .line 1594
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    #@18
    .line 1595
    .local v2, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    #@1a
    const v4, 0xffff

    #@1d
    and-int/2addr v3, v4

    #@1e
    sparse-switch v3, :sswitch_data_0

    #@21
    .line 1593
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 1597
    :sswitch_0
    iget-boolean v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    #@26
    if-nez v3, :cond_0

    #@28
    .line 1599
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@2a
    or-int/lit8 v3, v3, 0x1

    #@2c
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@2e
    goto :goto_1

    #@2f
    .line 1603
    :sswitch_1
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@31
    or-int/lit8 v3, v3, 0xa

    #@33
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@35
    goto :goto_1

    #@36
    .line 1606
    :sswitch_2
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@38
    or-int/lit8 v3, v3, 0x2

    #@3a
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@3c
    goto :goto_1

    #@3d
    .line 1609
    :sswitch_3
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@3f
    or-int/lit8 v3, v3, 0x4

    #@41
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@43
    goto :goto_1

    #@44
    .line 1612
    :sswitch_4
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@46
    or-int/lit8 v3, v3, 0x10

    #@48
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@4a
    goto :goto_1

    #@4b
    .line 1615
    :sswitch_5
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@4d
    or-int/lit8 v3, v3, 0x40

    #@4f
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@51
    goto :goto_1

    #@52
    .line 1618
    :sswitch_6
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@54
    or-int/lit16 v3, v3, 0x80

    #@56
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@58
    goto :goto_1

    #@59
    .line 1624
    .end local v2    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_1
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@5b
    const/4 v4, 0x3

    #@5c
    if-eq v3, v4, :cond_2

    #@5e
    .line 1625
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@60
    and-int/lit16 v3, v3, -0xc1

    #@62
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@64
    .line 1627
    :cond_2
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@66
    if-eqz v3, :cond_3

    #@68
    .line 1628
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@6a
    and-int/lit8 v3, v3, 0x40

    #@6c
    if-eqz v3, :cond_4

    #@6e
    .line 1629
    :cond_3
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@70
    and-int/lit8 v3, v3, -0xf

    #@72
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@74
    .line 1631
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@76
    if-nez v3, :cond_4

    #@78
    .line 1632
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@7a
    and-int/lit8 v3, v3, -0x11

    #@7c
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@7e
    .line 1637
    :cond_4
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@80
    and-int/lit8 v3, v3, 0x6

    #@82
    if-eqz v3, :cond_5

    #@84
    .line 1638
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@86
    const/4 v4, 0x1

    #@87
    if-ne v3, v4, :cond_7

    #@89
    .line 1639
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@8b
    or-int/lit8 v3, v3, 0x21

    #@8d
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@8f
    .line 1644
    :cond_5
    :goto_2
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@91
    and-int/lit16 v3, v3, 0x80

    #@93
    if-eqz v3, :cond_6

    #@95
    .line 1645
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@97
    or-int/lit8 v3, v3, 0x1

    #@99
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@9b
    .line 1588
    .end local v0    # "i":I
    .end local v1    # "numWakeLocks":I
    :cond_6
    return-void

    #@9c
    .line 1640
    .restart local v0    # "i":I
    .restart local v1    # "numWakeLocks":I
    :cond_7
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@9e
    const/4 v4, 0x2

    #@9f
    if-ne v3, v4, :cond_5

    #@a1
    .line 1641
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@a3
    or-int/lit8 v3, v3, 0x1

    #@a5
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@a7
    goto :goto_2

    #@a8
    .line 1595
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
    .line 999
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v10

    #@3
    .line 1000
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    #@6
    move-result v9

    #@7
    .line 1001
    .local v9, "index":I
    if-gez v9, :cond_0

    #@9
    .line 1006
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
    .line 1007
    const-string/jumbo v3, " from uid "

    #@1e
    .line 1006
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
    .line 999
    .end local v9    # "index":I
    :catchall_0
    move-exception v0

    #@2f
    monitor-exit v10

    #@30
    throw v0

    #@31
    .line 1010
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
    .line 1016
    .local v1, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    invoke-virtual {v1, p2}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameWorkSource(Landroid/os/WorkSource;)Z

    #@3c
    move-result v0

    #@3d
    if-nez v0, :cond_1

    #@3f
    .line 1017
    iget v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    #@41
    iget-object v3, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    #@43
    .line 1018
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
    .line 1017
    invoke-direct/range {v0 .. v8}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    #@4f
    .line 1020
    iput-object p3, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    #@51
    .line 1021
    invoke-virtual {v1, p2}, Lcom/android/server/power/PowerManagerService$WakeLock;->updateWorkSource(Landroid/os/WorkSource;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@54
    :cond_1
    monitor-exit v10

    #@55
    .line 998
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
    .line 1842
    const/4 v0, 0x0

    #@4
    .line 1843
    .local v0, "changed":Z
    and-int/lit16 v1, p1, 0x697

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1846
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
    .line 1850
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@16
    move-result-wide v2

    #@17
    .line 1851
    .local v2, "time":J
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->shouldNapAtBedTimeLocked()Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_1

    #@1d
    .line 1852
    invoke-direct {p0, v2, v3, v6}, Lcom/android/server/power/PowerManagerService;->napNoUpdateLocked(JI)Z

    #@20
    move-result v0

    #@21
    .line 1859
    .end local v0    # "changed":Z
    .end local v2    # "time":J
    :cond_0
    :goto_0
    return v0

    #@22
    .line 1855
    .restart local v0    # "changed":Z
    .restart local v2    # "time":J
    :cond_1
    const/4 v4, 0x2

    #@23
    move-object v1, p0

    #@24
    .line 1854
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
    .line 1126
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
    .line 1125
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
    .line 1130
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1131
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1132
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v1

    #@d
    .line 1129
    return-void

    #@e
    .line 1130
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
    .line 1144
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
    .line 1146
    :cond_0
    return v2

    #@12
    .line 1145
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    #@14
    if-eqz v0, :cond_0

    #@16
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    #@18
    if-eqz v0, :cond_0

    #@1a
    .line 1149
    const-string/jumbo v0, "userActivity"

    #@1d
    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@20
    .line 1151
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    #@22
    cmp-long v0, p1, v0

    #@24
    if-lez v0, :cond_2

    #@26
    .line 1152
    const/4 v0, 0x2

    #@27
    const/4 v1, 0x0

    #@28
    invoke-direct {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->powerHintInternal(II)V

    #@2b
    .line 1153
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    #@2d
    .line 1156
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    #@2f
    invoke-virtual {v0, p3, p5}, Lcom/android/server/power/Notifier;->onUserActivity(II)V

    #@32
    .line 1158
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    #@34
    if-eqz v0, :cond_3

    #@36
    .line 1159
    const/4 v0, 0x0

    #@37
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    #@39
    .line 1160
    const-wide/16 v0, -0x1

    #@3b
    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    #@3d
    .line 1163
    :cond_3
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@3f
    if-eqz v0, :cond_4

    #@41
    .line 1164
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@43
    const/4 v1, 0x3

    #@44
    if-ne v0, v1, :cond_5

    #@46
    .line 1184
    :cond_4
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@49
    .line 1166
    return v2

    #@4a
    .line 1165
    :cond_5
    and-int/lit8 v0, p4, 0x2

    #@4c
    if-nez v0, :cond_4

    #@4e
    .line 1169
    and-int/lit8 v0, p4, 0x1

    #@50
    if-eqz v0, :cond_6

    #@52
    .line 1170
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    #@54
    cmp-long v0, p1, v0

    #@56
    if-lez v0, :cond_7

    #@58
    .line 1171
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    #@5a
    cmp-long v0, p1, v0

    #@5c
    if-lez v0, :cond_7

    #@5e
    .line 1172
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    #@60
    .line 1173
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@62
    or-int/lit8 v0, v0, 0x4

    #@64
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@66
    .line 1184
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@69
    .line 1174
    return v3

    #@6a
    .line 1177
    :cond_6
    :try_start_2
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    #@6c
    cmp-long v0, p1, v0

    #@6e
    if-lez v0, :cond_7

    #@70
    .line 1178
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    #@72
    .line 1179
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@74
    or-int/lit8 v0, v0, 0x4

    #@76
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@78
    .line 1184
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@7b
    .line 1180
    return v3

    #@7c
    .line 1184
    :cond_7
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@7f
    .line 1186
    return v2

    #@80
    .line 1183
    :catchall_0
    move-exception v0

    #@81
    .line 1184
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@84
    .line 1183
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
    .line 1191
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1192
    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1193
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v1

    #@d
    .line 1190
    return-void

    #@e
    .line 1191
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
    .line 1204
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
    .line 1206
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0

    #@d
    .line 1205
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    #@f
    if-eqz v0, :cond_0

    #@11
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 1209
    const-string/jumbo v0, "wakeUp"

    #@18
    const-wide/32 v2, 0x20000

    #@1b
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@1e
    .line 1211
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@20
    packed-switch v0, :pswitch_data_0

    #@23
    .line 1223
    :goto_0
    :pswitch_0
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    #@25
    .line 1224
    const/4 v0, 0x1

    #@26
    const/4 v1, 0x0

    #@27
    invoke-direct {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(II)V

    #@2a
    .line 1226
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    #@2c
    invoke-virtual {v0, p3, p4, p5, p6}, Lcom/android/server/power/Notifier;->onWakeUp(Ljava/lang/String;ILjava/lang/String;I)V

    #@2f
    .line 1228
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
    .line 1227
    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    .line 1230
    const-wide/32 v0, 0x20000

    #@3a
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@3d
    .line 1232
    const/4 v0, 0x1

    #@3e
    return v0

    #@3f
    .line 1213
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
    .line 1229
    :catchall_0
    move-exception v0

    #@62
    .line 1230
    const-wide/32 v2, 0x20000

    #@65
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@68
    .line 1229
    throw v0

    #@69
    .line 1216
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
    .line 1219
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
    .line 1211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method checkForLongWakeLocks()V
    .locals 22

    #@0
    .prologue
    .line 1657
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@4
    move-object/from16 v16, v0

    #@6
    monitor-enter v16

    #@7
    .line 1658
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@a
    move-result-wide v10

    #@b
    .line 1659
    .local v10, "now":J
    move-object/from16 v0, p0

    #@d
    iput-wide v10, v0, Lcom/android/server/power/PowerManagerService;->mNotifyLongDispatched:J

    #@f
    .line 1660
    const-wide/32 v18, 0xea60

    #@12
    sub-long v14, v10, v18

    #@14
    .line 1661
    .local v14, "when":J
    const-wide v8, 0x7fffffffffffffffL

    #@19
    .line 1662
    .local v8, "nextCheckTime":J
    move-object/from16 v0, p0

    #@1b
    iget-object v13, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    #@20
    move-result v7

    #@21
    .line 1663
    .local v7, "numWakeLocks":I
    const/4 v6, 0x0

    #@22
    .local v6, "i":I
    :goto_0
    if-ge v6, v7, :cond_3

    #@24
    .line 1664
    move-object/from16 v0, p0

    #@26
    iget-object v13, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    #@28
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2b
    move-result-object v12

    #@2c
    check-cast v12, Lcom/android/server/power/PowerManagerService$WakeLock;

    #@2e
    .line 1665
    .local v12, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v13, v12, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    #@30
    const v17, 0xffff

    #@33
    and-int v13, v13, v17

    #@35
    .line 1666
    const/16 v17, 0x1

    #@37
    .line 1665
    move/from16 v0, v17

    #@39
    if-ne v13, v0, :cond_0

    #@3b
    .line 1667
    iget-boolean v13, v12, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    #@3d
    if-eqz v13, :cond_0

    #@3f
    iget-boolean v13, v12, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    #@41
    if-eqz v13, :cond_1

    #@43
    .line 1663
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    #@45
    goto :goto_0

    #@46
    .line 1668
    :cond_1
    iget-wide v0, v12, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    #@48
    move-wide/from16 v18, v0

    #@4a
    cmp-long v13, v18, v14

    #@4c
    if-gez v13, :cond_2

    #@4e
    .line 1670
    move-object/from16 v0, p0

    #@50
    invoke-direct {v0, v12}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockLongStartedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@53
    goto :goto_1

    #@54
    .line 1657
    .end local v6    # "i":I
    .end local v7    # "numWakeLocks":I
    .end local v8    # "nextCheckTime":J
    .end local v10    # "now":J
    .end local v12    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v14    # "when":J
    :catchall_0
    move-exception v13

    #@55
    monitor-exit v16

    #@56
    throw v13

    #@57
    .line 1673
    .restart local v6    # "i":I
    .restart local v7    # "numWakeLocks":I
    .restart local v8    # "nextCheckTime":J
    .restart local v10    # "now":J
    .restart local v12    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .restart local v14    # "when":J
    :cond_2
    :try_start_1
    iget-wide v0, v12, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    #@59
    move-wide/from16 v18, v0

    #@5b
    const-wide/32 v20, 0xea60

    #@5e
    add-long v4, v18, v20

    #@60
    .line 1674
    .local v4, "checkTime":J
    cmp-long v13, v4, v8

    #@62
    if-gez v13, :cond_0

    #@64
    .line 1675
    move-wide v8, v4

    #@65
    goto :goto_1

    #@66
    .line 1681
    .end local v4    # "checkTime":J
    .end local v12    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_3
    const-wide/16 v18, 0x0

    #@68
    move-wide/from16 v0, v18

    #@6a
    move-object/from16 v2, p0

    #@6c
    iput-wide v0, v2, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    #@6e
    .line 1682
    move-object/from16 v0, p0

    #@70
    iget-object v13, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@72
    const/16 v17, 0x4

    #@74
    move/from16 v0, v17

    #@76
    invoke-virtual {v13, v0}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    #@79
    .line 1683
    const-wide v18, 0x7fffffffffffffffL

    #@7e
    cmp-long v13, v8, v18

    #@80
    if-eqz v13, :cond_4

    #@82
    .line 1684
    move-object/from16 v0, p0

    #@84
    iput-wide v8, v0, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    #@86
    .line 1685
    move-object/from16 v0, p0

    #@88
    invoke-direct {v0, v8, v9}, Lcom/android/server/power/PowerManagerService;->enqueueNotifyLongMsgLocked(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8b
    :goto_2
    monitor-exit v16

    #@8c
    .line 1656
    return-void

    #@8d
    .line 1687
    :cond_4
    const-wide/16 v18, 0x0

    #@8f
    :try_start_2
    move-wide/from16 v0, v18

    #@91
    move-object/from16 v2, p0

    #@93
    iput-wide v0, v2, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@95
    goto :goto_2
.end method

.method isDeviceIdleModeInternal()Z
    .locals 2

    #@0
    .prologue
    .line 2457
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 2458
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 2457
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method isLightDeviceIdleModeInternal()Z
    .locals 2

    #@0
    .prologue
    .line 2463
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 2464
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 2463
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public monitor()V
    .locals 1

    #@0
    .prologue
    .line 2821
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    monitor-exit v0

    #@4
    .line 2819
    return-void
.end method

.method public onBootPhase(I)V
    .locals 9
    .param p1, "phase"    # I

    #@0
    .prologue
    const/16 v4, 0x3e8

    #@2
    const/4 v7, 0x0

    #@3
    .line 549
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v8

    #@6
    .line 550
    const/16 v1, 0x258

    #@8
    if-ne p1, v1, :cond_1

    #@a
    .line 551
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->incrementBootCount()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    :cond_0
    :goto_0
    monitor-exit v8

    #@e
    .line 548
    return-void

    #@f
    .line 553
    :cond_1
    if-ne p1, v4, :cond_0

    #@11
    .line 554
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@14
    move-result-wide v2

    #@15
    .line 555
    .local v2, "now":J
    const/4 v1, 0x1

    #@16
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    #@18
    .line 556
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@1a
    or-int/lit8 v1, v1, 0x10

    #@1c
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@1e
    .line 558
    const/4 v4, 0x0

    #@1f
    const/4 v5, 0x0

    #@20
    const/16 v6, 0x3e8

    #@22
    move-object v1, p0

    #@23
    .line 557
    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    #@26
    .line 559
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    #@29
    .line 561
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompletedRunnables:[Ljava/lang/Runnable;

    #@2b
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    #@2e
    move-result v1

    #@2f
    if-nez v1, :cond_2

    #@31
    .line 562
    const-string/jumbo v1, "PowerManagerService"

    #@34
    new-instance v4, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v5, "Posting "

    #@3c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v4

    #@40
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mBootCompletedRunnables:[Ljava/lang/Runnable;

    #@42
    array-length v5, v5

    #@43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    const-string/jumbo v5, " delayed runnables"

    #@4a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v4

    #@4e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v4

    #@52
    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@55
    .line 563
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mBootCompletedRunnables:[Ljava/lang/Runnable;

    #@57
    array-length v5, v4

    #@58
    move v1, v7

    #@59
    :goto_1
    if-ge v1, v5, :cond_2

    #@5b
    aget-object v0, v4, v1

    #@5d
    .line 564
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    #@60
    move-result-object v6

    #@61
    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@64
    .line 563
    add-int/lit8 v1, v1, 0x1

    #@66
    goto :goto_1

    #@67
    .line 567
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_2
    const/4 v1, 0x0

    #@68
    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompletedRunnables:[Ljava/lang/Runnable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6a
    goto :goto_0

    #@6b
    .line 549
    .end local v2    # "now":J
    :catchall_0
    move-exception v1

    #@6c
    monitor-exit v8

    #@6d
    throw v1
.end method

.method public onStart()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 540
    const-string/jumbo v0, "power"

    #@4
    new-instance v1, Lcom/android/server/power/PowerManagerService$BinderService;

    #@6
    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$BinderService;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$BinderService;)V

    #@9
    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@c
    .line 541
    const-class v0, Landroid/os/PowerManagerInternal;

    #@e
    new-instance v1, Lcom/android/server/power/PowerManagerService$LocalService;

    #@10
    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$LocalService;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$LocalService;)V

    #@13
    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    #@16
    .line 543
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    #@1d
    .line 544
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    #@20
    move-result-object v0

    #@21
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@23
    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;)V

    #@26
    .line 539
    return-void
.end method

.method setDeviceIdleModeInternal(Z)Z
    .locals 2
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 2541
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2542
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-ne v0, p1, :cond_0

    #@7
    .line 2543
    const/4 v0, 0x0

    #@8
    monitor-exit v1

    #@9
    return v0

    #@a
    .line 2545
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    #@c
    .line 2546
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    monitor-exit v1

    #@10
    .line 2548
    if-eqz p1, :cond_1

    #@12
    .line 2549
    const-string/jumbo v0, "power"

    #@15
    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnPhase(Ljava/lang/String;)V

    #@18
    .line 2553
    :goto_0
    const/4 v0, 0x1

    #@19
    return v0

    #@1a
    .line 2541
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0

    #@1d
    .line 2551
    :cond_1
    const-string/jumbo v0, "power"

    #@20
    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffPhase(Ljava/lang/String;)V

    #@23
    goto :goto_0
.end method

.method setDeviceIdleTempWhitelistInternal([I)V
    .locals 2
    .param p1, "appids"    # [I

    #@0
    .prologue
    .line 2576
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2577
    :try_start_0
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    #@5
    .line 2578
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2579
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v1

    #@d
    .line 2575
    return-void

    #@e
    .line 2576
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
    .line 2567
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2568
    :try_start_0
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    #@5
    .line 2569
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2570
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v1

    #@d
    .line 2566
    return-void

    #@e
    .line 2567
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method setLightDeviceIdleModeInternal(Z)Z
    .locals 2
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 2557
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2558
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    #@5
    if-eq v0, p1, :cond_0

    #@7
    .line 2559
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 2560
    const/4 v0, 0x1

    #@a
    monitor-exit v1

    #@b
    return v0

    #@c
    .line 2562
    :cond_0
    const/4 v0, 0x0

    #@d
    monitor-exit v1

    #@e
    return v0

    #@f
    .line 2557
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method setMaximumScreenOffTimeoutFromDeviceAdminInternal(I)V
    .locals 2
    .param p1, "timeMs"    # I

    #@0
    .prologue
    .line 2533
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2534
    :try_start_0
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    #@5
    .line 2535
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@7
    or-int/lit8 v0, v0, 0x20

    #@9
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@b
    .line 2536
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit v1

    #@f
    .line 2532
    return-void

    #@10
    .line 2533
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
    .line 2528
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    .line 2529
    const-string/jumbo v1, "stay_on_while_plugged_in"

    #@9
    .line 2528
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@c
    .line 2527
    return-void
.end method

.method public systemReady(Lcom/android/internal/app/IAppOpsService;)V
    .locals 14
    .param p1, "appOps"    # Lcom/android/internal/app/IAppOpsService;

    #@0
    .prologue
    .line 573
    iget-object v13, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v13

    #@3
    .line 574
    const/4 v0, 0x1

    #@4
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    #@6
    .line 575
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    #@8
    .line 576
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
    .line 577
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
    .line 578
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
    .line 579
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
    .line 581
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    #@32
    const-string/jumbo v1, "power"

    #@35
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@38
    move-result-object v9

    #@39
    check-cast v9, Landroid/os/PowerManager;

    #@3b
    .line 582
    .local v9, "pm":Landroid/os/PowerManager;
    invoke-virtual {v9}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    #@3e
    move-result v0

    #@3f
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    #@41
    .line 583
    invoke-virtual {v9}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    #@44
    move-result v0

    #@45
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    #@47
    .line 584
    invoke-virtual {v9}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    #@4a
    move-result v0

    #@4b
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    #@4d
    .line 586
    new-instance v11, Landroid/hardware/SystemSensorManager;

    #@4f
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    #@51
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@53
    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->getLooper()Landroid/os/Looper;

    #@56
    move-result-object v1

    #@57
    invoke-direct {v11, v0, v1}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    #@5a
    .line 590
    .local v11, "sensorManager":Landroid/hardware/SensorManager;
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    #@5d
    move-result-object v0

    #@5e
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@60
    .line 591
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
    .line 592
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    #@6c
    const-string/jumbo v5, "PowerManagerService.Broadcasts"

    #@6f
    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    #@72
    move-result-object v5

    #@73
    .line 593
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@75
    .line 591
    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/Notifier;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/internal/app/IAppOpsService;Lcom/android/server/power/SuspendBlocker;Landroid/view/WindowManagerPolicy;)V

    #@78
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    #@7a
    .line 595
    new-instance v0, Lcom/android/server/power/WirelessChargerDetector;

    #@7c
    .line 596
    const-string/jumbo v1, "PowerManagerService.WirelessChargerDetector"

    #@7f
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    #@82
    move-result-object v1

    #@83
    .line 597
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@85
    .line 595
    invoke-direct {v0, v11, v1, v2}, Lcom/android/server/power/WirelessChargerDetector;-><init>(Landroid/hardware/SensorManager;Lcom/android/server/power/SuspendBlocker;Landroid/os/Handler;)V

    #@88
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    #@8a
    .line 598
    new-instance v0, Lcom/android/server/power/PowerManagerService$SettingsObserver;

    #@8c
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@8e
    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerService$SettingsObserver;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Handler;)V

    #@91
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    #@93
    .line 600
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
    .line 601
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
    .line 604
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    #@a8
    .line 605
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    #@aa
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@ac
    .line 604
    invoke-virtual {v0, v1, v2, v11}, Landroid/hardware/display/DisplayManagerInternal;->initPowerManagement(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;)V

    #@af
    .line 608
    new-instance v8, Landroid/content/IntentFilter;

    #@b1
    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    #@b4
    .line 609
    .local v8, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.BATTERY_CHANGED"

    #@b7
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@ba
    .line 610
    const/16 v0, 0x3e8

    #@bc
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    #@bf
    .line 611
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
    invoke-virtual {v0, v1, v8, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@cd
    .line 613
    new-instance v8, Landroid/content/IntentFilter;

    #@cf
    .end local v8    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    #@d2
    .line 614
    .restart local v8    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.DREAMING_STARTED"

    #@d5
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@d8
    .line 615
    const-string/jumbo v0, "android.intent.action.DREAMING_STOPPED"

    #@db
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@de
    .line 616
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
    invoke-virtual {v0, v1, v8, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@ec
    .line 618
    new-instance v8, Landroid/content/IntentFilter;

    #@ee
    .end local v8    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    #@f1
    .line 619
    .restart local v8    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    #@f4
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@f7
    .line 620
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
    invoke-virtual {v0, v1, v8, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@105
    .line 622
    new-instance v8, Landroid/content/IntentFilter;

    #@107
    .end local v8    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    #@10a
    .line 623
    .restart local v8    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.DOCK_EVENT"

    #@10d
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@110
    .line 624
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
    invoke-virtual {v0, v1, v8, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@11e
    .line 627
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    #@120
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@123
    move-result-object v10

    #@124
    .line 629
    .local v10, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v0, "screensaver_enabled"

    #@127
    .line 628
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@12a
    move-result-object v0

    #@12b
    .line 630
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    #@12d
    const/4 v2, 0x0

    #@12e
    const/4 v3, -0x1

    #@12f
    .line 628
    invoke-virtual {v10, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@132
    .line 632
    const-string/jumbo v0, "screensaver_activate_on_sleep"

    #@135
    .line 631
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@138
    move-result-object v0

    #@139
    .line 633
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    #@13b
    const/4 v2, 0x0

    #@13c
    const/4 v3, -0x1

    #@13d
    .line 631
    invoke-virtual {v10, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@140
    .line 635
    const-string/jumbo v0, "screensaver_activate_on_dock"

    #@143
    .line 634
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@146
    move-result-object v0

    #@147
    .line 636
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    #@149
    const/4 v2, 0x0

    #@14a
    const/4 v3, -0x1

    #@14b
    .line 634
    invoke-virtual {v10, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@14e
    .line 638
    const-string/jumbo v0, "screen_off_timeout"

    #@151
    .line 637
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@154
    move-result-object v0

    #@155
    .line 639
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    #@157
    const/4 v2, 0x0

    #@158
    const/4 v3, -0x1

    #@159
    .line 637
    invoke-virtual {v10, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@15c
    .line 641
    const-string/jumbo v0, "sleep_timeout"

    #@15f
    .line 640
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@162
    move-result-object v0

    #@163
    .line 642
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    #@165
    const/4 v2, 0x0

    #@166
    const/4 v3, -0x1

    #@167
    .line 640
    invoke-virtual {v10, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@16a
    .line 644
    const-string/jumbo v0, "stay_on_while_plugged_in"

    #@16d
    .line 643
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@170
    move-result-object v0

    #@171
    .line 645
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    #@173
    const/4 v2, 0x0

    #@174
    const/4 v3, -0x1

    #@175
    .line 643
    invoke-virtual {v10, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@178
    .line 647
    const-string/jumbo v0, "screen_brightness"

    #@17b
    .line 646
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@17e
    move-result-object v0

    #@17f
    .line 648
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    #@181
    const/4 v2, 0x0

    #@182
    const/4 v3, -0x1

    #@183
    .line 646
    invoke-virtual {v10, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@186
    .line 650
    const-string/jumbo v0, "screen_brightness_mode"

    #@189
    .line 649
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@18c
    move-result-object v0

    #@18d
    .line 651
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    #@18f
    const/4 v2, 0x0

    #@190
    const/4 v3, -0x1

    #@191
    .line 649
    invoke-virtual {v10, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@194
    .line 653
    const-string/jumbo v0, "screen_auto_brightness_adj"

    #@197
    .line 652
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@19a
    move-result-object v0

    #@19b
    .line 654
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    #@19d
    const/4 v2, 0x0

    #@19e
    const/4 v3, -0x1

    #@19f
    .line 652
    invoke-virtual {v10, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@1a2
    .line 656
    const-string/jumbo v0, "low_power"

    #@1a5
    .line 655
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@1a8
    move-result-object v0

    #@1a9
    .line 657
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    #@1ab
    const/4 v2, 0x0

    #@1ac
    const/4 v3, -0x1

    #@1ad
    .line 655
    invoke-virtual {v10, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@1b0
    .line 659
    const-string/jumbo v0, "low_power_trigger_level"

    #@1b3
    .line 658
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@1b6
    move-result-object v0

    #@1b7
    .line 660
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    #@1b9
    const/4 v2, 0x0

    #@1ba
    const/4 v3, -0x1

    #@1bb
    .line 658
    invoke-virtual {v10, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@1be
    .line 662
    const-string/jumbo v0, "theater_mode_on"

    #@1c1
    .line 661
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@1c4
    move-result-object v0

    #@1c5
    .line 663
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    #@1c7
    const/4 v2, 0x0

    #@1c8
    const/4 v3, -0x1

    #@1c9
    .line 661
    invoke-virtual {v10, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@1cc
    .line 665
    const-string/jumbo v0, "double_tap_to_wake"

    #@1cf
    .line 664
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@1d2
    move-result-object v0

    #@1d3
    .line 666
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    #@1d5
    const/4 v2, 0x0

    #@1d6
    const/4 v3, -0x1

    #@1d7
    .line 664
    invoke-virtual {v10, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@1da
    .line 668
    const-string/jumbo v0, "brightness_use_twilight"

    #@1dd
    .line 667
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@1e0
    move-result-object v0

    #@1e1
    .line 669
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    #@1e3
    const/4 v2, 0x0

    #@1e4
    const/4 v3, -0x1

    #@1e5
    .line 667
    invoke-virtual {v10, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@1e8
    .line 671
    const-string/jumbo v0, "vrmanager"

    #@1eb
    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    #@1ee
    move-result-object v12

    #@1ef
    check-cast v12, Landroid/service/vr/IVrManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f1
    .line 673
    .local v12, "vrManager":Landroid/service/vr/IVrManager;
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    #@1f3
    invoke-interface {v12, v0}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f6
    .line 678
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->readConfigurationLocked()V

    #@1f9
    .line 679
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSettingsLocked()V

    #@1fc
    .line 680
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@1fe
    or-int/lit16 v0, v0, 0x100

    #@200
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@202
    .line 681
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@205
    monitor-exit v13

    #@206
    .line 572
    return-void

    #@207
    .line 674
    :catch_0
    move-exception v7

    #@208
    .line 675
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v0, "PowerManagerService"

    #@20b
    new-instance v1, Ljava/lang/StringBuilder;

    #@20d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@210
    const-string/jumbo v2, "Failed to register VR mode state listener: "

    #@213
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@216
    move-result-object v1

    #@217
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21a
    move-result-object v1

    #@21b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21e
    move-result-object v1

    #@21f
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@222
    goto :goto_0

    #@223
    .line 573
    .end local v7    # "e":Landroid/os/RemoteException;
    .end local v8    # "filter":Landroid/content/IntentFilter;
    .end local v9    # "pm":Landroid/os/PowerManager;
    .end local v10    # "resolver":Landroid/content/ContentResolver;
    .end local v11    # "sensorManager":Landroid/hardware/SensorManager;
    .end local v12    # "vrManager":Landroid/service/vr/IVrManager;
    :catchall_0
    move-exception v0

    #@224
    monitor-exit v13

    #@225
    throw v0
.end method

.method uidGoneInternal(I)V
    .locals 2
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 2594
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2595
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@5
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    #@8
    .line 2596
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 2597
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    :cond_0
    monitor-exit v1

    #@10
    .line 2593
    return-void

    #@11
    .line 2594
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
    throw v0
.end method

.method updateUidProcStateInternal(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    #@0
    .prologue
    .line 2585
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2586
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    #@8
    .line 2587
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 2588
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    :cond_0
    monitor-exit v1

    #@10
    .line 2584
    return-void

    #@11
    .line 2585
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
    throw v0
.end method
