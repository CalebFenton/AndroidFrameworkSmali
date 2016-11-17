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
    .line 501
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@7
    .line 196
    new-instance v0, Ljava/lang/Object;

    #@9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@c
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@e
    .line 216
    new-instance v0, Ljava/util/ArrayList;

    #@10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@13
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    #@15
    .line 219
    new-instance v0, Ljava/util/ArrayList;

    #@17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1a
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    #@1c
    .line 248
    new-instance v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@1e
    invoke-direct {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>()V

    #@21
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@23
    .line 301
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    #@25
    .line 383
    const v0, 0x7fffffff

    #@28
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    #@2a
    .line 415
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    #@2c
    .line 423
    iput-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    #@2e
    .line 428
    iput-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    #@30
    .line 433
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    #@32
    .line 439
    const/high16 v0, 0x7fc00000    # NaNf

    #@34
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    #@36
    .line 442
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    #@38
    .line 445
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    #@3a
    .line 448
    const-wide/high16 v0, -0x8000000000000000L

    #@3c
    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    #@3e
    .line 472
    new-array v0, v3, [I

    #@40
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    #@42
    .line 475
    new-array v0, v3, [I

    #@44
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    #@46
    .line 477
    new-instance v0, Landroid/util/SparseIntArray;

    #@48
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@4b
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@4d
    .line 486
    new-instance v0, Ljava/util/ArrayList;

    #@4f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@52
    .line 485
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeListeners:Ljava/util/ArrayList;

    #@54
    .line 2125
    new-instance v0, Lcom/android/server/power/PowerManagerService$1;

    #@56
    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$1;-><init>(Lcom/android/server/power/PowerManagerService;)V

    #@59
    .line 2124
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    #@5b
    .line 2960
    new-instance v0, Lcom/android/server/power/PowerManagerService$2;

    #@5d
    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$2;-><init>(Lcom/android/server/power/PowerManagerService;)V

    #@60
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    #@62
    .line 502
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    #@64
    .line 503
    new-instance v0, Lcom/android/server/ServiceThread;

    #@66
    const-string/jumbo v1, "PowerManagerService"

    #@69
    .line 504
    const/4 v2, -0x4

    #@6a
    .line 503
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    #@6d
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    #@6f
    .line 505
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    #@71
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    #@74
    .line 506
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
    .line 508
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@83
    monitor-enter v1

    #@84
    .line 509
    :try_start_0
    const-string/jumbo v0, "PowerManagerService.WakeLocks"

    #@87
    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    #@8a
    move-result-object v0

    #@8b
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    #@8d
    .line 510
    const-string/jumbo v0, "PowerManagerService.Display"

    #@90
    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    #@93
    move-result-object v0

    #@94
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    #@96
    .line 511
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    #@98
    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    #@9b
    .line 512
    const/4 v0, 0x1

    #@9c
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    #@9e
    .line 513
    const/4 v0, 0x0

    #@9f
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    #@a1
    .line 514
    const/4 v0, 0x1

    #@a2
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    #@a4
    .line 516
    const/4 v0, 0x1

    #@a5
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@a7
    .line 518
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->nativeInit()V

    #@aa
    .line 519
    const/4 v0, 0x0

    #@ab
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V

    #@ae
    .line 520
    const/4 v0, 0x1

    #@af
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->nativeSetInteractive(Z)V

    #@b2
    .line 521
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
    .line 500
    return-void

    #@b9
    .line 508
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
    .line 848
    iget-object v14, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v14

    #@3
    .line 856
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    #@6
    move-result v12

    #@7
    .line 858
    .local v12, "index":I
    if-ltz v12, :cond_2

    #@9
    .line 859
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
    .line 860
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
    .line 862
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
    .line 864
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/power/PowerManagerService$WakeLock;->updateProperties(ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V

    #@45
    .line 866
    :cond_0
    const/4 v13, 0x0

    #@46
    .line 879
    .local v13, "notifyAcquire":Z
    :goto_0
    move/from16 v0, p7

    #@48
    invoke-direct {p0, v1, v0}, Lcom/android/server/power/PowerManagerService;->applyWakeLockFlagsOnAcquireLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    #@4b
    .line 880
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@4d
    or-int/lit8 v2, v2, 0x1

    #@4f
    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@51
    .line 881
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    #@54
    .line 882
    if-eqz v13, :cond_1

    #@56
    .line 888
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@59
    :cond_1
    monitor-exit v14

    #@5a
    .line 847
    return-void

    #@5b
    .line 868
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
    .line 870
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
    .line 874
    :try_start_3
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    #@79
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7c
    .line 875
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    #@7f
    .line 876
    const/4 v13, 0x1

    #@80
    .restart local v13    # "notifyAcquire":Z
    goto :goto_0

    #@81
    .line 871
    .end local v13    # "notifyAcquire":Z
    :catch_0
    move-exception v11

    #@82
    .line 872
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
    .line 848
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
    .line 905
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    #@3
    const/high16 v1, 0x10000000

    #@5
    and-int/2addr v0, v1

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 906
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    #@b
    move-result v0

    #@c
    .line 905
    if-eqz v0, :cond_0

    #@e
    .line 909
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
    .line 910
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    #@1c
    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    #@1f
    move-result-object v6

    #@20
    .line 911
    .local v6, "opPackageName":Ljava/lang/String;
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    #@22
    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->get(I)I

    #@25
    move-result v5

    #@26
    .line 917
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
    .line 904
    .end local v5    # "opUid":I
    .end local v6    # "opPackageName":Ljava/lang/String;
    :cond_0
    return-void

    #@32
    .line 913
    :cond_1
    iget-object v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    #@34
    .line 914
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
    .line 915
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
    .line 974
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    #@3
    const/high16 v1, 0x20000000

    #@5
    and-int/2addr v0, v1

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 975
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    #@b
    move-result v0

    #@c
    .line 974
    if-eqz v0, :cond_0

    #@e
    .line 976
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@11
    move-result-wide v2

    #@12
    .line 979
    iget v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    #@14
    .line 978
    const/4 v5, 0x1

    #@15
    move-object v1, p0

    #@16
    .line 976
    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    #@19
    .line 973
    :cond_0
    return-void
.end method

.method private boostScreenBrightnessInternal(JI)V
    .locals 9
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    #@0
    .prologue
    .line 2575
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v7

    #@3
    .line 2576
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
    .line 2578
    return-void

    #@d
    .line 2577
    :cond_1
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    #@f
    cmp-long v0, p1, v0

    #@11
    if-ltz v0, :cond_0

    #@13
    .line 2581
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
    .line 2582
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    #@36
    .line 2583
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    #@38
    if-nez v0, :cond_2

    #@3a
    .line 2584
    const/4 v0, 0x1

    #@3b
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    #@3d
    .line 2585
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    #@3f
    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onScreenBrightnessBoostChanged()V

    #@42
    .line 2587
    :cond_2
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@44
    or-int/lit16 v0, v0, 0x800

    #@46
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@48
    .line 2590
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
    .line 2589
    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    #@50
    .line 2591
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@53
    monitor-exit v7

    #@54
    .line 2574
    return-void

    #@55
    .line 2575
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
    .line 1973
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
    .line 1942
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@3
    const/4 v1, 0x2

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 1943
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1944
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 1945
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@10
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 1946
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    #@18
    and-int/lit8 v0, v0, 0x7

    #@1a
    if-nez v0, :cond_1

    #@1c
    .line 1949
    :cond_0
    return v2

    #@1d
    .line 1948
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    #@1f
    if-eqz v0, :cond_0

    #@21
    .line 1951
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked()Z

    #@24
    move-result v0

    #@25
    if-nez v0, :cond_5

    #@27
    .line 1952
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    #@29
    if-nez v0, :cond_2

    #@2b
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    #@2d
    if-eqz v0, :cond_3

    #@2f
    .line 1955
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    #@31
    if-nez v0, :cond_4

    #@33
    .line 1956
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    #@35
    if-ltz v0, :cond_4

    #@37
    .line 1957
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    #@39
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    #@3b
    if-ge v0, v1, :cond_4

    #@3d
    .line 1958
    return v2

    #@3e
    .line 1953
    :cond_3
    return v2

    #@3f
    .line 1960
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    #@41
    if-eqz v0, :cond_5

    #@43
    .line 1961
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    #@45
    if-ltz v0, :cond_5

    #@47
    .line 1962
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    #@49
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    #@4b
    if-ge v0, v1, :cond_5

    #@4d
    .line 1963
    return v2

    #@4e
    .line 1966
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
    .line 2902
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
    .line 2418
    new-instance v1, Lcom/android/server/power/PowerManagerService$5;

    #@2
    const-string/jumbo v2, "PowerManagerService.crash()"

    #@5
    invoke-direct {v1, p0, v2, p1}, Lcom/android/server/power/PowerManagerService$5;-><init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;Ljava/lang/String;)V

    #@8
    .line 2425
    .local v1, "t":Ljava/lang/Thread;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    #@b
    .line 2426
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 2417
    :goto_0
    return-void

    #@f
    .line 2427
    :catch_0
    move-exception v0

    #@10
    .line 2428
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
    .line 2882
    new-instance v0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;-><init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V

    #@5
    .line 2883
    .local v0, "suspendBlocker":Lcom/android/server/power/SuspendBlocker;
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a
    .line 2884
    return-object v0
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 14
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 2731
    const-string/jumbo v9, "POWER MANAGER (dumpsys power)\n"

    #@3
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 2734
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@8
    monitor-enter v10

    #@9
    .line 2735
    :try_start_0
    const-string/jumbo v9, "Power Manager State:"

    #@c
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f
    .line 2736
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
    .line 2737
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
    .line 2738
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
    .line 2739
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
    .line 2740
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
    .line 2741
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
    .line 2742
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
    .line 2743
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
    .line 2744
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
    .line 2745
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
    .line 2746
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
    .line 2747
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
    .line 2748
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
    .line 2749
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
    .line 2750
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
    .line 2751
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
    .line 2752
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
    .line 2753
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
    .line 2754
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
    .line 2755
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
    .line 2756
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
    .line 2757
    new-instance v9, Ljava/lang/StringBuilder;

    #@22e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@231
    const-string/jumbo v11, "  mLightDeviceIdleMode="

    #@234
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@237
    move-result-object v9

    #@238
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

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
    .line 2758
    new-instance v9, Ljava/lang/StringBuilder;

    #@247
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@24a
    const-string/jumbo v11, "  mDeviceIdleMode="

    #@24d
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@250
    move-result-object v9

    #@251
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    #@253
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@256
    move-result-object v9

    #@257
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25a
    move-result-object v9

    #@25b
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@25e
    .line 2759
    new-instance v9, Ljava/lang/StringBuilder;

    #@260
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@263
    const-string/jumbo v11, "  mDeviceIdleWhitelist="

    #@266
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@269
    move-result-object v9

    #@26a
    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    #@26c
    invoke-static {v11}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    #@26f
    move-result-object v11

    #@270
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@273
    move-result-object v9

    #@274
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@277
    move-result-object v9

    #@278
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@27b
    .line 2760
    new-instance v9, Ljava/lang/StringBuilder;

    #@27d
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@280
    const-string/jumbo v11, "  mDeviceIdleTempWhitelist="

    #@283
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@286
    move-result-object v9

    #@287
    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    #@289
    invoke-static {v11}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    #@28c
    move-result-object v11

    #@28d
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@290
    move-result-object v9

    #@291
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@294
    move-result-object v9

    #@295
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@298
    .line 2761
    new-instance v9, Ljava/lang/StringBuilder;

    #@29a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@29d
    const-string/jumbo v11, "  mLastWakeTime="

    #@2a0
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a3
    move-result-object v9

    #@2a4
    iget-wide v12, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    #@2a6
    invoke-static {v12, v13}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    #@2a9
    move-result-object v11

    #@2aa
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ad
    move-result-object v9

    #@2ae
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b1
    move-result-object v9

    #@2b2
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2b5
    .line 2762
    new-instance v9, Ljava/lang/StringBuilder;

    #@2b7
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@2ba
    const-string/jumbo v11, "  mLastSleepTime="

    #@2bd
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c0
    move-result-object v9

    #@2c1
    iget-wide v12, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    #@2c3
    invoke-static {v12, v13}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    #@2c6
    move-result-object v11

    #@2c7
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ca
    move-result-object v9

    #@2cb
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2ce
    move-result-object v9

    #@2cf
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2d2
    .line 2763
    new-instance v9, Ljava/lang/StringBuilder;

    #@2d4
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@2d7
    const-string/jumbo v11, "  mLastUserActivityTime="

    #@2da
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2dd
    move-result-object v9

    #@2de
    iget-wide v12, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    #@2e0
    invoke-static {v12, v13}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    #@2e3
    move-result-object v11

    #@2e4
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e7
    move-result-object v9

    #@2e8
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2eb
    move-result-object v9

    #@2ec
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2ef
    .line 2764
    new-instance v9, Ljava/lang/StringBuilder;

    #@2f1
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@2f4
    const-string/jumbo v11, "  mLastUserActivityTimeNoChangeLights="

    #@2f7
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2fa
    move-result-object v9

    #@2fb
    .line 2765
    iget-wide v12, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    #@2fd
    invoke-static {v12, v13}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    #@300
    move-result-object v11

    #@301
    .line 2764
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@304
    move-result-object v9

    #@305
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@308
    move-result-object v9

    #@309
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@30c
    .line 2766
    new-instance v9, Ljava/lang/StringBuilder;

    #@30e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@311
    const-string/jumbo v11, "  mLastInteractivePowerHintTime="

    #@314
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@317
    move-result-object v9

    #@318
    .line 2767
    iget-wide v12, p0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    #@31a
    invoke-static {v12, v13}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    #@31d
    move-result-object v11

    #@31e
    .line 2766
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@321
    move-result-object v9

    #@322
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@325
    move-result-object v9

    #@326
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@329
    .line 2768
    new-instance v9, Ljava/lang/StringBuilder;

    #@32b
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@32e
    const-string/jumbo v11, "  mLastScreenBrightnessBoostTime="

    #@331
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@334
    move-result-object v9

    #@335
    .line 2769
    iget-wide v12, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    #@337
    invoke-static {v12, v13}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    #@33a
    move-result-object v11

    #@33b
    .line 2768
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33e
    move-result-object v9

    #@33f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@342
    move-result-object v9

    #@343
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@346
    .line 2770
    new-instance v9, Ljava/lang/StringBuilder;

    #@348
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@34b
    const-string/jumbo v11, "  mScreenBrightnessBoostInProgress="

    #@34e
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@351
    move-result-object v9

    #@352
    .line 2771
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    #@354
    .line 2770
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
    .line 2772
    new-instance v9, Ljava/lang/StringBuilder;

    #@361
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@364
    const-string/jumbo v11, "  mDisplayReady="

    #@367
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36a
    move-result-object v9

    #@36b
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

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
    .line 2773
    new-instance v9, Ljava/lang/StringBuilder;

    #@37a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@37d
    const-string/jumbo v11, "  mHoldingWakeLockSuspendBlocker="

    #@380
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@383
    move-result-object v9

    #@384
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

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
    .line 2774
    new-instance v9, Ljava/lang/StringBuilder;

    #@393
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@396
    const-string/jumbo v11, "  mHoldingDisplaySuspendBlocker="

    #@399
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39c
    move-result-object v9

    #@39d
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    #@39f
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3a2
    move-result-object v9

    #@3a3
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a6
    move-result-object v9

    #@3a7
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3aa
    .line 2776
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@3ad
    .line 2777
    const-string/jumbo v9, "Settings and Configuration:"

    #@3b0
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3b3
    .line 2778
    new-instance v9, Ljava/lang/StringBuilder;

    #@3b5
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@3b8
    const-string/jumbo v11, "  mDecoupleHalAutoSuspendModeFromDisplayConfig="

    #@3bb
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3be
    move-result-object v9

    #@3bf
    .line 2779
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    #@3c1
    .line 2778
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
    .line 2780
    new-instance v9, Ljava/lang/StringBuilder;

    #@3ce
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@3d1
    const-string/jumbo v11, "  mDecoupleHalInteractiveModeFromDisplayConfig="

    #@3d4
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d7
    move-result-object v9

    #@3d8
    .line 2781
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    #@3da
    .line 2780
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
    .line 2782
    new-instance v9, Ljava/lang/StringBuilder;

    #@3e7
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@3ea
    const-string/jumbo v11, "  mWakeUpWhenPluggedOrUnpluggedConfig="

    #@3ed
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f0
    move-result-object v9

    #@3f1
    .line 2783
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    #@3f3
    .line 2782
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
    .line 2784
    new-instance v9, Ljava/lang/StringBuilder;

    #@400
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@403
    const-string/jumbo v11, "  mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig="

    #@406
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@409
    move-result-object v9

    #@40a
    .line 2785
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    #@40c
    .line 2784
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
    .line 2786
    new-instance v9, Ljava/lang/StringBuilder;

    #@419
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@41c
    const-string/jumbo v11, "  mTheaterModeEnabled="

    #@41f
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@422
    move-result-object v9

    #@423
    .line 2787
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    #@425
    .line 2786
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
    .line 2788
    new-instance v9, Ljava/lang/StringBuilder;

    #@432
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@435
    const-string/jumbo v11, "  mSuspendWhenScreenOffDueToProximityConfig="

    #@438
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43b
    move-result-object v9

    #@43c
    .line 2789
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    #@43e
    .line 2788
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
    .line 2790
    new-instance v9, Ljava/lang/StringBuilder;

    #@44b
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@44e
    const-string/jumbo v11, "  mDreamsSupportedConfig="

    #@451
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@454
    move-result-object v9

    #@455
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

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
    .line 2791
    new-instance v9, Ljava/lang/StringBuilder;

    #@464
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@467
    const-string/jumbo v11, "  mDreamsEnabledByDefaultConfig="

    #@46a
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46d
    move-result-object v9

    #@46e
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    #@470
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
    .line 2792
    new-instance v9, Ljava/lang/StringBuilder;

    #@47d
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@480
    const-string/jumbo v11, "  mDreamsActivatedOnSleepByDefaultConfig="

    #@483
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@486
    move-result-object v9

    #@487
    .line 2793
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    #@489
    .line 2792
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
    .line 2794
    new-instance v9, Ljava/lang/StringBuilder;

    #@496
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@499
    const-string/jumbo v11, "  mDreamsActivatedOnDockByDefaultConfig="

    #@49c
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49f
    move-result-object v9

    #@4a0
    .line 2795
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    #@4a2
    .line 2794
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
    .line 2796
    new-instance v9, Ljava/lang/StringBuilder;

    #@4af
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4b2
    const-string/jumbo v11, "  mDreamsEnabledOnBatteryConfig="

    #@4b5
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b8
    move-result-object v9

    #@4b9
    .line 2797
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    #@4bb
    .line 2796
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4be
    move-result-object v9

    #@4bf
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c2
    move-result-object v9

    #@4c3
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4c6
    .line 2798
    new-instance v9, Ljava/lang/StringBuilder;

    #@4c8
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4cb
    const-string/jumbo v11, "  mDreamsBatteryLevelMinimumWhenPoweredConfig="

    #@4ce
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d1
    move-result-object v9

    #@4d2
    .line 2799
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    #@4d4
    .line 2798
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
    .line 2800
    new-instance v9, Ljava/lang/StringBuilder;

    #@4e1
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4e4
    const-string/jumbo v11, "  mDreamsBatteryLevelMinimumWhenNotPoweredConfig="

    #@4e7
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ea
    move-result-object v9

    #@4eb
    .line 2801
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    #@4ed
    .line 2800
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
    .line 2802
    new-instance v9, Ljava/lang/StringBuilder;

    #@4fa
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4fd
    const-string/jumbo v11, "  mDreamsBatteryLevelDrainCutoffConfig="

    #@500
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@503
    move-result-object v9

    #@504
    .line 2803
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    #@506
    .line 2802
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@509
    move-result-object v9

    #@50a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50d
    move-result-object v9

    #@50e
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@511
    .line 2804
    new-instance v9, Ljava/lang/StringBuilder;

    #@513
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@516
    const-string/jumbo v11, "  mDreamsEnabledSetting="

    #@519
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51c
    move-result-object v9

    #@51d
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

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
    .line 2805
    new-instance v9, Ljava/lang/StringBuilder;

    #@52c
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@52f
    const-string/jumbo v11, "  mDreamsActivateOnSleepSetting="

    #@532
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@535
    move-result-object v9

    #@536
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

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
    .line 2806
    new-instance v9, Ljava/lang/StringBuilder;

    #@545
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@548
    const-string/jumbo v11, "  mDreamsActivateOnDockSetting="

    #@54b
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54e
    move-result-object v9

    #@54f
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

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
    .line 2807
    new-instance v9, Ljava/lang/StringBuilder;

    #@55e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@561
    const-string/jumbo v11, "  mDozeAfterScreenOffConfig="

    #@564
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@567
    move-result-object v9

    #@568
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOffConfig:Z

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
    .line 2808
    new-instance v9, Ljava/lang/StringBuilder;

    #@577
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@57a
    const-string/jumbo v11, "  mLowPowerModeSetting="

    #@57d
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@580
    move-result-object v9

    #@581
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

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
    .line 2809
    new-instance v9, Ljava/lang/StringBuilder;

    #@590
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@593
    const-string/jumbo v11, "  mAutoLowPowerModeConfigured="

    #@596
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@599
    move-result-object v9

    #@59a
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

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
    .line 2810
    new-instance v9, Ljava/lang/StringBuilder;

    #@5a9
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@5ac
    const-string/jumbo v11, "  mAutoLowPowerModeSnoozing="

    #@5af
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b2
    move-result-object v9

    #@5b3
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    #@5b5
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5b8
    move-result-object v9

    #@5b9
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5bc
    move-result-object v9

    #@5bd
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5c0
    .line 2811
    new-instance v9, Ljava/lang/StringBuilder;

    #@5c2
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@5c5
    const-string/jumbo v11, "  mMinimumScreenOffTimeoutConfig="

    #@5c8
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5cb
    move-result-object v9

    #@5cc
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:I

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
    .line 2812
    new-instance v9, Ljava/lang/StringBuilder;

    #@5db
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@5de
    const-string/jumbo v11, "  mMaximumScreenDimDurationConfig="

    #@5e1
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e4
    move-result-object v9

    #@5e5
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:I

    #@5e7
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5ea
    move-result-object v9

    #@5eb
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5ee
    move-result-object v9

    #@5ef
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5f2
    .line 2813
    new-instance v9, Ljava/lang/StringBuilder;

    #@5f4
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@5f7
    const-string/jumbo v11, "  mMaximumScreenDimRatioConfig="

    #@5fa
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5fd
    move-result-object v9

    #@5fe
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    #@600
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@603
    move-result-object v9

    #@604
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@607
    move-result-object v9

    #@608
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@60b
    .line 2814
    new-instance v9, Ljava/lang/StringBuilder;

    #@60d
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@610
    const-string/jumbo v11, "  mScreenOffTimeoutSetting="

    #@613
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@616
    move-result-object v9

    #@617
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

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
    .line 2815
    new-instance v9, Ljava/lang/StringBuilder;

    #@626
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@629
    const-string/jumbo v11, "  mSleepTimeoutSetting="

    #@62c
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62f
    move-result-object v9

    #@630
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:I

    #@632
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@635
    move-result-object v9

    #@636
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@639
    move-result-object v9

    #@63a
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@63d
    .line 2816
    new-instance v9, Ljava/lang/StringBuilder;

    #@63f
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@642
    const-string/jumbo v11, "  mMaximumScreenOffTimeoutFromDeviceAdmin="

    #@645
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@648
    move-result-object v9

    #@649
    .line 2817
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    #@64b
    .line 2816
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@64e
    move-result-object v9

    #@64f
    .line 2817
    const-string/jumbo v11, " (enforced="

    #@652
    .line 2816
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@655
    move-result-object v9

    #@656
    .line 2818
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    #@659
    move-result v11

    #@65a
    .line 2816
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@65d
    move-result-object v9

    #@65e
    .line 2818
    const-string/jumbo v11, ")"

    #@661
    .line 2816
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@664
    move-result-object v9

    #@665
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@668
    move-result-object v9

    #@669
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@66c
    .line 2819
    new-instance v9, Ljava/lang/StringBuilder;

    #@66e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@671
    const-string/jumbo v11, "  mStayOnWhilePluggedInSetting="

    #@674
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@677
    move-result-object v9

    #@678
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

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
    .line 2820
    new-instance v9, Ljava/lang/StringBuilder;

    #@687
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@68a
    const-string/jumbo v11, "  mScreenBrightnessSetting="

    #@68d
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@690
    move-result-object v9

    #@691
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    #@693
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@696
    move-result-object v9

    #@697
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69a
    move-result-object v9

    #@69b
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@69e
    .line 2821
    new-instance v9, Ljava/lang/StringBuilder;

    #@6a0
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@6a3
    const-string/jumbo v11, "  mScreenAutoBrightnessAdjustmentSetting="

    #@6a6
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a9
    move-result-object v9

    #@6aa
    .line 2822
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    #@6ac
    .line 2821
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@6af
    move-result-object v9

    #@6b0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b3
    move-result-object v9

    #@6b4
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6b7
    .line 2823
    new-instance v9, Ljava/lang/StringBuilder;

    #@6b9
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@6bc
    const-string/jumbo v11, "  mScreenBrightnessModeSetting="

    #@6bf
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c2
    move-result-object v9

    #@6c3
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    #@6c5
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
    .line 2824
    new-instance v9, Ljava/lang/StringBuilder;

    #@6d2
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@6d5
    const-string/jumbo v11, "  mScreenBrightnessOverrideFromWindowManager="

    #@6d8
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6db
    move-result-object v9

    #@6dc
    .line 2825
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    #@6de
    .line 2824
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6e1
    move-result-object v9

    #@6e2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e5
    move-result-object v9

    #@6e6
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6e9
    .line 2826
    new-instance v9, Ljava/lang/StringBuilder;

    #@6eb
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@6ee
    const-string/jumbo v11, "  mUserActivityTimeoutOverrideFromWindowManager="

    #@6f1
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f4
    move-result-object v9

    #@6f5
    .line 2827
    iget-wide v12, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    #@6f7
    .line 2826
    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@6fa
    move-result-object v9

    #@6fb
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6fe
    move-result-object v9

    #@6ff
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@702
    .line 2828
    new-instance v9, Ljava/lang/StringBuilder;

    #@704
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@707
    const-string/jumbo v11, "  mUserInactiveOverrideFromWindowManager="

    #@70a
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70d
    move-result-object v9

    #@70e
    .line 2829
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    #@710
    .line 2828
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@713
    move-result-object v9

    #@714
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@717
    move-result-object v9

    #@718
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@71b
    .line 2830
    new-instance v9, Ljava/lang/StringBuilder;

    #@71d
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@720
    const-string/jumbo v11, "  mTemporaryScreenBrightnessSettingOverride="

    #@723
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@726
    move-result-object v9

    #@727
    .line 2831
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    #@729
    .line 2830
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
    .line 2832
    new-instance v9, Ljava/lang/StringBuilder;

    #@736
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@739
    const-string/jumbo v11, "  mTemporaryScreenAutoBrightnessAdjustmentSettingOverride="

    #@73c
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73f
    move-result-object v9

    #@740
    .line 2833
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    #@742
    .line 2832
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@745
    move-result-object v9

    #@746
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@749
    move-result-object v9

    #@74a
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@74d
    .line 2834
    new-instance v9, Ljava/lang/StringBuilder;

    #@74f
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@752
    const-string/jumbo v11, "  mDozeScreenStateOverrideFromDreamManager="

    #@755
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@758
    move-result-object v9

    #@759
    .line 2835
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    #@75b
    .line 2834
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
    .line 2836
    new-instance v9, Ljava/lang/StringBuilder;

    #@768
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@76b
    const-string/jumbo v11, "  mDozeScreenBrightnessOverrideFromDreamManager="

    #@76e
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@771
    move-result-object v9

    #@772
    .line 2837
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    #@774
    .line 2836
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
    .line 2838
    new-instance v9, Ljava/lang/StringBuilder;

    #@781
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@784
    const-string/jumbo v11, "  mScreenBrightnessSettingMinimum="

    #@787
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78a
    move-result-object v9

    #@78b
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

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
    .line 2839
    new-instance v9, Ljava/lang/StringBuilder;

    #@79a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@79d
    const-string/jumbo v11, "  mScreenBrightnessSettingMaximum="

    #@7a0
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a3
    move-result-object v9

    #@7a4
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    #@7a6
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7a9
    move-result-object v9

    #@7aa
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7ad
    move-result-object v9

    #@7ae
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7b1
    .line 2840
    new-instance v9, Ljava/lang/StringBuilder;

    #@7b3
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@7b6
    const-string/jumbo v11, "  mScreenBrightnessSettingDefault="

    #@7b9
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7bc
    move-result-object v9

    #@7bd
    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    #@7bf
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7c2
    move-result-object v9

    #@7c3
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c6
    move-result-object v9

    #@7c7
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7ca
    .line 2841
    new-instance v9, Ljava/lang/StringBuilder;

    #@7cc
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@7cf
    const-string/jumbo v11, "  mDoubleTapWakeEnabled="

    #@7d2
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d5
    move-result-object v9

    #@7d6
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    #@7d8
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@7db
    move-result-object v9

    #@7dc
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7df
    move-result-object v9

    #@7e0
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7e3
    .line 2843
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getSleepTimeoutLocked()I

    #@7e6
    move-result v5

    #@7e7
    .line 2844
    .local v5, "sleepTimeout":I
    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(I)I

    #@7ea
    move-result v4

    #@7eb
    .line 2845
    .local v4, "screenOffTimeout":I
    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(I)I

    #@7ee
    move-result v3

    #@7ef
    .line 2846
    .local v3, "screenDimDuration":I
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@7f2
    .line 2847
    new-instance v9, Ljava/lang/StringBuilder;

    #@7f4
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@7f7
    const-string/jumbo v11, "Sleep timeout: "

    #@7fa
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7fd
    move-result-object v9

    #@7fe
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@801
    move-result-object v9

    #@802
    const-string/jumbo v11, " ms"

    #@805
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@808
    move-result-object v9

    #@809
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80c
    move-result-object v9

    #@80d
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@810
    .line 2848
    new-instance v9, Ljava/lang/StringBuilder;

    #@812
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@815
    const-string/jumbo v11, "Screen off timeout: "

    #@818
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81b
    move-result-object v9

    #@81c
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@81f
    move-result-object v9

    #@820
    const-string/jumbo v11, " ms"

    #@823
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@826
    move-result-object v9

    #@827
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82a
    move-result-object v9

    #@82b
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@82e
    .line 2849
    new-instance v9, Ljava/lang/StringBuilder;

    #@830
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@833
    const-string/jumbo v11, "Screen dim duration: "

    #@836
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@839
    move-result-object v9

    #@83a
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@83d
    move-result-object v9

    #@83e
    const-string/jumbo v11, " ms"

    #@841
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@844
    move-result-object v9

    #@845
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@848
    move-result-object v9

    #@849
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@84c
    .line 2851
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@84f
    .line 2852
    const-string/jumbo v9, "UID states:"

    #@852
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@855
    .line 2853
    const/4 v0, 0x0

    #@856
    .local v0, "i":I
    :goto_0
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@858
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    #@85b
    move-result v9

    #@85c
    if-ge v0, v9, :cond_0

    #@85e
    .line 2854
    const-string/jumbo v9, "  UID "

    #@861
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@864
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@866
    invoke-virtual {v9, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@869
    move-result v9

    #@86a
    invoke-static {p1, v9}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@86d
    .line 2855
    const-string/jumbo v9, ": "

    #@870
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@873
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@875
    invoke-virtual {v9, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@878
    move-result v9

    #@879
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(I)V

    #@87c
    .line 2853
    add-int/lit8 v0, v0, 0x1

    #@87e
    goto :goto_0

    #@87f
    .line 2858
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@882
    .line 2859
    new-instance v9, Ljava/lang/StringBuilder;

    #@884
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@887
    const-string/jumbo v11, "Wake Locks: size="

    #@88a
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88d
    move-result-object v9

    #@88e
    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    #@890
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    #@893
    move-result v11

    #@894
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@897
    move-result-object v9

    #@898
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89b
    move-result-object v9

    #@89c
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@89f
    .line 2860
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    #@8a1
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8a4
    move-result-object v8

    #@8a5
    .local v8, "wl$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@8a8
    move-result v9

    #@8a9
    if-eqz v9, :cond_1

    #@8ab
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@8ae
    move-result-object v7

    #@8af
    check-cast v7, Lcom/android/server/power/PowerManagerService$WakeLock;

    #@8b1
    .line 2861
    .local v7, "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    new-instance v9, Ljava/lang/StringBuilder;

    #@8b3
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@8b6
    const-string/jumbo v11, "  "

    #@8b9
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8bc
    move-result-object v9

    #@8bd
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8c0
    move-result-object v9

    #@8c1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c4
    move-result-object v9

    #@8c5
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8c8
    goto :goto_1

    #@8c9
    .line 2734
    .end local v0    # "i":I
    .end local v3    # "screenDimDuration":I
    .end local v4    # "screenOffTimeout":I
    .end local v5    # "sleepTimeout":I
    .end local v7    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v8    # "wl$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v9

    #@8ca
    monitor-exit v10

    #@8cb
    throw v9

    #@8cc
    .line 2864
    .restart local v0    # "i":I
    .restart local v3    # "screenDimDuration":I
    .restart local v4    # "screenOffTimeout":I
    .restart local v5    # "sleepTimeout":I
    .restart local v8    # "wl$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@8cf
    .line 2865
    new-instance v9, Ljava/lang/StringBuilder;

    #@8d1
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@8d4
    const-string/jumbo v11, "Suspend Blockers: size="

    #@8d7
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8da
    move-result-object v9

    #@8db
    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    #@8dd
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    #@8e0
    move-result v11

    #@8e1
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8e4
    move-result-object v9

    #@8e5
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e8
    move-result-object v9

    #@8e9
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8ec
    .line 2866
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    #@8ee
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8f1
    move-result-object v2

    #@8f2
    .local v2, "sb$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@8f5
    move-result v9

    #@8f6
    if-eqz v9, :cond_2

    #@8f8
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@8fb
    move-result-object v1

    #@8fc
    check-cast v1, Lcom/android/server/power/SuspendBlocker;

    #@8fe
    .line 2867
    .local v1, "sb":Lcom/android/server/power/SuspendBlocker;
    new-instance v9, Ljava/lang/StringBuilder;

    #@900
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@903
    const-string/jumbo v11, "  "

    #@906
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@909
    move-result-object v9

    #@90a
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@90d
    move-result-object v9

    #@90e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@911
    move-result-object v9

    #@912
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@915
    goto :goto_2

    #@916
    .line 2870
    .end local v1    # "sb":Lcom/android/server/power/SuspendBlocker;
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@919
    .line 2871
    new-instance v9, Ljava/lang/StringBuilder;

    #@91b
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@91e
    const-string/jumbo v11, "Display Power: "

    #@921
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@924
    move-result-object v9

    #@925
    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    #@927
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@92a
    move-result-object v9

    #@92b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92e
    move-result-object v9

    #@92f
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@932
    .line 2873
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@934
    .local v6, "wcd":Lcom/android/server/power/WirelessChargerDetector;
    monitor-exit v10

    #@935
    .line 2876
    if-eqz v6, :cond_3

    #@937
    .line 2877
    invoke-virtual {v6, p1}, Lcom/android/server/power/WirelessChargerDetector;->dump(Ljava/io/PrintWriter;)V

    #@93a
    .line 2730
    :cond_3
    return-void
.end method

.method private findWakeLockIndexLocked(Landroid/os/IBinder;)I
    .locals 3
    .param p1, "lock"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1013
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 1014
    .local v0, "count":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 1015
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
    .line 1016
    return v1

    #@16
    .line 1014
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 1019
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
    .line 1338
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    #@4
    if-eqz v0, :cond_3

    #@6
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    #@8
    if-eqz v0, :cond_3

    #@a
    .line 1339
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@c
    if-ne v0, v2, :cond_0

    #@e
    .line 1340
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@10
    and-int/lit8 v0, v0, 0x40

    #@12
    if-nez v0, :cond_0

    #@14
    .line 1341
    return-void

    #@15
    .line 1343
    :cond_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@17
    if-eq v0, v2, :cond_1

    #@19
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@1b
    if-nez v0, :cond_2

    #@1d
    .line 1344
    :cond_1
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->logSleepTimeoutRecapturedLocked()V

    #@20
    .line 1346
    :cond_2
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    #@22
    .line 1347
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    #@24
    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onWakefulnessChangeFinished()V

    #@27
    .line 1337
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
    .line 2099
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@4
    if-nez v0, :cond_0

    #@6
    .line 2100
    return v1

    #@7
    .line 2103
    :cond_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@9
    if-ne v0, v2, :cond_2

    #@b
    .line 2104
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@d
    and-int/lit8 v0, v0, 0x40

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 2105
    const/4 v0, 0x1

    #@12
    return v0

    #@13
    .line 2107
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOffConfig:Z

    #@15
    if-eqz v0, :cond_2

    #@17
    .line 2108
    return v1

    #@18
    .line 2114
    :cond_2
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@1a
    and-int/lit8 v0, v0, 0x2

    #@1c
    if-nez v0, :cond_3

    #@1e
    .line 2115
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    #@20
    and-int/lit8 v0, v0, 0x1

    #@22
    if-eqz v0, :cond_4

    #@24
    .line 2118
    :cond_3
    return v2

    #@25
    .line 2116
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    #@27
    if-eqz v0, :cond_3

    #@29
    .line 2117
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    #@2b
    .line 2114
    if-nez v0, :cond_3

    #@2d
    .line 2121
    const/4 v0, 0x2

    #@2e
    return v0
.end method

.method private getScreenDimDurationLocked(I)I
    .locals 3
    .param p1, "screenOffTimeout"    # I

    #@0
    .prologue
    .line 1738
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:I

    #@2
    .line 1739
    int-to-float v1, p1

    #@3
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    #@5
    mul-float/2addr v1, v2

    #@6
    float-to-int v1, v1

    #@7
    .line 1738
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
    .line 1724
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    #@2
    .line 1725
    .local v0, "timeout":I
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1726
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    #@a
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@d
    move-result v0

    #@e
    .line 1728
    :cond_0
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    #@10
    const-wide/16 v4, 0x0

    #@12
    cmp-long v1, v2, v4

    #@14
    if-ltz v1, :cond_1

    #@16
    .line 1729
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
    .line 1731
    :cond_1
    if-ltz p1, :cond_2

    #@20
    .line 1732
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    #@23
    move-result v0

    #@24
    .line 1734
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
    .line 1716
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:I

    #@2
    .line 1717
    .local v0, "timeout":I
    if-gtz v0, :cond_0

    #@4
    .line 1718
    const/4 v1, -0x1

    #@5
    return v1

    #@6
    .line 1720
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
    .line 1182
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1183
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1184
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v1

    #@d
    .line 1181
    return-void

    #@e
    .line 1182
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
    .line 1198
    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    #@2
    cmp-long v4, p1, v4

    #@4
    if-ltz v4, :cond_0

    #@6
    .line 1199
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@8
    if-nez v4, :cond_1

    #@a
    .line 1202
    :cond_0
    const/4 v4, 0x0

    #@b
    return v4

    #@c
    .line 1200
    :cond_1
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@e
    const/4 v5, 0x3

    #@f
    if-eq v4, v5, :cond_0

    #@11
    .line 1201
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    #@13
    if-eqz v4, :cond_0

    #@15
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    #@17
    if-eqz v4, :cond_0

    #@19
    .line 1205
    const-string/jumbo v4, "goToSleep"

    #@1c
    const-wide/32 v6, 0x20000

    #@1f
    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@22
    .line 1207
    packed-switch p3, :pswitch_data_0

    #@25
    .line 1228
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
    .line 1229
    const/4 p3, 0x0

    #@47
    .line 1233
    :goto_0
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    #@49
    .line 1234
    const/4 v4, 0x1

    #@4a
    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    #@4c
    .line 1235
    const/4 v4, 0x3

    #@4d
    invoke-direct {p0, v4, p3}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(II)V

    #@50
    .line 1238
    const/4 v2, 0x0

    #@51
    .line 1239
    .local v2, "numWakeLocksCleared":I
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    #@53
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@56
    move-result v1

    #@57
    .line 1240
    .local v1, "numWakeLocks":I
    const/4 v0, 0x0

    #@58
    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    #@5a
    .line 1241
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    #@5c
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5f
    move-result-object v3

    #@60
    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    #@62
    .line 1242
    .local v3, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v4, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    #@64
    const v5, 0xffff

    #@67
    and-int/2addr v4, v5

    #@68
    sparse-switch v4, :sswitch_data_0

    #@6b
    .line 1240
    :goto_2
    add-int/lit8 v0, v0, 0x1

    #@6d
    goto :goto_1

    #@6e
    .line 1209
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
    .line 1210
    const-string/jumbo v6, ")..."

    #@84
    .line 1209
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
    .line 1256
    :catchall_0
    move-exception v4

    #@91
    .line 1257
    const-wide/32 v6, 0x20000

    #@94
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    #@97
    .line 1256
    throw v4

    #@98
    .line 1213
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
    .line 1216
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
    .line 1219
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
    .line 1222
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
    .line 1225
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
    .line 1246
    .restart local v0    # "i":I
    .restart local v1    # "numWakeLocks":I
    .restart local v2    # "numWakeLocksCleared":I
    .restart local v3    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :sswitch_0
    add-int/lit8 v2, v2, 0x1

    #@148
    .line 1247
    goto/16 :goto_2

    #@14a
    .line 1250
    .end local v3    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_2
    const/16 v4, 0xaa4

    #@14c
    invoke-static {v4, v2}, Landroid/util/EventLog;->writeEvent(II)I

    #@14f
    .line 1253
    and-int/lit8 v4, p4, 0x1

    #@151
    if-eqz v4, :cond_3

    #@153
    .line 1254
    invoke-direct {p0, p1, p2, p5}, Lcom/android/server/power/PowerManagerService;->reallyGoToSleepNoUpdateLocked(JI)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@156
    .line 1257
    :cond_3
    const-wide/32 v4, 0x20000

    #@159
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@15c
    .line 1259
    const/4 v4, 0x1

    #@15d
    return v4

    #@15e
    .line 1207
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
    .line 1242
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
    .line 2374
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@2
    or-int/lit16 v0, v0, 0x100

    #@4
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@6
    .line 2375
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    #@9
    .line 2373
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
    .line 1847
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v2

    #@6
    .line 1848
    const/4 v1, 0x0

    #@7
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    #@9
    .line 1849
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@b
    .line 1850
    .local v9, "wakefulness":I
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    #@d
    if-eqz v1, :cond_4

    #@f
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    #@11
    if-eqz v1, :cond_4

    #@13
    .line 1851
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
    .line 1852
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
    .line 1862
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    #@23
    if-eqz v1, :cond_6

    #@25
    .line 1864
    if-eqz v8, :cond_0

    #@27
    .line 1865
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    #@29
    invoke-virtual {v1, v10}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    #@2c
    .line 1866
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    #@2e
    if-ne v9, v3, :cond_5

    #@30
    const/4 v1, 0x1

    #@31
    :goto_2
    invoke-virtual {v2, v1}, Landroid/service/dreams/DreamManagerInternal;->startDream(Z)V

    #@34
    .line 1868
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    #@36
    invoke-virtual {v1}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    #@39
    move-result v0

    #@3a
    .line 1874
    :goto_3
    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@3c
    monitor-enter v11

    #@3d
    .line 1876
    if-eqz v8, :cond_1

    #@3f
    if-eqz v0, :cond_1

    #@41
    .line 1877
    :try_start_1
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    #@43
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    #@45
    .line 1878
    if-ne v9, v3, :cond_7

    #@47
    .line 1879
    const-string/jumbo v1, "PowerManagerService"

    #@4a
    const-string/jumbo v2, "Dozing..."

    #@4d
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@50
    .line 1887
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
    .line 1888
    return-void

    #@5a
    .line 1851
    :cond_3
    const/4 v8, 0x1

    #@5b
    .local v8, "startDreaming":Z
    goto :goto_0

    #@5c
    .line 1854
    .end local v8    # "startDreaming":Z
    :cond_4
    const/4 v8, 0x0

    #@5d
    .restart local v8    # "startDreaming":Z
    goto :goto_1

    #@5e
    .line 1847
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
    .line 1866
    goto :goto_2

    #@63
    .line 1870
    :cond_6
    const/4 v0, 0x0

    #@64
    .local v0, "isDreaming":Z
    goto :goto_3

    #@65
    .line 1881
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
    .line 1874
    :catchall_1
    move-exception v1

    #@70
    monitor-exit v11

    #@71
    throw v1

    #@72
    .line 1892
    :cond_8
    if-ne v9, v4, :cond_f

    #@74
    .line 1893
    if-eqz v0, :cond_b

    #@76
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->canDreamLocked()Z

    #@79
    move-result v1

    #@7a
    if-eqz v1, :cond_b

    #@7c
    .line 1894
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    #@7e
    if-ltz v1, :cond_9

    #@80
    .line 1895
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    #@82
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    #@84
    .line 1896
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    #@86
    .line 1895
    sub-int/2addr v2, v3

    #@87
    if-ge v1, v2, :cond_9

    #@89
    .line 1897
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
    .line 1907
    return-void

    #@91
    .line 1901
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
    .line 1904
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    #@a2
    .line 1901
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v2

    #@a6
    .line 1904
    const-string/jumbo v3, "%.  "

    #@a9
    .line 1901
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v2

    #@ad
    .line 1905
    const-string/jumbo v3, "Battery level now: "

    #@b0
    .line 1901
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v2

    #@b4
    .line 1905
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    #@b6
    .line 1901
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v2

    #@ba
    .line 1905
    const-string/jumbo v3, "%."

    #@bd
    .line 1901
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
    .line 1912
    :cond_b
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isItBedTimeYetLocked()Z

    #@cb
    move-result v1

    #@cc
    if-eqz v1, :cond_e

    #@ce
    .line 1913
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@d1
    move-result-wide v2

    #@d2
    .line 1914
    const/4 v4, 0x2

    #@d3
    const/4 v5, 0x0

    #@d4
    const/16 v6, 0x3e8

    #@d6
    move-object v1, p0

    #@d7
    .line 1913
    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z

    #@da
    .line 1915
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@dd
    :cond_c
    :goto_5
    monitor-exit v11

    #@de
    .line 1933
    if-eqz v0, :cond_d

    #@e0
    .line 1934
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    #@e2
    invoke-virtual {v1, v10}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    #@e5
    .line 1843
    :cond_d
    return-void

    #@e6
    .line 1917
    :cond_e
    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@e9
    move-result-wide v2

    #@ea
    const-string/jumbo v4, "android.server.power:DREAM"

    #@ed
    .line 1918
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
    .line 1917
    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z

    #@fb
    .line 1919
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@fe
    goto :goto_5

    #@ff
    .line 1921
    :cond_f
    if-ne v9, v3, :cond_c

    #@101
    .line 1922
    if-eqz v0, :cond_10

    #@103
    monitor-exit v11

    #@104
    .line 1923
    return-void

    #@105
    .line 1927
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
    .line 1928
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
    .line 2608
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2613
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@5
    or-int/lit16 v0, v0, 0x800

    #@7
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@9
    .line 2614
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v1

    #@d
    .line 2607
    return-void

    #@e
    .line 2608
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
    .line 842
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSettingsLocked()V

    #@3
    .line 843
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    #@6
    .line 841
    return-void
.end method

.method private handleUserActivityTimeout()V
    .locals 2

    #@0
    .prologue
    .line 1705
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1710
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@5
    or-int/lit8 v0, v0, 0x4

    #@7
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@9
    .line 1711
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v1

    #@d
    .line 1704
    return-void

    #@e
    .line 1705
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
    .line 949
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 955
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    .line 956
    .local v0, "index":I
    if-gez v0, :cond_0

    #@b
    monitor-exit v2

    #@c
    .line 957
    return-void

    #@d
    .line 960
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/android/server/power/PowerManagerService;->removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    monitor-exit v2

    #@11
    .line 948
    return-void

    #@12
    .line 949
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
    .line 2888
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 2892
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
    .line 2891
    invoke-static {v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result v0

    #@12
    .line 2897
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
    .line 2896
    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    monitor-exit v3

    #@23
    .line 2887
    return-void

    #@24
    .line 2893
    .end local v0    # "count":I
    :catch_0
    move-exception v1

    #@25
    .line 2894
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v0, 0x0

    #@26
    .restart local v0    # "count":I
    goto :goto_0

    #@27
    .line 2888
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
    .line 1800
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1801
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    #@6
    .line 1800
    if-nez v0, :cond_0

    #@8
    .line 1802
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@a
    and-int/lit8 v0, v0, 0x20

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 1800
    :cond_0
    const/4 v0, 0x1

    #@f
    :goto_0
    return v0

    #@10
    .line 1803
    :cond_1
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    #@12
    and-int/lit8 v0, v0, 0x3

    #@14
    if-nez v0, :cond_0

    #@16
    .line 1805
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    #@18
    goto :goto_0
.end method

.method private isInteractiveInternal()Z
    .locals 2

    #@0
    .prologue
    .line 2321
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2322
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
    .line 2321
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
    .line 1788
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
    .line 2327
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 2328
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 2327
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
    .line 2557
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    #@3
    if-ltz v1, :cond_0

    #@5
    .line 2558
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    #@7
    const v2, 0x7fffffff

    #@a
    if-ge v1, v2, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    .line 2557
    :cond_0
    return v0
.end method

.method private isScreenBrightnessBoostedInternal()Z
    .locals 2

    #@0
    .prologue
    .line 2596
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 2597
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 2596
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
    .line 895
    iget v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    #@2
    const v1, 0xffff

    #@5
    and-int/2addr v0, v1

    #@6
    sparse-switch v0, :sswitch_data_0

    #@9
    .line 901
    const/4 v0, 0x0

    #@a
    return v0

    #@b
    .line 899
    :sswitch_0
    const/4 v0, 0x1

    #@c
    return v0

    #@d
    .line 895
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
    .line 2095
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
    .line 2090
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
    .line 1051
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 1052
    sparse-switch p1, :sswitch_data_0

    #@7
    monitor-exit v1

    #@8
    .line 1065
    return v0

    #@9
    .line 1059
    :sswitch_0
    const/4 v0, 0x1

    #@a
    monitor-exit v1

    #@b
    return v0

    #@c
    .line 1062
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
    .line 1051
    :catchall_0
    move-exception v0

    #@19
    monitor-exit v1

    #@1a
    throw v0

    #@1b
    .line 1052
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
    .line 1329
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v0

    #@4
    .line 1330
    .local v0, "now":J
    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    #@6
    sub-long v2, v4, v0

    #@8
    .line 1331
    .local v2, "savedWakeTimeMs":J
    const-wide/16 v4, 0x0

    #@a
    cmp-long v4, v2, v4

    #@c
    if-ltz v4, :cond_0

    #@e
    .line 1332
    const/16 v4, 0xaab

    #@10
    invoke-static {v4, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    #@13
    .line 1333
    const-wide/16 v4, -0x1

    #@15
    iput-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    #@17
    .line 1328
    :cond_0
    return-void
.end method

.method public static lowLevelReboot(Ljava/lang/String;)V
    .locals 4
    .param p0, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2706
    if-nez p0, :cond_0

    #@2
    .line 2707
    const-string/jumbo p0, ""

    #@5
    .line 2709
    :cond_0
    const-string/jumbo v1, "recovery"

    #@8
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_1

    #@e
    .line 2710
    const-string/jumbo v1, "recovery-update"

    #@11
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    .line 2709
    if-eqz v1, :cond_2

    #@17
    .line 2711
    :cond_1
    const-string/jumbo v1, "sys.powerctl"

    #@1a
    const-string/jumbo v2, "reboot,recovery"

    #@1d
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@20
    .line 2716
    :goto_0
    const-wide/16 v2, 0x4e20

    #@22
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 2720
    :goto_1
    const-string/jumbo v1, "PowerManagerService"

    #@28
    const-string/jumbo v2, "Unexpected return from lowLevelReboot!"

    #@2b
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 2705
    return-void

    #@2f
    .line 2713
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
    .line 2717
    :catch_0
    move-exception v0

    #@4b
    .line 2718
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
    .line 2692
    if-nez p0, :cond_0

    #@2
    .line 2693
    const-string/jumbo p0, ""

    #@5
    .line 2695
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
    .line 2691
    return-void
.end method

.method private napInternal(JI)V
    .locals 3
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    #@0
    .prologue
    .line 1263
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1264
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->napNoUpdateLocked(JI)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1265
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v1

    #@d
    .line 1262
    return-void

    #@e
    .line 1263
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
    .line 1275
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
    .line 1277
    :cond_0
    return v2

    #@10
    .line 1276
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    #@12
    if-eqz v0, :cond_0

    #@14
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 1280
    const-string/jumbo v0, "nap"

    #@1b
    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@1e
    .line 1282
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
    .line 1284
    const/4 v0, 0x1

    #@40
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    #@42
    .line 1285
    const/4 v0, 0x2

    #@43
    const/4 v1, 0x0

    #@44
    invoke-direct {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@47
    .line 1287
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@4a
    .line 1289
    return v3

    #@4b
    .line 1286
    :catchall_0
    move-exception v0

    #@4c
    .line 1287
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@4f
    .line 1286
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
    .line 2270
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 2271
    return v1

    #@6
    .line 2273
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@8
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 2278
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
    .line 2279
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    #@1a
    if-eqz v0, :cond_2

    #@1c
    .line 2283
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    #@1e
    if-eqz v0, :cond_3

    #@20
    .line 2284
    return v1

    #@21
    .line 2280
    :cond_2
    return v1

    #@22
    .line 2287
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
    .line 1023
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 1022
    :cond_0
    :goto_0
    return-void

    #@9
    .line 1024
    :cond_1
    const/4 v0, 0x1

    #@a
    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    #@c
    .line 1025
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    #@e
    iget v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    #@10
    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    #@12
    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    #@14
    .line 1026
    iget v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    #@16
    iget v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    #@18
    iget-object v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    #@1a
    .line 1027
    iget-object v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    #@1c
    .line 1025
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
    .line 1033
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
    .line 1034
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
    .line 1035
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
    .line 1036
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
    .line 1034
    invoke-virtual/range {v1 .. v15}, Lcom/android/server/power/Notifier;->onWakeLockChanging(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    #@3d
    .line 1032
    :cond_0
    return-void
.end method

.method private notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 8
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    #@0
    .prologue
    .line 1041
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1042
    const/4 v0, 0x0

    #@9
    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    #@b
    .line 1043
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    #@d
    iget v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    #@f
    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    #@11
    .line 1044
    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    #@13
    iget v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    #@15
    iget v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    #@17
    .line 1045
    iget-object v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    #@19
    iget-object v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    #@1b
    .line 1043
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/power/Notifier;->onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    #@1e
    .line 1040
    :cond_0
    return-void
.end method

.method private postAfterBootCompleted(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 788
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 789
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@b
    .line 787
    :goto_0
    return-void

    #@c
    .line 791
    :cond_0
    const-string/jumbo v0, "PowerManagerService"

    #@f
    const-string/jumbo v1, "Delaying runnable until system is booted"

    #@12
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 792
    const-class v0, Ljava/lang/Runnable;

    #@17
    .line 793
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompletedRunnables:[Ljava/lang/Runnable;

    #@19
    .line 792
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
    .line 2682
    invoke-static {p1, p2}, Lcom/android/server/power/PowerManagerService;->nativeSendPowerHint(II)V

    #@3
    .line 2681
    return-void
.end method

.method private readConfigurationLocked()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 673
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@6
    move-result-object v0

    #@7
    .line 676
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x1120070

    #@a
    .line 675
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@d
    move-result v1

    #@e
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    #@10
    .line 678
    const v1, 0x1120071

    #@13
    .line 677
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@16
    move-result v1

    #@17
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    #@19
    .line 680
    const v1, 0x1120023

    #@1c
    .line 679
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@1f
    move-result v1

    #@20
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    #@22
    .line 682
    const v1, 0x1120028

    #@25
    .line 681
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@28
    move-result v1

    #@29
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    #@2b
    .line 684
    const v1, 0x112003e

    #@2e
    .line 683
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@31
    move-result v1

    #@32
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    #@34
    .line 686
    const v1, 0x112006a

    #@37
    .line 685
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@3a
    move-result v1

    #@3b
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    #@3d
    .line 688
    const v1, 0x112006b

    #@40
    .line 687
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@43
    move-result v1

    #@44
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    #@46
    .line 690
    const v1, 0x112006d

    #@49
    .line 689
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@4c
    move-result v1

    #@4d
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    #@4f
    .line 692
    const v1, 0x112006c

    #@52
    .line 691
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@55
    move-result v1

    #@56
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    #@58
    .line 694
    const v1, 0x112006e

    #@5b
    .line 693
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@5e
    move-result v1

    #@5f
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    #@61
    .line 696
    const v1, 0x10e0080

    #@64
    .line 695
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@67
    move-result v1

    #@68
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    #@6a
    .line 698
    const v1, 0x10e0081

    #@6d
    .line 697
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@70
    move-result v1

    #@71
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    #@73
    .line 700
    const v1, 0x10e0082

    #@76
    .line 699
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@79
    move-result v1

    #@7a
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    #@7c
    .line 702
    const v1, 0x112006f

    #@7f
    .line 701
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@82
    move-result v1

    #@83
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOffConfig:Z

    #@85
    .line 704
    const v1, 0x10e0083

    #@88
    .line 703
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@8b
    move-result v1

    #@8c
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:I

    #@8e
    .line 706
    const v1, 0x10e0084

    #@91
    .line 705
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@94
    move-result v1

    #@95
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:I

    #@97
    .line 708
    const v1, 0x1130003

    #@9a
    .line 707
    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    #@9d
    move-result v1

    #@9e
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    #@a0
    .line 710
    const v1, 0x11200a1

    #@a3
    .line 709
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@a6
    move-result v1

    #@a7
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSupportsDoubleTapWakeConfig:Z

    #@a9
    .line 672
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
    .line 1299
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
    .line 1301
    :cond_0
    return v2

    #@f
    .line 1300
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    #@11
    if-eqz v0, :cond_0

    #@13
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 1304
    const-string/jumbo v0, "reallyGoToSleep"

    #@1a
    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@1d
    .line 1306
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
    .line 1308
    const/4 v0, 0x0

    #@3f
    const/4 v1, 0x2

    #@40
    invoke-direct {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@43
    .line 1310
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@46
    .line 1312
    const/4 v0, 0x1

    #@47
    return v0

    #@48
    .line 1309
    :catchall_0
    move-exception v0

    #@49
    .line 1310
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@4c
    .line 1309
    throw v0
.end method

.method private releaseWakeLockInternal(Landroid/os/IBinder;I)V
    .locals 5
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 923
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 924
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v0

    #@7
    .line 925
    .local v0, "index":I
    if-gez v0, :cond_0

    #@9
    monitor-exit v3

    #@a
    .line 930
    return-void

    #@b
    .line 933
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
    .line 939
    .local v1, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    and-int/lit8 v2, p2, 0x1

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 940
    const/4 v2, 0x1

    #@18
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    #@1a
    .line 943
    :cond_1
    iget-object v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-interface {v2, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@20
    .line 944
    invoke-direct {p0, v1, v0}, Lcom/android/server/power/PowerManagerService;->removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    monitor-exit v3

    #@24
    .line 922
    return-void

    #@25
    .line 923
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
    .line 965
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@5
    .line 966
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    #@8
    .line 968
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->applyWakeLockFlagsOnReleaseLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    #@b
    .line 969
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@d
    or-int/lit8 v0, v0, 0x1

    #@f
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@11
    .line 970
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    #@14
    .line 964
    return-void
.end method

.method private scheduleSandmanLocked()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1828
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 1829
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    #@7
    .line 1830
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@9
    const/4 v2, 0x2

    #@a
    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    #@d
    move-result-object v0

    #@e
    .line 1831
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    #@11
    .line 1832
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@13
    invoke-virtual {v1, v0}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessage(Landroid/os/Message;)Z

    #@16
    .line 1827
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
    .line 2563
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v3

    #@4
    .line 2564
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-nez v1, :cond_0

    #@8
    monitor-exit v3

    #@9
    .line 2565
    return-void

    #@a
    .line 2567
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mAttentionLight:Lcom/android/server/lights/Light;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c
    .local v0, "light":Lcom/android/server/lights/Light;
    monitor-exit v3

    #@d
    .line 2571
    if-eqz p1, :cond_1

    #@f
    const/4 v1, 0x3

    #@10
    :goto_0
    const/4 v3, 0x2

    #@11
    invoke-virtual {v0, p2, v3, v1, v2}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    #@14
    .line 2561
    return-void

    #@15
    .line 2563
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
    .line 2571
    goto :goto_0
.end method

.method private setDozeOverrideFromDreamManagerInternal(II)V
    .locals 2
    .param p1, "screenState"    # I
    .param p2, "screenBrightness"    # I

    #@0
    .prologue
    .line 2670
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2671
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    #@5
    if-ne v0, p1, :cond_0

    #@7
    .line 2672
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    #@9
    if-eq v0, p2, :cond_1

    #@b
    .line 2673
    :cond_0
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    #@d
    .line 2674
    iput p2, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    #@f
    .line 2675
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@11
    or-int/lit8 v0, v0, 0x20

    #@13
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@15
    .line 2676
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    :cond_1
    monitor-exit v1

    #@19
    .line 2669
    return-void

    #@1a
    .line 2670
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
    .line 2291
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    #@5
    if-eq p1, v0, :cond_0

    #@7
    .line 2295
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    #@9
    .line 2296
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
    .line 2298
    :try_start_0
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 2300
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@2d
    .line 2290
    :cond_0
    return-void

    #@2e
    .line 2299
    :catchall_0
    move-exception v0

    #@2f
    .line 2300
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@32
    .line 2299
    throw v0
.end method

.method private setHalInteractiveModeLocked(Z)V
    .locals 4
    .param p1, "enable"    # Z

    #@0
    .prologue
    const-wide/32 v2, 0x20000

    #@3
    .line 2306
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    #@5
    if-eq p1, v0, :cond_0

    #@7
    .line 2310
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    #@9
    .line 2311
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
    .line 2313
    :try_start_0
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->nativeSetInteractive(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 2315
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@2d
    .line 2305
    :cond_0
    return-void

    #@2e
    .line 2314
    :catchall_0
    move-exception v0

    #@2f
    .line 2315
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@32
    .line 2314
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
    .line 2333
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v2

    #@5
    .line 2335
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    if-eqz v3, :cond_0

    #@9
    monitor-exit v2

    #@a
    .line 2336
    return v0

    #@b
    .line 2338
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    #@d
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@10
    move-result-object v3

    #@11
    .line 2339
    const-string/jumbo v4, "low_power"

    #@14
    if-eqz p1, :cond_1

    #@16
    move v0, v1

    #@17
    .line 2338
    :cond_1
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@1a
    .line 2340
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    #@1c
    .line 2342
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    #@1e
    if-eqz v0, :cond_2

    #@20
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    #@22
    if-eqz v0, :cond_2

    #@24
    .line 2343
    if-eqz p1, :cond_3

    #@26
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    #@28
    if-eqz v0, :cond_3

    #@2a
    .line 2347
    const/4 v0, 0x0

    #@2b
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    #@2d
    .line 2356
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateLowPowerModeLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    monitor-exit v2

    #@31
    .line 2357
    return v1

    #@32
    .line 2348
    :cond_3
    if-nez p1, :cond_2

    #@34
    :try_start_2
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    #@36
    if-nez v0, :cond_2

    #@38
    .line 2352
    const/4 v0, 0x1

    #@39
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3b
    goto :goto_0

    #@3c
    .line 2333
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
    .line 2619
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2620
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    #@5
    if-eq v0, p1, :cond_0

    #@7
    .line 2621
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    #@9
    .line 2622
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@b
    or-int/lit8 v0, v0, 0x20

    #@d
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@f
    .line 2623
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit v1

    #@13
    .line 2618
    return-void

    #@14
    .line 2619
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
    .line 2657
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2660
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    #@5
    cmpl-float v0, v0, p1

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2661
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    #@b
    .line 2662
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@d
    or-int/lit8 v0, v0, 0x20

    #@f
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@11
    .line 2663
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    :cond_0
    monitor-exit v1

    #@15
    .line 2656
    return-void

    #@16
    .line 2657
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
    .line 2647
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2648
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    #@5
    if-eq v0, p1, :cond_0

    #@7
    .line 2649
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    #@9
    .line 2650
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@b
    or-int/lit8 v0, v0, 0x20

    #@d
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@f
    .line 2651
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit v1

    #@13
    .line 2646
    return-void

    #@14
    .line 2647
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
    .line 2637
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2638
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    #@5
    cmp-long v0, v2, p1

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2639
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    #@b
    .line 2640
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@d
    or-int/lit8 v0, v0, 0x20

    #@f
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@11
    .line 2641
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    :cond_0
    monitor-exit v1

    #@15
    .line 2636
    return-void

    #@16
    .line 2637
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
    .line 2629
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2630
    const/4 v0, 0x1

    #@4
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    #@6
    .line 2631
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@8
    or-int/lit8 v0, v0, 0x4

    #@a
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@c
    .line 2632
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit v1

    #@10
    .line 2628
    return-void

    #@11
    .line 2629
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
    .line 2532
    iget v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    #@4
    const v3, 0xffff

    #@7
    and-int/2addr v2, v3

    #@8
    if-ne v2, v6, :cond_1

    #@a
    .line 2534
    const/4 v1, 0x0

    #@b
    .line 2535
    .local v1, "disabled":Z
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 2536
    iget v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    #@11
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    #@14
    move-result v0

    #@15
    .line 2539
    .local v0, "appid":I
    const/16 v2, 0x2710

    #@17
    if-lt v0, v2, :cond_0

    #@19
    .line 2540
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    #@1b
    invoke-static {v2, v0}, Ljava/util/Arrays;->binarySearch([II)I

    #@1e
    move-result v2

    #@1f
    if-gez v2, :cond_0

    #@21
    .line 2541
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    #@23
    invoke-static {v2, v0}, Ljava/util/Arrays;->binarySearch([II)I

    #@26
    move-result v2

    #@27
    if-gez v2, :cond_0

    #@29
    .line 2542
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@2b
    iget v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    #@2d
    .line 2543
    const/16 v4, 0x10

    #@2f
    .line 2542
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    #@32
    move-result v2

    #@33
    .line 2544
    const/4 v3, 0x4

    #@34
    .line 2542
    if-le v2, v3, :cond_0

    #@36
    .line 2545
    const/4 v1, 0x1

    #@37
    .line 2548
    .end local v0    # "appid":I
    :cond_0
    iget-boolean v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    #@39
    if-eq v2, v1, :cond_1

    #@3b
    .line 2549
    iput-boolean v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    #@3d
    .line 2550
    return v6

    #@3e
    .line 2553
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
    .line 1316
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 1317
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@6
    .line 1318
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    #@9
    .line 1319
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@b
    or-int/lit8 v0, v0, 0x2

    #@d
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@f
    .line 1320
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    #@11
    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/Notifier;->onWakefulnessChangeStarted(II)V

    #@14
    .line 1315
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
    .line 1777
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    #@4
    if-nez v2, :cond_0

    #@6
    .line 1778
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    #@8
    if-eqz v2, :cond_2

    #@a
    .line 1779
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    #@c
    if-eqz v2, :cond_1

    #@e
    .line 1777
    :cond_0
    :goto_0
    return v0

    #@f
    :cond_1
    move v0, v1

    #@10
    .line 1779
    goto :goto_0

    #@11
    :cond_2
    move v0, v1

    #@12
    .line 1778
    goto :goto_0
.end method

.method private shouldUseProximitySensorLocked()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2202
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
    .line 1474
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1475
    return v2

    #@7
    .line 1480
    :cond_0
    if-eqz p1, :cond_1

    #@9
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    #@b
    if-eqz v0, :cond_3

    #@d
    .line 1487
    :cond_1
    if-nez p1, :cond_2

    #@f
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    #@11
    if-eqz v0, :cond_2

    #@13
    .line 1488
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    #@15
    if-ne v0, v1, :cond_2

    #@17
    .line 1489
    if-eqz p3, :cond_4

    #@19
    .line 1494
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
    .line 1495
    return v2

    #@23
    .line 1481
    :cond_3
    if-ne p2, v1, :cond_1

    #@25
    .line 1482
    return v2

    #@26
    .line 1490
    :cond_4
    return v2

    #@27
    .line 1499
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    #@29
    if-eqz v0, :cond_6

    #@2b
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    #@2d
    if-eqz v0, :cond_7

    #@2f
    .line 1504
    :cond_6
    const/4 v0, 0x1

    #@30
    return v0

    #@31
    .line 1500
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
    .line 2380
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@2
    if-eqz v3, :cond_0

    #@4
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 2384
    new-instance v2, Lcom/android/server/power/PowerManagerService$4;

    #@a
    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService$4;-><init>(Lcom/android/server/power/PowerManagerService;IZLjava/lang/String;)V

    #@d
    .line 2400
    .local v2, "runnable":Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@f
    invoke-static {v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    #@12
    move-result-object v1

    #@13
    .line 2401
    .local v1, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    #@14
    invoke-virtual {v1, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    #@17
    .line 2402
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@19
    invoke-virtual {v3, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessage(Landroid/os/Message;)Z

    #@1c
    .line 2405
    if-eqz p4, :cond_1

    #@1e
    .line 2406
    monitor-enter v2

    #@1f
    .line 2409
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    goto :goto_0

    #@23
    .line 2410
    :catch_0
    move-exception v0

    #@24
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    #@25
    .line 2381
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
    .line 2406
    .restart local v1    # "msg":Landroid/os/Message;
    .restart local v2    # "runnable":Ljava/lang/Runnable;
    :catchall_0
    move-exception v3

    #@2f
    monitor-exit v2

    #@30
    throw v3

    #@31
    .line 2379
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
    .line 1987
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    #@4
    .line 1988
    .local v2, "oldDisplayReady":Z
    and-int/lit16 v7, p1, 0x83f

    #@6
    if-eqz v7, :cond_3

    #@8
    .line 1991
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@a
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getDesiredScreenPolicyLocked()I

    #@d
    move-result v8

    #@e
    iput v8, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    #@10
    .line 1994
    const/4 v1, 0x1

    #@11
    .line 1995
    .local v1, "brightnessSetByUser":Z
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    #@13
    .line 1996
    .local v4, "screenBrightness":I
    const/4 v3, 0x0

    #@14
    .line 1997
    .local v3, "screenAutoBrightnessAdjustment":F
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    #@16
    if-ne v7, v6, :cond_5

    #@18
    const/4 v0, 0x1

    #@19
    .line 1999
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
    .line 2000
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    #@23
    .line 2001
    const/4 v0, 0x0

    #@24
    .line 2002
    const/4 v1, 0x0

    #@25
    .line 2008
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    #@27
    .line 2009
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    #@29
    .line 2011
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    #@2b
    .line 2010
    invoke-static {v7}, Lcom/android/server/power/PowerManagerService;->isValidAutoBrightnessAdjustment(F)Z

    #@2e
    move-result v7

    #@2f
    if-eqz v7, :cond_8

    #@31
    .line 2012
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    #@33
    .line 2020
    :cond_1
    :goto_2
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    #@35
    .line 2019
    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    #@38
    move-result v7

    #@39
    .line 2020
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    #@3b
    .line 2019
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    #@3e
    move-result v4

    #@3f
    .line 2022
    const/high16 v7, 0x3f800000    # 1.0f

    #@41
    .line 2021
    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    #@44
    move-result v7

    #@45
    .line 2022
    const/high16 v8, -0x40800000    # -1.0f

    #@47
    .line 2021
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    #@4a
    move-result v3

    #@4b
    .line 2025
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@4d
    iput v4, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    #@4f
    .line 2026
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@51
    iput v3, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    #@53
    .line 2028
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@55
    iput-boolean v1, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->brightnessSetByUser:Z

    #@57
    .line 2029
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@59
    iput-boolean v0, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    #@5b
    .line 2030
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@5d
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->shouldUseProximitySensorLocked()Z

    #@60
    move-result v8

    #@61
    iput-boolean v8, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    #@63
    .line 2031
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@65
    iget-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    #@67
    iput-boolean v8, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    #@69
    .line 2032
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@6b
    iget-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    #@6d
    iput-boolean v8, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    #@6f
    .line 2033
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@71
    iget-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mBrightnessUseTwilight:Z

    #@73
    iput-boolean v8, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useTwilight:Z

    #@75
    .line 2035
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@77
    iget v7, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    #@79
    if-ne v7, v6, :cond_9

    #@7b
    .line 2036
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@7d
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    #@7f
    iput v8, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    #@81
    .line 2037
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@83
    iget v7, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    #@85
    const/4 v8, 0x4

    #@86
    if-ne v7, v8, :cond_2

    #@88
    .line 2038
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@8a
    and-int/lit16 v7, v7, 0x80

    #@8c
    if-eqz v7, :cond_2

    #@8e
    .line 2039
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@90
    const/4 v8, 0x3

    #@91
    iput v8, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    #@93
    .line 2041
    :cond_2
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@95
    .line 2042
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    #@97
    .line 2041
    iput v8, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    #@99
    .line 2048
    :goto_3
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    #@9b
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@9d
    .line 2049
    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    #@9f
    .line 2048
    invoke-virtual {v7, v8, v9}, Landroid/hardware/display/DisplayManagerInternal;->requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z

    #@a2
    move-result v7

    #@a3
    iput-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    #@a5
    .line 2050
    iput-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    #@a7
    .line 2063
    .end local v0    # "autoBrightness":Z
    .end local v1    # "brightnessSetByUser":Z
    .end local v3    # "screenAutoBrightnessAdjustment":F
    .end local v4    # "screenBrightness":I
    :cond_3
    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    #@a9
    if-eqz v7, :cond_4

    #@ab
    if-eqz v2, :cond_a

    #@ad
    :cond_4
    :goto_4
    return v5

    #@ae
    .line 1997
    .restart local v1    # "brightnessSetByUser":Z
    .restart local v3    # "screenAutoBrightnessAdjustment":F
    .restart local v4    # "screenBrightness":I
    :cond_5
    const/4 v0, 0x0

    #@af
    .restart local v0    # "autoBrightness":Z
    goto/16 :goto_0

    #@b1
    .line 2003
    :cond_6
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    #@b3
    invoke-static {v7}, Lcom/android/server/power/PowerManagerService;->isValidBrightness(I)Z

    #@b6
    move-result v7

    #@b7
    if-eqz v7, :cond_7

    #@b9
    .line 2004
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    #@bb
    goto/16 :goto_1

    #@bd
    .line 2005
    :cond_7
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    #@bf
    invoke-static {v7}, Lcom/android/server/power/PowerManagerService;->isValidBrightness(I)Z

    #@c2
    move-result v7

    #@c3
    if-eqz v7, :cond_0

    #@c5
    .line 2006
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    #@c7
    goto/16 :goto_1

    #@c9
    .line 2015
    :cond_8
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    #@cb
    .line 2014
    invoke-static {v7}, Lcom/android/server/power/PowerManagerService;->isValidAutoBrightnessAdjustment(F)Z

    #@ce
    move-result v7

    #@cf
    if-eqz v7, :cond_1

    #@d1
    .line 2016
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    #@d3
    goto/16 :goto_2

    #@d5
    .line 2044
    :cond_9
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@d7
    iput v5, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    #@d9
    .line 2045
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@db
    const/4 v8, -0x1

    #@dc
    iput v8, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    #@de
    goto :goto_3

    #@df
    .end local v0    # "autoBrightness":Z
    .end local v1    # "brightnessSetByUser":Z
    .end local v3    # "screenAutoBrightnessAdjustment":F
    .end local v4    # "screenBrightness":I
    :cond_a
    move v5, v6

    #@e0
    .line 2063
    goto :goto_4
.end method

.method private updateDreamLocked(IZ)V
    .locals 1
    .param p1, "dirty"    # I
    .param p2, "displayBecameReady"    # Z

    #@0
    .prologue
    .line 1812
    and-int/lit16 v0, p1, 0x3f7

    #@2
    if-nez v0, :cond_0

    #@4
    if-eqz p2, :cond_1

    #@6
    .line 1821
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 1822
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->scheduleSandmanLocked()V

    #@d
    .line 1811
    :cond_1
    return-void
.end method

.method private updateIsPoweredLocked(I)V
    .locals 11
    .param p1, "dirty"    # I

    #@0
    .prologue
    .line 1414
    and-int/lit16 v1, p1, 0x100

    #@2
    if-eqz v1, :cond_5

    #@4
    .line 1415
    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    #@6
    .line 1416
    .local v10, "wasPowered":Z
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    #@8
    .line 1417
    .local v9, "oldPlugType":I
    iget-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    #@a
    .line 1418
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
    .line 1419
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    #@15
    invoke-virtual {v1}, Landroid/os/BatteryManagerInternal;->getPlugType()I

    #@18
    move-result v1

    #@19
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    #@1b
    .line 1420
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    #@1d
    invoke-virtual {v1}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    #@20
    move-result v1

    #@21
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    #@23
    .line 1421
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    #@25
    invoke-virtual {v1}, Landroid/os/BatteryManagerInternal;->getBatteryLevelLow()Z

    #@28
    move-result v1

    #@29
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    #@2b
    .line 1431
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    #@2d
    if-ne v10, v1, :cond_0

    #@2f
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    #@31
    if-eq v9, v1, :cond_2

    #@33
    .line 1432
    :cond_0
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@35
    or-int/lit8 v1, v1, 0x40

    #@37
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@39
    .line 1435
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    #@3b
    .line 1436
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    #@3d
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    #@3f
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    #@41
    .line 1435
    invoke-virtual {v1, v4, v5, v6}, Lcom/android/server/power/WirelessChargerDetector;->update(ZII)Z

    #@44
    move-result v0

    #@45
    .line 1443
    .local v0, "dockedOnWirelessCharger":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@48
    move-result-wide v2

    #@49
    .line 1444
    .local v2, "now":J
    invoke-direct {p0, v10, v9, v0}, Lcom/android/server/power/PowerManagerService;->shouldWakeUpWhenPluggedOrUnpluggedLocked(ZIZ)Z

    #@4c
    move-result v1

    #@4d
    if-eqz v1, :cond_1

    #@4f
    .line 1446
    const-string/jumbo v4, "android.server.power:POWER"

    #@52
    .line 1447
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    #@54
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@57
    move-result-object v6

    #@58
    .line 1446
    const/16 v5, 0x3e8

    #@5a
    .line 1447
    const/16 v7, 0x3e8

    #@5c
    move-object v1, p0

    #@5d
    .line 1446
    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z

    #@60
    .line 1450
    :cond_1
    const/4 v4, 0x0

    #@61
    const/4 v5, 0x0

    #@62
    const/16 v6, 0x3e8

    #@64
    move-object v1, p0

    #@65
    .line 1449
    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    #@68
    .line 1454
    if-eqz v0, :cond_2

    #@6a
    .line 1455
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    #@6c
    invoke-virtual {v1}, Lcom/android/server/power/Notifier;->onWirelessChargingStarted()V

    #@6f
    .line 1459
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
    .line 1460
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    #@79
    if-eq v8, v1, :cond_4

    #@7b
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    #@7d
    if-eqz v1, :cond_6

    #@7f
    .line 1466
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateLowPowerModeLocked()V

    #@82
    .line 1413
    .end local v8    # "oldLevelLow":Z
    .end local v9    # "oldPlugType":I
    .end local v10    # "wasPowered":Z
    :cond_5
    return-void

    #@83
    .line 1464
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
    .line 798
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    #@3
    if-eqz v3, :cond_0

    #@5
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    #@7
    if-eqz v3, :cond_0

    #@9
    .line 803
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    #@b
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@e
    move-result-object v3

    #@f
    .line 804
    const-string/jumbo v4, "low_power"

    #@12
    .line 803
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@15
    .line 805
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    #@17
    .line 807
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    #@19
    if-nez v3, :cond_1

    #@1b
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    #@1d
    if-eqz v3, :cond_1

    #@1f
    .line 808
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    #@21
    if-eqz v3, :cond_4

    #@23
    .line 807
    :cond_1
    const/4 v0, 0x0

    #@24
    .line 809
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    #@26
    if-nez v3, :cond_5

    #@28
    move v1, v0

    #@29
    .line 811
    :goto_1
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    #@2b
    if-eq v3, v1, :cond_3

    #@2d
    .line 812
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    #@2f
    .line 813
    if-eqz v1, :cond_2

    #@31
    const/4 v2, 0x1

    #@32
    :cond_2
    const/4 v3, 0x5

    #@33
    invoke-direct {p0, v3, v2}, Lcom/android/server/power/PowerManagerService;->powerHintInternal(II)V

    #@36
    .line 814
    new-instance v2, Lcom/android/server/power/PowerManagerService$3;

    #@38
    invoke-direct {v2, p0, v1}, Lcom/android/server/power/PowerManagerService$3;-><init>(Lcom/android/server/power/PowerManagerService;Z)V

    #@3b
    invoke-direct {p0, v2}, Lcom/android/server/power/PowerManagerService;->postAfterBootCompleted(Ljava/lang/Runnable;)V

    #@3e
    .line 797
    :cond_3
    return-void

    #@3f
    .line 808
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    #@41
    .local v0, "autoLowPowerModeEnabled":Z
    goto :goto_0

    #@42
    .line 809
    .end local v0    # "autoLowPowerModeEnabled":Z
    :cond_5
    const/4 v1, 0x1

    #@43
    .local v1, "lowPowerModeEnabled":Z
    goto :goto_1
.end method

.method private updatePowerStateLocked()V
    .locals 10

    #@0
    .prologue
    const-wide/32 v8, 0x20000

    #@3
    .line 1360
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    #@5
    if-eqz v3, :cond_0

    #@7
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@9
    if-nez v3, :cond_1

    #@b
    .line 1361
    :cond_0
    return-void

    #@c
    .line 1363
    :cond_1
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@e
    invoke-static {v3}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    #@11
    move-result v3

    #@12
    if-nez v3, :cond_2

    #@14
    .line 1364
    const-string/jumbo v3, "PowerManagerService"

    #@17
    const-string/jumbo v6, "Power manager lock was not held when calling updatePowerStateLocked"

    #@1a
    invoke-static {v3, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 1367
    :cond_2
    const-string/jumbo v3, "updatePowerState"

    #@20
    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@23
    .line 1370
    :try_start_0
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@25
    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->updateIsPoweredLocked(I)V

    #@28
    .line 1371
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@2a
    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->updateStayOnLocked(I)V

    #@2d
    .line 1372
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@2f
    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->updateScreenBrightnessBoostLocked(I)V

    #@32
    .line 1377
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@35
    move-result-wide v4

    #@36
    .line 1378
    .local v4, "now":J
    const/4 v1, 0x0

    #@37
    .line 1380
    .local v1, "dirtyPhase2":I
    :cond_3
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@39
    .line 1381
    .local v0, "dirtyPhase1":I
    or-int/2addr v1, v0

    #@3a
    .line 1382
    const/4 v3, 0x0

    #@3b
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@3d
    .line 1384
    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockSummaryLocked(I)V

    #@40
    .line 1385
    invoke-direct {p0, v4, v5, v0}, Lcom/android/server/power/PowerManagerService;->updateUserActivitySummaryLocked(JI)V

    #@43
    .line 1386
    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->updateWakefulnessLocked(I)Z

    #@46
    move-result v3

    #@47
    if-nez v3, :cond_3

    #@49
    .line 1392
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->updateDisplayPowerStateLocked(I)Z

    #@4c
    move-result v2

    #@4d
    .line 1395
    .local v2, "displayBecameReady":Z
    invoke-direct {p0, v1, v2}, Lcom/android/server/power/PowerManagerService;->updateDreamLocked(IZ)V

    #@50
    .line 1398
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->finishWakefulnessChangeIfNeededLocked()V

    #@53
    .line 1403
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSuspendBlockerLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@56
    .line 1405
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@59
    .line 1359
    return-void

    #@5a
    .line 1404
    .end local v0    # "dirtyPhase1":I
    .end local v1    # "dirtyPhase2":I
    .end local v2    # "displayBecameReady":Z
    .end local v4    # "now":J
    :catchall_0
    move-exception v3

    #@5b
    .line 1405
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@5e
    .line 1404
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
    .line 2067
    and-int/lit16 v1, p1, 0x800

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 2068
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 2069
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@d
    move-result-wide v2

    #@e
    .line 2070
    .local v2, "now":J
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@10
    invoke-virtual {v1, v5}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    #@13
    .line 2071
    iget-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    #@15
    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    #@17
    cmp-long v1, v6, v10

    #@19
    if-lez v1, :cond_0

    #@1b
    .line 2072
    iget-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    #@1d
    .line 2073
    const-wide/16 v10, 0x1388

    #@1f
    .line 2072
    add-long v8, v6, v10

    #@21
    .line 2074
    .local v8, "boostTimeout":J
    cmp-long v1, v8, v2

    #@23
    if-lez v1, :cond_0

    #@25
    .line 2075
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@27
    invoke-virtual {v1, v5}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    #@2a
    move-result-object v0

    #@2b
    .line 2076
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    #@2c
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    #@2f
    .line 2077
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@31
    invoke-virtual {v1, v0, v8, v9}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    #@34
    .line 2078
    return-void

    #@35
    .line 2081
    .end local v0    # "msg":Landroid/os/Message;
    .end local v8    # "boostTimeout":J
    :cond_0
    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    #@37
    .line 2082
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    #@39
    invoke-virtual {v1}, Lcom/android/server/power/Notifier;->onScreenBrightnessBoostChanged()V

    #@3c
    .line 2084
    const/16 v6, 0x3e8

    #@3e
    move-object v1, p0

    #@3f
    move v5, v4

    #@40
    .line 2083
    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    #@43
    .line 2066
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
    .line 714
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@9
    move-result-object v5

    #@a
    .line 717
    .local v5, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v9, "screensaver_enabled"

    #@d
    .line 718
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    #@f
    if-eqz v6, :cond_5

    #@11
    move v6, v7

    #@12
    .line 716
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
    .line 721
    const-string/jumbo v9, "screensaver_activate_on_sleep"

    #@1e
    .line 722
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    #@20
    if-eqz v6, :cond_7

    #@22
    move v6, v7

    #@23
    .line 720
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
    .line 725
    const-string/jumbo v9, "screensaver_activate_on_dock"

    #@2f
    .line 726
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    #@31
    if-eqz v6, :cond_9

    #@33
    move v6, v7

    #@34
    .line 724
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
    .line 729
    const-string/jumbo v6, "screen_off_timeout"

    #@40
    const/16 v9, 0x3a98

    #@42
    .line 728
    invoke-static {v5, v6, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@45
    move-result v6

    #@46
    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    #@48
    .line 732
    const-string/jumbo v6, "sleep_timeout"

    #@4b
    .line 731
    invoke-static {v5, v6, v11, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@4e
    move-result v6

    #@4f
    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:I

    #@51
    .line 735
    const-string/jumbo v6, "stay_on_while_plugged_in"

    #@54
    .line 734
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@57
    move-result v6

    #@58
    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    #@5a
    .line 736
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    #@5c
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5f
    move-result-object v6

    #@60
    .line 737
    const-string/jumbo v9, "theater_mode_on"

    #@63
    .line 736
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
    .line 739
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mSupportsDoubleTapWakeConfig:Z

    #@6e
    if-eqz v6, :cond_0

    #@70
    .line 741
    const-string/jumbo v6, "double_tap_to_wake"

    #@73
    .line 740
    invoke-static {v5, v6, v8, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@76
    move-result v6

    #@77
    if-eqz v6, :cond_c

    #@79
    const/4 v1, 0x1

    #@7a
    .line 743
    .local v1, "doubleTapWakeEnabled":Z
    :goto_7
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    #@7c
    if-eq v1, v6, :cond_0

    #@7e
    .line 744
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    #@80
    .line 745
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    #@82
    if-eqz v6, :cond_d

    #@84
    move v6, v7

    #@85
    :goto_8
    invoke-static {v7, v6}, Lcom/android/server/power/PowerManagerService;->nativeSetFeature(II)V

    #@88
    .line 749
    .end local v1    # "doubleTapWakeEnabled":Z
    :cond_0
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    #@8a
    .line 751
    .local v4, "oldScreenBrightnessSetting":I
    const-string/jumbo v6, "screen_brightness"

    #@8d
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    #@8f
    .line 750
    invoke-static {v5, v6, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@92
    move-result v6

    #@93
    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    #@95
    .line 753
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    #@97
    if-eq v4, v6, :cond_1

    #@99
    .line 754
    iput v11, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    #@9b
    .line 757
    :cond_1
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    #@9d
    .line 760
    .local v3, "oldScreenAutoBrightnessAdjustmentSetting":F
    const-string/jumbo v6, "screen_auto_brightness_adj"

    #@a0
    const/4 v9, 0x0

    #@a1
    .line 759
    invoke-static {v5, v6, v9, v10}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    #@a4
    move-result v6

    #@a5
    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    #@a7
    .line 762
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    #@a9
    cmpl-float v6, v3, v6

    #@ab
    if-eqz v6, :cond_2

    #@ad
    .line 763
    const/high16 v6, 0x7fc00000    # NaNf

    #@af
    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    #@b1
    .line 767
    :cond_2
    const-string/jumbo v6, "screen_brightness_mode"

    #@b4
    .line 766
    invoke-static {v5, v6, v8, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@b7
    move-result v6

    #@b8
    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    #@ba
    .line 771
    const-string/jumbo v6, "brightness_use_twilight"

    #@bd
    .line 770
    invoke-static {v5, v6, v8, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@c0
    move-result v6

    #@c1
    if-eqz v6, :cond_e

    #@c3
    :goto_9
    iput-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mBrightnessUseTwilight:Z

    #@c5
    .line 774
    const-string/jumbo v6, "low_power"

    #@c8
    .line 773
    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@cb
    move-result v6

    #@cc
    if-eqz v6, :cond_f

    #@ce
    const/4 v2, 0x1

    #@cf
    .line 776
    .local v2, "lowPowerModeEnabled":Z
    :goto_a
    const-string/jumbo v6, "low_power_trigger_level"

    #@d2
    .line 775
    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@d5
    move-result v6

    #@d6
    if-eqz v6, :cond_10

    #@d8
    const/4 v0, 0x1

    #@d9
    .line 777
    .local v0, "autoLowPowerModeConfigured":Z
    :goto_b
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    #@db
    if-ne v2, v6, :cond_3

    #@dd
    .line 778
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    #@df
    if-eq v0, v6, :cond_4

    #@e1
    .line 779
    :cond_3
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    #@e3
    .line 780
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    #@e5
    .line 781
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateLowPowerModeLocked()V

    #@e8
    .line 784
    :cond_4
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@ea
    or-int/lit8 v6, v6, 0x20

    #@ec
    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@ee
    .line 713
    return-void

    #@ef
    .end local v0    # "autoLowPowerModeConfigured":Z
    .end local v2    # "lowPowerModeEnabled":Z
    .end local v3    # "oldScreenAutoBrightnessAdjustmentSetting":F
    .end local v4    # "oldScreenBrightnessSetting":I
    :cond_5
    move v6, v8

    #@f0
    .line 718
    goto/16 :goto_0

    #@f2
    :cond_6
    move v6, v8

    #@f3
    .line 716
    goto/16 :goto_1

    #@f5
    :cond_7
    move v6, v8

    #@f6
    .line 722
    goto/16 :goto_2

    #@f8
    :cond_8
    move v6, v8

    #@f9
    .line 720
    goto/16 :goto_3

    #@fb
    :cond_9
    move v6, v8

    #@fc
    .line 726
    goto/16 :goto_4

    #@fe
    :cond_a
    move v6, v8

    #@ff
    .line 724
    goto/16 :goto_5

    #@101
    :cond_b
    move v6, v8

    #@102
    .line 736
    goto/16 :goto_6

    #@104
    .line 740
    :cond_c
    const/4 v1, 0x0

    #@105
    .restart local v1    # "doubleTapWakeEnabled":Z
    goto/16 :goto_7

    #@107
    :cond_d
    move v6, v8

    #@108
    .line 745
    goto/16 :goto_8

    #@10a
    .end local v1    # "doubleTapWakeEnabled":Z
    .restart local v3    # "oldScreenAutoBrightnessAdjustmentSetting":F
    .restart local v4    # "oldScreenBrightnessSetting":I
    :cond_e
    move v7, v8

    #@10b
    .line 770
    goto :goto_9

    #@10c
    .line 773
    :cond_f
    const/4 v2, 0x0

    #@10d
    .restart local v2    # "lowPowerModeEnabled":Z
    goto :goto_a

    #@10e
    .line 775
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
    .line 1512
    and-int/lit16 v1, p1, 0x120

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 1513
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    #@7
    .line 1514
    .local v0, "wasStayOn":Z
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 1515
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_2

    #@11
    .line 1518
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    #@13
    .line 1521
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    #@15
    if-eq v1, v0, :cond_1

    #@17
    .line 1522
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@19
    or-int/lit16 v1, v1, 0x80

    #@1b
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@1d
    .line 1511
    .end local v0    # "wasStayOn":Z
    :cond_1
    return-void

    #@1e
    .line 1516
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
    .line 2211
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@4
    and-int/lit8 v4, v4, 0x1

    #@6
    if-eqz v4, :cond_8

    #@8
    const/4 v3, 0x1

    #@9
    .line 2212
    .local v3, "needWakeLockSuspendBlocker":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->needDisplaySuspendBlockerLocked()Z

    #@c
    move-result v2

    #@d
    .line 2213
    .local v2, "needDisplaySuspendBlocker":Z
    if-eqz v2, :cond_9

    #@f
    const/4 v0, 0x0

    #@10
    .line 2214
    .local v0, "autoSuspend":Z
    :goto_1
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@12
    invoke-virtual {v4}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    #@15
    move-result v1

    #@16
    .line 2219
    .local v1, "interactive":Z
    if-nez v0, :cond_0

    #@18
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    #@1a
    if-eqz v4, :cond_0

    #@1c
    .line 2220
    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    #@1f
    .line 2224
    :cond_0
    if-eqz v3, :cond_1

    #@21
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    #@23
    if-eqz v4, :cond_a

    #@25
    .line 2228
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    #@27
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    #@29
    if-eqz v4, :cond_b

    #@2b
    .line 2239
    :cond_2
    :goto_3
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    #@2d
    if-eqz v4, :cond_4

    #@2f
    .line 2244
    if-nez v1, :cond_3

    #@31
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    #@33
    if-eqz v4, :cond_4

    #@35
    .line 2245
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V

    #@38
    .line 2250
    :cond_4
    if-nez v3, :cond_5

    #@3a
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    #@3c
    if-eqz v4, :cond_5

    #@3e
    .line 2251
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    #@40
    invoke-interface {v4}, Lcom/android/server/power/SuspendBlocker;->release()V

    #@43
    .line 2252
    iput-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    #@45
    .line 2254
    :cond_5
    if-nez v2, :cond_6

    #@47
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    #@49
    if-eqz v4, :cond_6

    #@4b
    .line 2255
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    #@4d
    invoke-interface {v4}, Lcom/android/server/power/SuspendBlocker;->release()V

    #@50
    .line 2256
    iput-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    #@52
    .line 2260
    :cond_6
    if-eqz v0, :cond_7

    #@54
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    #@56
    if-eqz v4, :cond_7

    #@58
    .line 2261
    invoke-direct {p0, v6}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    #@5b
    .line 2210
    :cond_7
    return-void

    #@5c
    .line 2211
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
    .line 2213
    .restart local v2    # "needDisplaySuspendBlocker":Z
    :cond_9
    const/4 v0, 0x1

    #@5f
    .restart local v0    # "autoSuspend":Z
    goto :goto_1

    #@60
    .line 2225
    .restart local v1    # "interactive":Z
    :cond_a
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    #@62
    invoke-interface {v4}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    #@65
    .line 2226
    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    #@67
    goto :goto_2

    #@68
    .line 2229
    :cond_b
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    #@6a
    invoke-interface {v4}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    #@6d
    .line 2230
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
    .line 1611
    and-int/lit8 v9, p3, 0x27

    #@2
    if-eqz v9, :cond_6

    #@4
    .line 1613
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@6
    const/4 v10, 0x1

    #@7
    invoke-virtual {v9, v10}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    #@a
    .line 1615
    const-wide/16 v4, 0x0

    #@c
    .line 1616
    .local v4, "nextTimeout":J
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@e
    const/4 v10, 0x1

    #@f
    if-eq v9, v10, :cond_0

    #@11
    .line 1617
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@13
    const/4 v10, 0x2

    #@14
    if-ne v9, v10, :cond_7

    #@16
    .line 1619
    :cond_0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getSleepTimeoutLocked()I

    #@19
    move-result v7

    #@1a
    .line 1620
    .local v7, "sleepTimeout":I
    invoke-direct {p0, v7}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(I)I

    #@1d
    move-result v6

    #@1e
    .line 1621
    .local v6, "screenOffTimeout":I
    invoke-direct {p0, v6}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(I)I

    #@21
    move-result v3

    #@22
    .line 1622
    .local v3, "screenDimDuration":I
    iget-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    #@24
    .line 1624
    .local v8, "userInactiveOverride":Z
    const/4 v9, 0x0

    #@25
    iput v9, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    #@27
    .line 1625
    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    #@29
    iget-wide v12, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    #@2b
    cmp-long v9, v10, v12

    #@2d
    if-ltz v9, :cond_1

    #@2f
    .line 1626
    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    #@31
    .line 1627
    int-to-long v12, v6

    #@32
    .line 1626
    add-long/2addr v10, v12

    #@33
    .line 1627
    int-to-long v12, v3

    #@34
    .line 1626
    sub-long v4, v10, v12

    #@36
    .line 1628
    cmp-long v9, p1, v4

    #@38
    if-gez v9, :cond_8

    #@3a
    .line 1629
    const/4 v9, 0x1

    #@3b
    iput v9, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    #@3d
    .line 1637
    :cond_1
    :goto_0
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    #@3f
    if-nez v9, :cond_2

    #@41
    .line 1638
    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    #@43
    iget-wide v12, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    #@45
    cmp-long v9, v10, v12

    #@47
    if-ltz v9, :cond_2

    #@49
    .line 1639
    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    #@4b
    int-to-long v12, v6

    #@4c
    add-long v4, v10, v12

    #@4e
    .line 1640
    cmp-long v9, p1, v4

    #@50
    if-gez v9, :cond_2

    #@52
    .line 1641
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@54
    iget v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    #@56
    const/4 v10, 0x3

    #@57
    if-ne v9, v10, :cond_9

    #@59
    .line 1642
    const/4 v9, 0x1

    #@5a
    iput v9, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    #@5c
    .line 1649
    :cond_2
    :goto_1
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    #@5e
    if-nez v9, :cond_3

    #@60
    .line 1650
    if-ltz v7, :cond_a

    #@62
    .line 1651
    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    #@64
    .line 1652
    iget-wide v12, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    #@66
    .line 1651
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    #@69
    move-result-wide v0

    #@6a
    .line 1653
    .local v0, "anyUserActivity":J
    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    #@6c
    cmp-long v9, v0, v10

    #@6e
    if-ltz v9, :cond_3

    #@70
    .line 1654
    int-to-long v10, v7

    #@71
    add-long v4, v0, v10

    #@73
    .line 1655
    cmp-long v9, p1, v4

    #@75
    if-gez v9, :cond_3

    #@77
    .line 1656
    const/4 v9, 0x4

    #@78
    iput v9, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    #@7a
    .line 1665
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
    .line 1666
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    #@83
    and-int/lit8 v9, v9, 0x3

    #@85
    if-eqz v9, :cond_4

    #@87
    .line 1669
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
    .line 1671
    iput-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    #@95
    .line 1674
    :cond_4
    const/4 v9, 0x4

    #@96
    iput v9, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    #@98
    .line 1675
    const-wide/16 v4, -0x1

    #@9a
    .line 1678
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
    .line 1679
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@a6
    const/4 v10, 0x1

    #@a7
    invoke-virtual {v9, v10}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    #@aa
    move-result-object v2

    #@ab
    .line 1680
    .local v2, "msg":Landroid/os/Message;
    const/4 v9, 0x1

    #@ac
    invoke-virtual {v2, v9}, Landroid/os/Message;->setAsynchronous(Z)V

    #@af
    .line 1681
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@b1
    invoke-virtual {v9, v2, v4, v5}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    #@b4
    .line 1609
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
    .line 1618
    .restart local v4    # "nextTimeout":J
    :cond_7
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@b7
    const/4 v10, 0x3

    #@b8
    if-eq v9, v10, :cond_0

    #@ba
    .line 1684
    const/4 v9, 0x0

    #@bb
    iput v9, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    #@bd
    goto :goto_3

    #@be
    .line 1631
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
    .line 1632
    cmp-long v9, p1, v4

    #@c5
    if-gez v9, :cond_1

    #@c7
    .line 1633
    const/4 v9, 0x2

    #@c8
    iput v9, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    #@ca
    goto/16 :goto_0

    #@cc
    .line 1643
    :cond_9
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@ce
    iget v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    #@d0
    const/4 v10, 0x2

    #@d1
    if-ne v9, v10, :cond_2

    #@d3
    .line 1644
    const/4 v9, 0x2

    #@d4
    iput v9, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    #@d6
    goto :goto_1

    #@d7
    .line 1660
    :cond_a
    const/4 v9, 0x4

    #@d8
    iput v9, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    #@da
    .line 1661
    const-wide/16 v4, -0x1

    #@dc
    goto :goto_2
.end method

.method private updateWakeLockDisabledStatesLocked()V
    .locals 6

    #@0
    .prologue
    .line 2508
    const/4 v0, 0x0

    #@1
    .line 2509
    .local v0, "changed":Z
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v2

    #@7
    .line 2510
    .local v2, "numWakeLocks":I
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    #@a
    .line 2511
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    #@12
    .line 2512
    .local v3, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v4, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    #@14
    const v5, 0xffff

    #@17
    and-int/2addr v4, v5

    #@18
    .line 2513
    const/4 v5, 0x1

    #@19
    .line 2512
    if-ne v4, v5, :cond_0

    #@1b
    .line 2514
    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    #@1e
    move-result v4

    #@1f
    if-eqz v4, :cond_0

    #@21
    .line 2515
    const/4 v0, 0x1

    #@22
    .line 2516
    iget-boolean v4, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    #@24
    if-eqz v4, :cond_1

    #@26
    .line 2518
    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    #@29
    .line 2510
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 2520
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    #@2f
    goto :goto_1

    #@30
    .line 2525
    .end local v3    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_2
    if-eqz v0, :cond_3

    #@32
    .line 2526
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@34
    or-int/lit8 v4, v4, 0x1

    #@36
    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@38
    .line 2527
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    #@3b
    .line 2507
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
    .line 1535
    and-int/lit8 v3, p1, 0x3

    #@3
    if-eqz v3, :cond_6

    #@5
    .line 1536
    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@7
    .line 1538
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v1

    #@d
    .line 1539
    .local v1, "numWakeLocks":I
    const/4 v0, 0x0

    #@e
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@10
    .line 1540
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    #@18
    .line 1541
    .local v2, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    #@1a
    const v4, 0xffff

    #@1d
    and-int/2addr v3, v4

    #@1e
    sparse-switch v3, :sswitch_data_0

    #@21
    .line 1539
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 1543
    :sswitch_0
    iget-boolean v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    #@26
    if-nez v3, :cond_0

    #@28
    .line 1545
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@2a
    or-int/lit8 v3, v3, 0x1

    #@2c
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@2e
    goto :goto_1

    #@2f
    .line 1549
    :sswitch_1
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@31
    or-int/lit8 v3, v3, 0xa

    #@33
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@35
    goto :goto_1

    #@36
    .line 1552
    :sswitch_2
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@38
    or-int/lit8 v3, v3, 0x2

    #@3a
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@3c
    goto :goto_1

    #@3d
    .line 1555
    :sswitch_3
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@3f
    or-int/lit8 v3, v3, 0x4

    #@41
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@43
    goto :goto_1

    #@44
    .line 1558
    :sswitch_4
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@46
    or-int/lit8 v3, v3, 0x10

    #@48
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@4a
    goto :goto_1

    #@4b
    .line 1561
    :sswitch_5
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@4d
    or-int/lit8 v3, v3, 0x40

    #@4f
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@51
    goto :goto_1

    #@52
    .line 1564
    :sswitch_6
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@54
    or-int/lit16 v3, v3, 0x80

    #@56
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@58
    goto :goto_1

    #@59
    .line 1570
    .end local v2    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_1
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@5b
    const/4 v4, 0x3

    #@5c
    if-eq v3, v4, :cond_2

    #@5e
    .line 1571
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@60
    and-int/lit16 v3, v3, -0xc1

    #@62
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@64
    .line 1573
    :cond_2
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@66
    if-eqz v3, :cond_3

    #@68
    .line 1574
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@6a
    and-int/lit8 v3, v3, 0x40

    #@6c
    if-eqz v3, :cond_4

    #@6e
    .line 1575
    :cond_3
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@70
    and-int/lit8 v3, v3, -0xf

    #@72
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@74
    .line 1577
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@76
    if-nez v3, :cond_4

    #@78
    .line 1578
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@7a
    and-int/lit8 v3, v3, -0x11

    #@7c
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@7e
    .line 1583
    :cond_4
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@80
    and-int/lit8 v3, v3, 0x6

    #@82
    if-eqz v3, :cond_5

    #@84
    .line 1584
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@86
    const/4 v4, 0x1

    #@87
    if-ne v3, v4, :cond_7

    #@89
    .line 1585
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@8b
    or-int/lit8 v3, v3, 0x21

    #@8d
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@8f
    .line 1590
    :cond_5
    :goto_2
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@91
    and-int/lit16 v3, v3, 0x80

    #@93
    if-eqz v3, :cond_6

    #@95
    .line 1591
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@97
    or-int/lit8 v3, v3, 0x1

    #@99
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@9b
    .line 1534
    .end local v0    # "i":I
    .end local v1    # "numWakeLocks":I
    :cond_6
    return-void

    #@9c
    .line 1586
    .restart local v0    # "i":I
    .restart local v1    # "numWakeLocks":I
    :cond_7
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@9e
    const/4 v4, 0x2

    #@9f
    if-ne v3, v4, :cond_5

    #@a1
    .line 1587
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@a3
    or-int/lit8 v3, v3, 0x1

    #@a5
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    #@a7
    goto :goto_2

    #@a8
    .line 1541
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
    .line 985
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v10

    #@3
    .line 986
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    #@6
    move-result v9

    #@7
    .line 987
    .local v9, "index":I
    if-gez v9, :cond_0

    #@9
    .line 992
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
    .line 993
    const-string/jumbo v3, " from uid "

    #@1e
    .line 992
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
    .line 985
    .end local v9    # "index":I
    :catchall_0
    move-exception v0

    #@2f
    monitor-exit v10

    #@30
    throw v0

    #@31
    .line 996
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
    .line 1002
    .local v1, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    invoke-virtual {v1, p2}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameWorkSource(Landroid/os/WorkSource;)Z

    #@3c
    move-result v0

    #@3d
    if-nez v0, :cond_1

    #@3f
    .line 1003
    iget v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    #@41
    iget-object v3, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    #@43
    .line 1004
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
    .line 1003
    invoke-direct/range {v0 .. v8}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    #@4f
    .line 1006
    iput-object p3, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    #@51
    .line 1007
    invoke-virtual {v1, p2}, Lcom/android/server/power/PowerManagerService$WakeLock;->updateWorkSource(Landroid/os/WorkSource;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@54
    :cond_1
    monitor-exit v10

    #@55
    .line 984
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
    .line 1752
    const/4 v0, 0x0

    #@4
    .line 1753
    .local v0, "changed":Z
    and-int/lit16 v1, p1, 0x697

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1756
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
    .line 1760
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@16
    move-result-wide v2

    #@17
    .line 1761
    .local v2, "time":J
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->shouldNapAtBedTimeLocked()Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_1

    #@1d
    .line 1762
    invoke-direct {p0, v2, v3, v6}, Lcom/android/server/power/PowerManagerService;->napNoUpdateLocked(JI)Z

    #@20
    move-result v0

    #@21
    .line 1769
    .end local v0    # "changed":Z
    .end local v2    # "time":J
    :cond_0
    :goto_0
    return v0

    #@22
    .line 1765
    .restart local v0    # "changed":Z
    .restart local v2    # "time":J
    :cond_1
    const/4 v4, 0x2

    #@23
    move-object v1, p0

    #@24
    .line 1764
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
    .line 1072
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
    .line 1071
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
    .line 1076
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1077
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1078
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v1

    #@d
    .line 1075
    return-void

    #@e
    .line 1076
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
    .line 1090
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
    .line 1092
    :cond_0
    return v2

    #@12
    .line 1091
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    #@14
    if-eqz v0, :cond_0

    #@16
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    #@18
    if-eqz v0, :cond_0

    #@1a
    .line 1095
    const-string/jumbo v0, "userActivity"

    #@1d
    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@20
    .line 1097
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    #@22
    cmp-long v0, p1, v0

    #@24
    if-lez v0, :cond_2

    #@26
    .line 1098
    const/4 v0, 0x2

    #@27
    const/4 v1, 0x0

    #@28
    invoke-direct {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->powerHintInternal(II)V

    #@2b
    .line 1099
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    #@2d
    .line 1102
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    #@2f
    invoke-virtual {v0, p3, p5}, Lcom/android/server/power/Notifier;->onUserActivity(II)V

    #@32
    .line 1104
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    #@34
    if-eqz v0, :cond_3

    #@36
    .line 1105
    const/4 v0, 0x0

    #@37
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    #@39
    .line 1106
    const-wide/16 v0, -0x1

    #@3b
    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    #@3d
    .line 1109
    :cond_3
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@3f
    if-eqz v0, :cond_4

    #@41
    .line 1110
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@43
    const/4 v1, 0x3

    #@44
    if-ne v0, v1, :cond_5

    #@46
    .line 1130
    :cond_4
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@49
    .line 1112
    return v2

    #@4a
    .line 1111
    :cond_5
    and-int/lit8 v0, p4, 0x2

    #@4c
    if-nez v0, :cond_4

    #@4e
    .line 1115
    and-int/lit8 v0, p4, 0x1

    #@50
    if-eqz v0, :cond_6

    #@52
    .line 1116
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    #@54
    cmp-long v0, p1, v0

    #@56
    if-lez v0, :cond_7

    #@58
    .line 1117
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    #@5a
    cmp-long v0, p1, v0

    #@5c
    if-lez v0, :cond_7

    #@5e
    .line 1118
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    #@60
    .line 1119
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@62
    or-int/lit8 v0, v0, 0x4

    #@64
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@66
    .line 1130
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@69
    .line 1120
    return v3

    #@6a
    .line 1123
    :cond_6
    :try_start_2
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    #@6c
    cmp-long v0, p1, v0

    #@6e
    if-lez v0, :cond_7

    #@70
    .line 1124
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    #@72
    .line 1125
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@74
    or-int/lit8 v0, v0, 0x4

    #@76
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@78
    .line 1130
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@7b
    .line 1126
    return v3

    #@7c
    .line 1130
    :cond_7
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@7f
    .line 1132
    return v2

    #@80
    .line 1129
    :catchall_0
    move-exception v0

    #@81
    .line 1130
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@84
    .line 1129
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
    .line 1137
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1138
    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1139
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v1

    #@d
    .line 1136
    return-void

    #@e
    .line 1137
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
    .line 1150
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
    .line 1152
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0

    #@d
    .line 1151
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    #@f
    if-eqz v0, :cond_0

    #@11
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 1155
    const-string/jumbo v0, "wakeUp"

    #@18
    const-wide/32 v2, 0x20000

    #@1b
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@1e
    .line 1157
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    #@20
    packed-switch v0, :pswitch_data_0

    #@23
    .line 1169
    :goto_0
    :pswitch_0
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    #@25
    .line 1170
    const/4 v0, 0x1

    #@26
    const/4 v1, 0x0

    #@27
    invoke-direct {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(II)V

    #@2a
    .line 1172
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    #@2c
    invoke-virtual {v0, p3, p4, p5, p6}, Lcom/android/server/power/Notifier;->onWakeUp(Ljava/lang/String;ILjava/lang/String;I)V

    #@2f
    .line 1174
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
    .line 1173
    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    .line 1176
    const-wide/32 v0, 0x20000

    #@3a
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@3d
    .line 1178
    const/4 v0, 0x1

    #@3e
    return v0

    #@3f
    .line 1159
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
    .line 1175
    :catchall_0
    move-exception v0

    #@62
    .line 1176
    const-wide/32 v2, 0x20000

    #@65
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@68
    .line 1175
    throw v0

    #@69
    .line 1162
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
    .line 1165
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
    .line 1157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method isDeviceIdleModeInternal()Z
    .locals 2

    #@0
    .prologue
    .line 2362
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 2363
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 2362
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
    .line 2368
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 2369
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 2368
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
    .line 2726
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    monitor-exit v0

    #@4
    .line 2724
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
    .line 536
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v8

    #@6
    .line 537
    const/16 v1, 0x258

    #@8
    if-ne p1, v1, :cond_1

    #@a
    .line 538
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->incrementBootCount()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    :cond_0
    :goto_0
    monitor-exit v8

    #@e
    .line 535
    return-void

    #@f
    .line 540
    :cond_1
    if-ne p1, v4, :cond_0

    #@11
    .line 541
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@14
    move-result-wide v2

    #@15
    .line 542
    .local v2, "now":J
    const/4 v1, 0x1

    #@16
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    #@18
    .line 543
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@1a
    or-int/lit8 v1, v1, 0x10

    #@1c
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@1e
    .line 545
    const/4 v4, 0x0

    #@1f
    const/4 v5, 0x0

    #@20
    const/16 v6, 0x3e8

    #@22
    move-object v1, p0

    #@23
    .line 544
    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    #@26
    .line 546
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    #@29
    .line 548
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompletedRunnables:[Ljava/lang/Runnable;

    #@2b
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    #@2e
    move-result v1

    #@2f
    if-nez v1, :cond_2

    #@31
    .line 549
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
    .line 550
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
    .line 551
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    #@60
    move-result-object v6

    #@61
    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@64
    .line 550
    add-int/lit8 v1, v1, 0x1

    #@66
    goto :goto_1

    #@67
    .line 554
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
    .line 536
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
    .line 527
    const-string/jumbo v0, "power"

    #@4
    new-instance v1, Lcom/android/server/power/PowerManagerService$BinderService;

    #@6
    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$BinderService;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$BinderService;)V

    #@9
    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@c
    .line 528
    const-class v0, Landroid/os/PowerManagerInternal;

    #@e
    new-instance v1, Lcom/android/server/power/PowerManagerService$LocalService;

    #@10
    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$LocalService;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$LocalService;)V

    #@13
    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    #@16
    .line 530
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    #@1d
    .line 531
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    #@20
    move-result-object v0

    #@21
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@23
    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;)V

    #@26
    .line 526
    return-void
.end method

.method setDeviceIdleModeInternal(Z)Z
    .locals 2
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 2446
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2447
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    #@5
    if-eq v0, p1, :cond_1

    #@7
    .line 2448
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    #@9
    .line 2449
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    #@c
    .line 2450
    if-eqz p1, :cond_0

    #@e
    .line 2451
    const-string/jumbo v0, "power"

    #@11
    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnPhase(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 2455
    :goto_0
    const/4 v0, 0x1

    #@15
    monitor-exit v1

    #@16
    return v0

    #@17
    .line 2453
    :cond_0
    :try_start_1
    const-string/jumbo v0, "power"

    #@1a
    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffPhase(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    goto :goto_0

    #@1e
    .line 2446
    :catchall_0
    move-exception v0

    #@1f
    monitor-exit v1

    #@20
    throw v0

    #@21
    .line 2457
    :cond_1
    const/4 v0, 0x0

    #@22
    monitor-exit v1

    #@23
    return v0
.end method

.method setDeviceIdleTempWhitelistInternal([I)V
    .locals 2
    .param p1, "appids"    # [I

    #@0
    .prologue
    .line 2481
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2482
    :try_start_0
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    #@5
    .line 2483
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2484
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v1

    #@d
    .line 2480
    return-void

    #@e
    .line 2481
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
    .line 2472
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2473
    :try_start_0
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    #@5
    .line 2474
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2475
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v1

    #@d
    .line 2471
    return-void

    #@e
    .line 2472
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
    .line 2462
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2463
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    #@5
    if-eq v0, p1, :cond_0

    #@7
    .line 2464
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 2465
    const/4 v0, 0x1

    #@a
    monitor-exit v1

    #@b
    return v0

    #@c
    .line 2467
    :cond_0
    const/4 v0, 0x0

    #@d
    monitor-exit v1

    #@e
    return v0

    #@f
    .line 2462
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
    .line 2438
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2439
    :try_start_0
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    #@5
    .line 2440
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@7
    or-int/lit8 v0, v0, 0x20

    #@9
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@b
    .line 2441
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit v1

    #@f
    .line 2437
    return-void

    #@10
    .line 2438
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
    .line 2433
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    .line 2434
    const-string/jumbo v1, "stay_on_while_plugged_in"

    #@9
    .line 2433
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@c
    .line 2432
    return-void
.end method

.method public systemReady(Lcom/android/internal/app/IAppOpsService;)V
    .locals 14
    .param p1, "appOps"    # Lcom/android/internal/app/IAppOpsService;

    #@0
    .prologue
    .line 560
    iget-object v13, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v13

    #@3
    .line 561
    const/4 v0, 0x1

    #@4
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    #@6
    .line 562
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    #@8
    .line 563
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
    .line 564
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
    .line 565
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
    .line 566
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
    .line 568
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
    .line 569
    .local v9, "pm":Landroid/os/PowerManager;
    invoke-virtual {v9}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    #@3e
    move-result v0

    #@3f
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    #@41
    .line 570
    invoke-virtual {v9}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    #@44
    move-result v0

    #@45
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    #@47
    .line 571
    invoke-virtual {v9}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    #@4a
    move-result v0

    #@4b
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    #@4d
    .line 573
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
    .line 577
    .local v11, "sensorManager":Landroid/hardware/SensorManager;
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    #@5d
    move-result-object v0

    #@5e
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@60
    .line 578
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
    .line 579
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    #@6c
    const-string/jumbo v5, "PowerManagerService.Broadcasts"

    #@6f
    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    #@72
    move-result-object v5

    #@73
    .line 580
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@75
    .line 578
    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/Notifier;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/internal/app/IAppOpsService;Lcom/android/server/power/SuspendBlocker;Landroid/view/WindowManagerPolicy;)V

    #@78
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    #@7a
    .line 582
    new-instance v0, Lcom/android/server/power/WirelessChargerDetector;

    #@7c
    .line 583
    const-string/jumbo v1, "PowerManagerService.WirelessChargerDetector"

    #@7f
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    #@82
    move-result-object v1

    #@83
    .line 584
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@85
    .line 582
    invoke-direct {v0, v11, v1, v2}, Lcom/android/server/power/WirelessChargerDetector;-><init>(Landroid/hardware/SensorManager;Lcom/android/server/power/SuspendBlocker;Landroid/os/Handler;)V

    #@88
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    #@8a
    .line 585
    new-instance v0, Lcom/android/server/power/PowerManagerService$SettingsObserver;

    #@8c
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@8e
    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerService$SettingsObserver;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Handler;)V

    #@91
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    #@93
    .line 587
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
    .line 588
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
    .line 591
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    #@a8
    .line 592
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    #@aa
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    #@ac
    .line 591
    invoke-virtual {v0, v1, v2, v11}, Landroid/hardware/display/DisplayManagerInternal;->initPowerManagement(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;)V

    #@af
    .line 595
    new-instance v8, Landroid/content/IntentFilter;

    #@b1
    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    #@b4
    .line 596
    .local v8, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.BATTERY_CHANGED"

    #@b7
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@ba
    .line 597
    const/16 v0, 0x3e8

    #@bc
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    #@bf
    .line 598
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
    .line 600
    new-instance v8, Landroid/content/IntentFilter;

    #@cf
    .end local v8    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    #@d2
    .line 601
    .restart local v8    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.DREAMING_STARTED"

    #@d5
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@d8
    .line 602
    const-string/jumbo v0, "android.intent.action.DREAMING_STOPPED"

    #@db
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@de
    .line 603
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
    .line 605
    new-instance v8, Landroid/content/IntentFilter;

    #@ee
    .end local v8    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    #@f1
    .line 606
    .restart local v8    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    #@f4
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@f7
    .line 607
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
    .line 609
    new-instance v8, Landroid/content/IntentFilter;

    #@107
    .end local v8    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    #@10a
    .line 610
    .restart local v8    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.DOCK_EVENT"

    #@10d
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@110
    .line 611
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
    .line 614
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    #@120
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@123
    move-result-object v10

    #@124
    .line 616
    .local v10, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v0, "screensaver_enabled"

    #@127
    .line 615
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@12a
    move-result-object v0

    #@12b
    .line 617
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    #@12d
    const/4 v2, 0x0

    #@12e
    const/4 v3, -0x1

    #@12f
    .line 615
    invoke-virtual {v10, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@132
    .line 619
    const-string/jumbo v0, "screensaver_activate_on_sleep"

    #@135
    .line 618
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@138
    move-result-object v0

    #@139
    .line 620
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    #@13b
    const/4 v2, 0x0

    #@13c
    const/4 v3, -0x1

    #@13d
    .line 618
    invoke-virtual {v10, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@140
    .line 622
    const-string/jumbo v0, "screensaver_activate_on_dock"

    #@143
    .line 621
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@146
    move-result-object v0

    #@147
    .line 623
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    #@149
    const/4 v2, 0x0

    #@14a
    const/4 v3, -0x1

    #@14b
    .line 621
    invoke-virtual {v10, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@14e
    .line 625
    const-string/jumbo v0, "screen_off_timeout"

    #@151
    .line 624
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@154
    move-result-object v0

    #@155
    .line 626
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    #@157
    const/4 v2, 0x0

    #@158
    const/4 v3, -0x1

    #@159
    .line 624
    invoke-virtual {v10, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@15c
    .line 628
    const-string/jumbo v0, "sleep_timeout"

    #@15f
    .line 627
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@162
    move-result-object v0

    #@163
    .line 629
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    #@165
    const/4 v2, 0x0

    #@166
    const/4 v3, -0x1

    #@167
    .line 627
    invoke-virtual {v10, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@16a
    .line 631
    const-string/jumbo v0, "stay_on_while_plugged_in"

    #@16d
    .line 630
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@170
    move-result-object v0

    #@171
    .line 632
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    #@173
    const/4 v2, 0x0

    #@174
    const/4 v3, -0x1

    #@175
    .line 630
    invoke-virtual {v10, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@178
    .line 634
    const-string/jumbo v0, "screen_brightness"

    #@17b
    .line 633
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@17e
    move-result-object v0

    #@17f
    .line 635
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    #@181
    const/4 v2, 0x0

    #@182
    const/4 v3, -0x1

    #@183
    .line 633
    invoke-virtual {v10, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@186
    .line 637
    const-string/jumbo v0, "screen_brightness_mode"

    #@189
    .line 636
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@18c
    move-result-object v0

    #@18d
    .line 638
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    #@18f
    const/4 v2, 0x0

    #@190
    const/4 v3, -0x1

    #@191
    .line 636
    invoke-virtual {v10, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@194
    .line 640
    const-string/jumbo v0, "screen_auto_brightness_adj"

    #@197
    .line 639
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@19a
    move-result-object v0

    #@19b
    .line 641
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    #@19d
    const/4 v2, 0x0

    #@19e
    const/4 v3, -0x1

    #@19f
    .line 639
    invoke-virtual {v10, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@1a2
    .line 643
    const-string/jumbo v0, "low_power"

    #@1a5
    .line 642
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@1a8
    move-result-object v0

    #@1a9
    .line 644
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    #@1ab
    const/4 v2, 0x0

    #@1ac
    const/4 v3, -0x1

    #@1ad
    .line 642
    invoke-virtual {v10, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@1b0
    .line 646
    const-string/jumbo v0, "low_power_trigger_level"

    #@1b3
    .line 645
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@1b6
    move-result-object v0

    #@1b7
    .line 647
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    #@1b9
    const/4 v2, 0x0

    #@1ba
    const/4 v3, -0x1

    #@1bb
    .line 645
    invoke-virtual {v10, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@1be
    .line 649
    const-string/jumbo v0, "theater_mode_on"

    #@1c1
    .line 648
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@1c4
    move-result-object v0

    #@1c5
    .line 650
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    #@1c7
    const/4 v2, 0x0

    #@1c8
    const/4 v3, -0x1

    #@1c9
    .line 648
    invoke-virtual {v10, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@1cc
    .line 652
    const-string/jumbo v0, "double_tap_to_wake"

    #@1cf
    .line 651
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@1d2
    move-result-object v0

    #@1d3
    .line 653
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    #@1d5
    const/4 v2, 0x0

    #@1d6
    const/4 v3, -0x1

    #@1d7
    .line 651
    invoke-virtual {v10, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@1da
    .line 655
    const-string/jumbo v0, "brightness_use_twilight"

    #@1dd
    .line 654
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@1e0
    move-result-object v0

    #@1e1
    .line 656
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    #@1e3
    const/4 v2, 0x0

    #@1e4
    const/4 v3, -0x1

    #@1e5
    .line 654
    invoke-virtual {v10, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@1e8
    .line 658
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
    .line 660
    .local v12, "vrManager":Landroid/service/vr/IVrManager;
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    #@1f3
    invoke-interface {v12, v0}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f6
    .line 665
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->readConfigurationLocked()V

    #@1f9
    .line 666
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSettingsLocked()V

    #@1fc
    .line 667
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@1fe
    or-int/lit16 v0, v0, 0x100

    #@200
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    #@202
    .line 668
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@205
    monitor-exit v13

    #@206
    .line 559
    return-void

    #@207
    .line 661
    :catch_0
    move-exception v7

    #@208
    .line 662
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
    .line 560
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
    .line 2499
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2500
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@5
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    #@8
    .line 2501
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 2502
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    :cond_0
    monitor-exit v1

    #@10
    .line 2498
    return-void

    #@11
    .line 2499
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
    .line 2490
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2491
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    #@8
    .line 2492
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 2493
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    :cond_0
    monitor-exit v1

    #@10
    .line 2489
    return-void

    #@11
    .line 2490
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
    throw v0
.end method
