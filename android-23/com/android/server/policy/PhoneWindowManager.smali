.class public Lcom/android/server/policy/PhoneWindowManager;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;,
        Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;,
        Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;,
        Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;,
        Lcom/android/server/policy/PhoneWindowManager$HdmiControl;,
        Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;,
        Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;,
        Lcom/android/server/policy/PhoneWindowManager$1;,
        Lcom/android/server/policy/PhoneWindowManager$2;,
        Lcom/android/server/policy/PhoneWindowManager$3;,
        Lcom/android/server/policy/PhoneWindowManager$4;,
        Lcom/android/server/policy/PhoneWindowManager$5;,
        Lcom/android/server/policy/PhoneWindowManager$6;,
        Lcom/android/server/policy/PhoneWindowManager$7;,
        Lcom/android/server/policy/PhoneWindowManager$8;,
        Lcom/android/server/policy/PhoneWindowManager$9;,
        Lcom/android/server/policy/PhoneWindowManager$10;,
        Lcom/android/server/policy/PhoneWindowManager$11;,
        Lcom/android/server/policy/PhoneWindowManager$12;,
        Lcom/android/server/policy/PhoneWindowManager$13;
    }
.end annotation


# static fields
.field static final APPLICATION_ABOVE_SUB_PANEL_SUBLAYER:I = 0x3

.field static final APPLICATION_MEDIA_OVERLAY_SUBLAYER:I = -0x1

.field static final APPLICATION_MEDIA_SUBLAYER:I = -0x2

.field static final APPLICATION_PANEL_SUBLAYER:I = 0x1

.field static final APPLICATION_SUB_PANEL_SUBLAYER:I = 0x2

.field private static final BRIGHTNESS_STEPS:I = 0xa

.field static final DEBUG:Z = false

.field static final DEBUG_INPUT:Z = false

.field static final DEBUG_KEYGUARD:Z = false

.field static final DEBUG_LAYOUT:Z = false

.field static final DEBUG_STARTING_WINDOW:Z = false

.field static final DEBUG_WAKEUP:Z = false

.field private static final DISMISS_KEYGUARD_CONTINUE:I = 0x2

.field private static final DISMISS_KEYGUARD_NONE:I = 0x0

.field private static final DISMISS_KEYGUARD_START:I = 0x1

.field static final DOUBLE_TAP_HOME_NOTHING:I = 0x0

.field static final DOUBLE_TAP_HOME_RECENT_SYSTEM_UI:I = 0x1

.field static final ENABLE_CAR_DOCK_HOME_CAPTURE:Z = true

.field static final ENABLE_DESK_DOCK_HOME_CAPTURE:Z = false

.field private static final KEYGUARD_SCREENSHOT_CHORD_DELAY_MULTIPLIER:F = 2.5f

.field static final LONG_PRESS_HOME_ASSIST:I = 0x2

.field static final LONG_PRESS_HOME_NOTHING:I = 0x0

.field static final LONG_PRESS_HOME_RECENT_SYSTEM_UI:I = 0x1

.field static final LONG_PRESS_POWER_GLOBAL_ACTIONS:I = 0x1

.field static final LONG_PRESS_POWER_NOTHING:I = 0x0

.field static final LONG_PRESS_POWER_SHUT_OFF:I = 0x2

.field static final LONG_PRESS_POWER_SHUT_OFF_NO_CONFIRM:I = 0x3

.field private static final MSG_DISABLE_POINTER_LOCATION:I = 0x2

.field private static final MSG_DISPATCH_MEDIA_KEY_REPEAT_WITH_WAKE_LOCK:I = 0x4

.field private static final MSG_DISPATCH_MEDIA_KEY_WITH_WAKE_LOCK:I = 0x3

.field private static final MSG_DISPATCH_SHOW_GLOBAL_ACTIONS:I = 0xa

.field private static final MSG_DISPATCH_SHOW_RECENTS:I = 0x9

.field private static final MSG_ENABLE_POINTER_LOCATION:I = 0x1

.field private static final MSG_HIDE_BOOT_MESSAGE:I = 0xb

.field private static final MSG_KEYGUARD_DRAWN_COMPLETE:I = 0x5

.field private static final MSG_KEYGUARD_DRAWN_TIMEOUT:I = 0x6

.field private static final MSG_LAUNCH_VOICE_ASSIST_WITH_WAKE_LOCK:I = 0xc

.field private static final MSG_POWER_DELAYED_PRESS:I = 0xd

.field private static final MSG_POWER_LONG_PRESS:I = 0xe

.field private static final MSG_UPDATE_DREAMING_SLEEP_TOKEN:I = 0xf

.field private static final MSG_WINDOW_MANAGER_DRAWN_COMPLETE:I = 0x7

.field static final MULTI_PRESS_POWER_BRIGHTNESS_BOOST:I = 0x2

.field static final MULTI_PRESS_POWER_NOTHING:I = 0x0

.field static final MULTI_PRESS_POWER_THEATER_MODE:I = 0x1

.field private static final PANIC_GESTURE_EXPIRATION:J = 0x7530L

.field static final PRINT_ANIM:Z = false

.field private static final SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field static final SHORT_PRESS_POWER_GO_HOME:I = 0x4

.field static final SHORT_PRESS_POWER_GO_TO_SLEEP:I = 0x1

.field static final SHORT_PRESS_POWER_NOTHING:I = 0x0

.field static final SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP:I = 0x2

.field static final SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP_AND_GO_HOME:I = 0x3

.field static final SHORT_PRESS_SLEEP_GO_TO_SLEEP:I = 0x0

.field static final SHORT_PRESS_SLEEP_GO_TO_SLEEP_AND_GO_HOME:I = 0x1

.field static final SHOW_PROCESSES_ON_ALT_MENU:Z = false

.field static final SHOW_STARTING_ANIMATIONS:Z = true

.field public static final SYSTEM_DIALOG_REASON_ASSIST:Ljava/lang/String; = "assist"

.field public static final SYSTEM_DIALOG_REASON_GLOBAL_ACTIONS:Ljava/lang/String; = "globalactions"

.field public static final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field public static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"

.field static final SYSTEM_UI_CHANGING_LAYOUT:I = -0x3fff7ffa

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field static final WAITING_FOR_DRAWN_TIMEOUT:I = 0x3e8

.field private static final WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

.field static final localLOGV:Z

.field static final mTmpContentFrame:Landroid/graphics/Rect;

.field static final mTmpDecorFrame:Landroid/graphics/Rect;

.field static final mTmpDisplayFrame:Landroid/graphics/Rect;

.field static final mTmpNavigationFrame:Landroid/graphics/Rect;

.field static final mTmpOutsetFrame:Landroid/graphics/Rect;

.field static final mTmpOverscanFrame:Landroid/graphics/Rect;

.field static final mTmpParentFrame:Landroid/graphics/Rect;

.field static final mTmpStableFrame:Landroid/graphics/Rect;

.field static final mTmpVisibleFrame:Landroid/graphics/Rect;

.field static sApplicationLaunchKeyCategories:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAccelerometerDefault:Z

.field mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field mAllowAllRotations:I

.field mAllowLockscreenWhenOn:Z

.field private mAllowTheaterModeWakeFromCameraLens:Z

.field private mAllowTheaterModeWakeFromKey:Z

.field private mAllowTheaterModeWakeFromLidSwitch:Z

.field private mAllowTheaterModeWakeFromMotion:Z

.field private mAllowTheaterModeWakeFromMotionWhenNotDreaming:Z

.field private mAllowTheaterModeWakeFromPowerKey:Z

.field private mAllowTheaterModeWakeFromWakeGesture:Z

.field mAppOpsManager:Landroid/app/AppOpsManager;

.field mAppsThatDismissKeyguard:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/IApplicationToken;",
            ">;"
        }
    .end annotation
.end field

.field mAppsToBeHidden:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/IApplicationToken;",
            ">;"
        }
    .end annotation
.end field

.field mAssistKeyLongPressed:Z

.field mAwake:Z

.field volatile mBeganFromNonInteractive:Z

.field mBootMessageNeedsHiding:Z

.field mBootMsgDialog:Landroid/app/ProgressDialog;

.field mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

.field mCalendarDateVibePattern:[J

.field mCameraLensCoverState:I

.field mCanHideNavigationBar:Z

.field mCarDockEnablesAccelerometer:Z

.field mCarDockIntent:Landroid/content/Intent;

.field mCarDockRotation:I

.field private final mClearHideNavigationFlag:Ljava/lang/Runnable;

.field mClockTickVibePattern:[J

.field mConsumeSearchKeyUp:Z

.field mContentBottom:I

.field mContentLeft:I

.field mContentRight:I

.field mContentTop:I

.field mContext:Landroid/content/Context;

.field mContextClickVibePattern:[J

.field mCurBottom:I

.field mCurLeft:I

.field mCurRight:I

.field mCurTop:I

.field mCurrentAppOrientation:I

.field private mCurrentUserId:I

.field private mDeferBindKeyguard:Z

.field mDemoHdmiRotation:I

.field mDemoHdmiRotationLock:Z

.field mDemoRotation:I

.field mDemoRotationLock:Z

.field mDeskDockEnablesAccelerometer:Z

.field mDeskDockIntent:Landroid/content/Intent;

.field mDeskDockRotation:I

.field mDismissKeyguard:I

.field mDisplay:Landroid/view/Display;

.field private mDisplayRotation:I

.field mDockBottom:I

.field mDockLayer:I

.field mDockLeft:I

.field mDockMode:I

.field mDockReceiver:Landroid/content/BroadcastReceiver;

.field mDockRight:I

.field mDockTop:I

.field mDoublePressOnPowerBehavior:I

.field private mDoubleTapOnHomeBehavior:I

.field mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

.field mDreamReceiver:Landroid/content/BroadcastReceiver;

.field mDreamingLockscreen:Z

.field mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

.field mDreamingSleepTokenNeeded:Z

.field mEnableShiftMenuBugReports:Z

.field volatile mEndCallKeyHandled:Z

.field private final mEndCallLongPress:Ljava/lang/Runnable;

.field mEndcallBehavior:I

.field private final mFallbackActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/KeyCharacterMap$FallbackAction;",
            ">;"
        }
    .end annotation
.end field

.field mFocusedApp:Landroid/view/IApplicationToken;

.field mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mForceClearedSystemUiFlags:I

.field private mForceDefaultOrientation:Z

.field mForceStatusBar:Z

.field mForceStatusBarFromKeyguard:Z

.field private mForceStatusBarTransparent:Z

.field mForcingShowNavBar:Z

.field mForcingShowNavBarLayer:I

.field mGlobalActions:Lcom/android/server/policy/GlobalActions;

.field private mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

.field private mGoToSleepOnButtonPressTheaterMode:Z

.field private mHDMIObserver:Landroid/os/UEventObserver;

.field mHandler:Landroid/os/Handler;

.field mHasNavigationBar:Z

.field mHasSoftInput:Z

.field mHaveBuiltInKeyboard:Z

.field mHavePendingMediaKeyRepeatWithWakeLock:Z

.field mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

.field mHdmiPlugged:Z

.field private final mHiddenNavPanic:Ljava/lang/Runnable;

.field mHideLockScreen:Z

.field final mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

.field mHomeConsumed:Z

.field mHomeDoubleTapPending:Z

.field private final mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field mHomeIntent:Landroid/content/Intent;

.field mHomePressed:Z

.field private mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

.field mIncallPowerBehavior:I

.field mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

.field mKeyboardTapVibePattern:[J

.field mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

.field mKeyguardDrawComplete:Z

.field final mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

.field private mKeyguardDrawnOnce:Z

.field private mKeyguardHidden:Z

.field volatile mKeyguardOccluded:Z

.field private mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

.field mKeyguardSecure:Z

.field mKeyguardSecureIncludingHidden:Z

.field mLandscapeRotation:I

.field mLanguageSwitchKeyPressed:Z

.field mLastFocusNeedsMenu:Z

.field mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mLastSystemUiFlags:I

.field mLidControlsSleep:Z

.field mLidKeyboardAccessibility:I

.field mLidNavigationAccessibility:I

.field mLidOpenRotation:I

.field mLidState:I

.field private final mLock:Ljava/lang/Object;

.field mLockScreenTimeout:I

.field mLockScreenTimerActive:Z

.field private final mLogDecelerateInterpolator:Lcom/android/server/policy/LogDecelerateInterpolator;

.field private mLongPressOnHomeBehavior:I

.field mLongPressOnPowerBehavior:I

.field mLongPressVibePattern:[J

.field mMultiuserReceiver:Landroid/content/BroadcastReceiver;

.field mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

.field mNavigationBarCanMove:Z

.field private final mNavigationBarController:Lcom/android/server/policy/BarController;

.field mNavigationBarHeightForRotation:[I

.field mNavigationBarOnBottom:Z

.field mNavigationBarWidthForRotation:[I

.field mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

.field mOrientationSensorEnabled:Z

.field mOverscanBottom:I

.field mOverscanLeft:I

.field mOverscanRight:I

.field mOverscanScreenHeight:I

.field mOverscanScreenLeft:I

.field mOverscanScreenTop:I

.field mOverscanScreenWidth:I

.field mOverscanTop:I

.field mPendingMetaAction:Z

.field private mPendingPanicGestureUptime:J

.field mPointerLocationMode:I

.field mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

.field mPortraitRotation:I

.field volatile mPowerKeyHandled:Z

.field volatile mPowerKeyPressCounter:I

.field mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

.field mPowerManager:Landroid/os/PowerManager;

.field mPreloadedRecentApps:Z

.field mRecentAppsHeldModifiers:I

.field mRecentsVisible:Z

.field mResettingSystemUiFlags:I

.field mRestrictedOverscanScreenHeight:I

.field mRestrictedOverscanScreenLeft:I

.field mRestrictedOverscanScreenTop:I

.field mRestrictedOverscanScreenWidth:I

.field mRestrictedScreenHeight:I

.field mRestrictedScreenLeft:I

.field mRestrictedScreenTop:I

.field mRestrictedScreenWidth:I

.field mSafeMode:Z

.field mSafeModeDisabledVibePattern:[J

.field mSafeModeEnabledVibePattern:[J

.field mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

.field mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

.field mScreenOnEarly:Z

.field mScreenOnFully:Z

.field mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

.field private mScreenshotChordEnabled:Z

.field private mScreenshotChordPowerKeyTime:J

.field private mScreenshotChordPowerKeyTriggered:Z

.field private mScreenshotChordVolumeDownKeyConsumed:Z

.field private mScreenshotChordVolumeDownKeyTime:J

.field private mScreenshotChordVolumeDownKeyTriggered:Z

.field private mScreenshotChordVolumeUpKeyTriggered:Z

.field mScreenshotConnection:Landroid/content/ServiceConnection;

.field final mScreenshotLock:Ljava/lang/Object;

.field private final mScreenshotRunnable:Ljava/lang/Runnable;

.field final mScreenshotTimeout:Ljava/lang/Runnable;

.field mSearchKeyShortcutPending:Z

.field mSearchManager:Landroid/app/SearchManager;

.field mSeascapeRotation:I

.field private mSecureDismissingKeyguard:Z

.field final mServiceAquireLock:Ljava/lang/Object;

.field mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

.field mShortPressOnPowerBehavior:I

.field mShortPressOnSleepBehavior:I

.field mShortcutManager:Lcom/android/server/policy/ShortcutManager;

.field mShowingDream:Z

.field mShowingLockscreen:Z

.field mStableBottom:I

.field mStableFullscreenBottom:I

.field mStableFullscreenLeft:I

.field mStableFullscreenRight:I

.field mStableFullscreenTop:I

.field mStableLeft:I

.field mStableRight:I

.field mStableTop:I

.field mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

.field private final mStatusBarController:Lcom/android/server/policy/StatusBarController;

.field mStatusBarHeight:I

.field mStatusBarLayer:I

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field mSupportAutoRotation:Z

.field private mSupportLongPressPowerWhenNonInteractive:Z

.field mSystemBooted:Z

.field mSystemBottom:I

.field private mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

.field mSystemLeft:I

.field mSystemReady:Z

.field mSystemRight:I

.field mSystemTop:I

.field mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopIsFullscreen:Z

.field mTranslucentDecorEnabled:Z

.field mTriplePressOnPowerBehavior:I

.field mUiMode:I

.field mUiModeManager:Landroid/app/IUiModeManager;

.field mUndockedHdmiRotation:I

.field mUnrestrictedScreenHeight:I

.field mUnrestrictedScreenLeft:I

.field mUnrestrictedScreenTop:I

.field mUnrestrictedScreenWidth:I

.field mUpsideDownRotation:I

.field mUseTvRouting:Z

.field mUserRotation:I

.field mUserRotationMode:I

.field mVibrator:Landroid/os/Vibrator;

.field mVirtualKeyVibePattern:[J

.field mVoiceContentBottom:I

.field mVoiceContentLeft:I

.field mVoiceContentRight:I

.field mVoiceContentTop:I

.field mWakeGestureEnabledSetting:Z

.field mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

.field private mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

.field private mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

.field mWindowManager:Landroid/view/IWindowManager;

.field final mWindowManagerDrawCallback:Ljava/lang/Runnable;

.field mWindowManagerDrawComplete:Z

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field mWindowManagerInternal:Landroid/view/WindowManagerInternal;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromWakeGesture:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Runnable;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/BarController;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/PhoneWindowManager;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingPanicGestureUptime:J

    #@2
    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldEnableWakeGestureLp()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/PhoneWindowManager;JZLjava/lang/String;)Z
    .locals 1
    .param p1, "wakeTime"    # J
    .param p3, "wakeInTheaterMode"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->performAuditoryFeedbackForAccessibilityIfNeed()V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->powerLongPress()V

    #@3
    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/policy/PhoneWindowManager;JZI)V
    .locals 1
    .param p1, "eventTime"    # J
    .param p3, "interactive"    # Z
    .param p4, "count"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->powerPress(JZI)V

    #@3
    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0
    .param p1, "swipeTarget"    # Landroid/view/WindowManagerPolicy$WindowState;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V

    #@3
    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/policy/PhoneWindowManager;Z)V
    .locals 0
    .param p1, "triggeredFromAltTab"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->takeScreenshot()V

    #@3
    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/policy/PhoneWindowManager;Z)V
    .locals 0
    .param p1, "acquire"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->updateDreamingSleepToken(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/policy/PhoneWindowManager;)I
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->disablePointerLocation()V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->enablePointerLocation()V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishKeyguardDrawn()V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishPowerKeyPress()V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishWindowsDrawn()V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->handleHideBootMessage()V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 214
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    #@2
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    #@5
    .line 215
    const/4 v1, 0x4

    #@6
    .line 214
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    #@9
    move-result-object v0

    #@a
    .line 216
    const/16 v1, 0xd

    #@c
    .line 214
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    #@13
    move-result-object v0

    #@14
    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    #@16
    .line 238
    new-instance v0, Landroid/util/SparseArray;

    #@18
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@1b
    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    #@1d
    .line 239
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    #@1f
    .line 240
    const-string/jumbo v1, "android.intent.category.APP_BROWSER"

    #@22
    const/16 v2, 0x40

    #@24
    .line 239
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@27
    .line 241
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    #@29
    .line 242
    const-string/jumbo v1, "android.intent.category.APP_EMAIL"

    #@2c
    const/16 v2, 0x41

    #@2e
    .line 241
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@31
    .line 243
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    #@33
    .line 244
    const-string/jumbo v1, "android.intent.category.APP_CONTACTS"

    #@36
    const/16 v2, 0xcf

    #@38
    .line 243
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@3b
    .line 245
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    #@3d
    .line 246
    const-string/jumbo v1, "android.intent.category.APP_CALENDAR"

    #@40
    const/16 v2, 0xd0

    #@42
    .line 245
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@45
    .line 247
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    #@47
    .line 248
    const-string/jumbo v1, "android.intent.category.APP_MUSIC"

    #@4a
    const/16 v2, 0xd1

    #@4c
    .line 247
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@4f
    .line 249
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    #@51
    .line 250
    const-string/jumbo v1, "android.intent.category.APP_CALCULATOR"

    #@54
    const/16 v2, 0xd2

    #@56
    .line 249
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@59
    .line 479
    new-instance v0, Landroid/graphics/Rect;

    #@5b
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@5e
    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    #@60
    .line 480
    new-instance v0, Landroid/graphics/Rect;

    #@62
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@65
    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    #@67
    .line 481
    new-instance v0, Landroid/graphics/Rect;

    #@69
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@6c
    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    #@6e
    .line 482
    new-instance v0, Landroid/graphics/Rect;

    #@70
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@73
    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    #@75
    .line 483
    new-instance v0, Landroid/graphics/Rect;

    #@77
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@7a
    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    #@7c
    .line 484
    new-instance v0, Landroid/graphics/Rect;

    #@7e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@81
    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    #@83
    .line 485
    new-instance v0, Landroid/graphics/Rect;

    #@85
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@88
    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpStableFrame:Landroid/graphics/Rect;

    #@8a
    .line 486
    new-instance v0, Landroid/graphics/Rect;

    #@8c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8f
    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@91
    .line 487
    new-instance v0, Landroid/graphics/Rect;

    #@93
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@96
    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpOutsetFrame:Landroid/graphics/Rect;

    #@98
    .line 2620
    const/16 v0, 0x7d3

    #@9a
    .line 2621
    const/16 v1, 0x7da

    #@9c
    .line 2619
    filled-new-array {v0, v1}, [I

    #@9f
    move-result-object v0

    #@a0
    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    #@a2
    .line 147
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    #@0
    .prologue
    const/4 v4, 0x4

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v1, -0x1

    #@3
    const/4 v7, 0x0

    #@4
    const/4 v2, 0x0

    #@5
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 261
    new-instance v0, Ljava/lang/Object;

    #@a
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@f
    .line 272
    new-instance v0, Ljava/lang/Object;

    #@11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@14
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    #@16
    .line 304
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    #@18
    .line 307
    iput-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@1a
    .line 309
    iput-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@1c
    .line 310
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    #@1e
    .line 311
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCanHideNavigationBar:Z

    #@20
    .line 312
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    #@22
    .line 313
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarOnBottom:Z

    #@24
    .line 314
    new-array v0, v4, [I

    #@26
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    #@28
    .line 315
    new-array v0, v4, [I

    #@2a
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    #@2c
    .line 319
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$1;

    #@2e
    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$1;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@31
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawCallback:Ljava/lang/Runnable;

    #@33
    .line 326
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$2;

    #@35
    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$2;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@38
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    #@3a
    .line 336
    iput-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    #@3c
    .line 337
    iput-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    #@3e
    .line 355
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    #@40
    .line 356
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    #@42
    .line 366
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    #@44
    .line 381
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceDefaultOrientation:Z

    #@46
    .line 383
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    #@48
    .line 384
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    #@4a
    .line 388
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    #@4c
    .line 405
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    #@4e
    .line 406
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    #@50
    .line 407
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    #@52
    .line 408
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    #@54
    .line 411
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationMode:I

    #@56
    .line 468
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    #@58
    .line 470
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    #@5a
    .line 473
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    #@5c
    .line 477
    iput-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

    #@5e
    .line 491
    new-instance v0, Ljava/util/HashSet;

    #@60
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@63
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    #@65
    .line 492
    new-instance v0, Ljava/util/HashSet;

    #@67
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@6a
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsThatDismissKeyguard:Ljava/util/HashSet;

    #@6c
    .line 505
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    #@6e
    .line 559
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    #@70
    .line 560
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    #@72
    .line 561
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    #@74
    .line 562
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    #@76
    .line 564
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    #@78
    .line 565
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    #@7a
    .line 566
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    #@7c
    .line 567
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    #@7e
    .line 619
    new-instance v0, Landroid/util/SparseArray;

    #@80
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@83
    .line 618
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    #@85
    .line 622
    new-instance v0, Lcom/android/server/policy/LogDecelerateInterpolator;

    #@87
    const/16 v1, 0x64

    #@89
    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/LogDecelerateInterpolator;-><init>(II)V

    #@8c
    .line 621
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogDecelerateInterpolator:Lcom/android/server/policy/LogDecelerateInterpolator;

    #@8e
    .line 693
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$3;

    #@90
    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$3;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@93
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    #@95
    .line 777
    new-instance v0, Lcom/android/server/policy/StatusBarController;

    #@97
    invoke-direct {v0}, Lcom/android/server/policy/StatusBarController;-><init>()V

    #@9a
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@9c
    .line 779
    new-instance v0, Lcom/android/server/policy/BarController;

    #@9e
    const-string/jumbo v1, "NavigationBar"

    #@a1
    .line 780
    const/high16 v2, 0x8000000

    #@a3
    .line 781
    const/high16 v3, 0x20000000

    #@a5
    .line 782
    const/high16 v4, -0x80000000

    #@a7
    .line 783
    const/4 v5, 0x2

    #@a8
    .line 784
    const/high16 v6, 0x8000000

    #@aa
    .line 779
    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/BarController;-><init>(Ljava/lang/String;IIIII)V

    #@ad
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@af
    .line 1172
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$4;

    #@b1
    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$4;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@b4
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    #@b6
    .line 1183
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$5;

    #@b8
    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$5;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@bb
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;

    #@bd
    .line 1295
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$6;

    #@bf
    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$6;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@c2
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    #@c4
    .line 3298
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$7;

    #@c6
    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$7;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@c9
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    #@cb
    .line 3366
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$8;

    #@cd
    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$8;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@d0
    .line 3365
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

    #@d2
    .line 4791
    new-instance v0, Ljava/lang/Object;

    #@d4
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@d7
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    #@d9
    .line 4792
    iput-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    #@db
    .line 4794
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$9;

    #@dd
    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$9;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@e0
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotTimeout:Ljava/lang/Runnable;

    #@e2
    .line 5362
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$10;

    #@e4
    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$10;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@e7
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    #@e9
    .line 5383
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$11;

    #@eb
    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$11;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@ee
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamReceiver:Landroid/content/BroadcastReceiver;

    #@f0
    .line 5398
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$12;

    #@f2
    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$12;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@f5
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    #@f7
    .line 5419
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$13;

    #@f9
    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$13;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@fc
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHiddenNavPanic:Ljava/lang/Runnable;

    #@fe
    .line 6090
    iput-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    #@100
    .line 6205
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    #@102
    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@105
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    #@107
    .line 147
    return-void
.end method

.method private applyLidSwitchState()V
    .locals 5

    #@0
    .prologue
    .line 6271
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    #@2
    if-nez v0, :cond_0

    #@4
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 6272
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@d
    move-result-wide v2

    #@e
    .line 6273
    const/4 v1, 0x3

    #@f
    .line 6274
    const/4 v4, 0x1

    #@10
    .line 6272
    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/os/PowerManager;->goToSleep(JII)V

    #@13
    .line 6277
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@15
    monitor-enter v0

    #@16
    .line 6278
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit v0

    #@1a
    .line 6270
    return-void

    #@1b
    .line 6277
    :catchall_0
    move-exception v1

    #@1c
    monitor-exit v0

    #@1d
    throw v1
.end method

.method private applyStableConstraints(IILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "sysui"    # I
    .param p2, "fl"    # I
    .param p3, "r"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 3795
    and-int/lit16 v0, p1, 0x100

    #@2
    if-eqz v0, :cond_3

    #@4
    .line 3798
    and-int/lit16 v0, p2, 0x400

    #@6
    if-eqz v0, :cond_4

    #@8
    .line 3799
    iget v0, p3, Landroid/graphics/Rect;->left:I

    #@a
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenLeft:I

    #@c
    if-ge v0, v1, :cond_0

    #@e
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenLeft:I

    #@10
    iput v0, p3, Landroid/graphics/Rect;->left:I

    #@12
    .line 3800
    :cond_0
    iget v0, p3, Landroid/graphics/Rect;->top:I

    #@14
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenTop:I

    #@16
    if-ge v0, v1, :cond_1

    #@18
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenTop:I

    #@1a
    iput v0, p3, Landroid/graphics/Rect;->top:I

    #@1c
    .line 3801
    :cond_1
    iget v0, p3, Landroid/graphics/Rect;->right:I

    #@1e
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenRight:I

    #@20
    if-le v0, v1, :cond_2

    #@22
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenRight:I

    #@24
    iput v0, p3, Landroid/graphics/Rect;->right:I

    #@26
    .line 3802
    :cond_2
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    #@28
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenBottom:I

    #@2a
    if-le v0, v1, :cond_3

    #@2c
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenBottom:I

    #@2e
    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    #@30
    .line 3794
    :cond_3
    :goto_0
    return-void

    #@31
    .line 3804
    :cond_4
    iget v0, p3, Landroid/graphics/Rect;->left:I

    #@33
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    #@35
    if-ge v0, v1, :cond_5

    #@37
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    #@39
    iput v0, p3, Landroid/graphics/Rect;->left:I

    #@3b
    .line 3805
    :cond_5
    iget v0, p3, Landroid/graphics/Rect;->top:I

    #@3d
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    #@3f
    if-ge v0, v1, :cond_6

    #@41
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    #@43
    iput v0, p3, Landroid/graphics/Rect;->top:I

    #@45
    .line 3806
    :cond_6
    iget v0, p3, Landroid/graphics/Rect;->right:I

    #@47
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    #@49
    if-le v0, v1, :cond_7

    #@4b
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    #@4d
    iput v0, p3, Landroid/graphics/Rect;->right:I

    #@4f
    .line 3807
    :cond_7
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    #@51
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    #@53
    if-le v0, v1, :cond_3

    #@55
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    #@57
    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    #@59
    goto :goto_0
.end method

.method private areTranslucentBarsAllowed()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 6752
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 6753
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@7
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 6752
    :cond_0
    :goto_0
    return v0

    #@e
    .line 6753
    :cond_1
    const/4 v0, 0x1

    #@f
    goto :goto_0
.end method

.method private static awakenDreams()V
    .locals 2

    #@0
    .prologue
    .line 2587
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    #@3
    move-result-object v0

    #@4
    .line 2588
    .local v0, "dreamManager":Landroid/service/dreams/IDreamManager;
    if-eqz v0, :cond_0

    #@6
    .line 2590
    :try_start_0
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 2586
    :cond_0
    :goto_0
    return-void

    #@a
    .line 2591
    :catch_0
    move-exception v1

    #@b
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private canHideNavigationBar()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1673
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 1674
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@7
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 1673
    :cond_0
    :goto_0
    return v0

    #@e
    .line 1674
    :cond_1
    const/4 v0, 0x1

    #@f
    goto :goto_0
.end method

.method private canReceiveInput(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 6
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3814
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@4
    move-result-object v4

    #@5
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@7
    and-int/lit8 v4, v4, 0x8

    #@9
    if-eqz v4, :cond_0

    #@b
    const/4 v1, 0x1

    #@c
    .line 3816
    .local v1, "notFocusable":Z
    :goto_0
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@f
    move-result-object v4

    #@10
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@12
    const/high16 v5, 0x20000

    #@14
    and-int/2addr v4, v5

    #@15
    if-eqz v4, :cond_1

    #@17
    const/4 v0, 0x1

    #@18
    .line 3817
    .local v0, "altFocusableIm":Z
    :goto_1
    xor-int v2, v1, v0

    #@1a
    .line 3818
    .local v2, "notFocusableForIm":Z
    if-eqz v2, :cond_2

    #@1c
    :goto_2
    return v3

    #@1d
    .line 3814
    .end local v0    # "altFocusableIm":Z
    .end local v1    # "notFocusable":Z
    .end local v2    # "notFocusableForIm":Z
    :cond_0
    const/4 v1, 0x0

    #@1e
    .restart local v1    # "notFocusable":Z
    goto :goto_0

    #@1f
    .line 3816
    :cond_1
    const/4 v0, 0x0

    #@20
    .restart local v0    # "altFocusableIm":Z
    goto :goto_1

    #@21
    .line 3818
    .restart local v2    # "notFocusableForIm":Z
    :cond_2
    const/4 v3, 0x1

    #@22
    goto :goto_2
.end method

.method private cancelPendingPowerKeyAction()V
    .locals 2

    #@0
    .prologue
    .line 1002
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1003
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    #@7
    .line 1004
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@9
    const/16 v1, 0xe

    #@b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@e
    .line 1001
    :cond_0
    return-void
.end method

.method private cancelPendingScreenshotChordAction()V
    .locals 2

    #@0
    .prologue
    .line 1169
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@2
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@7
    .line 1168
    return-void
.end method

.method private cancelPreloadRecentApps()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 3181
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 3182
    const/4 v2, 0x0

    #@6
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    #@8
    .line 3184
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    #@b
    move-result-object v1

    #@c
    .line 3185
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    #@e
    .line 3186
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->cancelPreloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 3180
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    #@12
    .line 3188
    :catch_0
    move-exception v0

    #@13
    .line 3189
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "WindowManager"

    #@16
    const-string/jumbo v3, "RemoteException when cancelling recent apps preload"

    #@19
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1c
    .line 3191
    iput-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    #@1e
    goto :goto_0
.end method

.method private clearClearableFlagsLw()V
    .locals 2

    #@0
    .prologue
    .line 6730
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    #@2
    or-int/lit8 v0, v1, 0x7

    #@4
    .line 6731
    .local v0, "newVal":I
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 6732
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    #@a
    .line 6733
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@c
    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reevaluateStatusBarVisibility()V

    #@f
    .line 6729
    :cond_0
    return-void
.end method

.method private disablePointerLocation()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1805
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 1806
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@7
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    #@9
    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    #@c
    .line 1807
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@e
    const-string/jumbo v2, "window"

    #@11
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/view/WindowManager;

    #@17
    .line 1808
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    #@19
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    #@1c
    .line 1809
    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    #@1e
    .line 1804
    .end local v0    # "wm":Landroid/view/WindowManager;
    :cond_0
    return-void
.end method

.method private dispatchDirectAudioEvent(Landroid/view/KeyEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 5259
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 5260
    return-void

    #@7
    .line 5262
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@a
    move-result v7

    #@b
    .line 5263
    .local v7, "keyCode":I
    const/16 v3, 0x1005

    #@d
    .line 5265
    .local v3, "flags":I
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@f
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@12
    move-result-object v4

    #@13
    .line 5266
    .local v4, "pkgName":Ljava/lang/String;
    sparse-switch v7, :sswitch_data_0

    #@16
    .line 5258
    :cond_1
    :goto_0
    return-void

    #@17
    .line 5269
    :sswitch_0
    :try_start_0
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    #@1a
    move-result-object v0

    #@1b
    .line 5270
    const-string/jumbo v5, "WindowManager"

    #@1e
    .line 5269
    const/4 v1, 0x1

    #@1f
    .line 5270
    const/high16 v2, -0x80000000

    #@21
    .line 5269
    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    goto :goto_0

    #@25
    .line 5271
    :catch_0
    move-exception v6

    #@26
    .line 5272
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "WindowManager"

    #@29
    const-string/jumbo v1, "Error dispatching volume up in dispatchTvAudioEvent."

    #@2c
    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2f
    goto :goto_0

    #@30
    .line 5277
    .end local v6    # "e":Landroid/os/RemoteException;
    :sswitch_1
    :try_start_1
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    #@33
    move-result-object v0

    #@34
    .line 5278
    const-string/jumbo v5, "WindowManager"

    #@37
    .line 5277
    const/4 v1, -0x1

    #@38
    .line 5278
    const/high16 v2, -0x80000000

    #@3a
    .line 5277
    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@3d
    goto :goto_0

    #@3e
    .line 5279
    :catch_1
    move-exception v6

    #@3f
    .line 5280
    .restart local v6    # "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "WindowManager"

    #@42
    const-string/jumbo v1, "Error dispatching volume down in dispatchTvAudioEvent."

    #@45
    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@48
    goto :goto_0

    #@49
    .line 5285
    .end local v6    # "e":Landroid/os/RemoteException;
    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@4c
    move-result v0

    #@4d
    if-nez v0, :cond_1

    #@4f
    .line 5286
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    #@52
    move-result-object v0

    #@53
    .line 5288
    const-string/jumbo v5, "WindowManager"

    #@56
    .line 5287
    const/16 v1, 0x65

    #@58
    .line 5288
    const/high16 v2, -0x80000000

    #@5a
    .line 5286
    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    #@5d
    goto :goto_0

    #@5e
    .line 5290
    :catch_2
    move-exception v6

    #@5f
    .line 5291
    .restart local v6    # "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "WindowManager"

    #@62
    const-string/jumbo v1, "Error dispatching mute in dispatchTvAudioEvent."

    #@65
    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@68
    goto :goto_0

    #@69
    .line 5266
    nop

    #@6a
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_1
        0xa4 -> :sswitch_2
    .end sparse-switch
.end method

.method private enablePointerLocation()V
    .locals 5

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 1778
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    #@3
    if-nez v2, :cond_1

    #@5
    .line 1779
    new-instance v2, Lcom/android/internal/widget/PointerLocationView;

    #@7
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@9
    invoke-direct {v2, v3}, Lcom/android/internal/widget/PointerLocationView;-><init>(Landroid/content/Context;)V

    #@c
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    #@e
    .line 1780
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    #@10
    const/4 v3, 0x0

    #@11
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView;->setPrintCoords(Z)V

    #@14
    .line 1781
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    #@16
    invoke-direct {v0, v4, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    #@19
    .line 1784
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x7df

    #@1b
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@1d
    .line 1785
    const/16 v2, 0x518

    #@1f
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@21
    .line 1789
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_0

    #@27
    .line 1790
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@29
    const/high16 v3, 0x1000000

    #@2b
    or-int/2addr v2, v3

    #@2c
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@2e
    .line 1791
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@30
    or-int/lit8 v2, v2, 0x2

    #@32
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@34
    .line 1794
    :cond_0
    const/4 v2, -0x3

    #@35
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    #@37
    .line 1795
    const-string/jumbo v2, "PointerLocation"

    #@3a
    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    #@3d
    .line 1797
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@3f
    const-string/jumbo v3, "window"

    #@42
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@45
    move-result-object v1

    #@46
    .line 1796
    check-cast v1, Landroid/view/WindowManager;

    #@48
    .line 1798
    .local v1, "wm":Landroid/view/WindowManager;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    #@4a
    or-int/lit8 v2, v2, 0x2

    #@4c
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    #@4e
    .line 1799
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    #@50
    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@53
    .line 1800
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@55
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    #@57
    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    #@5a
    .line 1777
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "wm":Landroid/view/WindowManager;
    :cond_1
    return-void
.end method

.method private finishKeyguardDrawn()V
    .locals 4

    #@0
    .prologue
    .line 5533
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 5534
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    if-eqz v0, :cond_1

    #@b
    :cond_0
    monitor-exit v1

    #@c
    .line 5535
    return-void

    #@d
    .line 5538
    :cond_1
    const/4 v0, 0x1

    #@e
    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    #@10
    .line 5539
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@12
    if-eqz v0, :cond_2

    #@14
    .line 5540
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@16
    const/4 v2, 0x6

    #@17
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    #@1a
    .line 5542
    :cond_2
    const/4 v0, 0x0

    #@1b
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    monitor-exit v1

    #@1e
    .line 5547
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    #@20
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawCallback:Ljava/lang/Runnable;

    #@22
    .line 5548
    const-wide/16 v2, 0x3e8

    #@24
    .line 5547
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/WindowManagerInternal;->waitForAllWindowsDrawn(Ljava/lang/Runnable;J)V

    #@27
    .line 5532
    return-void

    #@28
    .line 5533
    :catchall_0
    move-exception v0

    #@29
    monitor-exit v1

    #@2a
    throw v0
.end method

.method private finishPowerKeyPress()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 994
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    #@3
    .line 995
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    #@5
    .line 996
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    #@7
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 997
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    #@f
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@12
    .line 993
    :cond_0
    return-void
.end method

.method private finishScreenTurningOn()V
    .locals 5

    #@0
    .prologue
    .line 5619
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 5622
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v3

    #@7
    .line 5626
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@9
    monitor-enter v4

    #@a
    .line 5634
    :try_start_1
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    #@c
    if-nez v3, :cond_4

    #@e
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    #@10
    if-eqz v3, :cond_4

    #@12
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    #@14
    if-eqz v3, :cond_4

    #@16
    .line 5635
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    #@18
    if-eqz v3, :cond_0

    #@1a
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    #@1c
    if-eqz v3, :cond_4

    #@1e
    .line 5640
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    #@20
    .line 5641
    .local v1, "listener":Landroid/view/WindowManagerPolicy$ScreenOnListener;
    const/4 v3, 0x0

    #@21
    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    #@23
    .line 5642
    const/4 v3, 0x1

    #@24
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    #@26
    .line 5646
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    #@28
    if-nez v3, :cond_5

    #@2a
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    #@2c
    if-eqz v3, :cond_5

    #@2e
    .line 5647
    const/4 v3, 0x1

    #@2f
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    #@31
    .line 5648
    const/4 v0, 0x1

    #@32
    .line 5649
    .local v0, "enableScreen":Z
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    #@34
    if-eqz v3, :cond_1

    #@36
    .line 5650
    const/4 v3, 0x0

    #@37
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    #@39
    .line 5651
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hideBootMessages()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@3c
    :cond_1
    :goto_0
    monitor-exit v4

    #@3d
    .line 5658
    if-eqz v1, :cond_2

    #@3f
    .line 5659
    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$ScreenOnListener;->onScreenOn()V

    #@42
    .line 5662
    :cond_2
    if-eqz v0, :cond_3

    #@44
    .line 5664
    :try_start_2
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    #@46
    invoke-interface {v3}, Landroid/view/IWindowManager;->enableScreenIfNeeded()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@49
    .line 5618
    :cond_3
    :goto_1
    return-void

    #@4a
    .line 5619
    .end local v0    # "enableScreen":Z
    .end local v1    # "listener":Landroid/view/WindowManagerPolicy$ScreenOnListener;
    :catchall_0
    move-exception v4

    #@4b
    monitor-exit v3

    #@4c
    throw v4

    #@4d
    :cond_4
    monitor-exit v4

    #@4e
    .line 5636
    return-void

    #@4f
    .line 5654
    .restart local v1    # "listener":Landroid/view/WindowManagerPolicy$ScreenOnListener;
    :cond_5
    const/4 v0, 0x0

    #@50
    .restart local v0    # "enableScreen":Z
    goto :goto_0

    #@51
    .line 5626
    .end local v0    # "enableScreen":Z
    .end local v1    # "listener":Landroid/view/WindowManagerPolicy$ScreenOnListener;
    :catchall_1
    move-exception v3

    #@52
    monitor-exit v4

    #@53
    throw v3

    #@54
    .line 5665
    .restart local v0    # "enableScreen":Z
    .restart local v1    # "listener":Landroid/view/WindowManagerPolicy$ScreenOnListener;
    :catch_0
    move-exception v2

    #@55
    .local v2, "unhandled":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private finishWindowsDrawn()V
    .locals 2

    #@0
    .prologue
    .line 5607
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 5608
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    if-eqz v0, :cond_1

    #@b
    :cond_0
    monitor-exit v1

    #@c
    .line 5609
    return-void

    #@d
    .line 5612
    :cond_1
    const/4 v0, 0x1

    #@e
    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    monitor-exit v1

    #@11
    .line 5615
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishScreenTurningOn()V

    #@14
    .line 5606
    return-void

    #@15
    .line 5607
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v1

    #@17
    throw v0
.end method

.method static getAudioService()Landroid/media/IAudioService;
    .locals 3

    #@0
    .prologue
    .line 2608
    const-string/jumbo v1, "audio"

    #@3
    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v1

    #@7
    .line 2607
    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    #@a
    move-result-object v0

    #@b
    .line 2609
    .local v0, "audioService":Landroid/media/IAudioService;
    if-nez v0, :cond_0

    #@d
    .line 2610
    const-string/jumbo v1, "WindowManager"

    #@10
    const-string/jumbo v2, "Unable to find IAudioService interface."

    #@13
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    .line 2612
    :cond_0
    return-object v0
.end method

.method static getDreamManager()Landroid/service/dreams/IDreamManager;
    .locals 1

    #@0
    .prologue
    .line 2599
    const-string/jumbo v0, "dreams"

    #@3
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    .line 2598
    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method private getHdmiControl()Lcom/android/server/policy/PhoneWindowManager$HdmiControl;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1241
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    #@3
    if-nez v2, :cond_1

    #@5
    .line 1242
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@7
    .line 1243
    const-string/jumbo v3, "hdmi_control"

    #@a
    .line 1242
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Landroid/hardware/hdmi/HdmiControlManager;

    #@10
    .line 1244
    .local v1, "manager":Landroid/hardware/hdmi/HdmiControlManager;
    const/4 v0, 0x0

    #@11
    .line 1245
    .local v0, "client":Landroid/hardware/hdmi/HdmiPlaybackClient;
    if-eqz v1, :cond_0

    #@13
    .line 1246
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiControlManager;->getPlaybackClient()Landroid/hardware/hdmi/HdmiPlaybackClient;

    #@16
    move-result-object v0

    #@17
    .line 1248
    .end local v0    # "client":Landroid/hardware/hdmi/HdmiPlaybackClient;
    :cond_0
    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    #@19
    invoke-direct {v2, v0, v4}, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;-><init>(Landroid/hardware/hdmi/HdmiPlaybackClient;Lcom/android/server/policy/PhoneWindowManager$HdmiControl;)V

    #@1c
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    #@1e
    .line 1250
    .end local v1    # "manager":Landroid/hardware/hdmi/HdmiControlManager;
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    #@20
    return-object v2
.end method

.method static getLongIntArray(Landroid/content/res/Resources;I)[J
    .locals 6
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "resid"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 6021
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    #@4
    move-result-object v0

    #@5
    .line 6022
    .local v0, "ar":[I
    if-nez v0, :cond_0

    #@7
    .line 6023
    return-object v3

    #@8
    .line 6025
    :cond_0
    array-length v3, v0

    #@9
    new-array v2, v3, [J

    #@b
    .line 6026
    .local v2, "out":[J
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    array-length v3, v0

    #@d
    if-ge v1, v3, :cond_1

    #@f
    .line 6027
    aget v3, v0, v1

    #@11
    int-to-long v4, v3

    #@12
    aput-wide v4, v2, v1

    #@14
    .line 6026
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 6029
    :cond_1
    return-object v2
.end method

.method private getMaxMultiPressPowerCount()I
    .locals 1

    #@0
    .prologue
    .line 1084
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1085
    const/4 v0, 0x3

    #@5
    return v0

    #@6
    .line 1087
    :cond_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 1088
    const/4 v0, 0x2

    #@b
    return v0

    #@c
    .line 1090
    :cond_1
    const/4 v0, 0x1

    #@d
    return v0
.end method

.method private getResolvedLongPressOnPowerBehavior()I
    .locals 1

    #@0
    .prologue
    .line 1133
    invoke-static {}, Landroid/os/FactoryTest;->isLongPressOnPowerOffEnabled()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1134
    const/4 v0, 0x3

    #@7
    return v0

    #@8
    .line 1136
    :cond_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    #@a
    return v0
.end method

.method private getScreenshotChordLongPressDelay()J
    .locals 2

    #@0
    .prologue
    .line 1160
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@2
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1163
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@a
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    #@11
    move-result-wide v0

    #@12
    long-to-float v0, v0

    #@13
    .line 1162
    const/high16 v1, 0x40200000    # 2.5f

    #@15
    mul-float/2addr v0, v1

    #@16
    float-to-long v0, v0

    #@17
    return-wide v0

    #@18
    .line 1165
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@1a
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    #@21
    move-result-wide v0

    #@22
    return-wide v0
.end method

.method private getSearchManager()Landroid/app/SearchManager;
    .locals 2

    #@0
    .prologue
    .line 3160
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 3161
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@6
    const-string/jumbo v1, "search"

    #@9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/app/SearchManager;

    #@f
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    #@11
    .line 3163
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    #@13
    return-object v0
.end method

.method private handleDoubleTapOnHome()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1289
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 1290
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    #@7
    .line 1291
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    #@a
    .line 1288
    :cond_0
    return-void
.end method

.method private handleHideBootMessage()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 5671
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 5672
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    #@6
    if-nez v0, :cond_0

    #@8
    .line 5673
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 5674
    return-void

    #@d
    :cond_0
    monitor-exit v1

    #@e
    .line 5678
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 5680
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    #@14
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    #@17
    .line 5681
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    #@19
    .line 5670
    :cond_1
    return-void

    #@1a
    .line 5671
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method

.method private handleLongPressOnHome(I)V
    .locals 4
    .param p1, "deviceId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    const/4 v1, 0x0

    #@3
    .line 1276
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1277
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    #@9
    .line 1278
    invoke-virtual {p0, v3, v1, v1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    #@c
    .line 1280
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    #@e
    if-ne v0, v2, :cond_1

    #@10
    .line 1281
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    #@13
    .line 1275
    :cond_0
    :goto_0
    return-void

    #@14
    .line 1282
    :cond_1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    #@16
    const/4 v1, 0x2

    #@17
    if-ne v0, v1, :cond_0

    #@19
    .line 1283
    invoke-direct {p0, v3, p1}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    #@1c
    goto :goto_0
.end method

.method private handleShortPressOnHome()V
    .locals 2

    #@0
    .prologue
    .line 1222
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getHdmiControl()Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;->turnOnTv()V

    #@7
    .line 1226
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    #@9
    if-eqz v0, :cond_0

    #@b
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    #@d
    invoke-virtual {v0}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 1227
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    #@15
    const/4 v1, 0x0

    #@16
    invoke-virtual {v0, v1}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    #@19
    .line 1228
    return-void

    #@1a
    .line 1232
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey()V

    #@1d
    .line 1220
    return-void
.end method

.method private hasLongPressOnPowerBehavior()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1140
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method private hideRecentApps(ZZ)V
    .locals 5
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHome"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 3231
    const/4 v2, 0x0

    #@2
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    #@4
    .line 3233
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    #@7
    move-result-object v1

    #@8
    .line 3234
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    #@a
    .line 3235
    invoke-interface {v1, p1, p2}, Lcom/android/internal/statusbar/IStatusBarService;->hideRecentApps(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 3230
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    #@e
    .line 3237
    :catch_0
    move-exception v0

    #@f
    .line 3238
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "WindowManager"

    #@12
    const-string/jumbo v3, "RemoteException when closing recent apps"

    #@15
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@18
    .line 3240
    iput-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    #@1a
    goto :goto_0
.end method

.method private interceptFallback(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z
    .locals 7
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "fallbackEvent"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 3084
    invoke-virtual {p0, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    #@4
    move-result v0

    #@5
    .line 3085
    .local v0, "actions":I
    and-int/lit8 v1, v0, 0x1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 3086
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    #@c
    move-result-wide v2

    #@d
    .line 3088
    .local v2, "delayMillis":J
    const-wide/16 v4, 0x0

    #@f
    cmp-long v1, v2, v4

    #@11
    if-nez v1, :cond_0

    #@13
    .line 3089
    const/4 v1, 0x1

    #@14
    return v1

    #@15
    .line 3092
    .end local v2    # "delayMillis":J
    :cond_0
    return v6
.end method

.method private interceptPowerKeyDown(Landroid/view/KeyEvent;Z)V
    .locals 11
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "interactive"    # Z

    #@0
    .prologue
    const/16 v10, 0xe

    #@2
    const/4 v6, 0x1

    #@3
    .line 885
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    #@5
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@8
    move-result v5

    #@9
    if-nez v5, :cond_0

    #@b
    .line 886
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    #@d
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@10
    .line 890
    :cond_0
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    #@12
    if-eqz v5, :cond_1

    #@14
    .line 891
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@16
    const/16 v7, 0xd

    #@18
    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    #@1b
    .line 896
    :cond_1
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    #@1d
    .line 897
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@20
    move-result-wide v8

    #@21
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    #@23
    invoke-direct {p0, v7}, Lcom/android/server/policy/PhoneWindowManager;->isImmersiveMode(I)Z

    #@26
    move-result v7

    #@27
    .line 896
    invoke-virtual {v5, p2, v8, v9, v7}, Lcom/android/server/policy/ImmersiveModeConfirmation;->onPowerKeyDown(ZJZ)Z

    #@2a
    move-result v3

    #@2b
    .line 898
    .local v3, "panic":Z
    if-eqz v3, :cond_2

    #@2d
    .line 899
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@2f
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mHiddenNavPanic:Ljava/lang/Runnable;

    #@31
    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@34
    .line 903
    :cond_2
    if-eqz p2, :cond_3

    #@36
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    #@38
    if-eqz v5, :cond_6

    #@3a
    .line 911
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    #@3d
    move-result-object v4

    #@3e
    .line 912
    .local v4, "telecomManager":Landroid/telecom/TelecomManager;
    const/4 v0, 0x0

    #@3f
    .line 913
    .local v0, "hungUp":Z
    if-eqz v4, :cond_4

    #@41
    .line 914
    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->isRinging()Z

    #@44
    move-result v5

    #@45
    if-eqz v5, :cond_7

    #@47
    .line 917
    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->silenceRinger()V

    #@4a
    .line 929
    .end local v0    # "hungUp":Z
    :cond_4
    :goto_1
    if-nez v0, :cond_8

    #@4c
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    #@4e
    if-nez v5, :cond_8

    #@50
    .line 930
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    #@52
    .line 929
    :goto_2
    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    #@54
    .line 931
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    #@56
    if-nez v5, :cond_5

    #@58
    .line 932
    if-eqz p2, :cond_9

    #@5a
    .line 935
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnPowerBehavior()Z

    #@5d
    move-result v5

    #@5e
    if-eqz v5, :cond_5

    #@60
    .line 936
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@62
    invoke-virtual {v5, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@65
    move-result-object v2

    #@66
    .line 937
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v6}, Landroid/os/Message;->setAsynchronous(Z)V

    #@69
    .line 938
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@6b
    .line 939
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@6d
    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@70
    move-result-object v6

    #@71
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    #@74
    move-result-wide v6

    #@75
    .line 938
    invoke-virtual {v5, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@78
    .line 883
    .end local v2    # "msg":Landroid/os/Message;
    :cond_5
    :goto_3
    return-void

    #@79
    .line 904
    .end local v4    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    #@7c
    move-result v5

    #@7d
    and-int/lit16 v5, v5, 0x400

    #@7f
    if-nez v5, :cond_3

    #@81
    .line 905
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    #@83
    .line 906
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    #@86
    move-result-wide v8

    #@87
    iput-wide v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTime:J

    #@89
    .line 907
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptScreenshotChord()V

    #@8c
    goto :goto_0

    #@8d
    .line 918
    .restart local v0    # "hungUp":Z
    .restart local v4    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_7
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    #@8f
    and-int/lit8 v5, v5, 0x2

    #@91
    if-eqz v5, :cond_4

    #@93
    .line 920
    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->isInCall()Z

    #@96
    move-result v5

    #@97
    .line 918
    if-eqz v5, :cond_4

    #@99
    if-eqz p2, :cond_4

    #@9b
    .line 923
    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->endCall()Z

    #@9e
    move-result v0

    #@9f
    .local v0, "hungUp":Z
    goto :goto_1

    #@a0
    .end local v0    # "hungUp":Z
    :cond_8
    move v5, v6

    #@a1
    .line 929
    goto :goto_2

    #@a2
    .line 942
    :cond_9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    #@a5
    move-result-wide v8

    #@a6
    invoke-direct {p0, v8, v9}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    #@a9
    .line 944
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    #@ab
    if-eqz v5, :cond_a

    #@ad
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnPowerBehavior()Z

    #@b0
    move-result v5

    #@b1
    if-eqz v5, :cond_a

    #@b3
    .line 945
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@b5
    invoke-virtual {v5, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@b8
    move-result-object v2

    #@b9
    .line 946
    .restart local v2    # "msg":Landroid/os/Message;
    invoke-virtual {v2, v6}, Landroid/os/Message;->setAsynchronous(Z)V

    #@bc
    .line 947
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@be
    .line 948
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@c0
    invoke-static {v7}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@c3
    move-result-object v7

    #@c4
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    #@c7
    move-result-wide v8

    #@c8
    .line 947
    invoke-virtual {v5, v2, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@cb
    .line 949
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    #@cd
    goto :goto_3

    #@ce
    .line 951
    .end local v2    # "msg":Landroid/os/Message;
    :cond_a
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    #@d1
    move-result v1

    #@d2
    .line 953
    .local v1, "maxCount":I
    if-gt v1, v6, :cond_b

    #@d4
    .line 954
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    #@d6
    goto :goto_3

    #@d7
    .line 956
    :cond_b
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    #@d9
    goto :goto_3
.end method

.method private interceptPowerKeyUp(Landroid/view/KeyEvent;ZZ)V
    .locals 11
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "interactive"    # Z
    .param p3, "canceled"    # Z

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 964
    if-nez p3, :cond_1

    #@4
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    #@6
    .line 965
    :goto_0
    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    #@8
    .line 966
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    #@b
    .line 967
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    #@e
    .line 969
    if-nez v2, :cond_3

    #@10
    .line 971
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    #@12
    add-int/lit8 v7, v7, 0x1

    #@14
    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    #@16
    .line 973
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    #@19
    move-result v3

    #@1a
    .line 974
    .local v3, "maxCount":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    #@1d
    move-result-wide v0

    #@1e
    .line 975
    .local v0, "eventTime":J
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    #@20
    if-ge v7, v3, :cond_2

    #@22
    .line 978
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@24
    .line 979
    if-eqz p2, :cond_0

    #@26
    move v5, v6

    #@27
    :cond_0
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    #@29
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2c
    move-result-object v9

    #@2d
    .line 978
    const/16 v10, 0xd

    #@2f
    invoke-virtual {v7, v10, v5, v8, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@32
    move-result-object v4

    #@33
    .line 980
    .local v4, "msg":Landroid/os/Message;
    invoke-virtual {v4, v6}, Landroid/os/Message;->setAsynchronous(Z)V

    #@36
    .line 981
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@38
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    #@3b
    move-result v6

    #@3c
    int-to-long v6, v6

    #@3d
    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@40
    .line 982
    return-void

    #@41
    .line 964
    .end local v0    # "eventTime":J
    .end local v3    # "maxCount":I
    .end local v4    # "msg":Landroid/os/Message;
    :cond_1
    const/4 v2, 0x1

    #@42
    .local v2, "handled":Z
    goto :goto_0

    #@43
    .line 986
    .end local v2    # "handled":Z
    .restart local v0    # "eventTime":J
    .restart local v3    # "maxCount":I
    :cond_2
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    #@45
    invoke-direct {p0, v0, v1, p2, v5}, Lcom/android/server/policy/PhoneWindowManager;->powerPress(JZI)V

    #@48
    .line 990
    .end local v0    # "eventTime":J
    .end local v3    # "maxCount":I
    :cond_3
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishPowerKeyPress()V

    #@4b
    .line 963
    return-void
.end method

.method private interceptScreenshotChord()V
    .locals 6

    #@0
    .prologue
    const-wide/16 v4, 0x96

    #@2
    .line 1144
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordEnabled:Z

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 1145
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    #@8
    .line 1144
    if-eqz v2, :cond_0

    #@a
    .line 1145
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    #@c
    .line 1144
    if-eqz v2, :cond_0

    #@e
    .line 1146
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    #@10
    if-eqz v2, :cond_1

    #@12
    .line 1143
    :cond_0
    :goto_0
    return-void

    #@13
    .line 1147
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@16
    move-result-wide v0

    #@17
    .line 1148
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    #@19
    add-long/2addr v2, v4

    #@1a
    cmp-long v2, v0, v2

    #@1c
    if-gtz v2, :cond_0

    #@1e
    .line 1149
    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTime:J

    #@20
    add-long/2addr v2, v4

    #@21
    cmp-long v2, v0, v2

    #@23
    if-gtz v2, :cond_0

    #@25
    .line 1151
    const/4 v2, 0x1

    #@26
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    #@28
    .line 1152
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    #@2b
    .line 1154
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@2d
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;

    #@2f
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getScreenshotChordLongPressDelay()J

    #@32
    move-result-wide v4

    #@33
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@36
    goto :goto_0
.end method

.method private isAnyPortrait(I)Z
    .locals 2
    .param p1, "rotation"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 5978
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    #@3
    if-eq p1, v1, :cond_0

    #@5
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    #@7
    if-ne p1, v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method private isGlobalAccessibilityGestureEnabled()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 6485
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v2

    #@8
    .line 6486
    const-string/jumbo v3, "enable_accessibility_global_gesture_enabled"

    #@b
    .line 6485
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@e
    move-result v2

    #@f
    if-ne v2, v0, :cond_0

    #@11
    :goto_0
    return v0

    #@12
    :cond_0
    move v0, v1

    #@13
    goto :goto_0
.end method

.method private isHidden(I)Z
    .locals 3
    .param p1, "accessibilityMode"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 2007
    packed-switch p1, :pswitch_data_0

    #@5
    .line 2013
    return v1

    #@6
    .line 2009
    :pswitch_0
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    #@8
    if-nez v2, :cond_0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    move v0, v1

    #@c
    goto :goto_0

    #@d
    .line 2011
    :pswitch_1
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    #@f
    if-ne v2, v0, :cond_1

    #@11
    :goto_1
    return v0

    #@12
    :cond_1
    move v0, v1

    #@13
    goto :goto_1

    #@14
    .line 2007
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isImmersiveMode(I)Z
    .locals 3
    .param p1, "vis"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 6738
    const/16 v0, 0x1800

    #@3
    .line 6739
    .local v0, "flags":I
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 6740
    and-int/lit8 v2, p1, 0x2

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 6741
    and-int/lit16 v2, p1, 0x1800

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 6742
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    #@12
    move-result v1

    #@13
    .line 6739
    :cond_0
    return v1
.end method

.method private isKeyguardShowingAndNotOccluded()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 5707
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@3
    if-nez v1, :cond_0

    #@5
    return v0

    #@6
    .line 5708
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@8
    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_1

    #@e
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    #@10
    if-eqz v1, :cond_2

    #@12
    :cond_1
    :goto_0
    return v0

    #@13
    :cond_2
    const/4 v0, 0x1

    #@14
    goto :goto_0
.end method

.method private isLandscapeOrSeascape(I)Z
    .locals 2
    .param p1, "rotation"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 5974
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    #@3
    if-eq p1, v1, :cond_0

    #@5
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    #@7
    if-ne p1, v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method private isRoundWindow()Z
    .locals 1

    #@0
    .prologue
    .line 1306
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Landroid/content/res/Configuration;->isScreenRound()Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method private isStatusBarKeyguard()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 4678
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 4679
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@7
    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@a
    move-result-object v1

    #@b
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@d
    and-int/lit16 v1, v1, 0x400

    #@f
    if-eqz v1, :cond_0

    #@11
    const/4 v0, 0x1

    #@12
    .line 4678
    :cond_0
    return v0
.end method

.method private isTheaterModeEnabled()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 6480
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v2

    #@8
    .line 6481
    const-string/jumbo v3, "theater_mode_on"

    #@b
    .line 6480
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@e
    move-result v2

    #@f
    if-ne v2, v0, :cond_0

    #@11
    :goto_0
    return v0

    #@12
    :cond_0
    move v0, v1

    #@13
    goto :goto_0
.end method

.method private static isValidGlobalKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    #@0
    .prologue
    .line 5162
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 5168
    const/4 v0, 0x1

    #@4
    return v0

    #@5
    .line 5166
    :sswitch_0
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 5162
    nop

    #@8
    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_0
        0xdf -> :sswitch_0
        0xe0 -> :sswitch_0
    .end sparse-switch
.end method

.method private isWakeKeyWhenScreenOff(I)Z
    .locals 3
    .param p1, "keyCode"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 5180
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 5203
    return v0

    #@6
    .line 5185
    :sswitch_0
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    #@8
    if-eqz v2, :cond_0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    move v0, v1

    #@c
    goto :goto_0

    #@d
    .line 5201
    :sswitch_1
    return v1

    #@e
    .line 5180
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_1
        0x4f -> :sswitch_1
        0x55 -> :sswitch_1
        0x56 -> :sswitch_1
        0x57 -> :sswitch_1
        0x58 -> :sswitch_1
        0x59 -> :sswitch_1
        0x5a -> :sswitch_1
        0x5b -> :sswitch_1
        0x7e -> :sswitch_1
        0x7f -> :sswitch_1
        0x82 -> :sswitch_1
        0xa4 -> :sswitch_0
        0xde -> :sswitch_1
    .end sparse-switch
.end method

.method private launchAssistAction(Ljava/lang/String;I)V
    .locals 7
    .param p1, "hint"    # Ljava/lang/String;
    .param p2, "deviceId"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 3116
    const-string/jumbo v4, "assist"

    #@4
    invoke-virtual {p0, v4}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    #@7
    .line 3117
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    #@a
    move-result v4

    #@b
    if-nez v4, :cond_0

    #@d
    .line 3119
    return-void

    #@e
    .line 3121
    :cond_0
    const/4 v0, 0x0

    #@f
    .line 3122
    .local v0, "args":Landroid/os/Bundle;
    const/high16 v4, -0x80000000

    #@11
    if-le p2, v4, :cond_1

    #@13
    .line 3123
    new-instance v0, Landroid/os/Bundle;

    #@15
    .end local v0    # "args":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@18
    .line 3124
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v4, "android.intent.extra.ASSIST_INPUT_DEVICE_ID"

    #@1b
    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@1e
    .line 3126
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_1
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@20
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@27
    move-result-object v4

    #@28
    iget v4, v4, Landroid/content/res/Configuration;->uiMode:I

    #@2a
    and-int/lit8 v4, v4, 0xf

    #@2c
    .line 3127
    const/4 v5, 0x4

    #@2d
    .line 3126
    if-ne v4, v5, :cond_3

    #@2f
    .line 3129
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@31
    const-string/jumbo v5, "search"

    #@34
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@37
    move-result-object v4

    #@38
    check-cast v4, Landroid/app/SearchManager;

    #@3a
    .line 3130
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3d
    move-result v5

    #@3e
    .line 3129
    invoke-virtual {v4, p1, v5, v0}, Landroid/app/SearchManager;->launchLegacyAssist(Ljava/lang/String;ILandroid/os/Bundle;)Z

    #@41
    .line 3115
    :cond_2
    :goto_0
    return-void

    #@42
    .line 3133
    :cond_3
    if-eqz p1, :cond_5

    #@44
    .line 3134
    if-nez v0, :cond_4

    #@46
    .line 3135
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    #@48
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@4b
    .local v1, "args":Landroid/os/Bundle;
    move-object v0, v1

    #@4c
    .line 3137
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_4
    const/4 v4, 0x1

    #@4d
    invoke-virtual {v0, p1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@50
    .line 3139
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    #@53
    move-result-object v3

    #@54
    .line 3140
    .local v3, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v3, :cond_2

    #@56
    .line 3141
    invoke-interface {v3, v0}, Lcom/android/internal/statusbar/IStatusBarService;->startAssist(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@59
    goto :goto_0

    #@5a
    .line 3143
    .end local v3    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v2

    #@5b
    .line 3144
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "WindowManager"

    #@5e
    const-string/jumbo v5, "RemoteException when starting assist"

    #@61
    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@64
    .line 3146
    iput-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    #@66
    goto :goto_0
.end method

.method private launchAssistLongPressAction()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 3096
    invoke-virtual {p0, v4, v3, v3}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    #@5
    .line 3097
    const-string/jumbo v3, "assist"

    #@8
    invoke-virtual {p0, v3}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    #@b
    .line 3100
    new-instance v1, Landroid/content/Intent;

    #@d
    const-string/jumbo v3, "android.intent.action.SEARCH_LONG_PRESS"

    #@10
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@13
    .line 3101
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    #@15
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@18
    .line 3105
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getSearchManager()Landroid/app/SearchManager;

    #@1b
    move-result-object v2

    #@1c
    .line 3106
    .local v2, "searchManager":Landroid/app/SearchManager;
    if-eqz v2, :cond_0

    #@1e
    .line 3107
    invoke-virtual {v2}, Landroid/app/SearchManager;->stopSearch()V

    #@21
    .line 3109
    :cond_0
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@23
    invoke-direct {p0, v1, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    .line 3095
    .end local v2    # "searchManager":Landroid/app/SearchManager;
    :goto_0
    return-void

    #@27
    .line 3110
    :catch_0
    move-exception v0

    #@28
    .line 3111
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v3, "WindowManager"

    #@2b
    const-string/jumbo v4, "No activity to handle assist long press action."

    #@2e
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@31
    goto :goto_0
.end method

.method private offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    #@0
    .prologue
    .line 4296
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    #@3
    move-result-object v1

    #@4
    iget v1, v1, Landroid/graphics/Rect;->top:I

    #@6
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    #@9
    move-result-object v2

    #@a
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@c
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@f
    move-result v0

    #@10
    .line 4297
    .local v0, "top":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    #@13
    move-result-object v1

    #@14
    iget v1, v1, Landroid/graphics/Rect;->top:I

    #@16
    add-int/2addr v0, v1

    #@17
    .line 4298
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    #@19
    if-le v1, v0, :cond_0

    #@1b
    .line 4299
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    #@1d
    .line 4301
    :cond_0
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    #@1f
    if-le v1, v0, :cond_1

    #@21
    .line 4302
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    #@23
    .line 4304
    :cond_1
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    #@26
    move-result-object v1

    #@27
    iget v0, v1, Landroid/graphics/Rect;->top:I

    #@29
    .line 4305
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenVisibleInsetsLw()Landroid/graphics/Rect;

    #@2c
    move-result-object v1

    #@2d
    iget v1, v1, Landroid/graphics/Rect;->top:I

    #@2f
    add-int/2addr v0, v1

    #@30
    .line 4306
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    #@32
    if-le v1, v0, :cond_2

    #@34
    .line 4307
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    #@36
    .line 4295
    :cond_2
    return-void
.end method

.method private offsetVoiceInputWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    #@0
    .prologue
    .line 4315
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    #@3
    move-result-object v1

    #@4
    iget v1, v1, Landroid/graphics/Rect;->top:I

    #@6
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    #@9
    move-result-object v2

    #@a
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@c
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@f
    move-result v0

    #@10
    .line 4316
    .local v0, "top":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    #@13
    move-result-object v1

    #@14
    iget v1, v1, Landroid/graphics/Rect;->top:I

    #@16
    add-int/2addr v0, v1

    #@17
    .line 4317
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    #@19
    if-le v1, v0, :cond_0

    #@1b
    .line 4318
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    #@1d
    .line 4314
    :cond_0
    return-void
.end method

.method private performAuditoryFeedbackForAccessibilityIfNeed()V
    .locals 4

    #@0
    .prologue
    .line 6465
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isGlobalAccessibilityGestureEnabled()Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_0

    #@6
    .line 6466
    return-void

    #@7
    .line 6468
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@9
    .line 6469
    const-string/jumbo v3, "audio"

    #@c
    .line 6468
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/media/AudioManager;

    #@12
    .line 6470
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSilentMode()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 6471
    return-void

    #@19
    .line 6473
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@1b
    .line 6474
    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    #@1d
    .line 6473
    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    #@20
    move-result-object v1

    #@21
    .line 6475
    .local v1, "ringTone":Landroid/media/Ringtone;
    const/4 v2, 0x3

    #@22
    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    #@25
    .line 6476
    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    #@28
    .line 6464
    return-void
.end method

.method private powerLongPress()V
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 1094
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    #@6
    move-result v0

    #@7
    .line 1095
    .local v0, "behavior":I
    packed-switch v0, :pswitch_data_0

    #@a
    .line 1093
    :goto_0
    :pswitch_0
    return-void

    #@b
    .line 1099
    :pswitch_1
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    #@d
    .line 1100
    invoke-virtual {p0, v3, v2, v2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_0

    #@13
    .line 1101
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->performAuditoryFeedbackForAccessibilityIfNeed()V

    #@16
    .line 1103
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal()V

    #@19
    goto :goto_0

    #@1a
    .line 1107
    :pswitch_2
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    #@1c
    .line 1108
    invoke-virtual {p0, v3, v2, v2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    #@1f
    .line 1109
    const-string/jumbo v3, "globalactions"

    #@22
    invoke-virtual {p0, v3}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    #@25
    .line 1110
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@27
    const/4 v4, 0x2

    #@28
    if-ne v0, v4, :cond_1

    #@2a
    :goto_1
    invoke-interface {v3, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    #@2d
    goto :goto_0

    #@2e
    :cond_1
    move v1, v2

    #@2f
    goto :goto_1

    #@30
    .line 1095
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private powerMultiPressAction(JZI)V
    .locals 5
    .param p1, "eventTime"    # J
    .param p3, "interactive"    # Z
    .param p4, "behavior"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1046
    packed-switch p4, :pswitch_data_0

    #@4
    .line 1045
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    #@5
    .line 1050
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_1

    #@b
    .line 1051
    const-string/jumbo v0, "WindowManager"

    #@e
    const-string/jumbo v1, "Ignoring toggling theater mode - device not setup."

    #@11
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    goto :goto_0

    #@15
    .line 1055
    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTheaterModeEnabled()Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_2

    #@1b
    .line 1056
    const-string/jumbo v0, "WindowManager"

    #@1e
    const-string/jumbo v1, "Toggling theater mode off."

    #@21
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 1057
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@26
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@29
    move-result-object v0

    #@2a
    .line 1058
    const-string/jumbo v1, "theater_mode_on"

    #@2d
    .line 1057
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@30
    .line 1059
    if-nez p3, :cond_0

    #@32
    .line 1060
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    #@35
    goto :goto_0

    #@36
    .line 1063
    :cond_2
    const-string/jumbo v0, "WindowManager"

    #@39
    const-string/jumbo v1, "Toggling theater mode on."

    #@3c
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    .line 1064
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@41
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@44
    move-result-object v0

    #@45
    .line 1065
    const-string/jumbo v1, "theater_mode_on"

    #@48
    const/4 v2, 0x1

    #@49
    .line 1064
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@4c
    .line 1067
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoToSleepOnButtonPressTheaterMode:Z

    #@4e
    if-eqz v0, :cond_0

    #@50
    if-eqz p3, :cond_0

    #@52
    .line 1068
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@54
    .line 1069
    const/4 v1, 0x4

    #@55
    .line 1068
    invoke-virtual {v0, p1, p2, v1, v3}, Landroid/os/PowerManager;->goToSleep(JII)V

    #@58
    goto :goto_0

    #@59
    .line 1074
    :pswitch_2
    const-string/jumbo v0, "WindowManager"

    #@5c
    const-string/jumbo v1, "Starting brightness boost."

    #@5f
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@62
    .line 1075
    if-nez p3, :cond_3

    #@64
    .line 1076
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    #@67
    .line 1078
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@69
    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager;->boostScreenBrightness(J)V

    #@6c
    goto :goto_0

    #@6d
    .line 1046
    nop

    #@6e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private powerPress(JZI)V
    .locals 5
    .param p1, "eventTime"    # J
    .param p3, "interactive"    # Z
    .param p4, "count"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x4

    #@2
    const/4 v1, 0x1

    #@3
    .line 1009
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    #@9
    if-eqz v0, :cond_2

    #@b
    .line 1015
    :cond_0
    const/4 v0, 0x2

    #@c
    if-ne p4, v0, :cond_3

    #@e
    .line 1016
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    #@10
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZI)V

    #@13
    .line 1008
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    #@14
    .line 1010
    :cond_2
    const-string/jumbo v0, "WindowManager"

    #@17
    const-string/jumbo v1, "Suppressed redundant power key press while already in the process of turning the screen on."

    #@1a
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 1012
    return-void

    #@1e
    .line 1017
    :cond_3
    const/4 v0, 0x3

    #@1f
    if-ne p4, v0, :cond_4

    #@21
    .line 1018
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    #@23
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZI)V

    #@26
    goto :goto_0

    #@27
    .line 1019
    :cond_4
    if-eqz p3, :cond_1

    #@29
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    #@2b
    if-nez v0, :cond_1

    #@2d
    .line 1020
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    #@2f
    packed-switch v0, :pswitch_data_0

    #@32
    goto :goto_0

    #@33
    .line 1024
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@35
    invoke-virtual {v0, p1, p2, v2, v3}, Landroid/os/PowerManager;->goToSleep(JII)V

    #@38
    goto :goto_0

    #@39
    .line 1028
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@3b
    invoke-virtual {v0, p1, p2, v2, v1}, Landroid/os/PowerManager;->goToSleep(JII)V

    #@3e
    goto :goto_0

    #@3f
    .line 1033
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@41
    invoke-virtual {v0, p1, p2, v2, v1}, Landroid/os/PowerManager;->goToSleep(JII)V

    #@44
    .line 1036
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey()V

    #@47
    goto :goto_0

    #@48
    .line 1039
    :pswitch_4
    invoke-virtual {p0, v1, v3}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(ZZ)V

    #@4b
    goto :goto_0

    #@4c
    .line 1020
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private preloadRecentApps()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 3167
    const/4 v2, 0x1

    #@2
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    #@4
    .line 3169
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    #@7
    move-result-object v1

    #@8
    .line 3170
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    #@a
    .line 3171
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->preloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 3166
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    #@e
    .line 3173
    :catch_0
    move-exception v0

    #@f
    .line 3174
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "WindowManager"

    #@12
    const-string/jumbo v3, "RemoteException when preloading recent apps"

    #@15
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@18
    .line 3176
    iput-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    #@1a
    goto :goto_0
.end method

.method private readCameraLensCoverState()V
    .locals 1

    #@0
    .prologue
    .line 2003
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@2
    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getCameraLensCoverState()I

    #@5
    move-result v0

    #@6
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    #@8
    .line 2002
    return-void
.end method

.method private readConfigurationDependentBehaviors()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1552
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@6
    move-result-object v0

    #@7
    .line 1553
    const v1, 0x10e0059

    #@a
    .line 1552
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@d
    move-result v0

    #@e
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    #@10
    .line 1554
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    #@12
    if-ltz v0, :cond_0

    #@14
    .line 1555
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    #@16
    const/4 v1, 0x2

    #@17
    if-le v0, v1, :cond_1

    #@19
    .line 1556
    :cond_0
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    #@1b
    .line 1559
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@1d
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@20
    move-result-object v0

    #@21
    .line 1560
    const v1, 0x10e005a

    #@24
    .line 1559
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@27
    move-result v0

    #@28
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    #@2a
    .line 1561
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    #@2c
    if-ltz v0, :cond_2

    #@2e
    .line 1562
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    #@30
    const/4 v1, 0x1

    #@31
    if-le v0, v1, :cond_3

    #@33
    .line 1563
    :cond_2
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    #@35
    .line 1551
    :cond_3
    return-void
.end method

.method private readRotation(I)I
    .locals 3
    .param p1, "resID"    # I

    #@0
    .prologue
    .line 1815
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    .line 1816
    .local v1, "rotation":I
    sparse-switch v1, :sswitch_data_0

    #@d
    .line 1829
    .end local v1    # "rotation":I
    :goto_0
    const/4 v2, -0x1

    #@e
    return v2

    #@f
    .line 1818
    .restart local v1    # "rotation":I
    :sswitch_0
    const/4 v2, 0x0

    #@10
    return v2

    #@11
    .line 1820
    :sswitch_1
    const/4 v2, 0x1

    #@12
    return v2

    #@13
    .line 1822
    :sswitch_2
    const/4 v2, 0x2

    #@14
    return v2

    #@15
    .line 1824
    :sswitch_3
    const/4 v2, 0x3

    #@16
    return v2

    #@17
    .line 1826
    .end local v1    # "rotation":I
    :catch_0
    move-exception v0

    #@18
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    goto :goto_0

    #@19
    .line 1816
    nop

    #@1a
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 4
    .param p1, "swipeTarget"    # Landroid/view/WindowManagerPolicy$WindowState;

    #@0
    .prologue
    .line 5434
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@2
    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    monitor-enter v3

    #@7
    .line 5435
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result v2

    #@b
    if-nez v2, :cond_0

    #@d
    monitor-exit v3

    #@e
    .line 5437
    return-void

    #@f
    .line 5439
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@11
    invoke-virtual {v2}, Lcom/android/server/policy/StatusBarController;->checkShowTransientBarLw()Z

    #@14
    move-result v1

    #@15
    .line 5440
    .local v1, "sb":Z
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@17
    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->checkShowTransientBarLw()Z

    #@1a
    move-result v0

    #@1b
    .line 5441
    .local v0, "nb":Z
    if-nez v1, :cond_1

    #@1d
    if-eqz v0, :cond_5

    #@1f
    .line 5443
    :cond_1
    if-nez v0, :cond_2

    #@21
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    if-ne p1, v2, :cond_2

    #@25
    monitor-exit v3

    #@26
    .line 5445
    return-void

    #@27
    .line 5447
    :cond_2
    if-eqz v1, :cond_3

    #@29
    :try_start_2
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@2b
    invoke-virtual {v2}, Lcom/android/server/policy/StatusBarController;->showTransient()V

    #@2e
    .line 5448
    :cond_3
    if-eqz v0, :cond_4

    #@30
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@32
    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->showTransient()V

    #@35
    .line 5449
    :cond_4
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    #@37
    invoke-virtual {v2}, Lcom/android/server/policy/ImmersiveModeConfirmation;->confirmCurrentPrompt()V

    #@3a
    .line 5450
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3d
    :cond_5
    monitor-exit v3

    #@3e
    .line 5433
    return-void

    #@3f
    .line 5434
    .end local v0    # "nb":Z
    .end local v1    # "sb":Z
    :catchall_0
    move-exception v2

    #@40
    monitor-exit v3

    #@41
    throw v2
.end method

.method private setKeyguardOccludedLw(Z)Z
    .locals 6
    .param p1, "isOccluded"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    .line 4658
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    #@4
    .line 4659
    .local v1, "wasOccluded":Z
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@6
    invoke-virtual {v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    #@9
    move-result v0

    #@a
    .line 4660
    .local v0, "showing":Z
    if-eqz v1, :cond_0

    #@c
    if-eqz p1, :cond_1

    #@e
    .line 4666
    :cond_0
    if-nez v1, :cond_2

    #@10
    if-eqz p1, :cond_2

    #@12
    if-eqz v0, :cond_2

    #@14
    .line 4667
    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    #@16
    .line 4668
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@18
    invoke-virtual {v2, v5}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(Z)V

    #@1b
    .line 4669
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@1d
    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@20
    move-result-object v2

    #@21
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@23
    and-int/lit16 v3, v3, -0x401

    #@25
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@27
    .line 4670
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@29
    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@2c
    move-result-object v2

    #@2d
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@2f
    const v4, -0x100001

    #@32
    and-int/2addr v3, v4

    #@33
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@35
    .line 4671
    return v5

    #@36
    .line 4660
    :cond_1
    if-eqz v0, :cond_0

    #@38
    .line 4661
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    #@3a
    .line 4662
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@3c
    invoke-virtual {v2, v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(Z)V

    #@3f
    .line 4663
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@41
    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@44
    move-result-object v2

    #@45
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@47
    or-int/lit16 v3, v3, 0x400

    #@49
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@4b
    .line 4664
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@4d
    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@50
    move-result-object v2

    #@51
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@53
    const/high16 v4, 0x100000

    #@55
    or-int/2addr v3, v4

    #@56
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@58
    .line 4665
    return v5

    #@59
    .line 4673
    :cond_2
    return v3
.end method

.method private shouldDispatchInputWhenNonInteractive()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    .line 5233
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    #@4
    if-eqz v2, :cond_0

    #@6
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    #@8
    invoke-virtual {v2}, Landroid/view/Display;->getState()I

    #@b
    move-result v2

    #@c
    if-ne v2, v3, :cond_1

    #@e
    .line 5234
    :cond_0
    return v4

    #@f
    .line 5237
    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_2

    #@15
    .line 5238
    return v3

    #@16
    .line 5243
    :cond_2
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    #@19
    move-result-object v0

    #@1a
    .line 5246
    .local v0, "dreamManager":Landroid/service/dreams/IDreamManager;
    if-eqz v0, :cond_3

    #@1c
    :try_start_0
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_3

    #@22
    .line 5247
    return v3

    #@23
    .line 5249
    :catch_0
    move-exception v1

    #@24
    .line 5250
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "WindowManager"

    #@27
    const-string/jumbo v3, "RemoteException when checking if dreaming"

    #@2a
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2d
    .line 5255
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    return v4
.end method

.method private shouldEnableWakeGestureLp()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1772
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    #@7
    if-eqz v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    .line 1773
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    #@c
    if-eqz v1, :cond_2

    #@e
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 1774
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    #@14
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->isSupported()Z

    #@17
    move-result v0

    #@18
    goto :goto_0
.end method

.method private shouldUseOutsets(Landroid/view/WindowManager$LayoutParams;I)Z
    .locals 4
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "fl"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 3452
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@4
    const/16 v3, 0x7dd

    #@6
    if-eq v2, v3, :cond_0

    #@8
    const v2, 0x2000400

    #@b
    and-int/2addr v2, p2

    #@c
    if-eqz v2, :cond_1

    #@e
    :cond_0
    :goto_0
    return v0

    #@f
    :cond_1
    move v0, v1

    #@10
    goto :goto_0
.end method

.method private showRecentApps(Z)V
    .locals 5
    .param p1, "triggeredFromAltTab"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 3217
    const/4 v2, 0x0

    #@2
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    #@4
    .line 3219
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    #@7
    move-result-object v1

    #@8
    .line 3220
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    #@a
    .line 3221
    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBarService;->showRecentApps(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 3216
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    #@e
    .line 3223
    :catch_0
    move-exception v0

    #@f
    .line 3224
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "WindowManager"

    #@12
    const-string/jumbo v3, "RemoteException when showing recent apps"

    #@15
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@18
    .line 3226
    iput-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    #@1a
    goto :goto_0
.end method

.method private sleepPress(J)V
    .locals 2
    .param p1, "eventTime"    # J

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1116
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 1117
    const/4 v0, 0x0

    #@6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(ZZ)V

    #@9
    .line 1115
    :cond_0
    return-void
.end method

.method private sleepRelease(J)V
    .locals 3
    .param p1, "eventTime"    # J

    #@0
    .prologue
    .line 1122
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 1121
    :goto_0
    return-void

    #@6
    .line 1125
    :pswitch_0
    const-string/jumbo v0, "WindowManager"

    #@9
    const-string/jumbo v1, "sleepRelease() calling goToSleep(GO_TO_SLEEP_REASON_SLEEP_BUTTON)"

    #@c
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 1126
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@11
    .line 1127
    const/4 v1, 0x6

    #@12
    const/4 v2, 0x0

    #@13
    .line 1126
    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/os/PowerManager;->goToSleep(JII)V

    #@16
    goto :goto_0

    #@17
    .line 1122
    nop

    #@18
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "handle"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 3152
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 3153
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@b
    .line 3151
    :goto_0
    return-void

    #@c
    .line 3155
    :cond_0
    const-string/jumbo v0, "WindowManager"

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "Not starting activity because user setup is in progress: "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    goto :goto_0
.end method

.method private takeScreenshot()V
    .locals 8

    #@0
    .prologue
    .line 4807
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 4808
    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v3, :cond_0

    #@7
    monitor-exit v4

    #@8
    .line 4809
    return-void

    #@9
    .line 4811
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/ComponentName;

    #@b
    const-string/jumbo v3, "com.android.systemui"

    #@e
    .line 4812
    const-string/jumbo v5, "com.android.systemui.screenshot.TakeScreenshotService"

    #@11
    .line 4811
    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 4813
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    #@16
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    #@19
    .line 4814
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@1c
    .line 4815
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$18;

    #@1e
    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$18;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@21
    .line 4852
    .local v1, "conn":Landroid/content/ServiceConnection;
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@23
    .line 4853
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@25
    const/4 v6, 0x1

    #@26
    .line 4852
    invoke-virtual {v3, v2, v1, v6, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_1

    #@2c
    .line 4854
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    #@2e
    .line 4855
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@30
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotTimeout:Ljava/lang/Runnable;

    #@32
    const-wide/16 v6, 0x2710

    #@34
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    :cond_1
    monitor-exit v4

    #@38
    .line 4806
    return-void

    #@39
    .line 4807
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "conn":Landroid/content/ServiceConnection;
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    #@3a
    monitor-exit v4

    #@3b
    throw v3
.end method

.method private toggleRecentApps()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 3197
    const/4 v2, 0x0

    #@2
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    #@4
    .line 3199
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    #@7
    move-result-object v1

    #@8
    .line 3200
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    #@a
    .line 3201
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 3196
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    #@e
    .line 3203
    :catch_0
    move-exception v0

    #@f
    .line 3204
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "WindowManager"

    #@12
    const-string/jumbo v3, "RemoteException when toggling recent apps"

    #@15
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@18
    .line 3206
    iput-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    #@1a
    goto :goto_0
.end method

.method private updateDreamingSleepToken(Z)V
    .locals 2
    .param p1, "acquire"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 6237
    if-eqz p1, :cond_1

    #@3
    .line 6238
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 6239
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    #@9
    const-string/jumbo v1, "Dream"

    #@c
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->acquireSleepToken(Ljava/lang/String;)Landroid/app/ActivityManagerInternal$SleepToken;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    #@12
    .line 6236
    :cond_0
    :goto_0
    return-void

    #@13
    .line 6242
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 6243
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    #@19
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal$SleepToken;->release()V

    #@1c
    .line 6244
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    #@1e
    goto :goto_0
.end method

.method private updateLightStatusBarLw(I)I
    .locals 3
    .param p1, "vis"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 6612
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    #@9
    if-eqz v1, :cond_2

    #@b
    .line 6614
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@d
    .line 6616
    .local v0, "statusColorWin":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_0
    if-eqz v0, :cond_1

    #@f
    .line 6617
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@11
    if-ne v0, v1, :cond_3

    #@13
    .line 6620
    and-int/lit16 p1, p1, -0x2001

    #@15
    .line 6621
    invoke-static {v0, v2}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    #@18
    move-result v1

    #@19
    and-int/lit16 v1, v1, 0x2000

    #@1b
    or-int/2addr p1, v1

    #@1c
    .line 6628
    :cond_1
    :goto_1
    return p1

    #@1d
    .line 6613
    .end local v0    # "statusColorWin":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@1f
    .restart local v0    # "statusColorWin":Landroid/view/WindowManagerPolicy$WindowState;
    goto :goto_0

    #@20
    .line 6623
    :cond_3
    if-eqz v0, :cond_1

    #@22
    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isDimming()Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_1

    #@28
    .line 6625
    and-int/lit16 p1, p1, -0x2001

    #@2a
    goto :goto_1
.end method

.method private updateLockScreenTimeout()V
    .locals 6

    #@0
    .prologue
    .line 6220
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    #@2
    monitor-enter v2

    #@3
    .line 6221
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    #@5
    if-eqz v1, :cond_1

    #@7
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 6222
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@d
    if-eqz v1, :cond_1

    #@f
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@11
    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure()Z

    #@14
    move-result v0

    #@15
    .line 6223
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    #@17
    if-eq v1, v0, :cond_0

    #@19
    .line 6224
    if-eqz v0, :cond_2

    #@1b
    .line 6226
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@1d
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    #@1f
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    #@21
    int-to-long v4, v4

    #@22
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@25
    .line 6231
    :goto_1
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    :cond_0
    monitor-exit v2

    #@28
    .line 6219
    return-void

    #@29
    .line 6221
    :cond_1
    const/4 v0, 0x0

    #@2a
    .local v0, "enable":Z
    goto :goto_0

    #@2b
    .line 6229
    .end local v0    # "enable":Z
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@2d
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    #@2f
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    goto :goto_1

    #@33
    .line 6220
    :catchall_0
    move-exception v1

    #@34
    monitor-exit v2

    #@35
    throw v1
.end method

.method private updateScreenOffSleepToken(Z)V
    .locals 2
    .param p1, "acquire"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 6250
    if-eqz p1, :cond_1

    #@3
    .line 6251
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 6252
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    #@9
    const-string/jumbo v1, "ScreenOff"

    #@c
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->acquireSleepToken(Ljava/lang/String;)Landroid/app/ActivityManagerInternal$SleepToken;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    #@12
    .line 6249
    :cond_0
    :goto_0
    return-void

    #@13
    .line 6255
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 6256
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    #@19
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal$SleepToken;->release()V

    #@1c
    .line 6257
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    #@1e
    goto :goto_0
.end method

.method private updateSystemBarsLw(Landroid/view/WindowManagerPolicy$WindowState;II)I
    .locals 28
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "oldVis"    # I
    .param p3, "vis"    # I

    #@0
    .prologue
    .line 6633
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    #@3
    move-result v24

    #@4
    if-eqz v24, :cond_0

    #@6
    move-object/from16 v0, p0

    #@8
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    #@a
    move/from16 v24, v0

    #@c
    if-eqz v24, :cond_a

    #@e
    .line 6635
    :cond_0
    move-object/from16 v0, p0

    #@10
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@12
    move-object/from16 v20, v0

    #@14
    .line 6636
    .local v20, "transWin":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_0
    move-object/from16 v0, p0

    #@16
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@18
    move-object/from16 v24, v0

    #@1a
    move-object/from16 v0, v24

    #@1c
    move-object/from16 v1, v20

    #@1e
    move/from16 v2, p3

    #@20
    move/from16 v3, p2

    #@22
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/StatusBarController;->applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    #@25
    move-result p3

    #@26
    .line 6637
    move-object/from16 v0, p0

    #@28
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@2a
    move-object/from16 v24, v0

    #@2c
    move-object/from16 v0, v24

    #@2e
    move-object/from16 v1, v20

    #@30
    move/from16 v2, p3

    #@32
    move/from16 v3, p2

    #@34
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/BarController;->applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    #@37
    move-result p3

    #@38
    .line 6640
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@3b
    move-result-object v24

    #@3c
    move-object/from16 v0, v24

    #@3e
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@40
    move/from16 v23, v0

    #@42
    .line 6641
    .local v23, "type":I
    const/16 v24, 0x7d0

    #@44
    move/from16 v0, v23

    #@46
    move/from16 v1, v24

    #@48
    if-ne v0, v1, :cond_b

    #@4a
    const/16 v19, 0x1

    #@4c
    .line 6642
    .local v19, "statusBarHasFocus":Z
    :goto_1
    if-eqz v19, :cond_1

    #@4e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    #@51
    move-result v24

    #@52
    if-eqz v24, :cond_c

    #@54
    .line 6654
    :cond_1
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    #@57
    move-result v24

    #@58
    if-nez v24, :cond_2

    #@5a
    move-object/from16 v0, p0

    #@5c
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@5e
    move-object/from16 v24, v0

    #@60
    move-object/from16 v0, v20

    #@62
    move-object/from16 v1, v24

    #@64
    if-eq v0, v1, :cond_2

    #@66
    .line 6655
    const v24, 0x3fff7fff

    #@69
    and-int p3, p3, v24

    #@6b
    .line 6661
    :cond_2
    move/from16 v0, p3

    #@6d
    and-int/lit16 v0, v0, 0x1000

    #@6f
    move/from16 v24, v0

    #@71
    if-eqz v24, :cond_e

    #@73
    const/4 v11, 0x1

    #@74
    .line 6663
    .local v11, "immersiveSticky":Z
    :goto_3
    move-object/from16 v0, p0

    #@76
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@78
    move-object/from16 v24, v0

    #@7a
    if-eqz v24, :cond_10

    #@7c
    .line 6664
    move-object/from16 v0, p0

    #@7e
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@80
    move-object/from16 v24, v0

    #@82
    const/16 v25, 0x0

    #@84
    invoke-static/range {v24 .. v25}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    #@87
    move-result v24

    #@88
    move/from16 v0, v24

    #@8a
    and-int/lit16 v0, v0, 0x400

    #@8c
    move/from16 v24, v0

    #@8e
    if-eqz v24, :cond_f

    #@90
    const/4 v9, 0x1

    #@91
    .line 6667
    .local v9, "hideStatusBarWM":Z
    :goto_4
    and-int/lit8 v24, p3, 0x4

    #@93
    if-eqz v24, :cond_11

    #@95
    const/4 v8, 0x1

    #@96
    .line 6669
    .local v8, "hideStatusBarSysui":Z
    :goto_5
    and-int/lit8 v24, p3, 0x2

    #@98
    if-eqz v24, :cond_12

    #@9a
    const/4 v7, 0x1

    #@9b
    .line 6672
    .local v7, "hideNavBarSysui":Z
    :goto_6
    move-object/from16 v0, p0

    #@9d
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@9f
    move-object/from16 v24, v0

    #@a1
    if-eqz v24, :cond_14

    #@a3
    .line 6673
    if-nez v9, :cond_13

    #@a5
    .line 6674
    if-eqz v8, :cond_3

    #@a7
    .line 6673
    if-nez v11, :cond_13

    #@a9
    .line 6675
    :cond_3
    move/from16 v22, v19

    #@ab
    .line 6678
    :goto_7
    move-object/from16 v0, p0

    #@ad
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@af
    move-object/from16 v24, v0

    #@b1
    if-eqz v24, :cond_15

    #@b3
    if-eqz v7, :cond_15

    #@b5
    .line 6679
    move/from16 v21, v11

    #@b7
    .line 6681
    :goto_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@ba
    move-result-wide v14

    #@bb
    .line 6682
    .local v14, "now":J
    move-object/from16 v0, p0

    #@bd
    iget-wide v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingPanicGestureUptime:J

    #@bf
    move-wide/from16 v24, v0

    #@c1
    const-wide/16 v26, 0x0

    #@c3
    cmp-long v24, v24, v26

    #@c5
    if-eqz v24, :cond_17

    #@c7
    .line 6683
    move-object/from16 v0, p0

    #@c9
    iget-wide v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingPanicGestureUptime:J

    #@cb
    move-wide/from16 v24, v0

    #@cd
    sub-long v24, v14, v24

    #@cf
    const-wide/16 v26, 0x7530

    #@d1
    cmp-long v24, v24, v26

    #@d3
    if-gtz v24, :cond_16

    #@d5
    const/16 v17, 0x1

    #@d7
    .line 6684
    .local v17, "pendingPanic":Z
    :goto_9
    if-eqz v17, :cond_4

    #@d9
    if-eqz v7, :cond_4

    #@db
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    #@de
    move-result v24

    #@df
    if-eqz v24, :cond_18

    #@e1
    .line 6692
    :cond_4
    :goto_a
    move-object/from16 v0, p0

    #@e3
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@e5
    move-object/from16 v24, v0

    #@e7
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/policy/StatusBarController;->isTransientShowRequested()Z

    #@ea
    move-result v24

    #@eb
    if-eqz v24, :cond_5

    #@ed
    .line 6693
    if-eqz v22, :cond_19

    #@ef
    .line 6692
    :cond_5
    const/4 v5, 0x0

    #@f0
    .line 6694
    :goto_b
    move-object/from16 v0, p0

    #@f2
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@f4
    move-object/from16 v24, v0

    #@f6
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/policy/BarController;->isTransientShowRequested()Z

    #@f9
    move-result v24

    #@fa
    if-eqz v24, :cond_1b

    #@fc
    .line 6695
    if-eqz v21, :cond_1a

    #@fe
    const/4 v4, 0x0

    #@ff
    .line 6696
    .local v4, "denyTransientNav":Z
    :goto_c
    if-nez v5, :cond_6

    #@101
    if-eqz v4, :cond_7

    #@103
    .line 6698
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->clearClearableFlagsLw()V

    #@106
    .line 6699
    and-int/lit8 p3, p3, -0x8

    #@108
    .line 6702
    :cond_7
    move/from16 v0, p3

    #@10a
    and-int/lit16 v0, v0, 0x800

    #@10c
    move/from16 v24, v0

    #@10e
    if-eqz v24, :cond_1c

    #@110
    const/4 v10, 0x1

    #@111
    .line 6703
    .local v10, "immersive":Z
    :goto_d
    move/from16 v0, p3

    #@113
    and-int/lit16 v0, v0, 0x1000

    #@115
    move/from16 v24, v0

    #@117
    if-eqz v24, :cond_1d

    #@119
    const/4 v11, 0x1

    #@11a
    .line 6704
    :goto_e
    if-nez v10, :cond_1e

    #@11c
    move v12, v11

    #@11d
    .line 6706
    :goto_f
    if-eqz v7, :cond_8

    #@11f
    if-eqz v12, :cond_1f

    #@121
    .line 6713
    :cond_8
    :goto_10
    move-object/from16 v0, p0

    #@123
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@125
    move-object/from16 v24, v0

    #@127
    move-object/from16 v0, v24

    #@129
    move/from16 v1, v22

    #@12b
    move/from16 v2, p2

    #@12d
    move/from16 v3, p3

    #@12f
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/StatusBarController;->updateVisibilityLw(ZII)I

    #@132
    move-result p3

    #@133
    .line 6716
    move-object/from16 v0, p0

    #@135
    move/from16 v1, p2

    #@137
    invoke-direct {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isImmersiveMode(I)Z

    #@13a
    move-result v16

    #@13b
    .line 6717
    .local v16, "oldImmersiveMode":Z
    move-object/from16 v0, p0

    #@13d
    move/from16 v1, p3

    #@13f
    invoke-direct {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isImmersiveMode(I)Z

    #@142
    move-result v13

    #@143
    .line 6718
    .local v13, "newImmersiveMode":Z
    if-eqz p1, :cond_9

    #@145
    move/from16 v0, v16

    #@147
    if-eq v0, v13, :cond_9

    #@149
    .line 6719
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    #@14c
    move-result-object v18

    #@14d
    .line 6720
    .local v18, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    #@14f
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    #@151
    move-object/from16 v24, v0

    #@153
    .line 6721
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    #@156
    move-result v25

    #@157
    .line 6720
    move-object/from16 v0, v24

    #@159
    move-object/from16 v1, v18

    #@15b
    move/from16 v2, v25

    #@15d
    invoke-virtual {v0, v1, v13, v2}, Lcom/android/server/policy/ImmersiveModeConfirmation;->immersiveModeChanged(Ljava/lang/String;ZZ)V

    #@160
    .line 6724
    .end local v18    # "pkg":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    #@162
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@164
    move-object/from16 v24, v0

    #@166
    move-object/from16 v0, v24

    #@168
    move/from16 v1, v21

    #@16a
    move/from16 v2, p2

    #@16c
    move/from16 v3, p3

    #@16e
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/BarController;->updateVisibilityLw(ZII)I

    #@171
    move-result p3

    #@172
    .line 6726
    return p3

    #@173
    .line 6634
    .end local v4    # "denyTransientNav":Z
    .end local v7    # "hideNavBarSysui":Z
    .end local v8    # "hideStatusBarSysui":Z
    .end local v9    # "hideStatusBarWM":Z
    .end local v10    # "immersive":Z
    .end local v11    # "immersiveSticky":Z
    .end local v13    # "newImmersiveMode":Z
    .end local v14    # "now":J
    .end local v16    # "oldImmersiveMode":Z
    .end local v17    # "pendingPanic":Z
    .end local v19    # "statusBarHasFocus":Z
    .end local v20    # "transWin":Landroid/view/WindowManagerPolicy$WindowState;
    .end local v23    # "type":I
    :cond_a
    move-object/from16 v0, p0

    #@175
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@177
    move-object/from16 v20, v0

    #@179
    .restart local v20    # "transWin":Landroid/view/WindowManagerPolicy$WindowState;
    goto/16 :goto_0

    #@17b
    .line 6641
    .restart local v23    # "type":I
    :cond_b
    const/16 v19, 0x0

    #@17d
    .restart local v19    # "statusBarHasFocus":Z
    goto/16 :goto_1

    #@17f
    .line 6643
    :cond_c
    const/16 v6, 0x3806

    #@181
    .line 6648
    .local v6, "flags":I
    move-object/from16 v0, p0

    #@183
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    #@185
    move/from16 v24, v0

    #@187
    if-eqz v24, :cond_d

    #@189
    .line 6649
    const v6, -0x3fffc7fa

    #@18c
    .line 6651
    :cond_d
    not-int v0, v6

    #@18d
    move/from16 v24, v0

    #@18f
    and-int v24, v24, p3

    #@191
    and-int v25, p2, v6

    #@193
    or-int p3, v24, v25

    #@195
    goto/16 :goto_2

    #@197
    .line 6661
    .end local v6    # "flags":I
    :cond_e
    const/4 v11, 0x0

    #@198
    .restart local v11    # "immersiveSticky":Z
    goto/16 :goto_3

    #@19a
    .line 6664
    :cond_f
    const/4 v9, 0x0

    #@19b
    .restart local v9    # "hideStatusBarWM":Z
    goto/16 :goto_4

    #@19d
    .line 6663
    .end local v9    # "hideStatusBarWM":Z
    :cond_10
    const/4 v9, 0x0

    #@19e
    .restart local v9    # "hideStatusBarWM":Z
    goto/16 :goto_4

    #@1a0
    .line 6667
    :cond_11
    const/4 v8, 0x0

    #@1a1
    .restart local v8    # "hideStatusBarSysui":Z
    goto/16 :goto_5

    #@1a3
    .line 6669
    :cond_12
    const/4 v7, 0x0

    #@1a4
    .restart local v7    # "hideNavBarSysui":Z
    goto/16 :goto_6

    #@1a6
    .line 6672
    :cond_13
    const/16 v22, 0x1

    #@1a8
    .local v22, "transientStatusBarAllowed":Z
    goto/16 :goto_7

    #@1aa
    .end local v22    # "transientStatusBarAllowed":Z
    :cond_14
    const/16 v22, 0x0

    #@1ac
    .restart local v22    # "transientStatusBarAllowed":Z
    goto/16 :goto_7

    #@1ae
    .line 6678
    .end local v22    # "transientStatusBarAllowed":Z
    :cond_15
    const/16 v21, 0x0

    #@1b0
    .local v21, "transientNavBarAllowed":Z
    goto/16 :goto_8

    #@1b2
    .line 6683
    .end local v21    # "transientNavBarAllowed":Z
    .restart local v14    # "now":J
    :cond_16
    const/16 v17, 0x0

    #@1b4
    .restart local v17    # "pendingPanic":Z
    goto/16 :goto_9

    #@1b6
    .line 6682
    .end local v17    # "pendingPanic":Z
    :cond_17
    const/16 v17, 0x0

    #@1b8
    .restart local v17    # "pendingPanic":Z
    goto/16 :goto_9

    #@1ba
    .line 6684
    :cond_18
    move-object/from16 v0, p0

    #@1bc
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    #@1be
    move/from16 v24, v0

    #@1c0
    if-eqz v24, :cond_4

    #@1c2
    .line 6687
    const-wide/16 v24, 0x0

    #@1c4
    move-wide/from16 v0, v24

    #@1c6
    move-object/from16 v2, p0

    #@1c8
    iput-wide v0, v2, Lcom/android/server/policy/PhoneWindowManager;->mPendingPanicGestureUptime:J

    #@1ca
    .line 6688
    move-object/from16 v0, p0

    #@1cc
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@1ce
    move-object/from16 v24, v0

    #@1d0
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/policy/StatusBarController;->showTransient()V

    #@1d3
    .line 6689
    move-object/from16 v0, p0

    #@1d5
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@1d7
    move-object/from16 v24, v0

    #@1d9
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/policy/BarController;->showTransient()V

    #@1dc
    goto/16 :goto_a

    #@1de
    .line 6693
    :cond_19
    move v5, v8

    #@1df
    .local v5, "denyTransientStatus":Z
    goto/16 :goto_b

    #@1e1
    .line 6695
    .end local v5    # "denyTransientStatus":Z
    :cond_1a
    const/4 v4, 0x1

    #@1e2
    .restart local v4    # "denyTransientNav":Z
    goto/16 :goto_c

    #@1e4
    .line 6694
    .end local v4    # "denyTransientNav":Z
    :cond_1b
    const/4 v4, 0x0

    #@1e5
    .restart local v4    # "denyTransientNav":Z
    goto/16 :goto_c

    #@1e7
    .line 6702
    :cond_1c
    const/4 v10, 0x0

    #@1e8
    .restart local v10    # "immersive":Z
    goto/16 :goto_d

    #@1ea
    .line 6703
    :cond_1d
    const/4 v11, 0x0

    #@1eb
    goto/16 :goto_e

    #@1ed
    .line 6704
    :cond_1e
    const/4 v12, 0x1

    #@1ee
    .local v12, "navAllowedHidden":Z
    goto/16 :goto_f

    #@1f0
    .line 6706
    .end local v12    # "navAllowedHidden":Z
    :cond_1f
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBaseType()I

    #@1f3
    move-result v24

    #@1f4
    move-object/from16 v0, p0

    #@1f6
    move/from16 v1, v24

    #@1f8
    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->windowTypeToLayerLw(I)I

    #@1fb
    move-result v24

    #@1fc
    .line 6707
    const/16 v25, 0x7e6

    #@1fe
    move-object/from16 v0, p0

    #@200
    move/from16 v1, v25

    #@202
    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->windowTypeToLayerLw(I)I

    #@205
    move-result v25

    #@206
    .line 6706
    move/from16 v0, v24

    #@208
    move/from16 v1, v25

    #@20a
    if-le v0, v1, :cond_8

    #@20c
    .line 6710
    and-int/lit8 p3, p3, -0x3

    #@20e
    goto/16 :goto_10
.end method

.method private updateSystemUiVisibilityLw()I
    .locals 8

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 6561
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    #@4
    if-eqz v5, :cond_0

    #@6
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    #@8
    .line 6563
    .local v4, "win":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_0
    if-nez v4, :cond_1

    #@a
    .line 6564
    return v7

    #@b
    .line 6562
    .end local v4    # "win":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_0
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@d
    .restart local v4    # "win":Landroid/view/WindowManagerPolicy$WindowState;
    goto :goto_0

    #@e
    .line 6566
    :cond_1
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@11
    move-result-object v5

    #@12
    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@14
    and-int/lit16 v5, v5, 0x400

    #@16
    if-eqz v5, :cond_2

    #@18
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    #@1a
    if-eqz v5, :cond_2

    #@1c
    .line 6573
    return v7

    #@1d
    .line 6576
    :cond_2
    invoke-static {v4, v6}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    #@20
    move-result v5

    #@21
    .line 6577
    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    #@23
    not-int v6, v6

    #@24
    .line 6576
    and-int/2addr v5, v6

    #@25
    .line 6578
    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    #@27
    not-int v6, v6

    #@28
    .line 6576
    and-int v2, v5, v6

    #@2a
    .line 6579
    .local v2, "tmpVisibility":I
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    #@2c
    if-eqz v5, :cond_3

    #@2e
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    #@31
    move-result v5

    #@32
    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBarLayer:I

    #@34
    if-ge v5, v6, :cond_3

    #@36
    .line 6580
    const/4 v5, 0x7

    #@37
    invoke-static {v4, v5}, Lcom/android/server/policy/PolicyControl;->adjustClearableFlags(Landroid/view/WindowManagerPolicy$WindowState;I)I

    #@3a
    move-result v5

    #@3b
    not-int v5, v5

    #@3c
    and-int/2addr v2, v5

    #@3d
    .line 6582
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/server/policy/PhoneWindowManager;->updateLightStatusBarLw(I)I

    #@40
    move-result v2

    #@41
    .line 6583
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    #@43
    invoke-direct {p0, v4, v5, v2}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemBarsLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    #@46
    move-result v3

    #@47
    .line 6584
    .local v3, "visibility":I
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    #@49
    xor-int v0, v3, v5

    #@4b
    .line 6585
    .local v0, "diff":I
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@4d
    invoke-interface {v4, v5}, Landroid/view/WindowManagerPolicy$WindowState;->getNeedsMenuLw(Landroid/view/WindowManagerPolicy$WindowState;)Z

    #@50
    move-result v1

    #@51
    .line 6586
    .local v1, "needsMenu":Z
    if-nez v0, :cond_4

    #@53
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    #@55
    if-ne v5, v1, :cond_4

    #@57
    .line 6587
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    #@59
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    #@5c
    move-result-object v6

    #@5d
    if-ne v5, v6, :cond_4

    #@5f
    .line 6588
    return v7

    #@60
    .line 6590
    :cond_4
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    #@62
    .line 6591
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    #@64
    .line 6592
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    #@67
    move-result-object v5

    #@68
    iput-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    #@6a
    .line 6593
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@6c
    new-instance v6, Lcom/android/server/policy/PhoneWindowManager$23;

    #@6e
    invoke-direct {v6, p0, v3, v4, v1}, Lcom/android/server/policy/PhoneWindowManager$23;-><init>(Lcom/android/server/policy/PhoneWindowManager;ILandroid/view/WindowManagerPolicy$WindowState;Z)V

    #@71
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@74
    .line 6608
    return v0
.end method

.method private updateWakeGestureListenerLp()V
    .locals 1

    #@0
    .prologue
    .line 1764
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldEnableWakeGestureLp()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1765
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    #@8
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->requestWakeUpTrigger()V

    #@b
    .line 1763
    :goto_0
    return-void

    #@c
    .line 1767
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    #@e
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->cancelWakeUpTrigger()V

    #@11
    goto :goto_0
.end method

.method private wakeUp(JZLjava/lang/String;)Z
    .locals 5
    .param p1, "wakeTime"    # J
    .param p3, "wakeInTheaterMode"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 5518
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTheaterModeEnabled()Z

    #@4
    move-result v0

    #@5
    .line 5519
    .local v0, "theaterModeEnabled":Z
    if-nez p3, :cond_0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 5520
    return v3

    #@a
    .line 5523
    :cond_0
    if-eqz v0, :cond_1

    #@c
    .line 5524
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@e
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@11
    move-result-object v1

    #@12
    .line 5525
    const-string/jumbo v2, "theater_mode_on"

    #@15
    .line 5524
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@18
    .line 5528
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@1a
    invoke-virtual {v1, p1, p2, p4}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    #@1d
    .line 5529
    const/4 v1, 0x1

    #@1e
    return v1
.end method

.method private wakeUpFromPowerKey(J)V
    .locals 3
    .param p1, "eventTime"    # J

    #@0
    .prologue
    .line 5514
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromPowerKey:Z

    #@2
    const-string/jumbo v1, "android.policy:POWER"

    #@5
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    #@8
    .line 5513
    return-void
.end method


# virtual methods
.method public addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIII)Landroid/view/View;
    .locals 15
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "theme"    # I
    .param p4, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p5, "nonLocalizedLabel"    # Ljava/lang/CharSequence;
    .param p6, "labelRes"    # I
    .param p7, "icon"    # I
    .param p8, "logo"    # I
    .param p9, "windowFlags"    # I

    #@0
    .prologue
    .line 2243
    if-nez p2, :cond_0

    #@2
    .line 2244
    const/4 v12, 0x0

    #@3
    return-object v12

    #@4
    .line 2247
    :cond_0
    const/4 v11, 0x0

    #@5
    .line 2248
    .local v11, "wm":Landroid/view/WindowManager;
    const/4 v9, 0x0

    #@6
    .line 2251
    .local v9, "view":Landroid/view/View;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@8
    .line 2255
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getThemeResId()I
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@b
    move-result v12

    #@c
    move/from16 v0, p3

    #@e
    if-ne v0, v12, :cond_1

    #@10
    if-eqz p6, :cond_2

    #@12
    .line 2257
    :cond_1
    const/4 v12, 0x0

    #@13
    :try_start_1
    move-object/from16 v0, p2

    #@15
    invoke-virtual {v2, v0, v12}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    #@18
    move-result-object v2

    #@19
    .line 2258
    move/from16 v0, p3

    #@1b
    invoke-virtual {v2, v0}, Landroid/content/Context;->setTheme(I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1e
    .line 2264
    :cond_2
    :goto_0
    :try_start_2
    new-instance v10, Lcom/android/internal/policy/PhoneWindow;

    #@20
    invoke-direct {v10, v2}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    #@23
    .line 2265
    .local v10, "win":Lcom/android/internal/policy/PhoneWindow;
    const/4 v12, 0x1

    #@24
    invoke-virtual {v10, v12}, Lcom/android/internal/policy/PhoneWindow;->setIsStartingWindow(Z)V

    #@27
    .line 2266
    invoke-virtual {v10}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    #@2a
    move-result-object v8

    #@2b
    .line 2268
    .local v8, "ta":Landroid/content/res/TypedArray;
    const/16 v12, 0xc

    #@2d
    const/4 v13, 0x0

    #@2e
    .line 2267
    invoke-virtual {v8, v12, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@31
    move-result v12

    #@32
    if-nez v12, :cond_3

    #@34
    .line 2270
    const/16 v12, 0xe

    #@36
    const/4 v13, 0x0

    #@37
    .line 2269
    invoke-virtual {v8, v12, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@3a
    move-result v12

    #@3b
    .line 2267
    if-eqz v12, :cond_4

    #@3d
    .line 2271
    :cond_3
    const/4 v12, 0x0

    #@3e
    return-object v12

    #@3f
    .line 2274
    :cond_4
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@42
    move-result-object v7

    #@43
    .line 2275
    .local v7, "r":Landroid/content/res/Resources;
    move/from16 v0, p6

    #@45
    move-object/from16 v1, p5

    #@47
    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@4a
    move-result-object v12

    #@4b
    invoke-virtual {v10, v12}, Lcom/android/internal/policy/PhoneWindow;->setTitle(Ljava/lang/CharSequence;)V

    #@4e
    .line 2278
    const/4 v12, 0x3

    #@4f
    .line 2277
    invoke-virtual {v10, v12}, Lcom/android/internal/policy/PhoneWindow;->setType(I)V

    #@52
    .line 2280
    iget-object v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@54
    invoke-interface {v12}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    #@57
    move-result-object v12

    #@58
    monitor-enter v12
    :try_end_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@59
    .line 2284
    :try_start_3
    iget-boolean v13, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@5b
    if-eqz v13, :cond_5

    #@5d
    .line 2285
    const/high16 v13, 0x80000

    #@5f
    or-int p9, p9, v13

    #@61
    :cond_5
    :try_start_4
    monitor-exit v12

    #@62
    .line 2294
    or-int/lit8 v12, p9, 0x10

    #@64
    or-int/lit8 v12, v12, 0x8

    #@66
    .line 2297
    const/high16 v13, 0x20000

    #@68
    .line 2294
    or-int/2addr v12, v13

    #@69
    .line 2298
    or-int/lit8 v13, p9, 0x10

    #@6b
    or-int/lit8 v13, v13, 0x8

    #@6d
    .line 2301
    const/high16 v14, 0x20000

    #@6f
    .line 2298
    or-int/2addr v13, v14

    #@70
    .line 2293
    invoke-virtual {v10, v12, v13}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    #@73
    .line 2303
    move/from16 v0, p7

    #@75
    invoke-virtual {v10, v0}, Lcom/android/internal/policy/PhoneWindow;->setDefaultIcon(I)V

    #@78
    .line 2304
    move/from16 v0, p8

    #@7a
    invoke-virtual {v10, v0}, Lcom/android/internal/policy/PhoneWindow;->setDefaultLogo(I)V

    #@7d
    .line 2306
    const/4 v12, -0x1

    #@7e
    .line 2307
    const/4 v13, -0x1

    #@7f
    .line 2306
    invoke-virtual {v10, v12, v13}, Lcom/android/internal/policy/PhoneWindow;->setLayout(II)V

    #@82
    .line 2309
    invoke-virtual {v10}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@85
    move-result-object v6

    #@86
    .line 2310
    .local v6, "params":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p1

    #@88
    iput-object v0, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@8a
    .line 2311
    move-object/from16 v0, p2

    #@8c
    iput-object v0, v6, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@8e
    .line 2312
    invoke-virtual {v10}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    #@91
    move-result-object v12

    #@92
    .line 2313
    const/16 v13, 0x8

    #@94
    const/4 v14, 0x0

    #@95
    .line 2312
    invoke-virtual {v12, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@98
    move-result v12

    #@99
    iput v12, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@9b
    .line 2314
    iget v12, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@9d
    or-int/lit8 v12, v12, 0x1

    #@9f
    iput v12, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@a1
    .line 2316
    iget v12, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@a3
    or-int/lit8 v12, v12, 0x10

    #@a5
    iput v12, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@a7
    .line 2318
    invoke-virtual/range {p4 .. p4}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    #@aa
    move-result v12

    #@ab
    if-nez v12, :cond_6

    #@ad
    .line 2319
    iget v12, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@af
    or-int/lit16 v12, v12, 0x80

    #@b1
    iput v12, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@b3
    .line 2322
    :cond_6
    new-instance v12, Ljava/lang/StringBuilder;

    #@b5
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@b8
    const-string/jumbo v13, "Starting "

    #@bb
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v12

    #@bf
    move-object/from16 v0, p2

    #@c1
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v12

    #@c5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c8
    move-result-object v12

    #@c9
    invoke-virtual {v6, v12}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    #@cc
    .line 2324
    const-string/jumbo v12, "window"

    #@cf
    invoke-virtual {v2, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@d2
    move-result-object v12

    #@d3
    move-object v0, v12

    #@d4
    check-cast v0, Landroid/view/WindowManager;

    #@d6
    move-object v11, v0

    #@d7
    .line 2325
    .local v11, "wm":Landroid/view/WindowManager;
    invoke-virtual {v10}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    #@da
    move-result-object v9

    #@db
    .line 2327
    .local v9, "view":Landroid/view/View;
    invoke-virtual {v10}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z
    :try_end_4
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@de
    move-result v12

    #@df
    if-eqz v12, :cond_9

    #@e1
    .line 2334
    const/4 v12, 0x0

    #@e2
    .line 2357
    if-eqz v9, :cond_7

    #@e4
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@e7
    move-result-object v13

    #@e8
    if-nez v13, :cond_7

    #@ea
    .line 2358
    const-string/jumbo v13, "WindowManager"

    #@ed
    const-string/jumbo v14, "view not successfully added to wm, removing view"

    #@f0
    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f3
    .line 2359
    invoke-interface {v11, v9}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    #@f6
    .line 2334
    :cond_7
    return-object v12

    #@f7
    .line 2280
    .end local v6    # "params":Landroid/view/WindowManager$LayoutParams;
    .local v9, "view":Landroid/view/View;
    .local v11, "wm":Landroid/view/WindowManager;
    :catchall_0
    move-exception v13

    #@f8
    :try_start_5
    monitor-exit v12

    #@f9
    throw v13
    :try_end_5
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@fa
    .line 2347
    .end local v2    # "context":Landroid/content/Context;
    .end local v7    # "r":Landroid/content/res/Resources;
    .end local v8    # "ta":Landroid/content/res/TypedArray;
    .end local v9    # "view":Landroid/view/View;
    .end local v10    # "win":Lcom/android/internal/policy/PhoneWindow;
    .end local v11    # "wm":Landroid/view/WindowManager;
    :catch_0
    move-exception v4

    #@fb
    .line 2349
    .local v4, "e":Landroid/view/WindowManager$BadTokenException;
    :try_start_6
    const-string/jumbo v12, "WindowManager"

    #@fe
    new-instance v13, Ljava/lang/StringBuilder;

    #@100
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@103
    move-object/from16 v0, p1

    #@105
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@108
    move-result-object v13

    #@109
    const-string/jumbo v14, " already running, starting window not displayed. "

    #@10c
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v13

    #@110
    .line 2350
    invoke-virtual {v4}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    #@113
    move-result-object v14

    #@114
    .line 2349
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    move-result-object v13

    #@118
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11b
    move-result-object v13

    #@11c
    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@11f
    .line 2357
    if-eqz v9, :cond_8

    #@121
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@124
    move-result-object v12

    #@125
    if-nez v12, :cond_8

    #@127
    .line 2358
    const-string/jumbo v12, "WindowManager"

    #@12a
    const-string/jumbo v13, "view not successfully added to wm, removing view"

    #@12d
    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@130
    .line 2359
    invoke-interface {v11, v9}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    #@133
    .line 2363
    .end local v4    # "e":Landroid/view/WindowManager$BadTokenException;
    :cond_8
    :goto_1
    const/4 v12, 0x0

    #@134
    return-object v12

    #@135
    .line 2342
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v6    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v7    # "r":Landroid/content/res/Resources;
    .restart local v8    # "ta":Landroid/content/res/TypedArray;
    .local v9, "view":Landroid/view/View;
    .restart local v10    # "win":Lcom/android/internal/policy/PhoneWindow;
    .local v11, "wm":Landroid/view/WindowManager;
    :cond_9
    :try_start_7
    invoke-interface {v11, v9, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@138
    .line 2346
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    :try_end_7
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@13b
    move-result-object v12

    #@13c
    if-eqz v12, :cond_b

    #@13e
    move-object v12, v9

    #@13f
    .line 2357
    :goto_2
    if-eqz v9, :cond_a

    #@141
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@144
    move-result-object v13

    #@145
    if-nez v13, :cond_a

    #@147
    .line 2358
    const-string/jumbo v13, "WindowManager"

    #@14a
    const-string/jumbo v14, "view not successfully added to wm, removing view"

    #@14d
    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@150
    .line 2359
    invoke-interface {v11, v9}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    #@153
    .line 2346
    :cond_a
    return-object v12

    #@154
    :cond_b
    const/4 v12, 0x0

    #@155
    goto :goto_2

    #@156
    .line 2351
    .end local v2    # "context":Landroid/content/Context;
    .end local v6    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v7    # "r":Landroid/content/res/Resources;
    .end local v8    # "ta":Landroid/content/res/TypedArray;
    .end local v9    # "view":Landroid/view/View;
    .end local v10    # "win":Lcom/android/internal/policy/PhoneWindow;
    .end local v11    # "wm":Landroid/view/WindowManager;
    :catch_1
    move-exception v5

    #@157
    .line 2355
    .local v5, "e":Ljava/lang/RuntimeException;
    :try_start_8
    const-string/jumbo v12, "WindowManager"

    #@15a
    new-instance v13, Ljava/lang/StringBuilder;

    #@15c
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@15f
    move-object/from16 v0, p1

    #@161
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@164
    move-result-object v13

    #@165
    const-string/jumbo v14, " failed creating starting window"

    #@168
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16b
    move-result-object v13

    #@16c
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16f
    move-result-object v13

    #@170
    invoke-static {v12, v13, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@173
    .line 2357
    if-eqz v9, :cond_8

    #@175
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@178
    move-result-object v12

    #@179
    if-nez v12, :cond_8

    #@17b
    .line 2358
    const-string/jumbo v12, "WindowManager"

    #@17e
    const-string/jumbo v13, "view not successfully added to wm, removing view"

    #@181
    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@184
    .line 2359
    invoke-interface {v11, v9}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    #@187
    goto :goto_1

    #@188
    .line 2356
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v12

    #@189
    .line 2357
    if-eqz v9, :cond_c

    #@18b
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@18e
    move-result-object v13

    #@18f
    if-nez v13, :cond_c

    #@191
    .line 2358
    const-string/jumbo v13, "WindowManager"

    #@194
    const-string/jumbo v14, "view not successfully added to wm, removing view"

    #@197
    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@19a
    .line 2359
    invoke-interface {v11, v9}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    #@19d
    .line 2356
    :cond_c
    throw v12

    #@19e
    .line 2259
    .restart local v2    # "context":Landroid/content/Context;
    .local v9, "view":Landroid/view/View;
    .local v11, "wm":Landroid/view/WindowManager;
    :catch_2
    move-exception v3

    #@19f
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_0
.end method

.method public adjustConfigurationLw(Landroid/content/res/Configuration;II)V
    .locals 4
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "keyboardPresence"    # I
    .param p3, "navigationPresence"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v3, 0x2

    #@2
    const/4 v1, 0x1

    #@3
    .line 2021
    and-int/lit8 v2, p2, 0x1

    #@5
    if-eqz v2, :cond_0

    #@7
    move v0, v1

    #@8
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHaveBuiltInKeyboard:Z

    #@a
    .line 2023
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->readConfigurationDependentBehaviors()V

    #@d
    .line 2024
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->readLidState()V

    #@10
    .line 2025
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->applyLidSwitchState()V

    #@13
    .line 2027
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    #@15
    if-eq v0, v1, :cond_1

    #@17
    .line 2028
    if-ne p2, v1, :cond_2

    #@19
    .line 2029
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    #@1b
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isHidden(I)Z

    #@1e
    move-result v0

    #@1f
    .line 2027
    if-eqz v0, :cond_2

    #@21
    .line 2030
    :cond_1
    iput v3, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@23
    .line 2031
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    #@25
    if-nez v0, :cond_2

    #@27
    .line 2032
    iput v3, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    #@29
    .line 2036
    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    #@2b
    if-eq v0, v1, :cond_3

    #@2d
    .line 2037
    if-ne p3, v1, :cond_4

    #@2f
    .line 2038
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    #@31
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isHidden(I)Z

    #@34
    move-result v0

    #@35
    .line 2036
    if-eqz v0, :cond_4

    #@37
    .line 2039
    :cond_3
    iput v3, p1, Landroid/content/res/Configuration;->navigationHidden:I

    #@39
    .line 2020
    :cond_4
    return-void
.end method

.method public adjustSystemUiVisibilityLw(I)I
    .locals 3
    .param p1, "visibility"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3376
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@3
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    #@5
    invoke-virtual {v1, v2, p1}, Lcom/android/server/policy/StatusBarController;->adjustSystemUiVisibilityLw(II)V

    #@8
    .line 3377
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@a
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    #@c
    invoke-virtual {v1, v2, p1}, Lcom/android/server/policy/BarController;->adjustSystemUiVisibilityLw(II)V

    #@f
    .line 3378
    and-int/lit16 v1, p1, 0x4000

    #@11
    if-lez v1, :cond_0

    #@13
    const/4 v0, 0x1

    #@14
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRecentsVisible:Z

    #@16
    .line 3382
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    #@18
    and-int/2addr v0, p1

    #@19
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    #@1b
    .line 3385
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    #@1d
    not-int v0, v0

    #@1e
    and-int/2addr v0, p1

    #@1f
    .line 3386
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    #@21
    not-int v1, v1

    #@22
    .line 3385
    and-int/2addr v0, v1

    #@23
    return v0
.end method

.method public adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    #@0
    .prologue
    .line 1965
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@2
    sparse-switch v0, :sswitch_data_0

    #@5
    .line 1986
    :cond_0
    :goto_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@7
    const/16 v1, 0x7d0

    #@9
    if-eq v0, v1, :cond_1

    #@b
    .line 1988
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@d
    and-int/lit16 v0, v0, -0x401

    #@f
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@11
    .line 1991
    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_2

    #@17
    .line 1992
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@19
    const/high16 v1, -0x80000000

    #@1b
    and-int/2addr v0, v1

    #@1c
    if-eqz v0, :cond_2

    #@1e
    .line 1993
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    #@20
    or-int/lit16 v0, v0, 0x600

    #@22
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    #@24
    .line 1964
    :cond_2
    return-void

    #@25
    .line 1969
    :sswitch_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@27
    or-int/lit8 v0, v0, 0x18

    #@29
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@2b
    .line 1971
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@2d
    const v1, -0x40001

    #@30
    and-int/2addr v0, v1

    #@31
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@33
    goto :goto_0

    #@34
    .line 1979
    :sswitch_1
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z

    #@36
    if-eqz v0, :cond_0

    #@38
    .line 1980
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@3a
    const v1, -0x100001

    #@3d
    and-int/2addr v0, v1

    #@3e
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@40
    .line 1981
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@42
    and-int/lit16 v0, v0, -0x401

    #@44
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@46
    goto :goto_0

    #@47
    .line 1965
    nop

    #@48
    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_1
        0x7d6 -> :sswitch_0
        0x7df -> :sswitch_0
    .end sparse-switch
.end method

.method public allowAppAnimationsLw()Z
    .locals 1

    #@0
    .prologue
    .line 4684
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 4686
    :cond_0
    const/4 v0, 0x0

    #@b
    return v0

    #@c
    .line 4688
    :cond_1
    const/4 v0, 0x1

    #@d
    return v0
.end method

.method public applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 11
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "attached"    # Landroid/view/WindowManagerPolicy$WindowState;

    #@0
    .prologue
    const/16 v10, 0x7d0

    #@2
    const/4 v9, -0x1

    #@3
    const/4 v6, 0x1

    #@4
    const/4 v7, 0x0

    #@5
    .line 4358
    invoke-static {p1, p2}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    #@8
    move-result v3

    #@9
    .line 4359
    .local v3, "fl":I
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@b
    if-nez v5, :cond_0

    #@d
    .line 4360
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    #@10
    move-result v5

    #@11
    .line 4359
    if-eqz v5, :cond_0

    #@13
    .line 4360
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    #@15
    const/16 v8, 0x7db

    #@17
    if-ne v5, v8, :cond_0

    #@19
    .line 4361
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    #@1b
    .line 4362
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    #@1e
    move-result v5

    #@1f
    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBarLayer:I

    #@21
    .line 4364
    :cond_0
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    #@23
    if-ne v5, v10, :cond_2

    #@25
    .line 4365
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@27
    and-int/lit16 v5, v5, 0x400

    #@29
    if-eqz v5, :cond_1

    #@2b
    .line 4366
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    #@2d
    .line 4368
    :cond_1
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@2f
    and-int/lit16 v5, v5, 0x1000

    #@31
    if-eqz v5, :cond_2

    #@33
    .line 4369
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarTransparent:Z

    #@35
    .line 4373
    :cond_2
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    #@37
    if-lt v5, v6, :cond_7

    #@39
    .line 4374
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    #@3b
    if-ge v5, v10, :cond_6

    #@3d
    const/4 v1, 0x1

    #@3e
    .line 4375
    .local v1, "appWindow":Z
    :goto_0
    const/high16 v5, 0x80000

    #@40
    and-int/2addr v5, v3

    #@41
    if-eqz v5, :cond_8

    #@43
    const/4 v4, 0x1

    #@44
    .line 4376
    .local v4, "showWhenLocked":Z
    :goto_1
    const/high16 v5, 0x400000

    #@46
    and-int/2addr v5, v3

    #@47
    if-eqz v5, :cond_9

    #@49
    const/4 v2, 0x1

    #@4a
    .line 4378
    .local v2, "dismissKeyguard":Z
    :goto_2
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@4c
    if-nez v5, :cond_3

    #@4e
    .line 4379
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    #@51
    move-result v5

    #@52
    .line 4378
    if-eqz v5, :cond_3

    #@54
    .line 4379
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isGoneForLayoutLw()Z

    #@57
    move-result v5

    #@58
    if-eqz v5, :cond_a

    #@5a
    .line 4464
    :cond_3
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@5c
    if-nez v5, :cond_4

    #@5e
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    #@60
    if-nez v5, :cond_4

    #@62
    .line 4469
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    #@65
    move-result v5

    #@66
    if-eqz v5, :cond_4

    #@68
    if-eqz v1, :cond_4

    #@6a
    if-eqz v4, :cond_4

    #@6c
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z

    #@6e
    if-eqz v5, :cond_4

    #@70
    .line 4470
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    #@72
    .line 4471
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    #@74
    .line 4474
    :cond_4
    :goto_3
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@76
    if-nez v5, :cond_5

    #@78
    .line 4475
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    #@7b
    move-result v5

    #@7c
    .line 4474
    if-eqz v5, :cond_5

    #@7e
    .line 4475
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isGoneForLayoutLw()Z

    #@81
    move-result v5

    #@82
    if-eqz v5, :cond_1c

    #@84
    .line 4355
    :cond_5
    :goto_4
    return-void

    #@85
    .line 4374
    .end local v1    # "appWindow":Z
    .end local v2    # "dismissKeyguard":Z
    .end local v4    # "showWhenLocked":Z
    :cond_6
    const/4 v1, 0x0

    #@86
    .restart local v1    # "appWindow":Z
    goto :goto_0

    #@87
    .line 4373
    .end local v1    # "appWindow":Z
    :cond_7
    const/4 v1, 0x0

    #@88
    .restart local v1    # "appWindow":Z
    goto :goto_0

    #@89
    .line 4375
    :cond_8
    const/4 v4, 0x0

    #@8a
    .restart local v4    # "showWhenLocked":Z
    goto :goto_1

    #@8b
    .line 4376
    :cond_9
    const/4 v2, 0x0

    #@8c
    .restart local v2    # "dismissKeyguard":Z
    goto :goto_2

    #@8d
    .line 4380
    :cond_a
    and-int/lit16 v5, v3, 0x800

    #@8f
    if-eqz v5, :cond_b

    #@91
    .line 4381
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@93
    and-int/lit16 v5, v5, 0x400

    #@95
    if-eqz v5, :cond_14

    #@97
    .line 4382
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    #@99
    .line 4387
    :cond_b
    :goto_5
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@9b
    and-int/lit16 v5, v5, 0x400

    #@9d
    if-eqz v5, :cond_c

    #@9f
    .line 4388
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingLockscreen:Z

    #@a1
    .line 4390
    :cond_c
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    #@a3
    const/16 v8, 0x7e7

    #@a5
    if-ne v5, v8, :cond_e

    #@a7
    .line 4393
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingLockscreen:Z

    #@a9
    if-eqz v5, :cond_d

    #@ab
    .line 4394
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    #@ae
    move-result v5

    #@af
    if-eqz v5, :cond_e

    #@b1
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasDrawnLw()Z

    #@b4
    move-result v5

    #@b5
    .line 4393
    if-eqz v5, :cond_e

    #@b7
    .line 4395
    :cond_d
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    #@b9
    .line 4396
    const/4 v1, 0x1

    #@ba
    .line 4400
    :cond_e
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    #@bd
    move-result-object v0

    #@be
    .line 4405
    .local v0, "appToken":Landroid/view/IApplicationToken;
    if-eqz v1, :cond_4

    #@c0
    if-nez p3, :cond_4

    #@c2
    .line 4406
    if-eqz v4, :cond_16

    #@c4
    .line 4408
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    #@c6
    invoke-virtual {v5, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@c9
    .line 4409
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsThatDismissKeyguard:Ljava/util/HashSet;

    #@cb
    invoke-virtual {v5, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@ce
    .line 4410
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    #@d0
    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    #@d3
    move-result v5

    #@d4
    if-eqz v5, :cond_10

    #@d6
    .line 4411
    if-eqz v2, :cond_f

    #@d8
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    #@da
    if-eqz v5, :cond_15

    #@dc
    .line 4414
    :cond_f
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    #@de
    .line 4415
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    #@e0
    .line 4416
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    #@e2
    .line 4429
    :cond_10
    :goto_6
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    #@e4
    if-nez v5, :cond_13

    #@e6
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    #@e8
    if-nez v5, :cond_13

    #@ea
    .line 4430
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    #@ec
    if-ne v5, v9, :cond_13

    #@ee
    .line 4431
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    #@f0
    if-ne v5, v9, :cond_13

    #@f2
    .line 4433
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@f4
    .line 4434
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@f6
    if-nez v5, :cond_11

    #@f8
    .line 4435
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@fa
    .line 4437
    :cond_11
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsThatDismissKeyguard:Ljava/util/HashSet;

    #@fc
    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    #@ff
    move-result v5

    #@100
    if-nez v5, :cond_1b

    #@102
    .line 4438
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    #@104
    if-nez v5, :cond_1b

    #@106
    .line 4441
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    #@108
    if-ne v5, p1, :cond_19

    #@10a
    .line 4442
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mSecureDismissingKeyguard:Z

    #@10c
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    #@10e
    if-ne v5, v8, :cond_19

    #@110
    .line 4443
    const/4 v5, 0x2

    #@111
    .line 4441
    :goto_7
    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    #@113
    .line 4444
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    #@115
    .line 4445
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    #@117
    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mSecureDismissingKeyguard:Z

    #@119
    .line 4446
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingLockscreen:Z

    #@11b
    if-eqz v5, :cond_1a

    #@11d
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    #@11f
    :goto_8
    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    #@121
    .line 4453
    :cond_12
    :goto_9
    and-int/lit8 v5, v3, 0x1

    #@123
    if-eqz v5, :cond_13

    #@125
    .line 4454
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    #@127
    .line 4458
    :cond_13
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    #@129
    if-eqz v5, :cond_4

    #@12b
    .line 4459
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    #@12d
    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    #@130
    move-result-object v5

    #@131
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    #@134
    move-result-object v6

    #@135
    if-eq v5, v6, :cond_4

    #@137
    .line 4460
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@139
    const/high16 v6, 0x80000

    #@13b
    and-int/2addr v5, v6

    #@13c
    if-nez v5, :cond_4

    #@13e
    .line 4461
    invoke-interface {p1, v7}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    #@141
    goto/16 :goto_3

    #@143
    .line 4384
    .end local v0    # "appToken":Landroid/view/IApplicationToken;
    :cond_14
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    #@145
    goto/16 :goto_5

    #@147
    .line 4412
    .restart local v0    # "appToken":Landroid/view/IApplicationToken;
    :cond_15
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsThatDismissKeyguard:Ljava/util/HashSet;

    #@149
    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@14c
    goto :goto_6

    #@14d
    .line 4419
    :cond_16
    if-eqz v2, :cond_18

    #@14f
    .line 4420
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    #@151
    if-eqz v5, :cond_17

    #@153
    .line 4421
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    #@155
    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@158
    .line 4425
    :goto_a
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsThatDismissKeyguard:Ljava/util/HashSet;

    #@15a
    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@15d
    goto :goto_6

    #@15e
    .line 4423
    :cond_17
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    #@160
    invoke-virtual {v5, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@163
    goto :goto_a

    #@164
    .line 4427
    :cond_18
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    #@166
    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@169
    goto/16 :goto_6

    #@16b
    :cond_19
    move v5, v6

    #@16c
    .line 4443
    goto :goto_7

    #@16d
    :cond_1a
    move v5, v7

    #@16e
    .line 4446
    goto :goto_8

    #@16f
    .line 4447
    :cond_1b
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    #@171
    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    #@174
    move-result v5

    #@175
    if-eqz v5, :cond_12

    #@177
    if-eqz v4, :cond_12

    #@179
    .line 4450
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    #@17b
    .line 4451
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    #@17d
    goto :goto_9

    #@17e
    .line 4476
    .end local v0    # "appToken":Landroid/view/IApplicationToken;
    :cond_1c
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDimming()Z

    #@181
    move-result v5

    #@182
    .line 4474
    if-eqz v5, :cond_5

    #@184
    .line 4477
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@186
    goto/16 :goto_4
.end method

.method public beginLayoutLw(ZIII)V
    .locals 33
    .param p1, "isDefaultDisplay"    # Z
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I
    .param p4, "displayRotation"    # I

    #@0
    .prologue
    .line 3460
    move/from16 v0, p4

    #@2
    move-object/from16 v1, p0

    #@4
    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDisplayRotation:I

    #@6
    .line 3462
    if-eqz p1, :cond_c

    #@8
    .line 3463
    packed-switch p4, :pswitch_data_0

    #@b
    .line 3483
    move-object/from16 v0, p0

    #@d
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    #@f
    move/from16 v22, v0

    #@11
    .line 3484
    .local v22, "overscanLeft":I
    move-object/from16 v0, p0

    #@13
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    #@15
    move/from16 v24, v0

    #@17
    .line 3485
    .local v24, "overscanTop":I
    move-object/from16 v0, p0

    #@19
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    #@1b
    move/from16 v23, v0

    #@1d
    .line 3486
    .local v23, "overscanRight":I
    move-object/from16 v0, p0

    #@1f
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    #@21
    move/from16 v21, v0

    #@23
    .line 3495
    .local v21, "overscanBottom":I
    :goto_0
    const/4 v2, 0x0

    #@24
    move-object/from16 v0, p0

    #@26
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    #@28
    const/4 v2, 0x0

    #@29
    move-object/from16 v0, p0

    #@2b
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    #@2d
    .line 3496
    const/4 v2, 0x0

    #@2e
    move-object/from16 v0, p0

    #@30
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    #@32
    const/4 v2, 0x0

    #@33
    move-object/from16 v0, p0

    #@35
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    #@37
    .line 3497
    move/from16 v0, p2

    #@39
    move-object/from16 v1, p0

    #@3b
    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    #@3d
    move/from16 v0, p2

    #@3f
    move-object/from16 v1, p0

    #@41
    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    #@43
    .line 3498
    move/from16 v0, p3

    #@45
    move-object/from16 v1, p0

    #@47
    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    #@49
    move/from16 v0, p3

    #@4b
    move-object/from16 v1, p0

    #@4d
    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    #@4f
    .line 3499
    const/4 v2, 0x0

    #@50
    move-object/from16 v0, p0

    #@52
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemLeft:I

    #@54
    .line 3500
    const/4 v2, 0x0

    #@55
    move-object/from16 v0, p0

    #@57
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemTop:I

    #@59
    .line 3501
    move/from16 v0, p2

    #@5b
    move-object/from16 v1, p0

    #@5d
    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemRight:I

    #@5f
    .line 3502
    move/from16 v0, p3

    #@61
    move-object/from16 v1, p0

    #@63
    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemBottom:I

    #@65
    .line 3503
    move/from16 v0, v22

    #@67
    move-object/from16 v1, p0

    #@69
    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@6b
    .line 3504
    move/from16 v0, v24

    #@6d
    move-object/from16 v1, p0

    #@6f
    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@71
    .line 3505
    sub-int v2, p2, v22

    #@73
    sub-int v2, v2, v23

    #@75
    move-object/from16 v0, p0

    #@77
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    #@79
    .line 3506
    sub-int v2, p3, v24

    #@7b
    sub-int v2, v2, v21

    #@7d
    move-object/from16 v0, p0

    #@7f
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    #@81
    .line 3507
    move-object/from16 v0, p0

    #@83
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@85
    move-object/from16 v0, p0

    #@87
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    #@89
    .line 3508
    move-object/from16 v0, p0

    #@8b
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@8d
    move-object/from16 v0, p0

    #@8f
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    #@91
    .line 3509
    move-object/from16 v0, p0

    #@93
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    #@95
    move-object/from16 v0, p0

    #@97
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    #@99
    iput v2, v3, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenWidth:I

    #@9b
    move-object/from16 v0, p0

    #@9d
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    #@9f
    .line 3510
    move-object/from16 v0, p0

    #@a1
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    #@a3
    move-object/from16 v0, p0

    #@a5
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    #@a7
    iput v2, v3, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenHeight:I

    #@a9
    move-object/from16 v0, p0

    #@ab
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    #@ad
    .line 3512
    move-object/from16 v0, p0

    #@af
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@b1
    move-object/from16 v0, p0

    #@b3
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    #@b5
    .line 3511
    move-object/from16 v0, p0

    #@b7
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenLeft:I

    #@b9
    move-object/from16 v0, p0

    #@bb
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    #@bd
    move-object/from16 v0, p0

    #@bf
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    #@c1
    move-object/from16 v0, p0

    #@c3
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    #@c5
    move-object/from16 v0, p0

    #@c7
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    #@c9
    .line 3514
    move-object/from16 v0, p0

    #@cb
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@cd
    move-object/from16 v0, p0

    #@cf
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    #@d1
    .line 3513
    move-object/from16 v0, p0

    #@d3
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenTop:I

    #@d5
    move-object/from16 v0, p0

    #@d7
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    #@d9
    move-object/from16 v0, p0

    #@db
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    #@dd
    move-object/from16 v0, p0

    #@df
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    #@e1
    move-object/from16 v0, p0

    #@e3
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    #@e5
    .line 3516
    sub-int v2, p2, v23

    #@e7
    move-object/from16 v0, p0

    #@e9
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    #@eb
    .line 3515
    move-object/from16 v0, p0

    #@ed
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenRight:I

    #@ef
    move-object/from16 v0, p0

    #@f1
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    #@f3
    move-object/from16 v0, p0

    #@f5
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    #@f7
    move-object/from16 v0, p0

    #@f9
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    #@fb
    move-object/from16 v0, p0

    #@fd
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    #@ff
    .line 3518
    sub-int v2, p3, v21

    #@101
    move-object/from16 v0, p0

    #@103
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    #@105
    .line 3517
    move-object/from16 v0, p0

    #@107
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenBottom:I

    #@109
    move-object/from16 v0, p0

    #@10b
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    #@10d
    move-object/from16 v0, p0

    #@10f
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    #@111
    move-object/from16 v0, p0

    #@113
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    #@115
    move-object/from16 v0, p0

    #@117
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    #@119
    .line 3519
    const/high16 v2, 0x10000000

    #@11b
    move-object/from16 v0, p0

    #@11d
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLayer:I

    #@11f
    .line 3520
    const/4 v2, -0x1

    #@120
    move-object/from16 v0, p0

    #@122
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarLayer:I

    #@124
    .line 3523
    sget-object v25, Lcom/android/server/policy/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    #@126
    .line 3524
    .local v25, "pf":Landroid/graphics/Rect;
    sget-object v11, Lcom/android/server/policy/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    #@128
    .line 3525
    .local v11, "df":Landroid/graphics/Rect;
    sget-object v19, Lcom/android/server/policy/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    #@12a
    .line 3526
    .local v19, "of":Landroid/graphics/Rect;
    sget-object v32, Lcom/android/server/policy/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    #@12c
    .line 3527
    .local v32, "vf":Landroid/graphics/Rect;
    sget-object v8, Lcom/android/server/policy/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    #@12e
    .line 3528
    .local v8, "dcf":Landroid/graphics/Rect;
    sget-object v20, Lcom/android/server/policy/PhoneWindowManager;->mTmpOutsetFrame:Landroid/graphics/Rect;

    #@130
    .line 3529
    .local v20, "osf":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@132
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    #@134
    move-object/from16 v0, v32

    #@136
    iput v2, v0, Landroid/graphics/Rect;->left:I

    #@138
    move-object/from16 v0, v19

    #@13a
    iput v2, v0, Landroid/graphics/Rect;->left:I

    #@13c
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@13e
    move-object/from16 v0, v25

    #@140
    iput v2, v0, Landroid/graphics/Rect;->left:I

    #@142
    .line 3530
    move-object/from16 v0, p0

    #@144
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    #@146
    move-object/from16 v0, v32

    #@148
    iput v2, v0, Landroid/graphics/Rect;->top:I

    #@14a
    move-object/from16 v0, v19

    #@14c
    iput v2, v0, Landroid/graphics/Rect;->top:I

    #@14e
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@150
    move-object/from16 v0, v25

    #@152
    iput v2, v0, Landroid/graphics/Rect;->top:I

    #@154
    .line 3531
    move-object/from16 v0, p0

    #@156
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    #@158
    move-object/from16 v0, v32

    #@15a
    iput v2, v0, Landroid/graphics/Rect;->right:I

    #@15c
    move-object/from16 v0, v19

    #@15e
    iput v2, v0, Landroid/graphics/Rect;->right:I

    #@160
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@162
    move-object/from16 v0, v25

    #@164
    iput v2, v0, Landroid/graphics/Rect;->right:I

    #@166
    .line 3532
    move-object/from16 v0, p0

    #@168
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    #@16a
    move-object/from16 v0, v32

    #@16c
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    #@16e
    move-object/from16 v0, v19

    #@170
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    #@172
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@174
    move-object/from16 v0, v25

    #@176
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    #@178
    .line 3533
    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    #@17b
    .line 3535
    if-eqz p1, :cond_b

    #@17d
    .line 3538
    move-object/from16 v0, p0

    #@17f
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    #@181
    move/from16 v28, v0

    #@183
    .line 3539
    .local v28, "sysui":I
    and-int/lit8 v2, v28, 0x2

    #@185
    if-nez v2, :cond_d

    #@187
    const/16 v18, 0x1

    #@189
    .line 3541
    .local v18, "navVisible":Z
    :goto_1
    const v2, -0x7fff8000

    #@18c
    .line 3540
    and-int v2, v2, v28

    #@18e
    if-eqz v2, :cond_e

    #@190
    const/16 v17, 0x1

    #@192
    .line 3542
    .local v17, "navTranslucent":Z
    :goto_2
    move/from16 v0, v28

    #@194
    and-int/lit16 v2, v0, 0x800

    #@196
    if-eqz v2, :cond_f

    #@198
    const/4 v12, 0x1

    #@199
    .line 3543
    .local v12, "immersive":Z
    :goto_3
    move/from16 v0, v28

    #@19b
    and-int/lit16 v2, v0, 0x1000

    #@19d
    if-eqz v2, :cond_10

    #@19f
    const/4 v13, 0x1

    #@1a0
    .line 3544
    .local v13, "immersiveSticky":Z
    :goto_4
    if-nez v12, :cond_11

    #@1a2
    move/from16 v16, v13

    #@1a4
    .line 3545
    :goto_5
    if-eqz v13, :cond_12

    #@1a6
    const/4 v2, 0x0

    #@1a7
    :goto_6
    and-int v17, v17, v2

    #@1a9
    .line 3546
    .local v17, "navTranslucent":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    #@1ac
    move-result v2

    #@1ad
    if-eqz v2, :cond_0

    #@1af
    move-object/from16 v0, p0

    #@1b1
    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    #@1b3
    if-eqz v2, :cond_13

    #@1b5
    :cond_0
    const/4 v14, 0x0

    #@1b6
    .line 3547
    .local v14, "isKeyguardShowing":Z
    :goto_7
    if-nez v14, :cond_1

    #@1b8
    .line 3548
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    #@1bb
    move-result v2

    #@1bc
    and-int v17, v17, v2

    #@1be
    .line 3555
    :cond_1
    if-nez v18, :cond_2

    #@1c0
    if-eqz v16, :cond_14

    #@1c2
    .line 3556
    :cond_2
    move-object/from16 v0, p0

    #@1c4
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

    #@1c6
    if-eqz v2, :cond_3

    #@1c8
    .line 3557
    move-object/from16 v0, p0

    #@1ca
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

    #@1cc
    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$InputConsumer;->dismiss()V

    #@1cf
    .line 3558
    const/4 v2, 0x0

    #@1d0
    move-object/from16 v0, p0

    #@1d2
    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

    #@1d4
    .line 3568
    :cond_3
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    #@1d7
    move-result v2

    #@1d8
    if-eqz v2, :cond_15

    #@1da
    const/4 v2, 0x0

    #@1db
    :goto_9
    or-int v18, v18, v2

    #@1dd
    .line 3570
    .local v18, "navVisible":Z
    const/16 v31, 0x0

    #@1df
    .line 3571
    .local v31, "updateSysUiVisibility":Z
    move-object/from16 v0, p0

    #@1e1
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@1e3
    if-eqz v2, :cond_6

    #@1e5
    .line 3572
    move-object/from16 v0, p0

    #@1e7
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@1e9
    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->isTransientShowing()Z

    #@1ec
    move-result v30

    #@1ed
    .line 3577
    .local v30, "transientNavBarShowing":Z
    move-object/from16 v0, p0

    #@1ef
    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    #@1f1
    if-eqz v2, :cond_4

    #@1f3
    move/from16 v0, p2

    #@1f5
    move/from16 v1, p3

    #@1f7
    if-ge v0, v1, :cond_16

    #@1f9
    :cond_4
    const/4 v2, 0x1

    #@1fa
    :goto_a
    move-object/from16 v0, p0

    #@1fc
    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarOnBottom:Z

    #@1fe
    .line 3578
    move-object/from16 v0, p0

    #@200
    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarOnBottom:Z

    #@202
    if-eqz v2, :cond_1a

    #@204
    .line 3580
    sub-int v2, p3, v21

    #@206
    .line 3581
    move-object/from16 v0, p0

    #@208
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    #@20a
    aget v3, v3, p4

    #@20c
    .line 3580
    sub-int v29, v2, v3

    #@20e
    .line 3582
    .local v29, "top":I
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@210
    sub-int v3, p3, v21

    #@212
    const/4 v4, 0x0

    #@213
    move/from16 v0, v29

    #@215
    move/from16 v1, p2

    #@217
    invoke-virtual {v2, v4, v0, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    #@21a
    .line 3583
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@21c
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@21e
    move-object/from16 v0, p0

    #@220
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenBottom:I

    #@222
    move-object/from16 v0, p0

    #@224
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    #@226
    .line 3584
    if-eqz v30, :cond_17

    #@228
    .line 3585
    move-object/from16 v0, p0

    #@22a
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@22c
    const/4 v3, 0x1

    #@22d
    invoke-virtual {v2, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    #@230
    .line 3595
    :goto_b
    if-eqz v18, :cond_5

    #@232
    if-eqz v17, :cond_19

    #@234
    .line 3631
    .end local v29    # "top":I
    :cond_5
    :goto_c
    move-object/from16 v0, p0

    #@236
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    #@238
    move-object/from16 v0, p0

    #@23a
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    #@23c
    move-object/from16 v0, p0

    #@23e
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    #@240
    move-object/from16 v0, p0

    #@242
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    #@244
    .line 3632
    move-object/from16 v0, p0

    #@246
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    #@248
    move-object/from16 v0, p0

    #@24a
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    #@24c
    move-object/from16 v0, p0

    #@24e
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    #@250
    move-object/from16 v0, p0

    #@252
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    #@254
    .line 3633
    move-object/from16 v0, p0

    #@256
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    #@258
    move-object/from16 v0, p0

    #@25a
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    #@25c
    move-object/from16 v0, p0

    #@25e
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    #@260
    move-object/from16 v0, p0

    #@262
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    #@264
    .line 3634
    move-object/from16 v0, p0

    #@266
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    #@268
    move-object/from16 v0, p0

    #@26a
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    #@26c
    move-object/from16 v0, p0

    #@26e
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    #@270
    move-object/from16 v0, p0

    #@272
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    #@274
    .line 3635
    move-object/from16 v0, p0

    #@276
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@278
    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    #@27b
    move-result v2

    #@27c
    move-object/from16 v0, p0

    #@27e
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarLayer:I

    #@280
    .line 3637
    move-object/from16 v0, p0

    #@282
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@284
    sget-object v3, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@286
    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@288
    .line 3638
    sget-object v5, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@28a
    sget-object v6, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@28c
    sget-object v7, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@28e
    .line 3639
    sget-object v9, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@290
    sget-object v10, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@292
    .line 3637
    invoke-interface/range {v2 .. v10}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@295
    .line 3641
    move-object/from16 v0, p0

    #@297
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@299
    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->checkHiddenLw()Z

    #@29c
    move-result v2

    #@29d
    if-eqz v2, :cond_6

    #@29f
    .line 3642
    const/16 v31, 0x1

    #@2a1
    .line 3649
    .end local v30    # "transientNavBarShowing":Z
    :cond_6
    move-object/from16 v0, p0

    #@2a3
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@2a5
    if-eqz v2, :cond_a

    #@2a7
    .line 3651
    move-object/from16 v0, p0

    #@2a9
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@2ab
    move-object/from16 v0, v19

    #@2ad
    iput v2, v0, Landroid/graphics/Rect;->left:I

    #@2af
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@2b1
    move-object/from16 v0, v25

    #@2b3
    iput v2, v0, Landroid/graphics/Rect;->left:I

    #@2b5
    .line 3652
    move-object/from16 v0, p0

    #@2b7
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@2b9
    move-object/from16 v0, v19

    #@2bb
    iput v2, v0, Landroid/graphics/Rect;->top:I

    #@2bd
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@2bf
    move-object/from16 v0, v25

    #@2c1
    iput v2, v0, Landroid/graphics/Rect;->top:I

    #@2c3
    .line 3653
    move-object/from16 v0, p0

    #@2c5
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    #@2c7
    move-object/from16 v0, p0

    #@2c9
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@2cb
    add-int/2addr v2, v3

    #@2cc
    move-object/from16 v0, v19

    #@2ce
    iput v2, v0, Landroid/graphics/Rect;->right:I

    #@2d0
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@2d2
    move-object/from16 v0, v25

    #@2d4
    iput v2, v0, Landroid/graphics/Rect;->right:I

    #@2d6
    .line 3654
    move-object/from16 v0, p0

    #@2d8
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    #@2da
    .line 3655
    move-object/from16 v0, p0

    #@2dc
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@2de
    .line 3654
    add-int/2addr v2, v3

    #@2df
    move-object/from16 v0, v19

    #@2e1
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    #@2e3
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@2e5
    move-object/from16 v0, v25

    #@2e7
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    #@2e9
    .line 3656
    move-object/from16 v0, p0

    #@2eb
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    #@2ed
    move-object/from16 v0, v32

    #@2ef
    iput v2, v0, Landroid/graphics/Rect;->left:I

    #@2f1
    .line 3657
    move-object/from16 v0, p0

    #@2f3
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    #@2f5
    move-object/from16 v0, v32

    #@2f7
    iput v2, v0, Landroid/graphics/Rect;->top:I

    #@2f9
    .line 3658
    move-object/from16 v0, p0

    #@2fb
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    #@2fd
    move-object/from16 v0, v32

    #@2ff
    iput v2, v0, Landroid/graphics/Rect;->right:I

    #@301
    .line 3659
    move-object/from16 v0, p0

    #@303
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    #@305
    move-object/from16 v0, v32

    #@307
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    #@309
    .line 3661
    move-object/from16 v0, p0

    #@30b
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@30d
    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    #@310
    move-result v2

    #@311
    move-object/from16 v0, p0

    #@313
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarLayer:I

    #@315
    .line 3664
    move-object/from16 v0, p0

    #@317
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@319
    move-object/from16 v3, v25

    #@31b
    move-object v4, v11

    #@31c
    move-object/from16 v5, v32

    #@31e
    move-object/from16 v6, v32

    #@320
    move-object/from16 v7, v32

    #@322
    move-object/from16 v9, v32

    #@324
    move-object/from16 v10, v32

    #@326
    invoke-interface/range {v2 .. v10}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@329
    .line 3669
    move-object/from16 v0, p0

    #@32b
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@32d
    move-object/from16 v0, p0

    #@32f
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    #@331
    add-int/2addr v2, v3

    #@332
    move-object/from16 v0, p0

    #@334
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    #@336
    .line 3671
    const/high16 v2, 0x4000000

    #@338
    and-int v2, v2, v28

    #@33a
    if-eqz v2, :cond_1d

    #@33c
    const/16 v26, 0x1

    #@33e
    .line 3673
    .local v26, "statusBarTransient":Z
    :goto_d
    const v2, 0x40008000    # 2.0078125f

    #@341
    .line 3672
    and-int v2, v2, v28

    #@343
    if-eqz v2, :cond_1e

    #@345
    const/16 v27, 0x1

    #@347
    .line 3674
    .local v27, "statusBarTranslucent":Z
    :goto_e
    if-nez v14, :cond_7

    #@349
    .line 3675
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    #@34c
    move-result v2

    #@34d
    and-int v27, v27, v2

    #@34f
    .line 3680
    .end local v27    # "statusBarTranslucent":Z
    :cond_7
    move-object/from16 v0, p0

    #@351
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@353
    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    #@356
    move-result v2

    #@357
    if-eqz v2, :cond_8

    #@359
    if-eqz v26, :cond_1f

    #@35b
    .line 3698
    :cond_8
    :goto_f
    move-object/from16 v0, p0

    #@35d
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@35f
    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    #@362
    move-result v2

    #@363
    if-eqz v2, :cond_9

    #@365
    move-object/from16 v0, p0

    #@367
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@369
    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    #@36c
    move-result v2

    #@36d
    if-eqz v2, :cond_20

    #@36f
    .line 3706
    :cond_9
    :goto_10
    move-object/from16 v0, p0

    #@371
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@373
    invoke-virtual {v2}, Lcom/android/server/policy/StatusBarController;->checkHiddenLw()Z

    #@376
    move-result v2

    #@377
    if-eqz v2, :cond_a

    #@379
    .line 3707
    const/16 v31, 0x1

    #@37b
    .line 3710
    .end local v26    # "statusBarTransient":Z
    :cond_a
    if-eqz v31, :cond_b

    #@37d
    .line 3711
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    #@380
    .line 3459
    .end local v12    # "immersive":Z
    .end local v13    # "immersiveSticky":Z
    .end local v14    # "isKeyguardShowing":Z
    .end local v17    # "navTranslucent":Z
    .end local v18    # "navVisible":Z
    .end local v28    # "sysui":I
    .end local v31    # "updateSysUiVisibility":Z
    :cond_b
    return-void

    #@381
    .line 3465
    .end local v8    # "dcf":Landroid/graphics/Rect;
    .end local v11    # "df":Landroid/graphics/Rect;
    .end local v19    # "of":Landroid/graphics/Rect;
    .end local v20    # "osf":Landroid/graphics/Rect;
    .end local v21    # "overscanBottom":I
    .end local v22    # "overscanLeft":I
    .end local v23    # "overscanRight":I
    .end local v24    # "overscanTop":I
    .end local v25    # "pf":Landroid/graphics/Rect;
    .end local v32    # "vf":Landroid/graphics/Rect;
    :pswitch_0
    move-object/from16 v0, p0

    #@383
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    #@385
    move/from16 v22, v0

    #@387
    .line 3466
    .restart local v22    # "overscanLeft":I
    move-object/from16 v0, p0

    #@389
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    #@38b
    move/from16 v24, v0

    #@38d
    .line 3467
    .restart local v24    # "overscanTop":I
    move-object/from16 v0, p0

    #@38f
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    #@391
    move/from16 v23, v0

    #@393
    .line 3468
    .restart local v23    # "overscanRight":I
    move-object/from16 v0, p0

    #@395
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    #@397
    move/from16 v21, v0

    #@399
    .restart local v21    # "overscanBottom":I
    goto/16 :goto_0

    #@39b
    .line 3471
    .end local v21    # "overscanBottom":I
    .end local v22    # "overscanLeft":I
    .end local v23    # "overscanRight":I
    .end local v24    # "overscanTop":I
    :pswitch_1
    move-object/from16 v0, p0

    #@39d
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    #@39f
    move/from16 v22, v0

    #@3a1
    .line 3472
    .restart local v22    # "overscanLeft":I
    move-object/from16 v0, p0

    #@3a3
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    #@3a5
    move/from16 v24, v0

    #@3a7
    .line 3473
    .restart local v24    # "overscanTop":I
    move-object/from16 v0, p0

    #@3a9
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    #@3ab
    move/from16 v23, v0

    #@3ad
    .line 3474
    .restart local v23    # "overscanRight":I
    move-object/from16 v0, p0

    #@3af
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    #@3b1
    move/from16 v21, v0

    #@3b3
    .restart local v21    # "overscanBottom":I
    goto/16 :goto_0

    #@3b5
    .line 3477
    .end local v21    # "overscanBottom":I
    .end local v22    # "overscanLeft":I
    .end local v23    # "overscanRight":I
    .end local v24    # "overscanTop":I
    :pswitch_2
    move-object/from16 v0, p0

    #@3b7
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    #@3b9
    move/from16 v22, v0

    #@3bb
    .line 3478
    .restart local v22    # "overscanLeft":I
    move-object/from16 v0, p0

    #@3bd
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    #@3bf
    move/from16 v24, v0

    #@3c1
    .line 3479
    .restart local v24    # "overscanTop":I
    move-object/from16 v0, p0

    #@3c3
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    #@3c5
    move/from16 v23, v0

    #@3c7
    .line 3480
    .restart local v23    # "overscanRight":I
    move-object/from16 v0, p0

    #@3c9
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    #@3cb
    move/from16 v21, v0

    #@3cd
    .restart local v21    # "overscanBottom":I
    goto/16 :goto_0

    #@3cf
    .line 3490
    .end local v21    # "overscanBottom":I
    .end local v22    # "overscanLeft":I
    .end local v23    # "overscanRight":I
    .end local v24    # "overscanTop":I
    :cond_c
    const/16 v22, 0x0

    #@3d1
    .line 3491
    .restart local v22    # "overscanLeft":I
    const/16 v24, 0x0

    #@3d3
    .line 3492
    .restart local v24    # "overscanTop":I
    const/16 v23, 0x0

    #@3d5
    .line 3493
    .restart local v23    # "overscanRight":I
    const/16 v21, 0x0

    #@3d7
    .restart local v21    # "overscanBottom":I
    goto/16 :goto_0

    #@3d9
    .line 3539
    .restart local v8    # "dcf":Landroid/graphics/Rect;
    .restart local v11    # "df":Landroid/graphics/Rect;
    .restart local v19    # "of":Landroid/graphics/Rect;
    .restart local v20    # "osf":Landroid/graphics/Rect;
    .restart local v25    # "pf":Landroid/graphics/Rect;
    .restart local v28    # "sysui":I
    .restart local v32    # "vf":Landroid/graphics/Rect;
    :cond_d
    const/16 v18, 0x0

    #@3db
    .local v18, "navVisible":Z
    goto/16 :goto_1

    #@3dd
    .line 3540
    :cond_e
    const/16 v17, 0x0

    #@3df
    .local v17, "navTranslucent":Z
    goto/16 :goto_2

    #@3e1
    .line 3542
    :cond_f
    const/4 v12, 0x0

    #@3e2
    .restart local v12    # "immersive":Z
    goto/16 :goto_3

    #@3e4
    .line 3543
    :cond_10
    const/4 v13, 0x0

    #@3e5
    .restart local v13    # "immersiveSticky":Z
    goto/16 :goto_4

    #@3e7
    .line 3544
    :cond_11
    const/16 v16, 0x1

    #@3e9
    .local v16, "navAllowedHidden":Z
    goto/16 :goto_5

    #@3eb
    .line 3545
    .end local v16    # "navAllowedHidden":Z
    :cond_12
    const/4 v2, 0x1

    #@3ec
    goto/16 :goto_6

    #@3ee
    .line 3546
    .local v17, "navTranslucent":Z
    :cond_13
    const/4 v14, 0x1

    #@3ef
    .restart local v14    # "isKeyguardShowing":Z
    goto/16 :goto_7

    #@3f1
    .line 3560
    :cond_14
    move-object/from16 v0, p0

    #@3f3
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

    #@3f5
    if-nez v2, :cond_3

    #@3f7
    .line 3561
    move-object/from16 v0, p0

    #@3f9
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@3fb
    move-object/from16 v0, p0

    #@3fd
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@3ff
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@402
    move-result-object v3

    #@403
    .line 3562
    move-object/from16 v0, p0

    #@405
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

    #@407
    .line 3561
    invoke-interface {v2, v3, v4}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->addInputConsumer(Landroid/os/Looper;Landroid/view/InputEventReceiver$Factory;)Landroid/view/WindowManagerPolicy$InputConsumer;

    #@40a
    move-result-object v2

    #@40b
    move-object/from16 v0, p0

    #@40d
    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

    #@40f
    goto/16 :goto_8

    #@411
    .line 3568
    :cond_15
    const/4 v2, 0x1

    #@412
    goto/16 :goto_9

    #@414
    .line 3577
    .local v18, "navVisible":Z
    .restart local v30    # "transientNavBarShowing":Z
    .restart local v31    # "updateSysUiVisibility":Z
    :cond_16
    const/4 v2, 0x0

    #@415
    goto/16 :goto_a

    #@417
    .line 3586
    .restart local v29    # "top":I
    :cond_17
    if-eqz v18, :cond_18

    #@419
    .line 3587
    move-object/from16 v0, p0

    #@41b
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@41d
    const/4 v3, 0x1

    #@41e
    invoke-virtual {v2, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    #@421
    .line 3588
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@423
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@425
    move-object/from16 v0, p0

    #@427
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    #@429
    .line 3589
    move-object/from16 v0, p0

    #@42b
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    #@42d
    move-object/from16 v0, p0

    #@42f
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    #@431
    sub-int/2addr v2, v3

    #@432
    move-object/from16 v0, p0

    #@434
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    #@436
    .line 3590
    move-object/from16 v0, p0

    #@438
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    #@43a
    move-object/from16 v0, p0

    #@43c
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    #@43e
    sub-int/2addr v2, v3

    #@43f
    move-object/from16 v0, p0

    #@441
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    #@443
    goto/16 :goto_b

    #@445
    .line 3593
    :cond_18
    move-object/from16 v0, p0

    #@447
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@449
    const/4 v3, 0x0

    #@44a
    invoke-virtual {v2, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    #@44d
    goto/16 :goto_b

    #@44f
    .line 3595
    :cond_19
    if-nez v16, :cond_5

    #@451
    .line 3596
    move-object/from16 v0, p0

    #@453
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@455
    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    #@458
    move-result v2

    #@459
    if-nez v2, :cond_5

    #@45b
    .line 3597
    move-object/from16 v0, p0

    #@45d
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@45f
    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->wasRecentlyTranslucent()Z

    #@462
    move-result v2

    #@463
    if-nez v2, :cond_5

    #@465
    .line 3601
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@467
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@469
    move-object/from16 v0, p0

    #@46b
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBottom:I

    #@46d
    goto/16 :goto_c

    #@46f
    .line 3605
    .end local v29    # "top":I
    :cond_1a
    sub-int v2, p2, v23

    #@471
    .line 3606
    move-object/from16 v0, p0

    #@473
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    #@475
    aget v3, v3, p4

    #@477
    .line 3605
    sub-int v15, v2, v3

    #@479
    .line 3607
    .local v15, "left":I
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@47b
    sub-int v3, p2, v23

    #@47d
    const/4 v4, 0x0

    #@47e
    move/from16 v0, p3

    #@480
    invoke-virtual {v2, v15, v4, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    #@483
    .line 3608
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@485
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@487
    move-object/from16 v0, p0

    #@489
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenRight:I

    #@48b
    move-object/from16 v0, p0

    #@48d
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    #@48f
    .line 3609
    if-eqz v30, :cond_1b

    #@491
    .line 3610
    move-object/from16 v0, p0

    #@493
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@495
    const/4 v3, 0x1

    #@496
    invoke-virtual {v2, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    #@499
    .line 3620
    :goto_11
    if-eqz v18, :cond_5

    #@49b
    if-nez v17, :cond_5

    #@49d
    if-nez v16, :cond_5

    #@49f
    .line 3621
    move-object/from16 v0, p0

    #@4a1
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@4a3
    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    #@4a6
    move-result v2

    #@4a7
    if-nez v2, :cond_5

    #@4a9
    .line 3622
    move-object/from16 v0, p0

    #@4ab
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@4ad
    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->wasRecentlyTranslucent()Z

    #@4b0
    move-result v2

    #@4b1
    if-nez v2, :cond_5

    #@4b3
    .line 3626
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@4b5
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@4b7
    move-object/from16 v0, p0

    #@4b9
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemRight:I

    #@4bb
    goto/16 :goto_c

    #@4bd
    .line 3611
    :cond_1b
    if-eqz v18, :cond_1c

    #@4bf
    .line 3612
    move-object/from16 v0, p0

    #@4c1
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@4c3
    const/4 v3, 0x1

    #@4c4
    invoke-virtual {v2, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    #@4c7
    .line 3613
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@4c9
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@4cb
    move-object/from16 v0, p0

    #@4cd
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    #@4cf
    .line 3614
    move-object/from16 v0, p0

    #@4d1
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    #@4d3
    move-object/from16 v0, p0

    #@4d5
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    #@4d7
    sub-int/2addr v2, v3

    #@4d8
    move-object/from16 v0, p0

    #@4da
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    #@4dc
    .line 3615
    move-object/from16 v0, p0

    #@4de
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    #@4e0
    move-object/from16 v0, p0

    #@4e2
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    #@4e4
    sub-int/2addr v2, v3

    #@4e5
    move-object/from16 v0, p0

    #@4e7
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    #@4e9
    goto :goto_11

    #@4ea
    .line 3618
    :cond_1c
    move-object/from16 v0, p0

    #@4ec
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@4ee
    const/4 v3, 0x0

    #@4ef
    invoke-virtual {v2, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    #@4f2
    goto :goto_11

    #@4f3
    .line 3671
    .end local v15    # "left":I
    .end local v30    # "transientNavBarShowing":Z
    :cond_1d
    const/16 v26, 0x0

    #@4f5
    .restart local v26    # "statusBarTransient":Z
    goto/16 :goto_d

    #@4f7
    .line 3672
    :cond_1e
    const/16 v27, 0x0

    #@4f9
    .restart local v27    # "statusBarTranslucent":Z
    goto/16 :goto_e

    #@4fb
    .line 3684
    .end local v27    # "statusBarTranslucent":Z
    :cond_1f
    move-object/from16 v0, p0

    #@4fd
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@4ff
    move-object/from16 v0, p0

    #@501
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    #@503
    add-int/2addr v2, v3

    #@504
    move-object/from16 v0, p0

    #@506
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    #@508
    .line 3686
    move-object/from16 v0, p0

    #@50a
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    #@50c
    move-object/from16 v0, p0

    #@50e
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    #@510
    move-object/from16 v0, p0

    #@512
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    #@514
    move-object/from16 v0, p0

    #@516
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    #@518
    .line 3687
    move-object/from16 v0, p0

    #@51a
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    #@51c
    move-object/from16 v0, p0

    #@51e
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    #@520
    move-object/from16 v0, p0

    #@522
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    #@524
    move-object/from16 v0, p0

    #@526
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    #@528
    .line 3688
    move-object/from16 v0, p0

    #@52a
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    #@52c
    move-object/from16 v0, p0

    #@52e
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    #@530
    move-object/from16 v0, p0

    #@532
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    #@534
    move-object/from16 v0, p0

    #@536
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    #@538
    .line 3689
    move-object/from16 v0, p0

    #@53a
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    #@53c
    move-object/from16 v0, p0

    #@53e
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    #@540
    move-object/from16 v0, p0

    #@542
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    #@544
    move-object/from16 v0, p0

    #@546
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    #@548
    goto/16 :goto_f

    #@54a
    .line 3699
    :cond_20
    if-nez v26, :cond_9

    #@54c
    if-nez v27, :cond_9

    #@54e
    .line 3700
    move-object/from16 v0, p0

    #@550
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@552
    invoke-virtual {v2}, Lcom/android/server/policy/StatusBarController;->wasRecentlyTranslucent()Z

    #@555
    move-result v2

    #@556
    if-nez v2, :cond_9

    #@558
    .line 3704
    move-object/from16 v0, p0

    #@55a
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@55c
    move-object/from16 v0, p0

    #@55e
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    #@560
    add-int/2addr v2, v3

    #@561
    move-object/from16 v0, p0

    #@563
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemTop:I

    #@565
    goto/16 :goto_10

    #@567
    .line 3463
    nop

    #@568
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public beginPostLayoutPolicyLw(II)V
    .locals 3
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 4331
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@4
    .line 4332
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@6
    .line 4333
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    #@8
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    #@b
    .line 4334
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsThatDismissKeyguard:Ljava/util/HashSet;

    #@d
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    #@10
    .line 4335
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    #@12
    .line 4336
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    #@14
    .line 4337
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarTransparent:Z

    #@16
    .line 4338
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    #@18
    .line 4339
    const/4 v1, -0x1

    #@19
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBarLayer:I

    #@1b
    .line 4341
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    #@1d
    .line 4342
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    #@1f
    .line 4343
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    #@21
    .line 4344
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingLockscreen:Z

    #@23
    .line 4345
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    #@25
    .line 4346
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    #@27
    .line 4347
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure()Z

    #@2a
    move-result v1

    #@2b
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    #@2d
    .line 4348
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    #@2f
    if-eqz v1, :cond_0

    #@31
    .line 4349
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@33
    if-eqz v1, :cond_0

    #@35
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@37
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    #@3a
    move-result v0

    #@3b
    .line 4348
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecureIncludingHidden:Z

    #@3d
    .line 4330
    return-void
.end method

.method public canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2216
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    #@3
    sparse-switch v1, :sswitch_data_0

    #@6
    .line 2225
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBaseType()I

    #@9
    move-result v1

    #@a
    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->windowTypeToLayerLw(I)I

    #@d
    move-result v1

    #@e
    .line 2226
    const/16 v2, 0x7d0

    #@10
    invoke-virtual {p0, v2}, Lcom/android/server/policy/PhoneWindowManager;->windowTypeToLayerLw(I)I

    #@13
    move-result v2

    #@14
    .line 2225
    if-ge v1, v2, :cond_0

    #@16
    const/4 v0, 0x1

    #@17
    :cond_0
    return v0

    #@18
    .line 2222
    :sswitch_0
    return v0

    #@19
    .line 2216
    nop

    #@1a
    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_0
        0x7dd -> :sswitch_0
        0x7e3 -> :sswitch_0
        0x7e7 -> :sswitch_0
        0x7ed -> :sswitch_0
    .end sparse-switch
.end method

.method public canMagnifyWindow(I)Z
    .locals 1
    .param p1, "windowType"    # I

    #@0
    .prologue
    .line 6792
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 6800
    const/4 v0, 0x1

    #@4
    return v0

    #@5
    .line 6797
    :sswitch_0
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 6792
    nop

    #@8
    :sswitch_data_0
    .sparse-switch
        0x7db -> :sswitch_0
        0x7dc -> :sswitch_0
        0x7e3 -> :sswitch_0
        0x7eb -> :sswitch_0
    .end sparse-switch
.end method

.method public checkAddPermission(Landroid/view/WindowManager$LayoutParams;[I)I
    .locals 10
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "outAppOp"    # [I

    #@0
    .prologue
    const/16 v9, 0xbb7

    #@2
    const/16 v6, 0x7d0

    #@4
    const/16 v5, 0x3e8

    #@6
    const/4 v8, -0x8

    #@7
    const/4 v7, 0x0

    #@8
    .line 1835
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@a
    .line 1837
    .local v3, "type":I
    const/4 v4, -0x1

    #@b
    aput v4, p2, v7

    #@d
    .line 1839
    const/4 v4, 0x1

    #@e
    if-lt v3, v4, :cond_0

    #@10
    const/16 v4, 0x63

    #@12
    if-le v3, v4, :cond_3

    #@14
    .line 1840
    :cond_0
    if-lt v3, v5, :cond_1

    #@16
    const/16 v4, 0x7cf

    #@18
    if-le v3, v4, :cond_3

    #@1a
    .line 1841
    :cond_1
    if-lt v3, v6, :cond_2

    #@1c
    if-le v3, v9, :cond_3

    #@1e
    .line 1842
    :cond_2
    const/16 v4, -0xa

    #@20
    return v4

    #@21
    .line 1845
    :cond_3
    if-lt v3, v6, :cond_4

    #@23
    if-le v3, v9, :cond_5

    #@25
    .line 1847
    :cond_4
    return v7

    #@26
    .line 1849
    :cond_5
    const/4 v2, 0x0

    #@27
    .line 1850
    .local v2, "permission":Ljava/lang/String;
    sparse-switch v3, :sswitch_data_0

    #@2a
    .line 1874
    const-string/jumbo v2, "android.permission.INTERNAL_SYSTEM_WINDOW"

    #@2d
    .line 1876
    .end local v2    # "permission":Ljava/lang/String;
    :goto_0
    :sswitch_0
    if-eqz v2, :cond_9

    #@2f
    .line 1877
    const-string/jumbo v4, "android.permission.SYSTEM_ALERT_WINDOW"

    #@32
    if-ne v2, v4, :cond_8

    #@34
    .line 1878
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@37
    move-result v0

    #@38
    .line 1880
    .local v0, "callingUid":I
    if-ne v0, v5, :cond_6

    #@3a
    .line 1881
    return v7

    #@3b
    .line 1855
    .end local v0    # "callingUid":I
    .restart local v2    # "permission":Ljava/lang/String;
    :sswitch_1
    const/16 v4, 0x2d

    #@3d
    aput v4, p2, v7

    #@3f
    goto :goto_0

    #@40
    .line 1870
    :sswitch_2
    const-string/jumbo v2, "android.permission.SYSTEM_ALERT_WINDOW"

    #@43
    .line 1871
    .local v2, "permission":Ljava/lang/String;
    const/16 v4, 0x18

    #@45
    aput v4, p2, v7

    #@47
    goto :goto_0

    #@48
    .line 1886
    .end local v2    # "permission":Ljava/lang/String;
    .restart local v0    # "callingUid":I
    :cond_6
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    #@4a
    aget v5, p2, v7

    #@4c
    .line 1887
    iget-object v6, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@4e
    .line 1886
    invoke-virtual {v4, v5, v0, v6}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    #@51
    move-result v1

    #@52
    .line 1888
    .local v1, "mode":I
    packed-switch v1, :pswitch_data_0

    #@55
    .line 1899
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@57
    invoke-virtual {v4, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    #@5a
    move-result v4

    #@5b
    if-eqz v4, :cond_7

    #@5d
    .line 1901
    return v8

    #@5e
    .line 1893
    :pswitch_0
    return v7

    #@5f
    .line 1895
    :pswitch_1
    return v8

    #@60
    .line 1903
    :cond_7
    return v7

    #@61
    .line 1908
    .end local v0    # "callingUid":I
    .end local v1    # "mode":I
    :cond_8
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@63
    invoke-virtual {v4, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@66
    move-result v4

    #@67
    if-eqz v4, :cond_9

    #@69
    .line 1910
    return v8

    #@6a
    .line 1913
    :cond_9
    return v7

    #@6b
    .line 1850
    nop

    #@6c
    :sswitch_data_0
    .sparse-switch
        0x7d2 -> :sswitch_2
        0x7d3 -> :sswitch_2
        0x7d5 -> :sswitch_1
        0x7d6 -> :sswitch_2
        0x7d7 -> :sswitch_2
        0x7da -> :sswitch_2
        0x7db -> :sswitch_0
        0x7dd -> :sswitch_0
        0x7e7 -> :sswitch_0
        0x7ee -> :sswitch_0
        0x7ef -> :sswitch_0
        0x7f0 -> :sswitch_0
    .end sparse-switch

    #@9e
    .line 1888
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public checkShowToOwnerOnly(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 4
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1921
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@4
    sparse-switch v2, :sswitch_data_0

    #@7
    .line 1928
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@9
    and-int/lit8 v2, v2, 0x10

    #@b
    if-nez v2, :cond_0

    #@d
    .line 1929
    return v0

    #@e
    .line 1958
    :cond_0
    :sswitch_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@10
    .line 1959
    const-string/jumbo v3, "android.permission.INTERNAL_SYSTEM_WINDOW"

    #@13
    .line 1958
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_1

    #@19
    :goto_0
    return v0

    #@1a
    :cond_1
    move v0, v1

    #@1b
    goto :goto_0

    #@1c
    .line 1921
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x7d0 -> :sswitch_0
        0x7d1 -> :sswitch_0
        0x7d2 -> :sswitch_0
        0x7d7 -> :sswitch_0
        0x7d8 -> :sswitch_0
        0x7d9 -> :sswitch_0
        0x7de -> :sswitch_0
        0x7e1 -> :sswitch_0
        0x7e2 -> :sswitch_0
        0x7e3 -> :sswitch_0
        0x7e4 -> :sswitch_0
        0x7e5 -> :sswitch_0
        0x7e6 -> :sswitch_0
        0x7e8 -> :sswitch_0
        0x7ea -> :sswitch_0
        0x7eb -> :sswitch_0
        0x7ed -> :sswitch_0
        0x7ee -> :sswitch_0
    .end sparse-switch
.end method

.method public createForceHideEnterAnimation(ZZ)Landroid/view/animation/Animation;
    .locals 5
    .param p1, "onWallpaper"    # Z
    .param p2, "goingToNotificationShade"    # Z

    #@0
    .prologue
    .line 2559
    if-eqz p2, :cond_0

    #@2
    .line 2560
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@4
    const v4, 0x10a0033

    #@7
    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@a
    move-result-object v3

    #@b
    return-object v3

    #@c
    .line 2563
    :cond_0
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@e
    if-eqz p1, :cond_1

    #@10
    .line 2564
    const v3, 0x10a0034

    #@13
    .line 2563
    :goto_0
    invoke-static {v4, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Landroid/view/animation/AnimationSet;

    #@19
    .line 2568
    .local v2, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v2}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    #@1c
    move-result-object v0

    #@1d
    .line 2569
    .local v0, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@20
    move-result v3

    #@21
    add-int/lit8 v1, v3, -0x1

    #@23
    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    #@25
    .line 2570
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@28
    move-result-object v3

    #@29
    check-cast v3, Landroid/view/animation/Animation;

    #@2b
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogDecelerateInterpolator:Lcom/android/server/policy/LogDecelerateInterpolator;

    #@2d
    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@30
    .line 2569
    add-int/lit8 v1, v1, -0x1

    #@32
    goto :goto_1

    #@33
    .line 2565
    .end local v0    # "animations":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    .end local v1    # "i":I
    .end local v2    # "set":Landroid/view/animation/AnimationSet;
    :cond_1
    const v3, 0x10a0032

    #@36
    goto :goto_0

    #@37
    .line 2573
    .restart local v0    # "animations":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    .restart local v1    # "i":I
    .restart local v2    # "set":Landroid/view/animation/AnimationSet;
    :cond_2
    return-object v2
.end method

.method public createForceHideWallpaperExitAnimation(Z)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "goingToNotificationShade"    # Z

    #@0
    .prologue
    .line 2579
    if-eqz p1, :cond_0

    #@2
    .line 2580
    const/4 v0, 0x0

    #@3
    return-object v0

    #@4
    .line 2582
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@6
    const v1, 0x10a0037

    #@9
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method createHomeDockIntent()Landroid/content/Intent;
    .locals 8

    #@0
    .prologue
    const/4 v6, 0x3

    #@1
    const/4 v7, 0x0

    #@2
    .line 6325
    const/4 v2, 0x0

    #@3
    .line 6330
    .local v2, "intent":Landroid/content/Intent;
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    #@5
    if-ne v4, v6, :cond_0

    #@7
    .line 6332
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    #@9
    .local v2, "intent":Landroid/content/Intent;
    move-object v3, v2

    #@a
    .line 6346
    .end local v2    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    :goto_0
    if-nez v3, :cond_5

    #@c
    .line 6347
    return-object v7

    #@d
    .line 6334
    .end local v3    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    :cond_0
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    #@f
    const/4 v5, 0x2

    #@10
    if-ne v4, v5, :cond_1

    #@12
    move-object v3, v2

    #@13
    .restart local v3    # "intent":Landroid/content/Intent;
    goto :goto_0

    #@14
    .line 6338
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_1
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    #@16
    const/4 v5, 0x6

    #@17
    if-ne v4, v5, :cond_4

    #@19
    .line 6339
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    #@1b
    const/4 v5, 0x1

    #@1c
    if-eq v4, v5, :cond_2

    #@1e
    .line 6340
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    #@20
    const/4 v5, 0x4

    #@21
    if-ne v4, v5, :cond_3

    #@23
    .line 6343
    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    #@25
    .local v2, "intent":Landroid/content/Intent;
    move-object v3, v2

    #@26
    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    goto :goto_0

    #@27
    .line 6341
    .end local v3    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    :cond_3
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    #@29
    if-eq v4, v6, :cond_2

    #@2b
    :cond_4
    move-object v3, v2

    #@2c
    .restart local v3    # "intent":Landroid/content/Intent;
    goto :goto_0

    #@2d
    .line 6350
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5
    const/4 v0, 0x0

    #@2e
    .line 6351
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@30
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@33
    move-result-object v4

    #@34
    .line 6354
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    #@36
    .line 6353
    const v6, 0x10080

    #@39
    .line 6351
    invoke-virtual {v4, v3, v6, v5}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    #@3c
    move-result-object v1

    #@3d
    .line 6355
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_6

    #@3f
    .line 6356
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@41
    .line 6358
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_6
    if-eqz v0, :cond_7

    #@43
    .line 6359
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    #@45
    if-eqz v4, :cond_7

    #@47
    .line 6360
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    #@49
    const-string/jumbo v5, "android.dock_home"

    #@4c
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@4f
    move-result v4

    #@50
    .line 6358
    if-eqz v4, :cond_7

    #@52
    .line 6361
    new-instance v2, Landroid/content/Intent;

    #@54
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@57
    .line 6362
    .end local v3    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@59
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@5b
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@5e
    .line 6363
    return-object v2

    #@5f
    .line 6366
    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_7
    return-object v7
.end method

.method public dismissKeyguardLw()V
    .locals 2

    #@0
    .prologue
    .line 5739
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@6
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 5741
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@e
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$19;

    #@10
    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$19;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@16
    .line 5738
    :cond_0
    return-void
.end method

.method dispatchMediaKeyRepeatWithWakeLock(Landroid/view/KeyEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 5328
    const/4 v1, 0x0

    #@1
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    #@3
    .line 5331
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@6
    move-result-wide v2

    #@7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    #@a
    move-result v1

    #@b
    or-int/lit16 v1, v1, 0x80

    #@d
    const/4 v4, 0x1

    #@e
    .line 5330
    invoke-static {p1, v2, v3, v4, v1}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    #@11
    move-result-object v0

    #@12
    .line 5336
    .local v0, "repeatEvent":Landroid/view/KeyEvent;
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    #@15
    .line 5337
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    #@17
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    #@1a
    .line 5327
    return-void
.end method

.method dispatchMediaKeyWithWakeLock(Landroid/view/KeyEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v4, 0x4

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 5302
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 5307
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@9
    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    #@c
    .line 5308
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    #@e
    .line 5309
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    #@10
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    #@13
    .line 5312
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    #@16
    .line 5314
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@19
    move-result v1

    #@1a
    if-nez v1, :cond_1

    #@1c
    .line 5315
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@1f
    move-result v1

    #@20
    if-nez v1, :cond_1

    #@22
    .line 5316
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    #@24
    .line 5318
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@26
    invoke-virtual {v1, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@29
    move-result-object v0

    #@2a
    .line 5320
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    #@2d
    .line 5321
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@2f
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    #@32
    move-result v2

    #@33
    int-to-long v2, v2

    #@34
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@37
    .line 5297
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    #@38
    .line 5323
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    #@3a
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    #@3d
    goto :goto_0
.end method

.method dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 5341
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 5342
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@8
    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    #@b
    move-result-object v0

    #@c
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, p1, v1}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    #@10
    .line 5340
    :cond_0
    return-void
.end method

.method public dispatchUnhandledKey(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 23
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    #@0
    .prologue
    .line 3029
    const/16 v18, 0x0

    #@2
    .line 3030
    .local v18, "fallbackEvent":Landroid/view/KeyEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    #@5
    move-result v4

    #@6
    and-int/lit16 v4, v4, 0x400

    #@8
    if-nez v4, :cond_1

    #@a
    .line 3031
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    #@d
    move-result-object v20

    #@e
    .line 3032
    .local v20, "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    #@11
    move-result v21

    #@12
    .line 3033
    .local v21, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    #@15
    move-result v22

    #@16
    .line 3034
    .local v22, "metaState":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    #@19
    move-result v4

    #@1a
    if-nez v4, :cond_3

    #@1c
    .line 3035
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@1f
    move-result v4

    #@20
    if-nez v4, :cond_2

    #@22
    const/16 v19, 0x1

    #@24
    .line 3039
    .local v19, "initialDown":Z
    :goto_0
    if-eqz v19, :cond_4

    #@26
    .line 3040
    invoke-virtual/range {v20 .. v22}, Landroid/view/KeyCharacterMap;->getFallbackAction(II)Landroid/view/KeyCharacterMap$FallbackAction;

    #@29
    move-result-object v17

    #@2a
    .line 3045
    .local v17, "fallbackAction":Landroid/view/KeyCharacterMap$FallbackAction;
    :goto_1
    if-eqz v17, :cond_1

    #@2c
    .line 3051
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    #@2f
    move-result v4

    #@30
    or-int/lit16 v14, v4, 0x400

    #@32
    .line 3053
    .local v14, "flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDownTime()J

    #@35
    move-result-wide v4

    #@36
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    #@39
    move-result-wide v6

    #@3a
    .line 3054
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    #@3d
    move-result v8

    #@3e
    move-object/from16 v0, v17

    #@40
    iget v9, v0, Landroid/view/KeyCharacterMap$FallbackAction;->keyCode:I

    #@42
    .line 3055
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@45
    move-result v10

    #@46
    move-object/from16 v0, v17

    #@48
    iget v11, v0, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    #@4a
    .line 3056
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    #@4d
    move-result v12

    #@4e
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getScanCode()I

    #@51
    move-result v13

    #@52
    .line 3057
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getSource()I

    #@55
    move-result v15

    #@56
    const/16 v16, 0x0

    #@58
    .line 3052
    invoke-static/range {v4 .. v16}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    #@5b
    move-result-object v18

    #@5c
    .line 3059
    .local v18, "fallbackEvent":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    #@5e
    move-object/from16 v1, p1

    #@60
    move-object/from16 v2, v18

    #@62
    move/from16 v3, p3

    #@64
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->interceptFallback(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z

    #@67
    move-result v4

    #@68
    if-nez v4, :cond_0

    #@6a
    .line 3060
    invoke-virtual/range {v18 .. v18}, Landroid/view/KeyEvent;->recycle()V

    #@6d
    .line 3061
    const/16 v18, 0x0

    #@6f
    .line 3064
    .end local v18    # "fallbackEvent":Landroid/view/KeyEvent;
    :cond_0
    if-eqz v19, :cond_5

    #@71
    .line 3065
    move-object/from16 v0, p0

    #@73
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    #@75
    move/from16 v0, v21

    #@77
    move-object/from16 v1, v17

    #@79
    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@7c
    .line 3080
    .end local v14    # "flags":I
    .end local v17    # "fallbackAction":Landroid/view/KeyCharacterMap$FallbackAction;
    .end local v19    # "initialDown":Z
    .end local v20    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v21    # "keyCode":I
    .end local v22    # "metaState":I
    :cond_1
    :goto_2
    return-object v18

    #@7d
    .line 3035
    .local v18, "fallbackEvent":Landroid/view/KeyEvent;
    .restart local v20    # "kcm":Landroid/view/KeyCharacterMap;
    .restart local v21    # "keyCode":I
    .restart local v22    # "metaState":I
    :cond_2
    const/16 v19, 0x0

    #@7f
    .restart local v19    # "initialDown":Z
    goto :goto_0

    #@80
    .line 3034
    .end local v19    # "initialDown":Z
    :cond_3
    const/16 v19, 0x0

    #@82
    .restart local v19    # "initialDown":Z
    goto :goto_0

    #@83
    .line 3042
    :cond_4
    move-object/from16 v0, p0

    #@85
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    #@87
    move/from16 v0, v21

    #@89
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8c
    move-result-object v17

    #@8d
    check-cast v17, Landroid/view/KeyCharacterMap$FallbackAction;

    #@8f
    .restart local v17    # "fallbackAction":Landroid/view/KeyCharacterMap$FallbackAction;
    goto :goto_1

    #@90
    .line 3066
    .end local v18    # "fallbackEvent":Landroid/view/KeyEvent;
    .restart local v14    # "flags":I
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    #@93
    move-result v4

    #@94
    const/4 v5, 0x1

    #@95
    if-ne v4, v5, :cond_1

    #@97
    .line 3067
    move-object/from16 v0, p0

    #@99
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    #@9b
    move/from16 v0, v21

    #@9d
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    #@a0
    .line 3068
    invoke-virtual/range {v17 .. v17}, Landroid/view/KeyCharacterMap$FallbackAction;->recycle()V

    #@a3
    goto :goto_2
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 6814
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    const-string/jumbo v0, "mSafeMode="

    #@6
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeMode:Z

    #@b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@e
    .line 6815
    const-string/jumbo v0, " mSystemReady="

    #@11
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    #@16
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@19
    .line 6816
    const-string/jumbo v0, " mSystemBooted="

    #@1c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    #@21
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@24
    .line 6817
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@27
    const-string/jumbo v0, "mLidState="

    #@2a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2d
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    #@2f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@32
    .line 6818
    const-string/jumbo v0, " mLidOpenRotation="

    #@35
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@38
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidOpenRotation:I

    #@3a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@3d
    .line 6819
    const-string/jumbo v0, " mCameraLensCoverState="

    #@40
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@43
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    #@45
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@48
    .line 6820
    const-string/jumbo v0, " mHdmiPlugged="

    #@4b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4e
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    #@50
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@53
    .line 6821
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    #@55
    if-nez v0, :cond_0

    #@57
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    #@59
    if-eqz v0, :cond_12

    #@5b
    .line 6823
    :cond_0
    :goto_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5e
    const-string/jumbo v0, "mLastSystemUiFlags=0x"

    #@61
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@64
    .line 6824
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    #@66
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@69
    move-result-object v0

    #@6a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6d
    .line 6825
    const-string/jumbo v0, " mResettingSystemUiFlags=0x"

    #@70
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@73
    .line 6826
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    #@75
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@78
    move-result-object v0

    #@79
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7c
    .line 6827
    const-string/jumbo v0, " mForceClearedSystemUiFlags=0x"

    #@7f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@82
    .line 6828
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    #@84
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@87
    move-result-object v0

    #@88
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8b
    .line 6830
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    #@8d
    if-eqz v0, :cond_2

    #@8f
    .line 6831
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@92
    const-string/jumbo v0, "mLastFocusNeedsMenu="

    #@95
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@98
    .line 6832
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    #@9a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@9d
    .line 6834
    :cond_2
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a0
    const-string/jumbo v0, "mWakeGestureEnabledSetting="

    #@a3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a6
    .line 6835
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    #@a8
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@ab
    .line 6837
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ae
    const-string/jumbo v0, "mSupportAutoRotation="

    #@b1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b4
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    #@b6
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@b9
    .line 6838
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@bc
    const-string/jumbo v0, "mUiMode="

    #@bf
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c2
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    #@c4
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@c7
    .line 6839
    const-string/jumbo v0, " mDockMode="

    #@ca
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@cd
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    #@cf
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@d2
    .line 6840
    const-string/jumbo v0, " mCarDockRotation="

    #@d5
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d8
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockRotation:I

    #@da
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@dd
    .line 6841
    const-string/jumbo v0, " mDeskDockRotation="

    #@e0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e3
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockRotation:I

    #@e5
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@e8
    .line 6842
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@eb
    const-string/jumbo v0, "mUserRotationMode="

    #@ee
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    #@f3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@f6
    .line 6843
    const-string/jumbo v0, " mUserRotation="

    #@f9
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fc
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    #@fe
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@101
    .line 6844
    const-string/jumbo v0, " mAllowAllRotations="

    #@104
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@107
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    #@109
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@10c
    .line 6845
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10f
    const-string/jumbo v0, "mCurrentAppOrientation="

    #@112
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@115
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    #@117
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@11a
    .line 6846
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11d
    const-string/jumbo v0, "mCarDockEnablesAccelerometer="

    #@120
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@123
    .line 6847
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    #@125
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@128
    .line 6848
    const-string/jumbo v0, " mDeskDockEnablesAccelerometer="

    #@12b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12e
    .line 6849
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    #@130
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@133
    .line 6850
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@136
    const-string/jumbo v0, "mLidKeyboardAccessibility="

    #@139
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13c
    .line 6851
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    #@13e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@141
    .line 6852
    const-string/jumbo v0, " mLidNavigationAccessibility="

    #@144
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@147
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    #@149
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@14c
    .line 6853
    const-string/jumbo v0, " mLidControlsSleep="

    #@14f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@152
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    #@154
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@157
    .line 6854
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15a
    .line 6855
    const-string/jumbo v0, "mShortPressOnPowerBehavior="

    #@15d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@160
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    #@162
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@165
    .line 6856
    const-string/jumbo v0, " mLongPressOnPowerBehavior="

    #@168
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16b
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    #@16d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@170
    .line 6857
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@173
    .line 6858
    const-string/jumbo v0, "mDoublePressOnPowerBehavior="

    #@176
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@179
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    #@17b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@17e
    .line 6859
    const-string/jumbo v0, " mTriplePressOnPowerBehavior="

    #@181
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@184
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    #@186
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@189
    .line 6860
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18c
    const-string/jumbo v0, "mHasSoftInput="

    #@18f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@192
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    #@194
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@197
    .line 6861
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19a
    const-string/jumbo v0, "mAwake="

    #@19d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    #@1a2
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@1a5
    .line 6862
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a8
    const-string/jumbo v0, "mScreenOnEarly="

    #@1ab
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1ae
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    #@1b0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@1b3
    .line 6863
    const-string/jumbo v0, " mScreenOnFully="

    #@1b6
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b9
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    #@1bb
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@1be
    .line 6864
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c1
    const-string/jumbo v0, "mKeyguardDrawComplete="

    #@1c4
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c7
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    #@1c9
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@1cc
    .line 6865
    const-string/jumbo v0, " mWindowManagerDrawComplete="

    #@1cf
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d2
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    #@1d4
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@1d7
    .line 6866
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1da
    const-string/jumbo v0, "mOrientationSensorEnabled="

    #@1dd
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e0
    .line 6867
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    #@1e2
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@1e5
    .line 6868
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e8
    const-string/jumbo v0, "mOverscanScreen=("

    #@1eb
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1ee
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    #@1f0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@1f3
    .line 6869
    const-string/jumbo v0, ","

    #@1f6
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f9
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    #@1fb
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@1fe
    .line 6870
    const-string/jumbo v0, ") "

    #@201
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@204
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    #@206
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@209
    .line 6871
    const-string/jumbo v0, "x"

    #@20c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20f
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    #@211
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@214
    .line 6872
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    #@216
    if-nez v0, :cond_3

    #@218
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    #@21a
    if-eqz v0, :cond_13

    #@21c
    .line 6874
    :cond_3
    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@21f
    const-string/jumbo v0, "mOverscan left="

    #@222
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@225
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    #@227
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@22a
    .line 6875
    const-string/jumbo v0, " top="

    #@22d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@230
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    #@232
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@235
    .line 6876
    const-string/jumbo v0, " right="

    #@238
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@23b
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    #@23d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@240
    .line 6877
    const-string/jumbo v0, " bottom="

    #@243
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@246
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    #@248
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@24b
    .line 6879
    :cond_4
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@24e
    const-string/jumbo v0, "mRestrictedOverscanScreen=("

    #@251
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@254
    .line 6880
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    #@256
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@259
    .line 6881
    const-string/jumbo v0, ","

    #@25c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@25f
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    #@261
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@264
    .line 6882
    const-string/jumbo v0, ") "

    #@267
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26a
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    #@26c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@26f
    .line 6883
    const-string/jumbo v0, "x"

    #@272
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@275
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    #@277
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@27a
    .line 6884
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@27d
    const-string/jumbo v0, "mUnrestrictedScreen=("

    #@280
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@283
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@285
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@288
    .line 6885
    const-string/jumbo v0, ","

    #@28b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@28e
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@290
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@293
    .line 6886
    const-string/jumbo v0, ") "

    #@296
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@299
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    #@29b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@29e
    .line 6887
    const-string/jumbo v0, "x"

    #@2a1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2a4
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    #@2a6
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@2a9
    .line 6888
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2ac
    const-string/jumbo v0, "mRestrictedScreen=("

    #@2af
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2b2
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    #@2b4
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@2b7
    .line 6889
    const-string/jumbo v0, ","

    #@2ba
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2bd
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    #@2bf
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@2c2
    .line 6890
    const-string/jumbo v0, ") "

    #@2c5
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2c8
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    #@2ca
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@2cd
    .line 6891
    const-string/jumbo v0, "x"

    #@2d0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2d3
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    #@2d5
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@2d8
    .line 6892
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2db
    const-string/jumbo v0, "mStableFullscreen=("

    #@2de
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2e1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenLeft:I

    #@2e3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@2e6
    .line 6893
    const-string/jumbo v0, ","

    #@2e9
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2ec
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenTop:I

    #@2ee
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@2f1
    .line 6894
    const-string/jumbo v0, ")-("

    #@2f4
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2f7
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenRight:I

    #@2f9
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@2fc
    .line 6895
    const-string/jumbo v0, ","

    #@2ff
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@302
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenBottom:I

    #@304
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@307
    const-string/jumbo v0, ")"

    #@30a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@30d
    .line 6896
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@310
    const-string/jumbo v0, "mStable=("

    #@313
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@316
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    #@318
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@31b
    .line 6897
    const-string/jumbo v0, ","

    #@31e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@321
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    #@323
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@326
    .line 6898
    const-string/jumbo v0, ")-("

    #@329
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@32c
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    #@32e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@331
    .line 6899
    const-string/jumbo v0, ","

    #@334
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@337
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    #@339
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@33c
    const-string/jumbo v0, ")"

    #@33f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@342
    .line 6900
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@345
    const-string/jumbo v0, "mSystem=("

    #@348
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@34b
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemLeft:I

    #@34d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@350
    .line 6901
    const-string/jumbo v0, ","

    #@353
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@356
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemTop:I

    #@358
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@35b
    .line 6902
    const-string/jumbo v0, ")-("

    #@35e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@361
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemRight:I

    #@363
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@366
    .line 6903
    const-string/jumbo v0, ","

    #@369
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@36c
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBottom:I

    #@36e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@371
    const-string/jumbo v0, ")"

    #@374
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@377
    .line 6904
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@37a
    const-string/jumbo v0, "mCur=("

    #@37d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@380
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    #@382
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@385
    .line 6905
    const-string/jumbo v0, ","

    #@388
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@38b
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    #@38d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@390
    .line 6906
    const-string/jumbo v0, ")-("

    #@393
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@396
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    #@398
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@39b
    .line 6907
    const-string/jumbo v0, ","

    #@39e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3a1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    #@3a3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@3a6
    const-string/jumbo v0, ")"

    #@3a9
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3ac
    .line 6908
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3af
    const-string/jumbo v0, "mContent=("

    #@3b2
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3b5
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    #@3b7
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@3ba
    .line 6909
    const-string/jumbo v0, ","

    #@3bd
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    #@3c2
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@3c5
    .line 6910
    const-string/jumbo v0, ")-("

    #@3c8
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3cb
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    #@3cd
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@3d0
    .line 6911
    const-string/jumbo v0, ","

    #@3d3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3d6
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    #@3d8
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@3db
    const-string/jumbo v0, ")"

    #@3de
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3e1
    .line 6912
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3e4
    const-string/jumbo v0, "mVoiceContent=("

    #@3e7
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3ea
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    #@3ec
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@3ef
    .line 6913
    const-string/jumbo v0, ","

    #@3f2
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3f5
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    #@3f7
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@3fa
    .line 6914
    const-string/jumbo v0, ")-("

    #@3fd
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@400
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    #@402
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@405
    .line 6915
    const-string/jumbo v0, ","

    #@408
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@40b
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    #@40d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@410
    const-string/jumbo v0, ")"

    #@413
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@416
    .line 6916
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@419
    const-string/jumbo v0, "mDock=("

    #@41c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@41f
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    #@421
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@424
    .line 6917
    const-string/jumbo v0, ","

    #@427
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@42a
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    #@42c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@42f
    .line 6918
    const-string/jumbo v0, ")-("

    #@432
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@435
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    #@437
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@43a
    .line 6919
    const-string/jumbo v0, ","

    #@43d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@440
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    #@442
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@445
    const-string/jumbo v0, ")"

    #@448
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@44b
    .line 6920
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@44e
    const-string/jumbo v0, "mDockLayer="

    #@451
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@454
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLayer:I

    #@456
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@459
    .line 6921
    const-string/jumbo v0, " mStatusBarLayer="

    #@45c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@45f
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarLayer:I

    #@461
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@464
    .line 6922
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@467
    const-string/jumbo v0, "mShowingLockscreen="

    #@46a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@46d
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingLockscreen:Z

    #@46f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@472
    .line 6923
    const-string/jumbo v0, " mShowingDream="

    #@475
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@478
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    #@47a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@47d
    .line 6924
    const-string/jumbo v0, " mDreamingLockscreen="

    #@480
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@483
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingLockscreen:Z

    #@485
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@488
    .line 6925
    const-string/jumbo v0, " mDreamingSleepToken="

    #@48b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@48e
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    #@490
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@493
    .line 6926
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    #@495
    if-eqz v0, :cond_5

    #@497
    .line 6927
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@49a
    const-string/jumbo v0, "mLastInputMethodWindow="

    #@49d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4a0
    .line 6928
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    #@4a2
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@4a5
    .line 6930
    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    #@4a7
    if-eqz v0, :cond_6

    #@4a9
    .line 6931
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4ac
    const-string/jumbo v0, "mLastInputMethodTargetWindow="

    #@4af
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4b2
    .line 6932
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    #@4b4
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@4b7
    .line 6934
    :cond_6
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@4b9
    if-eqz v0, :cond_7

    #@4bb
    .line 6935
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4be
    const-string/jumbo v0, "mStatusBar="

    #@4c1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4c4
    .line 6936
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@4c6
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@4c9
    const-string/jumbo v0, " isStatusBarKeyguard="

    #@4cc
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4cf
    .line 6937
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    #@4d2
    move-result v0

    #@4d3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@4d6
    .line 6939
    :cond_7
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@4d8
    if-eqz v0, :cond_8

    #@4da
    .line 6940
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4dd
    const-string/jumbo v0, "mNavigationBar="

    #@4e0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4e3
    .line 6941
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@4e5
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@4e8
    .line 6943
    :cond_8
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    #@4ea
    if-eqz v0, :cond_9

    #@4ec
    .line 6944
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4ef
    const-string/jumbo v0, "mFocusedWindow="

    #@4f2
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4f5
    .line 6945
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    #@4f7
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@4fa
    .line 6947
    :cond_9
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    #@4fc
    if-eqz v0, :cond_a

    #@4fe
    .line 6948
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@501
    const-string/jumbo v0, "mFocusedApp="

    #@504
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@507
    .line 6949
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    #@509
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@50c
    .line 6951
    :cond_a
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    #@50e
    if-eqz v0, :cond_b

    #@510
    .line 6952
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@513
    const-string/jumbo v0, "mWinDismissingKeyguard="

    #@516
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@519
    .line 6953
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    #@51b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@51e
    .line 6955
    :cond_b
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@520
    if-eqz v0, :cond_c

    #@522
    .line 6956
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@525
    const-string/jumbo v0, "mTopFullscreenOpaqueWindowState="

    #@528
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@52b
    .line 6957
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@52d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@530
    .line 6959
    :cond_c
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@532
    if-eqz v0, :cond_d

    #@534
    .line 6960
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@537
    const-string/jumbo v0, "mTopFullscreenOpaqueOrDimmingWindowState="

    #@53a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@53d
    .line 6961
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@53f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@542
    .line 6963
    :cond_d
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    #@544
    if-eqz v0, :cond_e

    #@546
    .line 6964
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@549
    const-string/jumbo v0, "mForcingShowNavBar="

    #@54c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@54f
    .line 6965
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    #@551
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@554
    const-string/jumbo v0, "mForcingShowNavBarLayer="

    #@557
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@55a
    .line 6966
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBarLayer:I

    #@55c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@55f
    .line 6968
    :cond_e
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@562
    const-string/jumbo v0, "mTopIsFullscreen="

    #@565
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@568
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    #@56a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@56d
    .line 6969
    const-string/jumbo v0, " mHideLockScreen="

    #@570
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@573
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    #@575
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@578
    .line 6970
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@57b
    const-string/jumbo v0, "mForceStatusBar="

    #@57e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@581
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    #@583
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@586
    .line 6971
    const-string/jumbo v0, " mForceStatusBarFromKeyguard="

    #@589
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@58c
    .line 6972
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    #@58e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@591
    .line 6973
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@594
    const-string/jumbo v0, "mDismissKeyguard="

    #@597
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@59a
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    #@59c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@59f
    .line 6974
    const-string/jumbo v0, " mWinDismissingKeyguard="

    #@5a2
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5a5
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    #@5a7
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@5aa
    .line 6975
    const-string/jumbo v0, " mHomePressed="

    #@5ad
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5b0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomePressed:Z

    #@5b2
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@5b5
    .line 6976
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5b8
    const-string/jumbo v0, "mAllowLockscreenWhenOn="

    #@5bb
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5be
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    #@5c0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@5c3
    .line 6977
    const-string/jumbo v0, " mLockScreenTimeout="

    #@5c6
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5c9
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    #@5cb
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@5ce
    .line 6978
    const-string/jumbo v0, " mLockScreenTimerActive="

    #@5d1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5d4
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    #@5d6
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@5d9
    .line 6979
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5dc
    const-string/jumbo v0, "mEndcallBehavior="

    #@5df
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5e2
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    #@5e4
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@5e7
    .line 6980
    const-string/jumbo v0, " mIncallPowerBehavior="

    #@5ea
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5ed
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    #@5ef
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@5f2
    .line 6981
    const-string/jumbo v0, " mLongPressOnHomeBehavior="

    #@5f5
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5f8
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    #@5fa
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@5fd
    .line 6982
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@600
    const-string/jumbo v0, "mLandscapeRotation="

    #@603
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@606
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    #@608
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@60b
    .line 6983
    const-string/jumbo v0, " mSeascapeRotation="

    #@60e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@611
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    #@613
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@616
    .line 6984
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@619
    const-string/jumbo v0, "mPortraitRotation="

    #@61c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@61f
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    #@621
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@624
    .line 6985
    const-string/jumbo v0, " mUpsideDownRotation="

    #@627
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@62a
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    #@62c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@62f
    .line 6986
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@632
    const-string/jumbo v0, "mDemoHdmiRotation="

    #@635
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@638
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotation:I

    #@63a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@63d
    .line 6987
    const-string/jumbo v0, " mDemoHdmiRotationLock="

    #@640
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@643
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    #@645
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@648
    .line 6988
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@64b
    const-string/jumbo v0, "mUndockedHdmiRotation="

    #@64e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@651
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUndockedHdmiRotation:I

    #@653
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@656
    .line 6990
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    #@658
    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/GlobalKeyManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@65b
    .line 6991
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@65d
    invoke-virtual {v0, p2, p1}, Lcom/android/server/policy/StatusBarController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@660
    .line 6992
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@662
    invoke-virtual {v0, p2, p1}, Lcom/android/server/policy/BarController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@665
    .line 6993
    invoke-static {p1, p2}, Lcom/android/server/policy/PolicyControl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@668
    .line 6995
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    #@66a
    if-eqz v0, :cond_f

    #@66c
    .line 6996
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    #@66e
    invoke-virtual {v0, p2, p1}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@671
    .line 6998
    :cond_f
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    #@673
    if-eqz v0, :cond_10

    #@675
    .line 6999
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    #@677
    invoke-virtual {v0, p2, p1}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@67a
    .line 7001
    :cond_10
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    #@67c
    if-eqz v0, :cond_11

    #@67e
    .line 7002
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    #@680
    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/BurnInProtectionHelper;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@683
    .line 6813
    :cond_11
    return-void

    #@684
    .line 6822
    :cond_12
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    #@686
    if-eqz v0, :cond_1

    #@688
    goto/16 :goto_0

    #@68a
    .line 6873
    :cond_13
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    #@68c
    if-nez v0, :cond_3

    #@68e
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    #@690
    if-eqz v0, :cond_4

    #@692
    goto/16 :goto_1
.end method

.method public enableKeyguard(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 5693
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5694
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setKeyguardEnabled(Z)V

    #@9
    .line 5692
    :cond_0
    return-void
.end method

.method public enableScreenAfterBoot()V
    .locals 1

    #@0
    .prologue
    .line 6265
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->readLidState()V

    #@3
    .line 6266
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->applyLidSwitchState()V

    #@6
    .line 6267
    const/4 v0, 0x1

    #@7
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    #@a
    .line 6264
    return-void
.end method

.method public exitKeyguardSecurely(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
    .locals 1
    .param p1, "callback"    # Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    #@0
    .prologue
    .line 5701
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5702
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    #@9
    .line 5700
    :cond_0
    return-void
.end method

.method public finishLayoutLw()V
    .locals 0

    #@0
    .prologue
    .line 4325
    return-void
.end method

.method public finishPostLayoutPolicyLw()I
    .locals 12

    #@0
    .prologue
    const/16 v11, 0xf

    #@2
    const/4 v10, 0x0

    #@3
    const/4 v9, 0x1

    #@4
    const/4 v8, 0x0

    #@5
    .line 4484
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    #@7
    if-eqz v5, :cond_0

    #@9
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@b
    if-eqz v5, :cond_0

    #@d
    .line 4485
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    #@f
    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    #@12
    move-result-object v5

    #@13
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@15
    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    #@18
    move-result-object v6

    #@19
    if-eq v5, v6, :cond_0

    #@1b
    .line 4486
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    #@1e
    move-result v5

    #@1f
    .line 4484
    if-eqz v5, :cond_0

    #@21
    .line 4490
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    #@23
    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@26
    move-result-object v5

    #@27
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@29
    const/high16 v7, 0x100000

    #@2b
    or-int/2addr v6, v7

    #@2c
    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@2e
    .line 4491
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@30
    invoke-interface {v5, v8}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    #@33
    .line 4492
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    #@35
    iput-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@37
    .line 4495
    :cond_0
    const/4 v0, 0x0

    #@38
    .line 4496
    .local v0, "changes":I
    const/4 v4, 0x0

    #@39
    .line 4498
    .local v4, "topIsFullscreen":Z
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@3b
    if-eqz v5, :cond_c

    #@3d
    .line 4499
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@3f
    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@42
    move-result-object v2

    #@43
    .line 4506
    :goto_0
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    #@45
    if-nez v5, :cond_d

    #@47
    .line 4507
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingLockscreen:Z

    #@49
    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingLockscreen:Z

    #@4b
    .line 4508
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepTokenNeeded:Z

    #@4d
    if-eqz v5, :cond_1

    #@4f
    .line 4509
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepTokenNeeded:Z

    #@51
    .line 4510
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@53
    invoke-virtual {v5, v11, v8, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@56
    move-result-object v5

    #@57
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    #@5a
    .line 4519
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@5c
    if-eqz v5, :cond_6

    #@5e
    .line 4523
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarTransparent:Z

    #@60
    if-eqz v5, :cond_2

    #@62
    .line 4524
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    #@64
    if-eqz v5, :cond_e

    #@66
    .line 4523
    :cond_2
    const/4 v3, 0x0

    #@67
    .line 4526
    .local v3, "shouldBeTransparent":Z
    :goto_2
    if-nez v3, :cond_10

    #@69
    .line 4527
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@6b
    invoke-virtual {v5, v8}, Lcom/android/server/policy/StatusBarController;->setShowTransparent(Z)V

    #@6e
    .line 4531
    :cond_3
    :goto_3
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    #@70
    if-nez v5, :cond_4

    #@72
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    #@74
    if-nez v5, :cond_4

    #@76
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarTransparent:Z

    #@78
    if-eqz v5, :cond_12

    #@7a
    .line 4533
    :cond_4
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@7c
    invoke-virtual {v5, v9}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    #@7f
    move-result v5

    #@80
    if-eqz v5, :cond_5

    #@82
    .line 4534
    const/4 v0, 0x1

    #@83
    .line 4537
    :cond_5
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    #@85
    if-eqz v5, :cond_11

    #@87
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@89
    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    #@8c
    move-result v4

    #@8d
    .line 4539
    .end local v4    # "topIsFullscreen":Z
    :goto_4
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    #@8f
    if-eqz v5, :cond_6

    #@91
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@93
    invoke-virtual {v5}, Lcom/android/server/policy/StatusBarController;->isTransientShowing()Z

    #@96
    move-result v5

    #@97
    if-eqz v5, :cond_6

    #@99
    .line 4540
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@9b
    .line 4541
    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    #@9d
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    #@9f
    .line 4540
    invoke-virtual {v5, v8, v6, v7}, Lcom/android/server/policy/StatusBarController;->updateVisibilityLw(ZII)I

    #@a2
    .line 4577
    .end local v3    # "shouldBeTransparent":Z
    :cond_6
    :goto_5
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    #@a4
    if-eq v5, v4, :cond_8

    #@a6
    .line 4578
    if-nez v4, :cond_7

    #@a8
    .line 4580
    or-int/lit8 v0, v0, 0x1

    #@aa
    .line 4582
    :cond_7
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    #@ac
    .line 4587
    :cond_8
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@ae
    if-eqz v5, :cond_a

    #@b0
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@b2
    if-eqz v5, :cond_a

    #@b4
    .line 4590
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    #@b6
    if-eqz v5, :cond_9

    #@b8
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    #@ba
    if-eqz v5, :cond_17

    #@bc
    .line 4605
    :cond_9
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    #@be
    if-eqz v5, :cond_19

    #@c0
    .line 4606
    iput-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z

    #@c2
    .line 4607
    iput-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    #@c4
    .line 4608
    invoke-direct {p0, v9}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(Z)Z

    #@c7
    move-result v5

    #@c8
    if-eqz v5, :cond_a

    #@ca
    .line 4609
    or-int/lit8 v0, v0, 0x7

    #@cc
    .line 4641
    :cond_a
    :goto_6
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    #@cf
    move-result v5

    #@d0
    const v6, -0x3fff7ffa

    #@d3
    and-int/2addr v5, v6

    #@d4
    if-eqz v5, :cond_b

    #@d6
    .line 4644
    or-int/lit8 v0, v0, 0x1

    #@d8
    .line 4648
    :cond_b
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    #@db
    .line 4649
    return v0

    #@dc
    .line 4500
    .restart local v4    # "topIsFullscreen":Z
    :cond_c
    const/4 v2, 0x0

    #@dd
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    goto/16 :goto_0

    #@df
    .line 4513
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_d
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepTokenNeeded:Z

    #@e1
    if-nez v5, :cond_1

    #@e3
    .line 4514
    iput-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepTokenNeeded:Z

    #@e5
    .line 4515
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@e7
    invoke-virtual {v5, v11, v9, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@ea
    move-result-object v5

    #@eb
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    #@ee
    goto/16 :goto_1

    #@f0
    .line 4525
    :cond_e
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    #@f2
    if-eqz v5, :cond_f

    #@f4
    const/4 v3, 0x0

    #@f5
    .restart local v3    # "shouldBeTransparent":Z
    goto/16 :goto_2

    #@f7
    .end local v3    # "shouldBeTransparent":Z
    :cond_f
    const/4 v3, 0x1

    #@f8
    .restart local v3    # "shouldBeTransparent":Z
    goto/16 :goto_2

    #@fa
    .line 4528
    :cond_10
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@fc
    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    #@ff
    move-result v5

    #@100
    if-nez v5, :cond_3

    #@102
    .line 4529
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@104
    invoke-virtual {v5, v9}, Lcom/android/server/policy/StatusBarController;->setShowTransparent(Z)V

    #@107
    goto/16 :goto_3

    #@109
    .line 4537
    :cond_11
    const/4 v4, 0x0

    #@10a
    goto :goto_4

    #@10b
    .line 4543
    :cond_12
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@10d
    if-eqz v5, :cond_6

    #@10f
    .line 4544
    invoke-static {v10, v2}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    #@112
    move-result v1

    #@113
    .line 4551
    .local v1, "fl":I
    and-int/lit16 v5, v1, 0x400

    #@115
    if-nez v5, :cond_13

    #@117
    .line 4552
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    #@119
    and-int/lit8 v5, v5, 0x4

    #@11b
    if-eqz v5, :cond_14

    #@11d
    const/4 v4, 0x1

    #@11e
    .line 4557
    :goto_7
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@120
    invoke-virtual {v5}, Lcom/android/server/policy/StatusBarController;->isTransientShowing()Z

    #@123
    move-result v5

    #@124
    if-eqz v5, :cond_15

    #@126
    .line 4558
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@128
    invoke-virtual {v5, v9}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    #@12b
    move-result v5

    #@12c
    if-eqz v5, :cond_6

    #@12e
    .line 4559
    const/4 v0, 0x1

    #@12f
    goto/16 :goto_5

    #@131
    .line 4551
    :cond_13
    const/4 v4, 0x1

    #@132
    goto :goto_7

    #@133
    .line 4552
    :cond_14
    const/4 v4, 0x0

    #@134
    goto :goto_7

    #@135
    .line 4561
    :cond_15
    if-eqz v4, :cond_16

    #@137
    .line 4563
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@139
    invoke-virtual {v5, v8}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    #@13c
    move-result v5

    #@13d
    if-eqz v5, :cond_6

    #@13f
    .line 4564
    const/4 v0, 0x1

    #@140
    goto/16 :goto_5

    #@142
    .line 4570
    :cond_16
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@144
    invoke-virtual {v5, v9}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    #@147
    move-result v5

    #@148
    if-eqz v5, :cond_6

    #@14a
    .line 4571
    const/4 v0, 0x1

    #@14b
    goto/16 :goto_5

    #@14d
    .line 4591
    .end local v1    # "fl":I
    .end local v3    # "shouldBeTransparent":Z
    .end local v4    # "topIsFullscreen":Z
    :cond_17
    iput-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z

    #@14f
    .line 4592
    invoke-direct {p0, v9}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(Z)Z

    #@152
    move-result v5

    #@153
    if-eqz v5, :cond_18

    #@155
    .line 4593
    or-int/lit8 v0, v0, 0x7

    #@157
    .line 4597
    :cond_18
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@159
    invoke-virtual {v5}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    #@15c
    move-result v5

    #@15d
    if-eqz v5, :cond_a

    #@15f
    .line 4598
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@161
    new-instance v6, Lcom/android/server/policy/PhoneWindowManager$16;

    #@163
    invoke-direct {v6, p0}, Lcom/android/server/policy/PhoneWindowManager$16;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@166
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@169
    goto/16 :goto_6

    #@16b
    .line 4613
    :cond_19
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    #@16d
    if-eqz v5, :cond_1b

    #@16f
    .line 4614
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z

    #@171
    .line 4615
    invoke-direct {p0, v8}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(Z)Z

    #@174
    move-result v5

    #@175
    if-eqz v5, :cond_1a

    #@177
    .line 4616
    or-int/lit8 v0, v0, 0x7

    #@179
    .line 4620
    :cond_1a
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    #@17b
    if-ne v5, v9, :cond_a

    #@17d
    .line 4622
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@17f
    new-instance v6, Lcom/android/server/policy/PhoneWindowManager$17;

    #@181
    invoke-direct {v6, p0}, Lcom/android/server/policy/PhoneWindowManager$17;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@184
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@187
    goto/16 :goto_6

    #@189
    .line 4630
    :cond_1b
    iput-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    #@18b
    .line 4631
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mSecureDismissingKeyguard:Z

    #@18d
    .line 4632
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z

    #@18f
    .line 4633
    invoke-direct {p0, v8}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(Z)Z

    #@192
    move-result v5

    #@193
    if-eqz v5, :cond_a

    #@195
    .line 4634
    or-int/lit8 v0, v0, 0x7

    #@197
    goto/16 :goto_6
.end method

.method public finishedGoingToSleep(I)V
    .locals 3
    .param p1, "why"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 5467
    const v0, 0x11170

    #@4
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    #@7
    .line 5469
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@9
    const-string/jumbo v1, "screen_timeout"

    #@c
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    #@e
    div-int/lit16 v2, v2, 0x3e8

    #@10
    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    #@13
    .line 5473
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@15
    monitor-enter v1

    #@16
    .line 5474
    const/4 v0, 0x0

    #@17
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    #@19
    .line 5475
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    #@1c
    .line 5476
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    #@1f
    .line 5477
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    monitor-exit v1

    #@23
    .line 5479
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@25
    if-eqz v0, :cond_0

    #@27
    .line 5480
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@29
    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onFinishedGoingToSleep(I)V

    #@2c
    .line 5466
    :cond_0
    return-void

    #@2d
    .line 5473
    :catchall_0
    move-exception v0

    #@2e
    monitor-exit v1

    #@2f
    throw v0
.end method

.method public finishedWakingUp()V
    .locals 0

    #@0
    .prologue
    .line 5509
    return-void
.end method

.method public focusChangedLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I
    .locals 3
    .param p1, "lastFocus"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "newFocus"    # Landroid/view/WindowManagerPolicy$WindowState;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 4693
    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    #@3
    .line 4694
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    #@6
    move-result v0

    #@7
    const v1, -0x3fff7ffa

    #@a
    and-int/2addr v0, v1

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 4697
    const/4 v0, 0x1

    #@e
    return v0

    #@f
    .line 4699
    :cond_0
    return v2
.end method

.method public getConfigDisplayHeight(III)I
    .locals 2
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I

    #@0
    .prologue
    .line 2198
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->getNonDecorDisplayHeight(III)I

    #@3
    move-result v0

    #@4
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    #@6
    sub-int/2addr v0, v1

    #@7
    return v0
.end method

.method public getConfigDisplayWidth(III)I
    .locals 1
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I

    #@0
    .prologue
    .line 2189
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->getNonDecorDisplayWidth(III)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getContentRectLw(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "r"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 3732
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    #@2
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    #@4
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    #@6
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    #@8
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    #@b
    .line 3731
    return-void
.end method

.method public getInputMethodWindowVisibleHeightLw()I
    .locals 2

    #@0
    .prologue
    .line 6771
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    #@2
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    #@4
    sub-int/2addr v0, v1

    #@5
    return v0
.end method

.method public getInsetHintLw(Landroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 12
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "displayRotation"    # I
    .param p3, "outContentInsets"    # Landroid/graphics/Rect;
    .param p4, "outStableInsets"    # Landroid/graphics/Rect;
    .param p5, "outOutsets"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 3392
    const/4 v8, 0x0

    #@1
    invoke-static {v8, p1}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    #@4
    move-result v3

    #@5
    .line 3393
    .local v3, "fl":I
    const/4 v8, 0x0

    #@6
    invoke-static {v8, p1}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    #@9
    move-result v6

    #@a
    .line 3394
    .local v6, "sysuiVis":I
    iget v8, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    #@c
    or-int v5, v6, v8

    #@e
    .line 3396
    .local v5, "systemUiVisibility":I
    if-eqz p5, :cond_1

    #@10
    invoke-direct {p0, p1, v3}, Lcom/android/server/policy/PhoneWindowManager;->shouldUseOutsets(Landroid/view/WindowManager$LayoutParams;I)Z

    #@13
    move-result v7

    #@14
    .line 3397
    :goto_0
    if-eqz v7, :cond_0

    #@16
    .line 3398
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@18
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1b
    move-result-object v8

    #@1c
    invoke-static {v8}, Lcom/android/internal/util/ScreenShapeHelper;->getWindowOutsetBottomPx(Landroid/content/res/Resources;)I

    #@1f
    move-result v4

    #@20
    .line 3399
    .local v4, "outset":I
    if-lez v4, :cond_0

    #@22
    .line 3400
    if-nez p2, :cond_2

    #@24
    .line 3401
    move-object/from16 v0, p5

    #@26
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    #@28
    add-int/2addr v8, v4

    #@29
    move-object/from16 v0, p5

    #@2b
    iput v8, v0, Landroid/graphics/Rect;->bottom:I

    #@2d
    .line 3412
    .end local v4    # "outset":I
    :cond_0
    :goto_1
    const v8, 0x10100

    #@30
    and-int/2addr v8, v3

    #@31
    .line 3413
    const v9, 0x10100

    #@34
    .line 3412
    if-ne v8, v9, :cond_b

    #@36
    .line 3415
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    #@39
    move-result v8

    #@3a
    if-eqz v8, :cond_5

    #@3c
    .line 3416
    and-int/lit16 v8, v5, 0x200

    #@3e
    if-eqz v8, :cond_5

    #@40
    .line 3417
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@42
    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    #@44
    add-int v2, v8, v9

    #@46
    .line 3418
    .local v2, "availRight":I
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@48
    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    #@4a
    add-int v1, v8, v9

    #@4c
    .line 3423
    .local v1, "availBottom":I
    :goto_2
    and-int/lit16 v8, v5, 0x100

    #@4e
    if-eqz v8, :cond_7

    #@50
    .line 3424
    and-int/lit16 v8, v3, 0x400

    #@52
    if-eqz v8, :cond_6

    #@54
    .line 3425
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenLeft:I

    #@56
    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenTop:I

    #@58
    .line 3426
    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenRight:I

    #@5a
    sub-int v10, v2, v10

    #@5c
    .line 3427
    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenBottom:I

    #@5e
    sub-int v11, v1, v11

    #@60
    .line 3425
    invoke-virtual {p3, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    #@63
    .line 3443
    :goto_3
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    #@65
    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    #@67
    .line 3444
    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    #@69
    sub-int v10, v2, v10

    #@6b
    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    #@6d
    sub-int v11, v1, v11

    #@6f
    .line 3443
    move-object/from16 v0, p4

    #@71
    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    #@74
    .line 3445
    return-void

    #@75
    .line 3396
    .end local v1    # "availBottom":I
    .end local v2    # "availRight":I
    :cond_1
    const/4 v7, 0x0

    #@76
    .local v7, "useOutsets":Z
    goto :goto_0

    #@77
    .line 3402
    .end local v7    # "useOutsets":Z
    .restart local v4    # "outset":I
    :cond_2
    const/4 v8, 0x1

    #@78
    if-ne p2, v8, :cond_3

    #@7a
    .line 3403
    move-object/from16 v0, p5

    #@7c
    iget v8, v0, Landroid/graphics/Rect;->right:I

    #@7e
    add-int/2addr v8, v4

    #@7f
    move-object/from16 v0, p5

    #@81
    iput v8, v0, Landroid/graphics/Rect;->right:I

    #@83
    goto :goto_1

    #@84
    .line 3404
    :cond_3
    const/4 v8, 0x2

    #@85
    if-ne p2, v8, :cond_4

    #@87
    .line 3405
    move-object/from16 v0, p5

    #@89
    iget v8, v0, Landroid/graphics/Rect;->top:I

    #@8b
    add-int/2addr v8, v4

    #@8c
    move-object/from16 v0, p5

    #@8e
    iput v8, v0, Landroid/graphics/Rect;->top:I

    #@90
    goto :goto_1

    #@91
    .line 3406
    :cond_4
    const/4 v8, 0x3

    #@92
    if-ne p2, v8, :cond_0

    #@94
    .line 3407
    move-object/from16 v0, p5

    #@96
    iget v8, v0, Landroid/graphics/Rect;->left:I

    #@98
    add-int/2addr v8, v4

    #@99
    move-object/from16 v0, p5

    #@9b
    iput v8, v0, Landroid/graphics/Rect;->left:I

    #@9d
    goto :goto_1

    #@9e
    .line 3420
    .end local v4    # "outset":I
    :cond_5
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    #@a0
    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    #@a2
    add-int v2, v8, v9

    #@a4
    .line 3421
    .restart local v2    # "availRight":I
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    #@a6
    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    #@a8
    add-int v1, v8, v9

    #@aa
    .restart local v1    # "availBottom":I
    goto :goto_2

    #@ab
    .line 3429
    :cond_6
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    #@ad
    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    #@af
    .line 3430
    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    #@b1
    sub-int v10, v2, v10

    #@b3
    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    #@b5
    sub-int v11, v1, v11

    #@b7
    .line 3429
    invoke-virtual {p3, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    #@ba
    goto :goto_3

    #@bb
    .line 3432
    :cond_7
    and-int/lit16 v8, v3, 0x400

    #@bd
    if-nez v8, :cond_8

    #@bf
    const/high16 v8, 0x2000000

    #@c1
    and-int/2addr v8, v3

    #@c2
    if-eqz v8, :cond_9

    #@c4
    .line 3433
    :cond_8
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    #@c7
    goto :goto_3

    #@c8
    .line 3434
    :cond_9
    and-int/lit16 v8, v5, 0x404

    #@ca
    if-nez v8, :cond_a

    #@cc
    .line 3436
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    #@ce
    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    #@d0
    .line 3437
    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    #@d2
    sub-int v10, v2, v10

    #@d4
    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    #@d6
    sub-int v11, v1, v11

    #@d8
    .line 3436
    invoke-virtual {p3, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    #@db
    goto :goto_3

    #@dc
    .line 3439
    :cond_a
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    #@de
    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    #@e0
    .line 3440
    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    #@e2
    sub-int v10, v2, v10

    #@e4
    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    #@e6
    sub-int v11, v1, v11

    #@e8
    .line 3439
    invoke-virtual {p3, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    #@eb
    goto/16 :goto_3

    #@ed
    .line 3447
    .end local v1    # "availBottom":I
    .end local v2    # "availRight":I
    :cond_b
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    #@f0
    .line 3448
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->setEmpty()V

    #@f3
    .line 3391
    return-void
.end method

.method public getMaxWallpaperLayer()I
    .locals 1

    #@0
    .prologue
    .line 2160
    const/16 v0, 0x7d0

    #@2
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->windowTypeToLayerLw(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getNonDecorDisplayHeight(III)I
    .locals 1
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I

    #@0
    .prologue
    .line 2177
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 2180
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    if-ge p1, p2, :cond_1

    #@a
    .line 2181
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    #@c
    aget v0, v0, p3

    #@e
    sub-int v0, p2, v0

    #@10
    return v0

    #@11
    .line 2184
    :cond_1
    return p2
.end method

.method public getNonDecorDisplayWidth(III)I
    .locals 1
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I

    #@0
    .prologue
    .line 2165
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2168
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    if-le p1, p2, :cond_0

    #@a
    .line 2169
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    #@c
    aget v0, v0, p3

    #@e
    sub-int v0, p1, v0

    #@10
    return v0

    #@11
    .line 2172
    :cond_0
    return p1
.end method

.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    #@0
    .prologue
    .line 791
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 792
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 794
    const-string/jumbo v0, "statusbar"

    #@a
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@d
    move-result-object v0

    #@e
    .line 793
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    #@14
    .line 796
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    monitor-exit v1

    #@17
    return-object v0

    #@18
    .line 791
    :catchall_0
    move-exception v0

    #@19
    monitor-exit v1

    #@1a
    throw v0
.end method

.method public getSystemDecorLayerLw()I
    .locals 1

    #@0
    .prologue
    .line 3719
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@6
    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 3720
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@e
    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    #@11
    move-result v0

    #@12
    return v0

    #@13
    .line 3723
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@15
    if-eqz v0, :cond_1

    #@17
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@19
    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_1

    #@1f
    .line 3724
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@21
    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    #@24
    move-result v0

    #@25
    return v0

    #@26
    .line 3727
    :cond_1
    const/4 v0, 0x0

    #@27
    return v0
.end method

.method getTelecommService()Landroid/telecom/TelecomManager;
    .locals 2

    #@0
    .prologue
    .line 2603
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "telecom"

    #@5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/telecom/TelecomManager;

    #@b
    return-object v0
.end method

.method public getUserRotationMode()I
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 5983
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v1

    #@7
    .line 5984
    const-string/jumbo v2, "accelerometer_rotation"

    #@a
    const/4 v3, -0x2

    #@b
    .line 5983
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    :goto_0
    return v0

    #@12
    .line 5986
    :cond_0
    const/4 v0, 0x1

    #@13
    goto :goto_0
.end method

.method public getWinShowWhenLockedLw()Landroid/view/WindowManagerPolicy$WindowState;
    .locals 1

    #@0
    .prologue
    .line 2232
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    #@2
    return-object v0
.end method

.method goHome()Z
    .locals 19

    #@0
    .prologue
    .line 6403
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 6404
    const-string/jumbo v1, "WindowManager"

    #@9
    const-string/jumbo v2, "Not going home because user setup is in progress."

    #@c
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 6405
    const/4 v1, 0x0

    #@10
    return v1

    #@11
    .line 6419
    :cond_0
    :try_start_0
    const-string/jumbo v1, "persist.sys.uts-test-mode"

    #@14
    const/4 v2, 0x0

    #@15
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@18
    move-result v1

    #@19
    const/4 v2, 0x1

    #@1a
    if-ne v1, v2, :cond_2

    #@1c
    .line 6421
    const-string/jumbo v1, "WindowManager"

    #@1f
    const-string/jumbo v2, "UTS-TEST-MODE"

    #@22
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 6438
    :cond_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@28
    move-result-object v5

    #@29
    .line 6439
    move-object/from16 v0, p0

    #@2b
    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    #@2d
    .line 6440
    move-object/from16 v0, p0

    #@2f
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    #@31
    move-object/from16 v0, p0

    #@33
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@35
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@3c
    move-result-object v9

    #@3d
    .line 6439
    const/4 v6, 0x0

    #@3e
    const/4 v7, 0x0

    #@3f
    .line 6441
    const/4 v10, 0x0

    #@40
    const/4 v11, 0x0

    #@41
    const/4 v12, 0x0

    #@42
    .line 6442
    const/4 v13, 0x1

    #@43
    .line 6443
    const/4 v14, 0x0

    #@44
    const/4 v15, 0x0

    #@45
    const/16 v16, -0x2

    #@47
    .line 6438
    invoke-interface/range {v5 .. v16}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    #@4a
    move-result v18

    #@4b
    .line 6444
    .local v18, "result":I
    const/4 v1, 0x1

    #@4c
    move/from16 v0, v18

    #@4e
    if-ne v0, v1, :cond_3

    #@50
    .line 6445
    const/4 v1, 0x0

    #@51
    return v1

    #@52
    .line 6423
    .end local v18    # "result":I
    :cond_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@55
    move-result-object v1

    #@56
    invoke-interface {v1}, Landroid/app/IActivityManager;->stopAppSwitches()V

    #@59
    .line 6424
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows()V

    #@5c
    .line 6425
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    #@5f
    move-result-object v4

    #@60
    .line 6426
    .local v4, "dock":Landroid/content/Intent;
    if-eqz v4, :cond_1

    #@62
    .line 6427
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@65
    move-result-object v1

    #@66
    .line 6429
    move-object/from16 v0, p0

    #@68
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@6a
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6d
    move-result-object v2

    #@6e
    invoke-virtual {v4, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@71
    move-result-object v5

    #@72
    .line 6428
    const/4 v2, 0x0

    #@73
    const/4 v3, 0x0

    #@74
    .line 6430
    const/4 v6, 0x0

    #@75
    const/4 v7, 0x0

    #@76
    const/4 v8, 0x0

    #@77
    .line 6431
    const/4 v9, 0x1

    #@78
    .line 6432
    const/4 v10, 0x0

    #@79
    const/4 v11, 0x0

    #@7a
    const/4 v12, -0x2

    #@7b
    .line 6427
    invoke-interface/range {v1 .. v12}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7e
    move-result v18

    #@7f
    .line 6433
    .restart local v18    # "result":I
    const/4 v1, 0x1

    #@80
    move/from16 v0, v18

    #@82
    if-ne v0, v1, :cond_1

    #@84
    .line 6434
    const/4 v1, 0x0

    #@85
    return v1

    #@86
    .line 6447
    .end local v4    # "dock":Landroid/content/Intent;
    .end local v18    # "result":I
    :catch_0
    move-exception v17

    #@87
    .line 6451
    :cond_3
    const/4 v1, 0x1

    #@88
    return v1
.end method

.method public hasNavigationBar()Z
    .locals 1

    #@0
    .prologue
    .line 6760
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    #@2
    return v0
.end method

.method public hideBootMessages()V
    .locals 2

    #@0
    .prologue
    .line 6159
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@2
    const/16 v1, 0xb

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@7
    .line 6158
    return-void
.end method

.method public inKeyguardRestrictedKeyInputMode()Z
    .locals 1

    #@0
    .prologue
    .line 5733
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 5734
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@8
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@0
    .prologue
    .line 1313
    move-object/from16 v0, p1

    #@2
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@4
    .line 1314
    move-object/from16 v0, p2

    #@6
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    #@8
    .line 1315
    move-object/from16 v0, p3

    #@a
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@c
    .line 1316
    const-class v1, Landroid/view/WindowManagerInternal;

    #@e
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroid/view/WindowManagerInternal;

    #@14
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    #@16
    .line 1317
    const-class v1, Landroid/app/ActivityManagerInternal;

    #@18
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Landroid/app/ActivityManagerInternal;

    #@1e
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    #@20
    .line 1318
    const-class v1, Landroid/service/dreams/DreamManagerInternal;

    #@22
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@25
    move-result-object v1

    #@26
    check-cast v1, Landroid/service/dreams/DreamManagerInternal;

    #@28
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    #@2a
    .line 1319
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@2c
    const-string/jumbo v2, "appops"

    #@2f
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@32
    move-result-object v1

    #@33
    check-cast v1, Landroid/app/AppOpsManager;

    #@35
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    #@37
    .line 1322
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3a
    move-result-object v1

    #@3b
    .line 1323
    const v2, 0x1120098

    #@3e
    .line 1322
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@41
    move-result v9

    #@42
    .line 1326
    .local v9, "burnInProtectionEnabled":Z
    const-string/jumbo v1, "persist.debug.force_burn_in"

    #@45
    const/4 v2, 0x0

    #@46
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@49
    move-result v8

    #@4a
    .line 1327
    .local v8, "burnInProtectionDevMode":Z
    if-nez v9, :cond_0

    #@4c
    if-eqz v8, :cond_1

    #@4e
    .line 1333
    :cond_0
    if-eqz v8, :cond_5

    #@50
    .line 1334
    const/4 v3, -0x8

    #@51
    .line 1335
    .local v3, "minHorizontal":I
    const/16 v4, 0x8

    #@53
    .line 1336
    .local v4, "maxHorizontal":I
    const/4 v5, -0x8

    #@54
    .line 1337
    .local v5, "minVertical":I
    const/4 v6, -0x4

    #@55
    .line 1338
    .local v6, "maxVertical":I
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isRoundWindow()Z

    #@58
    move-result v1

    #@59
    if-eqz v1, :cond_4

    #@5b
    const/4 v7, 0x6

    #@5c
    .line 1352
    .local v7, "maxRadius":I
    :goto_0
    new-instance v1, Lcom/android/server/policy/BurnInProtectionHelper;

    #@5e
    move-object/from16 v2, p1

    #@60
    invoke-direct/range {v1 .. v7}, Lcom/android/server/policy/BurnInProtectionHelper;-><init>(Landroid/content/Context;IIIII)V

    #@63
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    #@65
    .line 1356
    .end local v3    # "minHorizontal":I
    .end local v4    # "maxHorizontal":I
    .end local v5    # "minVertical":I
    .end local v6    # "maxVertical":I
    .end local v7    # "maxRadius":I
    :cond_1
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    #@67
    const/4 v2, 0x0

    #@68
    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;-><init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;)V

    #@6b
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@6d
    .line 1357
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    #@6f
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@71
    iget-object v14, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@73
    invoke-direct {v1, p0, v2, v14}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;Landroid/os/Handler;)V

    #@76
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    #@78
    .line 1358
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    #@7a
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@7c
    iget-object v14, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@7e
    invoke-direct {v1, p0, v2, v14}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;Landroid/os/Handler;)V

    #@81
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    #@83
    .line 1360
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    #@85
    invoke-interface/range {p2 .. p2}, Landroid/view/IWindowManager;->getRotation()I

    #@88
    move-result v2

    #@89
    invoke-virtual {v1, v2}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->setCurrentRotation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8c
    .line 1362
    :goto_1
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    #@8e
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@90
    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/os/Handler;)V

    #@93
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    #@95
    .line 1363
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    #@97
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;->observe()V

    #@9a
    .line 1364
    new-instance v1, Lcom/android/server/policy/ShortcutManager;

    #@9c
    move-object/from16 v0, p1

    #@9e
    invoke-direct {v1, v0}, Lcom/android/server/policy/ShortcutManager;-><init>(Landroid/content/Context;)V

    #@a1
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutManager:Lcom/android/server/policy/ShortcutManager;

    #@a3
    .line 1365
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@a6
    move-result-object v1

    #@a7
    .line 1366
    const v2, 0x10e0046

    #@aa
    .line 1365
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@ad
    move-result v1

    #@ae
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    #@b0
    .line 1367
    new-instance v1, Landroid/content/Intent;

    #@b2
    const-string/jumbo v2, "android.intent.action.MAIN"

    #@b5
    const/4 v14, 0x0

    #@b6
    invoke-direct {v1, v2, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@b9
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    #@bb
    .line 1368
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    #@bd
    const-string/jumbo v2, "android.intent.category.HOME"

    #@c0
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@c3
    .line 1369
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    #@c5
    const/high16 v2, 0x10200000

    #@c7
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@ca
    .line 1371
    new-instance v1, Landroid/content/Intent;

    #@cc
    const-string/jumbo v2, "android.intent.action.MAIN"

    #@cf
    const/4 v14, 0x0

    #@d0
    invoke-direct {v1, v2, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@d3
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    #@d5
    .line 1372
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    #@d7
    const-string/jumbo v2, "android.intent.category.CAR_DOCK"

    #@da
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@dd
    .line 1373
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    #@df
    const/high16 v2, 0x10200000

    #@e1
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@e4
    .line 1375
    new-instance v1, Landroid/content/Intent;

    #@e6
    const-string/jumbo v2, "android.intent.action.MAIN"

    #@e9
    const/4 v14, 0x0

    #@ea
    invoke-direct {v1, v2, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@ed
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    #@ef
    .line 1376
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    #@f1
    const-string/jumbo v2, "android.intent.category.DESK_DOCK"

    #@f4
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@f7
    .line 1377
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    #@f9
    const/high16 v2, 0x10200000

    #@fb
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@fe
    .line 1380
    const-string/jumbo v1, "power"

    #@101
    move-object/from16 v0, p1

    #@103
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@106
    move-result-object v1

    #@107
    check-cast v1, Landroid/os/PowerManager;

    #@109
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@10b
    .line 1381
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@10d
    .line 1382
    const-string/jumbo v2, "PhoneWindowManager.mBroadcastWakeLock"

    #@110
    .line 1381
    const/4 v14, 0x1

    #@111
    invoke-virtual {v1, v14, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@114
    move-result-object v1

    #@115
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    #@117
    .line 1383
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@119
    .line 1384
    const-string/jumbo v2, "PhoneWindowManager.mPowerKeyWakeLock"

    #@11c
    .line 1383
    const/4 v14, 0x1

    #@11d
    invoke-virtual {v1, v14, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@120
    move-result-object v1

    #@121
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    #@123
    .line 1385
    const-string/jumbo v1, "1"

    #@126
    const-string/jumbo v2, "ro.debuggable"

    #@129
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@12c
    move-result-object v2

    #@12d
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@130
    move-result v1

    #@131
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    #@133
    .line 1386
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@135
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@138
    move-result-object v1

    #@139
    .line 1387
    const v2, 0x1120033

    #@13c
    .line 1386
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@13f
    move-result v1

    #@140
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    #@142
    .line 1389
    const v1, 0x10e003e

    #@145
    .line 1388
    invoke-direct {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->readRotation(I)I

    #@148
    move-result v1

    #@149
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidOpenRotation:I

    #@14b
    .line 1391
    const v1, 0x10e0043

    #@14e
    .line 1390
    invoke-direct {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->readRotation(I)I

    #@151
    move-result v1

    #@152
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockRotation:I

    #@154
    .line 1393
    const v1, 0x10e0041

    #@157
    .line 1392
    invoke-direct {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->readRotation(I)I

    #@15a
    move-result v1

    #@15b
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockRotation:I

    #@15d
    .line 1395
    const v1, 0x10e0045

    #@160
    .line 1394
    invoke-direct {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->readRotation(I)I

    #@163
    move-result v1

    #@164
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUndockedHdmiRotation:I

    #@166
    .line 1396
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@168
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@16b
    move-result-object v1

    #@16c
    .line 1397
    const v2, 0x1120038

    #@16f
    .line 1396
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@172
    move-result v1

    #@173
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    #@175
    .line 1398
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@177
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@17a
    move-result-object v1

    #@17b
    .line 1399
    const v2, 0x1120037

    #@17e
    .line 1398
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@181
    move-result v1

    #@182
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    #@184
    .line 1400
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@186
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@189
    move-result-object v1

    #@18a
    .line 1401
    const v2, 0x10e003f

    #@18d
    .line 1400
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@190
    move-result v1

    #@191
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    #@193
    .line 1402
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@195
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@198
    move-result-object v1

    #@199
    .line 1403
    const v2, 0x10e0040

    #@19c
    .line 1402
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@19f
    move-result v1

    #@1a0
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    #@1a2
    .line 1404
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@1a4
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1a7
    move-result-object v1

    #@1a8
    .line 1405
    const v2, 0x1120036

    #@1ab
    .line 1404
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@1ae
    move-result v1

    #@1af
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    #@1b1
    .line 1406
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@1b3
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1b6
    move-result-object v1

    #@1b7
    .line 1407
    const v2, 0x1120041

    #@1ba
    .line 1406
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@1bd
    move-result v1

    #@1be
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    #@1c0
    .line 1409
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@1c2
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1c5
    move-result-object v1

    #@1c6
    .line 1410
    const v2, 0x112002b

    #@1c9
    .line 1409
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@1cc
    move-result v1

    #@1cd
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    #@1cf
    .line 1411
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    #@1d1
    if-nez v1, :cond_6

    #@1d3
    .line 1412
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@1d5
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1d8
    move-result-object v1

    #@1d9
    .line 1413
    const v2, 0x112002a

    #@1dc
    .line 1412
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@1df
    move-result v1

    #@1e0
    .line 1411
    :goto_2
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromPowerKey:Z

    #@1e2
    .line 1414
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@1e4
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1e7
    move-result-object v1

    #@1e8
    .line 1415
    const v2, 0x112002c

    #@1eb
    .line 1414
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@1ee
    move-result v1

    #@1ef
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotion:Z

    #@1f1
    .line 1416
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@1f3
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1f6
    move-result-object v1

    #@1f7
    .line 1417
    const v2, 0x112002d

    #@1fa
    .line 1416
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@1fd
    move-result v1

    #@1fe
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotionWhenNotDreaming:Z

    #@200
    .line 1418
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@202
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@205
    move-result-object v1

    #@206
    .line 1419
    const v2, 0x1120029

    #@209
    .line 1418
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@20c
    move-result v1

    #@20d
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromCameraLens:Z

    #@20f
    .line 1420
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@211
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@214
    move-result-object v1

    #@215
    .line 1421
    const v2, 0x112002e

    #@218
    .line 1420
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@21b
    move-result v1

    #@21c
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromLidSwitch:Z

    #@21e
    .line 1422
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@220
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@223
    move-result-object v1

    #@224
    .line 1423
    const v2, 0x1120028

    #@227
    .line 1422
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@22a
    move-result v1

    #@22b
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromWakeGesture:Z

    #@22d
    .line 1425
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@22f
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@232
    move-result-object v1

    #@233
    .line 1426
    const v2, 0x1120031

    #@236
    .line 1425
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@239
    move-result v1

    #@23a
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoToSleepOnButtonPressTheaterMode:Z

    #@23c
    .line 1428
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@23e
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@241
    move-result-object v1

    #@242
    .line 1429
    const v2, 0x1120032

    #@245
    .line 1428
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@248
    move-result v1

    #@249
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    #@24b
    .line 1431
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@24d
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@250
    move-result-object v1

    #@251
    .line 1432
    const v2, 0x10e0049

    #@254
    .line 1431
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@257
    move-result v1

    #@258
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    #@25a
    .line 1433
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@25c
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@25f
    move-result-object v1

    #@260
    .line 1434
    const v2, 0x10e0048

    #@263
    .line 1433
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@266
    move-result v1

    #@267
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    #@269
    .line 1435
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@26b
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@26e
    move-result-object v1

    #@26f
    .line 1436
    const v2, 0x10e004a

    #@272
    .line 1435
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@275
    move-result v1

    #@276
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    #@278
    .line 1437
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@27a
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@27d
    move-result-object v1

    #@27e
    .line 1438
    const v2, 0x10e004b

    #@281
    .line 1437
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@284
    move-result v1

    #@285
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    #@287
    .line 1439
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@289
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@28c
    move-result-object v1

    #@28d
    .line 1440
    const v2, 0x10e004c

    #@290
    .line 1439
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@293
    move-result v1

    #@294
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    #@296
    .line 1442
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@298
    invoke-static {v1}, Landroid/media/AudioSystem;->getPlatformType(Landroid/content/Context;)I

    #@29b
    move-result v1

    #@29c
    const/4 v2, 0x2

    #@29d
    if-ne v1, v2, :cond_7

    #@29f
    const/4 v1, 0x1

    #@2a0
    :goto_3
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    #@2a2
    .line 1444
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->readConfigurationDependentBehaviors()V

    #@2a5
    .line 1447
    const-string/jumbo v1, "accessibility"

    #@2a8
    .line 1446
    move-object/from16 v0, p1

    #@2aa
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@2ad
    move-result-object v1

    #@2ae
    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    #@2b0
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@2b2
    .line 1450
    new-instance v11, Landroid/content/IntentFilter;

    #@2b4
    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    #@2b7
    .line 1451
    .local v11, "filter":Landroid/content/IntentFilter;
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    #@2b9
    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@2bc
    .line 1452
    sget-object v1, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    #@2be
    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@2c1
    .line 1453
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    #@2c3
    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@2c6
    .line 1454
    sget-object v1, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    #@2c8
    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@2cb
    .line 1455
    const-string/jumbo v1, "android.intent.action.DOCK_EVENT"

    #@2ce
    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@2d1
    .line 1456
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    #@2d3
    move-object/from16 v0, p1

    #@2d5
    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@2d8
    move-result-object v12

    #@2d9
    .line 1457
    .local v12, "intent":Landroid/content/Intent;
    if-eqz v12, :cond_2

    #@2db
    .line 1459
    const-string/jumbo v1, "android.intent.extra.DOCK_STATE"

    #@2de
    .line 1460
    const/4 v2, 0x0

    #@2df
    .line 1459
    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@2e2
    move-result v1

    #@2e3
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    #@2e5
    .line 1464
    :cond_2
    new-instance v11, Landroid/content/IntentFilter;

    #@2e7
    .end local v11    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    #@2ea
    .line 1465
    .restart local v11    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.DREAMING_STARTED"

    #@2ed
    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@2f0
    .line 1466
    const-string/jumbo v1, "android.intent.action.DREAMING_STOPPED"

    #@2f3
    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@2f6
    .line 1467
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamReceiver:Landroid/content/BroadcastReceiver;

    #@2f8
    move-object/from16 v0, p1

    #@2fa
    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@2fd
    .line 1470
    new-instance v11, Landroid/content/IntentFilter;

    #@2ff
    .end local v11    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    #@302
    invoke-direct {v11, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@305
    .line 1471
    .restart local v11    # "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    #@307
    move-object/from16 v0, p1

    #@309
    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@30c
    .line 1474
    new-instance v1, Lcom/android/server/policy/SystemGesturesPointerEventListener;

    #@30e
    .line 1475
    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$14;

    #@310
    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManager$14;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@313
    .line 1474
    move-object/from16 v0, p1

    #@315
    invoke-direct {v1, v0, v2}, Lcom/android/server/policy/SystemGesturesPointerEventListener;-><init>(Landroid/content/Context;Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;)V

    #@318
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    #@31a
    .line 1507
    new-instance v1, Lcom/android/server/policy/ImmersiveModeConfirmation;

    #@31c
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@31e
    invoke-direct {v1, v2}, Lcom/android/server/policy/ImmersiveModeConfirmation;-><init>(Landroid/content/Context;)V

    #@321
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    #@323
    .line 1508
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@325
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    #@327
    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    #@32a
    .line 1510
    const-string/jumbo v1, "vibrator"

    #@32d
    move-object/from16 v0, p1

    #@32f
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@332
    move-result-object v1

    #@333
    check-cast v1, Landroid/os/Vibrator;

    #@335
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    #@337
    .line 1511
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@339
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@33c
    move-result-object v1

    #@33d
    .line 1512
    const v2, 0x107001c

    #@340
    .line 1511
    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    #@343
    move-result-object v1

    #@344
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressVibePattern:[J

    #@346
    .line 1513
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@348
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@34b
    move-result-object v1

    #@34c
    .line 1514
    const v2, 0x107001d

    #@34f
    .line 1513
    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    #@352
    move-result-object v1

    #@353
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVirtualKeyVibePattern:[J

    #@355
    .line 1515
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@357
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@35a
    move-result-object v1

    #@35b
    .line 1516
    const v2, 0x107001e

    #@35e
    .line 1515
    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    #@361
    move-result-object v1

    #@362
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyboardTapVibePattern:[J

    #@364
    .line 1517
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@366
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@369
    move-result-object v1

    #@36a
    .line 1518
    const v2, 0x107001f

    #@36d
    .line 1517
    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    #@370
    move-result-object v1

    #@371
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mClockTickVibePattern:[J

    #@373
    .line 1519
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@375
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@378
    move-result-object v1

    #@379
    .line 1520
    const v2, 0x1070020

    #@37c
    .line 1519
    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    #@37f
    move-result-object v1

    #@380
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCalendarDateVibePattern:[J

    #@382
    .line 1521
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@384
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@387
    move-result-object v1

    #@388
    .line 1522
    const v2, 0x1070021

    #@38b
    .line 1521
    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    #@38e
    move-result-object v1

    #@38f
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    #@391
    .line 1523
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@393
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@396
    move-result-object v1

    #@397
    .line 1524
    const v2, 0x1070022

    #@39a
    .line 1523
    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    #@39d
    move-result-object v1

    #@39e
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    #@3a0
    .line 1525
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@3a2
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3a5
    move-result-object v1

    #@3a6
    .line 1526
    const v2, 0x1070024

    #@3a9
    .line 1525
    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    #@3ac
    move-result-object v1

    #@3ad
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContextClickVibePattern:[J

    #@3af
    .line 1528
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@3b1
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3b4
    move-result-object v1

    #@3b5
    .line 1529
    const v2, 0x1120026

    #@3b8
    .line 1528
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@3bb
    move-result v1

    #@3bc
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordEnabled:Z

    #@3be
    .line 1531
    new-instance v1, Lcom/android/server/policy/GlobalKeyManager;

    #@3c0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@3c2
    invoke-direct {v1, v2}, Lcom/android/server/policy/GlobalKeyManager;-><init>(Landroid/content/Context;)V

    #@3c5
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    #@3c7
    .line 1534
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->initializeHdmiState()V

    #@3ca
    .line 1537
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@3cc
    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    #@3cf
    move-result v1

    #@3d0
    if-nez v1, :cond_3

    #@3d2
    .line 1538
    const/4 v1, 0x2

    #@3d3
    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startedGoingToSleep(I)V

    #@3d6
    .line 1539
    const/4 v1, 0x2

    #@3d7
    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->finishedGoingToSleep(I)V

    #@3da
    .line 1542
    :cond_3
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    #@3dc
    .line 1543
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@3de
    invoke-virtual {v2}, Lcom/android/server/policy/StatusBarController;->getAppTransitionListener()Landroid/view/WindowManagerInternal$AppTransitionListener;

    #@3e1
    move-result-object v2

    #@3e2
    .line 1542
    invoke-virtual {v1, v2}, Landroid/view/WindowManagerInternal;->registerAppTransitionListener(Landroid/view/WindowManagerInternal$AppTransitionListener;)V

    #@3e5
    .line 1312
    return-void

    #@3e6
    .line 1338
    .end local v11    # "filter":Landroid/content/IntentFilter;
    .end local v12    # "intent":Landroid/content/Intent;
    .restart local v3    # "minHorizontal":I
    .restart local v4    # "maxHorizontal":I
    .restart local v5    # "minVertical":I
    .restart local v6    # "maxVertical":I
    :cond_4
    const/4 v7, -0x1

    #@3e7
    .restart local v7    # "maxRadius":I
    goto/16 :goto_0

    #@3e9
    .line 1340
    .end local v3    # "minHorizontal":I
    .end local v4    # "maxHorizontal":I
    .end local v5    # "minVertical":I
    .end local v6    # "maxVertical":I
    .end local v7    # "maxRadius":I
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3ec
    move-result-object v13

    #@3ed
    .line 1342
    .local v13, "resources":Landroid/content/res/Resources;
    const v1, 0x10e0093

    #@3f0
    .line 1341
    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@3f3
    move-result v3

    #@3f4
    .line 1344
    .restart local v3    # "minHorizontal":I
    const v1, 0x10e0094

    #@3f7
    .line 1343
    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@3fa
    move-result v4

    #@3fb
    .line 1346
    .restart local v4    # "maxHorizontal":I
    const v1, 0x10e0095

    #@3fe
    .line 1345
    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@401
    move-result v5

    #@402
    .line 1348
    .restart local v5    # "minVertical":I
    const v1, 0x10e0096

    #@405
    .line 1347
    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@408
    move-result v6

    #@409
    .line 1350
    .restart local v6    # "maxVertical":I
    const v1, 0x10e0092

    #@40c
    .line 1349
    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@40f
    move-result v7

    #@410
    .restart local v7    # "maxRadius":I
    goto/16 :goto_0

    #@412
    .line 1411
    .end local v3    # "minHorizontal":I
    .end local v4    # "maxHorizontal":I
    .end local v5    # "minVertical":I
    .end local v6    # "maxVertical":I
    .end local v7    # "maxRadius":I
    .end local v13    # "resources":Landroid/content/res/Resources;
    :cond_6
    const/4 v1, 0x1

    #@413
    goto/16 :goto_2

    #@415
    .line 1442
    :cond_7
    const/4 v1, 0x0

    #@416
    goto/16 :goto_3

    #@418
    .line 1361
    :catch_0
    move-exception v10

    #@419
    .local v10, "ex":Landroid/os/RemoteException;
    goto/16 :goto_1
.end method

.method initializeHdmiState()V
    .locals 13

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 4758
    const/4 v5, 0x0

    #@3
    .line 4760
    .local v5, "plugged":Z
    new-instance v8, Ljava/io/File;

    #@5
    const-string/jumbo v11, "/sys/devices/virtual/switch/hdmi/state"

    #@8
    invoke-direct {v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@b
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    #@e
    move-result v8

    #@f
    if-eqz v8, :cond_1

    #@11
    .line 4761
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    #@13
    const-string/jumbo v11, "DEVPATH=/devices/virtual/switch/hdmi"

    #@16
    invoke-virtual {v8, v11}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    #@19
    .line 4763
    const-string/jumbo v3, "/sys/class/switch/hdmi/state"

    #@1c
    .line 4764
    .local v3, "filename":Ljava/lang/String;
    const/4 v6, 0x0

    #@1d
    .line 4766
    .local v6, "reader":Ljava/io/FileReader;
    :try_start_0
    new-instance v7, Ljava/io/FileReader;

    #@1f
    const-string/jumbo v8, "/sys/class/switch/hdmi/state"

    #@22
    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 4767
    .end local v6    # "reader":Ljava/io/FileReader;
    .local v7, "reader":Ljava/io/FileReader;
    const/16 v8, 0xf

    #@27
    :try_start_1
    new-array v0, v8, [C

    #@29
    .line 4768
    .local v0, "buf":[C
    invoke-virtual {v7, v0}, Ljava/io/FileReader;->read([C)I

    #@2c
    move-result v4

    #@2d
    .line 4769
    .local v4, "n":I
    if-le v4, v10, :cond_0

    #@2f
    .line 4770
    new-instance v8, Ljava/lang/String;

    #@31
    add-int/lit8 v11, v4, -0x1

    #@33
    const/4 v12, 0x0

    #@34
    invoke-direct {v8, v0, v12, v11}, Ljava/lang/String;-><init>([CII)V

    #@37
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@3a
    move-result v8

    #@3b
    if-eqz v8, :cond_2

    #@3d
    const/4 v5, 0x1

    #@3e
    .line 4777
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    #@40
    .line 4779
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@43
    .line 4787
    .end local v0    # "buf":[C
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "n":I
    .end local v7    # "reader":Ljava/io/FileReader;
    :cond_1
    :goto_1
    if-eqz v5, :cond_4

    #@45
    move v8, v9

    #@46
    :goto_2
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    #@48
    .line 4788
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    #@4a
    if-eqz v8, :cond_5

    #@4c
    :goto_3
    invoke-virtual {p0, v9}, Lcom/android/server/policy/PhoneWindowManager;->setHdmiPlugged(Z)V

    #@4f
    .line 4757
    return-void

    #@50
    .line 4770
    .restart local v0    # "buf":[C
    .restart local v3    # "filename":Ljava/lang/String;
    .restart local v4    # "n":I
    .restart local v7    # "reader":Ljava/io/FileReader;
    :cond_2
    const/4 v5, 0x0

    #@51
    goto :goto_0

    #@52
    .line 4780
    :catch_0
    move-exception v1

    #@53
    .local v1, "ex":Ljava/io/IOException;
    goto :goto_1

    #@54
    .line 4774
    .end local v0    # "buf":[C
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v4    # "n":I
    .end local v7    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catch_1
    move-exception v2

    #@55
    .line 4775
    .end local v6    # "reader":Ljava/io/FileReader;
    .local v2, "ex":Ljava/lang/NumberFormatException;
    :goto_4
    :try_start_3
    const-string/jumbo v8, "WindowManager"

    #@58
    new-instance v11, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v12, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    #@60
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v11

    #@64
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v11

    #@68
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v11

    #@6c
    invoke-static {v8, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@6f
    .line 4777
    if-eqz v6, :cond_1

    #@71
    .line 4779
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    #@74
    goto :goto_1

    #@75
    .line 4780
    :catch_2
    move-exception v1

    #@76
    .restart local v1    # "ex":Ljava/io/IOException;
    goto :goto_1

    #@77
    .line 4772
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catch_3
    move-exception v1

    #@78
    .line 4773
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v1    # "ex":Ljava/io/IOException;
    :goto_5
    :try_start_5
    const-string/jumbo v8, "WindowManager"

    #@7b
    new-instance v11, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    const-string/jumbo v12, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    #@83
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v11

    #@87
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v11

    #@8b
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v11

    #@8f
    invoke-static {v8, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@92
    .line 4777
    if-eqz v6, :cond_1

    #@94
    .line 4779
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    #@97
    goto :goto_1

    #@98
    .line 4780
    :catch_4
    move-exception v1

    #@99
    goto :goto_1

    #@9a
    .line 4776
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    #@9b
    .line 4777
    :goto_6
    if-eqz v6, :cond_3

    #@9d
    .line 4779
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    #@a0
    .line 4776
    :cond_3
    :goto_7
    throw v8

    #@a1
    .line 4780
    :catch_5
    move-exception v1

    #@a2
    .restart local v1    # "ex":Ljava/io/IOException;
    goto :goto_7

    #@a3
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v3    # "filename":Ljava/lang/String;
    :cond_4
    move v8, v10

    #@a4
    .line 4787
    goto :goto_2

    #@a5
    :cond_5
    move v9, v10

    #@a6
    .line 4788
    goto :goto_3

    #@a7
    .line 4776
    .restart local v3    # "filename":Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/FileReader;
    :catchall_1
    move-exception v8

    #@a8
    move-object v6, v7

    #@a9
    .end local v7    # "reader":Ljava/io/FileReader;
    .local v6, "reader":Ljava/io/FileReader;
    goto :goto_6

    #@aa
    .line 4772
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v7    # "reader":Ljava/io/FileReader;
    :catch_6
    move-exception v1

    #@ab
    .restart local v1    # "ex":Ljava/io/IOException;
    move-object v6, v7

    #@ac
    .end local v7    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    goto :goto_5

    #@ad
    .line 4774
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v7    # "reader":Ljava/io/FileReader;
    :catch_7
    move-exception v2

    #@ae
    .restart local v2    # "ex":Ljava/lang/NumberFormatException;
    move-object v6, v7

    #@af
    .end local v7    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    goto :goto_4
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 45
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    #@0
    .prologue
    .line 2627
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    #@3
    move-result v28

    #@4
    .line 2628
    .local v28, "keyguardOn":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    #@7
    move-result v27

    #@8
    .line 2629
    .local v27, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@b
    move-result v34

    #@c
    .line 2630
    .local v34, "repeatCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    #@f
    move-result v30

    #@10
    .line 2631
    .local v30, "metaState":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    #@13
    move-result v24

    #@14
    .line 2632
    .local v24, "flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    #@17
    move-result v4

    #@18
    if-nez v4, :cond_2

    #@1a
    const/16 v21, 0x1

    #@1c
    .line 2633
    .local v21, "down":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    #@1f
    move-result v16

    #@20
    .line 2644
    .local v16, "canceled":Z
    move-object/from16 v0, p0

    #@22
    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordEnabled:Z

    #@24
    if-eqz v4, :cond_4

    #@26
    move/from16 v0, v24

    #@28
    and-int/lit16 v4, v0, 0x400

    #@2a
    if-nez v4, :cond_4

    #@2c
    .line 2645
    move-object/from16 v0, p0

    #@2e
    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    #@30
    if-eqz v4, :cond_0

    #@32
    move-object/from16 v0, p0

    #@34
    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    #@36
    if-eqz v4, :cond_3

    #@38
    .line 2653
    :cond_0
    const/16 v4, 0x19

    #@3a
    move/from16 v0, v27

    #@3c
    if-ne v0, v4, :cond_4

    #@3e
    .line 2654
    move-object/from16 v0, p0

    #@40
    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    #@42
    .line 2653
    if-eqz v4, :cond_4

    #@44
    .line 2655
    if-nez v21, :cond_1

    #@46
    .line 2656
    const/4 v4, 0x0

    #@47
    move-object/from16 v0, p0

    #@49
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    #@4b
    .line 2658
    :cond_1
    const-wide/16 v6, -0x1

    #@4d
    return-wide v6

    #@4e
    .line 2632
    .end local v16    # "canceled":Z
    .end local v21    # "down":Z
    :cond_2
    const/16 v21, 0x0

    #@50
    .restart local v21    # "down":Z
    goto :goto_0

    #@51
    .line 2646
    .restart local v16    # "canceled":Z
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@54
    move-result-wide v32

    #@55
    .line 2647
    .local v32, "now":J
    move-object/from16 v0, p0

    #@57
    iget-wide v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    #@59
    .line 2648
    const-wide/16 v8, 0x96

    #@5b
    .line 2647
    add-long v40, v6, v8

    #@5d
    .line 2649
    .local v40, "timeoutTime":J
    cmp-long v4, v32, v40

    #@5f
    if-gez v4, :cond_0

    #@61
    .line 2650
    sub-long v6, v40, v32

    #@63
    return-wide v6

    #@64
    .line 2664
    .end local v32    # "now":J
    .end local v40    # "timeoutTime":J
    :cond_4
    move-object/from16 v0, p0

    #@66
    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    #@68
    if-eqz v4, :cond_5

    #@6a
    invoke-static/range {v27 .. v27}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    #@6d
    move-result v4

    #@6e
    if-eqz v4, :cond_6

    #@70
    .line 2672
    :cond_5
    :goto_1
    const/4 v4, 0x3

    #@71
    move/from16 v0, v27

    #@73
    if-ne v0, v4, :cond_15

    #@75
    .line 2676
    if-nez v21, :cond_b

    #@77
    .line 2677
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPreloadRecentApps()V

    #@7a
    .line 2679
    const/4 v4, 0x0

    #@7b
    move-object/from16 v0, p0

    #@7d
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomePressed:Z

    #@7f
    .line 2680
    move-object/from16 v0, p0

    #@81
    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    #@83
    if-eqz v4, :cond_7

    #@85
    .line 2681
    const/4 v4, 0x0

    #@86
    move-object/from16 v0, p0

    #@88
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    #@8a
    .line 2682
    const-wide/16 v6, -0x1

    #@8c
    return-wide v6

    #@8d
    .line 2665
    :cond_6
    const/4 v4, 0x0

    #@8e
    move-object/from16 v0, p0

    #@90
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    #@92
    goto :goto_1

    #@93
    .line 2685
    :cond_7
    if-eqz v16, :cond_8

    #@95
    .line 2686
    const-string/jumbo v4, "WindowManager"

    #@98
    const-string/jumbo v6, "Ignoring HOME; event canceled."

    #@9b
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9e
    .line 2687
    const-wide/16 v6, -0x1

    #@a0
    return-wide v6

    #@a1
    .line 2693
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    #@a4
    move-result-object v39

    #@a5
    .line 2694
    .local v39, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v39, :cond_9

    #@a7
    invoke-virtual/range {v39 .. v39}, Landroid/telecom/TelecomManager;->isRinging()Z

    #@aa
    move-result v4

    #@ab
    if-eqz v4, :cond_9

    #@ad
    .line 2695
    const-string/jumbo v4, "WindowManager"

    #@b0
    const-string/jumbo v6, "Ignoring HOME; there\'s a ringing incoming call."

    #@b3
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@b6
    .line 2696
    const-wide/16 v6, -0x1

    #@b8
    return-wide v6

    #@b9
    .line 2700
    :cond_9
    move-object/from16 v0, p0

    #@bb
    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    #@bd
    if-eqz v4, :cond_a

    #@bf
    .line 2701
    move-object/from16 v0, p0

    #@c1
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@c3
    move-object/from16 v0, p0

    #@c5
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    #@c7
    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@ca
    .line 2702
    const/4 v4, 0x1

    #@cb
    move-object/from16 v0, p0

    #@cd
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapPending:Z

    #@cf
    .line 2703
    move-object/from16 v0, p0

    #@d1
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@d3
    move-object/from16 v0, p0

    #@d5
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    #@d7
    .line 2704
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    #@da
    move-result v7

    #@db
    int-to-long v8, v7

    #@dc
    .line 2703
    invoke-virtual {v4, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@df
    .line 2705
    const-wide/16 v6, -0x1

    #@e1
    return-wide v6

    #@e2
    .line 2708
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome()V

    #@e5
    .line 2709
    const-wide/16 v6, -0x1

    #@e7
    return-wide v6

    #@e8
    .line 2714
    .end local v39    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_b
    if-eqz p1, :cond_d

    #@ea
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@ed
    move-result-object v13

    #@ee
    .line 2715
    :goto_2
    if-eqz v13, :cond_10

    #@f0
    .line 2716
    iget v0, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    #@f2
    move/from16 v42, v0

    #@f4
    .line 2717
    .local v42, "type":I
    const/16 v4, 0x7ed

    #@f6
    move/from16 v0, v42

    #@f8
    if-eq v0, v4, :cond_c

    #@fa
    .line 2718
    const/16 v4, 0x7d9

    #@fc
    move/from16 v0, v42

    #@fe
    if-ne v0, v4, :cond_e

    #@100
    .line 2721
    :cond_c
    const-wide/16 v6, 0x0

    #@102
    return-wide v6

    #@103
    .line 2714
    .end local v42    # "type":I
    :cond_d
    const/4 v13, 0x0

    #@104
    .local v13, "attrs":Landroid/view/WindowManager$LayoutParams;
    goto :goto_2

    #@105
    .line 2719
    .end local v13    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v42    # "type":I
    :cond_e
    iget v4, v13, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@107
    and-int/lit16 v4, v4, 0x400

    #@109
    if-nez v4, :cond_c

    #@10b
    .line 2723
    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    #@10d
    array-length v0, v4

    #@10e
    move/from16 v43, v0

    #@110
    .line 2724
    .local v43, "typeCount":I
    const/16 v25, 0x0

    #@112
    .local v25, "i":I
    :goto_3
    move/from16 v0, v25

    #@114
    move/from16 v1, v43

    #@116
    if-ge v0, v1, :cond_10

    #@118
    .line 2725
    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    #@11a
    aget v4, v4, v25

    #@11c
    move/from16 v0, v42

    #@11e
    if-ne v0, v4, :cond_f

    #@120
    .line 2727
    const-wide/16 v6, -0x1

    #@122
    return-wide v6

    #@123
    .line 2724
    :cond_f
    add-int/lit8 v25, v25, 0x1

    #@125
    goto :goto_3

    #@126
    .line 2733
    .end local v25    # "i":I
    .end local v42    # "type":I
    .end local v43    # "typeCount":I
    :cond_10
    if-nez v34, :cond_14

    #@128
    .line 2734
    const/4 v4, 0x1

    #@129
    move-object/from16 v0, p0

    #@12b
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomePressed:Z

    #@12d
    .line 2735
    move-object/from16 v0, p0

    #@12f
    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapPending:Z

    #@131
    if-eqz v4, :cond_12

    #@133
    .line 2736
    const/4 v4, 0x0

    #@134
    move-object/from16 v0, p0

    #@136
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapPending:Z

    #@138
    .line 2737
    move-object/from16 v0, p0

    #@13a
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@13c
    move-object/from16 v0, p0

    #@13e
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    #@140
    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@143
    .line 2738
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->handleDoubleTapOnHome()V

    #@146
    .line 2748
    :cond_11
    :goto_4
    const-wide/16 v6, -0x1

    #@148
    return-wide v6

    #@149
    .line 2739
    :cond_12
    move-object/from16 v0, p0

    #@14b
    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    #@14d
    const/4 v6, 0x1

    #@14e
    if-eq v4, v6, :cond_13

    #@150
    .line 2740
    move-object/from16 v0, p0

    #@152
    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    #@154
    const/4 v6, 0x1

    #@155
    if-ne v4, v6, :cond_11

    #@157
    .line 2741
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->preloadRecentApps()V

    #@15a
    goto :goto_4

    #@15b
    .line 2743
    :cond_14
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    #@15e
    move-result v4

    #@15f
    and-int/lit16 v4, v4, 0x80

    #@161
    if-eqz v4, :cond_11

    #@163
    .line 2744
    if-nez v28, :cond_11

    #@165
    .line 2745
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    #@168
    move-result v4

    #@169
    move-object/from16 v0, p0

    #@16b
    invoke-direct {v0, v4}, Lcom/android/server/policy/PhoneWindowManager;->handleLongPressOnHome(I)V

    #@16e
    goto :goto_4

    #@16f
    .line 2749
    :cond_15
    const/16 v4, 0x52

    #@171
    move/from16 v0, v27

    #@173
    if-ne v0, v4, :cond_16

    #@175
    .line 2751
    const/16 v18, 0x1

    #@177
    .line 2753
    .local v18, "chordBug":I
    if-eqz v21, :cond_1d

    #@179
    if-nez v34, :cond_1d

    #@17b
    .line 2754
    move-object/from16 v0, p0

    #@17d
    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    #@17f
    if-eqz v4, :cond_1d

    #@181
    and-int/lit8 v4, v30, 0x1

    #@183
    const/4 v6, 0x1

    #@184
    if-ne v4, v6, :cond_1d

    #@186
    .line 2755
    new-instance v5, Landroid/content/Intent;

    #@188
    const-string/jumbo v4, "android.intent.action.BUG_REPORT"

    #@18b
    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@18e
    .line 2756
    .local v5, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@190
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@192
    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@194
    .line 2757
    const/4 v7, 0x0

    #@195
    const/4 v8, 0x0

    #@196
    const/4 v9, 0x0

    #@197
    const/4 v10, 0x0

    #@198
    const/4 v11, 0x0

    #@199
    const/4 v12, 0x0

    #@19a
    .line 2756
    invoke-virtual/range {v4 .. v12}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    #@19d
    .line 2758
    const-wide/16 v6, -0x1

    #@19f
    return-wide v6

    #@1a0
    .line 2776
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v18    # "chordBug":I
    :cond_16
    const/16 v4, 0x54

    #@1a2
    move/from16 v0, v27

    #@1a4
    if-ne v0, v4, :cond_19

    #@1a6
    .line 2777
    if-eqz v21, :cond_18

    #@1a8
    .line 2778
    if-nez v34, :cond_17

    #@1aa
    .line 2779
    const/4 v4, 0x1

    #@1ab
    move-object/from16 v0, p0

    #@1ad
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    #@1af
    .line 2780
    const/4 v4, 0x0

    #@1b0
    move-object/from16 v0, p0

    #@1b2
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    #@1b4
    .line 2789
    :cond_17
    const-wide/16 v6, 0x0

    #@1b6
    return-wide v6

    #@1b7
    .line 2783
    :cond_18
    const/4 v4, 0x0

    #@1b8
    move-object/from16 v0, p0

    #@1ba
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    #@1bc
    .line 2784
    move-object/from16 v0, p0

    #@1be
    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    #@1c0
    if-eqz v4, :cond_17

    #@1c2
    .line 2785
    const/4 v4, 0x0

    #@1c3
    move-object/from16 v0, p0

    #@1c5
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    #@1c7
    .line 2786
    const-wide/16 v6, -0x1

    #@1c9
    return-wide v6

    #@1ca
    .line 2790
    :cond_19
    const/16 v4, 0xbb

    #@1cc
    move/from16 v0, v27

    #@1ce
    if-ne v0, v4, :cond_1c

    #@1d0
    .line 2791
    if-nez v28, :cond_1a

    #@1d2
    .line 2792
    if-eqz v21, :cond_1b

    #@1d4
    if-nez v34, :cond_1b

    #@1d6
    .line 2793
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->preloadRecentApps()V

    #@1d9
    .line 2798
    :cond_1a
    :goto_5
    const-wide/16 v6, -0x1

    #@1db
    return-wide v6

    #@1dc
    .line 2794
    :cond_1b
    if-nez v21, :cond_1a

    #@1de
    .line 2795
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    #@1e1
    goto :goto_5

    #@1e2
    .line 2799
    :cond_1c
    const/16 v4, 0x2a

    #@1e4
    move/from16 v0, v27

    #@1e6
    if-ne v0, v4, :cond_1f

    #@1e8
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    #@1eb
    move-result v4

    #@1ec
    if-eqz v4, :cond_1f

    #@1ee
    .line 2800
    if-eqz v21, :cond_1d

    #@1f0
    .line 2801
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    #@1f3
    move-result-object v35

    #@1f4
    .line 2802
    .local v35, "service":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v35, :cond_1d

    #@1f6
    .line 2804
    :try_start_0
    invoke-interface/range {v35 .. v35}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f9
    .line 2905
    .end local v35    # "service":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_1d
    :goto_6
    move-object/from16 v0, p0

    #@1fb
    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    #@1fd
    if-eqz v4, :cond_33

    #@1ff
    .line 2906
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    #@202
    move-result-object v26

    #@203
    .line 2907
    .local v26, "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual/range {v26 .. v27}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    #@206
    move-result v4

    #@207
    if-eqz v4, :cond_33

    #@209
    .line 2908
    const/4 v4, 0x1

    #@20a
    move-object/from16 v0, p0

    #@20c
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    #@20e
    .line 2909
    const/4 v4, 0x0

    #@20f
    move-object/from16 v0, p0

    #@211
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    #@213
    .line 2910
    if-eqz v21, :cond_1e

    #@215
    if-nez v34, :cond_1e

    #@217
    if-eqz v28, :cond_31

    #@219
    .line 2926
    :cond_1e
    :goto_7
    const-wide/16 v6, -0x1

    #@21b
    return-wide v6

    #@21c
    .line 2805
    .end local v26    # "kcm":Landroid/view/KeyCharacterMap;
    .restart local v35    # "service":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v22

    #@21d
    .local v22, "e":Landroid/os/RemoteException;
    goto :goto_6

    #@21e
    .line 2810
    .end local v22    # "e":Landroid/os/RemoteException;
    .end local v35    # "service":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_1f
    const/16 v4, 0xdb

    #@220
    move/from16 v0, v27

    #@222
    if-ne v0, v4, :cond_24

    #@224
    .line 2811
    if-eqz v21, :cond_22

    #@226
    .line 2812
    if-nez v34, :cond_21

    #@228
    .line 2813
    const/4 v4, 0x0

    #@229
    move-object/from16 v0, p0

    #@22b
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mAssistKeyLongPressed:Z

    #@22d
    .line 2829
    :cond_20
    :goto_8
    const-wide/16 v6, -0x1

    #@22f
    return-wide v6

    #@230
    .line 2814
    :cond_21
    const/4 v4, 0x1

    #@231
    move/from16 v0, v34

    #@233
    if-ne v0, v4, :cond_20

    #@235
    .line 2815
    const/4 v4, 0x1

    #@236
    move-object/from16 v0, p0

    #@238
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mAssistKeyLongPressed:Z

    #@23a
    .line 2816
    if-nez v28, :cond_20

    #@23c
    .line 2817
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistLongPressAction()V

    #@23f
    goto :goto_8

    #@240
    .line 2821
    :cond_22
    move-object/from16 v0, p0

    #@242
    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mAssistKeyLongPressed:Z

    #@244
    if-eqz v4, :cond_23

    #@246
    .line 2822
    const/4 v4, 0x0

    #@247
    move-object/from16 v0, p0

    #@249
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mAssistKeyLongPressed:Z

    #@24b
    goto :goto_8

    #@24c
    .line 2824
    :cond_23
    if-nez v28, :cond_20

    #@24e
    .line 2825
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    #@251
    move-result v4

    #@252
    const/4 v6, 0x0

    #@253
    move-object/from16 v0, p0

    #@255
    invoke-direct {v0, v6, v4}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    #@258
    goto :goto_8

    #@259
    .line 2830
    :cond_24
    const/16 v4, 0xe7

    #@25b
    move/from16 v0, v27

    #@25d
    if-ne v0, v4, :cond_27

    #@25f
    .line 2831
    if-nez v21, :cond_1d

    #@261
    .line 2833
    if-nez v28, :cond_25

    #@263
    .line 2834
    new-instance v44, Landroid/content/Intent;

    #@265
    const-string/jumbo v4, "android.speech.action.WEB_SEARCH"

    #@268
    move-object/from16 v0, v44

    #@26a
    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@26d
    .line 2847
    .local v44, "voiceIntent":Landroid/content/Intent;
    :goto_9
    sget-object v4, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    #@26f
    move-object/from16 v0, p0

    #@271
    move-object/from16 v1, v44

    #@273
    invoke-direct {v0, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@276
    goto :goto_6

    #@277
    .line 2837
    .end local v44    # "voiceIntent":Landroid/content/Intent;
    :cond_25
    const-string/jumbo v4, "deviceidle"

    #@27a
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@27d
    move-result-object v4

    #@27e
    .line 2836
    invoke-static {v4}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    #@281
    move-result-object v19

    #@282
    .line 2838
    .local v19, "dic":Landroid/os/IDeviceIdleController;
    if-eqz v19, :cond_26

    #@284
    .line 2840
    :try_start_1
    const-string/jumbo v4, "voice-search"

    #@287
    move-object/from16 v0, v19

    #@289
    invoke-interface {v0, v4}, Landroid/os/IDeviceIdleController;->exitIdle(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4

    #@28c
    .line 2844
    :cond_26
    :goto_a
    new-instance v44, Landroid/content/Intent;

    #@28e
    const-string/jumbo v4, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    #@291
    move-object/from16 v0, v44

    #@293
    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@296
    .line 2845
    .restart local v44    # "voiceIntent":Landroid/content/Intent;
    const-string/jumbo v4, "android.speech.extras.EXTRA_SECURE"

    #@299
    const/4 v6, 0x1

    #@29a
    move-object/from16 v0, v44

    #@29c
    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@29f
    goto :goto_9

    #@2a0
    .line 2849
    .end local v19    # "dic":Landroid/os/IDeviceIdleController;
    .end local v44    # "voiceIntent":Landroid/content/Intent;
    :cond_27
    const/16 v4, 0x78

    #@2a2
    move/from16 v0, v27

    #@2a4
    if-ne v0, v4, :cond_29

    #@2a6
    .line 2850
    if-eqz v21, :cond_28

    #@2a8
    if-nez v34, :cond_28

    #@2aa
    .line 2851
    move-object/from16 v0, p0

    #@2ac
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@2ae
    move-object/from16 v0, p0

    #@2b0
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;

    #@2b2
    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@2b5
    .line 2853
    :cond_28
    const-wide/16 v6, -0x1

    #@2b7
    return-wide v6

    #@2b8
    .line 2854
    :cond_29
    const/16 v4, 0xdd

    #@2ba
    move/from16 v0, v27

    #@2bc
    if-eq v0, v4, :cond_2a

    #@2be
    .line 2855
    const/16 v4, 0xdc

    #@2c0
    move/from16 v0, v27

    #@2c2
    if-ne v0, v4, :cond_2e

    #@2c4
    .line 2856
    :cond_2a
    if-eqz v21, :cond_2c

    #@2c6
    .line 2857
    const/16 v4, 0xdd

    #@2c8
    move/from16 v0, v27

    #@2ca
    if-ne v0, v4, :cond_2d

    #@2cc
    const/16 v20, 0x1

    #@2ce
    .line 2861
    .local v20, "direction":I
    :goto_b
    move-object/from16 v0, p0

    #@2d0
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@2d2
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@2d5
    move-result-object v4

    #@2d6
    .line 2862
    const-string/jumbo v6, "screen_brightness_mode"

    #@2d9
    .line 2863
    const/4 v7, 0x0

    #@2da
    .line 2864
    const/4 v8, -0x3

    #@2db
    .line 2860
    invoke-static {v4, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@2de
    move-result v14

    #@2df
    .line 2865
    .local v14, "auto":I
    if-eqz v14, :cond_2b

    #@2e1
    .line 2866
    move-object/from16 v0, p0

    #@2e3
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@2e5
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@2e8
    move-result-object v4

    #@2e9
    .line 2867
    const-string/jumbo v6, "screen_brightness_mode"

    #@2ec
    .line 2868
    const/4 v7, 0x0

    #@2ed
    .line 2869
    const/4 v8, -0x3

    #@2ee
    .line 2866
    invoke-static {v4, v6, v7, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@2f1
    .line 2872
    :cond_2b
    move-object/from16 v0, p0

    #@2f3
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@2f5
    invoke-virtual {v4}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    #@2f8
    move-result v31

    #@2f9
    .line 2873
    .local v31, "min":I
    move-object/from16 v0, p0

    #@2fb
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@2fd
    invoke-virtual {v4}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    #@300
    move-result v29

    #@301
    .line 2874
    .local v29, "max":I
    sub-int v4, v29, v31

    #@303
    add-int/lit8 v4, v4, 0xa

    #@305
    add-int/lit8 v4, v4, -0x1

    #@307
    div-int/lit8 v4, v4, 0xa

    #@309
    mul-int v38, v4, v20

    #@30b
    .line 2875
    .local v38, "step":I
    move-object/from16 v0, p0

    #@30d
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@30f
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@312
    move-result-object v4

    #@313
    .line 2876
    const-string/jumbo v6, "screen_brightness"

    #@316
    .line 2877
    move-object/from16 v0, p0

    #@318
    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@31a
    invoke-virtual {v7}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    #@31d
    move-result v7

    #@31e
    .line 2878
    const/4 v8, -0x3

    #@31f
    .line 2875
    invoke-static {v4, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@322
    move-result v15

    #@323
    .line 2879
    .local v15, "brightness":I
    add-int v15, v15, v38

    #@325
    .line 2881
    move/from16 v0, v29

    #@327
    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    #@32a
    move-result v15

    #@32b
    .line 2882
    move/from16 v0, v31

    #@32d
    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    #@330
    move-result v15

    #@331
    .line 2884
    move-object/from16 v0, p0

    #@333
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@335
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@338
    move-result-object v4

    #@339
    .line 2885
    const-string/jumbo v6, "screen_brightness"

    #@33c
    .line 2886
    const/4 v7, -0x3

    #@33d
    .line 2884
    invoke-static {v4, v6, v15, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@340
    .line 2887
    new-instance v4, Landroid/content/Intent;

    #@342
    const-string/jumbo v6, "android.intent.action.SHOW_BRIGHTNESS_DIALOG"

    #@345
    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@348
    .line 2888
    sget-object v6, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    #@34a
    .line 2887
    move-object/from16 v0, p0

    #@34c
    invoke-direct {v0, v4, v6}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@34f
    .line 2890
    .end local v14    # "auto":I
    .end local v15    # "brightness":I
    .end local v20    # "direction":I
    .end local v29    # "max":I
    .end local v31    # "min":I
    .end local v38    # "step":I
    :cond_2c
    const-wide/16 v6, -0x1

    #@351
    return-wide v6

    #@352
    .line 2857
    :cond_2d
    const/16 v20, -0x1

    #@354
    .restart local v20    # "direction":I
    goto/16 :goto_b

    #@356
    .line 2891
    .end local v20    # "direction":I
    :cond_2e
    invoke-static/range {v27 .. v27}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    #@359
    move-result v4

    #@35a
    if-eqz v4, :cond_1d

    #@35c
    .line 2892
    if-eqz v21, :cond_30

    #@35e
    .line 2893
    const/4 v4, 0x1

    #@35f
    move-object/from16 v0, p0

    #@361
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    #@363
    .line 2897
    :cond_2f
    :goto_c
    const-wide/16 v6, -0x1

    #@365
    return-wide v6

    #@366
    .line 2894
    :cond_30
    move-object/from16 v0, p0

    #@368
    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    #@36a
    if-eqz v4, :cond_2f

    #@36c
    .line 2895
    const-string/jumbo v4, "android.intent.extra.ASSIST_INPUT_HINT_KEYBOARD"

    #@36f
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    #@372
    move-result v6

    #@373
    move-object/from16 v0, p0

    #@375
    invoke-direct {v0, v4, v6}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    #@378
    goto :goto_c

    #@379
    .line 2911
    .restart local v26    # "kcm":Landroid/view/KeyCharacterMap;
    :cond_31
    move-object/from16 v0, p0

    #@37b
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutManager:Lcom/android/server/policy/ShortcutManager;

    #@37d
    move-object/from16 v0, v26

    #@37f
    move/from16 v1, v27

    #@381
    move/from16 v2, v30

    #@383
    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/policy/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    #@386
    move-result-object v37

    #@387
    .line 2912
    .local v37, "shortcutIntent":Landroid/content/Intent;
    if-eqz v37, :cond_32

    #@389
    .line 2913
    const/high16 v4, 0x10000000

    #@38b
    move-object/from16 v0, v37

    #@38d
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@390
    .line 2915
    :try_start_2
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@392
    move-object/from16 v0, p0

    #@394
    move-object/from16 v1, v37

    #@396
    invoke-direct {v0, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    #@399
    goto/16 :goto_7

    #@39b
    .line 2916
    :catch_1
    move-exception v23

    #@39c
    .line 2917
    .local v23, "ex":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v4, "WindowManager"

    #@39f
    new-instance v6, Ljava/lang/StringBuilder;

    #@3a1
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3a4
    const-string/jumbo v7, "Dropping shortcut key combination because the activity to which it is registered was not found: SEARCH+"

    #@3a7
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3aa
    move-result-object v6

    #@3ab
    .line 2919
    invoke-static/range {v27 .. v27}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    #@3ae
    move-result-object v7

    #@3af
    .line 2917
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b2
    move-result-object v6

    #@3b3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b6
    move-result-object v6

    #@3b7
    move-object/from16 v0, v23

    #@3b9
    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3bc
    goto/16 :goto_7

    #@3be
    .line 2922
    .end local v23    # "ex":Landroid/content/ActivityNotFoundException;
    :cond_32
    const-string/jumbo v4, "WindowManager"

    #@3c1
    new-instance v6, Ljava/lang/StringBuilder;

    #@3c3
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3c6
    const-string/jumbo v7, "Dropping unregistered shortcut key combination: SEARCH+"

    #@3c9
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3cc
    move-result-object v6

    #@3cd
    .line 2923
    invoke-static/range {v27 .. v27}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    #@3d0
    move-result-object v7

    #@3d1
    .line 2922
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d4
    move-result-object v6

    #@3d5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d8
    move-result-object v6

    #@3d9
    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3dc
    goto/16 :goto_7

    #@3de
    .line 2931
    .end local v26    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v37    # "shortcutIntent":Landroid/content/Intent;
    :cond_33
    if-eqz v21, :cond_34

    #@3e0
    if-nez v34, :cond_34

    #@3e2
    if-eqz v28, :cond_38

    #@3e4
    .line 2953
    :cond_34
    if-eqz v21, :cond_35

    #@3e6
    if-nez v34, :cond_35

    #@3e8
    if-eqz v28, :cond_39

    #@3ea
    .line 2970
    :cond_35
    if-eqz v21, :cond_3b

    #@3ec
    if-nez v34, :cond_3b

    #@3ee
    const/16 v4, 0x3d

    #@3f0
    move/from16 v0, v27

    #@3f2
    if-ne v0, v4, :cond_3b

    #@3f4
    .line 2971
    move-object/from16 v0, p0

    #@3f6
    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    #@3f8
    if-nez v4, :cond_36

    #@3fa
    if-eqz v28, :cond_3a

    #@3fc
    .line 2986
    :cond_36
    :goto_d
    if-eqz v21, :cond_3d

    #@3fe
    if-nez v34, :cond_3d

    #@400
    .line 2987
    const/16 v4, 0xcc

    #@402
    move/from16 v0, v27

    #@404
    if-eq v0, v4, :cond_37

    #@406
    .line 2988
    const/16 v4, 0x3e

    #@408
    move/from16 v0, v27

    #@40a
    if-ne v0, v4, :cond_3d

    #@40c
    .line 2989
    move/from16 v0, v30

    #@40e
    and-int/lit16 v4, v0, 0x7000

    #@410
    if-eqz v4, :cond_3d

    #@412
    .line 2990
    :cond_37
    move/from16 v0, v30

    #@414
    and-int/lit16 v4, v0, 0xc1

    #@416
    if-eqz v4, :cond_3c

    #@418
    const/16 v20, -0x1

    #@41a
    .line 2991
    .restart local v20    # "direction":I
    :goto_e
    move-object/from16 v0, p0

    #@41c
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@41e
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    #@421
    move-result v6

    #@422
    move/from16 v0, v20

    #@424
    invoke-interface {v4, v6, v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->switchKeyboardLayout(II)V

    #@427
    .line 2992
    const-wide/16 v6, -0x1

    #@429
    return-wide v6

    #@42a
    .line 2932
    .end local v20    # "direction":I
    :cond_38
    const/high16 v4, 0x10000

    #@42c
    and-int v4, v4, v30

    #@42e
    if-eqz v4, :cond_34

    #@430
    .line 2933
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    #@433
    move-result-object v26

    #@434
    .line 2934
    .restart local v26    # "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual/range {v26 .. v27}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    #@437
    move-result v4

    #@438
    if-eqz v4, :cond_34

    #@43a
    .line 2935
    move-object/from16 v0, p0

    #@43c
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutManager:Lcom/android/server/policy/ShortcutManager;

    #@43e
    .line 2936
    const v6, -0x70001

    #@441
    and-int v6, v6, v30

    #@443
    .line 2935
    move-object/from16 v0, v26

    #@445
    move/from16 v1, v27

    #@447
    invoke-virtual {v4, v0, v1, v6}, Lcom/android/server/policy/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    #@44a
    move-result-object v37

    #@44b
    .line 2938
    .restart local v37    # "shortcutIntent":Landroid/content/Intent;
    if-eqz v37, :cond_34

    #@44d
    .line 2939
    const/high16 v4, 0x10000000

    #@44f
    move-object/from16 v0, v37

    #@451
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@454
    .line 2941
    :try_start_3
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@456
    move-object/from16 v0, p0

    #@458
    move-object/from16 v1, v37

    #@45a
    invoke-direct {v0, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    #@45d
    .line 2947
    :goto_f
    const-wide/16 v6, -0x1

    #@45f
    return-wide v6

    #@460
    .line 2942
    :catch_2
    move-exception v23

    #@461
    .line 2943
    .restart local v23    # "ex":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v4, "WindowManager"

    #@464
    new-instance v6, Ljava/lang/StringBuilder;

    #@466
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@469
    const-string/jumbo v7, "Dropping shortcut key combination because the activity to which it is registered was not found: META+"

    #@46c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46f
    move-result-object v6

    #@470
    .line 2945
    invoke-static/range {v27 .. v27}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    #@473
    move-result-object v7

    #@474
    .line 2943
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@477
    move-result-object v6

    #@478
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47b
    move-result-object v6

    #@47c
    move-object/from16 v0, v23

    #@47e
    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@481
    goto :goto_f

    #@482
    .line 2954
    .end local v23    # "ex":Landroid/content/ActivityNotFoundException;
    .end local v26    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v37    # "shortcutIntent":Landroid/content/Intent;
    :cond_39
    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    #@484
    move/from16 v0, v27

    #@486
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@489
    move-result-object v17

    #@48a
    check-cast v17, Ljava/lang/String;

    #@48c
    .line 2955
    .local v17, "category":Ljava/lang/String;
    if-eqz v17, :cond_35

    #@48e
    .line 2956
    const-string/jumbo v4, "android.intent.action.MAIN"

    #@491
    move-object/from16 v0, v17

    #@493
    invoke-static {v4, v0}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@496
    move-result-object v5

    #@497
    .line 2957
    .restart local v5    # "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    #@499
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@49c
    .line 2959
    :try_start_4
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@49e
    move-object/from16 v0, p0

    #@4a0
    invoke-direct {v0, v5, v4}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    #@4a3
    .line 2965
    :goto_10
    const-wide/16 v6, -0x1

    #@4a5
    return-wide v6

    #@4a6
    .line 2960
    :catch_3
    move-exception v23

    #@4a7
    .line 2961
    .restart local v23    # "ex":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v4, "WindowManager"

    #@4aa
    new-instance v6, Ljava/lang/StringBuilder;

    #@4ac
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@4af
    const-string/jumbo v7, "Dropping application launch key because the activity to which it is registered was not found: keyCode="

    #@4b2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b5
    move-result-object v6

    #@4b6
    move/from16 v0, v27

    #@4b8
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4bb
    move-result-object v6

    #@4bc
    .line 2963
    const-string/jumbo v7, ", category="

    #@4bf
    .line 2961
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c2
    move-result-object v6

    #@4c3
    move-object/from16 v0, v17

    #@4c5
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c8
    move-result-object v6

    #@4c9
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4cc
    move-result-object v6

    #@4cd
    move-object/from16 v0, v23

    #@4cf
    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4d2
    goto :goto_10

    #@4d3
    .line 2972
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v17    # "category":Ljava/lang/String;
    .end local v23    # "ex":Landroid/content/ActivityNotFoundException;
    :cond_3a
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getModifiers()I

    #@4d6
    move-result v4

    #@4d7
    and-int/lit16 v0, v4, -0xc2

    #@4d9
    move/from16 v36, v0

    #@4db
    .line 2973
    .local v36, "shiftlessModifiers":I
    const/4 v4, 0x2

    #@4dc
    move/from16 v0, v36

    #@4de
    invoke-static {v0, v4}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    #@4e1
    move-result v4

    #@4e2
    if-eqz v4, :cond_36

    #@4e4
    .line 2974
    move/from16 v0, v36

    #@4e6
    move-object/from16 v1, p0

    #@4e8
    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    #@4ea
    .line 2975
    const/4 v4, 0x1

    #@4eb
    move-object/from16 v0, p0

    #@4ed
    invoke-direct {v0, v4}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(Z)V

    #@4f0
    .line 2976
    const-wide/16 v6, -0x1

    #@4f2
    return-wide v6

    #@4f3
    .line 2979
    .end local v36    # "shiftlessModifiers":I
    :cond_3b
    if-nez v21, :cond_36

    #@4f5
    move-object/from16 v0, p0

    #@4f7
    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    #@4f9
    if-eqz v4, :cond_36

    #@4fb
    .line 2980
    move-object/from16 v0, p0

    #@4fd
    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    #@4ff
    and-int v4, v4, v30

    #@501
    if-nez v4, :cond_36

    #@503
    .line 2981
    const/4 v4, 0x0

    #@504
    move-object/from16 v0, p0

    #@506
    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    #@508
    .line 2982
    const/4 v4, 0x1

    #@509
    const/4 v6, 0x0

    #@50a
    move-object/from16 v0, p0

    #@50c
    invoke-direct {v0, v4, v6}, Lcom/android/server/policy/PhoneWindowManager;->hideRecentApps(ZZ)V

    #@50f
    goto/16 :goto_d

    #@511
    .line 2990
    :cond_3c
    const/16 v20, 0x1

    #@513
    .restart local v20    # "direction":I
    goto/16 :goto_e

    #@515
    .line 2994
    .end local v20    # "direction":I
    :cond_3d
    move-object/from16 v0, p0

    #@517
    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    #@519
    if-eqz v4, :cond_3e

    #@51b
    if-eqz v21, :cond_3f

    #@51d
    .line 3001
    :cond_3e
    invoke-static/range {v27 .. v27}, Lcom/android/server/policy/PhoneWindowManager;->isValidGlobalKey(I)Z

    #@520
    move-result v4

    #@521
    if-eqz v4, :cond_41

    #@523
    .line 3002
    move-object/from16 v0, p0

    #@525
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    #@527
    move-object/from16 v0, p0

    #@529
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@52b
    move/from16 v0, v27

    #@52d
    move-object/from16 v1, p2

    #@52f
    invoke-virtual {v4, v6, v0, v1}, Lcom/android/server/policy/GlobalKeyManager;->handleGlobalKey(Landroid/content/Context;ILandroid/view/KeyEvent;)Z

    #@532
    move-result v4

    #@533
    .line 3001
    if-eqz v4, :cond_41

    #@535
    .line 3003
    const-wide/16 v6, -0x1

    #@537
    return-wide v6

    #@538
    .line 2995
    :cond_3f
    const/16 v4, 0xcc

    #@53a
    move/from16 v0, v27

    #@53c
    if-eq v0, v4, :cond_40

    #@53e
    .line 2996
    const/16 v4, 0x3e

    #@540
    move/from16 v0, v27

    #@542
    if-ne v0, v4, :cond_3e

    #@544
    .line 2997
    :cond_40
    const/4 v4, 0x0

    #@545
    move-object/from16 v0, p0

    #@547
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    #@549
    .line 2998
    const-wide/16 v6, -0x1

    #@54b
    return-wide v6

    #@54c
    .line 3007
    :cond_41
    const/high16 v4, 0x10000

    #@54e
    and-int v4, v4, v30

    #@550
    if-eqz v4, :cond_42

    #@552
    .line 3008
    const-wide/16 v6, -0x1

    #@554
    return-wide v6

    #@555
    .line 3012
    :cond_42
    const-wide/16 v6, 0x0

    #@557
    return-wide v6

    #@558
    .line 2841
    .restart local v19    # "dic":Landroid/os/IDeviceIdleController;
    :catch_4
    move-exception v22

    #@559
    .restart local v22    # "e":Landroid/os/RemoteException;
    goto/16 :goto_a
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 23
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    .line 4863
    move-object/from16 v0, p0

    #@2
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    #@4
    move/from16 v18, v0

    #@6
    if-nez v18, :cond_0

    #@8
    .line 4865
    const/16 v18, 0x0

    #@a
    return v18

    #@b
    .line 4868
    :cond_0
    const/high16 v18, 0x20000000

    #@d
    and-int v18, v18, p2

    #@f
    if-eqz v18, :cond_4

    #@11
    const/4 v9, 0x1

    #@12
    .line 4869
    .local v9, "interactive":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    #@15
    move-result v18

    #@16
    if-nez v18, :cond_5

    #@18
    const/4 v7, 0x1

    #@19
    .line 4870
    .local v7, "down":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    #@1c
    move-result v6

    #@1d
    .line 4871
    .local v6, "canceled":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@20
    move-result v12

    #@21
    .line 4873
    .local v12, "keyCode":I
    const/high16 v18, 0x1000000

    #@23
    and-int v18, v18, p2

    #@25
    if-eqz v18, :cond_6

    #@27
    const/4 v10, 0x1

    #@28
    .line 4879
    .local v10, "isInjected":Z
    :goto_2
    move-object/from16 v0, p0

    #@2a
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@2c
    move-object/from16 v18, v0

    #@2e
    if-nez v18, :cond_7

    #@30
    const/4 v13, 0x0

    #@31
    .line 4892
    :goto_3
    and-int/lit8 v18, p2, 0x1

    #@33
    if-nez v18, :cond_9

    #@35
    .line 4893
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isWakeKey()Z

    #@38
    move-result v11

    #@39
    .line 4894
    :goto_4
    if-nez v9, :cond_a

    #@3b
    if-eqz v10, :cond_1

    #@3d
    if-eqz v11, :cond_a

    #@3f
    .line 4899
    :cond_1
    if-nez v9, :cond_b

    #@41
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldDispatchInputWhenNonInteractive()Z

    #@44
    move-result v18

    #@45
    if-eqz v18, :cond_b

    #@47
    .line 4904
    const/4 v15, 0x1

    #@48
    .line 4916
    .local v15, "result":I
    :cond_2
    :goto_5
    invoke-static {v12}, Lcom/android/server/policy/PhoneWindowManager;->isValidGlobalKey(I)Z

    #@4b
    move-result v18

    #@4c
    if-eqz v18, :cond_d

    #@4e
    .line 4917
    move-object/from16 v0, p0

    #@50
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    #@52
    move-object/from16 v18, v0

    #@54
    move-object/from16 v0, v18

    #@56
    move-object/from16 v1, p1

    #@58
    invoke-virtual {v0, v12, v1}, Lcom/android/server/policy/GlobalKeyManager;->shouldHandleGlobalKey(ILandroid/view/KeyEvent;)Z

    #@5b
    move-result v18

    #@5c
    .line 4916
    if-eqz v18, :cond_d

    #@5e
    .line 4918
    if-eqz v11, :cond_3

    #@60
    .line 4919
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    #@63
    move-result-wide v18

    #@64
    move-object/from16 v0, p0

    #@66
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    #@68
    move/from16 v20, v0

    #@6a
    const-string/jumbo v21, "android.policy:KEY"

    #@6d
    move-object/from16 v0, p0

    #@6f
    move-wide/from16 v1, v18

    #@71
    move/from16 v3, v20

    #@73
    move-object/from16 v4, v21

    #@75
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    #@78
    .line 4921
    :cond_3
    return v15

    #@79
    .line 4868
    .end local v6    # "canceled":Z
    .end local v7    # "down":Z
    .end local v9    # "interactive":Z
    .end local v10    # "isInjected":Z
    .end local v12    # "keyCode":I
    .end local v15    # "result":I
    :cond_4
    const/4 v9, 0x0

    #@7a
    .restart local v9    # "interactive":Z
    goto :goto_0

    #@7b
    .line 4869
    :cond_5
    const/4 v7, 0x0

    #@7c
    .restart local v7    # "down":Z
    goto :goto_1

    #@7d
    .line 4873
    .restart local v6    # "canceled":Z
    .restart local v12    # "keyCode":I
    :cond_6
    const/4 v10, 0x0

    #@7e
    .restart local v10    # "isInjected":Z
    goto :goto_2

    #@7f
    .line 4880
    :cond_7
    if-eqz v9, :cond_8

    #@81
    .line 4881
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    #@84
    move-result v13

    #@85
    .local v13, "keyguardActive":Z
    goto :goto_3

    #@86
    .line 4882
    .end local v13    # "keyguardActive":Z
    :cond_8
    move-object/from16 v0, p0

    #@88
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@8a
    move-object/from16 v18, v0

    #@8c
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    #@8f
    move-result v13

    #@90
    .restart local v13    # "keyguardActive":Z
    goto :goto_3

    #@91
    .line 4892
    .end local v13    # "keyguardActive":Z
    :cond_9
    const/4 v11, 0x1

    #@92
    .local v11, "isWakeKey":Z
    goto :goto_4

    #@93
    .line 4897
    .end local v11    # "isWakeKey":Z
    :cond_a
    const/4 v15, 0x1

    #@94
    .line 4898
    .restart local v15    # "result":I
    const/4 v11, 0x0

    #@95
    .line 4894
    .restart local v11    # "isWakeKey":Z
    goto :goto_5

    #@96
    .line 4908
    .end local v11    # "isWakeKey":Z
    .end local v15    # "result":I
    :cond_b
    const/4 v15, 0x0

    #@97
    .line 4909
    .restart local v15    # "result":I
    if-eqz v11, :cond_2

    #@99
    if-eqz v7, :cond_c

    #@9b
    move-object/from16 v0, p0

    #@9d
    invoke-direct {v0, v12}, Lcom/android/server/policy/PhoneWindowManager;->isWakeKeyWhenScreenOff(I)Z

    #@a0
    move-result v18

    #@a1
    if-nez v18, :cond_2

    #@a3
    .line 4910
    :cond_c
    const/4 v11, 0x0

    #@a4
    .restart local v11    # "isWakeKey":Z
    goto :goto_5

    #@a5
    .line 4924
    .end local v11    # "isWakeKey":Z
    :cond_d
    if-eqz v7, :cond_12

    #@a7
    .line 4925
    and-int/lit8 v18, p2, 0x2

    #@a9
    if-eqz v18, :cond_12

    #@ab
    .line 4926
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@ae
    move-result v18

    #@af
    if-nez v18, :cond_11

    #@b1
    const/16 v17, 0x1

    #@b3
    .line 4929
    .local v17, "useHapticFeedback":Z
    :goto_6
    sparse-switch v12, :sswitch_data_0

    #@b6
    .line 5145
    :cond_e
    :goto_7
    if-eqz v17, :cond_f

    #@b8
    .line 5146
    const/16 v18, 0x0

    #@ba
    const/16 v19, 0x1

    #@bc
    const/16 v20, 0x0

    #@be
    move-object/from16 v0, p0

    #@c0
    move-object/from16 v1, v18

    #@c2
    move/from16 v2, v19

    #@c4
    move/from16 v3, v20

    #@c6
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    #@c9
    .line 5149
    :cond_f
    if-eqz v11, :cond_10

    #@cb
    .line 5150
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    #@ce
    move-result-wide v18

    #@cf
    move-object/from16 v0, p0

    #@d1
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    #@d3
    move/from16 v20, v0

    #@d5
    const-string/jumbo v21, "android.policy:KEY"

    #@d8
    move-object/from16 v0, p0

    #@da
    move-wide/from16 v1, v18

    #@dc
    move/from16 v3, v20

    #@de
    move-object/from16 v4, v21

    #@e0
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    #@e3
    .line 5153
    :cond_10
    return v15

    #@e4
    .line 4926
    .end local v17    # "useHapticFeedback":Z
    :cond_11
    const/16 v17, 0x0

    #@e6
    .restart local v17    # "useHapticFeedback":Z
    goto :goto_6

    #@e7
    .line 4924
    .end local v17    # "useHapticFeedback":Z
    :cond_12
    const/16 v17, 0x0

    #@e9
    .restart local v17    # "useHapticFeedback":Z
    goto :goto_6

    #@ea
    .line 4933
    :sswitch_0
    move-object/from16 v0, p0

    #@ec
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    #@ee
    move/from16 v18, v0

    #@f0
    if-eqz v18, :cond_13

    #@f2
    .line 4935
    and-int/lit8 v15, v15, -0x2

    #@f4
    .line 4937
    :cond_13
    const/16 v18, 0x19

    #@f6
    move/from16 v0, v18

    #@f8
    if-ne v12, v0, :cond_17

    #@fa
    .line 4938
    if-eqz v7, :cond_16

    #@fc
    .line 4939
    if-eqz v9, :cond_14

    #@fe
    move-object/from16 v0, p0

    #@100
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    #@102
    move/from16 v18, v0

    #@104
    if-eqz v18, :cond_15

    #@106
    .line 4964
    :cond_14
    :goto_8
    if-eqz v7, :cond_e

    #@108
    .line 4965
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    #@10b
    move-result-object v16

    #@10c
    .line 4966
    .local v16, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v16, :cond_1a

    #@10e
    .line 4967
    invoke-virtual/range {v16 .. v16}, Landroid/telecom/TelecomManager;->isRinging()Z

    #@111
    move-result v18

    #@112
    if-eqz v18, :cond_19

    #@114
    .line 4974
    const-string/jumbo v18, "WindowManager"

    #@117
    const-string/jumbo v19, "interceptKeyBeforeQueueing: VOLUME key-down while ringing: Silence ringer!"

    #@11a
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@11d
    .line 4979
    invoke-virtual/range {v16 .. v16}, Landroid/telecom/TelecomManager;->silenceRinger()V

    #@120
    .line 4983
    and-int/lit8 v15, v15, -0x2

    #@122
    .line 4984
    goto :goto_7

    #@123
    .line 4940
    .end local v16    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    #@126
    move-result v18

    #@127
    move/from16 v0, v18

    #@129
    and-int/lit16 v0, v0, 0x400

    #@12b
    move/from16 v18, v0

    #@12d
    if-nez v18, :cond_14

    #@12f
    .line 4941
    const/16 v18, 0x1

    #@131
    move/from16 v0, v18

    #@133
    move-object/from16 v1, p0

    #@135
    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    #@137
    .line 4942
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    #@13a
    move-result-wide v18

    #@13b
    move-wide/from16 v0, v18

    #@13d
    move-object/from16 v2, p0

    #@13f
    iput-wide v0, v2, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    #@141
    .line 4943
    const/16 v18, 0x0

    #@143
    move/from16 v0, v18

    #@145
    move-object/from16 v1, p0

    #@147
    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    #@149
    .line 4944
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    #@14c
    .line 4945
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptScreenshotChord()V

    #@14f
    goto :goto_8

    #@150
    .line 4948
    :cond_16
    const/16 v18, 0x0

    #@152
    move/from16 v0, v18

    #@154
    move-object/from16 v1, p0

    #@156
    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    #@158
    .line 4949
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    #@15b
    goto :goto_8

    #@15c
    .line 4951
    :cond_17
    const/16 v18, 0x18

    #@15e
    move/from16 v0, v18

    #@160
    if-ne v12, v0, :cond_14

    #@162
    .line 4952
    if-eqz v7, :cond_18

    #@164
    .line 4953
    if-eqz v9, :cond_14

    #@166
    move-object/from16 v0, p0

    #@168
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    #@16a
    move/from16 v18, v0

    #@16c
    if-nez v18, :cond_14

    #@16e
    .line 4954
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    #@171
    move-result v18

    #@172
    move/from16 v0, v18

    #@174
    and-int/lit16 v0, v0, 0x400

    #@176
    move/from16 v18, v0

    #@178
    if-nez v18, :cond_14

    #@17a
    .line 4955
    const/16 v18, 0x1

    #@17c
    move/from16 v0, v18

    #@17e
    move-object/from16 v1, p0

    #@180
    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    #@182
    .line 4956
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    #@185
    .line 4957
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    #@188
    goto/16 :goto_8

    #@18a
    .line 4960
    :cond_18
    const/16 v18, 0x0

    #@18c
    move/from16 v0, v18

    #@18e
    move-object/from16 v1, p0

    #@190
    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    #@192
    .line 4961
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    #@195
    goto/16 :goto_8

    #@197
    .line 4986
    .restart local v16    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_19
    invoke-virtual/range {v16 .. v16}, Landroid/telecom/TelecomManager;->isInCall()Z

    #@19a
    move-result v18

    #@19b
    if-eqz v18, :cond_1a

    #@19d
    .line 4987
    and-int/lit8 v18, v15, 0x1

    #@19f
    if-nez v18, :cond_1a

    #@1a1
    .line 4991
    move-object/from16 v0, p0

    #@1a3
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@1a5
    move-object/from16 v18, v0

    #@1a7
    invoke-static/range {v18 .. v18}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    #@1aa
    move-result-object v18

    #@1ab
    .line 4992
    const/16 v19, 0x0

    #@1ad
    .line 4991
    move-object/from16 v0, v18

    #@1af
    move-object/from16 v1, p1

    #@1b1
    move/from16 v2, v19

    #@1b3
    invoke-virtual {v0, v1, v2}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;Z)V

    #@1b6
    goto/16 :goto_7

    #@1b8
    .line 4997
    :cond_1a
    and-int/lit8 v18, v15, 0x1

    #@1ba
    if-nez v18, :cond_e

    #@1bc
    .line 4998
    move-object/from16 v0, p0

    #@1be
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    #@1c0
    move/from16 v18, v0

    #@1c2
    if-eqz v18, :cond_1b

    #@1c4
    .line 4999
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchDirectAudioEvent(Landroid/view/KeyEvent;)V

    #@1c7
    goto/16 :goto_7

    #@1c9
    .line 5004
    :cond_1b
    move-object/from16 v0, p0

    #@1cb
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@1cd
    move-object/from16 v18, v0

    #@1cf
    invoke-static/range {v18 .. v18}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    #@1d2
    move-result-object v18

    #@1d3
    .line 5005
    const/16 v19, 0x1

    #@1d5
    .line 5004
    move-object/from16 v0, v18

    #@1d7
    move-object/from16 v1, p1

    #@1d9
    move/from16 v2, v19

    #@1db
    invoke-virtual {v0, v1, v2}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;Z)V

    #@1de
    goto/16 :goto_7

    #@1e0
    .line 5014
    .end local v16    # "telecomManager":Landroid/telecom/TelecomManager;
    :sswitch_1
    and-int/lit8 v15, v15, -0x2

    #@1e2
    .line 5015
    if-eqz v7, :cond_1f

    #@1e4
    .line 5016
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    #@1e7
    move-result-object v16

    #@1e8
    .line 5017
    .restart local v16    # "telecomManager":Landroid/telecom/TelecomManager;
    const/4 v8, 0x0

    #@1e9
    .line 5018
    .local v8, "hungUp":Z
    if-eqz v16, :cond_1c

    #@1eb
    .line 5019
    invoke-virtual/range {v16 .. v16}, Landroid/telecom/TelecomManager;->endCall()Z

    #@1ee
    move-result v8

    #@1ef
    .line 5021
    .end local v8    # "hungUp":Z
    :cond_1c
    if-eqz v9, :cond_1d

    #@1f1
    if-eqz v8, :cond_1e

    #@1f3
    .line 5026
    :cond_1d
    const/16 v18, 0x1

    #@1f5
    move/from16 v0, v18

    #@1f7
    move-object/from16 v1, p0

    #@1f9
    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    #@1fb
    goto/16 :goto_7

    #@1fd
    .line 5022
    :cond_1e
    const/16 v18, 0x0

    #@1ff
    move/from16 v0, v18

    #@201
    move-object/from16 v1, p0

    #@203
    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    #@205
    .line 5023
    move-object/from16 v0, p0

    #@207
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@209
    move-object/from16 v18, v0

    #@20b
    move-object/from16 v0, p0

    #@20d
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    #@20f
    move-object/from16 v19, v0

    #@211
    .line 5024
    move-object/from16 v0, p0

    #@213
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@215
    move-object/from16 v20, v0

    #@217
    invoke-static/range {v20 .. v20}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@21a
    move-result-object v20

    #@21b
    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    #@21e
    move-result-wide v20

    #@21f
    .line 5023
    invoke-virtual/range {v18 .. v21}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@222
    goto/16 :goto_7

    #@224
    .line 5029
    .end local v16    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_1f
    move-object/from16 v0, p0

    #@226
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    #@228
    move/from16 v18, v0

    #@22a
    if-nez v18, :cond_e

    #@22c
    .line 5030
    move-object/from16 v0, p0

    #@22e
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@230
    move-object/from16 v18, v0

    #@232
    move-object/from16 v0, p0

    #@234
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    #@236
    move-object/from16 v19, v0

    #@238
    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@23b
    .line 5031
    if-nez v6, :cond_e

    #@23d
    .line 5032
    move-object/from16 v0, p0

    #@23f
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    #@241
    move/from16 v18, v0

    #@243
    and-int/lit8 v18, v18, 0x1

    #@245
    if-eqz v18, :cond_20

    #@247
    .line 5034
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->goHome()Z

    #@24a
    move-result v18

    #@24b
    if-nez v18, :cond_e

    #@24d
    .line 5038
    :cond_20
    move-object/from16 v0, p0

    #@24f
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    #@251
    move/from16 v18, v0

    #@253
    and-int/lit8 v18, v18, 0x2

    #@255
    if-eqz v18, :cond_e

    #@257
    .line 5040
    move-object/from16 v0, p0

    #@259
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@25b
    move-object/from16 v18, v0

    #@25d
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    #@260
    move-result-wide v20

    #@261
    .line 5041
    const/16 v19, 0x4

    #@263
    const/16 v22, 0x0

    #@265
    .line 5040
    move-object/from16 v0, v18

    #@267
    move-wide/from16 v1, v20

    #@269
    move/from16 v3, v19

    #@26b
    move/from16 v4, v22

    #@26d
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->goToSleep(JII)V

    #@270
    .line 5042
    const/4 v11, 0x0

    #@271
    .restart local v11    # "isWakeKey":Z
    goto/16 :goto_7

    #@273
    .line 5051
    .end local v11    # "isWakeKey":Z
    :sswitch_2
    and-int/lit8 v15, v15, -0x2

    #@275
    .line 5052
    const/4 v11, 0x0

    #@276
    .line 5053
    .restart local v11    # "isWakeKey":Z
    if-eqz v7, :cond_21

    #@278
    .line 5054
    move-object/from16 v0, p0

    #@27a
    move-object/from16 v1, p1

    #@27c
    invoke-direct {v0, v1, v9}, Lcom/android/server/policy/PhoneWindowManager;->interceptPowerKeyDown(Landroid/view/KeyEvent;Z)V

    #@27f
    goto/16 :goto_7

    #@281
    .line 5056
    :cond_21
    move-object/from16 v0, p0

    #@283
    move-object/from16 v1, p1

    #@285
    invoke-direct {v0, v1, v9, v6}, Lcom/android/server/policy/PhoneWindowManager;->interceptPowerKeyUp(Landroid/view/KeyEvent;ZZ)V

    #@288
    goto/16 :goto_7

    #@28a
    .line 5062
    .end local v11    # "isWakeKey":Z
    :sswitch_3
    and-int/lit8 v15, v15, -0x2

    #@28c
    .line 5063
    const/4 v11, 0x0

    #@28d
    .line 5064
    .restart local v11    # "isWakeKey":Z
    move-object/from16 v0, p0

    #@28f
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@291
    move-object/from16 v18, v0

    #@293
    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager;->isInteractive()Z

    #@296
    move-result v18

    #@297
    if-nez v18, :cond_22

    #@299
    .line 5065
    const/16 v17, 0x0

    #@29b
    .line 5067
    :cond_22
    if-eqz v7, :cond_23

    #@29d
    .line 5068
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    #@2a0
    move-result-wide v18

    #@2a1
    move-object/from16 v0, p0

    #@2a3
    move-wide/from16 v1, v18

    #@2a5
    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->sleepPress(J)V

    #@2a8
    goto/16 :goto_7

    #@2aa
    .line 5070
    :cond_23
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    #@2ad
    move-result-wide v18

    #@2ae
    move-object/from16 v0, p0

    #@2b0
    move-wide/from16 v1, v18

    #@2b2
    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->sleepRelease(J)V

    #@2b5
    goto/16 :goto_7

    #@2b7
    .line 5076
    .end local v11    # "isWakeKey":Z
    :sswitch_4
    and-int/lit8 v15, v15, -0x2

    #@2b9
    .line 5077
    const/4 v11, 0x1

    #@2ba
    .line 5078
    .restart local v11    # "isWakeKey":Z
    goto/16 :goto_7

    #@2bc
    .line 5093
    .end local v11    # "isWakeKey":Z
    :sswitch_5
    move-object/from16 v0, p0

    #@2be
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@2c0
    move-object/from16 v18, v0

    #@2c2
    invoke-static/range {v18 .. v18}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    #@2c5
    move-result-object v18

    #@2c6
    invoke-virtual/range {v18 .. v18}, Landroid/media/session/MediaSessionLegacyHelper;->isGlobalPriorityActive()Z

    #@2c9
    move-result v18

    #@2ca
    if-eqz v18, :cond_24

    #@2cc
    .line 5096
    and-int/lit8 v15, v15, -0x2

    #@2ce
    .line 5098
    :cond_24
    and-int/lit8 v18, v15, 0x1

    #@2d0
    if-nez v18, :cond_e

    #@2d2
    .line 5104
    move-object/from16 v0, p0

    #@2d4
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2d6
    move-object/from16 v18, v0

    #@2d8
    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@2db
    .line 5105
    move-object/from16 v0, p0

    #@2dd
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@2df
    move-object/from16 v18, v0

    #@2e1
    .line 5106
    new-instance v19, Landroid/view/KeyEvent;

    #@2e3
    move-object/from16 v0, v19

    #@2e5
    move-object/from16 v1, p1

    #@2e7
    invoke-direct {v0, v1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    #@2ea
    .line 5105
    const/16 v20, 0x3

    #@2ec
    move-object/from16 v0, v18

    #@2ee
    move/from16 v1, v20

    #@2f0
    move-object/from16 v2, v19

    #@2f2
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@2f5
    move-result-object v14

    #@2f6
    .line 5107
    .local v14, "msg":Landroid/os/Message;
    const/16 v18, 0x1

    #@2f8
    move/from16 v0, v18

    #@2fa
    invoke-virtual {v14, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    #@2fd
    .line 5108
    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    #@300
    goto/16 :goto_7

    #@302
    .line 5114
    .end local v14    # "msg":Landroid/os/Message;
    :sswitch_6
    if-eqz v7, :cond_e

    #@304
    .line 5115
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    #@307
    move-result-object v16

    #@308
    .line 5116
    .restart local v16    # "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v16, :cond_e

    #@30a
    .line 5117
    invoke-virtual/range {v16 .. v16}, Landroid/telecom/TelecomManager;->isRinging()Z

    #@30d
    move-result v18

    #@30e
    if-eqz v18, :cond_e

    #@310
    .line 5118
    const-string/jumbo v18, "WindowManager"

    #@313
    const-string/jumbo v19, "interceptKeyBeforeQueueing: CALL key-down while ringing: Answer the call!"

    #@316
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@319
    .line 5120
    invoke-virtual/range {v16 .. v16}, Landroid/telecom/TelecomManager;->acceptRingingCall()V

    #@31c
    .line 5124
    and-int/lit8 v15, v15, -0x2

    #@31e
    goto/16 :goto_7

    #@320
    .line 5135
    .end local v16    # "telecomManager":Landroid/telecom/TelecomManager;
    :sswitch_7
    and-int/lit8 v18, v15, 0x1

    #@322
    if-nez v18, :cond_e

    #@324
    if-nez v7, :cond_e

    #@326
    .line 5136
    move-object/from16 v0, p0

    #@328
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    #@32a
    move-object/from16 v18, v0

    #@32c
    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@32f
    .line 5137
    move-object/from16 v0, p0

    #@331
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@333
    move-object/from16 v19, v0

    #@335
    .line 5138
    if-eqz v13, :cond_25

    #@337
    const/16 v18, 0x1

    #@339
    .line 5137
    :goto_9
    const/16 v20, 0xc

    #@33b
    .line 5138
    const/16 v21, 0x0

    #@33d
    .line 5137
    move-object/from16 v0, v19

    #@33f
    move/from16 v1, v20

    #@341
    move/from16 v2, v18

    #@343
    move/from16 v3, v21

    #@345
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@348
    move-result-object v14

    #@349
    .line 5139
    .restart local v14    # "msg":Landroid/os/Message;
    const/16 v18, 0x1

    #@34b
    move/from16 v0, v18

    #@34d
    invoke-virtual {v14, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    #@350
    .line 5140
    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    #@353
    goto/16 :goto_7

    #@355
    .line 5138
    .end local v14    # "msg":Landroid/os/Message;
    :cond_25
    const/16 v18, 0x0

    #@357
    goto :goto_9

    #@358
    .line 4929
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_6
        0x6 -> :sswitch_1
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_2
        0x4f -> :sswitch_5
        0x55 -> :sswitch_5
        0x56 -> :sswitch_5
        0x57 -> :sswitch_5
        0x58 -> :sswitch_5
        0x59 -> :sswitch_5
        0x5a -> :sswitch_5
        0x5b -> :sswitch_5
        0x7e -> :sswitch_5
        0x7f -> :sswitch_5
        0x82 -> :sswitch_5
        0xa4 -> :sswitch_0
        0xde -> :sswitch_5
        0xdf -> :sswitch_3
        0xe0 -> :sswitch_4
        0xe7 -> :sswitch_7
    .end sparse-switch
.end method

.method public interceptMotionBeforeQueueingNonInteractive(JI)I
    .locals 9
    .param p1, "whenNanos"    # J
    .param p3, "policyFlags"    # I

    #@0
    .prologue
    const-wide/32 v6, 0xf4240

    #@3
    const/4 v4, 0x0

    #@4
    .line 5210
    and-int/lit8 v0, p3, 0x1

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 5211
    div-long v0, p1, v6

    #@a
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotion:Z

    #@c
    .line 5212
    const-string/jumbo v3, "android.policy:MOTION"

    #@f
    .line 5211
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 5213
    return v4

    #@16
    .line 5217
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldDispatchInputWhenNonInteractive()Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_1

    #@1c
    .line 5218
    const/4 v0, 0x1

    #@1d
    return v0

    #@1e
    .line 5224
    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTheaterModeEnabled()Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_2

    #@24
    and-int/lit8 v0, p3, 0x1

    #@26
    if-eqz v0, :cond_2

    #@28
    .line 5225
    div-long v0, p1, v6

    #@2a
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotionWhenNotDreaming:Z

    #@2c
    .line 5226
    const-string/jumbo v3, "android.policy:MOTION"

    #@2f
    .line 5225
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    #@32
    .line 5229
    :cond_2
    return v4
.end method

.method public isDefaultOrientationForced()Z
    .locals 1

    #@0
    .prologue
    .line 1679
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceDefaultOrientation:Z

    #@2
    return v0
.end method

.method isDeviceProvisioned()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1212
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v1

    #@7
    const-string/jumbo v2, "device_provisioned"

    #@a
    .line 1211
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    const/4 v0, 0x1

    #@11
    :cond_0
    return v0
.end method

.method public isForceHiding(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 4
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 2203
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@4
    and-int/lit16 v2, v2, 0x400

    #@6
    if-nez v2, :cond_1

    #@8
    .line 2204
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 2205
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@10
    if-eqz v2, :cond_0

    #@12
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@14
    invoke-virtual {v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    #@17
    move-result v2

    #@18
    .line 2203
    if-nez v2, :cond_1

    #@1a
    .line 2206
    :cond_0
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@1c
    const/16 v3, 0x7ed

    #@1e
    if-ne v2, v3, :cond_2

    #@20
    .line 2203
    :cond_1
    :goto_0
    return v0

    #@21
    :cond_2
    move v0, v1

    #@22
    .line 2206
    goto :goto_0
.end method

.method public isKeyguardDrawnLw()Z
    .locals 2

    #@0
    .prologue
    .line 5764
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 5765
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 5764
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    #@0
    .prologue
    .line 2211
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@2
    const/16 v1, 0x7d0

    #@4
    if-ne v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public isKeyguardLocked()Z
    .locals 1

    #@0
    .prologue
    .line 5714
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isKeyguardSecure()Z
    .locals 1

    #@0
    .prologue
    .line 5720
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 5721
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@8
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure()Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public isKeyguardShowingOrOccluded()Z
    .locals 1

    #@0
    .prologue
    .line 5727
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@8
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method

.method public isScreenOn()Z
    .locals 1

    #@0
    .prologue
    .line 5687
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    #@2
    return v0
.end method

.method public isTopLevelWindow(I)Z
    .locals 2
    .param p1, "windowType"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 6805
    const/16 v1, 0x3e8

    #@3
    if-lt p1, v1, :cond_1

    #@5
    .line 6806
    const/16 v1, 0x7cf

    #@7
    if-gt p1, v1, :cond_1

    #@9
    .line 6807
    const/16 v1, 0x3eb

    #@b
    if-ne p1, v1, :cond_0

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0

    #@10
    .line 6809
    :cond_1
    return v0
.end method

.method isUserSetupComplete()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1216
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v1

    #@7
    .line 1217
    const-string/jumbo v2, "user_setup_complete"

    #@a
    const/4 v3, -0x2

    #@b
    .line 1216
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    const/4 v0, 0x1

    #@12
    :cond_0
    return v0
.end method

.method public keepScreenOnStartedLw()V
    .locals 0

    #@0
    .prologue
    .line 6548
    return-void
.end method

.method public keepScreenOnStoppedLw()V
    .locals 4

    #@0
    .prologue
    .line 6553
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 6554
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@b
    move-result-wide v2

    #@c
    const/4 v1, 0x0

    #@d
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    #@10
    .line 6552
    :cond_0
    return-void
.end method

.method keyguardOn()Z
    .locals 1

    #@0
    .prologue
    .line 2616
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->inKeyguardRestrictedKeyInputMode()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method launchHomeFromHotKey()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 3245
    invoke-virtual {p0, v0, v0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(ZZ)V

    #@4
    .line 3244
    return-void
.end method

.method launchHomeFromHotKey(ZZ)V
    .locals 3
    .param p1, "awakenFromDreams"    # Z
    .param p2, "respectKeyguard"    # Z

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 3253
    if-eqz p2, :cond_1

    #@3
    .line 3254
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 3256
    return-void

    #@a
    .line 3259
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    #@c
    if-nez v1, :cond_1

    #@e
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@10
    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 3262
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@18
    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$15;

    #@1a
    invoke-direct {v2, p0, p1}, Lcom/android/server/policy/PhoneWindowManager$15;-><init>(Lcom/android/server/policy/PhoneWindowManager;Z)V

    #@1d
    invoke-virtual {v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    #@20
    .line 3275
    return-void

    #@21
    .line 3281
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@24
    move-result-object v1

    #@25
    invoke-interface {v1}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 3284
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mRecentsVisible:Z

    #@2a
    if-eqz v1, :cond_3

    #@2c
    .line 3286
    if-eqz p1, :cond_2

    #@2e
    .line 3287
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->awakenDreams()V

    #@31
    .line 3289
    :cond_2
    const-string/jumbo v1, "homekey"

    #@34
    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    #@37
    .line 3290
    const/4 v1, 0x0

    #@38
    invoke-direct {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->hideRecentApps(ZZ)V

    #@3b
    .line 3252
    :goto_1
    return-void

    #@3c
    .line 3293
    :cond_3
    const-string/jumbo v1, "homekey"

    #@3f
    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    #@42
    .line 3294
    invoke-virtual {p0, v2, p1}, Lcom/android/server/policy/PhoneWindowManager;->startDockOrHome(ZZ)V

    #@45
    goto :goto_1

    #@46
    .line 3282
    :catch_0
    move-exception v0

    #@47
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method launchVoiceAssistWithWakeLock(Z)V
    .locals 4
    .param p1, "keyguardActive"    # Z

    #@0
    .prologue
    .line 5348
    const-string/jumbo v3, "deviceidle"

    #@3
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v3

    #@7
    .line 5347
    invoke-static {v3}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    #@a
    move-result-object v0

    #@b
    .line 5349
    .local v0, "dic":Landroid/os/IDeviceIdleController;
    if-eqz v0, :cond_0

    #@d
    .line 5351
    :try_start_0
    const-string/jumbo v3, "voice-search"

    #@10
    invoke-interface {v0, v3}, Landroid/os/IDeviceIdleController;->exitIdle(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 5356
    :cond_0
    :goto_0
    new-instance v2, Landroid/content/Intent;

    #@15
    const-string/jumbo v3, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    #@18
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1b
    .line 5357
    .local v2, "voiceIntent":Landroid/content/Intent;
    const-string/jumbo v3, "android.speech.extras.EXTRA_SECURE"

    #@1e
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@21
    .line 5358
    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    #@23
    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@26
    .line 5359
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    #@28
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    #@2b
    .line 5346
    return-void

    #@2c
    .line 5352
    .end local v2    # "voiceIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    #@2d
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 28
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attached"    # Landroid/view/WindowManagerPolicy$WindowState;

    #@0
    .prologue
    .line 3826
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@4
    move-object/from16 v0, p1

    #@6
    if-ne v0, v2, :cond_0

    #@8
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->canReceiveInput(Landroid/view/WindowManagerPolicy$WindowState;)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_1

    #@e
    :cond_0
    move-object/from16 v0, p0

    #@10
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@12
    move-object/from16 v0, p1

    #@14
    if-ne v0, v2, :cond_2

    #@16
    .line 3827
    :cond_1
    return-void

    #@17
    .line 3829
    :cond_2
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@1a
    move-result-object v16

    #@1b
    .line 3830
    .local v16, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDefaultDisplay()Z

    #@1e
    move-result v20

    #@1f
    .line 3831
    .local v20, "isDefaultDisplay":Z
    if-eqz v20, :cond_9

    #@21
    .line 3832
    move-object/from16 v0, p0

    #@23
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    #@25
    move-object/from16 v0, p1

    #@27
    if-ne v0, v2, :cond_8

    #@29
    move-object/from16 v0, p0

    #@2b
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    #@2d
    if-eqz v2, :cond_8

    #@2f
    const/16 v21, 0x1

    #@31
    .line 3833
    .local v21, "needsToOffsetInputMethodTarget":Z
    :goto_0
    if-eqz v21, :cond_3

    #@33
    .line 3835
    move-object/from16 v0, p0

    #@35
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    #@37
    move-object/from16 v0, p0

    #@39
    invoke-direct {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    #@3c
    .line 3838
    :cond_3
    move-object/from16 v0, p1

    #@3e
    move-object/from16 v1, v16

    #@40
    invoke-static {v0, v1}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    #@43
    move-result v4

    #@44
    .line 3839
    .local v4, "fl":I
    move-object/from16 v0, v16

    #@46
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@48
    move/from16 v24, v0

    #@4a
    .line 3840
    .local v24, "sim":I
    const/4 v2, 0x0

    #@4b
    move-object/from16 v0, p1

    #@4d
    invoke-static {v0, v2}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    #@50
    move-result v25

    #@51
    .line 3842
    .local v25, "sysUiFl":I
    sget-object v8, Lcom/android/server/policy/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    #@53
    .line 3843
    .local v8, "pf":Landroid/graphics/Rect;
    sget-object v9, Lcom/android/server/policy/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    #@55
    .line 3844
    .local v9, "df":Landroid/graphics/Rect;
    sget-object v10, Lcom/android/server/policy/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    #@57
    .line 3845
    .local v10, "of":Landroid/graphics/Rect;
    sget-object v11, Lcom/android/server/policy/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    #@59
    .line 3846
    .local v11, "cf":Landroid/graphics/Rect;
    sget-object v12, Lcom/android/server/policy/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    #@5b
    .line 3847
    .local v12, "vf":Landroid/graphics/Rect;
    sget-object v13, Lcom/android/server/policy/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    #@5d
    .line 3848
    .local v13, "dcf":Landroid/graphics/Rect;
    sget-object v14, Lcom/android/server/policy/PhoneWindowManager;->mTmpStableFrame:Landroid/graphics/Rect;

    #@5f
    .line 3849
    .local v14, "sf":Landroid/graphics/Rect;
    const/4 v15, 0x0

    #@60
    .line 3850
    .local v15, "osf":Landroid/graphics/Rect;
    invoke-virtual {v13}, Landroid/graphics/Rect;->setEmpty()V

    #@63
    .line 3852
    if-eqz v20, :cond_a

    #@65
    move-object/from16 v0, p0

    #@67
    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    #@69
    if-eqz v2, :cond_a

    #@6b
    .line 3853
    move-object/from16 v0, p0

    #@6d
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@6f
    if-eqz v2, :cond_a

    #@71
    move-object/from16 v0, p0

    #@73
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@75
    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    #@78
    move-result v17

    #@79
    .line 3855
    :goto_1
    move/from16 v0, v24

    #@7b
    and-int/lit16 v5, v0, 0xf0

    #@7d
    .line 3857
    .local v5, "adjust":I
    if-eqz v20, :cond_b

    #@7f
    .line 3858
    move-object/from16 v0, p0

    #@81
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    #@83
    move-object/from16 v0, p0

    #@85
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    #@87
    move-object/from16 v0, p0

    #@89
    iget v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    #@8b
    move-object/from16 v0, p0

    #@8d
    iget v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    #@8f
    invoke-virtual {v14, v2, v3, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    #@92
    .line 3863
    :goto_2
    if-nez v20, :cond_d

    #@94
    .line 3864
    if-eqz p2, :cond_c

    #@96
    .line 3867
    const/4 v7, 0x1

    #@97
    move-object/from16 v2, p0

    #@99
    move-object/from16 v3, p1

    #@9b
    move-object/from16 v6, p2

    #@9d
    invoke-virtual/range {v2 .. v12}, Lcom/android/server/policy/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@a0
    .line 4235
    :goto_3
    and-int/lit16 v2, v4, 0x200

    #@a2
    if-eqz v2, :cond_4

    #@a4
    move-object/from16 v0, v16

    #@a6
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@a8
    const/16 v3, 0x7da

    #@aa
    if-eq v2, v3, :cond_4

    #@ac
    .line 4236
    const/16 v2, -0x2710

    #@ae
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@b0
    const/16 v2, -0x2710

    #@b2
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@b4
    .line 4237
    const/16 v2, 0x2710

    #@b6
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@b8
    const/16 v2, 0x2710

    #@ba
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@bc
    .line 4238
    move-object/from16 v0, v16

    #@be
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@c0
    const/16 v3, 0x7dd

    #@c2
    if-eq v2, v3, :cond_4

    #@c4
    .line 4239
    const/16 v2, -0x2710

    #@c6
    iput v2, v12, Landroid/graphics/Rect;->top:I

    #@c8
    const/16 v2, -0x2710

    #@ca
    iput v2, v12, Landroid/graphics/Rect;->left:I

    #@cc
    const/16 v2, -0x2710

    #@ce
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@d0
    const/16 v2, -0x2710

    #@d2
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@d4
    const/16 v2, -0x2710

    #@d6
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@d8
    const/16 v2, -0x2710

    #@da
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@dc
    .line 4240
    const/16 v2, 0x2710

    #@de
    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    #@e0
    const/16 v2, 0x2710

    #@e2
    iput v2, v12, Landroid/graphics/Rect;->right:I

    #@e4
    const/16 v2, 0x2710

    #@e6
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@e8
    const/16 v2, 0x2710

    #@ea
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@ec
    const/16 v2, 0x2710

    #@ee
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@f0
    const/16 v2, 0x2710

    #@f2
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@f4
    .line 4248
    :cond_4
    move-object/from16 v0, p0

    #@f6
    move-object/from16 v1, v16

    #@f8
    invoke-direct {v0, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->shouldUseOutsets(Landroid/view/WindowManager$LayoutParams;I)Z

    #@fb
    move-result v27

    #@fc
    .line 4249
    .local v27, "useOutsets":Z
    if-eqz v20, :cond_5

    #@fe
    if-eqz v27, :cond_5

    #@100
    .line 4250
    sget-object v15, Lcom/android/server/policy/PhoneWindowManager;->mTmpOutsetFrame:Landroid/graphics/Rect;

    #@102
    .line 4251
    .local v15, "osf":Landroid/graphics/Rect;
    iget v2, v11, Landroid/graphics/Rect;->left:I

    #@104
    iget v3, v11, Landroid/graphics/Rect;->top:I

    #@106
    iget v6, v11, Landroid/graphics/Rect;->right:I

    #@108
    iget v7, v11, Landroid/graphics/Rect;->bottom:I

    #@10a
    invoke-virtual {v15, v2, v3, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    #@10d
    .line 4252
    move-object/from16 v0, p0

    #@10f
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@111
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@114
    move-result-object v2

    #@115
    invoke-static {v2}, Lcom/android/internal/util/ScreenShapeHelper;->getWindowOutsetBottomPx(Landroid/content/res/Resources;)I

    #@118
    move-result v22

    #@119
    .line 4253
    .local v22, "outset":I
    if-lez v22, :cond_5

    #@11b
    .line 4254
    move-object/from16 v0, p0

    #@11d
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayRotation:I

    #@11f
    move/from16 v23, v0

    #@121
    .line 4255
    .local v23, "rotation":I
    if-nez v23, :cond_40

    #@123
    .line 4256
    iget v2, v15, Landroid/graphics/Rect;->bottom:I

    #@125
    add-int v2, v2, v22

    #@127
    iput v2, v15, Landroid/graphics/Rect;->bottom:I

    #@129
    .end local v15    # "osf":Landroid/graphics/Rect;
    .end local v22    # "outset":I
    .end local v23    # "rotation":I
    :cond_5
    :goto_4
    move-object/from16 v7, p1

    #@12b
    .line 4280
    invoke-interface/range {v7 .. v15}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@12e
    .line 4284
    move-object/from16 v0, v16

    #@130
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@132
    const/16 v3, 0x7db

    #@134
    if-ne v2, v3, :cond_6

    #@136
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    #@139
    move-result v2

    #@13a
    if-eqz v2, :cond_6

    #@13c
    .line 4285
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenInsetsPendingLw()Z

    #@13f
    move-result v2

    #@140
    if-eqz v2, :cond_43

    #@142
    .line 4289
    :cond_6
    :goto_5
    move-object/from16 v0, v16

    #@144
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@146
    const/16 v3, 0x7ef

    #@148
    if-ne v2, v3, :cond_7

    #@14a
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    #@14d
    move-result v2

    #@14e
    if-eqz v2, :cond_7

    #@150
    .line 4290
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenInsetsPendingLw()Z

    #@153
    move-result v2

    #@154
    if-eqz v2, :cond_44

    #@156
    .line 3823
    :cond_7
    :goto_6
    return-void

    #@157
    .line 3832
    .end local v4    # "fl":I
    .end local v5    # "adjust":I
    .end local v8    # "pf":Landroid/graphics/Rect;
    .end local v9    # "df":Landroid/graphics/Rect;
    .end local v10    # "of":Landroid/graphics/Rect;
    .end local v11    # "cf":Landroid/graphics/Rect;
    .end local v12    # "vf":Landroid/graphics/Rect;
    .end local v13    # "dcf":Landroid/graphics/Rect;
    .end local v14    # "sf":Landroid/graphics/Rect;
    .end local v21    # "needsToOffsetInputMethodTarget":Z
    .end local v24    # "sim":I
    .end local v25    # "sysUiFl":I
    .end local v27    # "useOutsets":Z
    :cond_8
    const/16 v21, 0x0

    #@159
    .restart local v21    # "needsToOffsetInputMethodTarget":Z
    goto/16 :goto_0

    #@15b
    .line 3831
    .end local v21    # "needsToOffsetInputMethodTarget":Z
    :cond_9
    const/16 v21, 0x0

    #@15d
    .restart local v21    # "needsToOffsetInputMethodTarget":Z
    goto/16 :goto_0

    #@15f
    .line 3852
    .restart local v4    # "fl":I
    .restart local v8    # "pf":Landroid/graphics/Rect;
    .restart local v9    # "df":Landroid/graphics/Rect;
    .restart local v10    # "of":Landroid/graphics/Rect;
    .restart local v11    # "cf":Landroid/graphics/Rect;
    .restart local v12    # "vf":Landroid/graphics/Rect;
    .restart local v13    # "dcf":Landroid/graphics/Rect;
    .restart local v14    # "sf":Landroid/graphics/Rect;
    .local v15, "osf":Landroid/graphics/Rect;
    .restart local v24    # "sim":I
    .restart local v25    # "sysUiFl":I
    :cond_a
    const/16 v17, 0x0

    #@161
    .local v17, "hasNavBar":Z
    goto/16 :goto_1

    #@163
    .line 3860
    .end local v17    # "hasNavBar":Z
    .restart local v5    # "adjust":I
    :cond_b
    move-object/from16 v0, p0

    #@165
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    #@167
    move-object/from16 v0, p0

    #@169
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    #@16b
    move-object/from16 v0, p0

    #@16d
    iget v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    #@16f
    move-object/from16 v0, p0

    #@171
    iget v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    #@173
    invoke-virtual {v14, v2, v3, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    #@176
    goto/16 :goto_2

    #@178
    .line 3870
    :cond_c
    move-object/from16 v0, p0

    #@17a
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    #@17c
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@17e
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@180
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@182
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@184
    .line 3871
    move-object/from16 v0, p0

    #@186
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    #@188
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@18a
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@18c
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@18e
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@190
    .line 3873
    move-object/from16 v0, p0

    #@192
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    #@194
    move-object/from16 v0, p0

    #@196
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    #@198
    add-int/2addr v2, v3

    #@199
    .line 3872
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@19b
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@19d
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@19f
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@1a1
    .line 3875
    move-object/from16 v0, p0

    #@1a3
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    #@1a5
    move-object/from16 v0, p0

    #@1a7
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    #@1a9
    add-int/2addr v2, v3

    #@1aa
    .line 3874
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@1ac
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@1ae
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@1b0
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@1b2
    goto/16 :goto_3

    #@1b4
    .line 3877
    :cond_d
    move-object/from16 v0, v16

    #@1b6
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@1b8
    const/16 v3, 0x7db

    #@1ba
    if-ne v2, v3, :cond_e

    #@1bc
    .line 3878
    move-object/from16 v0, p0

    #@1be
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    #@1c0
    iput v2, v12, Landroid/graphics/Rect;->left:I

    #@1c2
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@1c4
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@1c6
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@1c8
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@1ca
    .line 3879
    move-object/from16 v0, p0

    #@1cc
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    #@1ce
    iput v2, v12, Landroid/graphics/Rect;->top:I

    #@1d0
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@1d2
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@1d4
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@1d6
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@1d8
    .line 3880
    move-object/from16 v0, p0

    #@1da
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    #@1dc
    iput v2, v12, Landroid/graphics/Rect;->right:I

    #@1de
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@1e0
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@1e2
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@1e4
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@1e6
    .line 3882
    move-object/from16 v0, p0

    #@1e8
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@1ea
    move-object/from16 v0, p0

    #@1ec
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    #@1ee
    add-int/2addr v2, v3

    #@1ef
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@1f1
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@1f3
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@1f5
    .line 3884
    move-object/from16 v0, p0

    #@1f7
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    #@1f9
    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    #@1fb
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@1fd
    .line 3886
    const/16 v2, 0x50

    #@1ff
    move-object/from16 v0, v16

    #@201
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@203
    .line 3887
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    #@206
    move-result v2

    #@207
    move-object/from16 v0, p0

    #@209
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLayer:I

    #@20b
    goto/16 :goto_3

    #@20d
    .line 3888
    :cond_e
    move-object/from16 v0, v16

    #@20f
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@211
    const/16 v3, 0x7ef

    #@213
    if-ne v2, v3, :cond_f

    #@215
    .line 3889
    move-object/from16 v0, p0

    #@217
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@219
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@21b
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@21d
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@21f
    .line 3890
    move-object/from16 v0, p0

    #@221
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@223
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@225
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@227
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@229
    .line 3891
    move-object/from16 v0, p0

    #@22b
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@22d
    move-object/from16 v0, p0

    #@22f
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    #@231
    add-int/2addr v2, v3

    #@232
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@234
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@236
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@238
    .line 3892
    move-object/from16 v0, p0

    #@23a
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@23c
    move-object/from16 v0, p0

    #@23e
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    #@240
    add-int/2addr v2, v3

    #@241
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@243
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@245
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@247
    .line 3893
    move-object/from16 v0, p0

    #@249
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    #@24b
    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    #@24d
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@24f
    .line 3895
    move-object/from16 v0, p0

    #@251
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    #@253
    iput v2, v12, Landroid/graphics/Rect;->right:I

    #@255
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@257
    .line 3896
    move-object/from16 v0, p0

    #@259
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    #@25b
    iput v2, v12, Landroid/graphics/Rect;->left:I

    #@25d
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@25f
    .line 3897
    move-object/from16 v0, p0

    #@261
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    #@263
    iput v2, v12, Landroid/graphics/Rect;->top:I

    #@265
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@267
    goto/16 :goto_3

    #@269
    .line 3898
    :cond_f
    move-object/from16 v0, p0

    #@26b
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@26d
    move-object/from16 v0, p1

    #@26f
    if-ne v0, v2, :cond_10

    #@271
    .line 3899
    move-object/from16 v0, p0

    #@273
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@275
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@277
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@279
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@27b
    .line 3900
    move-object/from16 v0, p0

    #@27d
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@27f
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@281
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@283
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@285
    .line 3901
    move-object/from16 v0, p0

    #@287
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    #@289
    move-object/from16 v0, p0

    #@28b
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@28d
    add-int/2addr v2, v3

    #@28e
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@290
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@292
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@294
    .line 3902
    move-object/from16 v0, p0

    #@296
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    #@298
    move-object/from16 v0, p0

    #@29a
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@29c
    add-int/2addr v2, v3

    #@29d
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@29f
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@2a1
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@2a3
    .line 3903
    move-object/from16 v0, p0

    #@2a5
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    #@2a7
    iput v2, v12, Landroid/graphics/Rect;->left:I

    #@2a9
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@2ab
    .line 3904
    move-object/from16 v0, p0

    #@2ad
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    #@2af
    iput v2, v12, Landroid/graphics/Rect;->top:I

    #@2b1
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@2b3
    .line 3905
    move-object/from16 v0, p0

    #@2b5
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    #@2b7
    iput v2, v12, Landroid/graphics/Rect;->right:I

    #@2b9
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@2bb
    .line 3906
    move-object/from16 v0, p0

    #@2bd
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    #@2bf
    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    #@2c1
    .line 3907
    move-object/from16 v0, p0

    #@2c3
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    #@2c5
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@2c7
    goto/16 :goto_3

    #@2c9
    .line 3911
    :cond_10
    move-object/from16 v0, p0

    #@2cb
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemLeft:I

    #@2cd
    iput v2, v13, Landroid/graphics/Rect;->left:I

    #@2cf
    .line 3912
    move-object/from16 v0, p0

    #@2d1
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemTop:I

    #@2d3
    iput v2, v13, Landroid/graphics/Rect;->top:I

    #@2d5
    .line 3913
    move-object/from16 v0, p0

    #@2d7
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemRight:I

    #@2d9
    iput v2, v13, Landroid/graphics/Rect;->right:I

    #@2db
    .line 3914
    move-object/from16 v0, p0

    #@2dd
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBottom:I

    #@2df
    iput v2, v13, Landroid/graphics/Rect;->bottom:I

    #@2e1
    .line 3915
    move-object/from16 v0, v16

    #@2e3
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@2e5
    and-int/lit16 v2, v2, 0x200

    #@2e7
    if-eqz v2, :cond_13

    #@2e9
    const/16 v18, 0x1

    #@2eb
    .line 3918
    .local v18, "inheritTranslucentDecor":Z
    :goto_7
    move-object/from16 v0, v16

    #@2ed
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@2ef
    const/4 v3, 0x1

    #@2f0
    if-lt v2, v3, :cond_15

    #@2f2
    .line 3919
    move-object/from16 v0, v16

    #@2f4
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@2f6
    const/16 v3, 0x63

    #@2f8
    if-gt v2, v3, :cond_14

    #@2fa
    const/16 v19, 0x1

    #@2fc
    .line 3921
    .local v19, "isAppWindow":Z
    :goto_8
    move-object/from16 v0, p0

    #@2fe
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@300
    move-object/from16 v0, p1

    #@302
    if-ne v0, v2, :cond_11

    #@304
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    #@307
    move-result v2

    #@308
    if-eqz v2, :cond_16

    #@30a
    :cond_11
    const/16 v26, 0x0

    #@30c
    .line 3922
    .local v26, "topAtRest":Z
    :goto_9
    if-eqz v19, :cond_12

    #@30e
    if-eqz v18, :cond_17

    #@310
    .line 3941
    :cond_12
    :goto_a
    const v2, 0x10100

    #@313
    and-int/2addr v2, v4

    #@314
    .line 3942
    const v3, 0x10100

    #@317
    .line 3941
    if-ne v2, v3, :cond_25

    #@319
    .line 3949
    if-eqz p2, :cond_19

    #@31b
    .line 3952
    const/4 v7, 0x1

    #@31c
    move-object/from16 v2, p0

    #@31e
    move-object/from16 v3, p1

    #@320
    move-object/from16 v6, p2

    #@322
    invoke-virtual/range {v2 .. v12}, Lcom/android/server/policy/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@325
    goto/16 :goto_3

    #@327
    .line 3915
    .end local v18    # "inheritTranslucentDecor":Z
    .end local v19    # "isAppWindow":Z
    .end local v26    # "topAtRest":Z
    :cond_13
    const/16 v18, 0x0

    #@329
    .restart local v18    # "inheritTranslucentDecor":Z
    goto :goto_7

    #@32a
    .line 3919
    :cond_14
    const/16 v19, 0x0

    #@32c
    .restart local v19    # "isAppWindow":Z
    goto :goto_8

    #@32d
    .line 3918
    .end local v19    # "isAppWindow":Z
    :cond_15
    const/16 v19, 0x0

    #@32f
    .restart local v19    # "isAppWindow":Z
    goto :goto_8

    #@330
    .line 3921
    :cond_16
    const/16 v26, 0x1

    #@332
    .restart local v26    # "topAtRest":Z
    goto :goto_9

    #@333
    .line 3922
    :cond_17
    if-nez v26, :cond_12

    #@335
    .line 3923
    and-int/lit8 v2, v25, 0x4

    #@337
    if-nez v2, :cond_18

    #@339
    .line 3924
    and-int/lit16 v2, v4, 0x400

    #@33b
    if-nez v2, :cond_18

    #@33d
    .line 3925
    const/high16 v2, 0x4000000

    #@33f
    and-int/2addr v2, v4

    #@340
    if-nez v2, :cond_18

    #@342
    .line 3926
    const/high16 v2, -0x80000000

    #@344
    and-int/2addr v2, v4

    #@345
    if-nez v2, :cond_18

    #@347
    .line 3929
    move-object/from16 v0, p0

    #@349
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    #@34b
    iput v2, v13, Landroid/graphics/Rect;->top:I

    #@34d
    .line 3931
    :cond_18
    const/high16 v2, 0x8000000

    #@34f
    and-int/2addr v2, v4

    #@350
    if-nez v2, :cond_12

    #@352
    .line 3932
    and-int/lit8 v2, v25, 0x2

    #@354
    if-nez v2, :cond_12

    #@356
    .line 3933
    const/high16 v2, -0x80000000

    #@358
    and-int/2addr v2, v4

    #@359
    if-nez v2, :cond_12

    #@35b
    .line 3936
    move-object/from16 v0, p0

    #@35d
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    #@35f
    iput v2, v13, Landroid/graphics/Rect;->bottom:I

    #@361
    .line 3937
    move-object/from16 v0, p0

    #@363
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    #@365
    iput v2, v13, Landroid/graphics/Rect;->right:I

    #@367
    goto :goto_a

    #@368
    .line 3954
    :cond_19
    move-object/from16 v0, v16

    #@36a
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@36c
    const/16 v3, 0x7de

    #@36e
    if-eq v2, v3, :cond_1a

    #@370
    .line 3955
    move-object/from16 v0, v16

    #@372
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@374
    const/16 v3, 0x7e1

    #@376
    if-ne v2, v3, :cond_1e

    #@378
    .line 3963
    :cond_1a
    if-eqz v17, :cond_1b

    #@37a
    .line 3964
    move-object/from16 v0, p0

    #@37c
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    #@37e
    .line 3963
    :goto_b
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@380
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@382
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@384
    .line 3965
    move-object/from16 v0, p0

    #@386
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@388
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@38a
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@38c
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@38e
    .line 3966
    if-eqz v17, :cond_1c

    #@390
    .line 3967
    move-object/from16 v0, p0

    #@392
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    #@394
    move-object/from16 v0, p0

    #@396
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    #@398
    add-int/2addr v2, v3

    #@399
    .line 3966
    :goto_c
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@39b
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@39d
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@39f
    .line 3969
    if-eqz v17, :cond_1d

    #@3a1
    .line 3970
    move-object/from16 v0, p0

    #@3a3
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    #@3a5
    move-object/from16 v0, p0

    #@3a7
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    #@3a9
    add-int/2addr v2, v3

    #@3aa
    .line 3969
    :goto_d
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@3ac
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@3ae
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@3b0
    .line 4021
    :goto_e
    and-int/lit16 v2, v4, 0x400

    #@3b2
    if-nez v2, :cond_23

    #@3b4
    .line 4022
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVoiceInteraction()Z

    #@3b7
    move-result v2

    #@3b8
    if-eqz v2, :cond_21

    #@3ba
    .line 4023
    move-object/from16 v0, p0

    #@3bc
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    #@3be
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@3c0
    .line 4024
    move-object/from16 v0, p0

    #@3c2
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    #@3c4
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@3c6
    .line 4025
    move-object/from16 v0, p0

    #@3c8
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    #@3ca
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@3cc
    .line 4026
    move-object/from16 v0, p0

    #@3ce
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    #@3d0
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@3d2
    .line 4050
    :goto_f
    move-object/from16 v0, p0

    #@3d4
    move/from16 v1, v25

    #@3d6
    invoke-direct {v0, v1, v4, v11}, Lcom/android/server/policy/PhoneWindowManager;->applyStableConstraints(IILandroid/graphics/Rect;)V

    #@3d9
    .line 4051
    const/16 v2, 0x30

    #@3db
    if-eq v5, v2, :cond_24

    #@3dd
    .line 4052
    move-object/from16 v0, p0

    #@3df
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    #@3e1
    iput v2, v12, Landroid/graphics/Rect;->left:I

    #@3e3
    .line 4053
    move-object/from16 v0, p0

    #@3e5
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    #@3e7
    iput v2, v12, Landroid/graphics/Rect;->top:I

    #@3e9
    .line 4054
    move-object/from16 v0, p0

    #@3eb
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    #@3ed
    iput v2, v12, Landroid/graphics/Rect;->right:I

    #@3ef
    .line 4055
    move-object/from16 v0, p0

    #@3f1
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    #@3f3
    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    #@3f5
    goto/16 :goto_3

    #@3f7
    .line 3964
    :cond_1b
    move-object/from16 v0, p0

    #@3f9
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@3fb
    goto :goto_b

    #@3fc
    .line 3968
    :cond_1c
    move-object/from16 v0, p0

    #@3fe
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@400
    move-object/from16 v0, p0

    #@402
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    #@404
    add-int/2addr v2, v3

    #@405
    goto :goto_c

    #@406
    .line 3971
    :cond_1d
    move-object/from16 v0, p0

    #@408
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@40a
    move-object/from16 v0, p0

    #@40c
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    #@40e
    add-int/2addr v2, v3

    #@40f
    goto :goto_d

    #@410
    .line 3976
    :cond_1e
    const/high16 v2, 0x2000000

    #@412
    and-int/2addr v2, v4

    #@413
    if-eqz v2, :cond_1f

    #@415
    .line 3977
    move-object/from16 v0, v16

    #@417
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@419
    const/4 v3, 0x1

    #@41a
    if-lt v2, v3, :cond_1f

    #@41c
    .line 3978
    move-object/from16 v0, v16

    #@41e
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@420
    const/16 v3, 0x7cf

    #@422
    if-gt v2, v3, :cond_1f

    #@424
    .line 3981
    move-object/from16 v0, p0

    #@426
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    #@428
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@42a
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@42c
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@42e
    .line 3982
    move-object/from16 v0, p0

    #@430
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    #@432
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@434
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@436
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@438
    .line 3983
    move-object/from16 v0, p0

    #@43a
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    #@43c
    move-object/from16 v0, p0

    #@43e
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    #@440
    add-int/2addr v2, v3

    #@441
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@443
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@445
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@447
    .line 3984
    move-object/from16 v0, p0

    #@449
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    #@44b
    .line 3985
    move-object/from16 v0, p0

    #@44d
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    #@44f
    .line 3984
    add-int/2addr v2, v3

    #@450
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@452
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@454
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@456
    goto/16 :goto_e

    #@458
    .line 3986
    :cond_1f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    #@45b
    move-result v2

    #@45c
    if-eqz v2, :cond_20

    #@45e
    .line 3987
    move/from16 v0, v25

    #@460
    and-int/lit16 v2, v0, 0x200

    #@462
    if-eqz v2, :cond_20

    #@464
    .line 3988
    move-object/from16 v0, v16

    #@466
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@468
    const/4 v3, 0x1

    #@469
    if-lt v2, v3, :cond_20

    #@46b
    .line 3989
    move-object/from16 v0, v16

    #@46d
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@46f
    const/16 v3, 0x7cf

    #@471
    if-gt v2, v3, :cond_20

    #@473
    .line 3994
    move-object/from16 v0, p0

    #@475
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    #@477
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@479
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@47b
    .line 3995
    move-object/from16 v0, p0

    #@47d
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    #@47f
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@481
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@483
    .line 3996
    move-object/from16 v0, p0

    #@485
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    #@487
    move-object/from16 v0, p0

    #@489
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    #@48b
    add-int/2addr v2, v3

    #@48c
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@48e
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@490
    .line 3997
    move-object/from16 v0, p0

    #@492
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    #@494
    move-object/from16 v0, p0

    #@496
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    #@498
    add-int/2addr v2, v3

    #@499
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@49b
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@49d
    .line 4001
    move-object/from16 v0, p0

    #@49f
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@4a1
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@4a3
    .line 4002
    move-object/from16 v0, p0

    #@4a5
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@4a7
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@4a9
    .line 4003
    move-object/from16 v0, p0

    #@4ab
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@4ad
    move-object/from16 v0, p0

    #@4af
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    #@4b1
    add-int/2addr v2, v3

    #@4b2
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@4b4
    .line 4004
    move-object/from16 v0, p0

    #@4b6
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@4b8
    move-object/from16 v0, p0

    #@4ba
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    #@4bc
    add-int/2addr v2, v3

    #@4bd
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@4bf
    goto/16 :goto_e

    #@4c1
    .line 4006
    :cond_20
    move-object/from16 v0, p0

    #@4c3
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    #@4c5
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@4c7
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@4c9
    .line 4007
    move-object/from16 v0, p0

    #@4cb
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    #@4cd
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@4cf
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@4d1
    .line 4008
    move-object/from16 v0, p0

    #@4d3
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    #@4d5
    .line 4009
    move-object/from16 v0, p0

    #@4d7
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    #@4d9
    .line 4008
    add-int/2addr v2, v3

    #@4da
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@4dc
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@4de
    .line 4010
    move-object/from16 v0, p0

    #@4e0
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    #@4e2
    .line 4011
    move-object/from16 v0, p0

    #@4e4
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    #@4e6
    .line 4010
    add-int/2addr v2, v3

    #@4e7
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@4e9
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@4eb
    .line 4015
    move-object/from16 v0, p0

    #@4ed
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@4ef
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@4f1
    .line 4016
    move-object/from16 v0, p0

    #@4f3
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@4f5
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@4f7
    .line 4017
    move-object/from16 v0, p0

    #@4f9
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@4fb
    move-object/from16 v0, p0

    #@4fd
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    #@4ff
    add-int/2addr v2, v3

    #@500
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@502
    .line 4018
    move-object/from16 v0, p0

    #@504
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@506
    move-object/from16 v0, p0

    #@508
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    #@50a
    add-int/2addr v2, v3

    #@50b
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@50d
    goto/16 :goto_e

    #@50f
    .line 4028
    :cond_21
    const/16 v2, 0x10

    #@511
    if-eq v5, v2, :cond_22

    #@513
    .line 4029
    move-object/from16 v0, p0

    #@515
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    #@517
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@519
    .line 4030
    move-object/from16 v0, p0

    #@51b
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    #@51d
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@51f
    .line 4031
    move-object/from16 v0, p0

    #@521
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    #@523
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@525
    .line 4032
    move-object/from16 v0, p0

    #@527
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    #@529
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@52b
    goto/16 :goto_f

    #@52d
    .line 4034
    :cond_22
    move-object/from16 v0, p0

    #@52f
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    #@531
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@533
    .line 4035
    move-object/from16 v0, p0

    #@535
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    #@537
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@539
    .line 4036
    move-object/from16 v0, p0

    #@53b
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    #@53d
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@53f
    .line 4037
    move-object/from16 v0, p0

    #@541
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    #@543
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@545
    goto/16 :goto_f

    #@547
    .line 4045
    :cond_23
    move-object/from16 v0, p0

    #@549
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    #@54b
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@54d
    .line 4046
    move-object/from16 v0, p0

    #@54f
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    #@551
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@553
    .line 4047
    move-object/from16 v0, p0

    #@555
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    #@557
    move-object/from16 v0, p0

    #@559
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    #@55b
    add-int/2addr v2, v3

    #@55c
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@55e
    .line 4048
    move-object/from16 v0, p0

    #@560
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    #@562
    move-object/from16 v0, p0

    #@564
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    #@566
    add-int/2addr v2, v3

    #@567
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@569
    goto/16 :goto_f

    #@56b
    .line 4057
    :cond_24
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@56e
    goto/16 :goto_3

    #@570
    .line 4060
    :cond_25
    and-int/lit16 v2, v4, 0x100

    #@572
    if-nez v2, :cond_26

    #@574
    move/from16 v0, v25

    #@576
    and-int/lit16 v2, v0, 0x600

    #@578
    if-eqz v2, :cond_37

    #@57a
    .line 4067
    :cond_26
    move-object/from16 v0, v16

    #@57c
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@57e
    const/16 v3, 0x7de

    #@580
    if-eq v2, v3, :cond_27

    #@582
    .line 4068
    move-object/from16 v0, v16

    #@584
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@586
    const/16 v3, 0x7e1

    #@588
    if-ne v2, v3, :cond_28

    #@58a
    .line 4070
    :cond_27
    if-eqz v17, :cond_2a

    #@58c
    .line 4071
    move-object/from16 v0, p0

    #@58e
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    #@590
    .line 4070
    :goto_10
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@592
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@594
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@596
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@598
    .line 4072
    move-object/from16 v0, p0

    #@59a
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@59c
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@59e
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@5a0
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@5a2
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@5a4
    .line 4073
    if-eqz v17, :cond_2b

    #@5a6
    .line 4074
    move-object/from16 v0, p0

    #@5a8
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    #@5aa
    move-object/from16 v0, p0

    #@5ac
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    #@5ae
    add-int/2addr v2, v3

    #@5af
    .line 4073
    :goto_11
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@5b1
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@5b3
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@5b5
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@5b7
    .line 4076
    if-eqz v17, :cond_2c

    #@5b9
    .line 4077
    move-object/from16 v0, p0

    #@5bb
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    #@5bd
    move-object/from16 v0, p0

    #@5bf
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    #@5c1
    add-int/2addr v2, v3

    #@5c2
    .line 4076
    :goto_12
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@5c4
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@5c6
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@5c8
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@5ca
    .line 4163
    :goto_13
    move-object/from16 v0, p0

    #@5cc
    move/from16 v1, v25

    #@5ce
    invoke-direct {v0, v1, v4, v11}, Lcom/android/server/policy/PhoneWindowManager;->applyStableConstraints(IILandroid/graphics/Rect;)V

    #@5d1
    .line 4165
    const/16 v2, 0x30

    #@5d3
    if-eq v5, v2, :cond_36

    #@5d5
    .line 4166
    move-object/from16 v0, p0

    #@5d7
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    #@5d9
    iput v2, v12, Landroid/graphics/Rect;->left:I

    #@5db
    .line 4167
    move-object/from16 v0, p0

    #@5dd
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    #@5df
    iput v2, v12, Landroid/graphics/Rect;->top:I

    #@5e1
    .line 4168
    move-object/from16 v0, p0

    #@5e3
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    #@5e5
    iput v2, v12, Landroid/graphics/Rect;->right:I

    #@5e7
    .line 4169
    move-object/from16 v0, p0

    #@5e9
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    #@5eb
    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    #@5ed
    goto/16 :goto_3

    #@5ef
    .line 4069
    :cond_28
    move-object/from16 v0, v16

    #@5f1
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@5f3
    const/16 v3, 0x7e4

    #@5f5
    if-eq v2, v3, :cond_27

    #@5f7
    .line 4082
    move-object/from16 v0, v16

    #@5f9
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@5fb
    const/16 v3, 0x7e3

    #@5fd
    if-eq v2, v3, :cond_29

    #@5ff
    .line 4083
    move-object/from16 v0, v16

    #@601
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@603
    const/16 v3, 0x7e8

    #@605
    if-ne v2, v3, :cond_2d

    #@607
    .line 4085
    :cond_29
    move-object/from16 v0, p0

    #@609
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@60b
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@60d
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@60f
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@611
    .line 4086
    move-object/from16 v0, p0

    #@613
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@615
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@617
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@619
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@61b
    .line 4087
    move-object/from16 v0, p0

    #@61d
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@61f
    .line 4088
    move-object/from16 v0, p0

    #@621
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    #@623
    .line 4087
    add-int/2addr v2, v3

    #@624
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@626
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@628
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@62a
    .line 4089
    move-object/from16 v0, p0

    #@62c
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@62e
    .line 4090
    move-object/from16 v0, p0

    #@630
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    #@632
    .line 4089
    add-int/2addr v2, v3

    #@633
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@635
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@637
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@639
    goto :goto_13

    #@63a
    .line 4071
    :cond_2a
    move-object/from16 v0, p0

    #@63c
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@63e
    goto/16 :goto_10

    #@640
    .line 4075
    :cond_2b
    move-object/from16 v0, p0

    #@642
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@644
    move-object/from16 v0, p0

    #@646
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    #@648
    add-int/2addr v2, v3

    #@649
    goto/16 :goto_11

    #@64b
    .line 4078
    :cond_2c
    move-object/from16 v0, p0

    #@64d
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@64f
    move-object/from16 v0, p0

    #@651
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    #@653
    add-int/2addr v2, v3

    #@654
    goto/16 :goto_12

    #@656
    .line 4094
    :cond_2d
    move-object/from16 v0, v16

    #@658
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@65a
    const/16 v3, 0x7df

    #@65c
    if-eq v2, v3, :cond_2e

    #@65e
    .line 4095
    move-object/from16 v0, v16

    #@660
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@662
    const/16 v3, 0x7e5

    #@664
    if-ne v2, v3, :cond_2f

    #@666
    .line 4096
    :cond_2e
    and-int/lit16 v2, v4, 0x400

    #@668
    if-eqz v2, :cond_2f

    #@66a
    .line 4098
    move-object/from16 v0, p0

    #@66c
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    #@66e
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@670
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@672
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@674
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@676
    .line 4099
    move-object/from16 v0, p0

    #@678
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    #@67a
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@67c
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@67e
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@680
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@682
    .line 4100
    move-object/from16 v0, p0

    #@684
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    #@686
    .line 4101
    move-object/from16 v0, p0

    #@688
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    #@68a
    .line 4100
    add-int/2addr v2, v3

    #@68b
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@68d
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@68f
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@691
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@693
    .line 4102
    move-object/from16 v0, p0

    #@695
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    #@697
    .line 4103
    move-object/from16 v0, p0

    #@699
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    #@69b
    .line 4102
    add-int/2addr v2, v3

    #@69c
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@69e
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@6a0
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@6a2
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@6a4
    goto/16 :goto_13

    #@6a6
    .line 4104
    :cond_2f
    move-object/from16 v0, v16

    #@6a8
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@6aa
    const/16 v3, 0x7e5

    #@6ac
    if-ne v2, v3, :cond_30

    #@6ae
    .line 4106
    move-object/from16 v0, p0

    #@6b0
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    #@6b2
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@6b4
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@6b6
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@6b8
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@6ba
    .line 4107
    move-object/from16 v0, p0

    #@6bc
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    #@6be
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@6c0
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@6c2
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@6c4
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@6c6
    .line 4108
    move-object/from16 v0, p0

    #@6c8
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    #@6ca
    .line 4109
    move-object/from16 v0, p0

    #@6cc
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    #@6ce
    .line 4108
    add-int/2addr v2, v3

    #@6cf
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@6d1
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@6d3
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@6d5
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@6d7
    .line 4110
    move-object/from16 v0, p0

    #@6d9
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    #@6db
    .line 4111
    move-object/from16 v0, p0

    #@6dd
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    #@6df
    .line 4110
    add-int/2addr v2, v3

    #@6e0
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@6e2
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@6e4
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@6e6
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@6e8
    goto/16 :goto_13

    #@6ea
    .line 4112
    :cond_30
    move-object/from16 v0, v16

    #@6ec
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@6ee
    const/16 v3, 0x7dd

    #@6f0
    if-ne v2, v3, :cond_31

    #@6f2
    .line 4115
    move-object/from16 v0, p0

    #@6f4
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    #@6f6
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@6f8
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@6fa
    .line 4116
    move-object/from16 v0, p0

    #@6fc
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    #@6fe
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@700
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@702
    .line 4117
    move-object/from16 v0, p0

    #@704
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    #@706
    move-object/from16 v0, p0

    #@708
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    #@70a
    add-int/2addr v2, v3

    #@70b
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@70d
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@70f
    .line 4118
    move-object/from16 v0, p0

    #@711
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    #@713
    move-object/from16 v0, p0

    #@715
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    #@717
    add-int/2addr v2, v3

    #@718
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@71a
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@71c
    .line 4119
    move-object/from16 v0, p0

    #@71e
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@720
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@722
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@724
    .line 4120
    move-object/from16 v0, p0

    #@726
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@728
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@72a
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@72c
    .line 4121
    move-object/from16 v0, p0

    #@72e
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@730
    move-object/from16 v0, p0

    #@732
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    #@734
    add-int/2addr v2, v3

    #@735
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@737
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@739
    .line 4122
    move-object/from16 v0, p0

    #@73b
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@73d
    move-object/from16 v0, p0

    #@73f
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    #@741
    add-int/2addr v2, v3

    #@742
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@744
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@746
    goto/16 :goto_13

    #@748
    .line 4123
    :cond_31
    const/high16 v2, 0x2000000

    #@74a
    and-int/2addr v2, v4

    #@74b
    if-eqz v2, :cond_32

    #@74d
    .line 4124
    move-object/from16 v0, v16

    #@74f
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@751
    const/4 v3, 0x1

    #@752
    if-lt v2, v3, :cond_32

    #@754
    .line 4125
    move-object/from16 v0, v16

    #@756
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@758
    const/16 v3, 0x7cf

    #@75a
    if-gt v2, v3, :cond_32

    #@75c
    .line 4128
    move-object/from16 v0, p0

    #@75e
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    #@760
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@762
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@764
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@766
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@768
    .line 4129
    move-object/from16 v0, p0

    #@76a
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    #@76c
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@76e
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@770
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@772
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@774
    .line 4131
    move-object/from16 v0, p0

    #@776
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    #@778
    move-object/from16 v0, p0

    #@77a
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    #@77c
    add-int/2addr v2, v3

    #@77d
    .line 4130
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@77f
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@781
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@783
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@785
    .line 4133
    move-object/from16 v0, p0

    #@787
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    #@789
    move-object/from16 v0, p0

    #@78b
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    #@78d
    add-int/2addr v2, v3

    #@78e
    .line 4132
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@790
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@792
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@794
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@796
    goto/16 :goto_13

    #@798
    .line 4134
    :cond_32
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    #@79b
    move-result v2

    #@79c
    if-eqz v2, :cond_35

    #@79e
    .line 4135
    move/from16 v0, v25

    #@7a0
    and-int/lit16 v2, v0, 0x200

    #@7a2
    if-eqz v2, :cond_35

    #@7a4
    .line 4136
    move-object/from16 v0, v16

    #@7a6
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@7a8
    const/16 v3, 0x7d0

    #@7aa
    if-eq v2, v3, :cond_33

    #@7ac
    .line 4137
    move-object/from16 v0, v16

    #@7ae
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@7b0
    const/16 v3, 0x7d5

    #@7b2
    if-ne v2, v3, :cond_34

    #@7b4
    .line 4148
    :cond_33
    move-object/from16 v0, p0

    #@7b6
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@7b8
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@7ba
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@7bc
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@7be
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@7c0
    .line 4149
    move-object/from16 v0, p0

    #@7c2
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@7c4
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@7c6
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@7c8
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@7ca
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@7cc
    .line 4150
    move-object/from16 v0, p0

    #@7ce
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@7d0
    .line 4151
    move-object/from16 v0, p0

    #@7d2
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    #@7d4
    .line 4150
    add-int/2addr v2, v3

    #@7d5
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@7d7
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@7d9
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@7db
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@7dd
    .line 4152
    move-object/from16 v0, p0

    #@7df
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@7e1
    .line 4153
    move-object/from16 v0, p0

    #@7e3
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    #@7e5
    .line 4152
    add-int/2addr v2, v3

    #@7e6
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@7e8
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@7ea
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@7ec
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@7ee
    goto/16 :goto_13

    #@7f0
    .line 4138
    :cond_34
    move-object/from16 v0, v16

    #@7f2
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@7f4
    const/16 v3, 0x7f1

    #@7f6
    if-eq v2, v3, :cond_33

    #@7f8
    .line 4139
    move-object/from16 v0, v16

    #@7fa
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@7fc
    const/4 v3, 0x1

    #@7fd
    if-lt v2, v3, :cond_35

    #@7ff
    .line 4140
    move-object/from16 v0, v16

    #@801
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@803
    const/16 v3, 0x7cf

    #@805
    if-le v2, v3, :cond_33

    #@807
    .line 4155
    :cond_35
    move-object/from16 v0, p0

    #@809
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    #@80b
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@80d
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@80f
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@811
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@813
    .line 4156
    move-object/from16 v0, p0

    #@815
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    #@817
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@819
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@81b
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@81d
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@81f
    .line 4157
    move-object/from16 v0, p0

    #@821
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    #@823
    .line 4158
    move-object/from16 v0, p0

    #@825
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    #@827
    .line 4157
    add-int/2addr v2, v3

    #@828
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@82a
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@82c
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@82e
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@830
    .line 4159
    move-object/from16 v0, p0

    #@832
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    #@834
    .line 4160
    move-object/from16 v0, p0

    #@836
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    #@838
    .line 4159
    add-int/2addr v2, v3

    #@839
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@83b
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@83d
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@83f
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@841
    goto/16 :goto_13

    #@843
    .line 4171
    :cond_36
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@846
    goto/16 :goto_3

    #@848
    .line 4173
    :cond_37
    if-eqz p2, :cond_38

    #@84a
    .line 4178
    const/4 v7, 0x0

    #@84b
    move-object/from16 v2, p0

    #@84d
    move-object/from16 v3, p1

    #@84f
    move-object/from16 v6, p2

    #@851
    invoke-virtual/range {v2 .. v12}, Lcom/android/server/policy/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@854
    goto/16 :goto_3

    #@856
    .line 4184
    :cond_38
    move-object/from16 v0, v16

    #@858
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@85a
    const/16 v3, 0x7de

    #@85c
    if-eq v2, v3, :cond_39

    #@85e
    move-object/from16 v0, v16

    #@860
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@862
    const/16 v3, 0x7e4

    #@864
    if-ne v2, v3, :cond_3a

    #@866
    .line 4189
    :cond_39
    move-object/from16 v0, p0

    #@868
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    #@86a
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@86c
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@86e
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@870
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@872
    .line 4190
    move-object/from16 v0, p0

    #@874
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    #@876
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@878
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@87a
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@87c
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@87e
    .line 4191
    move-object/from16 v0, p0

    #@880
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    #@882
    .line 4192
    move-object/from16 v0, p0

    #@884
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    #@886
    .line 4191
    add-int/2addr v2, v3

    #@887
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@889
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@88b
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@88d
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@88f
    .line 4193
    move-object/from16 v0, p0

    #@891
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    #@893
    .line 4194
    move-object/from16 v0, p0

    #@895
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    #@897
    .line 4193
    add-int/2addr v2, v3

    #@898
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@89a
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@89c
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@89e
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@8a0
    goto/16 :goto_3

    #@8a2
    .line 4195
    :cond_3a
    move-object/from16 v0, v16

    #@8a4
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@8a6
    const/16 v3, 0x7d5

    #@8a8
    if-eq v2, v3, :cond_3b

    #@8aa
    move-object/from16 v0, v16

    #@8ac
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@8ae
    const/16 v3, 0x7d3

    #@8b0
    if-ne v2, v3, :cond_3c

    #@8b2
    .line 4197
    :cond_3b
    move-object/from16 v0, p0

    #@8b4
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    #@8b6
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@8b8
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@8ba
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@8bc
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@8be
    .line 4198
    move-object/from16 v0, p0

    #@8c0
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    #@8c2
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@8c4
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@8c6
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@8c8
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@8ca
    .line 4199
    move-object/from16 v0, p0

    #@8cc
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    #@8ce
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@8d0
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@8d2
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@8d4
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@8d6
    .line 4200
    move-object/from16 v0, p0

    #@8d8
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    #@8da
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@8dc
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@8de
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@8e0
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@8e2
    goto/16 :goto_3

    #@8e4
    .line 4202
    :cond_3c
    move-object/from16 v0, p0

    #@8e6
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    #@8e8
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@8ea
    .line 4203
    move-object/from16 v0, p0

    #@8ec
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    #@8ee
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@8f0
    .line 4204
    move-object/from16 v0, p0

    #@8f2
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    #@8f4
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@8f6
    .line 4205
    move-object/from16 v0, p0

    #@8f8
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    #@8fa
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@8fc
    .line 4206
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVoiceInteraction()Z

    #@8ff
    move-result v2

    #@900
    if-eqz v2, :cond_3d

    #@902
    .line 4207
    move-object/from16 v0, p0

    #@904
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    #@906
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@908
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@90a
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@90c
    .line 4208
    move-object/from16 v0, p0

    #@90e
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    #@910
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@912
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@914
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@916
    .line 4209
    move-object/from16 v0, p0

    #@918
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    #@91a
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@91c
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@91e
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@920
    .line 4210
    move-object/from16 v0, p0

    #@922
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    #@924
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@926
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@928
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@92a
    .line 4222
    :goto_14
    const/16 v2, 0x30

    #@92c
    if-eq v5, v2, :cond_3f

    #@92e
    .line 4223
    move-object/from16 v0, p0

    #@930
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    #@932
    iput v2, v12, Landroid/graphics/Rect;->left:I

    #@934
    .line 4224
    move-object/from16 v0, p0

    #@936
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    #@938
    iput v2, v12, Landroid/graphics/Rect;->top:I

    #@93a
    .line 4225
    move-object/from16 v0, p0

    #@93c
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    #@93e
    iput v2, v12, Landroid/graphics/Rect;->right:I

    #@940
    .line 4226
    move-object/from16 v0, p0

    #@942
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    #@944
    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    #@946
    goto/16 :goto_3

    #@948
    .line 4211
    :cond_3d
    const/16 v2, 0x10

    #@94a
    if-eq v5, v2, :cond_3e

    #@94c
    .line 4212
    move-object/from16 v0, p0

    #@94e
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    #@950
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@952
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@954
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@956
    .line 4213
    move-object/from16 v0, p0

    #@958
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    #@95a
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@95c
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@95e
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@960
    .line 4214
    move-object/from16 v0, p0

    #@962
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    #@964
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@966
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@968
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@96a
    .line 4215
    move-object/from16 v0, p0

    #@96c
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    #@96e
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@970
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@972
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@974
    goto :goto_14

    #@975
    .line 4217
    :cond_3e
    move-object/from16 v0, p0

    #@977
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    #@979
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@97b
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@97d
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@97f
    .line 4218
    move-object/from16 v0, p0

    #@981
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    #@983
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@985
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@987
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@989
    .line 4219
    move-object/from16 v0, p0

    #@98b
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    #@98d
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@98f
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@991
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@993
    .line 4220
    move-object/from16 v0, p0

    #@995
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    #@997
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@999
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@99b
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@99d
    goto :goto_14

    #@99e
    .line 4228
    :cond_3f
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@9a1
    goto/16 :goto_3

    #@9a3
    .line 4257
    .end local v18    # "inheritTranslucentDecor":Z
    .end local v19    # "isAppWindow":Z
    .end local v26    # "topAtRest":Z
    .local v15, "osf":Landroid/graphics/Rect;
    .restart local v22    # "outset":I
    .restart local v23    # "rotation":I
    .restart local v27    # "useOutsets":Z
    :cond_40
    const/4 v2, 0x1

    #@9a4
    move/from16 v0, v23

    #@9a6
    if-ne v0, v2, :cond_41

    #@9a8
    .line 4258
    iget v2, v15, Landroid/graphics/Rect;->right:I

    #@9aa
    add-int v2, v2, v22

    #@9ac
    iput v2, v15, Landroid/graphics/Rect;->right:I

    #@9ae
    goto/16 :goto_4

    #@9b0
    .line 4259
    :cond_41
    const/4 v2, 0x2

    #@9b1
    move/from16 v0, v23

    #@9b3
    if-ne v0, v2, :cond_42

    #@9b5
    .line 4260
    iget v2, v15, Landroid/graphics/Rect;->top:I

    #@9b7
    sub-int v2, v2, v22

    #@9b9
    iput v2, v15, Landroid/graphics/Rect;->top:I

    #@9bb
    goto/16 :goto_4

    #@9bd
    .line 4261
    :cond_42
    const/4 v2, 0x3

    #@9be
    move/from16 v0, v23

    #@9c0
    if-ne v0, v2, :cond_5

    #@9c2
    .line 4262
    iget v2, v15, Landroid/graphics/Rect;->left:I

    #@9c4
    sub-int v2, v2, v22

    #@9c6
    iput v2, v15, Landroid/graphics/Rect;->left:I

    #@9c8
    goto/16 :goto_4

    #@9ca
    .line 4286
    .end local v15    # "osf":Landroid/graphics/Rect;
    .end local v22    # "outset":I
    .end local v23    # "rotation":I
    :cond_43
    const/4 v2, 0x0

    #@9cb
    const/4 v3, 0x0

    #@9cc
    move-object/from16 v0, p0

    #@9ce
    invoke-virtual {v0, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    #@9d1
    .line 4287
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    #@9d4
    goto/16 :goto_5

    #@9d6
    .line 4291
    :cond_44
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->offsetVoiceInputWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    #@9d9
    goto/16 :goto_6
.end method

.method public lockNow(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 6209
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v1, "android.permission.DEVICE_POWER"

    #@6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 6210
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@b
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@10
    .line 6211
    if-eqz p1, :cond_0

    #@12
    .line 6214
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    #@14
    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->setLockOptions(Landroid/os/Bundle;)V

    #@17
    .line 6216
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@19
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    #@1b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@1e
    .line 6208
    return-void
.end method

.method needSensorRunningLp()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x4

    #@1
    const/4 v2, 0x1

    #@2
    .line 806
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    #@4
    if-eqz v0, :cond_2

    #@6
    .line 807
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    #@8
    if-eq v0, v3, :cond_0

    #@a
    .line 808
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    #@c
    const/16 v1, 0xa

    #@e
    if-ne v0, v1, :cond_1

    #@10
    .line 813
    :cond_0
    return v2

    #@11
    .line 809
    :cond_1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    #@13
    const/4 v1, 0x7

    #@14
    if-eq v0, v1, :cond_0

    #@16
    .line 810
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    #@18
    const/4 v1, 0x6

    #@19
    if-eq v0, v1, :cond_0

    #@1b
    .line 816
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    #@1d
    if-eqz v0, :cond_4

    #@1f
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    #@21
    const/4 v1, 0x2

    #@22
    if-ne v0, v1, :cond_4

    #@24
    .line 822
    :cond_3
    return v2

    #@25
    .line 817
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    #@27
    if-eqz v0, :cond_5

    #@29
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    #@2b
    if-eq v0, v2, :cond_3

    #@2d
    .line 818
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    #@2f
    const/4 v1, 0x3

    #@30
    if-eq v0, v1, :cond_3

    #@32
    .line 819
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    #@34
    if-eq v0, v3, :cond_3

    #@36
    .line 824
    :cond_5
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    #@38
    if-ne v0, v2, :cond_6

    #@3a
    .line 833
    const/4 v0, 0x0

    #@3b
    return v0

    #@3c
    .line 835
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    #@3e
    return v0
.end method

.method public notifyActivityDrawnForKeyguardLw()V
    .locals 2

    #@0
    .prologue
    .line 5752
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5753
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@6
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$20;

    #@8
    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$20;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@e
    .line 5751
    :cond_0
    return-void
.end method

.method public notifyCameraLensCoverSwitchChanged(JZ)V
    .locals 7
    .param p1, "whenNanos"    # J
    .param p3, "lensCovered"    # Z

    #@0
    .prologue
    .line 4725
    if-eqz p3, :cond_0

    #@2
    const/4 v2, 0x1

    #@3
    .line 4726
    .local v2, "lensCoverState":I
    :goto_0
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    #@5
    if-ne v3, v2, :cond_1

    #@7
    .line 4727
    return-void

    #@8
    .line 4725
    .end local v2    # "lensCoverState":I
    :cond_0
    const/4 v2, 0x0

    #@9
    .restart local v2    # "lensCoverState":I
    goto :goto_0

    #@a
    .line 4729
    :cond_1
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    #@c
    const/4 v4, 0x1

    #@d
    if-ne v3, v4, :cond_2

    #@f
    .line 4730
    if-nez v2, :cond_2

    #@11
    .line 4732
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@13
    if-nez v3, :cond_3

    #@15
    const/4 v1, 0x0

    #@16
    .line 4734
    :goto_1
    if-eqz v1, :cond_4

    #@18
    .line 4735
    new-instance v0, Landroid/content/Intent;

    #@1a
    const-string/jumbo v3, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    #@1d
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@20
    .line 4739
    .local v0, "intent":Landroid/content/Intent;
    :goto_2
    const-wide/32 v4, 0xf4240

    #@23
    div-long v4, p1, v4

    #@25
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromCameraLens:Z

    #@27
    .line 4740
    const-string/jumbo v6, "android.policy:CAMERA_COVER"

    #@2a
    .line 4739
    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    #@2d
    .line 4741
    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    #@2f
    invoke-direct {p0, v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@32
    .line 4743
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    #@34
    .line 4724
    return-void

    #@35
    .line 4733
    :cond_3
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@37
    invoke-virtual {v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    #@3a
    move-result v1

    #@3b
    .local v1, "keyguardActive":Z
    goto :goto_1

    #@3c
    .line 4737
    .end local v1    # "keyguardActive":Z
    :cond_4
    new-instance v0, Landroid/content/Intent;

    #@3e
    const-string/jumbo v3, "android.media.action.STILL_IMAGE_CAMERA"

    #@41
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@44
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_2
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 5
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    #@0
    .prologue
    .line 4706
    if-eqz p3, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    .line 4707
    .local v0, "newLidState":I
    :goto_0
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    #@5
    if-ne v0, v1, :cond_1

    #@7
    .line 4708
    return-void

    #@8
    .line 4706
    .end local v0    # "newLidState":I
    :cond_0
    const/4 v0, 0x0

    #@9
    .restart local v0    # "newLidState":I
    goto :goto_0

    #@a
    .line 4711
    :cond_1
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    #@c
    .line 4712
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->applyLidSwitchState()V

    #@f
    .line 4713
    const/4 v1, 0x1

    #@10
    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    #@13
    .line 4715
    if-eqz p3, :cond_3

    #@15
    .line 4716
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@18
    move-result-wide v2

    #@19
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromLidSwitch:Z

    #@1b
    .line 4717
    const-string/jumbo v4, "android.policy:LID"

    #@1e
    .line 4716
    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    #@21
    .line 4704
    :cond_2
    :goto_1
    return-void

    #@22
    .line 4718
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    #@24
    if-nez v1, :cond_2

    #@26
    .line 4719
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@28
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@2b
    move-result-wide v2

    #@2c
    const/4 v4, 0x0

    #@2d
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    #@30
    goto :goto_1
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .locals 9
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "effectId"    # I
    .param p3, "always"    # Z

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 6491
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    #@4
    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 6492
    return v7

    #@b
    .line 6494
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@d
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@10
    move-result-object v1

    #@11
    .line 6495
    const-string/jumbo v5, "haptic_feedback_enabled"

    #@14
    const/4 v6, -0x2

    #@15
    .line 6494
    invoke-static {v1, v5, v7, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@18
    move-result v1

    #@19
    if-nez v1, :cond_2

    #@1b
    const/4 v0, 0x1

    #@1c
    .line 6496
    .local v0, "hapticsDisabled":Z
    :goto_0
    if-eqz v0, :cond_1

    #@1e
    if-eqz p3, :cond_3

    #@20
    .line 6499
    :cond_1
    const/4 v4, 0x0

    #@21
    .line 6500
    .local v4, "pattern":[J
    sparse-switch p2, :sswitch_data_0

    #@24
    .line 6526
    return v7

    #@25
    .line 6494
    .end local v0    # "hapticsDisabled":Z
    .end local v4    # "pattern":[J
    :cond_2
    const/4 v0, 0x0

    #@26
    .restart local v0    # "hapticsDisabled":Z
    goto :goto_0

    #@27
    .line 6497
    :cond_3
    return v7

    #@28
    .line 6502
    .restart local v4    # "pattern":[J
    :sswitch_0
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressVibePattern:[J

    #@2a
    .line 6530
    .local v4, "pattern":[J
    :goto_1
    if-eqz p1, :cond_4

    #@2c
    .line 6531
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningUid()I

    #@2f
    move-result v2

    #@30
    .line 6532
    .local v2, "owningUid":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    .line 6537
    .local v3, "owningPackage":Ljava/lang/String;
    :goto_2
    array-length v1, v4

    #@35
    if-ne v1, v8, :cond_5

    #@37
    .line 6539
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    #@39
    aget-wide v4, v4, v7

    #@3b
    .end local v4    # "pattern":[J
    sget-object v6, Lcom/android/server/policy/PhoneWindowManager;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    #@3d
    invoke-virtual/range {v1 .. v6}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;JLandroid/media/AudioAttributes;)V

    #@40
    .line 6544
    :goto_3
    return v8

    #@41
    .line 6505
    .end local v2    # "owningUid":I
    .end local v3    # "owningPackage":Ljava/lang/String;
    .local v4, "pattern":[J
    :sswitch_1
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mVirtualKeyVibePattern:[J

    #@43
    .local v4, "pattern":[J
    goto :goto_1

    #@44
    .line 6508
    .local v4, "pattern":[J
    :sswitch_2
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyboardTapVibePattern:[J

    #@46
    .local v4, "pattern":[J
    goto :goto_1

    #@47
    .line 6511
    .local v4, "pattern":[J
    :sswitch_3
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mClockTickVibePattern:[J

    #@49
    .local v4, "pattern":[J
    goto :goto_1

    #@4a
    .line 6514
    .local v4, "pattern":[J
    :sswitch_4
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mCalendarDateVibePattern:[J

    #@4c
    .local v4, "pattern":[J
    goto :goto_1

    #@4d
    .line 6517
    .local v4, "pattern":[J
    :sswitch_5
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    #@4f
    .local v4, "pattern":[J
    goto :goto_1

    #@50
    .line 6520
    .local v4, "pattern":[J
    :sswitch_6
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    #@52
    .local v4, "pattern":[J
    goto :goto_1

    #@53
    .line 6523
    .local v4, "pattern":[J
    :sswitch_7
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContextClickVibePattern:[J

    #@55
    .local v4, "pattern":[J
    goto :goto_1

    #@56
    .line 6534
    :cond_4
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@59
    move-result v2

    #@5a
    .line 6535
    .restart local v2    # "owningUid":I
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@5c
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@5f
    move-result-object v3

    #@60
    .restart local v3    # "owningPackage":Ljava/lang/String;
    goto :goto_2

    #@61
    .line 6542
    :cond_5
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    #@63
    sget-object v6, Lcom/android/server/policy/PhoneWindowManager;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    #@65
    const/4 v5, -0x1

    #@66
    invoke-virtual/range {v1 .. v6}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;[JILandroid/media/AudioAttributes;)V

    #@69
    goto :goto_3

    #@6a
    .line 6500
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_7
        0x2710 -> :sswitch_5
        0x2711 -> :sswitch_6
    .end sparse-switch
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 4
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    #@0
    .prologue
    const/4 v3, -0x7

    #@1
    .line 2395
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    #@3
    sparse-switch v0, :sswitch_data_0

    #@6
    .line 2436
    :goto_0
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 2397
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@a
    .line 2398
    const-string/jumbo v1, "android.permission.STATUS_BAR_SERVICE"

    #@d
    .line 2399
    const-string/jumbo v2, "PhoneWindowManager"

    #@10
    .line 2397
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@13
    .line 2400
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 2401
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@19
    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_0

    #@1f
    .line 2402
    return v3

    #@20
    .line 2405
    :cond_0
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@22
    .line 2406
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@24
    invoke-virtual {v0, p1}, Lcom/android/server/policy/StatusBarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    #@27
    goto :goto_0

    #@28
    .line 2409
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@2a
    .line 2410
    const-string/jumbo v1, "android.permission.STATUS_BAR_SERVICE"

    #@2d
    .line 2411
    const-string/jumbo v2, "PhoneWindowManager"

    #@30
    .line 2409
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@33
    .line 2412
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@35
    if-eqz v0, :cond_1

    #@37
    .line 2413
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@39
    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    #@3c
    move-result v0

    #@3d
    if-eqz v0, :cond_1

    #@3f
    .line 2414
    return v3

    #@40
    .line 2417
    :cond_1
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@42
    .line 2418
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@44
    invoke-virtual {v0, p1}, Lcom/android/server/policy/BarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    #@47
    goto :goto_0

    #@48
    .line 2425
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@4a
    .line 2426
    const-string/jumbo v1, "android.permission.STATUS_BAR_SERVICE"

    #@4d
    .line 2427
    const-string/jumbo v2, "PhoneWindowManager"

    #@50
    .line 2425
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@53
    goto :goto_0

    #@54
    .line 2430
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    #@56
    if-eqz v0, :cond_2

    #@58
    .line 2431
    return v3

    #@59
    .line 2433
    :cond_2
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    #@5b
    goto :goto_0

    #@5c
    .line 2395
    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_0
        0x7de -> :sswitch_2
        0x7e1 -> :sswitch_2
        0x7e3 -> :sswitch_1
        0x7e8 -> :sswitch_2
        0x7ed -> :sswitch_3
        0x7f1 -> :sswitch_2
    .end sparse-switch
.end method

.method readLidState()V
    .locals 1

    #@0
    .prologue
    .line 1999
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@2
    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getLidState()I

    #@5
    move-result v0

    #@6
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    #@8
    .line 1998
    return-void
.end method

.method public removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    .locals 3
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "window"    # Landroid/view/View;

    #@0
    .prologue
    .line 2372
    if-eqz p2, :cond_0

    #@2
    .line 2373
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@4
    const-string/jumbo v2, "window"

    #@7
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/view/WindowManager;

    #@d
    .line 2374
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0, p2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    #@10
    .line 2368
    .end local v0    # "wm":Landroid/view/WindowManager;
    :cond_0
    return-void
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2442
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@3
    if-ne v0, p1, :cond_2

    #@5
    .line 2443
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@7
    .line 2444
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@9
    invoke-virtual {v0, v2}, Lcom/android/server/policy/StatusBarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    #@c
    .line 2445
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@e
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->showScrim()V

    #@11
    .line 2449
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@13
    if-ne v0, p1, :cond_1

    #@15
    .line 2450
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@17
    .line 2451
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@19
    invoke-virtual {v0, v2}, Lcom/android/server/policy/BarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    #@1c
    .line 2441
    :cond_1
    return-void

    #@1d
    .line 2446
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    #@1f
    if-ne v0, p1, :cond_0

    #@21
    .line 2447
    const-string/jumbo v0, "WindowManager"

    #@24
    const-string/jumbo v1, "Removing keyguard scrim"

    #@27
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 2448
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    #@2c
    goto :goto_0
.end method

.method public rotationForOrientationLw(II)I
    .locals 10
    .param p1, "orientation"    # I
    .param p2, "lastRotation"    # I

    #@0
    .prologue
    const/16 v9, 0xa

    #@2
    const/4 v8, 0x4

    #@3
    const/4 v7, 0x2

    #@4
    const/4 v3, 0x1

    #@5
    const/4 v4, 0x0

    #@6
    .line 5796
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceDefaultOrientation:Z

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 5797
    return v4

    #@b
    .line 5800
    :cond_0
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@d
    monitor-enter v5

    #@e
    .line 5801
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    #@10
    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->getProposedRotation()I

    #@13
    move-result v1

    #@14
    .line 5802
    .local v1, "sensorRotation":I
    if-gez v1, :cond_1

    #@16
    .line 5803
    move v1, p2

    #@17
    .line 5807
    :cond_1
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    #@19
    if-ne v2, v3, :cond_2

    #@1b
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidOpenRotation:I

    #@1d
    if-ltz v2, :cond_2

    #@1f
    .line 5809
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidOpenRotation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 5888
    .local v0, "preferredRotation":I
    :goto_0
    packed-switch p1, :pswitch_data_0

    #@24
    .line 5942
    :pswitch_0
    if-ltz v0, :cond_20

    #@26
    monitor-exit v5

    #@27
    .line 5943
    return v0

    #@28
    .line 5810
    .end local v0    # "preferredRotation":I
    :cond_2
    :try_start_1
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    #@2a
    if-ne v2, v7, :cond_5

    #@2c
    .line 5811
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    #@2e
    if-nez v2, :cond_3

    #@30
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockRotation:I

    #@32
    if-ltz v2, :cond_5

    #@34
    .line 5815
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    #@36
    if-eqz v2, :cond_4

    #@38
    .line 5816
    move v0, v1

    #@39
    .restart local v0    # "preferredRotation":I
    goto :goto_0

    #@3a
    .end local v0    # "preferredRotation":I
    :cond_4
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockRotation:I

    #@3c
    .restart local v0    # "preferredRotation":I
    goto :goto_0

    #@3d
    .line 5817
    .end local v0    # "preferredRotation":I
    :cond_5
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    #@3f
    if-eq v2, v3, :cond_6

    #@41
    .line 5818
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    #@43
    const/4 v6, 0x3

    #@44
    if-ne v2, v6, :cond_8

    #@46
    .line 5820
    :cond_6
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    #@48
    if-nez v2, :cond_7

    #@4a
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockRotation:I

    #@4c
    if-ltz v2, :cond_9

    #@4e
    .line 5824
    :cond_7
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    #@50
    if-eqz v2, :cond_a

    #@52
    .line 5825
    move v0, v1

    #@53
    .restart local v0    # "preferredRotation":I
    goto :goto_0

    #@54
    .line 5819
    .end local v0    # "preferredRotation":I
    :cond_8
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    #@56
    if-eq v2, v8, :cond_6

    #@58
    .line 5826
    :cond_9
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    #@5a
    if-eqz v2, :cond_b

    #@5c
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    #@5e
    if-eqz v2, :cond_b

    #@60
    .line 5829
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotation:I

    #@62
    .restart local v0    # "preferredRotation":I
    goto :goto_0

    #@63
    .line 5825
    .end local v0    # "preferredRotation":I
    :cond_a
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockRotation:I

    #@65
    .restart local v0    # "preferredRotation":I
    goto :goto_0

    #@66
    .line 5830
    .end local v0    # "preferredRotation":I
    :cond_b
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    #@68
    if-eqz v2, :cond_c

    #@6a
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    #@6c
    if-nez v2, :cond_c

    #@6e
    .line 5831
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUndockedHdmiRotation:I

    #@70
    if-ltz v2, :cond_c

    #@72
    .line 5836
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUndockedHdmiRotation:I

    #@74
    .restart local v0    # "preferredRotation":I
    goto :goto_0

    #@75
    .line 5837
    .end local v0    # "preferredRotation":I
    :cond_c
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotationLock:Z

    #@77
    if-eqz v2, :cond_d

    #@79
    .line 5840
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotation:I

    #@7b
    .restart local v0    # "preferredRotation":I
    goto :goto_0

    #@7c
    .line 5841
    .end local v0    # "preferredRotation":I
    :cond_d
    const/16 v2, 0xe

    #@7e
    if-ne p1, v2, :cond_e

    #@80
    .line 5843
    move v0, p2

    #@81
    .restart local v0    # "preferredRotation":I
    goto :goto_0

    #@82
    .line 5844
    .end local v0    # "preferredRotation":I
    :cond_e
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    #@84
    if-nez v2, :cond_f

    #@86
    .line 5847
    const/4 v0, -0x1

    #@87
    .restart local v0    # "preferredRotation":I
    goto :goto_0

    #@88
    .line 5848
    .end local v0    # "preferredRotation":I
    :cond_f
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    #@8a
    if-nez v2, :cond_14

    #@8c
    .line 5849
    if-eq p1, v7, :cond_10

    #@8e
    .line 5850
    const/4 v2, -0x1

    #@8f
    if-ne p1, v2, :cond_13

    #@91
    .line 5860
    :cond_10
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    #@93
    if-gez v2, :cond_11

    #@95
    .line 5864
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@97
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@9a
    move-result-object v2

    #@9b
    .line 5865
    const v6, 0x1120034

    #@9e
    .line 5864
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@a1
    move-result v2

    #@a2
    if-eqz v2, :cond_15

    #@a4
    move v2, v3

    #@a5
    :goto_1
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    #@a7
    .line 5867
    :cond_11
    if-ne v1, v7, :cond_12

    #@a9
    .line 5868
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    #@ab
    if-ne v2, v3, :cond_16

    #@ad
    .line 5871
    :cond_12
    move v0, v1

    #@ae
    .line 5870
    .restart local v0    # "preferredRotation":I
    goto/16 :goto_0

    #@b0
    .line 5851
    .end local v0    # "preferredRotation":I
    :cond_13
    const/16 v2, 0xb

    #@b2
    if-eq p1, v2, :cond_10

    #@b4
    .line 5852
    const/16 v2, 0xc

    #@b6
    if-eq p1, v2, :cond_10

    #@b8
    .line 5853
    const/16 v2, 0xd

    #@ba
    if-eq p1, v2, :cond_10

    #@bc
    .line 5854
    :cond_14
    if-eq p1, v8, :cond_10

    #@be
    .line 5855
    if-eq p1, v9, :cond_10

    #@c0
    .line 5856
    const/4 v2, 0x6

    #@c1
    if-eq p1, v2, :cond_10

    #@c3
    .line 5857
    const/4 v2, 0x7

    #@c4
    if-eq p1, v2, :cond_10

    #@c6
    .line 5875
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    #@c8
    if-ne v2, v3, :cond_17

    #@ca
    .line 5876
    const/4 v2, 0x5

    #@cb
    if-eq p1, v2, :cond_17

    #@cd
    .line 5881
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    #@cf
    .restart local v0    # "preferredRotation":I
    goto/16 :goto_0

    #@d1
    .end local v0    # "preferredRotation":I
    :cond_15
    move v2, v4

    #@d2
    .line 5865
    goto :goto_1

    #@d3
    .line 5869
    :cond_16
    if-eq p1, v9, :cond_12

    #@d5
    .line 5870
    const/16 v2, 0xd

    #@d7
    if-eq p1, v2, :cond_12

    #@d9
    .line 5873
    move v0, p2

    #@da
    .restart local v0    # "preferredRotation":I
    goto/16 :goto_0

    #@dc
    .line 5885
    .end local v0    # "preferredRotation":I
    :cond_17
    const/4 v0, -0x1

    #@dd
    .restart local v0    # "preferredRotation":I
    goto/16 :goto_0

    #@df
    .line 5891
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e2
    move-result v2

    #@e3
    if-eqz v2, :cond_18

    #@e5
    monitor-exit v5

    #@e6
    .line 5892
    return v0

    #@e7
    .line 5894
    :cond_18
    :try_start_2
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@e9
    monitor-exit v5

    #@ea
    return v2

    #@eb
    .line 5898
    :pswitch_2
    :try_start_3
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isLandscapeOrSeascape(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@ee
    move-result v2

    #@ef
    if-eqz v2, :cond_19

    #@f1
    monitor-exit v5

    #@f2
    .line 5899
    return v0

    #@f3
    .line 5901
    :cond_19
    :try_start_4
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@f5
    monitor-exit v5

    #@f6
    return v2

    #@f7
    .line 5905
    :pswitch_3
    :try_start_5
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@fa
    move-result v2

    #@fb
    if-eqz v2, :cond_1a

    #@fd
    monitor-exit v5

    #@fe
    .line 5906
    return v0

    #@ff
    .line 5908
    :cond_1a
    :try_start_6
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@101
    monitor-exit v5

    #@102
    return v2

    #@103
    .line 5912
    :pswitch_4
    :try_start_7
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isLandscapeOrSeascape(I)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@106
    move-result v2

    #@107
    if-eqz v2, :cond_1b

    #@109
    monitor-exit v5

    #@10a
    .line 5913
    return v0

    #@10b
    .line 5915
    :cond_1b
    :try_start_8
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@10d
    monitor-exit v5

    #@10e
    return v2

    #@10f
    .line 5920
    :pswitch_5
    :try_start_9
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isLandscapeOrSeascape(I)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@112
    move-result v2

    #@113
    if-eqz v2, :cond_1c

    #@115
    monitor-exit v5

    #@116
    .line 5921
    return v0

    #@117
    .line 5923
    :cond_1c
    :try_start_a
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isLandscapeOrSeascape(I)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@11a
    move-result v2

    #@11b
    if-eqz v2, :cond_1d

    #@11d
    monitor-exit v5

    #@11e
    .line 5924
    return p2

    #@11f
    .line 5926
    :cond_1d
    :try_start_b
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    #@121
    monitor-exit v5

    #@122
    return v2

    #@123
    .line 5931
    :pswitch_6
    :try_start_c
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    #@126
    move-result v2

    #@127
    if-eqz v2, :cond_1e

    #@129
    monitor-exit v5

    #@12a
    .line 5932
    return v0

    #@12b
    .line 5934
    :cond_1e
    :try_start_d
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    #@12e
    move-result v2

    #@12f
    if-eqz v2, :cond_1f

    #@131
    monitor-exit v5

    #@132
    .line 5935
    return p2

    #@133
    .line 5937
    :cond_1f
    :try_start_e
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    #@135
    monitor-exit v5

    #@136
    return v2

    #@137
    :cond_20
    monitor-exit v5

    #@138
    .line 5945
    return v4

    #@139
    .line 5800
    .end local v0    # "preferredRotation":I
    .end local v1    # "sensorRotation":I
    :catchall_0
    move-exception v2

    #@13a
    monitor-exit v5

    #@13b
    throw v2

    #@13c
    .line 5888
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public rotationHasCompatibleMetricsLw(II)Z
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "rotation"    # I

    #@0
    .prologue
    .line 5952
    packed-switch p1, :pswitch_data_0

    #@3
    .line 5964
    :pswitch_0
    const/4 v0, 0x1

    #@4
    return v0

    #@5
    .line 5956
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z

    #@8
    move-result v0

    #@9
    return v0

    #@a
    .line 5961
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 5952
    nop

    #@10
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public screenTurnedOff()V
    .locals 2

    #@0
    .prologue
    .line 5556
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateScreenOffSleepToken(Z)V

    #@4
    .line 5557
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 5558
    const/4 v0, 0x0

    #@8
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    #@a
    .line 5559
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    #@d
    .line 5560
    const/4 v0, 0x0

    #@e
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    #@10
    .line 5561
    const/4 v0, 0x0

    #@11
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    #@13
    .line 5562
    const/4 v0, 0x0

    #@14
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    #@16
    .line 5563
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    #@19
    .line 5565
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@1b
    if-eqz v0, :cond_0

    #@1d
    .line 5566
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@1f
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurnedOff()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    :cond_0
    monitor-exit v1

    #@23
    .line 5553
    return-void

    #@24
    .line 5557
    :catchall_0
    move-exception v0

    #@25
    monitor-exit v1

    #@26
    throw v0
.end method

.method public screenTurnedOn()V
    .locals 2

    #@0
    .prologue
    .line 5599
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 5600
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 5601
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@9
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurnedOn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v1

    #@d
    .line 5598
    return-void

    #@e
    .line 5599
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method public screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 5
    .param p1, "screenOnListener"    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 5576
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateScreenOffSleepToken(Z)V

    #@4
    .line 5577
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 5578
    const/4 v0, 0x1

    #@8
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    #@a
    .line 5579
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    #@d
    .line 5580
    const/4 v0, 0x0

    #@e
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    #@10
    .line 5581
    const/4 v0, 0x0

    #@11
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    #@13
    .line 5582
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    #@15
    .line 5584
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@17
    if-eqz v0, :cond_0

    #@19
    .line 5585
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@1b
    const/4 v2, 0x6

    #@1c
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    #@1f
    .line 5586
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@21
    const-wide/16 v2, 0x3e8

    #@23
    const/4 v4, 0x6

    #@24
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    #@27
    .line 5587
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@29
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    #@2b
    invoke-virtual {v0, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurningOn(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    :goto_0
    monitor-exit v1

    #@2f
    .line 5573
    return-void

    #@30
    .line 5591
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishKeyguardDrawn()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    goto :goto_0

    #@34
    .line 5577
    :catchall_0
    move-exception v0

    #@35
    monitor-exit v1

    #@36
    throw v0
.end method

.method public selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I
    .locals 7
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "transit"    # I

    #@0
    .prologue
    const/4 v6, 0x3

    #@1
    const/4 v3, 0x2

    #@2
    const/4 v1, -0x1

    #@3
    const/4 v5, 0x1

    #@4
    const/4 v4, 0x0

    #@5
    .line 2462
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@7
    if-ne p1, v2, :cond_6

    #@9
    .line 2463
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@c
    move-result-object v2

    #@d
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@f
    and-int/lit16 v2, v2, 0x400

    #@11
    if-eqz v2, :cond_1

    #@13
    const/4 v0, 0x1

    #@14
    .line 2464
    .local v0, "isKeyguard":Z
    :goto_0
    if-eq p2, v3, :cond_0

    #@16
    .line 2465
    const/4 v2, 0x4

    #@17
    if-ne p2, v2, :cond_3

    #@19
    .line 2466
    :cond_0
    if-eqz v0, :cond_2

    #@1b
    :goto_1
    return v1

    #@1c
    .line 2463
    .end local v0    # "isKeyguard":Z
    :cond_1
    const/4 v0, 0x0

    #@1d
    .restart local v0    # "isKeyguard":Z
    goto :goto_0

    #@1e
    .line 2466
    :cond_2
    const v1, 0x10a001e

    #@21
    goto :goto_1

    #@22
    .line 2467
    :cond_3
    if-eq p2, v5, :cond_4

    #@24
    .line 2468
    if-ne p2, v6, :cond_f

    #@26
    .line 2469
    :cond_4
    if-eqz v0, :cond_5

    #@28
    :goto_2
    return v1

    #@29
    :cond_5
    const v1, 0x10a001d

    #@2c
    goto :goto_2

    #@2d
    .line 2471
    .end local v0    # "isKeyguard":Z
    :cond_6
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@2f
    if-ne p1, v2, :cond_f

    #@31
    .line 2472
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@34
    move-result-object v2

    #@35
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@37
    if-eqz v2, :cond_7

    #@39
    .line 2473
    return v4

    #@3a
    .line 2476
    :cond_7
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarOnBottom:Z

    #@3c
    if-eqz v2, :cond_b

    #@3e
    .line 2477
    if-eq p2, v3, :cond_8

    #@40
    .line 2478
    const/4 v2, 0x4

    #@41
    if-ne p2, v2, :cond_9

    #@43
    .line 2479
    :cond_8
    const v1, 0x10a0018

    #@46
    return v1

    #@47
    .line 2480
    :cond_9
    if-eq p2, v5, :cond_a

    #@49
    .line 2481
    if-ne p2, v6, :cond_f

    #@4b
    .line 2482
    :cond_a
    const v1, 0x10a0017

    #@4e
    return v1

    #@4f
    .line 2485
    :cond_b
    if-eq p2, v3, :cond_c

    #@51
    .line 2486
    const/4 v2, 0x4

    #@52
    if-ne p2, v2, :cond_d

    #@54
    .line 2487
    :cond_c
    const v1, 0x10a001c

    #@57
    return v1

    #@58
    .line 2488
    :cond_d
    if-eq p2, v5, :cond_e

    #@5a
    .line 2489
    if-ne p2, v6, :cond_f

    #@5c
    .line 2490
    :cond_e
    const v1, 0x10a001b

    #@5f
    return v1

    #@60
    .line 2495
    :cond_f
    const/4 v2, 0x5

    #@61
    if-ne p2, v2, :cond_10

    #@63
    .line 2496
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasAppShownWindows()Z

    #@66
    move-result v1

    #@67
    if-eqz v1, :cond_11

    #@69
    .line 2498
    const v1, 0x10a0011

    #@6c
    return v1

    #@6d
    .line 2500
    :cond_10
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@70
    move-result-object v2

    #@71
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    #@73
    const/16 v3, 0x7e7

    #@75
    if-ne v2, v3, :cond_11

    #@77
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingLockscreen:Z

    #@79
    if-eqz v2, :cond_11

    #@7b
    .line 2501
    if-ne p2, v5, :cond_11

    #@7d
    .line 2506
    return v1

    #@7e
    .line 2509
    :cond_11
    return v4
.end method

.method public selectRotationAnimationLw([I)V
    .locals 4
    .param p1, "anim"    # [I

    #@0
    .prologue
    const v3, 0x10a004a

    #@3
    const/4 v2, 0x1

    #@4
    const/4 v1, 0x0

    #@5
    .line 2518
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@7
    if-eqz v0, :cond_0

    #@9
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 2519
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@f
    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@12
    move-result-object v0

    #@13
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    #@15
    packed-switch v0, :pswitch_data_0

    #@18
    .line 2530
    aput v1, p1, v2

    #@1a
    aput v1, p1, v1

    #@1c
    .line 2513
    :goto_0
    return-void

    #@1d
    .line 2521
    :pswitch_0
    const v0, 0x10a004c

    #@20
    aput v0, p1, v1

    #@22
    .line 2522
    aput v3, p1, v2

    #@24
    goto :goto_0

    #@25
    .line 2525
    :pswitch_1
    const v0, 0x10a004b

    #@28
    aput v0, p1, v1

    #@2a
    .line 2526
    aput v3, p1, v2

    #@2c
    goto :goto_0

    #@2d
    .line 2534
    :cond_0
    aput v1, p1, v2

    #@2f
    aput v1, p1, v1

    #@31
    goto :goto_0

    #@32
    .line 2519
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method sendCloseSystemWindows()V
    .locals 2

    #@0
    .prologue
    .line 5778
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    #@6
    .line 5777
    return-void
.end method

.method sendCloseSystemWindows(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 5782
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    #@5
    .line 5781
    return-void
.end method

.method setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "fl"    # I
    .param p3, "adjust"    # I
    .param p4, "attached"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p5, "insetDecors"    # Z
    .param p6, "pf"    # Landroid/graphics/Rect;
    .param p7, "df"    # Landroid/graphics/Rect;
    .param p8, "of"    # Landroid/graphics/Rect;
    .param p9, "cf"    # Landroid/graphics/Rect;
    .param p10, "vf"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 3737
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    #@3
    move-result v0

    #@4
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLayer:I

    #@6
    if-le v0, v1, :cond_1

    #@8
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    #@b
    move-result v0

    #@c
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLayer:I

    #@e
    if-ge v0, v1, :cond_1

    #@10
    .line 3745
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    #@12
    iput v0, p10, Landroid/graphics/Rect;->left:I

    #@14
    iput v0, p9, Landroid/graphics/Rect;->left:I

    #@16
    iput v0, p8, Landroid/graphics/Rect;->left:I

    #@18
    iput v0, p7, Landroid/graphics/Rect;->left:I

    #@1a
    .line 3746
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    #@1c
    iput v0, p10, Landroid/graphics/Rect;->top:I

    #@1e
    iput v0, p9, Landroid/graphics/Rect;->top:I

    #@20
    iput v0, p8, Landroid/graphics/Rect;->top:I

    #@22
    iput v0, p7, Landroid/graphics/Rect;->top:I

    #@24
    .line 3747
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    #@26
    iput v0, p10, Landroid/graphics/Rect;->right:I

    #@28
    iput v0, p9, Landroid/graphics/Rect;->right:I

    #@2a
    iput v0, p8, Landroid/graphics/Rect;->right:I

    #@2c
    iput v0, p7, Landroid/graphics/Rect;->right:I

    #@2e
    .line 3748
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    #@30
    iput v0, p10, Landroid/graphics/Rect;->bottom:I

    #@32
    iput v0, p9, Landroid/graphics/Rect;->bottom:I

    #@34
    iput v0, p8, Landroid/graphics/Rect;->bottom:I

    #@36
    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    #@38
    .line 3790
    .end local p9    # "cf":Landroid/graphics/Rect;
    :goto_0
    and-int/lit16 v0, p2, 0x100

    #@3a
    if-nez v0, :cond_0

    #@3c
    .line 3791
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    #@3f
    move-result-object p7

    #@40
    .line 3790
    .end local p7    # "df":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p6, p7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@43
    .line 3736
    return-void

    #@44
    .line 3756
    .restart local p7    # "df":Landroid/graphics/Rect;
    .restart local p9    # "cf":Landroid/graphics/Rect;
    :cond_1
    const/16 v0, 0x10

    #@46
    if-eq p3, v0, :cond_5

    #@48
    .line 3761
    const/high16 v0, 0x40000000    # 2.0f

    #@4a
    and-int/2addr v0, p2

    #@4b
    if-eqz v0, :cond_4

    #@4d
    .line 3762
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    #@50
    move-result-object v0

    #@51
    .line 3761
    :goto_1
    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@54
    .line 3783
    :cond_2
    :goto_2
    if-eqz p5, :cond_d

    #@56
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    #@59
    move-result-object v0

    #@5a
    :goto_3
    invoke-virtual {p7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@5d
    .line 3784
    if-eqz p5, :cond_3

    #@5f
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getOverscanFrameLw()Landroid/graphics/Rect;

    #@62
    move-result-object p9

    #@63
    .end local p9    # "cf":Landroid/graphics/Rect;
    :cond_3
    invoke-virtual {p8, p9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@66
    .line 3785
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    #@69
    move-result-object v0

    #@6a
    invoke-virtual {p10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@6d
    goto :goto_0

    #@6e
    .line 3762
    .restart local p9    # "cf":Landroid/graphics/Rect;
    :cond_4
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getOverscanFrameLw()Landroid/graphics/Rect;

    #@71
    move-result-object v0

    #@72
    goto :goto_1

    #@73
    .line 3770
    :cond_5
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    #@76
    move-result-object v0

    #@77
    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@7a
    .line 3771
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->isVoiceInteraction()Z

    #@7d
    move-result v0

    #@7e
    if-eqz v0, :cond_9

    #@80
    .line 3772
    iget v0, p9, Landroid/graphics/Rect;->left:I

    #@82
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    #@84
    if-ge v0, v1, :cond_6

    #@86
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    #@88
    iput v0, p9, Landroid/graphics/Rect;->left:I

    #@8a
    .line 3773
    :cond_6
    iget v0, p9, Landroid/graphics/Rect;->top:I

    #@8c
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    #@8e
    if-ge v0, v1, :cond_7

    #@90
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    #@92
    iput v0, p9, Landroid/graphics/Rect;->top:I

    #@94
    .line 3774
    :cond_7
    iget v0, p9, Landroid/graphics/Rect;->right:I

    #@96
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    #@98
    if-le v0, v1, :cond_8

    #@9a
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    #@9c
    iput v0, p9, Landroid/graphics/Rect;->right:I

    #@9e
    .line 3775
    :cond_8
    iget v0, p9, Landroid/graphics/Rect;->bottom:I

    #@a0
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    #@a2
    if-le v0, v1, :cond_2

    #@a4
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    #@a6
    iput v0, p9, Landroid/graphics/Rect;->bottom:I

    #@a8
    goto :goto_2

    #@a9
    .line 3776
    :cond_9
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    #@ac
    move-result v0

    #@ad
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLayer:I

    #@af
    if-ge v0, v1, :cond_2

    #@b1
    .line 3777
    iget v0, p9, Landroid/graphics/Rect;->left:I

    #@b3
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    #@b5
    if-ge v0, v1, :cond_a

    #@b7
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    #@b9
    iput v0, p9, Landroid/graphics/Rect;->left:I

    #@bb
    .line 3778
    :cond_a
    iget v0, p9, Landroid/graphics/Rect;->top:I

    #@bd
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    #@bf
    if-ge v0, v1, :cond_b

    #@c1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    #@c3
    iput v0, p9, Landroid/graphics/Rect;->top:I

    #@c5
    .line 3779
    :cond_b
    iget v0, p9, Landroid/graphics/Rect;->right:I

    #@c7
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    #@c9
    if-le v0, v1, :cond_c

    #@cb
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    #@cd
    iput v0, p9, Landroid/graphics/Rect;->right:I

    #@cf
    .line 3780
    :cond_c
    iget v0, p9, Landroid/graphics/Rect;->bottom:I

    #@d1
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    #@d3
    if-le v0, v1, :cond_2

    #@d5
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    #@d7
    iput v0, p9, Landroid/graphics/Rect;->bottom:I

    #@d9
    goto/16 :goto_2

    #@db
    :cond_d
    move-object v0, p9

    #@dc
    .line 3783
    goto/16 :goto_3
.end method

.method public setCurrentOrientationLw(I)V
    .locals 2
    .param p1, "newOrientation"    # I

    #@0
    .prologue
    .line 6456
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 6457
    :try_start_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    #@5
    if-eq p1, v0, :cond_0

    #@7
    .line 6458
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    #@9
    .line 6459
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v1

    #@d
    .line 6455
    return-void

    #@e
    .line 6456
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method public setCurrentUserLw(I)V
    .locals 3
    .param p1, "newUserId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 6776
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    #@3
    .line 6777
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 6778
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@9
    invoke-virtual {v1, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setCurrentUser(I)V

    #@c
    .line 6780
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 6782
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    #@12
    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBarService;->setCurrentUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 6787
    :cond_1
    :goto_0
    invoke-virtual {p0, v2, v2}, Lcom/android/server/policy/PhoneWindowManager;->setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    #@18
    .line 6775
    return-void

    #@19
    .line 6783
    :catch_0
    move-exception v0

    #@1a
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setDisplayOverscan(Landroid/view/Display;IIII)V
    .locals 1
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    #@0
    .prologue
    .line 1684
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1685
    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    #@8
    .line 1686
    iput p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    #@a
    .line 1687
    iput p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    #@c
    .line 1688
    iput p5, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    #@e
    .line 1683
    :cond_0
    return-void
.end method

.method setHdmiPlugged(Z)V
    .locals 3
    .param p1, "plugged"    # Z

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 4747
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    #@3
    if-eq v1, p1, :cond_0

    #@5
    .line 4748
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    #@7
    .line 4749
    invoke-virtual {p0, v2, v2}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(ZZ)V

    #@a
    .line 4750
    new-instance v0, Landroid/content/Intent;

    #@c
    const-string/jumbo v1, "android.intent.action.HDMI_PLUGGED"

    #@f
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@12
    .line 4751
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    #@14
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@17
    .line 4752
    const-string/jumbo v1, "state"

    #@1a
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@1d
    .line 4753
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@1f
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@21
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@24
    .line 4746
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public setInitialDisplaySize(Landroid/view/Display;III)V
    .locals 11
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "density"    # I

    #@0
    .prologue
    .line 1571
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@2
    if-eqz v6, :cond_0

    #@4
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    #@7
    move-result v6

    #@8
    if-eqz v6, :cond_1

    #@a
    .line 1572
    :cond_0
    return-void

    #@b
    .line 1574
    :cond_1
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    #@d
    .line 1576
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@f
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@12
    move-result-object v3

    #@13
    .line 1578
    .local v3, "res":Landroid/content/res/Resources;
    if-le p2, p3, :cond_4

    #@15
    .line 1579
    move v4, p3

    #@16
    .line 1580
    .local v4, "shortSize":I
    move v0, p2

    #@17
    .line 1581
    .local v0, "longSize":I
    const/4 v6, 0x0

    #@18
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    #@1a
    .line 1582
    const/4 v6, 0x2

    #@1b
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    #@1d
    .line 1583
    const v6, 0x1120035

    #@20
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@23
    move-result v6

    #@24
    if-eqz v6, :cond_3

    #@26
    .line 1584
    const/4 v6, 0x1

    #@27
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    #@29
    .line 1585
    const/4 v6, 0x3

    #@2a
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    #@2c
    .line 1605
    :goto_0
    const v6, 0x1050017

    #@2f
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@32
    move-result v6

    #@33
    .line 1604
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    #@35
    .line 1608
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    #@37
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    #@39
    .line 1610
    const v8, 0x1050018

    #@3c
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@3f
    move-result v8

    #@40
    .line 1609
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    #@42
    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    #@44
    aput v8, v9, v10

    #@46
    .line 1608
    aput v8, v6, v7

    #@48
    .line 1611
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    #@4a
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    #@4c
    .line 1613
    const v8, 0x1050019

    #@4f
    .line 1612
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@52
    move-result v8

    #@53
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    #@55
    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    #@57
    aput v8, v9, v10

    #@59
    .line 1611
    aput v8, v6, v7

    #@5b
    .line 1616
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    #@5d
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    #@5f
    .line 1620
    const v8, 0x105001a

    #@62
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@65
    move-result v8

    #@66
    .line 1619
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    #@68
    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    #@6a
    aput v8, v9, v10

    #@6c
    .line 1618
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    #@6e
    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    #@70
    aput v8, v9, v10

    #@72
    .line 1617
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    #@74
    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    #@76
    aput v8, v9, v10

    #@78
    .line 1616
    aput v8, v6, v7

    #@7a
    .line 1623
    mul-int/lit16 v6, v4, 0xa0

    #@7c
    div-int v5, v6, p4

    #@7e
    .line 1624
    .local v5, "shortSizeDp":I
    mul-int/lit16 v6, v0, 0xa0

    #@80
    div-int v1, v6, p4

    #@82
    .line 1627
    .local v1, "longSizeDp":I
    if-eq p2, p3, :cond_6

    #@84
    const/16 v6, 0x258

    #@86
    if-ge v5, v6, :cond_6

    #@88
    const/4 v6, 0x1

    #@89
    :goto_1
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    #@8b
    .line 1629
    const v6, 0x1120060

    #@8e
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@91
    move-result v6

    #@92
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    #@94
    .line 1632
    const-string/jumbo v6, "qemu.hw.mainkeys"

    #@97
    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@9a
    move-result-object v2

    #@9b
    .line 1633
    .local v2, "navBarOverride":Ljava/lang/String;
    const-string/jumbo v6, "1"

    #@9e
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a1
    move-result v6

    #@a2
    if-eqz v6, :cond_7

    #@a4
    .line 1634
    const/4 v6, 0x0

    #@a5
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    #@a7
    .line 1641
    :cond_2
    :goto_2
    const-string/jumbo v6, "portrait"

    #@aa
    const-string/jumbo v7, "persist.demo.hdmirotation"

    #@ad
    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@b0
    move-result-object v7

    #@b1
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b4
    move-result v6

    #@b5
    if-eqz v6, :cond_8

    #@b7
    .line 1642
    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    #@b9
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotation:I

    #@bb
    .line 1646
    :goto_3
    const-string/jumbo v6, "persist.demo.hdmirotationlock"

    #@be
    const/4 v7, 0x0

    #@bf
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@c2
    move-result v6

    #@c3
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    #@c5
    .line 1650
    const-string/jumbo v6, "portrait"

    #@c8
    const-string/jumbo v7, "persist.demo.remoterotation"

    #@cb
    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@ce
    move-result-object v7

    #@cf
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d2
    move-result v6

    #@d3
    if-eqz v6, :cond_9

    #@d5
    .line 1651
    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    #@d7
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotation:I

    #@d9
    .line 1656
    :goto_4
    const-string/jumbo v6, "persist.demo.rotationlock"

    #@dc
    const/4 v7, 0x0

    #@dd
    .line 1655
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@e0
    move-result v6

    #@e1
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotationLock:Z

    #@e3
    .line 1660
    const/16 v6, 0x3c0

    #@e5
    if-lt v1, v6, :cond_b

    #@e7
    const/16 v6, 0x2d0

    #@e9
    if-lt v5, v6, :cond_b

    #@eb
    .line 1661
    const v6, 0x112007a

    #@ee
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@f1
    move-result v6

    #@f2
    .line 1660
    if-eqz v6, :cond_b

    #@f4
    .line 1665
    const-string/jumbo v6, "true"

    #@f7
    const-string/jumbo v7, "config.override_forced_orient"

    #@fa
    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@fd
    move-result-object v7

    #@fe
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@101
    move-result v6

    #@102
    if-eqz v6, :cond_a

    #@104
    const/4 v6, 0x0

    #@105
    .line 1660
    :goto_5
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceDefaultOrientation:Z

    #@107
    .line 1568
    return-void

    #@108
    .line 1587
    .end local v1    # "longSizeDp":I
    .end local v2    # "navBarOverride":Ljava/lang/String;
    .end local v5    # "shortSizeDp":I
    :cond_3
    const/4 v6, 0x3

    #@109
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    #@10b
    .line 1588
    const/4 v6, 0x1

    #@10c
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    #@10e
    goto/16 :goto_0

    #@110
    .line 1591
    .end local v0    # "longSize":I
    .end local v4    # "shortSize":I
    :cond_4
    move v4, p2

    #@111
    .line 1592
    .restart local v4    # "shortSize":I
    move v0, p3

    #@112
    .line 1593
    .restart local v0    # "longSize":I
    const/4 v6, 0x0

    #@113
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    #@115
    .line 1594
    const/4 v6, 0x2

    #@116
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    #@118
    .line 1595
    const v6, 0x1120035

    #@11b
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@11e
    move-result v6

    #@11f
    if-eqz v6, :cond_5

    #@121
    .line 1596
    const/4 v6, 0x3

    #@122
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    #@124
    .line 1597
    const/4 v6, 0x1

    #@125
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    #@127
    goto/16 :goto_0

    #@129
    .line 1599
    :cond_5
    const/4 v6, 0x1

    #@12a
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    #@12c
    .line 1600
    const/4 v6, 0x3

    #@12d
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    #@12f
    goto/16 :goto_0

    #@131
    .line 1627
    .restart local v1    # "longSizeDp":I
    .restart local v5    # "shortSizeDp":I
    :cond_6
    const/4 v6, 0x0

    #@132
    goto/16 :goto_1

    #@134
    .line 1635
    .restart local v2    # "navBarOverride":Ljava/lang/String;
    :cond_7
    const-string/jumbo v6, "0"

    #@137
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13a
    move-result v6

    #@13b
    if-eqz v6, :cond_2

    #@13d
    .line 1636
    const/4 v6, 0x1

    #@13e
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    #@140
    goto/16 :goto_2

    #@142
    .line 1644
    :cond_8
    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    #@144
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotation:I

    #@146
    goto/16 :goto_3

    #@148
    .line 1653
    :cond_9
    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    #@14a
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotation:I

    #@14c
    goto :goto_4

    #@14d
    .line 1665
    :cond_a
    const/4 v6, 0x1

    #@14e
    goto :goto_5

    #@14f
    .line 1660
    :cond_b
    const/4 v6, 0x0

    #@150
    goto :goto_5
.end method

.method public setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0
    .param p1, "ime"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "target"    # Landroid/view/WindowManagerPolicy$WindowState;

    #@0
    .prologue
    .line 6765
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    #@2
    .line 6766
    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    #@4
    .line 6764
    return-void
.end method

.method public setRotationLw(I)V
    .locals 1
    .param p1, "rotation"    # I

    #@0
    .prologue
    .line 5970
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->setCurrentRotation(I)V

    #@5
    .line 5969
    return-void
.end method

.method public setSafeMode(Z)V
    .locals 3
    .param p1, "safeMode"    # Z

    #@0
    .prologue
    .line 6014
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeMode:Z

    #@2
    .line 6015
    if-eqz p1, :cond_0

    #@4
    .line 6016
    const/16 v0, 0x2711

    #@6
    .line 6015
    :goto_0
    const/4 v1, 0x0

    #@7
    .line 6017
    const/4 v2, 0x1

    #@8
    .line 6015
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    #@b
    .line 6013
    return-void

    #@c
    .line 6017
    :cond_0
    const/16 v0, 0x2710

    #@e
    goto :goto_0
.end method

.method public setUserRotationMode(II)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "rot"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, -0x2

    #@2
    .line 5992
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v0

    #@8
    .line 5995
    .local v0, "res":Landroid/content/ContentResolver;
    if-ne p1, v2, :cond_0

    #@a
    .line 5997
    const-string/jumbo v1, "user_rotation"

    #@d
    .line 5996
    invoke-static {v0, v1, p2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@10
    .line 6001
    const-string/jumbo v1, "accelerometer_rotation"

    #@13
    .line 6002
    const/4 v2, 0x0

    #@14
    .line 6000
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@17
    .line 5991
    :goto_0
    return-void

    #@18
    .line 6006
    :cond_0
    const-string/jumbo v1, "accelerometer_rotation"

    #@1b
    .line 6005
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@1e
    goto :goto_0
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "always"    # Z

    #@0
    .prologue
    .line 6095
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@2
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$22;

    #@4
    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/PhoneWindowManager$22;-><init>(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/CharSequence;)V

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 6094
    return-void
.end method

.method public showGlobalActions()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0xa

    #@2
    .line 1192
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@7
    .line 1193
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@c
    .line 1191
    return-void
.end method

.method showGlobalActionsInternal()V
    .locals 5

    #@0
    .prologue
    .line 1197
    const-string/jumbo v1, "globalactions"

    #@3
    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    #@6
    .line 1198
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    #@8
    if-nez v1, :cond_0

    #@a
    .line 1199
    new-instance v1, Lcom/android/server/policy/GlobalActions;

    #@c
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@e
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@10
    invoke-direct {v1, v2, v3}, Lcom/android/server/policy/GlobalActions;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    #@13
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    #@15
    .line 1201
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    #@18
    move-result v0

    #@19
    .line 1202
    .local v0, "keyguardShowing":Z
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    #@1b
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isDeviceProvisioned()Z

    #@1e
    move-result v2

    #@1f
    invoke-virtual {v1, v0, v2}, Lcom/android/server/policy/GlobalActions;->showDialog(ZZ)V

    #@22
    .line 1203
    if-eqz v0, :cond_1

    #@24
    .line 1206
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@26
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@29
    move-result-wide v2

    #@2a
    const/4 v4, 0x0

    #@2b
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    #@2e
    .line 1196
    :cond_1
    return-void
.end method

.method public showRecentApps()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0x9

    #@2
    .line 3212
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@7
    .line 3213
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@c
    .line 3211
    return-void
.end method

.method startDockOrHome(ZZ)V
    .locals 4
    .param p1, "fromHomeKey"    # Z
    .param p2, "awakenFromDreams"    # Z

    #@0
    .prologue
    .line 6370
    if-eqz p2, :cond_0

    #@2
    .line 6371
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->awakenDreams()V

    #@5
    .line 6374
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    #@8
    move-result-object v0

    #@9
    .line 6375
    .local v0, "dock":Landroid/content/Intent;
    if-eqz v0, :cond_2

    #@b
    .line 6377
    if-eqz p1, :cond_1

    #@d
    .line 6378
    :try_start_0
    const-string/jumbo v3, "android.intent.extra.FROM_HOME_KEY"

    #@10
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@13
    .line 6380
    :cond_1
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@15
    invoke-direct {p0, v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 6381
    return-void

    #@19
    .line 6382
    :catch_0
    move-exception v1

    #@1a
    .line 6388
    :cond_2
    if-eqz p1, :cond_3

    #@1c
    .line 6389
    new-instance v2, Landroid/content/Intent;

    #@1e
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    #@20
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@23
    .line 6390
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.extra.FROM_HOME_KEY"

    #@26
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@29
    .line 6395
    :goto_0
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@2b
    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@2e
    .line 6369
    return-void

    #@2f
    .line 6392
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    #@31
    .restart local v2    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method

.method public startKeyguardExitAnimation(JJ)V
    .locals 1
    .param p1, "startTime"    # J
    .param p3, "fadeoutDuration"    # J

    #@0
    .prologue
    .line 5771
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5773
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@6
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->startKeyguardExitAnimation(JJ)V

    #@9
    .line 5770
    :cond_0
    return-void
.end method

.method public startedGoingToSleep(I)V
    .locals 1
    .param p1, "why"    # I

    #@0
    .prologue
    .line 5459
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5460
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onStartedGoingToSleep(I)V

    #@9
    .line 5457
    :cond_0
    return-void
.end method

.method public startedWakingUp()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 5487
    const v0, 0x11170

    #@4
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    #@7
    .line 5494
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@9
    monitor-enter v1

    #@a
    .line 5495
    const/4 v0, 0x1

    #@b
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    #@d
    .line 5497
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    #@10
    .line 5498
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    #@13
    .line 5499
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    monitor-exit v1

    #@17
    .line 5502
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@19
    if-eqz v0, :cond_0

    #@1b
    .line 5503
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@1d
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onStartedWakingUp()V

    #@20
    .line 5486
    :cond_0
    return-void

    #@21
    .line 5494
    :catchall_0
    move-exception v0

    #@22
    monitor-exit v1

    #@23
    throw v0
.end method

.method public subWindowTypeToLayerLw(I)I
    .locals 3
    .param p1, "type"    # I

    #@0
    .prologue
    .line 2141
    packed-switch p1, :pswitch_data_0

    #@3
    .line 2154
    const-string/jumbo v0, "WindowManager"

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "Unknown sub-window type: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 2155
    const/4 v0, 0x0

    #@1e
    return v0

    #@1f
    .line 2144
    :pswitch_0
    const/4 v0, 0x1

    #@20
    return v0

    #@21
    .line 2146
    :pswitch_1
    const/4 v0, -0x2

    #@22
    return v0

    #@23
    .line 2148
    :pswitch_2
    const/4 v0, -0x1

    #@24
    return v0

    #@25
    .line 2150
    :pswitch_3
    const/4 v0, 0x2

    #@26
    return v0

    #@27
    .line 2152
    :pswitch_4
    const/4 v0, 0x3

    #@28
    return v0

    #@29
    .line 2141
    nop

    #@2a
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public systemBooted()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 6067
    const/4 v0, 0x0

    #@2
    .line 6068
    .local v0, "bindKeyguardNow":Z
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v2

    #@5
    .line 6071
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 6072
    const/4 v0, 0x1

    #@a
    :goto_0
    monitor-exit v2

    #@b
    .line 6079
    if-eqz v0, :cond_0

    #@d
    .line 6080
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@f
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@11
    invoke-virtual {v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->bindService(Landroid/content/Context;)V

    #@14
    .line 6081
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@16
    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onBootCompleted()V

    #@19
    .line 6083
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@1b
    monitor-enter v1

    #@1c
    .line 6084
    const/4 v2, 0x1

    #@1d
    :try_start_1
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1f
    monitor-exit v1

    #@20
    .line 6086
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->startedWakingUp()V

    #@23
    .line 6087
    invoke-virtual {p0, v3}, Lcom/android/server/policy/PhoneWindowManager;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    #@26
    .line 6066
    return-void

    #@27
    .line 6076
    :cond_1
    const/4 v1, 0x1

    #@28
    :try_start_2
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeferBindKeyguard:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2a
    goto :goto_0

    #@2b
    .line 6068
    :catchall_0
    move-exception v1

    #@2c
    monitor-exit v2

    #@2d
    throw v1

    #@2e
    .line 6083
    :catchall_1
    move-exception v2

    #@2f
    monitor-exit v1

    #@30
    throw v2
.end method

.method public systemReady()V
    .locals 4

    #@0
    .prologue
    .line 6035
    new-instance v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@2
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@4
    invoke-direct {v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;-><init>(Landroid/content/Context;)V

    #@7
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@9
    .line 6036
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@b
    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onSystemReady()V

    #@e
    .line 6038
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->readCameraLensCoverState()V

    #@11
    .line 6039
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateUiMode()V

    #@14
    .line 6041
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@16
    monitor-enter v2

    #@17
    .line 6042
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    #@1a
    .line 6043
    const/4 v1, 0x1

    #@1b
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    #@1d
    .line 6044
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@1f
    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$21;

    #@21
    invoke-direct {v3, p0}, Lcom/android/server/policy/PhoneWindowManager$21;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@24
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@27
    .line 6051
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeferBindKeyguard:Z

    #@29
    .line 6052
    .local v0, "bindKeyguardNow":Z
    if-eqz v0, :cond_0

    #@2b
    .line 6054
    const/4 v1, 0x0

    #@2c
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeferBindKeyguard:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    :cond_0
    monitor-exit v2

    #@2f
    .line 6058
    if-eqz v0, :cond_1

    #@31
    .line 6059
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@33
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@35
    invoke-virtual {v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->bindService(Landroid/content/Context;)V

    #@38
    .line 6060
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@3a
    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onBootCompleted()V

    #@3d
    .line 6034
    :cond_1
    return-void

    #@3e
    .line 6041
    .end local v0    # "bindKeyguardNow":Z
    :catchall_0
    move-exception v1

    #@3f
    monitor-exit v2

    #@40
    throw v1
.end method

.method updateOrientationListenerLp()V
    .locals 2

    #@0
    .prologue
    .line 849
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    #@2
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->canDetectOrientation()Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 851
    return-void

    #@9
    .line 860
    :cond_0
    const/4 v0, 0x1

    #@a
    .line 863
    .local v0, "disable":Z
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    #@c
    if-eqz v1, :cond_1

    #@e
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 864
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    #@14
    .line 863
    if-eqz v1, :cond_1

    #@16
    .line 864
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    #@18
    .line 863
    if-eqz v1, :cond_1

    #@1a
    .line 865
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->needSensorRunningLp()Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_1

    #@20
    .line 866
    const/4 v0, 0x0

    #@21
    .line 868
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    #@23
    if-nez v1, :cond_1

    #@25
    .line 869
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    #@27
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->enable()V

    #@2a
    .line 871
    const/4 v1, 0x1

    #@2b
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    #@2d
    .line 876
    :cond_1
    if-eqz v0, :cond_2

    #@2f
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    #@31
    if-eqz v1, :cond_2

    #@33
    .line 877
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    #@35
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->disable()V

    #@38
    .line 879
    const/4 v1, 0x0

    #@39
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    #@3b
    .line 848
    :cond_2
    return-void
.end method

.method updateRotation(Z)V
    .locals 3
    .param p1, "alwaysSendConfiguration"    # Z

    #@0
    .prologue
    .line 6296
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    #@2
    const/4 v2, 0x0

    #@3
    invoke-interface {v1, p1, v2}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 6293
    :goto_0
    return-void

    #@7
    .line 6297
    :catch_0
    move-exception v0

    #@8
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method updateRotation(ZZ)V
    .locals 2
    .param p1, "alwaysSendConfiguration"    # Z
    .param p2, "forceRelayout"    # Z

    #@0
    .prologue
    .line 6305
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 6302
    :goto_0
    return-void

    #@6
    .line 6306
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public updateSettings()V
    .locals 14

    #@0
    .prologue
    const/4 v8, 0x2

    #@1
    const/4 v9, 0x1

    #@2
    .line 1693
    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v3

    #@8
    .line 1694
    .local v3, "resolver":Landroid/content/ContentResolver;
    const/4 v4, 0x0

    #@9
    .line 1695
    .local v4, "updateRotation":Z
    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@b
    monitor-enter v10

    #@c
    .line 1697
    :try_start_0
    const-string/jumbo v11, "end_button_behavior"

    #@f
    .line 1698
    const/4 v12, 0x2

    #@10
    .line 1699
    const/4 v13, -0x2

    #@11
    .line 1696
    invoke-static {v3, v11, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@14
    move-result v11

    #@15
    iput v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    #@17
    .line 1701
    const-string/jumbo v11, "incall_power_button_behavior"

    #@1a
    .line 1702
    const/4 v12, 0x1

    #@1b
    .line 1703
    const/4 v13, -0x2

    #@1c
    .line 1700
    invoke-static {v3, v11, v12, v13}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@1f
    move-result v11

    #@20
    iput v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    #@22
    .line 1707
    const-string/jumbo v11, "wake_gesture_enabled"

    #@25
    const/4 v12, 0x0

    #@26
    .line 1708
    const/4 v13, -0x2

    #@27
    .line 1706
    invoke-static {v3, v11, v12, v13}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@2a
    move-result v11

    #@2b
    if-eqz v11, :cond_8

    #@2d
    const/4 v7, 0x1

    #@2e
    .line 1709
    .local v7, "wakeGestureEnabledSetting":Z
    :goto_0
    iget-boolean v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    #@30
    if-eq v11, v7, :cond_0

    #@32
    .line 1710
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    #@34
    .line 1711
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    #@37
    .line 1716
    :cond_0
    const-string/jumbo v11, "user_rotation"

    #@3a
    const/4 v12, 0x0

    #@3b
    .line 1717
    const/4 v13, -0x2

    #@3c
    .line 1715
    invoke-static {v3, v11, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@3f
    move-result v5

    #@40
    .line 1718
    .local v5, "userRotation":I
    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    #@42
    if-eq v11, v5, :cond_1

    #@44
    .line 1719
    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    #@46
    .line 1720
    const/4 v4, 0x1

    #@47
    .line 1723
    :cond_1
    const-string/jumbo v11, "accelerometer_rotation"

    #@4a
    const/4 v12, 0x0

    #@4b
    const/4 v13, -0x2

    #@4c
    .line 1722
    invoke-static {v3, v11, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@4f
    move-result v11

    #@50
    if-eqz v11, :cond_9

    #@52
    .line 1724
    const/4 v6, 0x0

    #@53
    .line 1726
    .local v6, "userRotationMode":I
    :goto_1
    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    #@55
    if-eq v11, v6, :cond_2

    #@57
    .line 1727
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    #@59
    .line 1728
    const/4 v4, 0x1

    #@5a
    .line 1729
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    #@5d
    .line 1732
    :cond_2
    iget-boolean v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    #@5f
    if-eqz v11, :cond_4

    #@61
    .line 1734
    const-string/jumbo v11, "pointer_location"

    #@64
    const/4 v12, 0x0

    #@65
    const/4 v13, -0x2

    #@66
    .line 1733
    invoke-static {v3, v11, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@69
    move-result v2

    #@6a
    .line 1735
    .local v2, "pointerLocation":I
    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationMode:I

    #@6c
    if-eq v11, v2, :cond_4

    #@6e
    .line 1736
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationMode:I

    #@70
    .line 1737
    iget-object v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@72
    if-eqz v2, :cond_3

    #@74
    move v8, v9

    #@75
    :cond_3
    invoke-virtual {v11, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@78
    .line 1743
    .end local v2    # "pointerLocation":I
    :cond_4
    const-string/jumbo v8, "screen_off_timeout"

    #@7b
    const/4 v11, 0x0

    #@7c
    const/4 v12, -0x2

    #@7d
    .line 1742
    invoke-static {v3, v8, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@80
    move-result v8

    #@81
    iput v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    #@83
    .line 1745
    const-string/jumbo v8, "default_input_method"

    #@86
    const/4 v11, -0x2

    #@87
    .line 1744
    invoke-static {v3, v8, v11}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@8a
    move-result-object v1

    #@8b
    .line 1746
    .local v1, "imId":Ljava/lang/String;
    if-eqz v1, :cond_a

    #@8d
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@90
    move-result v8

    #@91
    if-lez v8, :cond_a

    #@93
    const/4 v0, 0x1

    #@94
    .line 1747
    .local v0, "hasSoftInput":Z
    :goto_2
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    #@96
    if-eq v8, v0, :cond_5

    #@98
    .line 1748
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    #@9a
    .line 1749
    const/4 v4, 0x1

    #@9b
    .line 1751
    :cond_5
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    #@9d
    if-eqz v8, :cond_6

    #@9f
    .line 1752
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    #@a1
    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    #@a3
    invoke-virtual {v8, v11}, Lcom/android/server/policy/ImmersiveModeConfirmation;->loadSetting(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a6
    :cond_6
    monitor-exit v10

    #@a7
    .line 1755
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@a9
    invoke-interface {v8}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    #@ac
    move-result-object v10

    #@ad
    monitor-enter v10

    #@ae
    .line 1756
    :try_start_1
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@b0
    invoke-static {v8}, Lcom/android/server/policy/PolicyControl;->reloadFromSetting(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@b3
    monitor-exit v10

    #@b4
    .line 1758
    if-eqz v4, :cond_7

    #@b6
    .line 1759
    invoke-virtual {p0, v9}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    #@b9
    .line 1692
    :cond_7
    return-void

    #@ba
    .line 1706
    .end local v0    # "hasSoftInput":Z
    .end local v1    # "imId":Ljava/lang/String;
    .end local v5    # "userRotation":I
    .end local v6    # "userRotationMode":I
    .end local v7    # "wakeGestureEnabledSetting":Z
    :cond_8
    const/4 v7, 0x0

    #@bb
    .restart local v7    # "wakeGestureEnabledSetting":Z
    goto/16 :goto_0

    #@bd
    .line 1725
    .restart local v5    # "userRotation":I
    :cond_9
    const/4 v6, 0x1

    #@be
    .restart local v6    # "userRotationMode":I
    goto :goto_1

    #@bf
    .line 1746
    .restart local v1    # "imId":Ljava/lang/String;
    :cond_a
    const/4 v0, 0x0

    #@c0
    .restart local v0    # "hasSoftInput":Z
    goto :goto_2

    #@c1
    .line 1695
    .end local v0    # "hasSoftInput":Z
    .end local v1    # "imId":Ljava/lang/String;
    .end local v5    # "userRotation":I
    .end local v6    # "userRotationMode":I
    .end local v7    # "wakeGestureEnabledSetting":Z
    :catchall_0
    move-exception v8

    #@c2
    monitor-exit v10

    #@c3
    throw v8

    #@c4
    .line 1755
    .restart local v0    # "hasSoftInput":Z
    .restart local v1    # "imId":Ljava/lang/String;
    .restart local v5    # "userRotation":I
    .restart local v6    # "userRotationMode":I
    .restart local v7    # "wakeGestureEnabledSetting":Z
    :catchall_1
    move-exception v8

    #@c5
    monitor-exit v10

    #@c6
    throw v8
.end method

.method updateUiMode()V
    .locals 2

    #@0
    .prologue
    .line 6283
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 6285
    const-string/jumbo v1, "uimode"

    #@7
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@a
    move-result-object v1

    #@b
    .line 6284
    invoke-static {v1}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    #@e
    move-result-object v1

    #@f
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    #@11
    .line 6288
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    #@13
    invoke-interface {v1}, Landroid/app/IUiModeManager;->getCurrentModeType()I

    #@16
    move-result v1

    #@17
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 6282
    :goto_0
    return-void

    #@1a
    .line 6289
    :catch_0
    move-exception v0

    #@1b
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public userActivity()V
    .locals 6

    #@0
    .prologue
    .line 6176
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    #@2
    monitor-enter v1

    #@3
    .line 6177
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 6179
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@9
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@e
    .line 6180
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@10
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    #@12
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    #@14
    int-to-long v4, v3

    #@15
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    :cond_0
    monitor-exit v1

    #@19
    .line 6164
    return-void

    #@1a
    .line 6176
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method

.method public validateRotationAnimationLw(IIZ)Z
    .locals 4
    .param p1, "exitAnimId"    # I
    .param p2, "enterAnimId"    # I
    .param p3, "forceDefault"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 2541
    packed-switch p1, :pswitch_data_0

    #@5
    .line 2552
    return v1

    #@6
    .line 2545
    :pswitch_0
    if-eqz p3, :cond_0

    #@8
    .line 2546
    return v2

    #@9
    .line 2548
    :cond_0
    const/4 v3, 0x2

    #@a
    new-array v0, v3, [I

    #@c
    .line 2549
    .local v0, "anim":[I
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->selectRotationAnimationLw([I)V

    #@f
    .line 2550
    aget v3, v0, v2

    #@11
    if-ne p1, v3, :cond_1

    #@13
    aget v3, v0, v1

    #@15
    if-ne p2, v3, :cond_1

    #@17
    :goto_0
    return v1

    #@18
    :cond_1
    move v1, v2

    #@19
    goto :goto_0

    #@1a
    .line 2541
    :pswitch_data_0
    .packed-switch 0x10a004b
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public windowTypeToLayerLw(I)I
    .locals 4
    .param p1, "type"    # I

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    .line 2046
    const/4 v0, 0x1

    #@2
    if-lt p1, v0, :cond_0

    #@4
    const/16 v0, 0x63

    #@6
    if-gt p1, v0, :cond_0

    #@8
    .line 2047
    return v3

    #@9
    .line 2049
    :cond_0
    packed-switch p1, :pswitch_data_0

    #@c
    .line 2134
    :pswitch_0
    const-string/jumbo v0, "WindowManager"

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "Unknown window type: "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 2135
    return v3

    #@27
    .line 2051
    :pswitch_1
    return v3

    #@28
    .line 2054
    :pswitch_2
    return v3

    #@29
    .line 2056
    :pswitch_3
    const/4 v0, 0x3

    #@2a
    return v0

    #@2b
    .line 2059
    :pswitch_4
    const/4 v0, 0x4

    #@2c
    return v0

    #@2d
    .line 2062
    :pswitch_5
    const/4 v0, 0x5

    #@2e
    return v0

    #@2f
    .line 2064
    :pswitch_6
    const/4 v0, 0x6

    #@30
    return v0

    #@31
    .line 2066
    :pswitch_7
    const/4 v0, 0x7

    #@32
    return v0

    #@33
    .line 2069
    :pswitch_8
    const/16 v0, 0x8

    #@35
    return v0

    #@36
    .line 2072
    :pswitch_9
    const/16 v0, 0x9

    #@38
    return v0

    #@39
    .line 2075
    :pswitch_a
    const/16 v0, 0xa

    #@3b
    return v0

    #@3c
    .line 2078
    :pswitch_b
    const/16 v0, 0xb

    #@3e
    return v0

    #@3f
    .line 2081
    :pswitch_c
    const/16 v0, 0xc

    #@41
    return v0

    #@42
    .line 2084
    :pswitch_d
    const/16 v0, 0xd

    #@44
    return v0

    #@45
    .line 2087
    :pswitch_e
    const/16 v0, 0xe

    #@47
    return v0

    #@48
    .line 2089
    :pswitch_f
    const/16 v0, 0xf

    #@4a
    return v0

    #@4b
    .line 2091
    :pswitch_10
    const/16 v0, 0x10

    #@4d
    return v0

    #@4e
    .line 2093
    :pswitch_11
    const/16 v0, 0x11

    #@50
    return v0

    #@51
    .line 2095
    :pswitch_12
    const/16 v0, 0x12

    #@53
    return v0

    #@54
    .line 2099
    :pswitch_13
    const/16 v0, 0x13

    #@56
    return v0

    #@57
    .line 2103
    :pswitch_14
    const/16 v0, 0x14

    #@59
    return v0

    #@5a
    .line 2106
    :pswitch_15
    const/16 v0, 0x15

    #@5c
    return v0

    #@5d
    .line 2109
    :pswitch_16
    const/16 v0, 0x16

    #@5f
    return v0

    #@60
    .line 2112
    :pswitch_17
    const/16 v0, 0x17

    #@62
    return v0

    #@63
    .line 2115
    :pswitch_18
    const/16 v0, 0x18

    #@65
    return v0

    #@66
    .line 2118
    :pswitch_19
    const/16 v0, 0x19

    #@68
    return v0

    #@69
    .line 2122
    :pswitch_1a
    const/16 v0, 0x1a

    #@6b
    return v0

    #@6c
    .line 2125
    :pswitch_1b
    const/16 v0, 0x1b

    #@6e
    return v0

    #@6f
    .line 2127
    :pswitch_1c
    const/16 v0, 0x1c

    #@71
    return v0

    #@72
    .line 2129
    :pswitch_1d
    const/16 v0, 0x1d

    #@74
    return v0

    #@75
    .line 2132
    :pswitch_1e
    const/16 v0, 0x1e

    #@77
    return v0

    #@78
    .line 2049
    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_10
        :pswitch_4
        :pswitch_3
        :pswitch_b
        :pswitch_0
        :pswitch_8
        :pswitch_14
        :pswitch_9
        :pswitch_7
        :pswitch_12
        :pswitch_17
        :pswitch_c
        :pswitch_d
        :pswitch_2
        :pswitch_11
        :pswitch_1c
        :pswitch_1a
        :pswitch_f
        :pswitch_1e
        :pswitch_15
        :pswitch_13
        :pswitch_1d
        :pswitch_6
        :pswitch_a
        :pswitch_16
        :pswitch_0
        :pswitch_19
        :pswitch_18
        :pswitch_0
        :pswitch_e
        :pswitch_1
        :pswitch_5
        :pswitch_1b
        :pswitch_4
    .end packed-switch
.end method
