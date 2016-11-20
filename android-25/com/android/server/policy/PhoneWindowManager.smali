.class public Lcom/android/server/policy/PhoneWindowManager;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/PhoneWindowManager$10;,
        Lcom/android/server/policy/PhoneWindowManager$11;,
        Lcom/android/server/policy/PhoneWindowManager$12;,
        Lcom/android/server/policy/PhoneWindowManager$1;,
        Lcom/android/server/policy/PhoneWindowManager$2;,
        Lcom/android/server/policy/PhoneWindowManager$3;,
        Lcom/android/server/policy/PhoneWindowManager$4;,
        Lcom/android/server/policy/PhoneWindowManager$5;,
        Lcom/android/server/policy/PhoneWindowManager$6;,
        Lcom/android/server/policy/PhoneWindowManager$7;,
        Lcom/android/server/policy/PhoneWindowManager$8;,
        Lcom/android/server/policy/PhoneWindowManager$9;,
        Lcom/android/server/policy/PhoneWindowManager$HdmiControl;,
        Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;,
        Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;,
        Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;,
        Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;,
        Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;,
        Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;,
        Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;
    }
.end annotation


# static fields
.field static final ALTERNATE_CAR_MODE_NAV_SIZE:Z = false

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

.field static final ENABLE_DESK_DOCK_HOME_CAPTURE:Z = false

.field private static final KEYGUARD_SCREENSHOT_CHORD_DELAY_MULTIPLIER:F = 2.5f

.field static final LAST_LONG_PRESS_HOME_BEHAVIOR:I = 0x2

.field static final LONG_PRESS_BACK_GO_TO_VOICE_ASSIST:I = 0x1

.field static final LONG_PRESS_BACK_NOTHING:I = 0x0

.field static final LONG_PRESS_HOME_ASSIST:I = 0x2

.field static final LONG_PRESS_HOME_NOTHING:I = 0x0

.field static final LONG_PRESS_HOME_RECENT_SYSTEM_UI:I = 0x1

.field static final LONG_PRESS_POWER_GLOBAL_ACTIONS:I = 0x1

.field static final LONG_PRESS_POWER_NOTHING:I = 0x0

.field static final LONG_PRESS_POWER_SHUT_OFF:I = 0x2

.field static final LONG_PRESS_POWER_SHUT_OFF_NO_CONFIRM:I = 0x3

.field private static final MSG_BACK_LONG_PRESS:I = 0x12

.field private static final MSG_DISABLE_POINTER_LOCATION:I = 0x2

.field private static final MSG_DISPATCH_MEDIA_KEY_REPEAT_WITH_WAKE_LOCK:I = 0x4

.field private static final MSG_DISPATCH_MEDIA_KEY_WITH_WAKE_LOCK:I = 0x3

.field private static final MSG_DISPATCH_SHOW_GLOBAL_ACTIONS:I = 0xa

.field private static final MSG_DISPATCH_SHOW_RECENTS:I = 0x9

.field private static final MSG_DISPOSE_INPUT_CONSUMER:I = 0x13

.field private static final MSG_ENABLE_POINTER_LOCATION:I = 0x1

.field private static final MSG_HIDE_BOOT_MESSAGE:I = 0xb

.field private static final MSG_KEYGUARD_DRAWN_COMPLETE:I = 0x5

.field private static final MSG_KEYGUARD_DRAWN_TIMEOUT:I = 0x6

.field private static final MSG_LAUNCH_VOICE_ASSIST_WITH_WAKE_LOCK:I = 0xc

.field private static final MSG_POWER_DELAYED_PRESS:I = 0xd

.field private static final MSG_POWER_LONG_PRESS:I = 0xe

.field private static final MSG_REQUEST_TRANSIENT_BARS:I = 0x10

.field private static final MSG_REQUEST_TRANSIENT_BARS_ARG_NAVIGATION:I = 0x1

.field private static final MSG_REQUEST_TRANSIENT_BARS_ARG_STATUS:I = 0x0

.field private static final MSG_SHOW_TV_PICTURE_IN_PICTURE_MENU:I = 0x11

.field private static final MSG_UPDATE_DREAMING_SLEEP_TOKEN:I = 0xf

.field private static final MSG_WINDOW_MANAGER_DRAWN_COMPLETE:I = 0x7

.field static final MULTI_PRESS_POWER_BRIGHTNESS_BOOST:I = 0x2

.field static final MULTI_PRESS_POWER_NOTHING:I = 0x0

.field static final MULTI_PRESS_POWER_THEATER_MODE:I = 0x1

.field private static final NAV_BAR_BOTTOM:I = 0x0

.field private static final NAV_BAR_LEFT:I = 0x2

.field static final NAV_BAR_OPAQUE_WHEN_FREEFORM_OR_DOCKED:I = 0x0

.field private static final NAV_BAR_RIGHT:I = 0x1

.field static final NAV_BAR_TRANSLUCENT_WHEN_FREEFORM_OPAQUE_OTHERWISE:I = 0x1

.field private static final PANIC_GESTURE_EXPIRATION:J = 0x7530L

.field static final PENDING_KEY_NULL:I = -0x1

.field static final PRINT_ANIM:Z = false

.field private static final SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field static final SHORT_PRESS_POWER_GO_HOME:I = 0x4

.field static final SHORT_PRESS_POWER_GO_TO_SLEEP:I = 0x1

.field static final SHORT_PRESS_POWER_NOTHING:I = 0x0

.field static final SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP:I = 0x2

.field static final SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP_AND_GO_HOME:I = 0x3

.field static final SHORT_PRESS_SLEEP_GO_TO_SLEEP:I = 0x0

.field static final SHORT_PRESS_SLEEP_GO_TO_SLEEP_AND_GO_HOME:I = 0x1

.field static final SHORT_PRESS_WINDOW_NOTHING:I = 0x0

.field static final SHORT_PRESS_WINDOW_PICTURE_IN_PICTURE:I = 0x1

.field static final SHOW_PROCESSES_ON_ALT_MENU:Z = false

.field static final SHOW_STARTING_ANIMATIONS:Z = true

.field public static final SYSTEM_DIALOG_REASON_ASSIST:Ljava/lang/String; = "assist"

.field public static final SYSTEM_DIALOG_REASON_GLOBAL_ACTIONS:Ljava/lang/String; = "globalactions"

.field public static final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field public static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"

.field static final SYSTEM_UI_CHANGING_LAYOUT:I = -0x3fff7ff2

.field private static final SYSUI_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final SYSUI_SCREENSHOT_ERROR_RECEIVER:Ljava/lang/String; = "com.android.systemui.screenshot.ScreenshotServiceErrorReceiver"

.field private static final SYSUI_SCREENSHOT_SERVICE:Ljava/lang/String; = "com.android.systemui.screenshot.TakeScreenshotService"

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field public static final TOAST_WINDOW_TIMEOUT:I = 0xdac

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

.field private static final mTmpRect:Landroid/graphics/Rect;

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

.field volatile mBackKeyHandled:Z

.field volatile mBeganFromNonInteractive:Z

.field mBootMessageNeedsHiding:Z

.field mBootMsgDialog:Landroid/app/ProgressDialog;

.field mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

.field mCalendarDateVibePattern:[J

.field volatile mCameraGestureTriggeredDuringGoingToSleep:Z

.field mCameraLensCoverState:I

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

.field final mDockedStackBounds:Landroid/graphics/Rect;

.field mDoublePressOnPowerBehavior:I

.field private mDoubleTapOnHomeBehavior:I

.field mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

.field mDreamReceiver:Landroid/content/BroadcastReceiver;

.field mDreamingLockscreen:Z

.field mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

.field mDreamingSleepTokenNeeded:Z

.field private mEnableCarDockHomeCapture:Z

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

.field mForceShowSystemBars:Z

.field mForceStatusBar:Z

.field mForceStatusBarFromKeyguard:Z

.field private mForceStatusBarTransparent:Z

.field mForcingShowNavBar:Z

.field mForcingShowNavBarLayer:I

.field mGlobalActions:Lcom/android/server/policy/GlobalActions;

.field private mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

.field private mGoToSleepOnButtonPressTheaterMode:Z

.field volatile mGoingToSleep:Z

.field private mHDMIObserver:Landroid/os/UEventObserver;

.field mHandler:Landroid/os/Handler;

.field private mHasFeatureWatch:Z

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

.field mInitialMetaState:I

.field mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

.field mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

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

.field final mLastDockedStackBounds:Landroid/graphics/Rect;

.field mLastDockedStackSysUiFlags:I

.field mLastFocusNeedsMenu:Z

.field mLastFullscreenStackSysUiFlags:I

.field mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field final mLastNonDockedStackBounds:Landroid/graphics/Rect;

.field mLastSystemUiFlags:I

.field mLidControlsScreenLock:Z

.field mLidControlsSleep:Z

.field mLidKeyboardAccessibility:I

.field mLidNavigationAccessibility:I

.field mLidOpenRotation:I

.field mLidState:I

.field private final mLock:Ljava/lang/Object;

.field mLockScreenTimeout:I

.field mLockScreenTimerActive:Z

.field private final mLogDecelerateInterpolator:Lcom/android/server/policy/LogDecelerateInterpolator;

.field mLongPressOnBackBehavior:I

.field private mLongPressOnHomeBehavior:I

.field mLongPressOnPowerBehavior:I

.field mLongPressVibePattern:[J

.field mMetaState:I

.field mMultiuserReceiver:Landroid/content/BroadcastReceiver;

.field mNavBarOpacityMode:I

.field mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

.field mNavigationBarCanMove:Z

.field private final mNavigationBarController:Lcom/android/server/policy/BarController;

.field mNavigationBarHeightForRotationDefault:[I

.field mNavigationBarHeightForRotationInCarMode:[I

.field mNavigationBarPosition:I

.field mNavigationBarWidthForRotationDefault:[I

.field mNavigationBarWidthForRotationInCarMode:[I

.field final mNonDockedStackBounds:Landroid/graphics/Rect;

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

.field mPendingCapsLockToggle:Z

.field mPendingMetaAction:Z

.field private mPendingPanicGestureUptime:J

.field volatile mPendingWakeKey:I

.field mPointerLocationMode:I

.field mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

.field mPortraitRotation:I

.field volatile mPowerKeyHandled:Z

.field volatile mPowerKeyPressCounter:I

.field mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

.field mPowerManager:Landroid/os/PowerManager;

.field mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field mPreloadedRecentApps:Z

.field mRecentAppsHeldModifiers:I

.field volatile mRecentsVisible:Z

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

.field private final mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

.field final mScreenshotTimeout:Ljava/lang/Runnable;

.field mSearchKeyShortcutPending:Z

.field mSearchManager:Landroid/app/SearchManager;

.field mSeascapeRotation:I

.field private mSecureDismissingKeyguard:Z

.field final mServiceAquireLock:Ljava/lang/Object;

.field mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

.field mShortPressOnPowerBehavior:I

.field mShortPressOnSleepBehavior:I

.field mShortPressWindowBehavior:I

.field private mShortcutKeyServices:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/android/internal/policy/IShortcutService;",
            ">;"
        }
    .end annotation
.end field

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

.field mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

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

.field private final mTmpBoolean:Landroid/util/MutableBoolean;

.field mTopDockedOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopDockedOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopIsFullscreen:Z

.field mTranslucentDecorEnabled:Z

.field mTriplePressOnPowerBehavior:I

.field volatile mTvPictureInPictureVisible:Z

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

.method static synthetic -wrap0(I)Z
    .locals 1
    .param p0, "systemUiFlags"    # I

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->isNavBarEmpty(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldEnableWakeGestureLp()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishWindowsDrawn()V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->handleHideBootMessage()V

    #@3
    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome()V

    #@3
    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->notifyScreenshotError()V

    #@3
    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->performAuditoryFeedbackForAccessibilityIfNeed()V

    #@3
    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->powerLongPress()V

    #@3
    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/policy/PhoneWindowManager;JZI)V
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

.method static synthetic -wrap17(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0
    .param p1, "swipeTarget"    # Landroid/view/WindowManagerPolicy$WindowState;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V

    #@3
    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/policy/PhoneWindowManager;ZZ)V
    .locals 0
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "fromHome"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(ZZ)V

    #@3
    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->showTvPictureInPictureMenuInternal()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/policy/PhoneWindowManager;JZLjava/lang/String;)Z
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

.method static synthetic -wrap20(Lcom/android/server/policy/PhoneWindowManager;I)V
    .locals 0
    .param p1, "screenshotType"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->takeScreenshot(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/policy/PhoneWindowManager;Z)V
    .locals 0
    .param p1, "acquire"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->updateDreamingSleepToken(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/policy/PhoneWindowManager;)I
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->backLongPress()V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->disablePointerLocation()V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$InputConsumer;)V
    .locals 0
    .param p1, "inputConsumer"    # Landroid/view/WindowManagerPolicy$InputConsumer;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->disposeInputConsumer(Landroid/view/WindowManagerPolicy$InputConsumer;)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->enablePointerLocation()V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishKeyguardDrawn()V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishPowerKeyPress()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 254
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    #@2
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    #@5
    .line 255
    const/4 v1, 0x4

    #@6
    .line 254
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    #@9
    move-result-object v0

    #@a
    .line 256
    const/16 v1, 0xd

    #@c
    .line 254
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
    .line 288
    new-instance v0, Landroid/util/SparseArray;

    #@18
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@1b
    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    #@1d
    .line 289
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    #@1f
    .line 290
    const-string/jumbo v1, "android.intent.category.APP_BROWSER"

    #@22
    const/16 v2, 0x40

    #@24
    .line 289
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@27
    .line 291
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    #@29
    .line 292
    const-string/jumbo v1, "android.intent.category.APP_EMAIL"

    #@2c
    const/16 v2, 0x41

    #@2e
    .line 291
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@31
    .line 293
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    #@33
    .line 294
    const-string/jumbo v1, "android.intent.category.APP_CONTACTS"

    #@36
    const/16 v2, 0xcf

    #@38
    .line 293
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@3b
    .line 295
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    #@3d
    .line 296
    const-string/jumbo v1, "android.intent.category.APP_CALENDAR"

    #@40
    const/16 v2, 0xd0

    #@42
    .line 295
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@45
    .line 297
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    #@47
    .line 298
    const-string/jumbo v1, "android.intent.category.APP_MUSIC"

    #@4a
    const/16 v2, 0xd1

    #@4c
    .line 297
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@4f
    .line 299
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    #@51
    .line 300
    const-string/jumbo v1, "android.intent.category.APP_CALCULATOR"

    #@54
    const/16 v2, 0xd2

    #@56
    .line 299
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@59
    .line 561
    new-instance v0, Landroid/graphics/Rect;

    #@5b
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@5e
    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    #@60
    .line 562
    new-instance v0, Landroid/graphics/Rect;

    #@62
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@65
    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    #@67
    .line 563
    new-instance v0, Landroid/graphics/Rect;

    #@69
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@6c
    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    #@6e
    .line 564
    new-instance v0, Landroid/graphics/Rect;

    #@70
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@73
    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    #@75
    .line 565
    new-instance v0, Landroid/graphics/Rect;

    #@77
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@7a
    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    #@7c
    .line 566
    new-instance v0, Landroid/graphics/Rect;

    #@7e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@81
    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    #@83
    .line 567
    new-instance v0, Landroid/graphics/Rect;

    #@85
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@88
    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpStableFrame:Landroid/graphics/Rect;

    #@8a
    .line 568
    new-instance v0, Landroid/graphics/Rect;

    #@8c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8f
    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@91
    .line 569
    new-instance v0, Landroid/graphics/Rect;

    #@93
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@96
    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpOutsetFrame:Landroid/graphics/Rect;

    #@98
    .line 570
    new-instance v0, Landroid/graphics/Rect;

    #@9a
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@9d
    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    #@9f
    .line 3018
    const/16 v0, 0x7d3

    #@a1
    .line 3019
    const/16 v1, 0x7da

    #@a3
    .line 3017
    filled-new-array {v0, v1}, [I

    #@a6
    move-result-object v0

    #@a7
    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    #@a9
    .line 169
    return-void
.end method

.method public constructor <init>()V
    .locals 9

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x4

    #@2
    const/4 v1, -0x1

    #@3
    const/4 v8, 0x0

    #@4
    const/4 v2, 0x0

    #@5
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 314
    new-instance v0, Ljava/lang/Object;

    #@a
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@f
    .line 328
    new-instance v0, Ljava/lang/Object;

    #@11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@14
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    #@16
    .line 361
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    #@18
    .line 364
    iput-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@1a
    .line 366
    iput-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@1c
    .line 367
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    #@1e
    .line 368
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    #@20
    .line 369
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    #@22
    .line 370
    new-array v0, v3, [I

    #@24
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    #@26
    .line 371
    new-array v0, v3, [I

    #@28
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    #@2a
    .line 372
    new-array v0, v3, [I

    #@2c
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationInCarMode:[I

    #@2e
    .line 373
    new-array v0, v3, [I

    #@30
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationInCarMode:[I

    #@32
    .line 375
    new-instance v0, Landroid/util/LongSparseArray;

    #@34
    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    #@37
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    #@39
    .line 379
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    #@3b
    .line 383
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$1;

    #@3d
    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$1;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@40
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawCallback:Ljava/lang/Runnable;

    #@42
    .line 390
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$2;

    #@44
    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$2;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@47
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    #@49
    .line 400
    iput-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    #@4b
    .line 401
    iput-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    #@4d
    .line 422
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    #@4f
    .line 427
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    #@51
    .line 428
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    #@53
    .line 438
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    #@55
    .line 453
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceDefaultOrientation:Z

    #@57
    .line 455
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    #@59
    .line 456
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    #@5b
    .line 460
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    #@5d
    .line 480
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    #@5f
    .line 481
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    #@61
    .line 482
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    #@63
    .line 483
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    #@65
    .line 486
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationMode:I

    #@67
    .line 543
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    #@69
    .line 545
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    #@6b
    .line 548
    new-instance v0, Landroid/graphics/Rect;

    #@6d
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@70
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNonDockedStackBounds:Landroid/graphics/Rect;

    #@72
    .line 549
    new-instance v0, Landroid/graphics/Rect;

    #@74
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@77
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockedStackBounds:Landroid/graphics/Rect;

    #@79
    .line 550
    new-instance v0, Landroid/graphics/Rect;

    #@7b
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@7e
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastNonDockedStackBounds:Landroid/graphics/Rect;

    #@80
    .line 551
    new-instance v0, Landroid/graphics/Rect;

    #@82
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@85
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastDockedStackBounds:Landroid/graphics/Rect;

    #@87
    .line 555
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    #@89
    .line 559
    iput-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

    #@8b
    .line 576
    new-instance v0, Ljava/util/HashSet;

    #@8d
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@90
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    #@92
    .line 577
    new-instance v0, Ljava/util/HashSet;

    #@94
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@97
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsThatDismissKeyguard:Ljava/util/HashSet;

    #@99
    .line 582
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarOpacityMode:I

    #@9b
    .line 591
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    #@9d
    .line 649
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    #@9f
    .line 650
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    #@a1
    .line 651
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    #@a3
    .line 652
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    #@a5
    .line 654
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    #@a7
    .line 655
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    #@a9
    .line 656
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    #@ab
    .line 657
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    #@ad
    .line 709
    new-instance v0, Landroid/util/SparseArray;

    #@af
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@b2
    .line 708
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    #@b4
    .line 712
    new-instance v0, Lcom/android/server/policy/LogDecelerateInterpolator;

    #@b6
    const/16 v1, 0x64

    #@b8
    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/LogDecelerateInterpolator;-><init>(II)V

    #@bb
    .line 711
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogDecelerateInterpolator:Lcom/android/server/policy/LogDecelerateInterpolator;

    #@bd
    .line 714
    new-instance v0, Landroid/util/MutableBoolean;

    #@bf
    invoke-direct {v0, v2}, Landroid/util/MutableBoolean;-><init>(Z)V

    #@c2
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTmpBoolean:Landroid/util/MutableBoolean;

    #@c4
    .line 808
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$3;

    #@c6
    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$3;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@c9
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    #@cb
    .line 901
    new-instance v0, Lcom/android/server/policy/StatusBarController;

    #@cd
    invoke-direct {v0}, Lcom/android/server/policy/StatusBarController;-><init>()V

    #@d0
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@d2
    .line 903
    new-instance v0, Lcom/android/server/policy/BarController;

    #@d4
    const-string/jumbo v1, "NavigationBar"

    #@d7
    .line 904
    const/high16 v2, 0x8000000

    #@d9
    .line 905
    const/high16 v3, 0x20000000

    #@db
    .line 906
    const/high16 v4, -0x80000000

    #@dd
    .line 907
    const/4 v5, 0x2

    #@de
    .line 908
    const/high16 v6, 0x8000000

    #@e0
    .line 909
    const v7, 0x8000

    #@e3
    .line 903
    invoke-direct/range {v0 .. v7}, Lcom/android/server/policy/BarController;-><init>(Ljava/lang/String;IIIIII)V

    #@e6
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@e8
    .line 1349
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$4;

    #@ea
    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$4;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@ed
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    #@ef
    .line 1373
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    #@f1
    invoke-direct {v0, p0, v8}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;-><init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;)V

    #@f4
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    #@f6
    .line 1502
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$5;

    #@f8
    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$5;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@fb
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    #@fd
    .line 3779
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$6;

    #@ff
    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$6;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@102
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    #@104
    .line 3850
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$7;

    #@106
    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$7;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@109
    .line 3849
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

    #@10b
    .line 5487
    new-instance v0, Ljava/lang/Object;

    #@10d
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@110
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    #@112
    .line 5488
    iput-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    #@114
    .line 5490
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$8;

    #@116
    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$8;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@119
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotTimeout:Ljava/lang/Runnable;

    #@11b
    .line 6182
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$9;

    #@11d
    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$9;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@120
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    #@122
    .line 6203
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$10;

    #@124
    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$10;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@127
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamReceiver:Landroid/content/BroadcastReceiver;

    #@129
    .line 6218
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$11;

    #@12b
    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$11;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@12e
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    #@130
    .line 6239
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$12;

    #@132
    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$12;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@135
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHiddenNavPanic:Ljava/lang/Runnable;

    #@137
    .line 6969
    iput-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    #@139
    .line 7080
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    #@13b
    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@13e
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    #@140
    .line 169
    return-void
.end method

.method private applyLidSwitchState()V
    .locals 5

    #@0
    .prologue
    .line 7147
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    #@2
    if-nez v0, :cond_1

    #@4
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 7148
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@d
    move-result-wide v2

    #@e
    .line 7149
    const/4 v1, 0x3

    #@f
    .line 7150
    const/4 v4, 0x1

    #@10
    .line 7148
    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/os/PowerManager;->goToSleep(JII)V

    #@13
    .line 7155
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@15
    monitor-enter v0

    #@16
    .line 7156
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit v0

    #@1a
    .line 7146
    return-void

    #@1b
    .line 7151
    :cond_1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    #@1d
    if-nez v0, :cond_0

    #@1f
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsScreenLock:Z

    #@21
    if-eqz v0, :cond_0

    #@23
    .line 7152
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@25
    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->lockDeviceNow()V

    #@28
    goto :goto_0

    #@29
    .line 7155
    :catchall_0
    move-exception v1

    #@2a
    monitor-exit v0

    #@2b
    throw v1
.end method

.method private applyStableConstraints(IILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "sysui"    # I
    .param p2, "fl"    # I
    .param p3, "r"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 4370
    and-int/lit16 v0, p1, 0x100

    #@2
    if-eqz v0, :cond_3

    #@4
    .line 4373
    and-int/lit16 v0, p2, 0x400

    #@6
    if-eqz v0, :cond_4

    #@8
    .line 4374
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
    .line 4375
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
    .line 4376
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
    .line 4377
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
    .line 4369
    :cond_3
    :goto_0
    return-void

    #@31
    .line 4379
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
    .line 4380
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
    .line 4381
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
    .line 4382
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

.method private areSystemNavigationKeysEnabled()Z
    .locals 5

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 7368
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v2

    #@8
    .line 7369
    const-string/jumbo v3, "system_navigation_keys_enabled"

    #@b
    const/4 v4, -0x2

    #@c
    .line 7368
    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@f
    move-result v2

    #@10
    if-ne v2, v0, :cond_0

    #@12
    :goto_0
    return v0

    #@13
    :cond_0
    move v0, v1

    #@14
    goto :goto_0
.end method

.method private areTranslucentBarsAllowed()Z
    .locals 1

    #@0
    .prologue
    .line 7733
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    #@2
    return v0
.end method

.method private static awakenDreams()V
    .locals 2

    #@0
    .prologue
    .line 2985
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    #@3
    move-result-object v0

    #@4
    .line 2986
    .local v0, "dreamManager":Landroid/service/dreams/IDreamManager;
    if-eqz v0, :cond_0

    #@6
    .line 2988
    :try_start_0
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 2984
    :cond_0
    :goto_0
    return-void

    #@a
    .line 2989
    :catch_0
    move-exception v1

    #@b
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private backLongPress()V
    .locals 2

    #@0
    .prologue
    .line 1270
    const/4 v1, 0x1

    #@1
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    #@3
    .line 1272
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    #@5
    packed-switch v1, :pswitch_data_0

    #@8
    .line 1269
    :goto_0
    :pswitch_0
    return-void

    #@9
    .line 1276
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    #@b
    const-string/jumbo v1, "android.intent.action.VOICE_ASSIST"

    #@e
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@11
    .line 1277
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    #@13
    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@16
    goto :goto_0

    #@17
    .line 1272
    nop

    #@18
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private calculateRelevantTaskInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 6
    .param p1, "taskBounds"    # Landroid/graphics/Rect;
    .param p2, "inOutInsets"    # Landroid/graphics/Rect;
    .param p3, "displayWidth"    # I
    .param p4, "displayHeight"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 3958
    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    #@3
    invoke-virtual {v4, v5, v5, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    #@6
    .line 3959
    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    #@8
    invoke-virtual {v4, p2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    #@b
    .line 3960
    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    #@d
    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    #@10
    .line 3961
    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    #@12
    iget v4, v4, Landroid/graphics/Rect;->left:I

    #@14
    iget v5, p1, Landroid/graphics/Rect;->left:I

    #@16
    sub-int v1, v4, v5

    #@18
    .line 3962
    .local v1, "leftInset":I
    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    #@1a
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@1c
    iget v5, p1, Landroid/graphics/Rect;->top:I

    #@1e
    sub-int v3, v4, v5

    #@20
    .line 3963
    .local v3, "topInset":I
    iget v4, p1, Landroid/graphics/Rect;->right:I

    #@22
    sget-object v5, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    #@24
    iget v5, v5, Landroid/graphics/Rect;->right:I

    #@26
    sub-int v2, v4, v5

    #@28
    .line 3964
    .local v2, "rightInset":I
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    #@2a
    sget-object v5, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    #@2c
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    #@2e
    sub-int v0, v4, v5

    #@30
    .line 3965
    .local v0, "bottomInset":I
    invoke-virtual {p2, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    #@33
    .line 3957
    return-void
.end method

.method private canHideNavigationBar()Z
    .locals 1

    #@0
    .prologue
    .line 1914
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    #@2
    return v0
.end method

.method private canReceiveInput(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 7
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 4389
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@5
    move-result-object v5

    #@6
    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@8
    and-int/lit8 v5, v5, 0x8

    #@a
    if-eqz v5, :cond_0

    #@c
    const/4 v1, 0x1

    #@d
    .line 4391
    .local v1, "notFocusable":Z
    :goto_0
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@10
    move-result-object v5

    #@11
    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@13
    const/high16 v6, 0x20000

    #@15
    and-int/2addr v5, v6

    #@16
    if-eqz v5, :cond_1

    #@18
    move v0, v4

    #@19
    .line 4392
    .local v0, "altFocusableIm":Z
    :goto_1
    xor-int v2, v1, v0

    #@1b
    .line 4393
    .local v2, "notFocusableForIm":Z
    if-eqz v2, :cond_2

    #@1d
    :goto_2
    return v3

    #@1e
    .line 4389
    .end local v0    # "altFocusableIm":Z
    .end local v1    # "notFocusable":Z
    .end local v2    # "notFocusableForIm":Z
    :cond_0
    const/4 v1, 0x0

    #@1f
    .restart local v1    # "notFocusable":Z
    goto :goto_0

    #@20
    :cond_1
    move v0, v3

    #@21
    .line 4391
    goto :goto_1

    #@22
    .restart local v0    # "altFocusableIm":Z
    .restart local v2    # "notFocusableForIm":Z
    :cond_2
    move v3, v4

    #@23
    .line 4393
    goto :goto_2
.end method

.method private cancelPendingBackKeyAction()V
    .locals 2

    #@0
    .prologue
    .line 1156
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1157
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    #@7
    .line 1158
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@9
    const/16 v1, 0x12

    #@b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@e
    .line 1155
    :cond_0
    return-void
.end method

.method private cancelPendingPowerKeyAction()V
    .locals 2

    #@0
    .prologue
    .line 1149
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1150
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    #@7
    .line 1151
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@9
    const/16 v1, 0xe

    #@b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@e
    .line 1148
    :cond_0
    return-void
.end method

.method private cancelPendingScreenshotChordAction()V
    .locals 2

    #@0
    .prologue
    .line 1346
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@2
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@7
    .line 1345
    return-void
.end method

.method private cancelPreloadRecentApps()V
    .locals 2

    #@0
    .prologue
    .line 3673
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3674
    const/4 v1, 0x0

    #@5
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    #@7
    .line 3675
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@a
    move-result-object v0

    #@b
    .line 3676
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    #@d
    .line 3677
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->cancelPreloadRecentApps()V

    #@10
    .line 3672
    .end local v0    # "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    :cond_0
    return-void
.end method

.method private clearClearableFlagsLw()V
    .locals 2

    #@0
    .prologue
    .line 7703
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    #@2
    or-int/lit8 v0, v1, 0x7

    #@4
    .line 7704
    .local v0, "newVal":I
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 7705
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    #@a
    .line 7706
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@c
    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reevaluateStatusBarVisibility()V

    #@f
    .line 7702
    :cond_0
    return-void
.end method

.method private configureNavBarOpacity(IZZZ)I
    .locals 2
    .param p1, "visibility"    # I
    .param p2, "dockedStackVisible"    # Z
    .param p3, "freeformStackVisible"    # Z
    .param p4, "isDockedDividerResizing"    # Z

    #@0
    .prologue
    .line 7673
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarOpacityMode:I

    #@2
    if-nez v0, :cond_3

    #@4
    .line 7674
    if-nez p2, :cond_0

    #@6
    if-nez p3, :cond_0

    #@8
    if-eqz p4, :cond_1

    #@a
    .line 7675
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->setNavBarOpaqueFlag(I)I

    #@d
    move-result p1

    #@e
    .line 7687
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_2

    #@14
    .line 7688
    const v0, 0x7fffffff

    #@17
    and-int/2addr p1, v0

    #@18
    .line 7690
    :cond_2
    return p1

    #@19
    .line 7677
    :cond_3
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarOpacityMode:I

    #@1b
    const/4 v1, 0x1

    #@1c
    if-ne v0, v1, :cond_1

    #@1e
    .line 7678
    if-eqz p4, :cond_4

    #@20
    .line 7679
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->setNavBarOpaqueFlag(I)I

    #@23
    move-result p1

    #@24
    goto :goto_0

    #@25
    .line 7680
    :cond_4
    if-eqz p3, :cond_5

    #@27
    .line 7681
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->setNavBarTranslucentFlag(I)I

    #@2a
    move-result p1

    #@2b
    goto :goto_0

    #@2c
    .line 7683
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->setNavBarOpaqueFlag(I)I

    #@2f
    move-result p1

    #@30
    goto :goto_0
.end method

.method private disablePointerLocation()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2045
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 2046
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@7
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    #@9
    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    #@c
    .line 2047
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
    .line 2048
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    #@19
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    #@1c
    .line 2049
    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    #@1e
    .line 2044
    .end local v0    # "wm":Landroid/view/WindowManager;
    :cond_0
    return-void
.end method

.method private dismissKeyboardShortcutsMenu()V
    .locals 1

    #@0
    .prologue
    .line 3712
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@3
    move-result-object v0

    #@4
    .line 3713
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    #@6
    .line 3714
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->dismissKeyboardShortcutsMenu()V

    #@9
    .line 3711
    :cond_0
    return-void
.end method

.method private dispatchDirectAudioEvent(Landroid/view/KeyEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 6079
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 6080
    return-void

    #@7
    .line 6082
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@a
    move-result v7

    #@b
    .line 6083
    .local v7, "keyCode":I
    const/16 v3, 0x1005

    #@d
    .line 6085
    .local v3, "flags":I
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@f
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@12
    move-result-object v4

    #@13
    .line 6086
    .local v4, "pkgName":Ljava/lang/String;
    sparse-switch v7, :sswitch_data_0

    #@16
    .line 6078
    :cond_1
    :goto_0
    return-void

    #@17
    .line 6089
    :sswitch_0
    :try_start_0
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    #@1a
    move-result-object v0

    #@1b
    .line 6090
    const-string/jumbo v5, "WindowManager"

    #@1e
    .line 6089
    const/4 v1, 0x1

    #@1f
    .line 6090
    const/high16 v2, -0x80000000

    #@21
    .line 6089
    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    goto :goto_0

    #@25
    .line 6091
    :catch_0
    move-exception v6

    #@26
    .line 6092
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "WindowManager"

    #@29
    const-string/jumbo v1, "Error dispatching volume up in dispatchTvAudioEvent."

    #@2c
    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2f
    goto :goto_0

    #@30
    .line 6097
    .end local v6    # "e":Landroid/os/RemoteException;
    :sswitch_1
    :try_start_1
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    #@33
    move-result-object v0

    #@34
    .line 6098
    const-string/jumbo v5, "WindowManager"

    #@37
    .line 6097
    const/4 v1, -0x1

    #@38
    .line 6098
    const/high16 v2, -0x80000000

    #@3a
    .line 6097
    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@3d
    goto :goto_0

    #@3e
    .line 6099
    :catch_1
    move-exception v6

    #@3f
    .line 6100
    .restart local v6    # "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "WindowManager"

    #@42
    const-string/jumbo v1, "Error dispatching volume down in dispatchTvAudioEvent."

    #@45
    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@48
    goto :goto_0

    #@49
    .line 6105
    .end local v6    # "e":Landroid/os/RemoteException;
    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@4c
    move-result v0

    #@4d
    if-nez v0, :cond_1

    #@4f
    .line 6106
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    #@52
    move-result-object v0

    #@53
    .line 6108
    const-string/jumbo v5, "WindowManager"

    #@56
    .line 6107
    const/16 v1, 0x65

    #@58
    .line 6108
    const/high16 v2, -0x80000000

    #@5a
    .line 6106
    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    #@5d
    goto :goto_0

    #@5e
    .line 6110
    :catch_2
    move-exception v6

    #@5f
    .line 6111
    .restart local v6    # "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "WindowManager"

    #@62
    const-string/jumbo v1, "Error dispatching mute in dispatchTvAudioEvent."

    #@65
    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@68
    goto :goto_0

    #@69
    .line 6086
    nop

    #@6a
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_1
        0xa4 -> :sswitch_2
    .end sparse-switch
.end method

.method private disposeInputConsumer(Landroid/view/WindowManagerPolicy$InputConsumer;)V
    .locals 0
    .param p1, "inputConsumer"    # Landroid/view/WindowManagerPolicy$InputConsumer;

    #@0
    .prologue
    .line 1283
    if-eqz p1, :cond_0

    #@2
    .line 1284
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$InputConsumer;->dismiss()V

    #@5
    .line 1282
    :cond_0
    return-void
.end method

.method private drawsSystemBarBackground(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 4
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 7535
    if-eqz p1, :cond_0

    #@4
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@7
    move-result-object v2

    #@8
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@a
    const/high16 v3, -0x80000000

    #@c
    and-int/2addr v2, v3

    #@d
    if-eqz v2, :cond_1

    #@f
    :cond_0
    :goto_0
    return v0

    #@10
    :cond_1
    move v0, v1

    #@11
    goto :goto_0
.end method

.method private enablePointerLocation()V
    .locals 5

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 2018
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    #@3
    if-nez v2, :cond_1

    #@5
    .line 2019
    new-instance v2, Lcom/android/internal/widget/PointerLocationView;

    #@7
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@9
    invoke-direct {v2, v3}, Lcom/android/internal/widget/PointerLocationView;-><init>(Landroid/content/Context;)V

    #@c
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    #@e
    .line 2020
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    #@10
    const/4 v3, 0x0

    #@11
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView;->setPrintCoords(Z)V

    #@14
    .line 2021
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    #@16
    invoke-direct {v0, v4, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    #@19
    .line 2024
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x7df

    #@1b
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@1d
    .line 2025
    const/16 v2, 0x518

    #@1f
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@21
    .line 2029
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_0

    #@27
    .line 2030
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@29
    const/high16 v3, 0x1000000

    #@2b
    or-int/2addr v2, v3

    #@2c
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@2e
    .line 2031
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@30
    or-int/lit8 v2, v2, 0x2

    #@32
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@34
    .line 2034
    :cond_0
    const/4 v2, -0x3

    #@35
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    #@37
    .line 2035
    const-string/jumbo v2, "PointerLocation"

    #@3a
    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    #@3d
    .line 2037
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@3f
    const-string/jumbo v3, "window"

    #@42
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@45
    move-result-object v1

    #@46
    .line 2036
    check-cast v1, Landroid/view/WindowManager;

    #@48
    .line 2038
    .local v1, "wm":Landroid/view/WindowManager;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    #@4a
    or-int/lit8 v2, v2, 0x2

    #@4c
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    #@4e
    .line 2039
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    #@50
    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@53
    .line 2040
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@55
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    #@57
    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    #@5a
    .line 2017
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "wm":Landroid/view/WindowManager;
    :cond_1
    return-void
.end method

.method private finishKeyguardDrawn()V
    .locals 4

    #@0
    .prologue
    .line 6362
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 6363
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
    .line 6364
    return-void

    #@d
    .line 6367
    :cond_1
    const/4 v0, 0x1

    #@e
    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    #@10
    .line 6368
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@12
    if-eqz v0, :cond_2

    #@14
    .line 6369
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@16
    const/4 v2, 0x6

    #@17
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    #@1a
    .line 6371
    :cond_2
    const/4 v0, 0x0

    #@1b
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    monitor-exit v1

    #@1e
    .line 6376
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    #@20
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawCallback:Ljava/lang/Runnable;

    #@22
    .line 6377
    const-wide/16 v2, 0x3e8

    #@24
    .line 6376
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/WindowManagerInternal;->waitForAllWindowsDrawn(Ljava/lang/Runnable;J)V

    #@27
    .line 6361
    return-void

    #@28
    .line 6362
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
    .line 1141
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    #@3
    .line 1142
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    #@5
    .line 1143
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    #@7
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 1144
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    #@f
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@12
    .line 1140
    :cond_0
    return-void
.end method

.method private finishScreenTurningOn()V
    .locals 5

    #@0
    .prologue
    .line 6448
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 6451
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v3

    #@7
    .line 6455
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@9
    monitor-enter v4

    #@a
    .line 6463
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
    .line 6464
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    #@18
    if-eqz v3, :cond_0

    #@1a
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    #@1c
    if-eqz v3, :cond_4

    #@1e
    .line 6469
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    #@20
    .line 6470
    .local v1, "listener":Landroid/view/WindowManagerPolicy$ScreenOnListener;
    const/4 v3, 0x0

    #@21
    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    #@23
    .line 6471
    const/4 v3, 0x1

    #@24
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    #@26
    .line 6475
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    #@28
    if-nez v3, :cond_5

    #@2a
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    #@2c
    if-eqz v3, :cond_5

    #@2e
    .line 6476
    const/4 v3, 0x1

    #@2f
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    #@31
    .line 6477
    const/4 v0, 0x1

    #@32
    .line 6478
    .local v0, "enableScreen":Z
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    #@34
    if-eqz v3, :cond_1

    #@36
    .line 6479
    const/4 v3, 0x0

    #@37
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    #@39
    .line 6480
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hideBootMessages()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@3c
    :cond_1
    :goto_0
    monitor-exit v4

    #@3d
    .line 6487
    if-eqz v1, :cond_2

    #@3f
    .line 6488
    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$ScreenOnListener;->onScreenOn()V

    #@42
    .line 6491
    :cond_2
    if-eqz v0, :cond_3

    #@44
    .line 6493
    :try_start_2
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    #@46
    invoke-interface {v3}, Landroid/view/IWindowManager;->enableScreenIfNeeded()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@49
    .line 6447
    :cond_3
    :goto_1
    return-void

    #@4a
    .line 6448
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
    .line 6465
    return-void

    #@4f
    .line 6483
    .restart local v1    # "listener":Landroid/view/WindowManagerPolicy$ScreenOnListener;
    :cond_5
    const/4 v0, 0x0

    #@50
    .restart local v0    # "enableScreen":Z
    goto :goto_0

    #@51
    .line 6455
    .end local v0    # "enableScreen":Z
    .end local v1    # "listener":Landroid/view/WindowManagerPolicy$ScreenOnListener;
    :catchall_1
    move-exception v3

    #@52
    monitor-exit v4

    #@53
    throw v3

    #@54
    .line 6494
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
    .line 6436
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 6437
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
    .line 6438
    return-void

    #@d
    .line 6441
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
    .line 6444
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishScreenTurningOn()V

    #@14
    .line 6435
    return-void

    #@15
    .line 6436
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v1

    #@17
    throw v0
.end method

.method private forcesDrawStatusBarBackground(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 4
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 7539
    if-eqz p1, :cond_0

    #@4
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@7
    move-result-object v2

    #@8
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@a
    .line 7540
    const/high16 v3, 0x20000

    #@c
    .line 7539
    and-int/2addr v2, v3

    #@d
    if-eqz v2, :cond_1

    #@f
    :cond_0
    :goto_0
    return v0

    #@10
    :cond_1
    move v0, v1

    #@11
    goto :goto_0
.end method

.method static getAudioService()Landroid/media/IAudioService;
    .locals 3

    #@0
    .prologue
    .line 3006
    const-string/jumbo v1, "audio"

    #@3
    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v1

    #@7
    .line 3005
    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    #@a
    move-result-object v0

    #@b
    .line 3007
    .local v0, "audioService":Landroid/media/IAudioService;
    if-nez v0, :cond_0

    #@d
    .line 3008
    const-string/jumbo v1, "WindowManager"

    #@10
    const-string/jumbo v2, "Unable to find IAudioService interface."

    #@13
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    .line 3010
    :cond_0
    return-object v0
.end method

.method static getDreamManager()Landroid/service/dreams/IDreamManager;
    .locals 1

    #@0
    .prologue
    .line 2997
    const-string/jumbo v0, "dreams"

    #@3
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    .line 2996
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
    .line 1426
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    #@3
    if-nez v2, :cond_1

    #@5
    .line 1427
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@7
    .line 1428
    const-string/jumbo v3, "hdmi_control"

    #@a
    .line 1427
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Landroid/hardware/hdmi/HdmiControlManager;

    #@10
    .line 1429
    .local v1, "manager":Landroid/hardware/hdmi/HdmiControlManager;
    const/4 v0, 0x0

    #@11
    .line 1430
    .local v0, "client":Landroid/hardware/hdmi/HdmiPlaybackClient;
    if-eqz v1, :cond_0

    #@13
    .line 1431
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiControlManager;->getPlaybackClient()Landroid/hardware/hdmi/HdmiPlaybackClient;

    #@16
    move-result-object v0

    #@17
    .line 1433
    .end local v0    # "client":Landroid/hardware/hdmi/HdmiPlaybackClient;
    :cond_0
    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    #@19
    invoke-direct {v2, v0, v4}, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;-><init>(Landroid/hardware/hdmi/HdmiPlaybackClient;Lcom/android/server/policy/PhoneWindowManager$HdmiControl;)V

    #@1c
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    #@1e
    .line 1435
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
    .line 6897
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    #@4
    move-result-object v0

    #@5
    .line 6898
    .local v0, "ar":[I
    if-nez v0, :cond_0

    #@7
    .line 6899
    return-object v3

    #@8
    .line 6901
    :cond_0
    array-length v3, v0

    #@9
    new-array v2, v3, [J

    #@b
    .line 6902
    .local v2, "out":[J
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    array-length v3, v0

    #@d
    if-ge v1, v3, :cond_1

    #@f
    .line 6903
    aget v3, v0, v1

    #@11
    int-to-long v4, v3

    #@12
    aput-wide v4, v2, v1

    #@14
    .line 6902
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 6905
    :cond_1
    return-object v2
.end method

.method private getMaxMultiPressPowerCount()I
    .locals 1

    #@0
    .prologue
    .line 1238
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1239
    const/4 v0, 0x3

    #@5
    return v0

    #@6
    .line 1241
    :cond_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 1242
    const/4 v0, 0x2

    #@b
    return v0

    #@c
    .line 1244
    :cond_1
    const/4 v0, 0x1

    #@d
    return v0
.end method

.method private getNavigationBarHeight(II)I
    .locals 1
    .param p1, "rotation"    # I
    .param p2, "uiMode"    # I

    #@0
    .prologue
    .line 2514
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    #@2
    aget v0, v0, p1

    #@4
    return v0
.end method

.method private getNavigationBarWidth(II)I
    .locals 1
    .param p1, "rotation"    # I
    .param p2, "uiMode"    # I

    #@0
    .prologue
    .line 2493
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    #@2
    aget v0, v0, p1

    #@4
    return v0
.end method

.method private getResolvedLongPressOnPowerBehavior()I
    .locals 1

    #@0
    .prologue
    .line 1306
    invoke-static {}, Landroid/os/FactoryTest;->isLongPressOnPowerOffEnabled()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1307
    const/4 v0, 0x3

    #@7
    return v0

    #@8
    .line 1309
    :cond_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    #@a
    return v0
.end method

.method private getScreenshotChordLongPressDelay()J
    .locals 2

    #@0
    .prologue
    .line 1337
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@2
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1340
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
    .line 1339
    const/high16 v1, 0x40200000    # 2.5f

    #@15
    mul-float/2addr v0, v1

    #@16
    float-to-long v0, v0

    #@17
    return-wide v0

    #@18
    .line 1342
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
    .line 3658
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 3659
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
    .line 3661
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
    .line 1481
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 1482
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    #@7
    .line 1483
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    #@a
    .line 1480
    :cond_0
    return-void
.end method

.method private handleHideBootMessage()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 6500
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 6501
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    #@6
    if-nez v0, :cond_0

    #@8
    .line 6502
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 6503
    return-void

    #@d
    :cond_0
    monitor-exit v1

    #@e
    .line 6507
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 6509
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    #@14
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    #@17
    .line 6510
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    #@19
    .line 6499
    :cond_1
    return-void

    #@1a
    .line 6500
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method

.method private handleLongPressOnHome(I)V
    .locals 3
    .param p1, "deviceId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 1461
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1462
    return-void

    #@7
    .line 1464
    :cond_0
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    #@a
    .line 1465
    invoke-virtual {p0, v2, v1, v1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    #@d
    .line 1467
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    #@f
    packed-switch v0, :pswitch_data_0

    #@12
    .line 1475
    const-string/jumbo v0, "WindowManager"

    #@15
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v2, "Undefined home long press behavior: "

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 1460
    :goto_0
    return-void

    #@2f
    .line 1469
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    #@32
    goto :goto_0

    #@33
    .line 1472
    :pswitch_1
    invoke-direct {p0, v2, p1}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    #@36
    goto :goto_0

    #@37
    .line 1467
    nop

    #@38
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleShortPressOnHome()V
    .locals 2

    #@0
    .prologue
    .line 1407
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getHdmiControl()Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;->turnOnTv()V

    #@7
    .line 1411
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
    .line 1412
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    #@15
    const/4 v1, 0x0

    #@16
    invoke-virtual {v0, v1}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    #@19
    .line 1413
    return-void

    #@1a
    .line 1417
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey()V

    #@1d
    .line 1405
    return-void
.end method

.method private hasLongPressOnBackBehavior()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1317
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method private hasLongPressOnPowerBehavior()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1313
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
    .locals 2
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHome"    # Z

    #@0
    .prologue
    .line 3719
    const/4 v1, 0x0

    #@1
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    #@3
    .line 3720
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@6
    move-result-object v0

    #@7
    .line 3721
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    #@9
    .line 3722
    invoke-interface {v0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->hideRecentApps(ZZ)V

    #@c
    .line 3718
    :cond_0
    return-void
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
    .line 3567
    invoke-virtual {p0, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    #@4
    move-result v0

    #@5
    .line 3568
    .local v0, "actions":I
    and-int/lit8 v1, v0, 0x1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 3569
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    #@c
    move-result-wide v2

    #@d
    .line 3571
    .local v2, "delayMillis":J
    const-wide/16 v4, 0x0

    #@f
    cmp-long v1, v2, v4

    #@11
    if-nez v1, :cond_0

    #@13
    .line 3572
    const/4 v1, 0x1

    #@14
    return v1

    #@15
    .line 3575
    .end local v2    # "delayMillis":J
    :cond_0
    return v6
.end method

.method private interceptPowerKeyDown(Landroid/view/KeyEvent;Z)V
    .locals 13
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "interactive"    # Z

    #@0
    .prologue
    .line 1020
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 1021
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    #@a
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@d
    .line 1025
    :cond_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 1026
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@13
    const/16 v1, 0xd

    #@15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@18
    .line 1031
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    #@1a
    .line 1032
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@1d
    move-result-wide v2

    #@1e
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    #@20
    invoke-direct {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isImmersiveMode(I)Z

    #@23
    move-result v4

    #@24
    .line 1033
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    #@26
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->isNavBarEmpty(I)Z

    #@29
    move-result v5

    #@2a
    move v1, p2

    #@2b
    .line 1031
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/ImmersiveModeConfirmation;->onPowerKeyDown(ZJZZ)Z

    #@2e
    move-result v11

    #@2f
    .line 1034
    .local v11, "panic":Z
    if-eqz v11, :cond_2

    #@31
    .line 1035
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@33
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHiddenNavPanic:Ljava/lang/Runnable;

    #@35
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@38
    .line 1039
    :cond_2
    if-eqz p2, :cond_3

    #@3a
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    #@3c
    if-eqz v0, :cond_7

    #@3e
    .line 1047
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    #@41
    move-result-object v12

    #@42
    .line 1048
    .local v12, "telecomManager":Landroid/telecom/TelecomManager;
    const/4 v8, 0x0

    #@43
    .line 1049
    .local v8, "hungUp":Z
    if-eqz v12, :cond_4

    #@45
    .line 1050
    invoke-virtual {v12}, Landroid/telecom/TelecomManager;->isRinging()Z

    #@48
    move-result v0

    #@49
    if-eqz v0, :cond_8

    #@4b
    .line 1053
    invoke-virtual {v12}, Landroid/telecom/TelecomManager;->silenceRinger()V

    #@4e
    .line 1064
    .end local v8    # "hungUp":Z
    :cond_4
    :goto_1
    const-class v0, Lcom/android/server/GestureLauncherService;

    #@50
    .line 1063
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@53
    move-result-object v6

    #@54
    check-cast v6, Lcom/android/server/GestureLauncherService;

    #@56
    .line 1065
    .local v6, "gestureService":Lcom/android/server/GestureLauncherService;
    const/4 v7, 0x0

    #@57
    .line 1066
    .local v7, "gesturedServiceIntercepted":Z
    if-eqz v6, :cond_5

    #@59
    .line 1068
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTmpBoolean:Landroid/util/MutableBoolean;

    #@5b
    .line 1067
    invoke-virtual {v6, p1, p2, v0}, Lcom/android/server/GestureLauncherService;->interceptPowerKeyDown(Landroid/view/KeyEvent;ZLandroid/util/MutableBoolean;)Z

    #@5e
    move-result v7

    #@5f
    .line 1069
    .local v7, "gesturedServiceIntercepted":Z
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTmpBoolean:Landroid/util/MutableBoolean;

    #@61
    iget-boolean v0, v0, Landroid/util/MutableBoolean;->value:Z

    #@63
    if-eqz v0, :cond_5

    #@65
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoingToSleep:Z

    #@67
    if-eqz v0, :cond_5

    #@69
    .line 1070
    const/4 v0, 0x1

    #@6a
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraGestureTriggeredDuringGoingToSleep:Z

    #@6c
    .line 1076
    .end local v7    # "gesturedServiceIntercepted":Z
    :cond_5
    if-nez v8, :cond_9

    #@6e
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    #@70
    if-nez v0, :cond_9

    #@72
    .line 1077
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    #@74
    .line 1076
    if-nez v0, :cond_9

    #@76
    :goto_2
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    #@78
    .line 1078
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    #@7a
    if-nez v0, :cond_6

    #@7c
    .line 1079
    if-eqz p2, :cond_a

    #@7e
    .line 1082
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnPowerBehavior()Z

    #@81
    move-result v0

    #@82
    if-eqz v0, :cond_6

    #@84
    .line 1083
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@86
    const/16 v1, 0xe

    #@88
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@8b
    move-result-object v10

    #@8c
    .line 1084
    .local v10, "msg":Landroid/os/Message;
    const/4 v0, 0x1

    #@8d
    invoke-virtual {v10, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    #@90
    .line 1085
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@92
    .line 1086
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@94
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@97
    move-result-object v1

    #@98
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    #@9b
    move-result-wide v2

    #@9c
    .line 1085
    invoke-virtual {v0, v10, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@9f
    .line 1018
    .end local v10    # "msg":Landroid/os/Message;
    :cond_6
    :goto_3
    return-void

    #@a0
    .line 1040
    .end local v6    # "gestureService":Lcom/android/server/GestureLauncherService;
    .end local v12    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    #@a3
    move-result v0

    #@a4
    and-int/lit16 v0, v0, 0x400

    #@a6
    if-nez v0, :cond_3

    #@a8
    .line 1041
    const/4 v0, 0x1

    #@a9
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    #@ab
    .line 1042
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    #@ae
    move-result-wide v0

    #@af
    iput-wide v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTime:J

    #@b1
    .line 1043
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptScreenshotChord()V

    #@b4
    goto :goto_0

    #@b5
    .line 1054
    .restart local v8    # "hungUp":Z
    .restart local v12    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_8
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    #@b7
    and-int/lit8 v0, v0, 0x2

    #@b9
    if-eqz v0, :cond_4

    #@bb
    .line 1056
    invoke-virtual {v12}, Landroid/telecom/TelecomManager;->isInCall()Z

    #@be
    move-result v0

    #@bf
    .line 1054
    if-eqz v0, :cond_4

    #@c1
    if-eqz p2, :cond_4

    #@c3
    .line 1059
    invoke-virtual {v12}, Landroid/telecom/TelecomManager;->endCall()Z

    #@c6
    move-result v8

    #@c7
    .local v8, "hungUp":Z
    goto :goto_1

    #@c8
    .line 1076
    .end local v8    # "hungUp":Z
    .restart local v6    # "gestureService":Lcom/android/server/GestureLauncherService;
    :cond_9
    const/4 v7, 0x1

    #@c9
    goto :goto_2

    #@ca
    .line 1089
    :cond_a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    #@cd
    move-result-wide v0

    #@ce
    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    #@d1
    .line 1091
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    #@d3
    if-eqz v0, :cond_b

    #@d5
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnPowerBehavior()Z

    #@d8
    move-result v0

    #@d9
    if-eqz v0, :cond_b

    #@db
    .line 1092
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@dd
    const/16 v1, 0xe

    #@df
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@e2
    move-result-object v10

    #@e3
    .line 1093
    .restart local v10    # "msg":Landroid/os/Message;
    const/4 v0, 0x1

    #@e4
    invoke-virtual {v10, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    #@e7
    .line 1094
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@e9
    .line 1095
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@eb
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@ee
    move-result-object v1

    #@ef
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    #@f2
    move-result-wide v2

    #@f3
    .line 1094
    invoke-virtual {v0, v10, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@f6
    .line 1096
    const/4 v0, 0x1

    #@f7
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    #@f9
    goto :goto_3

    #@fa
    .line 1098
    .end local v10    # "msg":Landroid/os/Message;
    :cond_b
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    #@fd
    move-result v9

    #@fe
    .line 1100
    .local v9, "maxCount":I
    const/4 v0, 0x1

    #@ff
    if-gt v9, v0, :cond_c

    #@101
    .line 1101
    const/4 v0, 0x1

    #@102
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    #@104
    goto :goto_3

    #@105
    .line 1103
    :cond_c
    const/4 v0, 0x1

    #@106
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    #@108
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
    .line 1111
    if-nez p3, :cond_1

    #@4
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    #@6
    .line 1112
    :goto_0
    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    #@8
    .line 1113
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    #@b
    .line 1114
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    #@e
    .line 1116
    if-nez v2, :cond_3

    #@10
    .line 1118
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    #@12
    add-int/lit8 v7, v7, 0x1

    #@14
    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    #@16
    .line 1120
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    #@19
    move-result v3

    #@1a
    .line 1121
    .local v3, "maxCount":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    #@1d
    move-result-wide v0

    #@1e
    .line 1122
    .local v0, "eventTime":J
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    #@20
    if-ge v7, v3, :cond_2

    #@22
    .line 1125
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@24
    .line 1126
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
    .line 1125
    const/16 v10, 0xd

    #@2f
    invoke-virtual {v7, v10, v5, v8, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@32
    move-result-object v4

    #@33
    .line 1127
    .local v4, "msg":Landroid/os/Message;
    invoke-virtual {v4, v6}, Landroid/os/Message;->setAsynchronous(Z)V

    #@36
    .line 1128
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
    .line 1129
    return-void

    #@41
    .line 1111
    .end local v0    # "eventTime":J
    .end local v3    # "maxCount":I
    .end local v4    # "msg":Landroid/os/Message;
    :cond_1
    const/4 v2, 0x1

    #@42
    .local v2, "handled":Z
    goto :goto_0

    #@43
    .line 1133
    .end local v2    # "handled":Z
    .restart local v0    # "eventTime":J
    .restart local v3    # "maxCount":I
    :cond_2
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    #@45
    invoke-direct {p0, v0, v1, p2, v5}, Lcom/android/server/policy/PhoneWindowManager;->powerPress(JZI)V

    #@48
    .line 1137
    .end local v0    # "eventTime":J
    .end local v3    # "maxCount":I
    :cond_3
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishPowerKeyPress()V

    #@4b
    .line 1110
    return-void
.end method

.method private interceptScreenshotChord()V
    .locals 8

    #@0
    .prologue
    const-wide/16 v6, 0x96

    #@2
    const/4 v4, 0x1

    #@3
    .line 1321
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordEnabled:Z

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 1322
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    #@9
    .line 1321
    if-eqz v2, :cond_0

    #@b
    .line 1322
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    #@d
    .line 1321
    if-eqz v2, :cond_0

    #@f
    .line 1323
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 1320
    :cond_0
    :goto_0
    return-void

    #@14
    .line 1324
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@17
    move-result-wide v0

    #@18
    .line 1325
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    #@1a
    add-long/2addr v2, v6

    #@1b
    cmp-long v2, v0, v2

    #@1d
    if-gtz v2, :cond_0

    #@1f
    .line 1326
    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTime:J

    #@21
    add-long/2addr v2, v6

    #@22
    cmp-long v2, v0, v2

    #@24
    if-gtz v2, :cond_0

    #@26
    .line 1328
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    #@28
    .line 1329
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    #@2b
    .line 1330
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    #@2d
    invoke-virtual {v2, v4}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->setScreenshotType(I)V

    #@30
    .line 1331
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@32
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    #@34
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getScreenshotChordLongPressDelay()J

    #@37
    move-result-wide v4

    #@38
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@3b
    goto :goto_0
.end method

.method private interceptSystemNavigationKey(Landroid/view/KeyEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 5953
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@3
    move-result v2

    #@4
    const/4 v3, 0x1

    #@5
    if-ne v2, v3, :cond_0

    #@7
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->areSystemNavigationKeysEnabled()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 5954
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    #@10
    move-result-object v1

    #@11
    .line 5955
    .local v1, "sbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    #@13
    .line 5957
    :try_start_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@16
    move-result v2

    #@17
    invoke-interface {v1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->handleSystemNavigationKey(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 5952
    .end local v1    # "sbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    #@1b
    .line 5958
    .restart local v1    # "sbar":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    #@1c
    .local v0, "e1":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private isAnyPortrait(I)Z
    .locals 2
    .param p1, "rotation"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 6854
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

.method private isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 3
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 5151
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    #@4
    if-nez v1, :cond_0

    #@6
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    #@8
    if-nez v1, :cond_0

    #@a
    .line 5152
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    #@c
    if-ne v1, v2, :cond_0

    #@e
    .line 5153
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    #@10
    if-ne v1, v2, :cond_0

    #@12
    const/4 v0, 0x1

    #@13
    .line 5151
    :cond_0
    return v0
.end method

.method private isGlobalAccessibilityGestureEnabled()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 7363
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v2

    #@8
    .line 7364
    const-string/jumbo v3, "enable_accessibility_global_gesture_enabled"

    #@b
    .line 7363
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
    .line 2284
    packed-switch p1, :pswitch_data_0

    #@5
    .line 2290
    return v1

    #@6
    .line 2286
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
    .line 2288
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
    .line 2284
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
    .line 7711
    const/16 v0, 0x1800

    #@3
    .line 7712
    .local v0, "flags":I
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 7713
    and-int/lit8 v2, p1, 0x2

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 7714
    and-int/lit16 v2, p1, 0x1800

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 7715
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    #@12
    move-result v1

    #@13
    .line 7712
    :cond_0
    return v1
.end method

.method private isKeyguardShowingAndNotOccluded()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 6536
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@3
    if-nez v1, :cond_0

    #@5
    return v0

    #@6
    .line 6537
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
    .line 6850
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

.method private static isNavBarEmpty(I)Z
    .locals 3
    .param p0, "systemUiFlags"    # I

    #@0
    .prologue
    const/high16 v2, 0x1600000

    #@2
    .line 7719
    const/high16 v0, 0x1600000

    #@4
    .line 7723
    .local v0, "disableNavigationBar":I
    and-int v1, p0, v2

    #@6
    if-ne v1, v2, :cond_0

    #@8
    const/4 v1, 0x1

    #@9
    :goto_0
    return v1

    #@a
    :cond_0
    const/4 v1, 0x0

    #@b
    goto :goto_0
.end method

.method private isRoundWindow()Z
    .locals 1

    #@0
    .prologue
    .line 1513
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
    .line 5374
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 5375
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
    .line 5374
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
    .line 7358
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v2

    #@8
    .line 7359
    const-string/jumbo v3, "theater_mode_on"

    #@b
    .line 7358
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
    .line 5971
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 5977
    const/4 v0, 0x1

    #@4
    return v0

    #@5
    .line 5975
    :sswitch_0
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 5971
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
    .line 5989
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 6012
    return v0

    #@6
    .line 5994
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
    .line 6010
    :sswitch_1
    return v1

    #@e
    .line 5989
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
    .locals 4
    .param p1, "hint"    # Ljava/lang/String;
    .param p2, "deviceId"    # I

    #@0
    .prologue
    .line 3620
    const-string/jumbo v2, "assist"

    #@3
    invoke-virtual {p0, v2}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    #@6
    .line 3621
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    #@9
    move-result v2

    #@a
    if-nez v2, :cond_0

    #@c
    .line 3623
    return-void

    #@d
    .line 3625
    :cond_0
    const/4 v0, 0x0

    #@e
    .line 3626
    .local v0, "args":Landroid/os/Bundle;
    const/high16 v2, -0x80000000

    #@10
    if-le p2, v2, :cond_1

    #@12
    .line 3627
    new-instance v0, Landroid/os/Bundle;

    #@14
    .end local v0    # "args":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@17
    .line 3628
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "android.intent.extra.ASSIST_INPUT_DEVICE_ID"

    #@1a
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@1d
    .line 3630
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@1f
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@26
    move-result-object v2

    #@27
    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    #@29
    and-int/lit8 v2, v2, 0xf

    #@2b
    .line 3631
    const/4 v3, 0x4

    #@2c
    .line 3630
    if-ne v2, v3, :cond_3

    #@2e
    .line 3633
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@30
    const-string/jumbo v3, "search"

    #@33
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@36
    move-result-object v2

    #@37
    check-cast v2, Landroid/app/SearchManager;

    #@39
    .line 3634
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3c
    move-result v3

    #@3d
    .line 3633
    invoke-virtual {v2, p1, v3, v0}, Landroid/app/SearchManager;->launchLegacyAssist(Ljava/lang/String;ILandroid/os/Bundle;)Z

    #@40
    .line 3619
    :cond_2
    :goto_0
    return-void

    #@41
    .line 3636
    :cond_3
    if-eqz p1, :cond_5

    #@43
    .line 3637
    if-nez v0, :cond_4

    #@45
    .line 3638
    new-instance v0, Landroid/os/Bundle;

    #@47
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@4a
    .line 3640
    :cond_4
    const/4 v2, 0x1

    #@4b
    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@4e
    .line 3642
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@51
    move-result-object v1

    #@52
    .line 3643
    .local v1, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v1, :cond_2

    #@54
    .line 3644
    invoke-interface {v1, v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->startAssist(Landroid/os/Bundle;)V

    #@57
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
    .line 3600
    invoke-virtual {p0, v4, v3, v3}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    #@5
    .line 3601
    const-string/jumbo v3, "assist"

    #@8
    invoke-virtual {p0, v3}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    #@b
    .line 3604
    new-instance v1, Landroid/content/Intent;

    #@d
    const-string/jumbo v3, "android.intent.action.SEARCH_LONG_PRESS"

    #@10
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@13
    .line 3605
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    #@15
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@18
    .line 3609
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getSearchManager()Landroid/app/SearchManager;

    #@1b
    move-result-object v2

    #@1c
    .line 3610
    .local v2, "searchManager":Landroid/app/SearchManager;
    if-eqz v2, :cond_0

    #@1e
    .line 3611
    invoke-virtual {v2}, Landroid/app/SearchManager;->stopSearch()V

    #@21
    .line 3613
    :cond_0
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@23
    invoke-direct {p0, v1, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    .line 3599
    .end local v2    # "searchManager":Landroid/app/SearchManager;
    :goto_0
    return-void

    #@27
    .line 3614
    :catch_0
    move-exception v0

    #@28
    .line 3615
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v3, "WindowManager"

    #@2b
    const-string/jumbo v4, "No activity to handle assist long press action."

    #@2e
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@31
    goto :goto_0
.end method

.method private layoutNavigationBar(IIIIIIILandroid/graphics/Rect;ZZZZ)Z
    .locals 15
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .param p3, "displayRotation"    # I
    .param p4, "uiMode"    # I
    .param p5, "overscanLeft"    # I
    .param p6, "overscanRight"    # I
    .param p7, "overscanBottom"    # I
    .param p8, "dcf"    # Landroid/graphics/Rect;
    .param p9, "navVisible"    # Z
    .param p10, "navTranslucent"    # Z
    .param p11, "navAllowedHidden"    # Z
    .param p12, "statusBarExpandedNotKeyguard"    # Z

    #@0
    .prologue
    .line 4173
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@2
    if-eqz v2, :cond_a

    #@4
    .line 4174
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@6
    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->isTransientShowing()Z

    #@9
    move-result v14

    #@a
    .line 4179
    .local v14, "transientNavBarShowing":Z
    invoke-direct/range {p0 .. p3}, Lcom/android/server/policy/PhoneWindowManager;->navigationBarPosition(III)I

    #@d
    move-result v2

    #@e
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    #@10
    .line 4181
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    #@12
    if-nez v2, :cond_4

    #@14
    .line 4183
    sub-int v2, p2, p7

    #@16
    .line 4184
    move/from16 v0, p3

    #@18
    move/from16 v1, p4

    #@1a
    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarHeight(II)I

    #@1d
    move-result v3

    #@1e
    .line 4183
    sub-int v13, v2, v3

    #@20
    .line 4185
    .local v13, "top":I
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@22
    sub-int v3, p2, p7

    #@24
    const/4 v4, 0x0

    #@25
    move/from16 v0, p1

    #@27
    invoke-virtual {v2, v4, v13, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    #@2a
    .line 4186
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@2c
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@2e
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenBottom:I

    #@30
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    #@32
    .line 4187
    if-eqz v14, :cond_1

    #@34
    .line 4188
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@36
    const/4 v3, 0x1

    #@37
    invoke-virtual {v2, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    #@3a
    .line 4199
    :goto_0
    if-eqz p9, :cond_0

    #@3c
    if-eqz p10, :cond_3

    #@3e
    .line 4263
    .end local v13    # "top":I
    :cond_0
    :goto_1
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    #@40
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    #@42
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    #@44
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    #@46
    .line 4264
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    #@48
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    #@4a
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    #@4c
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    #@4e
    .line 4265
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    #@50
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    #@52
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    #@54
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    #@56
    .line 4266
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    #@58
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    #@5a
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    #@5c
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    #@5e
    .line 4267
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@60
    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    #@63
    move-result v2

    #@64
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarLayer:I

    #@66
    .line 4269
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@68
    sget-object v3, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@6a
    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@6c
    .line 4270
    sget-object v5, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@6e
    sget-object v6, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@70
    sget-object v7, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@72
    .line 4271
    sget-object v9, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@74
    sget-object v10, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@76
    move-object/from16 v8, p8

    #@78
    .line 4269
    invoke-interface/range {v2 .. v10}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@7b
    .line 4273
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@7d
    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->checkHiddenLw()Z

    #@80
    move-result v2

    #@81
    if-eqz v2, :cond_a

    #@83
    .line 4274
    const/4 v2, 0x1

    #@84
    return v2

    #@85
    .line 4189
    .restart local v13    # "top":I
    :cond_1
    if-eqz p9, :cond_2

    #@87
    .line 4190
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@89
    const/4 v3, 0x1

    #@8a
    invoke-virtual {v2, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    #@8d
    .line 4191
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@8f
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@91
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    #@93
    .line 4192
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    #@95
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    #@97
    sub-int/2addr v2, v3

    #@98
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    #@9a
    .line 4193
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    #@9c
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    #@9e
    sub-int/2addr v2, v3

    #@9f
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    #@a1
    goto :goto_0

    #@a2
    .line 4197
    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@a4
    move/from16 v0, p12

    #@a6
    invoke-virtual {v2, v0}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    #@a9
    goto :goto_0

    #@aa
    .line 4199
    :cond_3
    if-nez p11, :cond_0

    #@ac
    .line 4200
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@ae
    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    #@b1
    move-result v2

    #@b2
    if-nez v2, :cond_0

    #@b4
    .line 4201
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@b6
    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->wasRecentlyTranslucent()Z

    #@b9
    move-result v2

    #@ba
    if-nez v2, :cond_0

    #@bc
    .line 4205
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@be
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@c0
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBottom:I

    #@c2
    goto/16 :goto_1

    #@c4
    .line 4207
    .end local v13    # "top":I
    :cond_4
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    #@c6
    const/4 v3, 0x1

    #@c7
    if-ne v2, v3, :cond_7

    #@c9
    .line 4209
    sub-int v2, p1, p6

    #@cb
    .line 4210
    move/from16 v0, p3

    #@cd
    move/from16 v1, p4

    #@cf
    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarWidth(II)I

    #@d2
    move-result v3

    #@d3
    .line 4209
    sub-int v11, v2, v3

    #@d5
    .line 4211
    .local v11, "left":I
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@d7
    sub-int v3, p1, p6

    #@d9
    const/4 v4, 0x0

    #@da
    move/from16 v0, p2

    #@dc
    invoke-virtual {v2, v11, v4, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    #@df
    .line 4212
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@e1
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@e3
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenRight:I

    #@e5
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    #@e7
    .line 4213
    if-eqz v14, :cond_5

    #@e9
    .line 4214
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@eb
    const/4 v3, 0x1

    #@ec
    invoke-virtual {v2, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    #@ef
    .line 4225
    :goto_2
    if-eqz p9, :cond_0

    #@f1
    if-nez p10, :cond_0

    #@f3
    if-nez p11, :cond_0

    #@f5
    .line 4226
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@f7
    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    #@fa
    move-result v2

    #@fb
    if-nez v2, :cond_0

    #@fd
    .line 4227
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@ff
    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->wasRecentlyTranslucent()Z

    #@102
    move-result v2

    #@103
    if-nez v2, :cond_0

    #@105
    .line 4231
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@107
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@109
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemRight:I

    #@10b
    goto/16 :goto_1

    #@10d
    .line 4215
    :cond_5
    if-eqz p9, :cond_6

    #@10f
    .line 4216
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@111
    const/4 v3, 0x1

    #@112
    invoke-virtual {v2, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    #@115
    .line 4217
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@117
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@119
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    #@11b
    .line 4218
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    #@11d
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    #@11f
    sub-int/2addr v2, v3

    #@120
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    #@122
    .line 4219
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    #@124
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    #@126
    sub-int/2addr v2, v3

    #@127
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    #@129
    goto :goto_2

    #@12a
    .line 4223
    :cond_6
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@12c
    move/from16 v0, p12

    #@12e
    invoke-virtual {v2, v0}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    #@131
    goto :goto_2

    #@132
    .line 4233
    .end local v11    # "left":I
    :cond_7
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    #@134
    const/4 v3, 0x2

    #@135
    if-ne v2, v3, :cond_0

    #@137
    .line 4235
    move/from16 v0, p3

    #@139
    move/from16 v1, p4

    #@13b
    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarWidth(II)I

    #@13e
    move-result v2

    #@13f
    add-int v12, p5, v2

    #@141
    .line 4236
    .local v12, "right":I
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@143
    const/4 v3, 0x0

    #@144
    move/from16 v0, p5

    #@146
    move/from16 v1, p2

    #@148
    invoke-virtual {v2, v0, v3, v12, v1}, Landroid/graphics/Rect;->set(IIII)V

    #@14b
    .line 4237
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@14d
    iget v2, v2, Landroid/graphics/Rect;->right:I

    #@14f
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenLeft:I

    #@151
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    #@153
    .line 4238
    if-eqz v14, :cond_8

    #@155
    .line 4239
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@157
    const/4 v3, 0x1

    #@158
    invoke-virtual {v2, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    #@15b
    .line 4252
    :goto_3
    if-eqz p9, :cond_0

    #@15d
    if-nez p10, :cond_0

    #@15f
    if-nez p11, :cond_0

    #@161
    .line 4253
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@163
    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    #@166
    move-result v2

    #@167
    if-nez v2, :cond_0

    #@169
    .line 4254
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@16b
    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->wasRecentlyTranslucent()Z

    #@16e
    move-result v2

    #@16f
    if-nez v2, :cond_0

    #@171
    .line 4258
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@173
    iget v2, v2, Landroid/graphics/Rect;->right:I

    #@175
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemLeft:I

    #@177
    goto/16 :goto_1

    #@179
    .line 4240
    :cond_8
    if-eqz p9, :cond_9

    #@17b
    .line 4241
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@17d
    const/4 v3, 0x1

    #@17e
    invoke-virtual {v2, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    #@181
    .line 4242
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    #@183
    iget v2, v2, Landroid/graphics/Rect;->right:I

    #@185
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    #@187
    .line 4244
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    #@189
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    #@18b
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    #@18d
    .line 4245
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    #@18f
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    #@191
    sub-int/2addr v2, v3

    #@192
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    #@194
    .line 4246
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    #@196
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    #@198
    sub-int/2addr v2, v3

    #@199
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    #@19b
    goto :goto_3

    #@19c
    .line 4250
    :cond_9
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@19e
    move/from16 v0, p12

    #@1a0
    invoke-virtual {v2, v0}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    #@1a3
    goto :goto_3

    #@1a4
    .line 4277
    .end local v12    # "right":I
    .end local v14    # "transientNavBarShowing":Z
    :cond_a
    const/4 v2, 0x0

    #@1a5
    return v2
.end method

.method private layoutStatusBar(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)Z
    .locals 11
    .param p1, "pf"    # Landroid/graphics/Rect;
    .param p2, "df"    # Landroid/graphics/Rect;
    .param p3, "of"    # Landroid/graphics/Rect;
    .param p4, "vf"    # Landroid/graphics/Rect;
    .param p5, "dcf"    # Landroid/graphics/Rect;
    .param p6, "sysui"    # I
    .param p7, "isKeyguardShowing"    # Z

    #@0
    .prologue
    .line 4105
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 4107
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@6
    iput v0, p3, Landroid/graphics/Rect;->left:I

    #@8
    iput v0, p2, Landroid/graphics/Rect;->left:I

    #@a
    iput v0, p1, Landroid/graphics/Rect;->left:I

    #@c
    .line 4108
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@e
    iput v0, p3, Landroid/graphics/Rect;->top:I

    #@10
    iput v0, p2, Landroid/graphics/Rect;->top:I

    #@12
    iput v0, p1, Landroid/graphics/Rect;->top:I

    #@14
    .line 4109
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    #@16
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@18
    add-int/2addr v0, v1

    #@19
    iput v0, p3, Landroid/graphics/Rect;->right:I

    #@1b
    iput v0, p2, Landroid/graphics/Rect;->right:I

    #@1d
    iput v0, p1, Landroid/graphics/Rect;->right:I

    #@1f
    .line 4110
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    #@21
    .line 4111
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@23
    .line 4110
    add-int/2addr v0, v1

    #@24
    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    #@26
    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    #@28
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    #@2a
    .line 4112
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    #@2c
    iput v0, p4, Landroid/graphics/Rect;->left:I

    #@2e
    .line 4113
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    #@30
    iput v0, p4, Landroid/graphics/Rect;->top:I

    #@32
    .line 4114
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    #@34
    iput v0, p4, Landroid/graphics/Rect;->right:I

    #@36
    .line 4115
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    #@38
    iput v0, p4, Landroid/graphics/Rect;->bottom:I

    #@3a
    .line 4117
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@3c
    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    #@3f
    move-result v0

    #@40
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarLayer:I

    #@42
    .line 4120
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@44
    move-object v1, p1

    #@45
    move-object v2, p2

    #@46
    move-object v3, p4

    #@47
    move-object v4, p4

    #@48
    move-object v5, p4

    #@49
    move-object/from16 v6, p5

    #@4b
    move-object v7, p4

    #@4c
    move-object v8, p4

    #@4d
    invoke-interface/range {v0 .. v8}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@50
    .line 4125
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@52
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    #@54
    add-int/2addr v0, v1

    #@55
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    #@57
    .line 4127
    const/high16 v0, 0x4000000

    #@59
    and-int v0, v0, p6

    #@5b
    if-eqz v0, :cond_3

    #@5d
    const/4 v9, 0x1

    #@5e
    .line 4129
    .local v9, "statusBarTransient":Z
    :goto_0
    const v0, 0x40000008    # 2.000002f

    #@61
    .line 4128
    and-int v0, v0, p6

    #@63
    if-eqz v0, :cond_4

    #@65
    const/4 v10, 0x1

    #@66
    .line 4130
    .local v10, "statusBarTranslucent":Z
    :goto_1
    if-nez p7, :cond_0

    #@68
    .line 4131
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    #@6b
    move-result v0

    #@6c
    and-int/2addr v10, v0

    #@6d
    .line 4136
    .end local v10    # "statusBarTranslucent":Z
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@6f
    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    #@72
    move-result v0

    #@73
    if-eqz v0, :cond_1

    #@75
    if-eqz v9, :cond_5

    #@77
    .line 4154
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@79
    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    #@7c
    move-result v0

    #@7d
    if-eqz v0, :cond_2

    #@7f
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@81
    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    #@84
    move-result v0

    #@85
    if-eqz v0, :cond_6

    #@87
    .line 4162
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@89
    invoke-virtual {v0}, Lcom/android/server/policy/StatusBarController;->checkHiddenLw()Z

    #@8c
    move-result v0

    #@8d
    if-eqz v0, :cond_7

    #@8f
    .line 4163
    const/4 v0, 0x1

    #@90
    return v0

    #@91
    .line 4127
    .end local v9    # "statusBarTransient":Z
    :cond_3
    const/4 v9, 0x0

    #@92
    .restart local v9    # "statusBarTransient":Z
    goto :goto_0

    #@93
    .line 4128
    :cond_4
    const/4 v10, 0x0

    #@94
    .restart local v10    # "statusBarTranslucent":Z
    goto :goto_1

    #@95
    .line 4140
    .end local v10    # "statusBarTranslucent":Z
    :cond_5
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@97
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    #@99
    add-int/2addr v0, v1

    #@9a
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    #@9c
    .line 4142
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    #@9e
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    #@a0
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    #@a2
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    #@a4
    .line 4143
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    #@a6
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    #@a8
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    #@aa
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    #@ac
    .line 4144
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    #@ae
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    #@b0
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    #@b2
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    #@b4
    .line 4145
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    #@b6
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    #@b8
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    #@ba
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    #@bc
    goto :goto_2

    #@bd
    .line 4155
    :cond_6
    if-nez v9, :cond_2

    #@bf
    if-nez v10, :cond_2

    #@c1
    .line 4156
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@c3
    invoke-virtual {v0}, Lcom/android/server/policy/StatusBarController;->wasRecentlyTranslucent()Z

    #@c6
    move-result v0

    #@c7
    if-nez v0, :cond_2

    #@c9
    .line 4160
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@cb
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    #@cd
    add-int/2addr v0, v1

    #@ce
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemTop:I

    #@d0
    goto :goto_3

    #@d1
    .line 4166
    .end local v9    # "statusBarTransient":Z
    :cond_7
    const/4 v0, 0x0

    #@d2
    return v0
.end method

.method private layoutWallpaper(Landroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "pf"    # Landroid/graphics/Rect;
    .param p3, "df"    # Landroid/graphics/Rect;
    .param p4, "of"    # Landroid/graphics/Rect;
    .param p5, "cf"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 4918
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    #@2
    iput v0, p3, Landroid/graphics/Rect;->left:I

    #@4
    iput v0, p2, Landroid/graphics/Rect;->left:I

    #@6
    .line 4919
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    #@8
    iput v0, p3, Landroid/graphics/Rect;->top:I

    #@a
    iput v0, p2, Landroid/graphics/Rect;->top:I

    #@c
    .line 4920
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    #@e
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    #@10
    add-int/2addr v0, v1

    #@11
    iput v0, p3, Landroid/graphics/Rect;->right:I

    #@13
    iput v0, p2, Landroid/graphics/Rect;->right:I

    #@15
    .line 4921
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    #@17
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    #@19
    add-int/2addr v0, v1

    #@1a
    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    #@1c
    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    #@1e
    .line 4922
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@20
    iput v0, p5, Landroid/graphics/Rect;->left:I

    #@22
    iput v0, p4, Landroid/graphics/Rect;->left:I

    #@24
    .line 4923
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@26
    iput v0, p5, Landroid/graphics/Rect;->top:I

    #@28
    iput v0, p4, Landroid/graphics/Rect;->top:I

    #@2a
    .line 4924
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@2c
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    #@2e
    add-int/2addr v0, v1

    #@2f
    iput v0, p5, Landroid/graphics/Rect;->right:I

    #@31
    iput v0, p4, Landroid/graphics/Rect;->right:I

    #@33
    .line 4925
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@35
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    #@37
    add-int/2addr v0, v1

    #@38
    iput v0, p5, Landroid/graphics/Rect;->bottom:I

    #@3a
    iput v0, p4, Landroid/graphics/Rect;->bottom:I

    #@3c
    .line 4914
    return-void
.end method

.method private navigationBarPosition(III)I
    .locals 1
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .param p3, "displayRotation"    # I

    #@0
    .prologue
    .line 4281
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    #@2
    if-eqz v0, :cond_1

    #@4
    if-le p1, p2, :cond_1

    #@6
    .line 4282
    const/4 v0, 0x3

    #@7
    if-ne p3, v0, :cond_0

    #@9
    .line 4283
    const/4 v0, 0x2

    #@a
    return v0

    #@b
    .line 4285
    :cond_0
    const/4 v0, 0x1

    #@c
    return v0

    #@d
    .line 4288
    :cond_1
    const/4 v0, 0x0

    #@e
    return v0
.end method

.method private notifyScreenshotError()V
    .locals 4

    #@0
    .prologue
    .line 5573
    new-instance v0, Landroid/content/ComponentName;

    #@2
    const-string/jumbo v2, "com.android.systemui"

    #@5
    .line 5574
    const-string/jumbo v3, "com.android.systemui.screenshot.ScreenshotServiceErrorReceiver"

    #@8
    .line 5573
    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 5575
    .local v0, "errorComponent":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    #@d
    const-string/jumbo v2, "android.intent.action.USER_PRESENT"

    #@10
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@13
    .line 5576
    .local v1, "errorIntent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@16
    .line 5577
    const/high16 v2, 0x14000000

    #@18
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@1b
    .line 5579
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@1d
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@1f
    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@22
    .line 5571
    return-void
.end method

.method private offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    #@0
    .prologue
    .line 4929
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
    .line 4930
    .local v0, "top":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    #@13
    move-result-object v1

    #@14
    iget v1, v1, Landroid/graphics/Rect;->top:I

    #@16
    add-int/2addr v0, v1

    #@17
    .line 4931
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    #@19
    if-le v1, v0, :cond_0

    #@1b
    .line 4932
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    #@1d
    .line 4934
    :cond_0
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    #@1f
    if-le v1, v0, :cond_1

    #@21
    .line 4935
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    #@23
    .line 4937
    :cond_1
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    #@26
    move-result-object v1

    #@27
    iget v0, v1, Landroid/graphics/Rect;->top:I

    #@29
    .line 4938
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenVisibleInsetsLw()Landroid/graphics/Rect;

    #@2c
    move-result-object v1

    #@2d
    iget v1, v1, Landroid/graphics/Rect;->top:I

    #@2f
    add-int/2addr v0, v1

    #@30
    .line 4939
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    #@32
    if-le v1, v0, :cond_2

    #@34
    .line 4940
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    #@36
    .line 4928
    :cond_2
    return-void
.end method

.method private offsetVoiceInputWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    #@0
    .prologue
    .line 4948
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
    .line 4949
    .local v0, "top":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    #@13
    move-result-object v1

    #@14
    iget v1, v1, Landroid/graphics/Rect;->top:I

    #@16
    add-int/2addr v0, v1

    #@17
    .line 4950
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    #@19
    if-le v1, v0, :cond_0

    #@1b
    .line 4951
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    #@1d
    .line 4947
    :cond_0
    return-void
.end method

.method private performAuditoryFeedbackForAccessibilityIfNeed()V
    .locals 4

    #@0
    .prologue
    .line 7343
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isGlobalAccessibilityGestureEnabled()Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_0

    #@6
    .line 7344
    return-void

    #@7
    .line 7346
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@9
    .line 7347
    const-string/jumbo v3, "audio"

    #@c
    .line 7346
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/media/AudioManager;

    #@12
    .line 7348
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSilentMode()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 7349
    return-void

    #@19
    .line 7351
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@1b
    .line 7352
    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    #@1d
    .line 7351
    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    #@20
    move-result-object v1

    #@21
    .line 7353
    .local v1, "ringTone":Landroid/media/Ringtone;
    const/4 v2, 0x3

    #@22
    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    #@25
    .line 7354
    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    #@28
    .line 7342
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
    .line 1248
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    #@6
    move-result v0

    #@7
    .line 1249
    .local v0, "behavior":I
    packed-switch v0, :pswitch_data_0

    #@a
    .line 1247
    :goto_0
    :pswitch_0
    return-void

    #@b
    .line 1253
    :pswitch_1
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    #@d
    .line 1254
    invoke-virtual {p0, v3, v2, v2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_0

    #@13
    .line 1255
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->performAuditoryFeedbackForAccessibilityIfNeed()V

    #@16
    .line 1257
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal()V

    #@19
    goto :goto_0

    #@1a
    .line 1261
    :pswitch_2
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    #@1c
    .line 1262
    invoke-virtual {p0, v3, v2, v2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    #@1f
    .line 1263
    const-string/jumbo v3, "globalactions"

    #@22
    invoke-virtual {p0, v3}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    #@25
    .line 1264
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
    .line 1249
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
    .line 1200
    packed-switch p4, :pswitch_data_0

    #@4
    .line 1199
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    #@5
    .line 1204
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_1

    #@b
    .line 1205
    const-string/jumbo v0, "WindowManager"

    #@e
    const-string/jumbo v1, "Ignoring toggling theater mode - device not setup."

    #@11
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    goto :goto_0

    #@15
    .line 1209
    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTheaterModeEnabled()Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_2

    #@1b
    .line 1210
    const-string/jumbo v0, "WindowManager"

    #@1e
    const-string/jumbo v1, "Toggling theater mode off."

    #@21
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 1211
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@26
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@29
    move-result-object v0

    #@2a
    .line 1212
    const-string/jumbo v1, "theater_mode_on"

    #@2d
    .line 1211
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@30
    .line 1213
    if-nez p3, :cond_0

    #@32
    .line 1214
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    #@35
    goto :goto_0

    #@36
    .line 1217
    :cond_2
    const-string/jumbo v0, "WindowManager"

    #@39
    const-string/jumbo v1, "Toggling theater mode on."

    #@3c
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    .line 1218
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@41
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@44
    move-result-object v0

    #@45
    .line 1219
    const-string/jumbo v1, "theater_mode_on"

    #@48
    const/4 v2, 0x1

    #@49
    .line 1218
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@4c
    .line 1221
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoToSleepOnButtonPressTheaterMode:Z

    #@4e
    if-eqz v0, :cond_0

    #@50
    if-eqz p3, :cond_0

    #@52
    .line 1222
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@54
    .line 1223
    const/4 v1, 0x4

    #@55
    .line 1222
    invoke-virtual {v0, p1, p2, v1, v3}, Landroid/os/PowerManager;->goToSleep(JII)V

    #@58
    goto :goto_0

    #@59
    .line 1228
    :pswitch_2
    const-string/jumbo v0, "WindowManager"

    #@5c
    const-string/jumbo v1, "Starting brightness boost."

    #@5f
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@62
    .line 1229
    if-nez p3, :cond_3

    #@64
    .line 1230
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    #@67
    .line 1232
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@69
    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager;->boostScreenBrightness(J)V

    #@6c
    goto :goto_0

    #@6d
    .line 1200
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
    .line 1163
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    #@9
    if-eqz v0, :cond_2

    #@b
    .line 1169
    :cond_0
    const/4 v0, 0x2

    #@c
    if-ne p4, v0, :cond_3

    #@e
    .line 1170
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    #@10
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZI)V

    #@13
    .line 1162
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    #@14
    .line 1164
    :cond_2
    const-string/jumbo v0, "WindowManager"

    #@17
    const-string/jumbo v1, "Suppressed redundant power key press while already in the process of turning the screen on."

    #@1a
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 1166
    return-void

    #@1e
    .line 1171
    :cond_3
    const/4 v0, 0x3

    #@1f
    if-ne p4, v0, :cond_4

    #@21
    .line 1172
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    #@23
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZI)V

    #@26
    goto :goto_0

    #@27
    .line 1173
    :cond_4
    if-eqz p3, :cond_1

    #@29
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    #@2b
    if-nez v0, :cond_1

    #@2d
    .line 1174
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    #@2f
    packed-switch v0, :pswitch_data_0

    #@32
    goto :goto_0

    #@33
    .line 1178
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@35
    invoke-virtual {v0, p1, p2, v2, v3}, Landroid/os/PowerManager;->goToSleep(JII)V

    #@38
    goto :goto_0

    #@39
    .line 1182
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@3b
    invoke-virtual {v0, p1, p2, v2, v1}, Landroid/os/PowerManager;->goToSleep(JII)V

    #@3e
    goto :goto_0

    #@3f
    .line 1187
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@41
    invoke-virtual {v0, p1, p2, v2, v1}, Landroid/os/PowerManager;->goToSleep(JII)V

    #@44
    .line 1190
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey()V

    #@47
    goto :goto_0

    #@48
    .line 1193
    :pswitch_4
    invoke-virtual {p0, v1, v3}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(ZZ)V

    #@4b
    goto :goto_0

    #@4c
    .line 1174
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
    .locals 2

    #@0
    .prologue
    .line 3665
    const/4 v1, 0x1

    #@1
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    #@3
    .line 3666
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@6
    move-result-object v0

    #@7
    .line 3667
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    #@9
    .line 3668
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->preloadRecentApps()V

    #@c
    .line 3664
    :cond_0
    return-void
.end method

.method private readCameraLensCoverState()V
    .locals 1

    #@0
    .prologue
    .line 2280
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@2
    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getCameraLensCoverState()I

    #@5
    move-result v0

    #@6
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    #@8
    .line 2279
    return-void
.end method

.method private readConfigurationDependentBehaviors()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1800
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    .line 1803
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x10e0060

    #@b
    .line 1802
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@e
    move-result v1

    #@f
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    #@11
    .line 1804
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    #@13
    if-ltz v1, :cond_0

    #@15
    .line 1805
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    #@17
    const/4 v2, 0x2

    #@18
    if-le v1, v2, :cond_1

    #@1a
    .line 1806
    :cond_0
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    #@1c
    .line 1810
    :cond_1
    const v1, 0x10e0061

    #@1f
    .line 1809
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@22
    move-result v1

    #@23
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    #@25
    .line 1811
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    #@27
    if-ltz v1, :cond_2

    #@29
    .line 1812
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    #@2b
    if-le v1, v4, :cond_3

    #@2d
    .line 1813
    :cond_2
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    #@2f
    .line 1816
    :cond_3
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressWindowBehavior:I

    #@31
    .line 1817
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@33
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@36
    move-result-object v1

    #@37
    const-string/jumbo v2, "android.software.picture_in_picture"

    #@3a
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@3d
    move-result v1

    #@3e
    if-eqz v1, :cond_4

    #@40
    .line 1818
    iput v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressWindowBehavior:I

    #@42
    .line 1822
    :cond_4
    const v1, 0x10e00a3

    #@45
    .line 1821
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@48
    move-result v1

    #@49
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarOpacityMode:I

    #@4b
    .line 1799
    return-void
.end method

.method private readRotation(I)I
    .locals 3
    .param p1, "resID"    # I

    #@0
    .prologue
    .line 2055
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
    .line 2056
    .local v1, "rotation":I
    sparse-switch v1, :sswitch_data_0

    #@d
    .line 2069
    .end local v1    # "rotation":I
    :goto_0
    const/4 v2, -0x1

    #@e
    return v2

    #@f
    .line 2058
    .restart local v1    # "rotation":I
    :sswitch_0
    const/4 v2, 0x0

    #@10
    return v2

    #@11
    .line 2060
    :sswitch_1
    const/4 v2, 0x1

    #@12
    return v2

    #@13
    .line 2062
    :sswitch_2
    const/4 v2, 0x2

    #@14
    return v2

    #@15
    .line 2064
    :sswitch_3
    const/4 v2, 0x3

    #@16
    return v2

    #@17
    .line 2066
    .end local v1    # "rotation":I
    :catch_0
    move-exception v0

    #@18
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    goto :goto_0

    #@19
    .line 2056
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
    .line 6256
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@2
    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    monitor-enter v3

    #@7
    .line 6257
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
    .line 6259
    return-void

    #@f
    .line 6261
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@11
    invoke-virtual {v2}, Lcom/android/server/policy/StatusBarController;->checkShowTransientBarLw()Z

    #@14
    move-result v1

    #@15
    .line 6262
    .local v1, "sb":Z
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@17
    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->checkShowTransientBarLw()Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_3

    #@1d
    .line 6263
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    #@1f
    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManager;->isNavBarEmpty(I)Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_2

    #@25
    const/4 v0, 0x0

    #@26
    .line 6264
    .local v0, "nb":Z
    :goto_0
    if-nez v1, :cond_1

    #@28
    if-eqz v0, :cond_7

    #@2a
    .line 6266
    :cond_1
    if-nez v0, :cond_4

    #@2c
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    if-ne p1, v2, :cond_4

    #@30
    monitor-exit v3

    #@31
    .line 6268
    return-void

    #@32
    .line 6263
    .end local v0    # "nb":Z
    :cond_2
    const/4 v0, 0x1

    #@33
    .restart local v0    # "nb":Z
    goto :goto_0

    #@34
    .line 6262
    .end local v0    # "nb":Z
    :cond_3
    const/4 v0, 0x0

    #@35
    .restart local v0    # "nb":Z
    goto :goto_0

    #@36
    .line 6270
    :cond_4
    if-eqz v1, :cond_5

    #@38
    :try_start_2
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@3a
    invoke-virtual {v2}, Lcom/android/server/policy/StatusBarController;->showTransient()V

    #@3d
    .line 6271
    :cond_5
    if-eqz v0, :cond_6

    #@3f
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@41
    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->showTransient()V

    #@44
    .line 6272
    :cond_6
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    #@46
    invoke-virtual {v2}, Lcom/android/server/policy/ImmersiveModeConfirmation;->confirmCurrentPrompt()V

    #@49
    .line 6273
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4c
    :cond_7
    monitor-exit v3

    #@4d
    .line 6255
    return-void

    #@4e
    .line 6256
    .end local v0    # "nb":Z
    .end local v1    # "sb":Z
    :catchall_0
    move-exception v2

    #@4f
    monitor-exit v3

    #@50
    throw v2
.end method

.method private selectDockedDividerAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I
    .locals 12
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "transit"    # I

    #@0
    .prologue
    const/4 v11, 0x2

    #@1
    const/4 v7, 0x1

    #@2
    const/4 v8, 0x0

    #@3
    .line 2876
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@5
    invoke-interface {v9}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getDockedDividerInsetsLw()I

    #@8
    move-result v2

    #@9
    .line 2879
    .local v2, "insets":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    #@c
    move-result-object v1

    #@d
    .line 2880
    .local v1, "frame":Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@f
    if-eqz v9, :cond_6

    #@11
    .line 2881
    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    #@13
    if-nez v9, :cond_2

    #@15
    .line 2882
    iget v9, v1, Landroid/graphics/Rect;->top:I

    #@17
    add-int/2addr v9, v2

    #@18
    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@1a
    invoke-interface {v10}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    #@1d
    move-result-object v10

    #@1e
    iget v10, v10, Landroid/graphics/Rect;->top:I

    #@20
    if-lt v9, v10, :cond_2

    #@22
    .line 2881
    :cond_0
    const/4 v0, 0x1

    #@23
    .line 2887
    .local v0, "behindNavBar":Z
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    #@26
    move-result v9

    #@27
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    #@2a
    move-result v10

    #@2b
    if-le v9, v10, :cond_7

    #@2d
    move v3, v7

    #@2e
    .line 2888
    .local v3, "landscape":Z
    :goto_1
    if-eqz v3, :cond_a

    #@30
    iget v9, v1, Landroid/graphics/Rect;->right:I

    #@32
    sub-int/2addr v9, v2

    #@33
    if-lez v9, :cond_8

    #@35
    .line 2889
    iget v9, v1, Landroid/graphics/Rect;->left:I

    #@37
    add-int/2addr v9, v2

    #@38
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    #@3b
    move-result-object v10

    #@3c
    iget v10, v10, Landroid/graphics/Rect;->right:I

    #@3e
    if-lt v9, v10, :cond_9

    #@40
    const/4 v5, 0x1

    #@41
    .line 2890
    .local v5, "offscreenLandscape":Z
    :goto_2
    if-nez v3, :cond_d

    #@43
    iget v9, v1, Landroid/graphics/Rect;->top:I

    #@45
    sub-int/2addr v9, v2

    #@46
    if-lez v9, :cond_b

    #@48
    .line 2891
    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    #@4a
    add-int/2addr v9, v2

    #@4b
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    #@4e
    move-result-object v10

    #@4f
    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    #@51
    if-lt v9, v10, :cond_c

    #@53
    const/4 v6, 0x1

    #@54
    .line 2892
    .local v6, "offscreenPortrait":Z
    :goto_3
    if-nez v5, :cond_e

    #@56
    move v4, v6

    #@57
    .line 2893
    :goto_4
    if-nez v0, :cond_1

    #@59
    if-eqz v4, :cond_f

    #@5b
    .line 2894
    :cond_1
    return v8

    #@5c
    .line 2883
    .end local v0    # "behindNavBar":Z
    .end local v3    # "landscape":Z
    .end local v5    # "offscreenLandscape":Z
    .end local v6    # "offscreenPortrait":Z
    :cond_2
    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    #@5e
    if-ne v9, v7, :cond_3

    #@60
    .line 2884
    iget v9, v1, Landroid/graphics/Rect;->left:I

    #@62
    add-int/2addr v9, v2

    #@63
    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@65
    invoke-interface {v10}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    #@68
    move-result-object v10

    #@69
    iget v10, v10, Landroid/graphics/Rect;->left:I

    #@6b
    if-ge v9, v10, :cond_0

    #@6d
    .line 2885
    :cond_3
    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    #@6f
    if-ne v9, v11, :cond_5

    #@71
    .line 2886
    iget v9, v1, Landroid/graphics/Rect;->right:I

    #@73
    sub-int/2addr v9, v2

    #@74
    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@76
    invoke-interface {v10}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    #@79
    move-result-object v10

    #@7a
    iget v10, v10, Landroid/graphics/Rect;->right:I

    #@7c
    if-gt v9, v10, :cond_4

    #@7e
    const/4 v0, 0x1

    #@7f
    .restart local v0    # "behindNavBar":Z
    goto :goto_0

    #@80
    .end local v0    # "behindNavBar":Z
    :cond_4
    const/4 v0, 0x0

    #@81
    .restart local v0    # "behindNavBar":Z
    goto :goto_0

    #@82
    .line 2885
    .end local v0    # "behindNavBar":Z
    :cond_5
    const/4 v0, 0x0

    #@83
    .restart local v0    # "behindNavBar":Z
    goto :goto_0

    #@84
    .line 2880
    .end local v0    # "behindNavBar":Z
    :cond_6
    const/4 v0, 0x0

    #@85
    .restart local v0    # "behindNavBar":Z
    goto :goto_0

    #@86
    :cond_7
    move v3, v8

    #@87
    .line 2887
    goto :goto_1

    #@88
    .line 2888
    .restart local v3    # "landscape":Z
    :cond_8
    const/4 v5, 0x1

    #@89
    .restart local v5    # "offscreenLandscape":Z
    goto :goto_2

    #@8a
    .line 2889
    .end local v5    # "offscreenLandscape":Z
    :cond_9
    const/4 v5, 0x0

    #@8b
    .restart local v5    # "offscreenLandscape":Z
    goto :goto_2

    #@8c
    .line 2888
    .end local v5    # "offscreenLandscape":Z
    :cond_a
    const/4 v5, 0x0

    #@8d
    .restart local v5    # "offscreenLandscape":Z
    goto :goto_2

    #@8e
    .line 2890
    :cond_b
    const/4 v6, 0x1

    #@8f
    .restart local v6    # "offscreenPortrait":Z
    goto :goto_3

    #@90
    .line 2891
    .end local v6    # "offscreenPortrait":Z
    :cond_c
    const/4 v6, 0x0

    #@91
    .restart local v6    # "offscreenPortrait":Z
    goto :goto_3

    #@92
    .line 2890
    .end local v6    # "offscreenPortrait":Z
    :cond_d
    const/4 v6, 0x0

    #@93
    .restart local v6    # "offscreenPortrait":Z
    goto :goto_3

    #@94
    .line 2892
    :cond_e
    const/4 v4, 0x1

    #@95
    .local v4, "offscreen":Z
    goto :goto_4

    #@96
    .line 2896
    .end local v4    # "offscreen":Z
    :cond_f
    if-eq p2, v7, :cond_10

    #@98
    const/4 v7, 0x3

    #@99
    if-ne p2, v7, :cond_11

    #@9b
    .line 2897
    :cond_10
    const/high16 v7, 0x10a0000

    #@9d
    return v7

    #@9e
    .line 2898
    :cond_11
    if-ne p2, v11, :cond_12

    #@a0
    .line 2899
    const v7, 0x10a0001

    #@a3
    return v7

    #@a4
    .line 2901
    :cond_12
    return v8
.end method

.method private setKeyguardOccludedLw(Z)Z
    .locals 7
    .param p1, "isOccluded"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    .line 5349
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    #@4
    .line 5350
    .local v2, "wasOccluded":Z
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@6
    invoke-virtual {v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    #@9
    move-result v1

    #@a
    .line 5351
    .local v1, "showing":Z
    if-eqz v2, :cond_0

    #@c
    if-eqz p1, :cond_1

    #@e
    .line 5362
    :cond_0
    if-nez v2, :cond_3

    #@10
    if-eqz p1, :cond_3

    #@12
    if-eqz v1, :cond_3

    #@14
    .line 5363
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    #@16
    .line 5364
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@18
    invoke-virtual {v3, v6, v4}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(ZZ)V

    #@1b
    .line 5365
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@1d
    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@20
    move-result-object v3

    #@21
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@23
    and-int/lit16 v4, v4, -0x401

    #@25
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@27
    .line 5366
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@29
    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@2c
    move-result-object v3

    #@2d
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@2f
    const v5, -0x100001

    #@32
    and-int/2addr v4, v5

    #@33
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@35
    .line 5367
    return v6

    #@36
    .line 5351
    :cond_1
    if-eqz v1, :cond_0

    #@38
    .line 5352
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    #@3a
    .line 5353
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@3c
    invoke-virtual {v3, v4, v6}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(ZZ)V

    #@3f
    .line 5354
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@41
    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@44
    move-result-object v3

    #@45
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@47
    or-int/lit16 v4, v4, 0x400

    #@49
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@4b
    .line 5355
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@4d
    invoke-virtual {v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->hasLockscreenWallpaper()Z

    #@50
    move-result v3

    #@51
    if-nez v3, :cond_2

    #@53
    .line 5356
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@55
    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@58
    move-result-object v3

    #@59
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@5b
    const/high16 v5, 0x100000

    #@5d
    or-int/2addr v4, v5

    #@5e
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@60
    .line 5358
    :cond_2
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@62
    .line 5359
    const v4, 0x10a00ae

    #@65
    .line 5358
    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@68
    move-result-object v0

    #@69
    .line 5360
    .local v0, "anim":Landroid/view/animation/Animation;
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@6b
    invoke-interface {v3, v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->overridePlayingAppAnimationsLw(Landroid/view/animation/Animation;)V

    #@6e
    .line 5361
    return v6

    #@6f
    .line 5369
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_3
    return v4
.end method

.method private setNavBarOpaqueFlag(I)I
    .locals 1
    .param p1, "visibility"    # I

    #@0
    .prologue
    .line 7694
    const v0, 0x7fff7fff

    #@3
    and-int/2addr p1, v0

    #@4
    return p1
.end method

.method private setNavBarTranslucentFlag(I)I
    .locals 1
    .param p1, "visibility"    # I

    #@0
    .prologue
    .line 7698
    const v0, -0x8001

    #@3
    and-int/2addr p1, v0

    #@4
    .line 7699
    const/high16 v0, -0x80000000

    #@6
    or-int/2addr p1, v0

    #@7
    return p1
.end method

.method private shouldDispatchInputWhenNonInteractive(Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    .line 6042
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    #@4
    if-eqz v5, :cond_0

    #@6
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    #@8
    invoke-virtual {v5}, Landroid/view/Display;->getState()I

    #@b
    move-result v5

    #@c
    if-ne v5, v3, :cond_4

    #@e
    :cond_0
    move v0, v3

    #@f
    .line 6044
    .local v0, "displayOff":Z
    :goto_0
    if-eqz v0, :cond_1

    #@11
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    #@13
    if-eqz v5, :cond_5

    #@15
    .line 6049
    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    #@18
    move-result v5

    #@19
    if-eqz v5, :cond_2

    #@1b
    if-eqz v0, :cond_6

    #@1d
    .line 6054
    :cond_2
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    #@1f
    if-eqz v5, :cond_7

    #@21
    .line 6055
    if-eqz p1, :cond_7

    #@23
    .line 6056
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@26
    move-result v5

    #@27
    const/4 v6, 0x4

    #@28
    if-eq v5, v6, :cond_3

    #@2a
    .line 6057
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@2d
    move-result v5

    #@2e
    const/16 v6, 0x108

    #@30
    if-ne v5, v6, :cond_7

    #@32
    .line 6058
    :cond_3
    return v4

    #@33
    .end local v0    # "displayOff":Z
    :cond_4
    move v0, v4

    #@34
    .line 6042
    goto :goto_0

    #@35
    .line 6045
    .restart local v0    # "displayOff":Z
    :cond_5
    return v4

    #@36
    .line 6050
    :cond_6
    return v3

    #@37
    .line 6063
    :cond_7
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    #@3a
    move-result-object v1

    #@3b
    .line 6066
    .local v1, "dreamManager":Landroid/service/dreams/IDreamManager;
    if-eqz v1, :cond_8

    #@3d
    :try_start_0
    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->isDreaming()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@40
    move-result v5

    #@41
    if-eqz v5, :cond_8

    #@43
    .line 6067
    return v3

    #@44
    .line 6069
    :catch_0
    move-exception v2

    #@45
    .line 6070
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "WindowManager"

    #@48
    const-string/jumbo v5, "RemoteException when checking if dreaming"

    #@4b
    invoke-static {v3, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4e
    .line 6075
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_8
    return v4
.end method

.method private shouldEnableWakeGestureLp()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2012
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
    .line 2013
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    #@c
    if-eqz v1, :cond_2

    #@e
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 2014
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
    .line 3969
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

.method private showRecentApps(ZZ)V
    .locals 2
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "fromHome"    # Z

    #@0
    .prologue
    .line 3697
    const/4 v1, 0x0

    #@1
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    #@3
    .line 3698
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@6
    move-result-object v0

    #@7
    .line 3699
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    #@9
    .line 3700
    invoke-interface {v0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showRecentApps(ZZ)V

    #@c
    .line 3696
    :cond_0
    return-void
.end method

.method private showTvPictureInPictureMenu(Landroid/view/KeyEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/16 v2, 0x11

    #@2
    .line 1489
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@4
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    #@7
    .line 1490
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@9
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@c
    move-result-object v0

    #@d
    .line 1491
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    #@e
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    #@11
    .line 1492
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@14
    .line 1487
    return-void
.end method

.method private showTvPictureInPictureMenuInternal()V
    .locals 1

    #@0
    .prologue
    .line 1496
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@3
    move-result-object v0

    #@4
    .line 1497
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    #@6
    .line 1498
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showTvPictureInPictureMenu()V

    #@9
    .line 1495
    :cond_0
    return-void
.end method

.method private sleepPress(J)V
    .locals 2
    .param p1, "eventTime"    # J

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1289
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 1290
    const/4 v0, 0x0

    #@6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(ZZ)V

    #@9
    .line 1288
    :cond_0
    return-void
.end method

.method private sleepRelease(J)V
    .locals 3
    .param p1, "eventTime"    # J

    #@0
    .prologue
    .line 1295
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 1294
    :goto_0
    return-void

    #@6
    .line 1298
    :pswitch_0
    const-string/jumbo v0, "WindowManager"

    #@9
    const-string/jumbo v1, "sleepRelease() calling goToSleep(GO_TO_SLEEP_REASON_SLEEP_BUTTON)"

    #@c
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 1299
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@11
    .line 1300
    const/4 v1, 0x6

    #@12
    const/4 v2, 0x0

    #@13
    .line 1299
    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/os/PowerManager;->goToSleep(JII)V

    #@16
    goto :goto_0

    #@17
    .line 1295
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
    .line 3650
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 3651
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@b
    .line 3649
    :goto_0
    return-void

    #@c
    .line 3653
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

.method private takeScreenshot(I)V
    .locals 8
    .param p1, "screenshotType"    # I

    #@0
    .prologue
    .line 5504
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 5505
    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v3, :cond_0

    #@7
    monitor-exit v4

    #@8
    .line 5506
    return-void

    #@9
    .line 5508
    :cond_0
    :try_start_1
    new-instance v1, Landroid/content/ComponentName;

    #@b
    const-string/jumbo v3, "com.android.systemui"

    #@e
    .line 5509
    const-string/jumbo v5, "com.android.systemui.screenshot.TakeScreenshotService"

    #@11
    .line 5508
    invoke-direct {v1, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 5510
    .local v1, "serviceComponent":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    #@16
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    #@19
    .line 5511
    .local v2, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@1c
    .line 5512
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$17;

    #@1e
    invoke-direct {v0, p0, p1}, Lcom/android/server/policy/PhoneWindowManager$17;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    #@21
    .line 5559
    .local v0, "conn":Landroid/content/ServiceConnection;
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@23
    .line 5561
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@25
    .line 5560
    const v6, 0x2000001

    #@28
    .line 5559
    invoke-virtual {v3, v2, v0, v6, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_1

    #@2e
    .line 5562
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    #@30
    .line 5563
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@32
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotTimeout:Ljava/lang/Runnable;

    #@34
    const-wide/16 v6, 0x2710

    #@36
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@39
    :cond_1
    monitor-exit v4

    #@3a
    .line 5503
    return-void

    #@3b
    .line 5504
    .end local v0    # "conn":Landroid/content/ServiceConnection;
    .end local v1    # "serviceComponent":Landroid/content/ComponentName;
    .end local v2    # "serviceIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    #@3c
    monitor-exit v4

    #@3d
    throw v3
.end method

.method private toggleKeyboardShortcutsMenu(I)V
    .locals 1
    .param p1, "deviceId"    # I

    #@0
    .prologue
    .line 3705
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@3
    move-result-object v0

    #@4
    .line 3706
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    #@6
    .line 3707
    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleKeyboardShortcutsMenu(I)V

    #@9
    .line 3704
    :cond_0
    return-void
.end method

.method private toggleRecentApps()V
    .locals 2

    #@0
    .prologue
    .line 3683
    const/4 v1, 0x0

    #@1
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    #@3
    .line 3684
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@6
    move-result-object v0

    #@7
    .line 3685
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    #@9
    .line 3686
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleRecentApps()V

    #@c
    .line 3682
    :cond_0
    return-void
.end method

.method private updateDreamingSleepToken(Z)V
    .locals 2
    .param p1, "acquire"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 7113
    if-eqz p1, :cond_1

    #@3
    .line 7114
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 7115
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
    .line 7112
    :cond_0
    :goto_0
    return-void

    #@13
    .line 7118
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 7119
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    #@19
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal$SleepToken;->release()V

    #@1c
    .line 7120
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    #@1e
    goto :goto_0
.end method

.method private updateLightStatusBarLw(ILandroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I
    .locals 3
    .param p1, "vis"    # I
    .param p2, "opaque"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p3, "opaqueOrDimming"    # Landroid/view/WindowManagerPolicy$WindowState;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 7515
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
    :cond_0
    move-object v0, p3

    #@c
    .line 7519
    .local v0, "statusColorWin":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_0
    if-eqz v0, :cond_1

    #@e
    .line 7520
    if-ne v0, p2, :cond_3

    #@10
    .line 7523
    and-int/lit16 p1, p1, -0x2001

    #@12
    .line 7524
    invoke-static {v0, v2}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    #@15
    move-result v1

    #@16
    and-int/lit16 v1, v1, 0x2000

    #@18
    or-int/2addr p1, v1

    #@19
    .line 7531
    :cond_1
    :goto_1
    return p1

    #@1a
    .line 7516
    .end local v0    # "statusColorWin":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@1c
    goto :goto_0

    #@1d
    .line 7526
    .restart local v0    # "statusColorWin":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_3
    if-eqz v0, :cond_1

    #@1f
    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isDimming()Z

    #@22
    move-result v1

    #@23
    if-eqz v1, :cond_1

    #@25
    .line 7528
    and-int/lit16 p1, p1, -0x2001

    #@27
    goto :goto_1
.end method

.method private updateLockScreenTimeout()V
    .locals 6

    #@0
    .prologue
    .line 7095
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    #@2
    monitor-enter v2

    #@3
    .line 7096
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    #@5
    if-eqz v1, :cond_1

    #@7
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 7097
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@d
    if-eqz v1, :cond_1

    #@f
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@11
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    #@13
    invoke-virtual {v1, v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure(I)Z

    #@16
    move-result v0

    #@17
    .line 7098
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    #@19
    if-eq v1, v0, :cond_0

    #@1b
    .line 7099
    if-eqz v0, :cond_2

    #@1d
    .line 7101
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@1f
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    #@21
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@24
    .line 7102
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@26
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    #@28
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    #@2a
    int-to-long v4, v4

    #@2b
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@2e
    .line 7107
    :goto_1
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    :cond_0
    monitor-exit v2

    #@31
    .line 7094
    return-void

    #@32
    .line 7096
    :cond_1
    const/4 v0, 0x0

    #@33
    .local v0, "enable":Z
    goto :goto_0

    #@34
    .line 7105
    .end local v0    # "enable":Z
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@36
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    #@38
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    goto :goto_1

    #@3c
    .line 7095
    :catchall_0
    move-exception v1

    #@3d
    monitor-exit v2

    #@3e
    throw v1
.end method

.method private updateScreenOffSleepToken(Z)V
    .locals 2
    .param p1, "acquire"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 7126
    if-eqz p1, :cond_1

    #@3
    .line 7127
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 7128
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
    .line 7125
    :cond_0
    :goto_0
    return-void

    #@13
    .line 7131
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 7132
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    #@19
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal$SleepToken;->release()V

    #@1c
    .line 7133
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    #@1e
    goto :goto_0
.end method

.method private updateSystemBarsLw(Landroid/view/WindowManagerPolicy$WindowState;II)I
    .locals 38
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "oldVis"    # I
    .param p3, "vis"    # I

    #@0
    .prologue
    .line 7544
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    #@4
    move-object/from16 v33, v0

    #@6
    const/16 v34, 0x3

    #@8
    invoke-virtual/range {v33 .. v34}, Landroid/view/WindowManagerInternal;->isStackVisible(I)Z

    #@b
    move-result v9

    #@c
    .line 7546
    .local v9, "dockedStackVisible":Z
    move-object/from16 v0, p0

    #@e
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    #@10
    move-object/from16 v33, v0

    #@12
    const/16 v34, 0x2

    #@14
    invoke-virtual/range {v33 .. v34}, Landroid/view/WindowManagerInternal;->isStackVisible(I)Z

    #@17
    move-result v13

    #@18
    .line 7547
    .local v13, "freeformStackVisible":Z
    move-object/from16 v0, p0

    #@1a
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    #@1c
    move-object/from16 v33, v0

    #@1e
    invoke-virtual/range {v33 .. v33}, Landroid/view/WindowManagerInternal;->isDockedDividerResizing()Z

    #@21
    move-result v28

    #@22
    .line 7552
    .local v28, "resizing":Z
    if-nez v9, :cond_b

    #@24
    if-nez v13, :cond_b

    #@26
    move/from16 v33, v28

    #@28
    :goto_0
    move/from16 v0, v33

    #@2a
    move-object/from16 v1, p0

    #@2c
    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    #@2e
    .line 7553
    move-object/from16 v0, p0

    #@30
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    #@32
    move/from16 v33, v0

    #@34
    if-eqz v33, :cond_0

    #@36
    move-object/from16 v0, p0

    #@38
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    #@3a
    move/from16 v33, v0

    #@3c
    if-eqz v33, :cond_c

    #@3e
    :cond_0
    const/4 v12, 0x0

    #@3f
    .line 7556
    .local v12, "forceOpaqueStatusBar":Z
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    #@42
    move-result v33

    #@43
    if-eqz v33, :cond_1

    #@45
    move-object/from16 v0, p0

    #@47
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    #@49
    move/from16 v33, v0

    #@4b
    if-eqz v33, :cond_d

    #@4d
    .line 7558
    :cond_1
    move-object/from16 v0, p0

    #@4f
    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@51
    .line 7559
    .local v15, "fullscreenTransWin":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_2
    move-object/from16 v0, p0

    #@53
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@55
    move-object/from16 v33, v0

    #@57
    move-object/from16 v0, v33

    #@59
    move/from16 v1, p3

    #@5b
    move/from16 v2, p2

    #@5d
    invoke-virtual {v0, v15, v1, v2}, Lcom/android/server/policy/StatusBarController;->applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    #@60
    move-result p3

    #@61
    .line 7560
    move-object/from16 v0, p0

    #@63
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@65
    move-object/from16 v33, v0

    #@67
    move-object/from16 v0, v33

    #@69
    move/from16 v1, p3

    #@6b
    move/from16 v2, p2

    #@6d
    invoke-virtual {v0, v15, v1, v2}, Lcom/android/server/policy/BarController;->applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    #@70
    move-result p3

    #@71
    .line 7561
    move-object/from16 v0, p0

    #@73
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@75
    move-object/from16 v33, v0

    #@77
    .line 7562
    move-object/from16 v0, p0

    #@79
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@7b
    move-object/from16 v34, v0

    #@7d
    const/16 v35, 0x0

    #@7f
    const/16 v36, 0x0

    #@81
    .line 7561
    invoke-virtual/range {v33 .. v36}, Lcom/android/server/policy/StatusBarController;->applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    #@84
    move-result v10

    #@85
    .line 7565
    .local v10, "dockedVis":I
    move-object/from16 v0, p0

    #@87
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@89
    move-object/from16 v33, v0

    #@8b
    move-object/from16 v0, p0

    #@8d
    move-object/from16 v1, v33

    #@8f
    invoke-direct {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->drawsSystemBarBackground(Landroid/view/WindowManagerPolicy$WindowState;)Z

    #@92
    move-result v33

    #@93
    if-eqz v33, :cond_e

    #@95
    .line 7566
    const/high16 v33, 0x40000000    # 2.0f

    #@97
    and-int v33, v33, p3

    #@99
    if-nez v33, :cond_e

    #@9b
    .line 7565
    const/4 v14, 0x1

    #@9c
    .line 7569
    :goto_3
    move-object/from16 v0, p0

    #@9e
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@a0
    move-object/from16 v33, v0

    #@a2
    move-object/from16 v0, p0

    #@a4
    move-object/from16 v1, v33

    #@a6
    invoke-direct {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->drawsSystemBarBackground(Landroid/view/WindowManagerPolicy$WindowState;)Z

    #@a9
    move-result v33

    #@aa
    if-eqz v33, :cond_f

    #@ac
    .line 7570
    const/high16 v33, 0x40000000    # 2.0f

    #@ae
    and-int v33, v33, v10

    #@b0
    if-nez v33, :cond_f

    #@b2
    .line 7569
    const/4 v8, 0x1

    #@b3
    .line 7574
    :goto_4
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@b6
    move-result-object v33

    #@b7
    move-object/from16 v0, v33

    #@b9
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@bb
    move/from16 v32, v0

    #@bd
    .line 7575
    .local v32, "type":I
    const/16 v33, 0x7d0

    #@bf
    move/from16 v0, v32

    #@c1
    move/from16 v1, v33

    #@c3
    if-ne v0, v1, :cond_10

    #@c5
    const/16 v29, 0x1

    #@c7
    .line 7576
    .local v29, "statusBarHasFocus":Z
    :goto_5
    if-eqz v29, :cond_2

    #@c9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    #@cc
    move-result v33

    #@cd
    if-eqz v33, :cond_11

    #@cf
    .line 7588
    :cond_2
    :goto_6
    if-eqz v14, :cond_13

    #@d1
    if-eqz v8, :cond_13

    #@d3
    .line 7589
    or-int/lit8 p3, p3, 0x8

    #@d5
    .line 7590
    const v33, -0x40000001    # -1.9999999f

    #@d8
    and-int p3, p3, v33

    #@da
    .line 7596
    :cond_3
    :goto_7
    move-object/from16 v0, p0

    #@dc
    move/from16 v1, p3

    #@de
    move/from16 v2, v28

    #@e0
    invoke-direct {v0, v1, v9, v13, v2}, Lcom/android/server/policy/PhoneWindowManager;->configureNavBarOpacity(IZZZ)I

    #@e3
    move-result p3

    #@e4
    .line 7600
    move/from16 v0, p3

    #@e6
    and-int/lit16 v0, v0, 0x1000

    #@e8
    move/from16 v33, v0

    #@ea
    if-eqz v33, :cond_15

    #@ec
    const/16 v20, 0x1

    #@ee
    .line 7602
    .local v20, "immersiveSticky":Z
    :goto_8
    move-object/from16 v0, p0

    #@f0
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@f2
    move-object/from16 v33, v0

    #@f4
    if-eqz v33, :cond_17

    #@f6
    .line 7603
    move-object/from16 v0, p0

    #@f8
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@fa
    move-object/from16 v33, v0

    #@fc
    const/16 v34, 0x0

    #@fe
    invoke-static/range {v33 .. v34}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    #@101
    move-result v33

    #@102
    move/from16 v0, v33

    #@104
    and-int/lit16 v0, v0, 0x400

    #@106
    move/from16 v33, v0

    #@108
    if-eqz v33, :cond_16

    #@10a
    const/16 v18, 0x1

    #@10c
    .line 7606
    .local v18, "hideStatusBarWM":Z
    :goto_9
    and-int/lit8 v33, p3, 0x4

    #@10e
    if-eqz v33, :cond_18

    #@110
    const/16 v17, 0x1

    #@112
    .line 7608
    .local v17, "hideStatusBarSysui":Z
    :goto_a
    and-int/lit8 v33, p3, 0x2

    #@114
    if-eqz v33, :cond_19

    #@116
    const/16 v16, 0x1

    #@118
    .line 7610
    .local v16, "hideNavBarSysui":Z
    :goto_b
    move-object/from16 v0, p0

    #@11a
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@11c
    move-object/from16 v33, v0

    #@11e
    if-eqz v33, :cond_1e

    #@120
    .line 7611
    if-nez v29, :cond_1a

    #@122
    move-object/from16 v0, p0

    #@124
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    #@126
    move/from16 v33, v0

    #@128
    if-nez v33, :cond_1d

    #@12a
    .line 7612
    if-nez v18, :cond_1b

    #@12c
    if-eqz v17, :cond_1c

    #@12e
    move/from16 v31, v20

    #@130
    .line 7614
    :goto_c
    move-object/from16 v0, p0

    #@132
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@134
    move-object/from16 v33, v0

    #@136
    if-eqz v33, :cond_4

    #@138
    .line 7615
    move-object/from16 v0, p0

    #@13a
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    #@13c
    move/from16 v33, v0

    #@13e
    if-eqz v33, :cond_1f

    #@140
    .line 7614
    :cond_4
    const/16 v30, 0x0

    #@142
    .line 7617
    :goto_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@145
    move-result-wide v24

    #@146
    .line 7618
    .local v24, "now":J
    move-object/from16 v0, p0

    #@148
    iget-wide v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingPanicGestureUptime:J

    #@14a
    move-wide/from16 v34, v0

    #@14c
    const-wide/16 v36, 0x0

    #@14e
    cmp-long v33, v34, v36

    #@150
    if-eqz v33, :cond_21

    #@152
    .line 7619
    move-object/from16 v0, p0

    #@154
    iget-wide v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingPanicGestureUptime:J

    #@156
    move-wide/from16 v34, v0

    #@158
    sub-long v34, v24, v34

    #@15a
    const-wide/16 v36, 0x7530

    #@15c
    cmp-long v33, v34, v36

    #@15e
    if-gtz v33, :cond_20

    #@160
    const/16 v26, 0x1

    #@162
    .line 7620
    .local v26, "pendingPanic":Z
    :goto_e
    if-eqz v26, :cond_5

    #@164
    if-eqz v16, :cond_5

    #@166
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    #@169
    move-result v33

    #@16a
    if-eqz v33, :cond_22

    #@16c
    .line 7630
    :cond_5
    :goto_f
    move-object/from16 v0, p0

    #@16e
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@170
    move-object/from16 v33, v0

    #@172
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/policy/StatusBarController;->isTransientShowRequested()Z

    #@175
    move-result v33

    #@176
    if-eqz v33, :cond_6

    #@178
    .line 7631
    if-eqz v31, :cond_23

    #@17a
    .line 7630
    :cond_6
    const/4 v7, 0x0

    #@17b
    .line 7632
    :goto_10
    move-object/from16 v0, p0

    #@17d
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@17f
    move-object/from16 v33, v0

    #@181
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/policy/BarController;->isTransientShowRequested()Z

    #@184
    move-result v33

    #@185
    if-eqz v33, :cond_25

    #@187
    .line 7633
    if-eqz v30, :cond_24

    #@189
    const/4 v6, 0x0

    #@18a
    .line 7634
    .local v6, "denyTransientNav":Z
    :goto_11
    if-nez v7, :cond_7

    #@18c
    if-nez v6, :cond_7

    #@18e
    move-object/from16 v0, p0

    #@190
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    #@192
    move/from16 v33, v0

    #@194
    if-eqz v33, :cond_8

    #@196
    .line 7636
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->clearClearableFlagsLw()V

    #@199
    .line 7637
    and-int/lit8 p3, p3, -0x8

    #@19b
    .line 7640
    :cond_8
    move/from16 v0, p3

    #@19d
    and-int/lit16 v0, v0, 0x800

    #@19f
    move/from16 v33, v0

    #@1a1
    if-eqz v33, :cond_26

    #@1a3
    const/16 v19, 0x1

    #@1a5
    .line 7641
    .local v19, "immersive":Z
    :goto_12
    move/from16 v0, p3

    #@1a7
    and-int/lit16 v0, v0, 0x1000

    #@1a9
    move/from16 v33, v0

    #@1ab
    if-eqz v33, :cond_27

    #@1ad
    const/16 v20, 0x1

    #@1af
    .line 7642
    :goto_13
    if-nez v19, :cond_28

    #@1b1
    move/from16 v21, v20

    #@1b3
    .line 7644
    :goto_14
    if-eqz v16, :cond_9

    #@1b5
    if-eqz v21, :cond_29

    #@1b7
    .line 7651
    :cond_9
    :goto_15
    move-object/from16 v0, p0

    #@1b9
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@1bb
    move-object/from16 v33, v0

    #@1bd
    move-object/from16 v0, v33

    #@1bf
    move/from16 v1, v31

    #@1c1
    move/from16 v2, p2

    #@1c3
    move/from16 v3, p3

    #@1c5
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/StatusBarController;->updateVisibilityLw(ZII)I

    #@1c8
    move-result p3

    #@1c9
    .line 7654
    move-object/from16 v0, p0

    #@1cb
    move/from16 v1, p2

    #@1cd
    invoke-direct {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isImmersiveMode(I)Z

    #@1d0
    move-result v23

    #@1d1
    .line 7655
    .local v23, "oldImmersiveMode":Z
    move-object/from16 v0, p0

    #@1d3
    move/from16 v1, p3

    #@1d5
    invoke-direct {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isImmersiveMode(I)Z

    #@1d8
    move-result v22

    #@1d9
    .line 7656
    .local v22, "newImmersiveMode":Z
    if-eqz p1, :cond_a

    #@1db
    move/from16 v0, v23

    #@1dd
    move/from16 v1, v22

    #@1df
    if-eq v0, v1, :cond_a

    #@1e1
    .line 7657
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    #@1e4
    move-result-object v27

    #@1e5
    .line 7658
    .local v27, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1e7
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    #@1e9
    move-object/from16 v33, v0

    #@1eb
    .line 7659
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    #@1ee
    move-result v34

    #@1ef
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    #@1f2
    move-result v35

    #@1f3
    invoke-static/range {v35 .. v35}, Lcom/android/server/policy/PhoneWindowManager;->isNavBarEmpty(I)Z

    #@1f6
    move-result v35

    #@1f7
    .line 7658
    move-object/from16 v0, v33

    #@1f9
    move-object/from16 v1, v27

    #@1fb
    move/from16 v2, v22

    #@1fd
    move/from16 v3, v34

    #@1ff
    move/from16 v4, v35

    #@201
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/policy/ImmersiveModeConfirmation;->immersiveModeChangedLw(Ljava/lang/String;ZZZ)V

    #@204
    .line 7662
    .end local v27    # "pkg":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    #@206
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@208
    move-object/from16 v33, v0

    #@20a
    move-object/from16 v0, v33

    #@20c
    move/from16 v1, v30

    #@20e
    move/from16 v2, p2

    #@210
    move/from16 v3, p3

    #@212
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/BarController;->updateVisibilityLw(ZII)I

    #@215
    move-result p3

    #@216
    .line 7664
    return p3

    #@217
    .line 7552
    .end local v6    # "denyTransientNav":Z
    .end local v10    # "dockedVis":I
    .end local v12    # "forceOpaqueStatusBar":Z
    .end local v15    # "fullscreenTransWin":Landroid/view/WindowManagerPolicy$WindowState;
    .end local v16    # "hideNavBarSysui":Z
    .end local v17    # "hideStatusBarSysui":Z
    .end local v18    # "hideStatusBarWM":Z
    .end local v19    # "immersive":Z
    .end local v20    # "immersiveSticky":Z
    .end local v22    # "newImmersiveMode":Z
    .end local v23    # "oldImmersiveMode":Z
    .end local v24    # "now":J
    .end local v26    # "pendingPanic":Z
    .end local v29    # "statusBarHasFocus":Z
    .end local v32    # "type":I
    :cond_b
    const/16 v33, 0x1

    #@219
    goto/16 :goto_0

    #@21b
    .line 7553
    :cond_c
    const/4 v12, 0x1

    #@21c
    .restart local v12    # "forceOpaqueStatusBar":Z
    goto/16 :goto_1

    #@21e
    .line 7557
    :cond_d
    move-object/from16 v0, p0

    #@220
    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@222
    .restart local v15    # "fullscreenTransWin":Landroid/view/WindowManagerPolicy$WindowState;
    goto/16 :goto_2

    #@224
    .line 7567
    .restart local v10    # "dockedVis":I
    :cond_e
    move-object/from16 v0, p0

    #@226
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@228
    move-object/from16 v33, v0

    #@22a
    move-object/from16 v0, p0

    #@22c
    move-object/from16 v1, v33

    #@22e
    invoke-direct {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->forcesDrawStatusBarBackground(Landroid/view/WindowManagerPolicy$WindowState;)Z

    #@231
    move-result v14

    #@232
    .local v14, "fullscreenDrawsStatusBarBackground":Z
    goto/16 :goto_3

    #@234
    .line 7571
    .end local v14    # "fullscreenDrawsStatusBarBackground":Z
    :cond_f
    move-object/from16 v0, p0

    #@236
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@238
    move-object/from16 v33, v0

    #@23a
    move-object/from16 v0, p0

    #@23c
    move-object/from16 v1, v33

    #@23e
    invoke-direct {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->forcesDrawStatusBarBackground(Landroid/view/WindowManagerPolicy$WindowState;)Z

    #@241
    move-result v8

    #@242
    .local v8, "dockedDrawsStatusBarBackground":Z
    goto/16 :goto_4

    #@244
    .line 7575
    .end local v8    # "dockedDrawsStatusBarBackground":Z
    .restart local v32    # "type":I
    :cond_10
    const/16 v29, 0x0

    #@246
    goto/16 :goto_5

    #@248
    .line 7577
    .restart local v29    # "statusBarHasFocus":Z
    :cond_11
    const/16 v11, 0x3806

    #@24a
    .line 7582
    .local v11, "flags":I
    move-object/from16 v0, p0

    #@24c
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    #@24e
    move/from16 v33, v0

    #@250
    if-eqz v33, :cond_12

    #@252
    .line 7583
    const v11, -0x3fffc7fa

    #@255
    .line 7585
    :cond_12
    not-int v0, v11

    #@256
    move/from16 v33, v0

    #@258
    and-int v33, v33, p3

    #@25a
    and-int v34, p2, v11

    #@25c
    or-int p3, v33, v34

    #@25e
    goto/16 :goto_6

    #@260
    .line 7591
    .end local v11    # "flags":I
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    #@263
    move-result v33

    #@264
    if-nez v33, :cond_14

    #@266
    move-object/from16 v0, p0

    #@268
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@26a
    move-object/from16 v33, v0

    #@26c
    move-object/from16 v0, v33

    #@26e
    if-eq v15, v0, :cond_14

    #@270
    .line 7593
    :goto_16
    const v33, -0x40000009    # -1.9999989f

    #@273
    and-int p3, p3, v33

    #@275
    goto/16 :goto_7

    #@277
    .line 7591
    :cond_14
    if-eqz v12, :cond_3

    #@279
    goto :goto_16

    #@27a
    .line 7600
    :cond_15
    const/16 v20, 0x0

    #@27c
    .restart local v20    # "immersiveSticky":Z
    goto/16 :goto_8

    #@27e
    .line 7603
    :cond_16
    const/16 v18, 0x0

    #@280
    .restart local v18    # "hideStatusBarWM":Z
    goto/16 :goto_9

    #@282
    .line 7602
    .end local v18    # "hideStatusBarWM":Z
    :cond_17
    const/16 v18, 0x0

    #@284
    .restart local v18    # "hideStatusBarWM":Z
    goto/16 :goto_9

    #@286
    .line 7606
    :cond_18
    const/16 v17, 0x0

    #@288
    .restart local v17    # "hideStatusBarSysui":Z
    goto/16 :goto_a

    #@28a
    .line 7608
    :cond_19
    const/16 v16, 0x0

    #@28c
    .restart local v16    # "hideNavBarSysui":Z
    goto/16 :goto_b

    #@28e
    .line 7611
    :cond_1a
    const/16 v31, 0x1

    #@290
    .local v31, "transientStatusBarAllowed":Z
    goto/16 :goto_c

    #@292
    .line 7612
    .end local v31    # "transientStatusBarAllowed":Z
    :cond_1b
    const/16 v31, 0x1

    #@294
    .restart local v31    # "transientStatusBarAllowed":Z
    goto/16 :goto_c

    #@296
    .end local v31    # "transientStatusBarAllowed":Z
    :cond_1c
    const/16 v31, 0x0

    #@298
    .restart local v31    # "transientStatusBarAllowed":Z
    goto/16 :goto_c

    #@29a
    .line 7611
    .end local v31    # "transientStatusBarAllowed":Z
    :cond_1d
    const/16 v31, 0x0

    #@29c
    .restart local v31    # "transientStatusBarAllowed":Z
    goto/16 :goto_c

    #@29e
    .line 7610
    .end local v31    # "transientStatusBarAllowed":Z
    :cond_1e
    const/16 v31, 0x0

    #@2a0
    .restart local v31    # "transientStatusBarAllowed":Z
    goto/16 :goto_c

    #@2a2
    .line 7614
    .end local v31    # "transientStatusBarAllowed":Z
    :cond_1f
    if-eqz v16, :cond_4

    #@2a4
    .line 7615
    move/from16 v30, v20

    #@2a6
    .local v30, "transientNavBarAllowed":Z
    goto/16 :goto_d

    #@2a8
    .line 7619
    .end local v30    # "transientNavBarAllowed":Z
    .restart local v24    # "now":J
    :cond_20
    const/16 v26, 0x0

    #@2aa
    goto/16 :goto_e

    #@2ac
    .line 7618
    :cond_21
    const/16 v26, 0x0

    #@2ae
    goto/16 :goto_e

    #@2b0
    .line 7620
    .restart local v26    # "pendingPanic":Z
    :cond_22
    move-object/from16 v0, p0

    #@2b2
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    #@2b4
    move/from16 v33, v0

    #@2b6
    if-eqz v33, :cond_5

    #@2b8
    .line 7623
    const-wide/16 v34, 0x0

    #@2ba
    move-wide/from16 v0, v34

    #@2bc
    move-object/from16 v2, p0

    #@2be
    iput-wide v0, v2, Lcom/android/server/policy/PhoneWindowManager;->mPendingPanicGestureUptime:J

    #@2c0
    .line 7624
    move-object/from16 v0, p0

    #@2c2
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@2c4
    move-object/from16 v33, v0

    #@2c6
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/policy/StatusBarController;->showTransient()V

    #@2c9
    .line 7625
    invoke-static/range {p3 .. p3}, Lcom/android/server/policy/PhoneWindowManager;->isNavBarEmpty(I)Z

    #@2cc
    move-result v33

    #@2cd
    if-nez v33, :cond_5

    #@2cf
    .line 7626
    move-object/from16 v0, p0

    #@2d1
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@2d3
    move-object/from16 v33, v0

    #@2d5
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/policy/BarController;->showTransient()V

    #@2d8
    goto/16 :goto_f

    #@2da
    .line 7631
    :cond_23
    move/from16 v7, v17

    #@2dc
    .local v7, "denyTransientStatus":Z
    goto/16 :goto_10

    #@2de
    .line 7633
    .end local v7    # "denyTransientStatus":Z
    :cond_24
    const/4 v6, 0x1

    #@2df
    .restart local v6    # "denyTransientNav":Z
    goto/16 :goto_11

    #@2e1
    .line 7632
    .end local v6    # "denyTransientNav":Z
    :cond_25
    const/4 v6, 0x0

    #@2e2
    .restart local v6    # "denyTransientNav":Z
    goto/16 :goto_11

    #@2e4
    .line 7640
    :cond_26
    const/16 v19, 0x0

    #@2e6
    .restart local v19    # "immersive":Z
    goto/16 :goto_12

    #@2e8
    .line 7641
    :cond_27
    const/16 v20, 0x0

    #@2ea
    goto/16 :goto_13

    #@2ec
    .line 7642
    :cond_28
    const/16 v21, 0x1

    #@2ee
    .local v21, "navAllowedHidden":Z
    goto/16 :goto_14

    #@2f0
    .line 7644
    .end local v21    # "navAllowedHidden":Z
    :cond_29
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBaseType()I

    #@2f3
    move-result v33

    #@2f4
    move-object/from16 v0, p0

    #@2f6
    move/from16 v1, v33

    #@2f8
    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->windowTypeToLayerLw(I)I

    #@2fb
    move-result v33

    #@2fc
    .line 7645
    const/16 v34, 0x7e6

    #@2fe
    move-object/from16 v0, p0

    #@300
    move/from16 v1, v34

    #@302
    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->windowTypeToLayerLw(I)I

    #@305
    move-result v34

    #@306
    .line 7644
    move/from16 v0, v33

    #@308
    move/from16 v1, v34

    #@30a
    if-le v0, v1, :cond_9

    #@30c
    .line 7648
    and-int/lit8 p3, p3, -0x3

    #@30e
    goto/16 :goto_15
.end method

.method private updateSystemUiVisibilityLw()I
    .locals 15

    #@0
    .prologue
    .line 7444
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v13, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    #@6
    .line 7446
    .local v13, "winCandidate":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_0
    if-nez v13, :cond_1

    #@8
    .line 7447
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 7445
    .end local v13    # "winCandidate":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_0
    iget-object v13, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@c
    goto :goto_0

    #@d
    .line 7449
    .restart local v13    # "winCandidate":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_1
    invoke-interface {v13}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@10
    move-result-object v0

    #@11
    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@13
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    #@15
    invoke-virtual {v1}, Lcom/android/server/policy/ImmersiveModeConfirmation;->getWindowToken()Landroid/os/IBinder;

    #@18
    move-result-object v1

    #@19
    if-ne v0, v1, :cond_3

    #@1b
    .line 7452
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_2

    #@21
    iget-object v13, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@23
    .line 7453
    :goto_1
    if-nez v13, :cond_3

    #@25
    .line 7454
    const/4 v0, 0x0

    #@26
    return v0

    #@27
    .line 7452
    :cond_2
    iget-object v13, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@29
    goto :goto_1

    #@2a
    .line 7457
    :cond_3
    move-object v7, v13

    #@2b
    .line 7458
    .local v7, "win":Landroid/view/WindowManagerPolicy$WindowState;
    invoke-interface {v13}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@2e
    move-result-object v0

    #@2f
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@31
    and-int/lit16 v0, v0, 0x400

    #@33
    if-eqz v0, :cond_4

    #@35
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    #@37
    if-eqz v0, :cond_4

    #@39
    .line 7465
    const/4 v0, 0x0

    #@3a
    return v0

    #@3b
    .line 7468
    :cond_4
    const/4 v0, 0x0

    #@3c
    invoke-static {v7, v0}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    #@3f
    move-result v0

    #@40
    .line 7469
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    #@42
    not-int v1, v1

    #@43
    .line 7468
    and-int/2addr v0, v1

    #@44
    .line 7470
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    #@46
    not-int v1, v1

    #@47
    .line 7468
    and-int v12, v0, v1

    #@49
    .line 7471
    .local v12, "tmpVisibility":I
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    #@4b
    if-eqz v0, :cond_5

    #@4d
    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    #@50
    move-result v0

    #@51
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBarLayer:I

    #@53
    if-ge v0, v1, :cond_5

    #@55
    .line 7472
    const/4 v0, 0x7

    #@56
    invoke-static {v7, v0}, Lcom/android/server/policy/PolicyControl;->adjustClearableFlags(Landroid/view/WindowManagerPolicy$WindowState;I)I

    #@59
    move-result v0

    #@5a
    not-int v0, v0

    #@5b
    and-int/2addr v12, v0

    #@5c
    .line 7476
    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@5e
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@60
    .line 7475
    const/4 v14, 0x0

    #@61
    invoke-direct {p0, v14, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->updateLightStatusBarLw(ILandroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I

    #@64
    move-result v3

    #@65
    .line 7478
    .local v3, "fullscreenVisibility":I
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@67
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@69
    .line 7477
    const/4 v14, 0x0

    #@6a
    invoke-direct {p0, v14, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->updateLightStatusBarLw(ILandroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I

    #@6d
    move-result v4

    #@6e
    .line 7479
    .local v4, "dockedVisibility":I
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@70
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNonDockedStackBounds:Landroid/graphics/Rect;

    #@72
    const/4 v14, 0x0

    #@73
    invoke-interface {v0, v14, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getStackBounds(ILandroid/graphics/Rect;)V

    #@76
    .line 7480
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@78
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockedStackBounds:Landroid/graphics/Rect;

    #@7a
    const/4 v14, 0x3

    #@7b
    invoke-interface {v0, v14, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getStackBounds(ILandroid/graphics/Rect;)V

    #@7e
    .line 7481
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    #@80
    invoke-direct {p0, v7, v0, v12}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemBarsLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    #@83
    move-result v2

    #@84
    .line 7482
    .local v2, "visibility":I
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    #@86
    xor-int v9, v2, v0

    #@88
    .line 7483
    .local v9, "diff":I
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFullscreenStackSysUiFlags:I

    #@8a
    xor-int v11, v3, v0

    #@8c
    .line 7484
    .local v11, "fullscreenDiff":I
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastDockedStackSysUiFlags:I

    #@8e
    xor-int v10, v4, v0

    #@90
    .line 7485
    .local v10, "dockedDiff":I
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@92
    invoke-interface {v7, v0}, Landroid/view/WindowManagerPolicy$WindowState;->getNeedsMenuLw(Landroid/view/WindowManagerPolicy$WindowState;)Z

    #@95
    move-result v8

    #@96
    .line 7486
    .local v8, "needsMenu":Z
    if-nez v9, :cond_6

    #@98
    if-nez v11, :cond_6

    #@9a
    if-nez v10, :cond_6

    #@9c
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    #@9e
    if-ne v0, v8, :cond_6

    #@a0
    .line 7487
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    #@a2
    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    #@a5
    move-result-object v1

    #@a6
    if-ne v0, v1, :cond_6

    #@a8
    .line 7488
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastNonDockedStackBounds:Landroid/graphics/Rect;

    #@aa
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNonDockedStackBounds:Landroid/graphics/Rect;

    #@ac
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@af
    move-result v0

    #@b0
    .line 7486
    if-eqz v0, :cond_6

    #@b2
    .line 7489
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastDockedStackBounds:Landroid/graphics/Rect;

    #@b4
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockedStackBounds:Landroid/graphics/Rect;

    #@b6
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@b9
    move-result v0

    #@ba
    .line 7486
    if-eqz v0, :cond_6

    #@bc
    .line 7490
    const/4 v0, 0x0

    #@bd
    return v0

    #@be
    .line 7492
    :cond_6
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    #@c0
    .line 7493
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFullscreenStackSysUiFlags:I

    #@c2
    .line 7494
    iput v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastDockedStackSysUiFlags:I

    #@c4
    .line 7495
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    #@c6
    .line 7496
    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    #@c9
    move-result-object v0

    #@ca
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    #@cc
    .line 7497
    new-instance v5, Landroid/graphics/Rect;

    #@ce
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNonDockedStackBounds:Landroid/graphics/Rect;

    #@d0
    invoke-direct {v5, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@d3
    .line 7498
    .local v5, "fullscreenStackBounds":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    #@d5
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockedStackBounds:Landroid/graphics/Rect;

    #@d7
    invoke-direct {v6, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@da
    .line 7499
    .local v6, "dockedStackBounds":Landroid/graphics/Rect;
    iget-object v14, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@dc
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$22;

    #@de
    move-object v1, p0

    #@df
    invoke-direct/range {v0 .. v8}, Lcom/android/server/policy/PhoneWindowManager$22;-><init>(Lcom/android/server/policy/PhoneWindowManager;IIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/WindowManagerPolicy$WindowState;Z)V

    #@e2
    invoke-virtual {v14, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@e5
    .line 7511
    return v9
.end method

.method private updateWakeGestureListenerLp()V
    .locals 1

    #@0
    .prologue
    .line 2004
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldEnableWakeGestureLp()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2005
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    #@8
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->requestWakeUpTrigger()V

    #@b
    .line 2003
    :goto_0
    return-void

    #@c
    .line 2007
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
    .line 6347
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTheaterModeEnabled()Z

    #@4
    move-result v0

    #@5
    .line 6348
    .local v0, "theaterModeEnabled":Z
    if-nez p3, :cond_0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 6349
    return v3

    #@a
    .line 6352
    :cond_0
    if-eqz v0, :cond_1

    #@c
    .line 6353
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@e
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@11
    move-result-object v1

    #@12
    .line 6354
    const-string/jumbo v2, "theater_mode_on"

    #@15
    .line 6353
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@18
    .line 6357
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@1a
    invoke-virtual {v1, p1, p2, p4}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    #@1d
    .line 6358
    const/4 v1, 0x1

    #@1e
    return v1
.end method

.method private wakeUpFromPowerKey(J)V
    .locals 3
    .param p1, "eventTime"    # J

    #@0
    .prologue
    .line 6343
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromPowerKey:Z

    #@2
    const-string/jumbo v1, "android.policy:POWER"

    #@5
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    #@8
    .line 6342
    return-void
.end method


# virtual methods
.method public addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/content/res/Configuration;)Landroid/view/View;
    .locals 16
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "theme"    # I
    .param p4, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p5, "nonLocalizedLabel"    # Ljava/lang/CharSequence;
    .param p6, "labelRes"    # I
    .param p7, "icon"    # I
    .param p8, "logo"    # I
    .param p9, "windowFlags"    # I
    .param p10, "overrideConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 2588
    if-nez p2, :cond_0

    #@2
    .line 2589
    const/4 v13, 0x0

    #@3
    return-object v13

    #@4
    .line 2592
    :cond_0
    const/4 v12, 0x0

    #@5
    .line 2593
    .local v12, "wm":Landroid/view/WindowManager;
    const/4 v10, 0x0

    #@6
    .line 2596
    .local v10, "view":Landroid/view/View;
    :try_start_0
    move-object/from16 v0, p0

    #@8
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@a
    .line 2600
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getThemeResId()I
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@d
    move-result v13

    #@e
    move/from16 v0, p3

    #@10
    if-ne v0, v13, :cond_1

    #@12
    if-eqz p6, :cond_2

    #@14
    .line 2602
    :cond_1
    const/4 v13, 0x0

    #@15
    :try_start_1
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v1, v0, v13}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    #@1a
    move-result-object v1

    #@1b
    .line 2603
    move/from16 v0, p3

    #@1d
    invoke-virtual {v1, v0}, Landroid/content/Context;->setTheme(I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@20
    .line 2609
    :cond_2
    :goto_0
    if-eqz p10, :cond_3

    #@22
    :try_start_2
    sget-object v13, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    #@24
    move-object/from16 v0, p10

    #@26
    if-eq v0, v13, :cond_3

    #@28
    .line 2612
    move-object/from16 v0, p10

    #@2a
    invoke-virtual {v1, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    #@2d
    move-result-object v6

    #@2e
    .line 2613
    .local v6, "overrideContext":Landroid/content/Context;
    move/from16 v0, p3

    #@30
    invoke-virtual {v6, v0}, Landroid/content/Context;->setTheme(I)V

    #@33
    .line 2615
    sget-object v13, Lcom/android/internal/R$styleable;->Window:[I

    #@35
    .line 2614
    invoke-virtual {v6, v13}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@38
    move-result-object v9

    #@39
    .line 2616
    .local v9, "typedArray":Landroid/content/res/TypedArray;
    const/4 v13, 0x1

    #@3a
    const/4 v14, 0x0

    #@3b
    invoke-virtual {v9, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@3e
    move-result v8

    #@3f
    .line 2617
    .local v8, "resId":I
    if-eqz v8, :cond_3

    #@41
    invoke-virtual {v6, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@44
    move-result-object v13

    #@45
    if-eqz v13, :cond_3

    #@47
    .line 2623
    move-object v1, v6

    #@48
    .line 2627
    .end local v6    # "overrideContext":Landroid/content/Context;
    .end local v8    # "resId":I
    .end local v9    # "typedArray":Landroid/content/res/TypedArray;
    :cond_3
    new-instance v11, Lcom/android/internal/policy/PhoneWindow;

    #@4a
    invoke-direct {v11, v1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    #@4d
    .line 2628
    .local v11, "win":Lcom/android/internal/policy/PhoneWindow;
    const/4 v13, 0x1

    #@4e
    invoke-virtual {v11, v13}, Lcom/android/internal/policy/PhoneWindow;->setIsStartingWindow(Z)V

    #@51
    .line 2630
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@54
    move-result-object v13

    #@55
    const/4 v14, 0x0

    #@56
    move/from16 v0, p6

    #@58
    invoke-virtual {v13, v0, v14}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@5b
    move-result-object v5

    #@5c
    .line 2632
    .local v5, "label":Ljava/lang/CharSequence;
    if-eqz v5, :cond_7

    #@5e
    .line 2633
    const/4 v13, 0x1

    #@5f
    invoke-virtual {v11, v5, v13}, Lcom/android/internal/policy/PhoneWindow;->setTitle(Ljava/lang/CharSequence;Z)V

    #@62
    .line 2639
    :goto_1
    const/4 v13, 0x3

    #@63
    .line 2638
    invoke-virtual {v11, v13}, Lcom/android/internal/policy/PhoneWindow;->setType(I)V

    #@66
    .line 2641
    move-object/from16 v0, p0

    #@68
    iget-object v13, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@6a
    invoke-interface {v13}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    #@6d
    move-result-object v13

    #@6e
    monitor-enter v13
    :try_end_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@6f
    .line 2645
    :try_start_3
    move-object/from16 v0, p0

    #@71
    iget-boolean v14, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@73
    if-eqz v14, :cond_4

    #@75
    .line 2646
    const/high16 v14, 0x80000

    #@77
    or-int p9, p9, v14

    #@79
    :cond_4
    :try_start_4
    monitor-exit v13

    #@7a
    .line 2655
    or-int/lit8 v13, p9, 0x10

    #@7c
    or-int/lit8 v13, v13, 0x8

    #@7e
    .line 2658
    const/high16 v14, 0x20000

    #@80
    .line 2655
    or-int/2addr v13, v14

    #@81
    .line 2659
    or-int/lit8 v14, p9, 0x10

    #@83
    or-int/lit8 v14, v14, 0x8

    #@85
    .line 2662
    const/high16 v15, 0x20000

    #@87
    .line 2659
    or-int/2addr v14, v15

    #@88
    .line 2654
    invoke-virtual {v11, v13, v14}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    #@8b
    .line 2664
    move/from16 v0, p7

    #@8d
    invoke-virtual {v11, v0}, Lcom/android/internal/policy/PhoneWindow;->setDefaultIcon(I)V

    #@90
    .line 2665
    move/from16 v0, p8

    #@92
    invoke-virtual {v11, v0}, Lcom/android/internal/policy/PhoneWindow;->setDefaultLogo(I)V

    #@95
    .line 2667
    const/4 v13, -0x1

    #@96
    .line 2668
    const/4 v14, -0x1

    #@97
    .line 2667
    invoke-virtual {v11, v13, v14}, Lcom/android/internal/policy/PhoneWindow;->setLayout(II)V

    #@9a
    .line 2670
    invoke-virtual {v11}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@9d
    move-result-object v7

    #@9e
    .line 2671
    .local v7, "params":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p1

    #@a0
    iput-object v0, v7, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@a2
    .line 2672
    move-object/from16 v0, p2

    #@a4
    iput-object v0, v7, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@a6
    .line 2673
    invoke-virtual {v11}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    #@a9
    move-result-object v13

    #@aa
    .line 2674
    const/16 v14, 0x8

    #@ac
    const/4 v15, 0x0

    #@ad
    .line 2673
    invoke-virtual {v13, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@b0
    move-result v13

    #@b1
    iput v13, v7, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@b3
    .line 2675
    iget v13, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@b5
    or-int/lit8 v13, v13, 0x1

    #@b7
    iput v13, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@b9
    .line 2677
    iget v13, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@bb
    or-int/lit8 v13, v13, 0x10

    #@bd
    iput v13, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@bf
    .line 2679
    invoke-virtual/range {p4 .. p4}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    #@c2
    move-result v13

    #@c3
    if-nez v13, :cond_5

    #@c5
    .line 2680
    iget v13, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@c7
    or-int/lit16 v13, v13, 0x80

    #@c9
    iput v13, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@cb
    .line 2683
    :cond_5
    new-instance v13, Ljava/lang/StringBuilder;

    #@cd
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@d0
    const-string/jumbo v14, "Starting "

    #@d3
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v13

    #@d7
    move-object/from16 v0, p2

    #@d9
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v13

    #@dd
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e0
    move-result-object v13

    #@e1
    invoke-virtual {v7, v13}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    #@e4
    .line 2685
    const-string/jumbo v13, "window"

    #@e7
    invoke-virtual {v1, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@ea
    move-result-object v13

    #@eb
    move-object v0, v13

    #@ec
    check-cast v0, Landroid/view/WindowManager;

    #@ee
    move-object v12, v0

    #@ef
    .line 2686
    .local v12, "wm":Landroid/view/WindowManager;
    invoke-virtual {v11}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    #@f2
    move-result-object v10

    #@f3
    .line 2691
    .local v10, "view":Landroid/view/View;
    invoke-interface {v12, v10, v7}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@f6
    .line 2695
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    :try_end_4
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@f9
    move-result-object v13

    #@fa
    if-eqz v13, :cond_9

    #@fc
    move-object v13, v10

    #@fd
    .line 2706
    :goto_2
    if-eqz v10, :cond_6

    #@ff
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@102
    move-result-object v14

    #@103
    if-nez v14, :cond_6

    #@105
    .line 2707
    const-string/jumbo v14, "WindowManager"

    #@108
    const-string/jumbo v15, "view not successfully added to wm, removing view"

    #@10b
    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@10e
    .line 2708
    invoke-interface {v12, v10}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    #@111
    .line 2695
    :cond_6
    return-object v13

    #@112
    .line 2635
    .end local v7    # "params":Landroid/view/WindowManager$LayoutParams;
    .local v10, "view":Landroid/view/View;
    .local v12, "wm":Landroid/view/WindowManager;
    :cond_7
    const/4 v13, 0x0

    #@113
    :try_start_5
    move-object/from16 v0, p5

    #@115
    invoke-virtual {v11, v0, v13}, Lcom/android/internal/policy/PhoneWindow;->setTitle(Ljava/lang/CharSequence;Z)V
    :try_end_5
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@118
    goto/16 :goto_1

    #@11a
    .line 2696
    .end local v1    # "context":Landroid/content/Context;
    .end local v5    # "label":Ljava/lang/CharSequence;
    .end local v10    # "view":Landroid/view/View;
    .end local v11    # "win":Lcom/android/internal/policy/PhoneWindow;
    .end local v12    # "wm":Landroid/view/WindowManager;
    :catch_0
    move-exception v3

    #@11b
    .line 2698
    .local v3, "e":Landroid/view/WindowManager$BadTokenException;
    :try_start_6
    const-string/jumbo v13, "WindowManager"

    #@11e
    new-instance v14, Ljava/lang/StringBuilder;

    #@120
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@123
    move-object/from16 v0, p1

    #@125
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@128
    move-result-object v14

    #@129
    const-string/jumbo v15, " already running, starting window not displayed. "

    #@12c
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v14

    #@130
    .line 2699
    invoke-virtual {v3}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    #@133
    move-result-object v15

    #@134
    .line 2698
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@137
    move-result-object v14

    #@138
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13b
    move-result-object v14

    #@13c
    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@13f
    .line 2706
    if-eqz v10, :cond_8

    #@141
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@144
    move-result-object v13

    #@145
    if-nez v13, :cond_8

    #@147
    .line 2707
    const-string/jumbo v13, "WindowManager"

    #@14a
    const-string/jumbo v14, "view not successfully added to wm, removing view"

    #@14d
    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@150
    .line 2708
    invoke-interface {v12, v10}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    #@153
    .line 2712
    .end local v3    # "e":Landroid/view/WindowManager$BadTokenException;
    :cond_8
    :goto_3
    const/4 v13, 0x0

    #@154
    return-object v13

    #@155
    .line 2641
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v5    # "label":Ljava/lang/CharSequence;
    .restart local v10    # "view":Landroid/view/View;
    .restart local v11    # "win":Lcom/android/internal/policy/PhoneWindow;
    .restart local v12    # "wm":Landroid/view/WindowManager;
    :catchall_0
    move-exception v14

    #@156
    :try_start_7
    monitor-exit v13

    #@157
    throw v14
    :try_end_7
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@158
    .line 2700
    .end local v1    # "context":Landroid/content/Context;
    .end local v5    # "label":Ljava/lang/CharSequence;
    .end local v10    # "view":Landroid/view/View;
    .end local v11    # "win":Lcom/android/internal/policy/PhoneWindow;
    .end local v12    # "wm":Landroid/view/WindowManager;
    :catch_1
    move-exception v4

    #@159
    .line 2704
    .local v4, "e":Ljava/lang/RuntimeException;
    :try_start_8
    const-string/jumbo v13, "WindowManager"

    #@15c
    new-instance v14, Ljava/lang/StringBuilder;

    #@15e
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@161
    move-object/from16 v0, p1

    #@163
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@166
    move-result-object v14

    #@167
    const-string/jumbo v15, " failed creating starting window"

    #@16a
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v14

    #@16e
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@171
    move-result-object v14

    #@172
    invoke-static {v13, v14, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@175
    .line 2706
    if-eqz v10, :cond_8

    #@177
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@17a
    move-result-object v13

    #@17b
    if-nez v13, :cond_8

    #@17d
    .line 2707
    const-string/jumbo v13, "WindowManager"

    #@180
    const-string/jumbo v14, "view not successfully added to wm, removing view"

    #@183
    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@186
    .line 2708
    invoke-interface {v12, v10}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    #@189
    goto :goto_3

    #@18a
    .line 2695
    .end local v4    # "e":Ljava/lang/RuntimeException;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v5    # "label":Ljava/lang/CharSequence;
    .restart local v7    # "params":Landroid/view/WindowManager$LayoutParams;
    .local v10, "view":Landroid/view/View;
    .restart local v11    # "win":Lcom/android/internal/policy/PhoneWindow;
    .local v12, "wm":Landroid/view/WindowManager;
    :cond_9
    const/4 v13, 0x0

    #@18b
    goto/16 :goto_2

    #@18d
    .line 2705
    .end local v1    # "context":Landroid/content/Context;
    .end local v5    # "label":Ljava/lang/CharSequence;
    .end local v7    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v10    # "view":Landroid/view/View;
    .end local v11    # "win":Lcom/android/internal/policy/PhoneWindow;
    .end local v12    # "wm":Landroid/view/WindowManager;
    :catchall_1
    move-exception v13

    #@18e
    .line 2706
    if-eqz v10, :cond_a

    #@190
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@193
    move-result-object v14

    #@194
    if-nez v14, :cond_a

    #@196
    .line 2707
    const-string/jumbo v14, "WindowManager"

    #@199
    const-string/jumbo v15, "view not successfully added to wm, removing view"

    #@19c
    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@19f
    .line 2708
    invoke-interface {v12, v10}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    #@1a2
    .line 2705
    :cond_a
    throw v13

    #@1a3
    .line 2604
    .restart local v1    # "context":Landroid/content/Context;
    .local v10, "view":Landroid/view/View;
    .local v12, "wm":Landroid/view/WindowManager;
    :catch_2
    move-exception v2

    #@1a4
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
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
    .line 2298
    and-int/lit8 v2, p2, 0x1

    #@5
    if-eqz v2, :cond_0

    #@7
    move v0, v1

    #@8
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHaveBuiltInKeyboard:Z

    #@a
    .line 2300
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->readConfigurationDependentBehaviors()V

    #@d
    .line 2301
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->readLidState()V

    #@10
    .line 2303
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    #@12
    if-eq v0, v1, :cond_1

    #@14
    .line 2304
    if-ne p2, v1, :cond_2

    #@16
    .line 2305
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    #@18
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isHidden(I)Z

    #@1b
    move-result v0

    #@1c
    .line 2303
    if-eqz v0, :cond_2

    #@1e
    .line 2306
    :cond_1
    iput v3, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@20
    .line 2307
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    #@22
    if-nez v0, :cond_2

    #@24
    .line 2308
    iput v3, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    #@26
    .line 2312
    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    #@28
    if-eq v0, v1, :cond_3

    #@2a
    .line 2313
    if-ne p3, v1, :cond_4

    #@2c
    .line 2314
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    #@2e
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isHidden(I)Z

    #@31
    move-result v0

    #@32
    .line 2312
    if-eqz v0, :cond_4

    #@34
    .line 2315
    :cond_3
    iput v3, p1, Landroid/content/res/Configuration;->navigationHidden:I

    #@36
    .line 2297
    :cond_4
    return-void
.end method

.method public adjustSystemUiVisibilityLw(I)I
    .locals 2
    .param p1, "visibility"    # I

    #@0
    .prologue
    .line 3870
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@2
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    #@4
    invoke-virtual {v0, v1, p1}, Lcom/android/server/policy/StatusBarController;->adjustSystemUiVisibilityLw(II)V

    #@7
    .line 3871
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@9
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    #@b
    invoke-virtual {v0, v1, p1}, Lcom/android/server/policy/BarController;->adjustSystemUiVisibilityLw(II)V

    #@e
    .line 3875
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    #@10
    and-int/2addr v0, p1

    #@11
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    #@13
    .line 3878
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    #@15
    not-int v0, v0

    #@16
    and-int/2addr v0, p1

    #@17
    .line 3879
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    #@19
    not-int v1, v1

    #@1a
    .line 3878
    and-int/2addr v0, v1

    #@1b
    return v0
.end method

.method public adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V
    .locals 10
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    #@0
    .prologue
    const-wide/16 v8, 0xdac

    #@2
    const/4 v7, -0x1

    #@3
    const/high16 v6, -0x80000000

    #@5
    .line 2218
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@7
    sparse-switch v1, :sswitch_data_0

    #@a
    .line 2255
    :cond_0
    :goto_0
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@c
    const/16 v2, 0x7d0

    #@e
    if-eq v1, v2, :cond_1

    #@10
    .line 2257
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@12
    and-int/lit16 v1, v1, -0x401

    #@14
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@16
    .line 2260
    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_4

    #@1c
    .line 2261
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@1e
    and-int/2addr v1, v6

    #@1f
    if-eqz v1, :cond_2

    #@21
    .line 2262
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    #@23
    or-int/lit16 v1, v1, 0x200

    #@25
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    #@27
    .line 2265
    :cond_2
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@29
    const/high16 v2, 0x20000

    #@2b
    and-int/2addr v1, v2

    #@2c
    if-eqz v1, :cond_7

    #@2e
    const/4 v0, 0x1

    #@2f
    .line 2267
    .local v0, "forceWindowDrawsStatusBarBackground":Z
    :goto_1
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@31
    and-int/2addr v1, v6

    #@32
    if-nez v1, :cond_3

    #@34
    .line 2268
    if-eqz v0, :cond_4

    #@36
    .line 2269
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    #@38
    if-ne v1, v7, :cond_4

    #@3a
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    #@3c
    if-ne v1, v7, :cond_4

    #@3e
    .line 2270
    :cond_3
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    #@40
    or-int/lit16 v1, v1, 0x400

    #@42
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    #@44
    .line 2217
    .end local v0    # "forceWindowDrawsStatusBarBackground":Z
    :cond_4
    return-void

    #@45
    .line 2222
    :sswitch_0
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@47
    or-int/lit8 v1, v1, 0x18

    #@49
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@4b
    .line 2224
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@4d
    const v2, -0x40001

    #@50
    and-int/2addr v1, v2

    #@51
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@53
    goto :goto_0

    #@54
    .line 2232
    :sswitch_1
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z

    #@56
    if-eqz v1, :cond_0

    #@58
    .line 2233
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@5a
    const v2, -0x100001

    #@5d
    and-int/2addr v1, v2

    #@5e
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@60
    .line 2234
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@62
    and-int/lit16 v1, v1, -0x401

    #@64
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@66
    goto :goto_0

    #@67
    .line 2239
    :sswitch_2
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@69
    or-int/lit8 v1, v1, 0x8

    #@6b
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@6d
    goto :goto_0

    #@6e
    .line 2247
    :sswitch_3
    iget-wide v2, p1, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    #@70
    const-wide/16 v4, 0x0

    #@72
    cmp-long v1, v2, v4

    #@74
    if-ltz v1, :cond_5

    #@76
    .line 2248
    iget-wide v2, p1, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    #@78
    cmp-long v1, v2, v8

    #@7a
    if-lez v1, :cond_6

    #@7c
    .line 2249
    :cond_5
    iput-wide v8, p1, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    #@7e
    .line 2251
    :cond_6
    const v1, 0x1030004

    #@81
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@83
    goto :goto_0

    #@84
    .line 2265
    :cond_7
    const/4 v0, 0x0

    #@85
    .restart local v0    # "forceWindowDrawsStatusBarBackground":Z
    goto :goto_1

    #@86
    .line 2218
    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_1
        0x7d5 -> :sswitch_3
        0x7d6 -> :sswitch_0
        0x7df -> :sswitch_0
        0x7f4 -> :sswitch_2
    .end sparse-switch
.end method

.method public allowAppAnimationsLw()Z
    .locals 1

    #@0
    .prologue
    .line 5380
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
    .line 5382
    :cond_0
    const/4 v0, 0x0

    #@b
    return v0

    #@c
    .line 5384
    :cond_1
    const/4 v0, 0x1

    #@d
    return v0
.end method

.method public applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 9
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "attached"    # Landroid/view/WindowManagerPolicy$WindowState;

    #@0
    .prologue
    .line 4993
    invoke-static {p1, p2}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    #@3
    move-result v3

    #@4
    .line 4994
    .local v3, "fl":I
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@6
    if-nez v7, :cond_0

    #@8
    .line 4995
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    #@b
    move-result v7

    #@c
    .line 4994
    if-eqz v7, :cond_0

    #@e
    .line 4995
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    #@10
    const/16 v8, 0x7db

    #@12
    if-ne v7, v8, :cond_0

    #@14
    .line 4996
    const/4 v7, 0x1

    #@15
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    #@17
    .line 4997
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    #@1a
    move-result v7

    #@1b
    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBarLayer:I

    #@1d
    .line 4999
    :cond_0
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    #@1f
    const/16 v8, 0x7d0

    #@21
    if-ne v7, v8, :cond_2

    #@23
    .line 5000
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@25
    and-int/lit16 v7, v7, 0x400

    #@27
    if-eqz v7, :cond_1

    #@29
    .line 5001
    const/4 v7, 0x1

    #@2a
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    #@2c
    .line 5002
    const/4 v7, 0x1

    #@2d
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingLockscreen:Z

    #@2f
    .line 5004
    :cond_1
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@31
    and-int/lit16 v7, v7, 0x1000

    #@33
    if-eqz v7, :cond_2

    #@35
    .line 5005
    const/4 v7, 0x1

    #@36
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarTransparent:Z

    #@38
    .line 5009
    :cond_2
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    #@3a
    const/4 v8, 0x1

    #@3b
    if-lt v7, v8, :cond_c

    #@3d
    .line 5010
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    #@3f
    const/16 v8, 0x7d0

    #@41
    if-ge v7, v8, :cond_b

    #@43
    const/4 v1, 0x1

    #@44
    .line 5011
    .local v1, "appWindow":Z
    :goto_0
    const/high16 v7, 0x80000

    #@46
    and-int/2addr v7, v3

    #@47
    if-eqz v7, :cond_d

    #@49
    const/4 v5, 0x1

    #@4a
    .line 5012
    .local v5, "showWhenLocked":Z
    :goto_1
    const/high16 v7, 0x400000

    #@4c
    and-int/2addr v7, v3

    #@4d
    if-eqz v7, :cond_e

    #@4f
    const/4 v2, 0x1

    #@50
    .line 5013
    .local v2, "dismissKeyguard":Z
    :goto_2
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackId()I

    #@53
    move-result v6

    #@54
    .line 5014
    .local v6, "stackId":I
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@56
    if-nez v7, :cond_3

    #@58
    .line 5015
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    #@5b
    move-result v7

    #@5c
    .line 5014
    if-eqz v7, :cond_3

    #@5e
    .line 5015
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isGoneForLayoutLw()Z

    #@61
    move-result v7

    #@62
    if-eqz v7, :cond_f

    #@64
    .line 5096
    :cond_3
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@66
    if-nez v7, :cond_4

    #@68
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    #@6a
    if-nez v7, :cond_4

    #@6c
    .line 5101
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    #@6f
    move-result v7

    #@70
    if-eqz v7, :cond_4

    #@72
    if-eqz v1, :cond_4

    #@74
    if-eqz v5, :cond_4

    #@76
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z

    #@78
    if-eqz v7, :cond_4

    #@7a
    .line 5102
    const/4 v7, 0x1

    #@7b
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    #@7d
    .line 5103
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    #@7f
    .line 5107
    :cond_4
    :goto_3
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    #@82
    move-result v7

    #@83
    if-eqz v7, :cond_5

    #@85
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isGoneForLayoutLw()Z

    #@88
    move-result v7

    #@89
    if-eqz v7, :cond_22

    #@8b
    :cond_5
    const/4 v4, 0x0

    #@8c
    .line 5110
    .local v4, "reallyVisible":Z
    :goto_4
    if-eqz v4, :cond_7

    #@8e
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@91
    move-result-object v7

    #@92
    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    #@94
    const/16 v8, 0x7ef

    #@96
    if-ne v7, v8, :cond_7

    #@98
    .line 5111
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@9a
    if-nez v7, :cond_6

    #@9c
    .line 5112
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@9e
    .line 5113
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@a0
    if-nez v7, :cond_6

    #@a2
    .line 5114
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@a4
    .line 5117
    :cond_6
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@a6
    if-nez v7, :cond_7

    #@a8
    .line 5118
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@aa
    .line 5119
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@ac
    if-nez v7, :cond_7

    #@ae
    .line 5120
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@b0
    .line 5126
    :cond_7
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@b2
    if-nez v7, :cond_8

    #@b4
    if-eqz v4, :cond_8

    #@b6
    .line 5127
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDimming()Z

    #@b9
    move-result v7

    #@ba
    .line 5126
    if-eqz v7, :cond_8

    #@bc
    .line 5127
    invoke-static {v6}, Landroid/app/ActivityManager$StackId;->normallyFullscreenWindows(I)Z

    #@bf
    move-result v7

    #@c0
    .line 5126
    if-eqz v7, :cond_8

    #@c2
    .line 5128
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@c4
    .line 5134
    :cond_8
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@c6
    if-nez v7, :cond_9

    #@c8
    if-eqz v4, :cond_9

    #@ca
    if-eqz v1, :cond_9

    #@cc
    if-nez p3, :cond_9

    #@ce
    .line 5135
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z

    #@d1
    move-result v7

    #@d2
    .line 5134
    if-eqz v7, :cond_9

    #@d4
    .line 5135
    const/4 v7, 0x3

    #@d5
    if-ne v6, v7, :cond_9

    #@d7
    .line 5136
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@d9
    .line 5137
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@db
    if-nez v7, :cond_9

    #@dd
    .line 5138
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@df
    .line 5144
    :cond_9
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@e1
    if-nez v7, :cond_a

    #@e3
    if-eqz v4, :cond_a

    #@e5
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDimming()Z

    #@e8
    move-result v7

    #@e9
    if-eqz v7, :cond_a

    #@eb
    .line 5145
    const/4 v7, 0x3

    #@ec
    if-ne v6, v7, :cond_a

    #@ee
    .line 5146
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@f0
    .line 4990
    :cond_a
    return-void

    #@f1
    .line 5010
    .end local v1    # "appWindow":Z
    .end local v2    # "dismissKeyguard":Z
    .end local v4    # "reallyVisible":Z
    .end local v5    # "showWhenLocked":Z
    .end local v6    # "stackId":I
    :cond_b
    const/4 v1, 0x0

    #@f2
    .restart local v1    # "appWindow":Z
    goto/16 :goto_0

    #@f4
    .line 5009
    .end local v1    # "appWindow":Z
    :cond_c
    const/4 v1, 0x0

    #@f5
    .restart local v1    # "appWindow":Z
    goto/16 :goto_0

    #@f7
    .line 5011
    :cond_d
    const/4 v5, 0x0

    #@f8
    .restart local v5    # "showWhenLocked":Z
    goto/16 :goto_1

    #@fa
    .line 5012
    :cond_e
    const/4 v2, 0x0

    #@fb
    .restart local v2    # "dismissKeyguard":Z
    goto/16 :goto_2

    #@fd
    .line 5016
    .restart local v6    # "stackId":I
    :cond_f
    and-int/lit16 v7, v3, 0x800

    #@ff
    if-eqz v7, :cond_10

    #@101
    .line 5017
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@103
    and-int/lit16 v7, v7, 0x400

    #@105
    if-eqz v7, :cond_19

    #@107
    .line 5018
    const/4 v7, 0x1

    #@108
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    #@10a
    .line 5023
    :cond_10
    :goto_5
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    #@10c
    const/16 v8, 0x7e7

    #@10e
    if-ne v7, v8, :cond_12

    #@110
    .line 5026
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingLockscreen:Z

    #@112
    if-eqz v7, :cond_11

    #@114
    .line 5027
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    #@117
    move-result v7

    #@118
    if-eqz v7, :cond_12

    #@11a
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasDrawnLw()Z

    #@11d
    move-result v7

    #@11e
    .line 5026
    if-eqz v7, :cond_12

    #@120
    .line 5028
    :cond_11
    const/4 v7, 0x1

    #@121
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    #@123
    .line 5029
    const/4 v1, 0x1

    #@124
    .line 5033
    :cond_12
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    #@127
    move-result-object v0

    #@128
    .line 5038
    .local v0, "appToken":Landroid/view/IApplicationToken;
    if-eqz v1, :cond_4

    #@12a
    if-nez p3, :cond_4

    #@12c
    .line 5039
    if-eqz v5, :cond_1b

    #@12e
    .line 5041
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    #@130
    invoke-virtual {v7, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@133
    .line 5042
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsThatDismissKeyguard:Ljava/util/HashSet;

    #@135
    invoke-virtual {v7, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@138
    .line 5043
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    #@13a
    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    #@13d
    move-result v7

    #@13e
    if-eqz v7, :cond_15

    #@140
    .line 5044
    if-eqz v2, :cond_13

    #@142
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    #@144
    if-eqz v7, :cond_1a

    #@146
    .line 5046
    :cond_13
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDrawnLw()Z

    #@149
    move-result v7

    #@14a
    if-nez v7, :cond_14

    #@14c
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasAppShownWindows()Z

    #@14f
    move-result v7

    #@150
    if-eqz v7, :cond_15

    #@152
    .line 5047
    :cond_14
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    #@154
    .line 5048
    const/4 v7, 0x1

    #@155
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    #@157
    .line 5049
    const/4 v7, 0x0

    #@158
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    #@15a
    .line 5062
    :cond_15
    :goto_6
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z

    #@15d
    move-result v7

    #@15e
    if-eqz v7, :cond_18

    #@160
    invoke-static {v6}, Landroid/app/ActivityManager$StackId;->normallyFullscreenWindows(I)Z

    #@163
    move-result v7

    #@164
    if-eqz v7, :cond_18

    #@166
    .line 5064
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@168
    .line 5065
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@16a
    if-nez v7, :cond_16

    #@16c
    .line 5066
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@16e
    .line 5068
    :cond_16
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsThatDismissKeyguard:Ljava/util/HashSet;

    #@170
    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    #@173
    move-result v7

    #@174
    if-nez v7, :cond_20

    #@176
    .line 5069
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    #@178
    if-nez v7, :cond_20

    #@17a
    .line 5072
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    #@17c
    if-ne v7, p1, :cond_1e

    #@17e
    .line 5073
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mSecureDismissingKeyguard:Z

    #@180
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    #@182
    if-ne v7, v8, :cond_1e

    #@184
    .line 5074
    const/4 v7, 0x2

    #@185
    .line 5072
    :goto_7
    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    #@187
    .line 5075
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    #@189
    .line 5076
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    #@18b
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mSecureDismissingKeyguard:Z

    #@18d
    .line 5077
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingLockscreen:Z

    #@18f
    if-eqz v7, :cond_1f

    #@191
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    #@193
    :goto_8
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    #@195
    .line 5085
    :cond_17
    :goto_9
    and-int/lit8 v7, v3, 0x1

    #@197
    if-eqz v7, :cond_18

    #@199
    .line 5086
    const/4 v7, 0x1

    #@19a
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    #@19c
    .line 5090
    :cond_18
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z

    #@19e
    if-nez v7, :cond_4

    #@1a0
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    #@1a2
    if-eqz v7, :cond_4

    #@1a4
    .line 5091
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    #@1a6
    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    #@1a9
    move-result-object v7

    #@1aa
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    #@1ad
    move-result-object v8

    #@1ae
    if-eq v7, v8, :cond_4

    #@1b0
    .line 5092
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@1b2
    const/high16 v8, 0x80000

    #@1b4
    and-int/2addr v7, v8

    #@1b5
    if-nez v7, :cond_4

    #@1b7
    .line 5093
    const/4 v7, 0x0

    #@1b8
    invoke-interface {p1, v7}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    #@1bb
    goto/16 :goto_3

    #@1bd
    .line 5020
    .end local v0    # "appToken":Landroid/view/IApplicationToken;
    :cond_19
    const/4 v7, 0x1

    #@1be
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    #@1c0
    goto/16 :goto_5

    #@1c2
    .line 5045
    .restart local v0    # "appToken":Landroid/view/IApplicationToken;
    :cond_1a
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsThatDismissKeyguard:Ljava/util/HashSet;

    #@1c4
    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1c7
    goto :goto_6

    #@1c8
    .line 5052
    :cond_1b
    if-eqz v2, :cond_1d

    #@1ca
    .line 5053
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    #@1cc
    if-eqz v7, :cond_1c

    #@1ce
    .line 5054
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    #@1d0
    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1d3
    .line 5058
    :goto_a
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsThatDismissKeyguard:Ljava/util/HashSet;

    #@1d5
    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1d8
    goto :goto_6

    #@1d9
    .line 5056
    :cond_1c
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    #@1db
    invoke-virtual {v7, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@1de
    goto :goto_a

    #@1df
    .line 5060
    :cond_1d
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    #@1e1
    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1e4
    goto/16 :goto_6

    #@1e6
    .line 5074
    :cond_1e
    const/4 v7, 0x1

    #@1e7
    goto :goto_7

    #@1e8
    .line 5077
    :cond_1f
    const/4 v7, 0x0

    #@1e9
    goto :goto_8

    #@1ea
    .line 5078
    :cond_20
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    #@1ec
    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    #@1ef
    move-result v7

    #@1f0
    if-eqz v7, :cond_17

    #@1f2
    if-eqz v5, :cond_17

    #@1f4
    .line 5079
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDrawnLw()Z

    #@1f7
    move-result v7

    #@1f8
    if-nez v7, :cond_21

    #@1fa
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasAppShownWindows()Z

    #@1fd
    move-result v7

    #@1fe
    .line 5078
    if-eqz v7, :cond_17

    #@200
    .line 5082
    :cond_21
    const/4 v7, 0x1

    #@201
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    #@203
    .line 5083
    const/4 v7, 0x0

    #@204
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    #@206
    goto :goto_9

    #@207
    .line 5107
    .end local v0    # "appToken":Landroid/view/IApplicationToken;
    :cond_22
    const/4 v4, 0x1

    #@208
    goto/16 :goto_4
.end method

.method public beginLayoutLw(ZIIII)V
    .locals 27
    .param p1, "isDefaultDisplay"    # Z
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I
    .param p4, "displayRotation"    # I
    .param p5, "uiMode"    # I

    #@0
    .prologue
    .line 3977
    move/from16 v0, p4

    #@2
    move-object/from16 v1, p0

    #@4
    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDisplayRotation:I

    #@6
    .line 3979
    if-eqz p1, :cond_5

    #@8
    .line 3980
    packed-switch p4, :pswitch_data_0

    #@b
    .line 4000
    move-object/from16 v0, p0

    #@d
    iget v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    #@f
    .line 4001
    .local v7, "overscanLeft":I
    move-object/from16 v0, p0

    #@11
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    #@13
    move/from16 v25, v0

    #@15
    .line 4002
    .local v25, "overscanTop":I
    move-object/from16 v0, p0

    #@17
    iget v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    #@19
    .line 4003
    .local v8, "overscanRight":I
    move-object/from16 v0, p0

    #@1b
    iget v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    #@1d
    .line 4012
    .local v9, "overscanBottom":I
    :goto_0
    const/4 v2, 0x0

    #@1e
    move-object/from16 v0, p0

    #@20
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    #@22
    const/4 v2, 0x0

    #@23
    move-object/from16 v0, p0

    #@25
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    #@27
    .line 4013
    const/4 v2, 0x0

    #@28
    move-object/from16 v0, p0

    #@2a
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    #@2c
    const/4 v2, 0x0

    #@2d
    move-object/from16 v0, p0

    #@2f
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    #@31
    .line 4014
    move/from16 v0, p2

    #@33
    move-object/from16 v1, p0

    #@35
    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    #@37
    move/from16 v0, p2

    #@39
    move-object/from16 v1, p0

    #@3b
    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    #@3d
    .line 4015
    move/from16 v0, p3

    #@3f
    move-object/from16 v1, p0

    #@41
    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    #@43
    move/from16 v0, p3

    #@45
    move-object/from16 v1, p0

    #@47
    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    #@49
    .line 4016
    const/4 v2, 0x0

    #@4a
    move-object/from16 v0, p0

    #@4c
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemLeft:I

    #@4e
    .line 4017
    const/4 v2, 0x0

    #@4f
    move-object/from16 v0, p0

    #@51
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemTop:I

    #@53
    .line 4018
    move/from16 v0, p2

    #@55
    move-object/from16 v1, p0

    #@57
    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemRight:I

    #@59
    .line 4019
    move/from16 v0, p3

    #@5b
    move-object/from16 v1, p0

    #@5d
    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemBottom:I

    #@5f
    .line 4020
    move-object/from16 v0, p0

    #@61
    iput v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@63
    .line 4021
    move/from16 v0, v25

    #@65
    move-object/from16 v1, p0

    #@67
    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@69
    .line 4022
    sub-int v2, p2, v7

    #@6b
    sub-int/2addr v2, v8

    #@6c
    move-object/from16 v0, p0

    #@6e
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    #@70
    .line 4023
    sub-int v2, p3, v25

    #@72
    sub-int/2addr v2, v9

    #@73
    move-object/from16 v0, p0

    #@75
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    #@77
    .line 4024
    move-object/from16 v0, p0

    #@79
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@7b
    move-object/from16 v0, p0

    #@7d
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    #@7f
    .line 4025
    move-object/from16 v0, p0

    #@81
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@83
    move-object/from16 v0, p0

    #@85
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    #@87
    .line 4026
    move-object/from16 v0, p0

    #@89
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    #@8b
    move-object/from16 v0, p0

    #@8d
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    #@8f
    iput v2, v3, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenWidth:I

    #@91
    move-object/from16 v0, p0

    #@93
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    #@95
    .line 4027
    move-object/from16 v0, p0

    #@97
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    #@99
    move-object/from16 v0, p0

    #@9b
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    #@9d
    iput v2, v3, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenHeight:I

    #@9f
    move-object/from16 v0, p0

    #@a1
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    #@a3
    .line 4029
    move-object/from16 v0, p0

    #@a5
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@a7
    move-object/from16 v0, p0

    #@a9
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    #@ab
    .line 4028
    move-object/from16 v0, p0

    #@ad
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenLeft:I

    #@af
    move-object/from16 v0, p0

    #@b1
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    #@b3
    move-object/from16 v0, p0

    #@b5
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    #@b7
    move-object/from16 v0, p0

    #@b9
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    #@bb
    move-object/from16 v0, p0

    #@bd
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    #@bf
    .line 4031
    move-object/from16 v0, p0

    #@c1
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@c3
    move-object/from16 v0, p0

    #@c5
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    #@c7
    .line 4030
    move-object/from16 v0, p0

    #@c9
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenTop:I

    #@cb
    move-object/from16 v0, p0

    #@cd
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    #@cf
    move-object/from16 v0, p0

    #@d1
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    #@d3
    move-object/from16 v0, p0

    #@d5
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    #@d7
    move-object/from16 v0, p0

    #@d9
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    #@db
    .line 4033
    sub-int v2, p2, v8

    #@dd
    move-object/from16 v0, p0

    #@df
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    #@e1
    .line 4032
    move-object/from16 v0, p0

    #@e3
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenRight:I

    #@e5
    move-object/from16 v0, p0

    #@e7
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    #@e9
    move-object/from16 v0, p0

    #@eb
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    #@ed
    move-object/from16 v0, p0

    #@ef
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    #@f1
    move-object/from16 v0, p0

    #@f3
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    #@f5
    .line 4035
    sub-int v2, p3, v9

    #@f7
    move-object/from16 v0, p0

    #@f9
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    #@fb
    .line 4034
    move-object/from16 v0, p0

    #@fd
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenBottom:I

    #@ff
    move-object/from16 v0, p0

    #@101
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    #@103
    move-object/from16 v0, p0

    #@105
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    #@107
    move-object/from16 v0, p0

    #@109
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    #@10b
    move-object/from16 v0, p0

    #@10d
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    #@10f
    .line 4036
    const/high16 v2, 0x10000000

    #@111
    move-object/from16 v0, p0

    #@113
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLayer:I

    #@115
    .line 4037
    const/4 v2, -0x1

    #@116
    move-object/from16 v0, p0

    #@118
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarLayer:I

    #@11a
    .line 4040
    sget-object v16, Lcom/android/server/policy/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    #@11c
    .line 4041
    .local v16, "pf":Landroid/graphics/Rect;
    sget-object v17, Lcom/android/server/policy/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    #@11e
    .line 4042
    .local v17, "df":Landroid/graphics/Rect;
    sget-object v18, Lcom/android/server/policy/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    #@120
    .line 4043
    .local v18, "of":Landroid/graphics/Rect;
    sget-object v19, Lcom/android/server/policy/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    #@122
    .line 4044
    .local v19, "vf":Landroid/graphics/Rect;
    sget-object v10, Lcom/android/server/policy/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    #@124
    .line 4045
    .local v10, "dcf":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@126
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    #@128
    move-object/from16 v0, v19

    #@12a
    iput v2, v0, Landroid/graphics/Rect;->left:I

    #@12c
    move-object/from16 v0, v18

    #@12e
    iput v2, v0, Landroid/graphics/Rect;->left:I

    #@130
    move-object/from16 v0, v17

    #@132
    iput v2, v0, Landroid/graphics/Rect;->left:I

    #@134
    move-object/from16 v0, v16

    #@136
    iput v2, v0, Landroid/graphics/Rect;->left:I

    #@138
    .line 4046
    move-object/from16 v0, p0

    #@13a
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    #@13c
    move-object/from16 v0, v19

    #@13e
    iput v2, v0, Landroid/graphics/Rect;->top:I

    #@140
    move-object/from16 v0, v18

    #@142
    iput v2, v0, Landroid/graphics/Rect;->top:I

    #@144
    move-object/from16 v0, v17

    #@146
    iput v2, v0, Landroid/graphics/Rect;->top:I

    #@148
    move-object/from16 v0, v16

    #@14a
    iput v2, v0, Landroid/graphics/Rect;->top:I

    #@14c
    .line 4047
    move-object/from16 v0, p0

    #@14e
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    #@150
    move-object/from16 v0, v19

    #@152
    iput v2, v0, Landroid/graphics/Rect;->right:I

    #@154
    move-object/from16 v0, v18

    #@156
    iput v2, v0, Landroid/graphics/Rect;->right:I

    #@158
    move-object/from16 v0, v17

    #@15a
    iput v2, v0, Landroid/graphics/Rect;->right:I

    #@15c
    move-object/from16 v0, v16

    #@15e
    iput v2, v0, Landroid/graphics/Rect;->right:I

    #@160
    .line 4048
    move-object/from16 v0, p0

    #@162
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    #@164
    move-object/from16 v0, v19

    #@166
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    #@168
    move-object/from16 v0, v18

    #@16a
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    #@16c
    move-object/from16 v0, v17

    #@16e
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    #@170
    move-object/from16 v0, v16

    #@172
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    #@174
    .line 4049
    invoke-virtual {v10}, Landroid/graphics/Rect;->setEmpty()V

    #@177
    .line 4051
    if-eqz p1, :cond_4

    #@179
    .line 4054
    move-object/from16 v0, p0

    #@17b
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    #@17d
    move/from16 v21, v0

    #@17f
    .line 4055
    .local v21, "sysui":I
    and-int/lit8 v2, v21, 0x2

    #@181
    if-nez v2, :cond_6

    #@183
    const/4 v11, 0x1

    #@184
    .line 4057
    .local v11, "navVisible":Z
    :goto_1
    const v2, -0x7fff8000

    #@187
    .line 4056
    and-int v2, v2, v21

    #@189
    if-eqz v2, :cond_7

    #@18b
    const/4 v12, 0x1

    #@18c
    .line 4058
    .local v12, "navTranslucent":Z
    :goto_2
    move/from16 v0, v21

    #@18e
    and-int/lit16 v2, v0, 0x800

    #@190
    if-eqz v2, :cond_8

    #@192
    const/16 v23, 0x1

    #@194
    .line 4059
    .local v23, "immersive":Z
    :goto_3
    move/from16 v0, v21

    #@196
    and-int/lit16 v2, v0, 0x1000

    #@198
    if-eqz v2, :cond_9

    #@19a
    const/16 v24, 0x1

    #@19c
    .line 4060
    .local v24, "immersiveSticky":Z
    :goto_4
    if-nez v23, :cond_a

    #@19e
    move/from16 v13, v24

    #@1a0
    .line 4061
    :goto_5
    if-eqz v24, :cond_b

    #@1a2
    const/4 v2, 0x0

    #@1a3
    :goto_6
    and-int/2addr v12, v2

    #@1a4
    .line 4062
    .local v12, "navTranslucent":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    #@1a7
    move-result v2

    #@1a8
    if-eqz v2, :cond_0

    #@1aa
    move-object/from16 v0, p0

    #@1ac
    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    #@1ae
    if-eqz v2, :cond_c

    #@1b0
    :cond_0
    const/16 v22, 0x0

    #@1b2
    .line 4063
    .local v22, "isKeyguardShowing":Z
    :goto_7
    if-nez v22, :cond_1

    #@1b4
    .line 4064
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    #@1b7
    move-result v2

    #@1b8
    and-int/2addr v12, v2

    #@1b9
    .line 4066
    :cond_1
    if-nez v22, :cond_e

    #@1bb
    move-object/from16 v0, p0

    #@1bd
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@1bf
    if-eqz v2, :cond_e

    #@1c1
    .line 4067
    move-object/from16 v0, p0

    #@1c3
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@1c5
    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@1c8
    move-result-object v2

    #@1c9
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    #@1cb
    const/4 v3, -0x1

    #@1cc
    if-ne v2, v3, :cond_e

    #@1ce
    .line 4068
    move-object/from16 v0, p0

    #@1d0
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@1d2
    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@1d5
    move-result-object v2

    #@1d6
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    #@1d8
    const/4 v3, -0x1

    #@1d9
    if-ne v2, v3, :cond_d

    #@1db
    const/4 v14, 0x1

    #@1dc
    .line 4074
    .local v14, "statusBarExpandedNotKeyguard":Z
    :goto_8
    if-nez v11, :cond_2

    #@1de
    if-eqz v13, :cond_f

    #@1e0
    .line 4075
    :cond_2
    move-object/from16 v0, p0

    #@1e2
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

    #@1e4
    if-eqz v2, :cond_3

    #@1e6
    .line 4076
    move-object/from16 v0, p0

    #@1e8
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@1ea
    .line 4077
    move-object/from16 v0, p0

    #@1ec
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@1ee
    move-object/from16 v0, p0

    #@1f0
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

    #@1f2
    const/16 v5, 0x13

    #@1f4
    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@1f7
    move-result-object v3

    #@1f8
    .line 4076
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@1fb
    .line 4078
    const/4 v2, 0x0

    #@1fc
    move-object/from16 v0, p0

    #@1fe
    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

    #@200
    .line 4088
    :cond_3
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    #@203
    move-result v2

    #@204
    if-eqz v2, :cond_10

    #@206
    const/4 v2, 0x0

    #@207
    :goto_a
    or-int/2addr v11, v2

    #@208
    .local v11, "navVisible":Z
    move-object/from16 v2, p0

    #@20a
    move/from16 v3, p2

    #@20c
    move/from16 v4, p3

    #@20e
    move/from16 v5, p4

    #@210
    move/from16 v6, p5

    #@212
    .line 4090
    invoke-direct/range {v2 .. v14}, Lcom/android/server/policy/PhoneWindowManager;->layoutNavigationBar(IIIIIIILandroid/graphics/Rect;ZZZZ)Z

    #@215
    move-result v26

    #@216
    .local v26, "updateSysUiVisibility":Z
    move-object/from16 v15, p0

    #@218
    move-object/from16 v20, v10

    #@21a
    .line 4095
    invoke-direct/range {v15 .. v22}, Lcom/android/server/policy/PhoneWindowManager;->layoutStatusBar(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)Z

    #@21d
    move-result v2

    #@21e
    or-int v26, v26, v2

    #@220
    .line 4096
    if-eqz v26, :cond_4

    #@222
    .line 4097
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    #@225
    .line 3976
    .end local v11    # "navVisible":Z
    .end local v12    # "navTranslucent":Z
    .end local v14    # "statusBarExpandedNotKeyguard":Z
    .end local v21    # "sysui":I
    .end local v22    # "isKeyguardShowing":Z
    .end local v23    # "immersive":Z
    .end local v24    # "immersiveSticky":Z
    .end local v26    # "updateSysUiVisibility":Z
    :cond_4
    return-void

    #@226
    .line 3982
    .end local v7    # "overscanLeft":I
    .end local v8    # "overscanRight":I
    .end local v9    # "overscanBottom":I
    .end local v10    # "dcf":Landroid/graphics/Rect;
    .end local v16    # "pf":Landroid/graphics/Rect;
    .end local v17    # "df":Landroid/graphics/Rect;
    .end local v18    # "of":Landroid/graphics/Rect;
    .end local v19    # "vf":Landroid/graphics/Rect;
    .end local v25    # "overscanTop":I
    :pswitch_0
    move-object/from16 v0, p0

    #@228
    iget v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    #@22a
    .line 3983
    .restart local v7    # "overscanLeft":I
    move-object/from16 v0, p0

    #@22c
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    #@22e
    move/from16 v25, v0

    #@230
    .line 3984
    .restart local v25    # "overscanTop":I
    move-object/from16 v0, p0

    #@232
    iget v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    #@234
    .line 3985
    .restart local v8    # "overscanRight":I
    move-object/from16 v0, p0

    #@236
    iget v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    #@238
    .restart local v9    # "overscanBottom":I
    goto/16 :goto_0

    #@23a
    .line 3988
    .end local v7    # "overscanLeft":I
    .end local v8    # "overscanRight":I
    .end local v9    # "overscanBottom":I
    .end local v25    # "overscanTop":I
    :pswitch_1
    move-object/from16 v0, p0

    #@23c
    iget v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    #@23e
    .line 3989
    .restart local v7    # "overscanLeft":I
    move-object/from16 v0, p0

    #@240
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    #@242
    move/from16 v25, v0

    #@244
    .line 3990
    .restart local v25    # "overscanTop":I
    move-object/from16 v0, p0

    #@246
    iget v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    #@248
    .line 3991
    .restart local v8    # "overscanRight":I
    move-object/from16 v0, p0

    #@24a
    iget v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    #@24c
    .restart local v9    # "overscanBottom":I
    goto/16 :goto_0

    #@24e
    .line 3994
    .end local v7    # "overscanLeft":I
    .end local v8    # "overscanRight":I
    .end local v9    # "overscanBottom":I
    .end local v25    # "overscanTop":I
    :pswitch_2
    move-object/from16 v0, p0

    #@250
    iget v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    #@252
    .line 3995
    .restart local v7    # "overscanLeft":I
    move-object/from16 v0, p0

    #@254
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    #@256
    move/from16 v25, v0

    #@258
    .line 3996
    .restart local v25    # "overscanTop":I
    move-object/from16 v0, p0

    #@25a
    iget v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    #@25c
    .line 3997
    .restart local v8    # "overscanRight":I
    move-object/from16 v0, p0

    #@25e
    iget v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    #@260
    .restart local v9    # "overscanBottom":I
    goto/16 :goto_0

    #@262
    .line 4007
    .end local v7    # "overscanLeft":I
    .end local v8    # "overscanRight":I
    .end local v9    # "overscanBottom":I
    .end local v25    # "overscanTop":I
    :cond_5
    const/4 v7, 0x0

    #@263
    .line 4008
    .restart local v7    # "overscanLeft":I
    const/16 v25, 0x0

    #@265
    .line 4009
    .restart local v25    # "overscanTop":I
    const/4 v8, 0x0

    #@266
    .line 4010
    .restart local v8    # "overscanRight":I
    const/4 v9, 0x0

    #@267
    .restart local v9    # "overscanBottom":I
    goto/16 :goto_0

    #@269
    .line 4055
    .restart local v10    # "dcf":Landroid/graphics/Rect;
    .restart local v16    # "pf":Landroid/graphics/Rect;
    .restart local v17    # "df":Landroid/graphics/Rect;
    .restart local v18    # "of":Landroid/graphics/Rect;
    .restart local v19    # "vf":Landroid/graphics/Rect;
    .restart local v21    # "sysui":I
    :cond_6
    const/4 v11, 0x0

    #@26a
    .local v11, "navVisible":Z
    goto/16 :goto_1

    #@26c
    .line 4056
    :cond_7
    const/4 v12, 0x0

    #@26d
    .local v12, "navTranslucent":Z
    goto/16 :goto_2

    #@26f
    .line 4058
    :cond_8
    const/16 v23, 0x0

    #@271
    .restart local v23    # "immersive":Z
    goto/16 :goto_3

    #@273
    .line 4059
    :cond_9
    const/16 v24, 0x0

    #@275
    .restart local v24    # "immersiveSticky":Z
    goto/16 :goto_4

    #@277
    .line 4060
    :cond_a
    const/4 v13, 0x1

    #@278
    .local v13, "navAllowedHidden":Z
    goto/16 :goto_5

    #@27a
    .line 4061
    .end local v13    # "navAllowedHidden":Z
    :cond_b
    const/4 v2, 0x1

    #@27b
    goto/16 :goto_6

    #@27d
    .line 4062
    .local v12, "navTranslucent":Z
    :cond_c
    const/16 v22, 0x1

    #@27f
    goto/16 :goto_7

    #@281
    .line 4068
    .restart local v22    # "isKeyguardShowing":Z
    :cond_d
    const/4 v14, 0x0

    #@282
    .restart local v14    # "statusBarExpandedNotKeyguard":Z
    goto/16 :goto_8

    #@284
    .line 4066
    .end local v14    # "statusBarExpandedNotKeyguard":Z
    :cond_e
    const/4 v14, 0x0

    #@285
    .restart local v14    # "statusBarExpandedNotKeyguard":Z
    goto/16 :goto_8

    #@287
    .line 4080
    :cond_f
    move-object/from16 v0, p0

    #@289
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

    #@28b
    if-nez v2, :cond_3

    #@28d
    .line 4081
    move-object/from16 v0, p0

    #@28f
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@291
    move-object/from16 v0, p0

    #@293
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@295
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@298
    move-result-object v3

    #@299
    .line 4082
    move-object/from16 v0, p0

    #@29b
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

    #@29d
    .line 4081
    invoke-interface {v2, v3, v4}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->addInputConsumer(Landroid/os/Looper;Landroid/view/InputEventReceiver$Factory;)Landroid/view/WindowManagerPolicy$InputConsumer;

    #@2a0
    move-result-object v2

    #@2a1
    move-object/from16 v0, p0

    #@2a3
    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

    #@2a5
    goto/16 :goto_9

    #@2a7
    .line 4088
    :cond_10
    const/4 v2, 0x1

    #@2a8
    goto/16 :goto_a

    #@2aa
    .line 3980
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
    .line 4964
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@4
    .line 4965
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@6
    .line 4966
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@8
    .line 4967
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@a
    .line 4968
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    #@c
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    #@f
    .line 4969
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsThatDismissKeyguard:Ljava/util/HashSet;

    #@11
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    #@14
    .line 4970
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    #@16
    .line 4971
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    #@18
    .line 4972
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarTransparent:Z

    #@1a
    .line 4973
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    #@1c
    .line 4974
    const/4 v1, -0x1

    #@1d
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBarLayer:I

    #@1f
    .line 4976
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    #@21
    .line 4977
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    #@23
    .line 4978
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    #@25
    .line 4979
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingLockscreen:Z

    #@27
    .line 4980
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    #@29
    .line 4981
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    #@2b
    .line 4982
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    #@2d
    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure(I)Z

    #@30
    move-result v1

    #@31
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    #@33
    .line 4983
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    #@35
    if-eqz v1, :cond_0

    #@37
    .line 4984
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@39
    if-eqz v1, :cond_0

    #@3b
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@3d
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    #@40
    move-result v0

    #@41
    .line 4983
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecureIncludingHidden:Z

    #@43
    .line 4963
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
    .line 2561
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    #@3
    sparse-switch v1, :sswitch_data_0

    #@6
    .line 2570
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBaseType()I

    #@9
    move-result v1

    #@a
    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->windowTypeToLayerLw(I)I

    #@d
    move-result v1

    #@e
    .line 2571
    const/16 v2, 0x7d0

    #@10
    invoke-virtual {p0, v2}, Lcom/android/server/policy/PhoneWindowManager;->windowTypeToLayerLw(I)I

    #@13
    move-result v2

    #@14
    .line 2570
    if-ge v1, v2, :cond_0

    #@16
    const/4 v0, 0x1

    #@17
    :cond_0
    return v0

    #@18
    .line 2567
    :sswitch_0
    return v0

    #@19
    .line 2561
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
    .line 7769
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 7777
    const/4 v0, 0x1

    #@4
    return v0

    #@5
    .line 7774
    :sswitch_0
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 7769
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

.method public canShowDismissingWindowWhileLockedLw()Z
    .locals 1

    #@0
    .prologue
    .line 3596
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@6
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isTrusted()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public checkAddPermission(Landroid/view/WindowManager$LayoutParams;[I)I
    .locals 12
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "outAppOp"    # [I

    #@0
    .prologue
    const/16 v11, 0xbb7

    #@2
    const/16 v8, 0x7d0

    #@4
    const/16 v7, 0x3e8

    #@6
    const/4 v10, -0x8

    #@7
    const/4 v9, 0x0

    #@8
    .line 2075
    iget v5, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@a
    .line 2077
    .local v5, "type":I
    const/4 v6, -0x1

    #@b
    aput v6, p2, v9

    #@d
    .line 2079
    const/4 v6, 0x1

    #@e
    if-lt v5, v6, :cond_0

    #@10
    const/16 v6, 0x63

    #@12
    if-le v5, v6, :cond_3

    #@14
    .line 2080
    :cond_0
    if-lt v5, v7, :cond_1

    #@16
    const/16 v6, 0x7cf

    #@18
    if-le v5, v6, :cond_3

    #@1a
    .line 2081
    :cond_1
    if-lt v5, v8, :cond_2

    #@1c
    if-le v5, v11, :cond_3

    #@1e
    .line 2082
    :cond_2
    const/16 v6, -0xa

    #@20
    return v6

    #@21
    .line 2085
    :cond_3
    if-lt v5, v8, :cond_4

    #@23
    if-le v5, v11, :cond_5

    #@25
    .line 2087
    :cond_4
    return v9

    #@26
    .line 2089
    :cond_5
    const/4 v4, 0x0

    #@27
    .line 2090
    .local v4, "permission":Ljava/lang/String;
    sparse-switch v5, :sswitch_data_0

    #@2a
    .line 2115
    const-string/jumbo v4, "android.permission.INTERNAL_SYSTEM_WINDOW"

    #@2d
    .line 2117
    .end local v4    # "permission":Ljava/lang/String;
    :goto_0
    :sswitch_0
    if-eqz v4, :cond_a

    #@2f
    .line 2118
    const-string/jumbo v6, "android.permission.SYSTEM_ALERT_WINDOW"

    #@32
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v6

    #@36
    if-eqz v6, :cond_9

    #@38
    .line 2119
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3b
    move-result v1

    #@3c
    .line 2121
    .local v1, "callingUid":I
    if-ne v1, v7, :cond_6

    #@3e
    .line 2122
    return v9

    #@3f
    .line 2095
    .end local v1    # "callingUid":I
    .restart local v4    # "permission":Ljava/lang/String;
    :sswitch_1
    const/16 v6, 0x2d

    #@41
    aput v6, p2, v9

    #@43
    goto :goto_0

    #@44
    .line 2111
    :sswitch_2
    const-string/jumbo v4, "android.permission.SYSTEM_ALERT_WINDOW"

    #@47
    .line 2112
    .local v4, "permission":Ljava/lang/String;
    const/16 v6, 0x18

    #@49
    aput v6, p2, v9

    #@4b
    goto :goto_0

    #@4c
    .line 2127
    .end local v4    # "permission":Ljava/lang/String;
    .restart local v1    # "callingUid":I
    :cond_6
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    #@4e
    aget v7, p2, v9

    #@50
    .line 2128
    iget-object v8, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@52
    .line 2127
    invoke-virtual {v6, v7, v1, v8}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    #@55
    move-result v3

    #@56
    .line 2129
    .local v3, "mode":I
    packed-switch v3, :pswitch_data_0

    #@59
    .line 2151
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@5b
    invoke-virtual {v6, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    #@5e
    move-result v6

    #@5f
    if-eqz v6, :cond_8

    #@61
    .line 2153
    return v10

    #@62
    .line 2134
    :pswitch_0
    return v9

    #@63
    .line 2137
    :pswitch_1
    :try_start_0
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@65
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@68
    move-result-object v6

    #@69
    .line 2138
    iget-object v7, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@6b
    .line 2139
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    #@6e
    move-result v8

    #@6f
    .line 2137
    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@72
    move-result-object v0

    #@73
    .line 2141
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@75
    const/16 v7, 0x17

    #@77
    if-ge v6, v7, :cond_7

    #@79
    .line 2142
    return v9

    #@7a
    .line 2144
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    #@7b
    .line 2147
    :cond_7
    return v10

    #@7c
    .line 2155
    :cond_8
    return v9

    #@7d
    .line 2160
    .end local v1    # "callingUid":I
    .end local v3    # "mode":I
    :cond_9
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@7f
    invoke-virtual {v6, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@82
    move-result v6

    #@83
    if-eqz v6, :cond_a

    #@85
    .line 2162
    return v10

    #@86
    .line 2165
    :cond_a
    return v9

    #@87
    .line 2090
    nop

    #@88
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
        0x7f3 -> :sswitch_0
    .end sparse-switch

    #@be
    .line 2129
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
    .line 2173
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@4
    sparse-switch v2, :sswitch_data_0

    #@7
    .line 2180
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@9
    and-int/lit8 v2, v2, 0x10

    #@b
    if-nez v2, :cond_0

    #@d
    .line 2181
    return v0

    #@e
    .line 2211
    :cond_0
    :sswitch_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@10
    .line 2212
    const-string/jumbo v3, "android.permission.INTERNAL_SYSTEM_WINDOW"

    #@13
    .line 2211
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
    .line 2173
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
        0x7f2 -> :sswitch_0
    .end sparse-switch
.end method

.method public createForceHideEnterAnimation(ZZ)Landroid/view/animation/Animation;
    .locals 5
    .param p1, "onWallpaper"    # Z
    .param p2, "goingToNotificationShade"    # Z

    #@0
    .prologue
    .line 2957
    if-eqz p2, :cond_0

    #@2
    .line 2958
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@4
    const v4, 0x10a0055

    #@7
    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@a
    move-result-object v3

    #@b
    return-object v3

    #@c
    .line 2961
    :cond_0
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@e
    if-eqz p1, :cond_1

    #@10
    .line 2962
    const v3, 0x10a0056

    #@13
    .line 2961
    :goto_0
    invoke-static {v4, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Landroid/view/animation/AnimationSet;

    #@19
    .line 2966
    .local v2, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v2}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    #@1c
    move-result-object v0

    #@1d
    .line 2967
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
    .line 2968
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
    .line 2967
    add-int/lit8 v1, v1, -0x1

    #@32
    goto :goto_1

    #@33
    .line 2963
    .end local v0    # "animations":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    .end local v1    # "i":I
    .end local v2    # "set":Landroid/view/animation/AnimationSet;
    :cond_1
    const v3, 0x10a0054

    #@36
    goto :goto_0

    #@37
    .line 2971
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
    .line 2977
    if-eqz p1, :cond_0

    #@2
    .line 2978
    const/4 v0, 0x0

    #@3
    return-object v0

    #@4
    .line 2980
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@6
    const v1, 0x10a0059

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
    .line 7203
    const/4 v2, 0x0

    #@3
    .line 7208
    .local v2, "intent":Landroid/content/Intent;
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    #@5
    if-ne v4, v6, :cond_0

    #@7
    .line 7209
    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    #@9
    if-eqz v4, :cond_1

    #@b
    .line 7210
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    #@d
    .local v2, "intent":Landroid/content/Intent;
    move-object v3, v2

    #@e
    .line 7224
    .end local v2    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    :goto_0
    if-nez v3, :cond_6

    #@10
    .line 7225
    return-object v7

    #@11
    .line 7212
    .end local v3    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    :cond_0
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    #@13
    const/4 v5, 0x2

    #@14
    if-ne v4, v5, :cond_2

    #@16
    :cond_1
    move-object v3, v2

    #@17
    .restart local v3    # "intent":Landroid/content/Intent;
    goto :goto_0

    #@18
    .line 7216
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_2
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    #@1a
    const/4 v5, 0x6

    #@1b
    if-ne v4, v5, :cond_5

    #@1d
    .line 7217
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    #@1f
    const/4 v5, 0x1

    #@20
    if-eq v4, v5, :cond_3

    #@22
    .line 7218
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    #@24
    const/4 v5, 0x4

    #@25
    if-ne v4, v5, :cond_4

    #@27
    .line 7221
    :cond_3
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    #@29
    .local v2, "intent":Landroid/content/Intent;
    move-object v3, v2

    #@2a
    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    goto :goto_0

    #@2b
    .line 7219
    .end local v3    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    :cond_4
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    #@2d
    if-eq v4, v6, :cond_3

    #@2f
    :cond_5
    move-object v3, v2

    #@30
    .restart local v3    # "intent":Landroid/content/Intent;
    goto :goto_0

    #@31
    .line 7228
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_6
    const/4 v0, 0x0

    #@32
    .line 7229
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@34
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@37
    move-result-object v4

    #@38
    .line 7232
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    #@3a
    .line 7231
    const v6, 0x10080

    #@3d
    .line 7229
    invoke-virtual {v4, v3, v6, v5}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    #@40
    move-result-object v1

    #@41
    .line 7233
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_7

    #@43
    .line 7234
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@45
    .line 7236
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_7
    if-eqz v0, :cond_8

    #@47
    .line 7237
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    #@49
    if-eqz v4, :cond_8

    #@4b
    .line 7238
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    #@4d
    const-string/jumbo v5, "android.dock_home"

    #@50
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@53
    move-result v4

    #@54
    .line 7236
    if-eqz v4, :cond_8

    #@56
    .line 7239
    new-instance v2, Landroid/content/Intent;

    #@58
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@5b
    .line 7240
    .end local v3    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@5d
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@5f
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@62
    .line 7241
    return-object v2

    #@63
    .line 7244
    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_8
    return-object v7
.end method

.method public dismissKeyguardLw()V
    .locals 2

    #@0
    .prologue
    .line 6568
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
    .line 6570
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@e
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$18;

    #@10
    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$18;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@16
    .line 6567
    :cond_0
    return-void
.end method

.method dispatchMediaKeyRepeatWithWakeLock(Landroid/view/KeyEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 6148
    const/4 v1, 0x0

    #@1
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    #@3
    .line 6151
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
    .line 6150
    invoke-static {p1, v2, v3, v4, v1}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    #@11
    move-result-object v0

    #@12
    .line 6156
    .local v0, "repeatEvent":Landroid/view/KeyEvent;
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    #@15
    .line 6157
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    #@17
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    #@1a
    .line 6147
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
    .line 6122
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 6127
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@9
    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    #@c
    .line 6128
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    #@e
    .line 6129
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    #@10
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    #@13
    .line 6132
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    #@16
    .line 6134
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@19
    move-result v1

    #@1a
    if-nez v1, :cond_1

    #@1c
    .line 6135
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@1f
    move-result v1

    #@20
    if-nez v1, :cond_1

    #@22
    .line 6136
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    #@24
    .line 6138
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@26
    invoke-virtual {v1, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@29
    move-result-object v0

    #@2a
    .line 6140
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    #@2d
    .line 6141
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
    .line 6117
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    #@38
    .line 6143
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
    .line 6161
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 6162
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
    .line 6160
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
    .line 3512
    const/16 v18, 0x0

    #@2
    .line 3513
    .local v18, "fallbackEvent":Landroid/view/KeyEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    #@5
    move-result v4

    #@6
    and-int/lit16 v4, v4, 0x400

    #@8
    if-nez v4, :cond_1

    #@a
    .line 3514
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    #@d
    move-result-object v20

    #@e
    .line 3515
    .local v20, "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    #@11
    move-result v21

    #@12
    .line 3516
    .local v21, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    #@15
    move-result v22

    #@16
    .line 3517
    .local v22, "metaState":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    #@19
    move-result v4

    #@1a
    if-nez v4, :cond_3

    #@1c
    .line 3518
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@1f
    move-result v4

    #@20
    if-nez v4, :cond_2

    #@22
    const/16 v19, 0x1

    #@24
    .line 3522
    .local v19, "initialDown":Z
    :goto_0
    if-eqz v19, :cond_4

    #@26
    .line 3523
    invoke-virtual/range {v20 .. v22}, Landroid/view/KeyCharacterMap;->getFallbackAction(II)Landroid/view/KeyCharacterMap$FallbackAction;

    #@29
    move-result-object v17

    #@2a
    .line 3528
    .local v17, "fallbackAction":Landroid/view/KeyCharacterMap$FallbackAction;
    :goto_1
    if-eqz v17, :cond_1

    #@2c
    .line 3534
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    #@2f
    move-result v4

    #@30
    or-int/lit16 v14, v4, 0x400

    #@32
    .line 3536
    .local v14, "flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDownTime()J

    #@35
    move-result-wide v4

    #@36
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    #@39
    move-result-wide v6

    #@3a
    .line 3537
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    #@3d
    move-result v8

    #@3e
    move-object/from16 v0, v17

    #@40
    iget v9, v0, Landroid/view/KeyCharacterMap$FallbackAction;->keyCode:I

    #@42
    .line 3538
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@45
    move-result v10

    #@46
    move-object/from16 v0, v17

    #@48
    iget v11, v0, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    #@4a
    .line 3539
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    #@4d
    move-result v12

    #@4e
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getScanCode()I

    #@51
    move-result v13

    #@52
    .line 3540
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getSource()I

    #@55
    move-result v15

    #@56
    const/16 v16, 0x0

    #@58
    .line 3535
    invoke-static/range {v4 .. v16}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    #@5b
    move-result-object v18

    #@5c
    .line 3542
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
    .line 3543
    invoke-virtual/range {v18 .. v18}, Landroid/view/KeyEvent;->recycle()V

    #@6d
    .line 3544
    const/16 v18, 0x0

    #@6f
    .line 3547
    .end local v18    # "fallbackEvent":Landroid/view/KeyEvent;
    :cond_0
    if-eqz v19, :cond_5

    #@71
    .line 3548
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
    .line 3563
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
    .line 3518
    .local v18, "fallbackEvent":Landroid/view/KeyEvent;
    .restart local v20    # "kcm":Landroid/view/KeyCharacterMap;
    .restart local v21    # "keyCode":I
    .restart local v22    # "metaState":I
    :cond_2
    const/16 v19, 0x0

    #@7f
    goto :goto_0

    #@80
    .line 3517
    :cond_3
    const/16 v19, 0x0

    #@82
    goto :goto_0

    #@83
    .line 3525
    .restart local v19    # "initialDown":Z
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
    .line 3549
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
    .line 3550
    move-object/from16 v0, p0

    #@99
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    #@9b
    move/from16 v0, v21

    #@9d
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    #@a0
    .line 3551
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
    .line 7828
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
    .line 7829
    const-string/jumbo v0, " mSystemReady="

    #@11
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    #@16
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@19
    .line 7830
    const-string/jumbo v0, " mSystemBooted="

    #@1c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    #@21
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@24
    .line 7831
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
    .line 7832
    const-string/jumbo v0, " mLidOpenRotation="

    #@35
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@38
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidOpenRotation:I

    #@3a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@3d
    .line 7833
    const-string/jumbo v0, " mCameraLensCoverState="

    #@40
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@43
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    #@45
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@48
    .line 7834
    const-string/jumbo v0, " mHdmiPlugged="

    #@4b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4e
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    #@50
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@53
    .line 7835
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    #@55
    if-nez v0, :cond_0

    #@57
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    #@59
    if-eqz v0, :cond_13

    #@5b
    .line 7837
    :cond_0
    :goto_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5e
    const-string/jumbo v0, "mLastSystemUiFlags=0x"

    #@61
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@64
    .line 7838
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    #@66
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@69
    move-result-object v0

    #@6a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6d
    .line 7839
    const-string/jumbo v0, " mResettingSystemUiFlags=0x"

    #@70
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@73
    .line 7840
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    #@75
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@78
    move-result-object v0

    #@79
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7c
    .line 7841
    const-string/jumbo v0, " mForceClearedSystemUiFlags=0x"

    #@7f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@82
    .line 7842
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    #@84
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@87
    move-result-object v0

    #@88
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8b
    .line 7844
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    #@8d
    if-eqz v0, :cond_2

    #@8f
    .line 7845
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@92
    const-string/jumbo v0, "mLastFocusNeedsMenu="

    #@95
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@98
    .line 7846
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    #@9a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@9d
    .line 7848
    :cond_2
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a0
    const-string/jumbo v0, "mWakeGestureEnabledSetting="

    #@a3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a6
    .line 7849
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    #@a8
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@ab
    .line 7851
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
    .line 7852
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
    .line 7853
    const-string/jumbo v0, " mDockMode="

    #@ca
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@cd
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    #@cf
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@d2
    .line 7854
    const-string/jumbo v0, " mEnableCarDockHomeCapture="

    #@d5
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d8
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    #@da
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@dd
    .line 7855
    const-string/jumbo v0, " mCarDockRotation="

    #@e0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e3
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockRotation:I

    #@e5
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@e8
    .line 7856
    const-string/jumbo v0, " mDeskDockRotation="

    #@eb
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ee
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockRotation:I

    #@f0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@f3
    .line 7857
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f6
    const-string/jumbo v0, "mUserRotationMode="

    #@f9
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fc
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    #@fe
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@101
    .line 7858
    const-string/jumbo v0, " mUserRotation="

    #@104
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@107
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    #@109
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@10c
    .line 7859
    const-string/jumbo v0, " mAllowAllRotations="

    #@10f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@112
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    #@114
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@117
    .line 7860
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11a
    const-string/jumbo v0, "mCurrentAppOrientation="

    #@11d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@120
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    #@122
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@125
    .line 7861
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@128
    const-string/jumbo v0, "mCarDockEnablesAccelerometer="

    #@12b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12e
    .line 7862
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    #@130
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@133
    .line 7863
    const-string/jumbo v0, " mDeskDockEnablesAccelerometer="

    #@136
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@139
    .line 7864
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    #@13b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@13e
    .line 7865
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@141
    const-string/jumbo v0, "mLidKeyboardAccessibility="

    #@144
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@147
    .line 7866
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    #@149
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@14c
    .line 7867
    const-string/jumbo v0, " mLidNavigationAccessibility="

    #@14f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@152
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    #@154
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@157
    .line 7868
    const-string/jumbo v0, " mLidControlsScreenLock="

    #@15a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15d
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsScreenLock:Z

    #@15f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@162
    .line 7869
    const-string/jumbo v0, " mLidControlsSleep="

    #@165
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@168
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    #@16a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@16d
    .line 7870
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@170
    .line 7871
    const-string/jumbo v0, " mLongPressOnBackBehavior="

    #@173
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@176
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    #@178
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@17b
    .line 7872
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17e
    .line 7873
    const-string/jumbo v0, "mShortPressOnPowerBehavior="

    #@181
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@184
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    #@186
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@189
    .line 7874
    const-string/jumbo v0, " mLongPressOnPowerBehavior="

    #@18c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18f
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    #@191
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@194
    .line 7875
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@197
    .line 7876
    const-string/jumbo v0, "mDoublePressOnPowerBehavior="

    #@19a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19d
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    #@19f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@1a2
    .line 7877
    const-string/jumbo v0, " mTriplePressOnPowerBehavior="

    #@1a5
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a8
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    #@1aa
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@1ad
    .line 7878
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b0
    const-string/jumbo v0, "mHasSoftInput="

    #@1b3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b6
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    #@1b8
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@1bb
    .line 7879
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1be
    const-string/jumbo v0, "mAwake="

    #@1c1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c4
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    #@1c6
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@1c9
    .line 7880
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1cc
    const-string/jumbo v0, "mScreenOnEarly="

    #@1cf
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d2
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    #@1d4
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@1d7
    .line 7881
    const-string/jumbo v0, " mScreenOnFully="

    #@1da
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1dd
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    #@1df
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@1e2
    .line 7882
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e5
    const-string/jumbo v0, "mKeyguardDrawComplete="

    #@1e8
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1eb
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    #@1ed
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@1f0
    .line 7883
    const-string/jumbo v0, " mWindowManagerDrawComplete="

    #@1f3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f6
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    #@1f8
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@1fb
    .line 7884
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1fe
    const-string/jumbo v0, "mOrientationSensorEnabled="

    #@201
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@204
    .line 7885
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    #@206
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@209
    .line 7886
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20c
    const-string/jumbo v0, "mOverscanScreen=("

    #@20f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@212
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    #@214
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@217
    .line 7887
    const-string/jumbo v0, ","

    #@21a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@21d
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    #@21f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@222
    .line 7888
    const-string/jumbo v0, ") "

    #@225
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@228
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    #@22a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@22d
    .line 7889
    const-string/jumbo v0, "x"

    #@230
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@233
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    #@235
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@238
    .line 7890
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    #@23a
    if-nez v0, :cond_3

    #@23c
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    #@23e
    if-eqz v0, :cond_14

    #@240
    .line 7892
    :cond_3
    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@243
    const-string/jumbo v0, "mOverscan left="

    #@246
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@249
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    #@24b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@24e
    .line 7893
    const-string/jumbo v0, " top="

    #@251
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@254
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    #@256
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@259
    .line 7894
    const-string/jumbo v0, " right="

    #@25c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@25f
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    #@261
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@264
    .line 7895
    const-string/jumbo v0, " bottom="

    #@267
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26a
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    #@26c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@26f
    .line 7897
    :cond_4
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@272
    const-string/jumbo v0, "mRestrictedOverscanScreen=("

    #@275
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@278
    .line 7898
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    #@27a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@27d
    .line 7899
    const-string/jumbo v0, ","

    #@280
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@283
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    #@285
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@288
    .line 7900
    const-string/jumbo v0, ") "

    #@28b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@28e
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    #@290
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@293
    .line 7901
    const-string/jumbo v0, "x"

    #@296
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@299
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    #@29b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@29e
    .line 7902
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2a1
    const-string/jumbo v0, "mUnrestrictedScreen=("

    #@2a4
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2a7
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@2a9
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@2ac
    .line 7903
    const-string/jumbo v0, ","

    #@2af
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2b2
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@2b4
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@2b7
    .line 7904
    const-string/jumbo v0, ") "

    #@2ba
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2bd
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    #@2bf
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@2c2
    .line 7905
    const-string/jumbo v0, "x"

    #@2c5
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2c8
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    #@2ca
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@2cd
    .line 7906
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2d0
    const-string/jumbo v0, "mRestrictedScreen=("

    #@2d3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2d6
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    #@2d8
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@2db
    .line 7907
    const-string/jumbo v0, ","

    #@2de
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2e1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    #@2e3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@2e6
    .line 7908
    const-string/jumbo v0, ") "

    #@2e9
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2ec
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    #@2ee
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@2f1
    .line 7909
    const-string/jumbo v0, "x"

    #@2f4
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2f7
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    #@2f9
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@2fc
    .line 7910
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2ff
    const-string/jumbo v0, "mStableFullscreen=("

    #@302
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@305
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenLeft:I

    #@307
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@30a
    .line 7911
    const-string/jumbo v0, ","

    #@30d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@310
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenTop:I

    #@312
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@315
    .line 7912
    const-string/jumbo v0, ")-("

    #@318
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@31b
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenRight:I

    #@31d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@320
    .line 7913
    const-string/jumbo v0, ","

    #@323
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@326
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenBottom:I

    #@328
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@32b
    const-string/jumbo v0, ")"

    #@32e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@331
    .line 7914
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@334
    const-string/jumbo v0, "mStable=("

    #@337
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@33a
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    #@33c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@33f
    .line 7915
    const-string/jumbo v0, ","

    #@342
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@345
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    #@347
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@34a
    .line 7916
    const-string/jumbo v0, ")-("

    #@34d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@350
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    #@352
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@355
    .line 7917
    const-string/jumbo v0, ","

    #@358
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@35b
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    #@35d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@360
    const-string/jumbo v0, ")"

    #@363
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@366
    .line 7918
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@369
    const-string/jumbo v0, "mSystem=("

    #@36c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@36f
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemLeft:I

    #@371
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@374
    .line 7919
    const-string/jumbo v0, ","

    #@377
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@37a
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemTop:I

    #@37c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@37f
    .line 7920
    const-string/jumbo v0, ")-("

    #@382
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@385
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemRight:I

    #@387
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@38a
    .line 7921
    const-string/jumbo v0, ","

    #@38d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@390
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBottom:I

    #@392
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@395
    const-string/jumbo v0, ")"

    #@398
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@39b
    .line 7922
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@39e
    const-string/jumbo v0, "mCur=("

    #@3a1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3a4
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    #@3a6
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@3a9
    .line 7923
    const-string/jumbo v0, ","

    #@3ac
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3af
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    #@3b1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@3b4
    .line 7924
    const-string/jumbo v0, ")-("

    #@3b7
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3ba
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    #@3bc
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@3bf
    .line 7925
    const-string/jumbo v0, ","

    #@3c2
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c5
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    #@3c7
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@3ca
    const-string/jumbo v0, ")"

    #@3cd
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3d0
    .line 7926
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3d3
    const-string/jumbo v0, "mContent=("

    #@3d6
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3d9
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    #@3db
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@3de
    .line 7927
    const-string/jumbo v0, ","

    #@3e1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3e4
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    #@3e6
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@3e9
    .line 7928
    const-string/jumbo v0, ")-("

    #@3ec
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3ef
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    #@3f1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@3f4
    .line 7929
    const-string/jumbo v0, ","

    #@3f7
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3fa
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    #@3fc
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@3ff
    const-string/jumbo v0, ")"

    #@402
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@405
    .line 7930
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@408
    const-string/jumbo v0, "mVoiceContent=("

    #@40b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@40e
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    #@410
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@413
    .line 7931
    const-string/jumbo v0, ","

    #@416
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@419
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    #@41b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@41e
    .line 7932
    const-string/jumbo v0, ")-("

    #@421
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@424
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    #@426
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@429
    .line 7933
    const-string/jumbo v0, ","

    #@42c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@42f
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    #@431
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@434
    const-string/jumbo v0, ")"

    #@437
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@43a
    .line 7934
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@43d
    const-string/jumbo v0, "mDock=("

    #@440
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@443
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    #@445
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@448
    .line 7935
    const-string/jumbo v0, ","

    #@44b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@44e
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    #@450
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@453
    .line 7936
    const-string/jumbo v0, ")-("

    #@456
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@459
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    #@45b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@45e
    .line 7937
    const-string/jumbo v0, ","

    #@461
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@464
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    #@466
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@469
    const-string/jumbo v0, ")"

    #@46c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@46f
    .line 7938
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@472
    const-string/jumbo v0, "mDockLayer="

    #@475
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@478
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLayer:I

    #@47a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@47d
    .line 7939
    const-string/jumbo v0, " mStatusBarLayer="

    #@480
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@483
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarLayer:I

    #@485
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@488
    .line 7940
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@48b
    const-string/jumbo v0, "mShowingLockscreen="

    #@48e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@491
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingLockscreen:Z

    #@493
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@496
    .line 7941
    const-string/jumbo v0, " mShowingDream="

    #@499
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@49c
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    #@49e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@4a1
    .line 7942
    const-string/jumbo v0, " mDreamingLockscreen="

    #@4a4
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4a7
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingLockscreen:Z

    #@4a9
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@4ac
    .line 7943
    const-string/jumbo v0, " mDreamingSleepToken="

    #@4af
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4b2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    #@4b4
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@4b7
    .line 7944
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    #@4b9
    if-eqz v0, :cond_5

    #@4bb
    .line 7945
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4be
    const-string/jumbo v0, "mLastInputMethodWindow="

    #@4c1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4c4
    .line 7946
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    #@4c6
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@4c9
    .line 7948
    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    #@4cb
    if-eqz v0, :cond_6

    #@4cd
    .line 7949
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4d0
    const-string/jumbo v0, "mLastInputMethodTargetWindow="

    #@4d3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4d6
    .line 7950
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    #@4d8
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@4db
    .line 7952
    :cond_6
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@4dd
    if-eqz v0, :cond_7

    #@4df
    .line 7953
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4e2
    const-string/jumbo v0, "mStatusBar="

    #@4e5
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4e8
    .line 7954
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@4ea
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@4ed
    const-string/jumbo v0, " isStatusBarKeyguard="

    #@4f0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4f3
    .line 7955
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    #@4f6
    move-result v0

    #@4f7
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@4fa
    .line 7957
    :cond_7
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@4fc
    if-eqz v0, :cond_8

    #@4fe
    .line 7958
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@501
    const-string/jumbo v0, "mNavigationBar="

    #@504
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@507
    .line 7959
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@509
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@50c
    .line 7961
    :cond_8
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    #@50e
    if-eqz v0, :cond_9

    #@510
    .line 7962
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@513
    const-string/jumbo v0, "mFocusedWindow="

    #@516
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@519
    .line 7963
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    #@51b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@51e
    .line 7965
    :cond_9
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    #@520
    if-eqz v0, :cond_a

    #@522
    .line 7966
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@525
    const-string/jumbo v0, "mFocusedApp="

    #@528
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@52b
    .line 7967
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    #@52d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@530
    .line 7969
    :cond_a
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    #@532
    if-eqz v0, :cond_b

    #@534
    .line 7970
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@537
    const-string/jumbo v0, "mWinDismissingKeyguard="

    #@53a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@53d
    .line 7971
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    #@53f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@542
    .line 7973
    :cond_b
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@544
    if-eqz v0, :cond_c

    #@546
    .line 7974
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@549
    const-string/jumbo v0, "mTopFullscreenOpaqueWindowState="

    #@54c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@54f
    .line 7975
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@551
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@554
    .line 7977
    :cond_c
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@556
    if-eqz v0, :cond_d

    #@558
    .line 7978
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@55b
    const-string/jumbo v0, "mTopFullscreenOpaqueOrDimmingWindowState="

    #@55e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@561
    .line 7979
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@563
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@566
    .line 7981
    :cond_d
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    #@568
    if-eqz v0, :cond_e

    #@56a
    .line 7982
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@56d
    const-string/jumbo v0, "mForcingShowNavBar="

    #@570
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@573
    .line 7983
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    #@575
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@578
    const-string/jumbo v0, "mForcingShowNavBarLayer="

    #@57b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@57e
    .line 7984
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBarLayer:I

    #@580
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@583
    .line 7986
    :cond_e
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@586
    const-string/jumbo v0, "mTopIsFullscreen="

    #@589
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@58c
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    #@58e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@591
    .line 7987
    const-string/jumbo v0, " mHideLockScreen="

    #@594
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@597
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    #@599
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@59c
    .line 7988
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@59f
    const-string/jumbo v0, "mForceStatusBar="

    #@5a2
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5a5
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    #@5a7
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@5aa
    .line 7989
    const-string/jumbo v0, " mForceStatusBarFromKeyguard="

    #@5ad
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5b0
    .line 7990
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    #@5b2
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@5b5
    .line 7991
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5b8
    const-string/jumbo v0, "mDismissKeyguard="

    #@5bb
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5be
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    #@5c0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@5c3
    .line 7992
    const-string/jumbo v0, " mWinDismissingKeyguard="

    #@5c6
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5c9
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    #@5cb
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@5ce
    .line 7993
    const-string/jumbo v0, " mHomePressed="

    #@5d1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5d4
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomePressed:Z

    #@5d6
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@5d9
    .line 7994
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5dc
    const-string/jumbo v0, "mAllowLockscreenWhenOn="

    #@5df
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5e2
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    #@5e4
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@5e7
    .line 7995
    const-string/jumbo v0, " mLockScreenTimeout="

    #@5ea
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5ed
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    #@5ef
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@5f2
    .line 7996
    const-string/jumbo v0, " mLockScreenTimerActive="

    #@5f5
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5f8
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    #@5fa
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@5fd
    .line 7997
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@600
    const-string/jumbo v0, "mEndcallBehavior="

    #@603
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@606
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    #@608
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@60b
    .line 7998
    const-string/jumbo v0, " mIncallPowerBehavior="

    #@60e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@611
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    #@613
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@616
    .line 7999
    const-string/jumbo v0, " mLongPressOnHomeBehavior="

    #@619
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@61c
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    #@61e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@621
    .line 8000
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@624
    const-string/jumbo v0, "mLandscapeRotation="

    #@627
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@62a
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    #@62c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@62f
    .line 8001
    const-string/jumbo v0, " mSeascapeRotation="

    #@632
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@635
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    #@637
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@63a
    .line 8002
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@63d
    const-string/jumbo v0, "mPortraitRotation="

    #@640
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@643
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    #@645
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@648
    .line 8003
    const-string/jumbo v0, " mUpsideDownRotation="

    #@64b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@64e
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    #@650
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@653
    .line 8004
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@656
    const-string/jumbo v0, "mDemoHdmiRotation="

    #@659
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@65c
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotation:I

    #@65e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@661
    .line 8005
    const-string/jumbo v0, " mDemoHdmiRotationLock="

    #@664
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@667
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    #@669
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@66c
    .line 8006
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@66f
    const-string/jumbo v0, "mUndockedHdmiRotation="

    #@672
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@675
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUndockedHdmiRotation:I

    #@677
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@67a
    .line 8008
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    #@67c
    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/GlobalKeyManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@67f
    .line 8009
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@681
    invoke-virtual {v0, p2, p1}, Lcom/android/server/policy/StatusBarController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@684
    .line 8010
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@686
    invoke-virtual {v0, p2, p1}, Lcom/android/server/policy/BarController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@689
    .line 8011
    invoke-static {p1, p2}, Lcom/android/server/policy/PolicyControl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@68c
    .line 8013
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    #@68e
    if-eqz v0, :cond_f

    #@690
    .line 8014
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    #@692
    invoke-virtual {v0, p2, p1}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@695
    .line 8016
    :cond_f
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    #@697
    if-eqz v0, :cond_10

    #@699
    .line 8017
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    #@69b
    invoke-virtual {v0, p2, p1}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@69e
    .line 8019
    :cond_10
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    #@6a0
    if-eqz v0, :cond_11

    #@6a2
    .line 8020
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    #@6a4
    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/BurnInProtectionHelper;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@6a7
    .line 8022
    :cond_11
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@6a9
    if-eqz v0, :cond_12

    #@6ab
    .line 8023
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@6ad
    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@6b0
    .line 7827
    :cond_12
    return-void

    #@6b1
    .line 7836
    :cond_13
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    #@6b3
    if-eqz v0, :cond_1

    #@6b5
    goto/16 :goto_0

    #@6b7
    .line 7891
    :cond_14
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    #@6b9
    if-nez v0, :cond_3

    #@6bb
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    #@6bd
    if-eqz v0, :cond_4

    #@6bf
    goto/16 :goto_1
.end method

.method public enableKeyguard(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 6522
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 6523
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setKeyguardEnabled(Z)V

    #@9
    .line 6521
    :cond_0
    return-void
.end method

.method public enableScreenAfterBoot()V
    .locals 1

    #@0
    .prologue
    .line 7141
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->readLidState()V

    #@3
    .line 7142
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->applyLidSwitchState()V

    #@6
    .line 7143
    const/4 v0, 0x1

    #@7
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    #@a
    .line 7140
    return-void
.end method

.method public exitKeyguardSecurely(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
    .locals 1
    .param p1, "callback"    # Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    #@0
    .prologue
    .line 6530
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 6531
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    #@9
    .line 6529
    :cond_0
    return-void
.end method

.method public finishLayoutLw()V
    .locals 0

    #@0
    .prologue
    .line 4958
    return-void
.end method

.method public finishPostLayoutPolicyLw()I
    .locals 12

    #@0
    .prologue
    .line 5159
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    #@2
    if-eqz v8, :cond_0

    #@4
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@6
    if-eqz v8, :cond_0

    #@8
    .line 5160
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    #@a
    invoke-interface {v8}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    #@d
    move-result-object v8

    #@e
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@10
    invoke-interface {v9}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    #@13
    move-result-object v9

    #@14
    if-eq v8, v9, :cond_0

    #@16
    .line 5161
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    #@19
    move-result v8

    #@1a
    .line 5159
    if-eqz v8, :cond_0

    #@1c
    .line 5165
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    #@1e
    invoke-interface {v8}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@21
    move-result-object v8

    #@22
    iget v9, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@24
    const/high16 v10, 0x100000

    #@26
    or-int/2addr v9, v10

    #@27
    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@29
    .line 5166
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@2b
    const/4 v9, 0x0

    #@2c
    invoke-interface {v8, v9}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    #@2f
    .line 5167
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    #@31
    iput-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@33
    .line 5170
    :cond_0
    const/4 v0, 0x0

    #@34
    .line 5171
    .local v0, "changes":I
    const/4 v6, 0x0

    #@35
    .line 5173
    .local v6, "topIsFullscreen":Z
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@37
    if-eqz v8, :cond_d

    #@39
    .line 5174
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@3b
    invoke-interface {v8}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@3e
    move-result-object v2

    #@3f
    .line 5181
    :goto_0
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    #@41
    if-nez v8, :cond_e

    #@43
    .line 5182
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingLockscreen:Z

    #@45
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingLockscreen:Z

    #@47
    .line 5183
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepTokenNeeded:Z

    #@49
    if-eqz v8, :cond_1

    #@4b
    .line 5184
    const/4 v8, 0x0

    #@4c
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepTokenNeeded:Z

    #@4e
    .line 5185
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@50
    const/16 v9, 0xf

    #@52
    const/4 v10, 0x0

    #@53
    const/4 v11, 0x1

    #@54
    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@57
    move-result-object v8

    #@58
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    #@5b
    .line 5194
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@5d
    if-eqz v8, :cond_7

    #@5f
    .line 5198
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarTransparent:Z

    #@61
    if-eqz v8, :cond_2

    #@63
    .line 5199
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    #@65
    if-eqz v8, :cond_f

    #@67
    .line 5198
    :cond_2
    const/4 v3, 0x0

    #@68
    .line 5201
    .local v3, "shouldBeTransparent":Z
    :goto_2
    if-nez v3, :cond_11

    #@6a
    .line 5202
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@6c
    const/4 v9, 0x0

    #@6d
    invoke-virtual {v8, v9}, Lcom/android/server/policy/StatusBarController;->setShowTransparent(Z)V

    #@70
    .line 5207
    :cond_3
    :goto_3
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@72
    invoke-interface {v8}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@75
    move-result-object v4

    #@76
    .line 5208
    .local v4, "statusBarAttrs":Landroid/view/WindowManager$LayoutParams;
    iget v8, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    #@78
    const/4 v9, -0x1

    #@79
    if-ne v8, v9, :cond_13

    #@7b
    .line 5209
    iget v8, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    #@7d
    const/4 v9, -0x1

    #@7e
    if-ne v8, v9, :cond_12

    #@80
    const/4 v5, 0x1

    #@81
    .line 5210
    .local v5, "statusBarExpanded":Z
    :goto_4
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    #@83
    if-nez v8, :cond_4

    #@85
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    #@87
    if-nez v8, :cond_4

    #@89
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarTransparent:Z

    #@8b
    if-nez v8, :cond_4

    #@8d
    if-eqz v5, :cond_15

    #@8f
    .line 5213
    :cond_4
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@91
    const/4 v9, 0x1

    #@92
    invoke-virtual {v8, v9}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    #@95
    move-result v8

    #@96
    if-eqz v8, :cond_5

    #@98
    .line 5214
    const/4 v0, 0x1

    #@99
    .line 5217
    :cond_5
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    #@9b
    if-eqz v8, :cond_14

    #@9d
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@9f
    invoke-interface {v8}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    #@a2
    move-result v6

    #@a3
    .line 5219
    .end local v6    # "topIsFullscreen":Z
    :goto_5
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    #@a5
    if-eqz v8, :cond_6

    #@a7
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@a9
    invoke-virtual {v8}, Lcom/android/server/policy/StatusBarController;->isTransientShowing()Z

    #@ac
    move-result v8

    #@ad
    if-eqz v8, :cond_6

    #@af
    .line 5220
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@b1
    .line 5221
    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    #@b3
    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    #@b5
    .line 5220
    const/4 v11, 0x0

    #@b6
    invoke-virtual {v8, v11, v9, v10}, Lcom/android/server/policy/StatusBarController;->updateVisibilityLw(ZII)I

    #@b9
    .line 5223
    :cond_6
    if-eqz v5, :cond_7

    #@bb
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@bd
    if-eqz v8, :cond_7

    #@bf
    .line 5224
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@c1
    const/4 v9, 0x1

    #@c2
    invoke-virtual {v8, v9}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    #@c5
    move-result v8

    #@c6
    if-eqz v8, :cond_7

    #@c8
    .line 5225
    or-int/lit8 v0, v0, 0x1

    #@ca
    .line 5265
    .end local v3    # "shouldBeTransparent":Z
    .end local v4    # "statusBarAttrs":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "statusBarExpanded":Z
    :cond_7
    :goto_6
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    #@cc
    if-eq v8, v6, :cond_9

    #@ce
    .line 5266
    if-nez v6, :cond_8

    #@d0
    .line 5268
    or-int/lit8 v0, v0, 0x1

    #@d2
    .line 5270
    :cond_8
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    #@d4
    .line 5275
    :cond_9
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@d6
    if-eqz v8, :cond_b

    #@d8
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@da
    if-eqz v8, :cond_b

    #@dc
    .line 5278
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    #@de
    if-eqz v8, :cond_a

    #@e0
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    #@e2
    if-eqz v8, :cond_1b

    #@e4
    .line 5293
    :cond_a
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    #@e6
    if-eqz v8, :cond_1d

    #@e8
    .line 5294
    const/4 v8, 0x1

    #@e9
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z

    #@eb
    .line 5295
    const/4 v8, 0x0

    #@ec
    iput-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    #@ee
    .line 5296
    const/4 v8, 0x1

    #@ef
    invoke-direct {p0, v8}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(Z)Z

    #@f2
    move-result v8

    #@f3
    if-eqz v8, :cond_b

    #@f5
    .line 5297
    or-int/lit8 v0, v0, 0x7

    #@f7
    .line 5332
    :cond_b
    :goto_7
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    #@fa
    move-result v8

    #@fb
    const v9, -0x3fff7ff2

    #@fe
    and-int/2addr v8, v9

    #@ff
    if-eqz v8, :cond_c

    #@101
    .line 5335
    or-int/lit8 v0, v0, 0x1

    #@103
    .line 5339
    :cond_c
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    #@106
    .line 5340
    return v0

    #@107
    .line 5175
    .restart local v6    # "topIsFullscreen":Z
    :cond_d
    const/4 v2, 0x0

    #@108
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    goto/16 :goto_0

    #@10a
    .line 5188
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_e
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepTokenNeeded:Z

    #@10c
    if-nez v8, :cond_1

    #@10e
    .line 5189
    const/4 v8, 0x1

    #@10f
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepTokenNeeded:Z

    #@111
    .line 5190
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@113
    const/16 v9, 0xf

    #@115
    const/4 v10, 0x1

    #@116
    const/4 v11, 0x1

    #@117
    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@11a
    move-result-object v8

    #@11b
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    #@11e
    goto/16 :goto_1

    #@120
    .line 5200
    :cond_f
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    #@122
    if-eqz v8, :cond_10

    #@124
    const/4 v8, 0x0

    #@125
    :goto_8
    move v3, v8

    #@126
    goto/16 :goto_2

    #@128
    :cond_10
    const/4 v8, 0x1

    #@129
    goto :goto_8

    #@12a
    .line 5203
    .restart local v3    # "shouldBeTransparent":Z
    :cond_11
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@12c
    invoke-interface {v8}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    #@12f
    move-result v8

    #@130
    if-nez v8, :cond_3

    #@132
    .line 5204
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@134
    const/4 v9, 0x1

    #@135
    invoke-virtual {v8, v9}, Lcom/android/server/policy/StatusBarController;->setShowTransparent(Z)V

    #@138
    goto/16 :goto_3

    #@13a
    .line 5209
    .restart local v4    # "statusBarAttrs":Landroid/view/WindowManager$LayoutParams;
    :cond_12
    const/4 v5, 0x0

    #@13b
    .restart local v5    # "statusBarExpanded":Z
    goto/16 :goto_4

    #@13d
    .line 5208
    .end local v5    # "statusBarExpanded":Z
    :cond_13
    const/4 v5, 0x0

    #@13e
    .restart local v5    # "statusBarExpanded":Z
    goto/16 :goto_4

    #@140
    .line 5217
    :cond_14
    const/4 v6, 0x0

    #@141
    goto/16 :goto_5

    #@143
    .line 5228
    :cond_15
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@145
    if-eqz v8, :cond_7

    #@147
    .line 5229
    const/4 v8, 0x0

    #@148
    invoke-static {v8, v2}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    #@14b
    move-result v1

    #@14c
    .line 5237
    .local v1, "fl":I
    and-int/lit16 v8, v1, 0x400

    #@14e
    if-nez v8, :cond_16

    #@150
    .line 5238
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    #@152
    and-int/lit8 v8, v8, 0x4

    #@154
    if-eqz v8, :cond_17

    #@156
    const/4 v6, 0x1

    #@157
    .line 5243
    :goto_9
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@159
    invoke-virtual {v8}, Lcom/android/server/policy/StatusBarController;->isTransientShowing()Z

    #@15c
    move-result v8

    #@15d
    if-eqz v8, :cond_18

    #@15f
    .line 5244
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@161
    const/4 v9, 0x1

    #@162
    invoke-virtual {v8, v9}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    #@165
    move-result v8

    #@166
    if-eqz v8, :cond_7

    #@168
    .line 5245
    const/4 v0, 0x1

    #@169
    goto/16 :goto_6

    #@16b
    .line 5237
    :cond_16
    const/4 v6, 0x1

    #@16c
    goto :goto_9

    #@16d
    .line 5238
    :cond_17
    const/4 v6, 0x0

    #@16e
    goto :goto_9

    #@16f
    .line 5247
    :cond_18
    if-eqz v6, :cond_19

    #@171
    .line 5248
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    #@173
    const/4 v9, 0x2

    #@174
    invoke-virtual {v8, v9}, Landroid/view/WindowManagerInternal;->isStackVisible(I)Z

    #@177
    move-result v8

    #@178
    if-eqz v8, :cond_1a

    #@17a
    .line 5258
    :cond_19
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@17c
    const/4 v9, 0x1

    #@17d
    invoke-virtual {v8, v9}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    #@180
    move-result v8

    #@181
    if-eqz v8, :cond_7

    #@183
    .line 5259
    const/4 v0, 0x1

    #@184
    goto/16 :goto_6

    #@186
    .line 5249
    :cond_1a
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    #@188
    const/4 v9, 0x3

    #@189
    invoke-virtual {v8, v9}, Landroid/view/WindowManagerInternal;->isStackVisible(I)Z

    #@18c
    move-result v8

    #@18d
    if-nez v8, :cond_19

    #@18f
    .line 5251
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@191
    const/4 v9, 0x0

    #@192
    invoke-virtual {v8, v9}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    #@195
    move-result v8

    #@196
    if-eqz v8, :cond_7

    #@198
    .line 5252
    const/4 v0, 0x1

    #@199
    goto/16 :goto_6

    #@19b
    .line 5279
    .end local v1    # "fl":I
    .end local v3    # "shouldBeTransparent":Z
    .end local v4    # "statusBarAttrs":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "statusBarExpanded":Z
    .end local v6    # "topIsFullscreen":Z
    :cond_1b
    const/4 v8, 0x1

    #@19c
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z

    #@19e
    .line 5280
    const/4 v8, 0x1

    #@19f
    invoke-direct {p0, v8}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(Z)Z

    #@1a2
    move-result v8

    #@1a3
    if-eqz v8, :cond_1c

    #@1a5
    .line 5281
    or-int/lit8 v0, v0, 0x7

    #@1a7
    .line 5285
    :cond_1c
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@1a9
    invoke-virtual {v8}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    #@1ac
    move-result v8

    #@1ad
    if-eqz v8, :cond_b

    #@1af
    .line 5286
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@1b1
    new-instance v9, Lcom/android/server/policy/PhoneWindowManager$15;

    #@1b3
    invoke-direct {v9, p0}, Lcom/android/server/policy/PhoneWindowManager$15;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@1b6
    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@1b9
    goto/16 :goto_7

    #@1bb
    .line 5301
    :cond_1d
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    #@1bd
    if-eqz v8, :cond_20

    #@1bf
    .line 5302
    const/4 v8, 0x0

    #@1c0
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z

    #@1c2
    .line 5303
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@1c4
    invoke-virtual {v8}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isTrusted()Z

    #@1c7
    move-result v7

    #@1c8
    .line 5304
    .local v7, "trusted":Z
    if-eqz v7, :cond_1f

    #@1ca
    .line 5311
    :cond_1e
    :goto_a
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    #@1cc
    const/4 v9, 0x1

    #@1cd
    if-ne v8, v9, :cond_b

    #@1cf
    .line 5313
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@1d1
    new-instance v9, Lcom/android/server/policy/PhoneWindowManager$16;

    #@1d3
    invoke-direct {v9, p0, v7}, Lcom/android/server/policy/PhoneWindowManager$16;-><init>(Lcom/android/server/policy/PhoneWindowManager;Z)V

    #@1d6
    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@1d9
    goto/16 :goto_7

    #@1db
    .line 5306
    :cond_1f
    const/4 v8, 0x0

    #@1dc
    invoke-direct {p0, v8}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(Z)Z

    #@1df
    move-result v8

    #@1e0
    if-eqz v8, :cond_1e

    #@1e2
    .line 5307
    or-int/lit8 v0, v0, 0x7

    #@1e4
    goto :goto_a

    #@1e5
    .line 5321
    .end local v7    # "trusted":Z
    :cond_20
    const/4 v8, 0x0

    #@1e6
    iput-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    #@1e8
    .line 5322
    const/4 v8, 0x0

    #@1e9
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mSecureDismissingKeyguard:Z

    #@1eb
    .line 5323
    const/4 v8, 0x0

    #@1ec
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z

    #@1ee
    .line 5324
    const/4 v8, 0x0

    #@1ef
    invoke-direct {p0, v8}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(Z)Z

    #@1f2
    move-result v8

    #@1f3
    if-eqz v8, :cond_b

    #@1f5
    .line 5325
    or-int/lit8 v0, v0, 0x7

    #@1f7
    goto/16 :goto_7
.end method

.method public finishedGoingToSleep(I)V
    .locals 4
    .param p1, "why"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 6292
    const v0, 0x11170

    #@4
    invoke-static {v0, v3}, Landroid/util/EventLog;->writeEvent(II)I

    #@7
    .line 6294
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
    .line 6296
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoingToSleep:Z

    #@15
    .line 6300
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@17
    monitor-enter v1

    #@18
    .line 6301
    const/4 v0, 0x0

    #@19
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    #@1b
    .line 6302
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    #@1e
    .line 6303
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    #@21
    .line 6304
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    monitor-exit v1

    #@25
    .line 6306
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@27
    if-eqz v0, :cond_0

    #@29
    .line 6307
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@2b
    .line 6308
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraGestureTriggeredDuringGoingToSleep:Z

    #@2d
    .line 6307
    invoke-virtual {v0, p1, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onFinishedGoingToSleep(IZ)V

    #@30
    .line 6310
    :cond_0
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraGestureTriggeredDuringGoingToSleep:Z

    #@32
    .line 6291
    return-void

    #@33
    .line 6300
    :catchall_0
    move-exception v0

    #@34
    monitor-exit v1

    #@35
    throw v0
.end method

.method public finishedWakingUp()V
    .locals 0

    #@0
    .prologue
    .line 6338
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
    .line 5389
    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    #@3
    .line 5390
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    #@6
    move-result v0

    #@7
    const v1, -0x3fff7ff2

    #@a
    and-int/2addr v0, v1

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 5393
    const/4 v0, 0x1

    #@e
    return v0

    #@f
    .line 5395
    :cond_0
    return v2
.end method

.method public getConfigDisplayHeight(IIII)I
    .locals 2
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I
    .param p4, "uiMode"    # I

    #@0
    .prologue
    .line 2542
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->getNonDecorDisplayHeight(IIII)I

    #@3
    move-result v0

    #@4
    .line 2543
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    #@6
    .line 2542
    sub-int/2addr v0, v1

    #@7
    return v0
.end method

.method public getConfigDisplayWidth(IIII)I
    .locals 1
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I
    .param p4, "uiMode"    # I

    #@0
    .prologue
    .line 2533
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->getNonDecorDisplayWidth(IIII)I

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
    .line 4307
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
    .line 4306
    return-void
.end method

.method public getInputMethodWindowVisibleHeightLw()I
    .locals 2

    #@0
    .prologue
    .line 7751
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    #@2
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    #@4
    sub-int/2addr v0, v1

    #@5
    return v0
.end method

.method public getInsetHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;IIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 15
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "taskBounds"    # Landroid/graphics/Rect;
    .param p3, "displayRotation"    # I
    .param p4, "displayWidth"    # I
    .param p5, "displayHeight"    # I
    .param p6, "outContentInsets"    # Landroid/graphics/Rect;
    .param p7, "outStableInsets"    # Landroid/graphics/Rect;
    .param p8, "outOutsets"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 3886
    const/4 v11, 0x0

    #@1
    move-object/from16 v0, p1

    #@3
    invoke-static {v11, v0}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    #@6
    move-result v6

    #@7
    .line 3887
    .local v6, "fl":I
    const/4 v11, 0x0

    #@8
    move-object/from16 v0, p1

    #@a
    invoke-static {v11, v0}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    #@d
    move-result v9

    #@e
    .line 3888
    .local v9, "sysuiVis":I
    move-object/from16 v0, p1

    #@10
    iget v11, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    #@12
    or-int v8, v9, v11

    #@14
    .line 3890
    .local v8, "systemUiVisibility":I
    if-eqz p8, :cond_2

    #@16
    move-object/from16 v0, p1

    #@18
    invoke-direct {p0, v0, v6}, Lcom/android/server/policy/PhoneWindowManager;->shouldUseOutsets(Landroid/view/WindowManager$LayoutParams;I)Z

    #@1b
    move-result v10

    #@1c
    .line 3891
    .local v10, "useOutsets":Z
    :goto_0
    if-eqz v10, :cond_0

    #@1e
    .line 3892
    iget-object v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@20
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@23
    move-result-object v11

    #@24
    invoke-static {v11}, Lcom/android/internal/util/ScreenShapeHelper;->getWindowOutsetBottomPx(Landroid/content/res/Resources;)I

    #@27
    move-result v7

    #@28
    .line 3893
    .local v7, "outset":I
    if-lez v7, :cond_0

    #@2a
    .line 3894
    if-nez p3, :cond_3

    #@2c
    .line 3895
    move-object/from16 v0, p8

    #@2e
    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    #@30
    add-int/2addr v11, v7

    #@31
    move-object/from16 v0, p8

    #@33
    iput v11, v0, Landroid/graphics/Rect;->bottom:I

    #@35
    .line 3906
    .end local v7    # "outset":I
    :cond_0
    :goto_1
    const v11, 0x10100

    #@38
    and-int/2addr v11, v6

    #@39
    .line 3907
    const v12, 0x10100

    #@3c
    .line 3906
    if-ne v11, v12, :cond_c

    #@3e
    .line 3909
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    #@41
    move-result v11

    #@42
    if-eqz v11, :cond_6

    #@44
    .line 3910
    and-int/lit16 v11, v8, 0x200

    #@46
    if-eqz v11, :cond_6

    #@48
    .line 3911
    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@4a
    iget v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    #@4c
    add-int v5, v11, v12

    #@4e
    .line 3912
    .local v5, "availRight":I
    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@50
    iget v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    #@52
    add-int v4, v11, v12

    #@54
    .line 3917
    .local v4, "availBottom":I
    :goto_2
    and-int/lit16 v11, v8, 0x100

    #@56
    if-eqz v11, :cond_8

    #@58
    .line 3918
    and-int/lit16 v11, v6, 0x400

    #@5a
    if-eqz v11, :cond_7

    #@5c
    .line 3919
    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenLeft:I

    #@5e
    iget v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenTop:I

    #@60
    .line 3920
    iget v13, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenRight:I

    #@62
    sub-int v13, v5, v13

    #@64
    .line 3921
    iget v14, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenBottom:I

    #@66
    sub-int v14, v4, v14

    #@68
    .line 3919
    move-object/from16 v0, p6

    #@6a
    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    #@6d
    .line 3937
    :goto_3
    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    #@6f
    iget v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    #@71
    .line 3938
    iget v13, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    #@73
    sub-int v13, v5, v13

    #@75
    iget v14, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    #@77
    sub-int v14, v4, v14

    #@79
    .line 3937
    move-object/from16 v0, p7

    #@7b
    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    #@7e
    .line 3939
    if-eqz p2, :cond_1

    #@80
    .line 3940
    move-object/from16 v0, p2

    #@82
    move-object/from16 v1, p6

    #@84
    move/from16 v2, p4

    #@86
    move/from16 v3, p5

    #@88
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->calculateRelevantTaskInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    #@8b
    .line 3942
    move-object/from16 v0, p2

    #@8d
    move-object/from16 v1, p7

    #@8f
    move/from16 v2, p4

    #@91
    move/from16 v3, p5

    #@93
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->calculateRelevantTaskInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    #@96
    .line 3945
    :cond_1
    iget-boolean v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    #@98
    return v11

    #@99
    .line 3890
    .end local v4    # "availBottom":I
    .end local v5    # "availRight":I
    .end local v10    # "useOutsets":Z
    :cond_2
    const/4 v10, 0x0

    #@9a
    goto :goto_0

    #@9b
    .line 3896
    .restart local v7    # "outset":I
    .restart local v10    # "useOutsets":Z
    :cond_3
    const/4 v11, 0x1

    #@9c
    move/from16 v0, p3

    #@9e
    if-ne v0, v11, :cond_4

    #@a0
    .line 3897
    move-object/from16 v0, p8

    #@a2
    iget v11, v0, Landroid/graphics/Rect;->right:I

    #@a4
    add-int/2addr v11, v7

    #@a5
    move-object/from16 v0, p8

    #@a7
    iput v11, v0, Landroid/graphics/Rect;->right:I

    #@a9
    goto :goto_1

    #@aa
    .line 3898
    :cond_4
    const/4 v11, 0x2

    #@ab
    move/from16 v0, p3

    #@ad
    if-ne v0, v11, :cond_5

    #@af
    .line 3899
    move-object/from16 v0, p8

    #@b1
    iget v11, v0, Landroid/graphics/Rect;->top:I

    #@b3
    add-int/2addr v11, v7

    #@b4
    move-object/from16 v0, p8

    #@b6
    iput v11, v0, Landroid/graphics/Rect;->top:I

    #@b8
    goto/16 :goto_1

    #@ba
    .line 3900
    :cond_5
    const/4 v11, 0x3

    #@bb
    move/from16 v0, p3

    #@bd
    if-ne v0, v11, :cond_0

    #@bf
    .line 3901
    move-object/from16 v0, p8

    #@c1
    iget v11, v0, Landroid/graphics/Rect;->left:I

    #@c3
    add-int/2addr v11, v7

    #@c4
    move-object/from16 v0, p8

    #@c6
    iput v11, v0, Landroid/graphics/Rect;->left:I

    #@c8
    goto/16 :goto_1

    #@ca
    .line 3914
    .end local v7    # "outset":I
    :cond_6
    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    #@cc
    iget v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    #@ce
    add-int v5, v11, v12

    #@d0
    .line 3915
    .restart local v5    # "availRight":I
    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    #@d2
    iget v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    #@d4
    add-int v4, v11, v12

    #@d6
    .restart local v4    # "availBottom":I
    goto/16 :goto_2

    #@d8
    .line 3923
    :cond_7
    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    #@da
    iget v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    #@dc
    .line 3924
    iget v13, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    #@de
    sub-int v13, v5, v13

    #@e0
    iget v14, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    #@e2
    sub-int v14, v4, v14

    #@e4
    .line 3923
    move-object/from16 v0, p6

    #@e6
    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    #@e9
    goto :goto_3

    #@ea
    .line 3926
    :cond_8
    and-int/lit16 v11, v6, 0x400

    #@ec
    if-nez v11, :cond_9

    #@ee
    const/high16 v11, 0x2000000

    #@f0
    and-int/2addr v11, v6

    #@f1
    if-eqz v11, :cond_a

    #@f3
    .line 3927
    :cond_9
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->setEmpty()V

    #@f6
    goto/16 :goto_3

    #@f8
    .line 3928
    :cond_a
    and-int/lit16 v11, v8, 0x404

    #@fa
    if-nez v11, :cond_b

    #@fc
    .line 3930
    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    #@fe
    iget v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    #@100
    .line 3931
    iget v13, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    #@102
    sub-int v13, v5, v13

    #@104
    iget v14, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    #@106
    sub-int v14, v4, v14

    #@108
    .line 3930
    move-object/from16 v0, p6

    #@10a
    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    #@10d
    goto/16 :goto_3

    #@10f
    .line 3933
    :cond_b
    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    #@111
    iget v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    #@113
    .line 3934
    iget v13, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    #@115
    sub-int v13, v5, v13

    #@117
    iget v14, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    #@119
    sub-int v14, v4, v14

    #@11b
    .line 3933
    move-object/from16 v0, p6

    #@11d
    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    #@120
    goto/16 :goto_3

    #@122
    .line 3947
    .end local v4    # "availBottom":I
    .end local v5    # "availRight":I
    :cond_c
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->setEmpty()V

    #@125
    .line 3948
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Rect;->setEmpty()V

    #@128
    .line 3949
    iget-boolean v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    #@12a
    return v11
.end method

.method public getMaxWallpaperLayer()I
    .locals 1

    #@0
    .prologue
    .line 2486
    const/16 v0, 0x7d0

    #@2
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->windowTypeToLayerLw(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getNonDecorDisplayHeight(IIII)I
    .locals 1
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I
    .param p4, "uiMode"    # I

    #@0
    .prologue
    .line 2521
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 2524
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    if-ge p1, p2, :cond_1

    #@a
    .line 2525
    :cond_0
    invoke-direct {p0, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarHeight(II)I

    #@d
    move-result v0

    #@e
    sub-int v0, p2, v0

    #@10
    return v0

    #@11
    .line 2528
    :cond_1
    return p2
.end method

.method public getNonDecorDisplayWidth(IIII)I
    .locals 1
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I
    .param p4, "uiMode"    # I

    #@0
    .prologue
    .line 2500
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2503
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    if-le p1, p2, :cond_0

    #@a
    .line 2504
    invoke-direct {p0, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarWidth(II)I

    #@d
    move-result v0

    #@e
    sub-int v0, p1, v0

    #@10
    return v0

    #@11
    .line 2507
    :cond_0
    return p1
.end method

.method public getNonDecorInsetsLw(IIILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "displayRotation"    # I
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I
    .param p4, "outInsets"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 6622
    invoke-virtual {p4}, Landroid/graphics/Rect;->setEmpty()V

    #@3
    .line 6625
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 6626
    invoke-direct {p0, p2, p3, p1}, Lcom/android/server/policy/PhoneWindowManager;->navigationBarPosition(III)I

    #@a
    move-result v0

    #@b
    .line 6627
    .local v0, "position":I
    if-nez v0, :cond_1

    #@d
    .line 6628
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    #@f
    invoke-direct {p0, p1, v1}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarHeight(II)I

    #@12
    move-result v1

    #@13
    iput v1, p4, Landroid/graphics/Rect;->bottom:I

    #@15
    .line 6621
    .end local v0    # "position":I
    :cond_0
    :goto_0
    return-void

    #@16
    .line 6629
    .restart local v0    # "position":I
    :cond_1
    const/4 v1, 0x1

    #@17
    if-ne v0, v1, :cond_2

    #@19
    .line 6630
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    #@1b
    invoke-direct {p0, p1, v1}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarWidth(II)I

    #@1e
    move-result v1

    #@1f
    iput v1, p4, Landroid/graphics/Rect;->right:I

    #@21
    goto :goto_0

    #@22
    .line 6631
    :cond_2
    const/4 v1, 0x2

    #@23
    if-ne v0, v1, :cond_0

    #@25
    .line 6632
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    #@27
    invoke-direct {p0, p1, v1}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarWidth(II)I

    #@2a
    move-result v1

    #@2b
    iput v1, p4, Landroid/graphics/Rect;->left:I

    #@2d
    goto :goto_0
.end method

.method public getStableInsetsLw(IIILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "displayRotation"    # I
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I
    .param p4, "outInsets"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 6610
    invoke-virtual {p4}, Landroid/graphics/Rect;->setEmpty()V

    #@3
    .line 6613
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->getNonDecorInsetsLw(IIILandroid/graphics/Rect;)V

    #@6
    .line 6614
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 6615
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    #@c
    iput v0, p4, Landroid/graphics/Rect;->top:I

    #@e
    .line 6609
    :cond_0
    return-void
.end method

.method getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .locals 2

    #@0
    .prologue
    .line 926
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 927
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 929
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@9
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@f
    .line 928
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@11
    .line 931
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v1

    #@14
    return-object v0

    #@15
    .line 926
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v1

    #@17
    throw v0
.end method

.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    #@0
    .prologue
    .line 916
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 917
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 919
    const-string/jumbo v0, "statusbar"

    #@a
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@d
    move-result-object v0

    #@e
    .line 918
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    #@14
    .line 921
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    monitor-exit v1

    #@17
    return-object v0

    #@18
    .line 916
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
    .line 4294
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
    .line 4295
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@e
    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    #@11
    move-result v0

    #@12
    return v0

    #@13
    .line 4298
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
    .line 4299
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@21
    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    #@24
    move-result v0

    #@25
    return v0

    #@26
    .line 4302
    :cond_1
    const/4 v0, 0x0

    #@27
    return v0
.end method

.method getTelecommService()Landroid/telecom/TelecomManager;
    .locals 2

    #@0
    .prologue
    .line 3001
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
    .line 6859
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v1

    #@7
    .line 6860
    const-string/jumbo v2, "accelerometer_rotation"

    #@a
    const/4 v3, -0x2

    #@b
    .line 6859
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    :goto_0
    return v0

    #@12
    .line 6862
    :cond_0
    const/4 v0, 0x1

    #@13
    goto :goto_0
.end method

.method public getWinShowWhenLockedLw()Landroid/view/WindowManagerPolicy$WindowState;
    .locals 1

    #@0
    .prologue
    .line 2577
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    #@2
    return-object v0
.end method

.method goHome()Z
    .locals 19

    #@0
    .prologue
    .line 7281
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 7282
    const-string/jumbo v1, "WindowManager"

    #@9
    const-string/jumbo v2, "Not going home because user setup is in progress."

    #@c
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 7283
    const/4 v1, 0x0

    #@10
    return v1

    #@11
    .line 7297
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
    .line 7299
    const-string/jumbo v1, "WindowManager"

    #@1f
    const-string/jumbo v2, "UTS-TEST-MODE"

    #@22
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 7316
    :cond_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@28
    move-result-object v5

    #@29
    .line 7317
    move-object/from16 v0, p0

    #@2b
    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    #@2d
    .line 7318
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
    .line 7317
    const/4 v6, 0x0

    #@3e
    const/4 v7, 0x0

    #@3f
    .line 7319
    const/4 v10, 0x0

    #@40
    const/4 v11, 0x0

    #@41
    const/4 v12, 0x0

    #@42
    .line 7320
    const/4 v13, 0x1

    #@43
    .line 7321
    const/4 v14, 0x0

    #@44
    const/4 v15, 0x0

    #@45
    const/16 v16, -0x2

    #@47
    .line 7316
    invoke-interface/range {v5 .. v16}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    #@4a
    move-result v18

    #@4b
    .line 7322
    .local v18, "result":I
    const/4 v1, 0x1

    #@4c
    move/from16 v0, v18

    #@4e
    if-ne v0, v1, :cond_3

    #@50
    .line 7323
    const/4 v1, 0x0

    #@51
    return v1

    #@52
    .line 7301
    .end local v18    # "result":I
    :cond_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@55
    move-result-object v1

    #@56
    invoke-interface {v1}, Landroid/app/IActivityManager;->stopAppSwitches()V

    #@59
    .line 7302
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows()V

    #@5c
    .line 7303
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    #@5f
    move-result-object v4

    #@60
    .line 7304
    .local v4, "dock":Landroid/content/Intent;
    if-eqz v4, :cond_1

    #@62
    .line 7305
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@65
    move-result-object v1

    #@66
    .line 7307
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
    .line 7306
    const/4 v2, 0x0

    #@73
    const/4 v3, 0x0

    #@74
    .line 7308
    const/4 v6, 0x0

    #@75
    const/4 v7, 0x0

    #@76
    const/4 v8, 0x0

    #@77
    .line 7309
    const/4 v9, 0x1

    #@78
    .line 7310
    const/4 v10, 0x0

    #@79
    const/4 v11, 0x0

    #@7a
    const/4 v12, -0x2

    #@7b
    .line 7305
    invoke-interface/range {v1 .. v12}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7e
    move-result v18

    #@7f
    .line 7311
    .restart local v18    # "result":I
    const/4 v1, 0x1

    #@80
    move/from16 v0, v18

    #@82
    if-ne v0, v1, :cond_1

    #@84
    .line 7312
    const/4 v1, 0x0

    #@85
    return v1

    #@86
    .line 7325
    .end local v4    # "dock":Landroid/content/Intent;
    .end local v18    # "result":I
    :catch_0
    move-exception v17

    #@87
    .line 7329
    :cond_3
    const/4 v1, 0x1

    #@88
    return v1
.end method

.method public hasNavigationBar()Z
    .locals 1

    #@0
    .prologue
    .line 7740
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    #@2
    return v0
.end method

.method public hideBootMessages()V
    .locals 2

    #@0
    .prologue
    .line 7034
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@2
    const/16 v1, 0xb

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@7
    .line 7033
    return-void
.end method

.method public inKeyguardRestrictedKeyInputMode()Z
    .locals 1

    #@0
    .prologue
    .line 6562
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 6563
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
    .line 1520
    move-object/from16 v0, p1

    #@2
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@4
    .line 1521
    move-object/from16 v0, p2

    #@6
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    #@8
    .line 1522
    move-object/from16 v0, p3

    #@a
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@c
    .line 1523
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
    .line 1524
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
    .line 1525
    const-class v1, Landroid/hardware/input/InputManagerInternal;

    #@22
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@25
    move-result-object v1

    #@26
    check-cast v1, Landroid/hardware/input/InputManagerInternal;

    #@28
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    #@2a
    .line 1526
    const-class v1, Landroid/service/dreams/DreamManagerInternal;

    #@2c
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@2f
    move-result-object v1

    #@30
    check-cast v1, Landroid/service/dreams/DreamManagerInternal;

    #@32
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    #@34
    .line 1527
    const-class v1, Landroid/os/PowerManagerInternal;

    #@36
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@39
    move-result-object v1

    #@3a
    check-cast v1, Landroid/os/PowerManagerInternal;

    #@3c
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    #@3e
    .line 1528
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@40
    const-string/jumbo v2, "appops"

    #@43
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@46
    move-result-object v1

    #@47
    check-cast v1, Landroid/app/AppOpsManager;

    #@49
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    #@4b
    .line 1529
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@4d
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@50
    move-result-object v1

    #@51
    const-string/jumbo v2, "android.hardware.type.watch"

    #@54
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@57
    move-result v1

    #@58
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    #@5a
    .line 1532
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5d
    move-result-object v1

    #@5e
    .line 1533
    const v2, 0x11200a1

    #@61
    .line 1532
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@64
    move-result v9

    #@65
    .line 1536
    .local v9, "burnInProtectionEnabled":Z
    const-string/jumbo v1, "persist.debug.force_burn_in"

    #@68
    const/4 v2, 0x0

    #@69
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@6c
    move-result v8

    #@6d
    .line 1537
    .local v8, "burnInProtectionDevMode":Z
    if-nez v9, :cond_0

    #@6f
    if-eqz v8, :cond_1

    #@71
    .line 1543
    :cond_0
    if-eqz v8, :cond_5

    #@73
    .line 1544
    const/4 v3, -0x8

    #@74
    .line 1545
    .local v3, "minHorizontal":I
    const/16 v4, 0x8

    #@76
    .line 1546
    .local v4, "maxHorizontal":I
    const/4 v5, -0x8

    #@77
    .line 1547
    .local v5, "minVertical":I
    const/4 v6, -0x4

    #@78
    .line 1548
    .local v6, "maxVertical":I
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isRoundWindow()Z

    #@7b
    move-result v1

    #@7c
    if-eqz v1, :cond_4

    #@7e
    const/4 v7, 0x6

    #@7f
    .line 1562
    .local v7, "maxRadius":I
    :goto_0
    new-instance v1, Lcom/android/server/policy/BurnInProtectionHelper;

    #@81
    move-object/from16 v2, p1

    #@83
    invoke-direct/range {v1 .. v7}, Lcom/android/server/policy/BurnInProtectionHelper;-><init>(Landroid/content/Context;IIIII)V

    #@86
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    #@88
    .line 1566
    .end local v3    # "minHorizontal":I
    .end local v4    # "maxHorizontal":I
    .end local v5    # "minVertical":I
    .end local v6    # "maxVertical":I
    .end local v7    # "maxRadius":I
    :cond_1
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    #@8a
    const/4 v2, 0x0

    #@8b
    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;-><init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;)V

    #@8e
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@90
    .line 1567
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    #@92
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@94
    iget-object v14, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@96
    invoke-direct {v1, p0, v2, v14}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;Landroid/os/Handler;)V

    #@99
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    #@9b
    .line 1568
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    #@9d
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@9f
    iget-object v14, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@a1
    invoke-direct {v1, p0, v2, v14}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;Landroid/os/Handler;)V

    #@a4
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    #@a6
    .line 1570
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    #@a8
    invoke-interface/range {p2 .. p2}, Landroid/view/IWindowManager;->getRotation()I

    #@ab
    move-result v2

    #@ac
    invoke-virtual {v1, v2}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->setCurrentRotation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@af
    .line 1572
    :goto_1
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    #@b1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@b3
    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/os/Handler;)V

    #@b6
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    #@b8
    .line 1573
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    #@ba
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;->observe()V

    #@bd
    .line 1574
    new-instance v1, Lcom/android/server/policy/ShortcutManager;

    #@bf
    move-object/from16 v0, p1

    #@c1
    invoke-direct {v1, v0}, Lcom/android/server/policy/ShortcutManager;-><init>(Landroid/content/Context;)V

    #@c4
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutManager:Lcom/android/server/policy/ShortcutManager;

    #@c6
    .line 1575
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@c9
    move-result-object v1

    #@ca
    .line 1576
    const v2, 0x10e0049

    #@cd
    .line 1575
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@d0
    move-result v1

    #@d1
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    #@d3
    .line 1577
    new-instance v1, Landroid/content/Intent;

    #@d5
    const-string/jumbo v2, "android.intent.action.MAIN"

    #@d8
    const/4 v14, 0x0

    #@d9
    invoke-direct {v1, v2, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@dc
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    #@de
    .line 1578
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    #@e0
    const-string/jumbo v2, "android.intent.category.HOME"

    #@e3
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@e6
    .line 1579
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    #@e8
    const/high16 v2, 0x10200000

    #@ea
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@ed
    .line 1581
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@f0
    move-result-object v1

    #@f1
    .line 1582
    const v2, 0x112003b

    #@f4
    .line 1581
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@f7
    move-result v1

    #@f8
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    #@fa
    .line 1583
    new-instance v1, Landroid/content/Intent;

    #@fc
    const-string/jumbo v2, "android.intent.action.MAIN"

    #@ff
    const/4 v14, 0x0

    #@100
    invoke-direct {v1, v2, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@103
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    #@105
    .line 1584
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    #@107
    const-string/jumbo v2, "android.intent.category.CAR_DOCK"

    #@10a
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@10d
    .line 1585
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    #@10f
    const/high16 v2, 0x10200000

    #@111
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@114
    .line 1587
    new-instance v1, Landroid/content/Intent;

    #@116
    const-string/jumbo v2, "android.intent.action.MAIN"

    #@119
    const/4 v14, 0x0

    #@11a
    invoke-direct {v1, v2, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@11d
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    #@11f
    .line 1588
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    #@121
    const-string/jumbo v2, "android.intent.category.DESK_DOCK"

    #@124
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@127
    .line 1589
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    #@129
    const/high16 v2, 0x10200000

    #@12b
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@12e
    .line 1592
    const-string/jumbo v1, "power"

    #@131
    move-object/from16 v0, p1

    #@133
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@136
    move-result-object v1

    #@137
    check-cast v1, Landroid/os/PowerManager;

    #@139
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@13b
    .line 1593
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@13d
    .line 1594
    const-string/jumbo v2, "PhoneWindowManager.mBroadcastWakeLock"

    #@140
    .line 1593
    const/4 v14, 0x1

    #@141
    invoke-virtual {v1, v14, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@144
    move-result-object v1

    #@145
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    #@147
    .line 1595
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@149
    .line 1596
    const-string/jumbo v2, "PhoneWindowManager.mPowerKeyWakeLock"

    #@14c
    .line 1595
    const/4 v14, 0x1

    #@14d
    invoke-virtual {v1, v14, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@150
    move-result-object v1

    #@151
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    #@153
    .line 1597
    const-string/jumbo v1, "1"

    #@156
    const-string/jumbo v2, "ro.debuggable"

    #@159
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@15c
    move-result-object v2

    #@15d
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@160
    move-result v1

    #@161
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    #@163
    .line 1598
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@165
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@168
    move-result-object v1

    #@169
    .line 1599
    const v2, 0x1120034

    #@16c
    .line 1598
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@16f
    move-result v1

    #@170
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    #@172
    .line 1601
    const v1, 0x10e0041

    #@175
    .line 1600
    invoke-direct {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->readRotation(I)I

    #@178
    move-result v1

    #@179
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidOpenRotation:I

    #@17b
    .line 1603
    const v1, 0x10e0046

    #@17e
    .line 1602
    invoke-direct {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->readRotation(I)I

    #@181
    move-result v1

    #@182
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockRotation:I

    #@184
    .line 1605
    const v1, 0x10e0044

    #@187
    .line 1604
    invoke-direct {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->readRotation(I)I

    #@18a
    move-result v1

    #@18b
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockRotation:I

    #@18d
    .line 1607
    const v1, 0x10e0048

    #@190
    .line 1606
    invoke-direct {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->readRotation(I)I

    #@193
    move-result v1

    #@194
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUndockedHdmiRotation:I

    #@196
    .line 1608
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@198
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@19b
    move-result-object v1

    #@19c
    .line 1609
    const v2, 0x112003a

    #@19f
    .line 1608
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@1a2
    move-result v1

    #@1a3
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    #@1a5
    .line 1610
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@1a7
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1aa
    move-result-object v1

    #@1ab
    .line 1611
    const v2, 0x1120039

    #@1ae
    .line 1610
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@1b1
    move-result v1

    #@1b2
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    #@1b4
    .line 1612
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@1b6
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1b9
    move-result-object v1

    #@1ba
    .line 1613
    const v2, 0x10e0042

    #@1bd
    .line 1612
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@1c0
    move-result v1

    #@1c1
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    #@1c3
    .line 1614
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@1c5
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1c8
    move-result-object v1

    #@1c9
    .line 1615
    const v2, 0x10e0043

    #@1cc
    .line 1614
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@1cf
    move-result v1

    #@1d0
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    #@1d2
    .line 1616
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@1d4
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1d7
    move-result-object v1

    #@1d8
    .line 1617
    const v2, 0x1120037

    #@1db
    .line 1616
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@1de
    move-result v1

    #@1df
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsScreenLock:Z

    #@1e1
    .line 1618
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@1e3
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1e6
    move-result-object v1

    #@1e7
    .line 1619
    const v2, 0x1120038

    #@1ea
    .line 1618
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@1ed
    move-result v1

    #@1ee
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    #@1f0
    .line 1620
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@1f2
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1f5
    move-result-object v1

    #@1f6
    .line 1621
    const v2, 0x1120047

    #@1f9
    .line 1620
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@1fc
    move-result v1

    #@1fd
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    #@1ff
    .line 1623
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@201
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@204
    move-result-object v1

    #@205
    .line 1624
    const v2, 0x112002c

    #@208
    .line 1623
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@20b
    move-result v1

    #@20c
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    #@20e
    .line 1625
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    #@210
    if-nez v1, :cond_6

    #@212
    .line 1626
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@214
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@217
    move-result-object v1

    #@218
    .line 1627
    const v2, 0x112002b

    #@21b
    .line 1626
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@21e
    move-result v1

    #@21f
    .line 1625
    :goto_2
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromPowerKey:Z

    #@221
    .line 1628
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@223
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@226
    move-result-object v1

    #@227
    .line 1629
    const v2, 0x112002d

    #@22a
    .line 1628
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@22d
    move-result v1

    #@22e
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotion:Z

    #@230
    .line 1630
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@232
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@235
    move-result-object v1

    #@236
    .line 1631
    const v2, 0x112002e

    #@239
    .line 1630
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@23c
    move-result v1

    #@23d
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotionWhenNotDreaming:Z

    #@23f
    .line 1632
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@241
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@244
    move-result-object v1

    #@245
    .line 1633
    const v2, 0x112002a

    #@248
    .line 1632
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@24b
    move-result v1

    #@24c
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromCameraLens:Z

    #@24e
    .line 1634
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@250
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@253
    move-result-object v1

    #@254
    .line 1635
    const v2, 0x112002f

    #@257
    .line 1634
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@25a
    move-result v1

    #@25b
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromLidSwitch:Z

    #@25d
    .line 1636
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@25f
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@262
    move-result-object v1

    #@263
    .line 1637
    const v2, 0x1120029

    #@266
    .line 1636
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@269
    move-result v1

    #@26a
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromWakeGesture:Z

    #@26c
    .line 1639
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@26e
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@271
    move-result-object v1

    #@272
    .line 1640
    const v2, 0x1120032

    #@275
    .line 1639
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@278
    move-result v1

    #@279
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoToSleepOnButtonPressTheaterMode:Z

    #@27b
    .line 1642
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@27d
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@280
    move-result-object v1

    #@281
    .line 1643
    const v2, 0x1120033

    #@284
    .line 1642
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@287
    move-result v1

    #@288
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    #@28a
    .line 1645
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@28c
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@28f
    move-result-object v1

    #@290
    .line 1646
    const v2, 0x10e004f

    #@293
    .line 1645
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@296
    move-result v1

    #@297
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    #@299
    .line 1648
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@29b
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@29e
    move-result-object v1

    #@29f
    .line 1649
    const v2, 0x10e0050

    #@2a2
    .line 1648
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@2a5
    move-result v1

    #@2a6
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    #@2a8
    .line 1650
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@2aa
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2ad
    move-result-object v1

    #@2ae
    .line 1651
    const v2, 0x10e004e

    #@2b1
    .line 1650
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@2b4
    move-result v1

    #@2b5
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    #@2b7
    .line 1652
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@2b9
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2bc
    move-result-object v1

    #@2bd
    .line 1653
    const v2, 0x10e0051

    #@2c0
    .line 1652
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@2c3
    move-result v1

    #@2c4
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    #@2c6
    .line 1654
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@2c8
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2cb
    move-result-object v1

    #@2cc
    .line 1655
    const v2, 0x10e0052

    #@2cf
    .line 1654
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@2d2
    move-result v1

    #@2d3
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    #@2d5
    .line 1656
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@2d7
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2da
    move-result-object v1

    #@2db
    .line 1657
    const v2, 0x10e0053

    #@2de
    .line 1656
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@2e1
    move-result v1

    #@2e2
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    #@2e4
    .line 1659
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@2e6
    invoke-static {v1}, Landroid/media/AudioSystem;->getPlatformType(Landroid/content/Context;)I

    #@2e9
    move-result v1

    #@2ea
    const/4 v2, 0x2

    #@2eb
    if-ne v1, v2, :cond_7

    #@2ed
    const/4 v1, 0x1

    #@2ee
    :goto_3
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    #@2f0
    .line 1661
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->readConfigurationDependentBehaviors()V

    #@2f3
    .line 1664
    const-string/jumbo v1, "accessibility"

    #@2f6
    .line 1663
    move-object/from16 v0, p1

    #@2f8
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@2fb
    move-result-object v1

    #@2fc
    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    #@2fe
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@300
    .line 1667
    new-instance v11, Landroid/content/IntentFilter;

    #@302
    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    #@305
    .line 1668
    .local v11, "filter":Landroid/content/IntentFilter;
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    #@307
    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@30a
    .line 1669
    sget-object v1, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    #@30c
    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@30f
    .line 1670
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    #@311
    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@314
    .line 1671
    sget-object v1, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    #@316
    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@319
    .line 1672
    const-string/jumbo v1, "android.intent.action.DOCK_EVENT"

    #@31c
    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@31f
    .line 1673
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    #@321
    move-object/from16 v0, p1

    #@323
    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@326
    move-result-object v12

    #@327
    .line 1674
    .local v12, "intent":Landroid/content/Intent;
    if-eqz v12, :cond_2

    #@329
    .line 1676
    const-string/jumbo v1, "android.intent.extra.DOCK_STATE"

    #@32c
    .line 1677
    const/4 v2, 0x0

    #@32d
    .line 1676
    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@330
    move-result v1

    #@331
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    #@333
    .line 1681
    :cond_2
    new-instance v11, Landroid/content/IntentFilter;

    #@335
    .end local v11    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    #@338
    .line 1682
    .restart local v11    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.DREAMING_STARTED"

    #@33b
    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@33e
    .line 1683
    const-string/jumbo v1, "android.intent.action.DREAMING_STOPPED"

    #@341
    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@344
    .line 1684
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamReceiver:Landroid/content/BroadcastReceiver;

    #@346
    move-object/from16 v0, p1

    #@348
    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@34b
    .line 1687
    new-instance v11, Landroid/content/IntentFilter;

    #@34d
    .end local v11    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    #@350
    invoke-direct {v11, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@353
    .line 1688
    .restart local v11    # "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    #@355
    move-object/from16 v0, p1

    #@357
    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@35a
    .line 1691
    new-instance v1, Lcom/android/server/policy/SystemGesturesPointerEventListener;

    #@35c
    .line 1692
    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$13;

    #@35e
    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManager$13;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@361
    .line 1691
    move-object/from16 v0, p1

    #@363
    invoke-direct {v1, v0, v2}, Lcom/android/server/policy/SystemGesturesPointerEventListener;-><init>(Landroid/content/Context;Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;)V

    #@366
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    #@368
    .line 1755
    new-instance v1, Lcom/android/server/policy/ImmersiveModeConfirmation;

    #@36a
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@36c
    invoke-direct {v1, v2}, Lcom/android/server/policy/ImmersiveModeConfirmation;-><init>(Landroid/content/Context;)V

    #@36f
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    #@371
    .line 1756
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@373
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    #@375
    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    #@378
    .line 1758
    const-string/jumbo v1, "vibrator"

    #@37b
    move-object/from16 v0, p1

    #@37d
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@380
    move-result-object v1

    #@381
    check-cast v1, Landroid/os/Vibrator;

    #@383
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    #@385
    .line 1759
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@387
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@38a
    move-result-object v1

    #@38b
    .line 1760
    const v2, 0x107001f

    #@38e
    .line 1759
    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    #@391
    move-result-object v1

    #@392
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressVibePattern:[J

    #@394
    .line 1761
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@396
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@399
    move-result-object v1

    #@39a
    .line 1762
    const v2, 0x1070020

    #@39d
    .line 1761
    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    #@3a0
    move-result-object v1

    #@3a1
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVirtualKeyVibePattern:[J

    #@3a3
    .line 1763
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@3a5
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3a8
    move-result-object v1

    #@3a9
    .line 1764
    const v2, 0x1070021

    #@3ac
    .line 1763
    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    #@3af
    move-result-object v1

    #@3b0
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyboardTapVibePattern:[J

    #@3b2
    .line 1765
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@3b4
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3b7
    move-result-object v1

    #@3b8
    .line 1766
    const v2, 0x1070022

    #@3bb
    .line 1765
    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    #@3be
    move-result-object v1

    #@3bf
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mClockTickVibePattern:[J

    #@3c1
    .line 1767
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@3c3
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3c6
    move-result-object v1

    #@3c7
    .line 1768
    const v2, 0x1070023

    #@3ca
    .line 1767
    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    #@3cd
    move-result-object v1

    #@3ce
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCalendarDateVibePattern:[J

    #@3d0
    .line 1769
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@3d2
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3d5
    move-result-object v1

    #@3d6
    .line 1770
    const v2, 0x1070024

    #@3d9
    .line 1769
    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    #@3dc
    move-result-object v1

    #@3dd
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    #@3df
    .line 1771
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@3e1
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3e4
    move-result-object v1

    #@3e5
    .line 1772
    const v2, 0x1070025

    #@3e8
    .line 1771
    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    #@3eb
    move-result-object v1

    #@3ec
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    #@3ee
    .line 1773
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@3f0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3f3
    move-result-object v1

    #@3f4
    .line 1774
    const v2, 0x1070027

    #@3f7
    .line 1773
    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    #@3fa
    move-result-object v1

    #@3fb
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContextClickVibePattern:[J

    #@3fd
    .line 1776
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@3ff
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@402
    move-result-object v1

    #@403
    .line 1777
    const v2, 0x1120027

    #@406
    .line 1776
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@409
    move-result v1

    #@40a
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordEnabled:Z

    #@40c
    .line 1779
    new-instance v1, Lcom/android/server/policy/GlobalKeyManager;

    #@40e
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@410
    invoke-direct {v1, v2}, Lcom/android/server/policy/GlobalKeyManager;-><init>(Landroid/content/Context;)V

    #@413
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    #@415
    .line 1782
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->initializeHdmiState()V

    #@418
    .line 1785
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@41a
    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    #@41d
    move-result v1

    #@41e
    if-nez v1, :cond_3

    #@420
    .line 1786
    const/4 v1, 0x2

    #@421
    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startedGoingToSleep(I)V

    #@424
    .line 1787
    const/4 v1, 0x2

    #@425
    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->finishedGoingToSleep(I)V

    #@428
    .line 1790
    :cond_3
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    #@42a
    .line 1791
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@42c
    invoke-virtual {v2}, Lcom/android/server/policy/StatusBarController;->getAppTransitionListener()Landroid/view/WindowManagerInternal$AppTransitionListener;

    #@42f
    move-result-object v2

    #@430
    .line 1790
    invoke-virtual {v1, v2}, Landroid/view/WindowManagerInternal;->registerAppTransitionListener(Landroid/view/WindowManagerInternal$AppTransitionListener;)V

    #@433
    .line 1519
    return-void

    #@434
    .line 1548
    .end local v11    # "filter":Landroid/content/IntentFilter;
    .end local v12    # "intent":Landroid/content/Intent;
    .restart local v3    # "minHorizontal":I
    .restart local v4    # "maxHorizontal":I
    .restart local v5    # "minVertical":I
    .restart local v6    # "maxVertical":I
    :cond_4
    const/4 v7, -0x1

    #@435
    .restart local v7    # "maxRadius":I
    goto/16 :goto_0

    #@437
    .line 1550
    .end local v3    # "minHorizontal":I
    .end local v4    # "maxHorizontal":I
    .end local v5    # "minVertical":I
    .end local v6    # "maxVertical":I
    .end local v7    # "maxRadius":I
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@43a
    move-result-object v13

    #@43b
    .line 1552
    .local v13, "resources":Landroid/content/res/Resources;
    const v1, 0x10e009b

    #@43e
    .line 1551
    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@441
    move-result v3

    #@442
    .line 1554
    .restart local v3    # "minHorizontal":I
    const v1, 0x10e009c

    #@445
    .line 1553
    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@448
    move-result v4

    #@449
    .line 1556
    .restart local v4    # "maxHorizontal":I
    const v1, 0x10e009d

    #@44c
    .line 1555
    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@44f
    move-result v5

    #@450
    .line 1558
    .restart local v5    # "minVertical":I
    const v1, 0x10e009e

    #@453
    .line 1557
    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@456
    move-result v6

    #@457
    .line 1560
    .restart local v6    # "maxVertical":I
    const v1, 0x10e009a

    #@45a
    .line 1559
    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@45d
    move-result v7

    #@45e
    .restart local v7    # "maxRadius":I
    goto/16 :goto_0

    #@460
    .line 1625
    .end local v3    # "minHorizontal":I
    .end local v4    # "maxHorizontal":I
    .end local v5    # "minVertical":I
    .end local v6    # "maxVertical":I
    .end local v7    # "maxRadius":I
    .end local v13    # "resources":Landroid/content/res/Resources;
    :cond_6
    const/4 v1, 0x1

    #@461
    goto/16 :goto_2

    #@463
    .line 1659
    :cond_7
    const/4 v1, 0x0

    #@464
    goto/16 :goto_3

    #@466
    .line 1571
    :catch_0
    move-exception v10

    #@467
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
    .line 5454
    const/4 v5, 0x0

    #@3
    .line 5456
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
    .line 5457
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    #@13
    const-string/jumbo v11, "DEVPATH=/devices/virtual/switch/hdmi"

    #@16
    invoke-virtual {v8, v11}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    #@19
    .line 5459
    const-string/jumbo v3, "/sys/class/switch/hdmi/state"

    #@1c
    .line 5460
    .local v3, "filename":Ljava/lang/String;
    const/4 v6, 0x0

    #@1d
    .line 5462
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
    .line 5463
    .end local v6    # "reader":Ljava/io/FileReader;
    .local v7, "reader":Ljava/io/FileReader;
    const/16 v8, 0xf

    #@27
    :try_start_1
    new-array v0, v8, [C

    #@29
    .line 5464
    .local v0, "buf":[C
    invoke-virtual {v7, v0}, Ljava/io/FileReader;->read([C)I

    #@2c
    move-result v4

    #@2d
    .line 5465
    .local v4, "n":I
    if-le v4, v10, :cond_0

    #@2f
    .line 5466
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
    .line 5473
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    #@40
    .line 5475
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@43
    .line 5483
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
    .line 5484
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    #@4a
    if-eqz v8, :cond_5

    #@4c
    :goto_3
    invoke-virtual {p0, v9}, Lcom/android/server/policy/PhoneWindowManager;->setHdmiPlugged(Z)V

    #@4f
    .line 5453
    return-void

    #@50
    .line 5466
    .restart local v0    # "buf":[C
    .restart local v3    # "filename":Ljava/lang/String;
    .restart local v4    # "n":I
    .restart local v7    # "reader":Ljava/io/FileReader;
    :cond_2
    const/4 v5, 0x0

    #@51
    goto :goto_0

    #@52
    .line 5476
    :catch_0
    move-exception v1

    #@53
    .local v1, "ex":Ljava/io/IOException;
    goto :goto_1

    #@54
    .line 5470
    .end local v0    # "buf":[C
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v4    # "n":I
    .end local v7    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catch_1
    move-exception v2

    #@55
    .line 5471
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
    .line 5473
    if-eqz v6, :cond_1

    #@71
    .line 5475
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    #@74
    goto :goto_1

    #@75
    .line 5476
    :catch_2
    move-exception v1

    #@76
    .restart local v1    # "ex":Ljava/io/IOException;
    goto :goto_1

    #@77
    .line 5468
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catch_3
    move-exception v1

    #@78
    .line 5469
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
    .line 5473
    if-eqz v6, :cond_1

    #@94
    .line 5475
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    #@97
    goto :goto_1

    #@98
    .line 5476
    :catch_4
    move-exception v1

    #@99
    goto :goto_1

    #@9a
    .line 5472
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    #@9b
    .line 5473
    :goto_6
    if-eqz v6, :cond_3

    #@9d
    .line 5475
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    #@a0
    .line 5472
    :cond_3
    :goto_7
    throw v8

    #@a1
    .line 5476
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
    .line 5483
    goto :goto_2

    #@a5
    :cond_5
    move v9, v10

    #@a6
    .line 5484
    goto :goto_3

    #@a7
    .line 5472
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
    .line 5468
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
    .line 5470
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
    .locals 51
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    #@0
    .prologue
    .line 3025
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    #@3
    move-result v31

    #@4
    .line 3026
    .local v31, "keyguardOn":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    #@7
    move-result v30

    #@8
    .line 3027
    .local v30, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@b
    move-result v38

    #@c
    .line 3028
    .local v38, "repeatCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    #@f
    move-result v34

    #@10
    .line 3029
    .local v34, "metaState":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    #@13
    move-result v26

    #@14
    .line 3030
    .local v26, "flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    #@17
    move-result v4

    #@18
    if-nez v4, :cond_2

    #@1a
    const/16 v23, 0x1

    #@1c
    .line 3031
    .local v23, "down":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    #@1f
    move-result v18

    #@20
    .line 3042
    .local v18, "canceled":Z
    move-object/from16 v0, p0

    #@22
    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordEnabled:Z

    #@24
    if-eqz v4, :cond_4

    #@26
    move/from16 v0, v26

    #@28
    and-int/lit16 v4, v0, 0x400

    #@2a
    if-nez v4, :cond_4

    #@2c
    .line 3043
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
    .line 3051
    :cond_0
    const/16 v4, 0x19

    #@3a
    move/from16 v0, v30

    #@3c
    if-ne v0, v4, :cond_4

    #@3e
    .line 3052
    move-object/from16 v0, p0

    #@40
    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    #@42
    .line 3051
    if-eqz v4, :cond_4

    #@44
    .line 3053
    if-nez v23, :cond_1

    #@46
    .line 3054
    const/4 v4, 0x0

    #@47
    move-object/from16 v0, p0

    #@49
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    #@4b
    .line 3056
    :cond_1
    const-wide/16 v6, -0x1

    #@4d
    return-wide v6

    #@4e
    .line 3030
    .end local v18    # "canceled":Z
    .end local v23    # "down":Z
    :cond_2
    const/16 v23, 0x0

    #@50
    .restart local v23    # "down":Z
    goto :goto_0

    #@51
    .line 3044
    .restart local v18    # "canceled":Z
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@54
    move-result-wide v36

    #@55
    .line 3045
    .local v36, "now":J
    move-object/from16 v0, p0

    #@57
    iget-wide v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    #@59
    .line 3046
    const-wide/16 v8, 0x96

    #@5b
    .line 3045
    add-long v46, v6, v8

    #@5d
    .line 3047
    .local v46, "timeoutTime":J
    cmp-long v4, v36, v46

    #@5f
    if-gez v4, :cond_0

    #@61
    .line 3048
    sub-long v6, v46, v36

    #@63
    return-wide v6

    #@64
    .line 3062
    .end local v36    # "now":J
    .end local v46    # "timeoutTime":J
    :cond_4
    move-object/from16 v0, p0

    #@66
    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    #@68
    if-eqz v4, :cond_5

    #@6a
    invoke-static/range {v30 .. v30}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    #@6d
    move-result v4

    #@6e
    if-eqz v4, :cond_7

    #@70
    .line 3066
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    #@72
    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    #@74
    if-eqz v4, :cond_6

    #@76
    invoke-static/range {v30 .. v30}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    #@79
    move-result v4

    #@7a
    if-eqz v4, :cond_8

    #@7c
    .line 3074
    :cond_6
    :goto_2
    const/4 v4, 0x3

    #@7d
    move/from16 v0, v30

    #@7f
    if-ne v0, v4, :cond_16

    #@81
    .line 3078
    if-nez v23, :cond_c

    #@83
    .line 3079
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPreloadRecentApps()V

    #@86
    .line 3081
    const/4 v4, 0x0

    #@87
    move-object/from16 v0, p0

    #@89
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomePressed:Z

    #@8b
    .line 3082
    move-object/from16 v0, p0

    #@8d
    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    #@8f
    if-eqz v4, :cond_9

    #@91
    .line 3083
    const/4 v4, 0x0

    #@92
    move-object/from16 v0, p0

    #@94
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    #@96
    .line 3084
    const-wide/16 v6, -0x1

    #@98
    return-wide v6

    #@99
    .line 3063
    :cond_7
    const/4 v4, 0x0

    #@9a
    move-object/from16 v0, p0

    #@9c
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    #@9e
    goto :goto_1

    #@9f
    .line 3066
    :cond_8
    invoke-static/range {v30 .. v30}, Landroid/view/KeyEvent;->isAltKey(I)Z

    #@a2
    move-result v4

    #@a3
    if-nez v4, :cond_6

    #@a5
    .line 3067
    const/4 v4, 0x0

    #@a6
    move-object/from16 v0, p0

    #@a8
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    #@aa
    goto :goto_2

    #@ab
    .line 3087
    :cond_9
    if-eqz v18, :cond_a

    #@ad
    .line 3088
    const-string/jumbo v4, "WindowManager"

    #@b0
    const-string/jumbo v6, "Ignoring HOME; event canceled."

    #@b3
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@b6
    .line 3089
    const-wide/16 v6, -0x1

    #@b8
    return-wide v6

    #@b9
    .line 3093
    :cond_a
    move-object/from16 v0, p0

    #@bb
    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    #@bd
    if-eqz v4, :cond_b

    #@bf
    .line 3094
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
    .line 3095
    const/4 v4, 0x1

    #@cb
    move-object/from16 v0, p0

    #@cd
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapPending:Z

    #@cf
    .line 3096
    move-object/from16 v0, p0

    #@d1
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@d3
    move-object/from16 v0, p0

    #@d5
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    #@d7
    .line 3097
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    #@da
    move-result v7

    #@db
    int-to-long v8, v7

    #@dc
    .line 3096
    invoke-virtual {v4, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@df
    .line 3098
    const-wide/16 v6, -0x1

    #@e1
    return-wide v6

    #@e2
    .line 3101
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome()V

    #@e5
    .line 3102
    const-wide/16 v6, -0x1

    #@e7
    return-wide v6

    #@e8
    .line 3107
    :cond_c
    if-eqz p1, :cond_e

    #@ea
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@ed
    move-result-object v15

    #@ee
    .line 3108
    .local v15, "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_3
    if-eqz v15, :cond_11

    #@f0
    .line 3109
    iget v0, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    #@f2
    move/from16 v48, v0

    #@f4
    .line 3110
    .local v48, "type":I
    const/16 v4, 0x7ed

    #@f6
    move/from16 v0, v48

    #@f8
    if-eq v0, v4, :cond_d

    #@fa
    .line 3111
    const/16 v4, 0x7d9

    #@fc
    move/from16 v0, v48

    #@fe
    if-ne v0, v4, :cond_f

    #@100
    .line 3114
    :cond_d
    const-wide/16 v6, 0x0

    #@102
    return-wide v6

    #@103
    .line 3107
    .end local v15    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v48    # "type":I
    :cond_e
    const/4 v15, 0x0

    #@104
    goto :goto_3

    #@105
    .line 3112
    .restart local v15    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v48    # "type":I
    :cond_f
    iget v4, v15, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@107
    and-int/lit16 v4, v4, 0x400

    #@109
    if-nez v4, :cond_d

    #@10b
    .line 3116
    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    #@10d
    array-length v0, v4

    #@10e
    move/from16 v49, v0

    #@110
    .line 3117
    .local v49, "typeCount":I
    const/16 v28, 0x0

    #@112
    .local v28, "i":I
    :goto_4
    move/from16 v0, v28

    #@114
    move/from16 v1, v49

    #@116
    if-ge v0, v1, :cond_11

    #@118
    .line 3118
    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    #@11a
    aget v4, v4, v28

    #@11c
    move/from16 v0, v48

    #@11e
    if-ne v0, v4, :cond_10

    #@120
    .line 3120
    const-wide/16 v6, -0x1

    #@122
    return-wide v6

    #@123
    .line 3117
    :cond_10
    add-int/lit8 v28, v28, 0x1

    #@125
    goto :goto_4

    #@126
    .line 3126
    .end local v28    # "i":I
    .end local v48    # "type":I
    .end local v49    # "typeCount":I
    :cond_11
    if-nez v38, :cond_15

    #@128
    .line 3127
    const/4 v4, 0x1

    #@129
    move-object/from16 v0, p0

    #@12b
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomePressed:Z

    #@12d
    .line 3128
    move-object/from16 v0, p0

    #@12f
    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapPending:Z

    #@131
    if-eqz v4, :cond_13

    #@133
    .line 3129
    const/4 v4, 0x0

    #@134
    move-object/from16 v0, p0

    #@136
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapPending:Z

    #@138
    .line 3130
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
    .line 3131
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->handleDoubleTapOnHome()V

    #@146
    .line 3141
    :cond_12
    :goto_5
    const-wide/16 v6, -0x1

    #@148
    return-wide v6

    #@149
    .line 3132
    :cond_13
    move-object/from16 v0, p0

    #@14b
    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    #@14d
    const/4 v6, 0x1

    #@14e
    if-eq v4, v6, :cond_14

    #@150
    .line 3133
    move-object/from16 v0, p0

    #@152
    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    #@154
    const/4 v6, 0x1

    #@155
    if-ne v4, v6, :cond_12

    #@157
    .line 3134
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->preloadRecentApps()V

    #@15a
    goto :goto_5

    #@15b
    .line 3136
    :cond_15
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    #@15e
    move-result v4

    #@15f
    and-int/lit16 v4, v4, 0x80

    #@161
    if-eqz v4, :cond_12

    #@163
    .line 3137
    if-nez v31, :cond_12

    #@165
    .line 3138
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    #@168
    move-result v4

    #@169
    move-object/from16 v0, p0

    #@16b
    invoke-direct {v0, v4}, Lcom/android/server/policy/PhoneWindowManager;->handleLongPressOnHome(I)V

    #@16e
    goto :goto_5

    #@16f
    .line 3142
    .end local v15    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_16
    const/16 v4, 0x52

    #@171
    move/from16 v0, v30

    #@173
    if-ne v0, v4, :cond_17

    #@175
    .line 3144
    const/16 v20, 0x1

    #@177
    .line 3146
    .local v20, "chordBug":I
    if-eqz v23, :cond_1e

    #@179
    if-nez v38, :cond_1e

    #@17b
    .line 3147
    move-object/from16 v0, p0

    #@17d
    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    #@17f
    if-eqz v4, :cond_1e

    #@181
    and-int/lit8 v4, v34, 0x1

    #@183
    const/4 v6, 0x1

    #@184
    if-ne v4, v6, :cond_1e

    #@186
    .line 3148
    new-instance v5, Landroid/content/Intent;

    #@188
    const-string/jumbo v4, "android.intent.action.BUG_REPORT"

    #@18b
    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@18e
    .line 3149
    .local v5, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@190
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@192
    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@194
    .line 3150
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
    .line 3149
    invoke-virtual/range {v4 .. v12}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    #@19d
    .line 3151
    const-wide/16 v6, -0x1

    #@19f
    return-wide v6

    #@1a0
    .line 3169
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v20    # "chordBug":I
    :cond_17
    const/16 v4, 0x54

    #@1a2
    move/from16 v0, v30

    #@1a4
    if-ne v0, v4, :cond_1a

    #@1a6
    .line 3170
    if-eqz v23, :cond_19

    #@1a8
    .line 3171
    if-nez v38, :cond_18

    #@1aa
    .line 3172
    const/4 v4, 0x1

    #@1ab
    move-object/from16 v0, p0

    #@1ad
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    #@1af
    .line 3173
    const/4 v4, 0x0

    #@1b0
    move-object/from16 v0, p0

    #@1b2
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    #@1b4
    .line 3182
    :cond_18
    const-wide/16 v6, 0x0

    #@1b6
    return-wide v6

    #@1b7
    .line 3176
    :cond_19
    const/4 v4, 0x0

    #@1b8
    move-object/from16 v0, p0

    #@1ba
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    #@1bc
    .line 3177
    move-object/from16 v0, p0

    #@1be
    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    #@1c0
    if-eqz v4, :cond_18

    #@1c2
    .line 3178
    const/4 v4, 0x0

    #@1c3
    move-object/from16 v0, p0

    #@1c5
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    #@1c7
    .line 3179
    const-wide/16 v6, -0x1

    #@1c9
    return-wide v6

    #@1ca
    .line 3183
    :cond_1a
    const/16 v4, 0xbb

    #@1cc
    move/from16 v0, v30

    #@1ce
    if-ne v0, v4, :cond_1d

    #@1d0
    .line 3184
    if-nez v31, :cond_1b

    #@1d2
    .line 3185
    if-eqz v23, :cond_1c

    #@1d4
    if-nez v38, :cond_1c

    #@1d6
    .line 3186
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->preloadRecentApps()V

    #@1d9
    .line 3191
    :cond_1b
    :goto_6
    const-wide/16 v6, -0x1

    #@1db
    return-wide v6

    #@1dc
    .line 3187
    :cond_1c
    if-nez v23, :cond_1b

    #@1de
    .line 3188
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    #@1e1
    goto :goto_6

    #@1e2
    .line 3192
    :cond_1d
    const/16 v4, 0x2a

    #@1e4
    move/from16 v0, v30

    #@1e6
    if-ne v0, v4, :cond_20

    #@1e8
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    #@1eb
    move-result v4

    #@1ec
    if-eqz v4, :cond_20

    #@1ee
    .line 3193
    if-eqz v23, :cond_1e

    #@1f0
    .line 3194
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    #@1f3
    move-result-object v39

    #@1f4
    .line 3195
    .local v39, "service":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v39, :cond_1e

    #@1f6
    .line 3197
    :try_start_0
    invoke-interface/range {v39 .. v39}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f9
    .line 3309
    .end local v39    # "service":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_1e
    :goto_7
    const/4 v13, 0x0

    #@1fa
    .line 3310
    .local v13, "actionTriggered":Z
    invoke-static/range {v30 .. v30}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    #@1fd
    move-result v4

    #@1fe
    if-eqz v4, :cond_1f

    #@200
    .line 3311
    move-object/from16 v0, p0

    #@202
    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    #@204
    if-nez v4, :cond_35

    #@206
    .line 3313
    move-object/from16 v0, p0

    #@208
    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mMetaState:I

    #@20a
    move-object/from16 v0, p0

    #@20c
    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mInitialMetaState:I

    #@20e
    .line 3314
    const/4 v4, 0x1

    #@20f
    move-object/from16 v0, p0

    #@211
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    #@213
    .line 3334
    :cond_1f
    :goto_8
    move/from16 v0, v34

    #@215
    move-object/from16 v1, p0

    #@217
    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mMetaState:I

    #@219
    .line 3336
    if-eqz v13, :cond_37

    #@21b
    .line 3337
    const-wide/16 v6, -0x1

    #@21d
    return-wide v6

    #@21e
    .line 3198
    .end local v13    # "actionTriggered":Z
    .restart local v39    # "service":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v24

    #@21f
    .local v24, "e":Landroid/os/RemoteException;
    goto :goto_7

    #@220
    .line 3203
    .end local v24    # "e":Landroid/os/RemoteException;
    .end local v39    # "service":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_20
    const/16 v4, 0x2f

    #@222
    move/from16 v0, v30

    #@224
    if-ne v0, v4, :cond_22

    #@226
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    #@229
    move-result v4

    #@22a
    if-eqz v4, :cond_22

    #@22c
    .line 3204
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    #@22f
    move-result v4

    #@230
    .line 3203
    if-eqz v4, :cond_22

    #@232
    .line 3205
    if-eqz v23, :cond_1e

    #@234
    if-nez v38, :cond_1e

    #@236
    .line 3206
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    #@239
    move-result v4

    #@23a
    if-eqz v4, :cond_21

    #@23c
    const/16 v48, 0x2

    #@23e
    .line 3208
    .restart local v48    # "type":I
    :goto_9
    move-object/from16 v0, p0

    #@240
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    #@242
    move/from16 v0, v48

    #@244
    invoke-virtual {v4, v0}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->setScreenshotType(I)V

    #@247
    .line 3209
    move-object/from16 v0, p0

    #@249
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@24b
    move-object/from16 v0, p0

    #@24d
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    #@24f
    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@252
    .line 3210
    const-wide/16 v6, -0x1

    #@254
    return-wide v6

    #@255
    .line 3207
    .end local v48    # "type":I
    :cond_21
    const/16 v48, 0x1

    #@257
    .restart local v48    # "type":I
    goto :goto_9

    #@258
    .line 3212
    .end local v48    # "type":I
    :cond_22
    const/16 v4, 0x4c

    #@25a
    move/from16 v0, v30

    #@25c
    if-ne v0, v4, :cond_23

    #@25e
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    #@261
    move-result v4

    #@262
    if-eqz v4, :cond_23

    #@264
    .line 3213
    if-eqz v23, :cond_1e

    #@266
    if-nez v38, :cond_1e

    #@268
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    #@26b
    move-result v4

    #@26c
    if-nez v4, :cond_1e

    #@26e
    .line 3214
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    #@271
    move-result v4

    #@272
    move-object/from16 v0, p0

    #@274
    invoke-direct {v0, v4}, Lcom/android/server/policy/PhoneWindowManager;->toggleKeyboardShortcutsMenu(I)V

    #@277
    goto :goto_7

    #@278
    .line 3216
    :cond_23
    const/16 v4, 0xdb

    #@27a
    move/from16 v0, v30

    #@27c
    if-ne v0, v4, :cond_28

    #@27e
    .line 3217
    if-eqz v23, :cond_26

    #@280
    .line 3218
    if-nez v38, :cond_25

    #@282
    .line 3219
    const/4 v4, 0x0

    #@283
    move-object/from16 v0, p0

    #@285
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mAssistKeyLongPressed:Z

    #@287
    .line 3235
    :cond_24
    :goto_a
    const-wide/16 v6, -0x1

    #@289
    return-wide v6

    #@28a
    .line 3220
    :cond_25
    const/4 v4, 0x1

    #@28b
    move/from16 v0, v38

    #@28d
    if-ne v0, v4, :cond_24

    #@28f
    .line 3221
    const/4 v4, 0x1

    #@290
    move-object/from16 v0, p0

    #@292
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mAssistKeyLongPressed:Z

    #@294
    .line 3222
    if-nez v31, :cond_24

    #@296
    .line 3223
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistLongPressAction()V

    #@299
    goto :goto_a

    #@29a
    .line 3227
    :cond_26
    move-object/from16 v0, p0

    #@29c
    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mAssistKeyLongPressed:Z

    #@29e
    if-eqz v4, :cond_27

    #@2a0
    .line 3228
    const/4 v4, 0x0

    #@2a1
    move-object/from16 v0, p0

    #@2a3
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mAssistKeyLongPressed:Z

    #@2a5
    goto :goto_a

    #@2a6
    .line 3230
    :cond_27
    if-nez v31, :cond_24

    #@2a8
    .line 3231
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    #@2ab
    move-result v4

    #@2ac
    const/4 v6, 0x0

    #@2ad
    move-object/from16 v0, p0

    #@2af
    invoke-direct {v0, v6, v4}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    #@2b2
    goto :goto_a

    #@2b3
    .line 3236
    :cond_28
    const/16 v4, 0xe7

    #@2b5
    move/from16 v0, v30

    #@2b7
    if-ne v0, v4, :cond_2b

    #@2b9
    .line 3237
    if-nez v23, :cond_1e

    #@2bb
    .line 3239
    if-nez v31, :cond_29

    #@2bd
    .line 3240
    new-instance v50, Landroid/content/Intent;

    #@2bf
    const-string/jumbo v4, "android.speech.action.WEB_SEARCH"

    #@2c2
    move-object/from16 v0, v50

    #@2c4
    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@2c7
    .line 3253
    .local v50, "voiceIntent":Landroid/content/Intent;
    :goto_b
    sget-object v4, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    #@2c9
    move-object/from16 v0, p0

    #@2cb
    move-object/from16 v1, v50

    #@2cd
    invoke-direct {v0, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@2d0
    goto/16 :goto_7

    #@2d2
    .line 3243
    .end local v50    # "voiceIntent":Landroid/content/Intent;
    :cond_29
    const-string/jumbo v4, "deviceidle"

    #@2d5
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@2d8
    move-result-object v4

    #@2d9
    .line 3242
    invoke-static {v4}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    #@2dc
    move-result-object v21

    #@2dd
    .line 3244
    .local v21, "dic":Landroid/os/IDeviceIdleController;
    if-eqz v21, :cond_2a

    #@2df
    .line 3246
    :try_start_1
    const-string/jumbo v4, "voice-search"

    #@2e2
    move-object/from16 v0, v21

    #@2e4
    invoke-interface {v0, v4}, Landroid/os/IDeviceIdleController;->exitIdle(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_5

    #@2e7
    .line 3250
    :cond_2a
    :goto_c
    new-instance v50, Landroid/content/Intent;

    #@2e9
    const-string/jumbo v4, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    #@2ec
    move-object/from16 v0, v50

    #@2ee
    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@2f1
    .line 3251
    .restart local v50    # "voiceIntent":Landroid/content/Intent;
    const-string/jumbo v4, "android.speech.extras.EXTRA_SECURE"

    #@2f4
    const/4 v6, 0x1

    #@2f5
    move-object/from16 v0, v50

    #@2f7
    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@2fa
    goto :goto_b

    #@2fb
    .line 3255
    .end local v21    # "dic":Landroid/os/IDeviceIdleController;
    .end local v50    # "voiceIntent":Landroid/content/Intent;
    :cond_2b
    const/16 v4, 0x78

    #@2fd
    move/from16 v0, v30

    #@2ff
    if-ne v0, v4, :cond_2d

    #@301
    .line 3256
    if-eqz v23, :cond_2c

    #@303
    if-nez v38, :cond_2c

    #@305
    .line 3257
    move-object/from16 v0, p0

    #@307
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    #@309
    const/4 v6, 0x1

    #@30a
    invoke-virtual {v4, v6}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->setScreenshotType(I)V

    #@30d
    .line 3258
    move-object/from16 v0, p0

    #@30f
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@311
    move-object/from16 v0, p0

    #@313
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    #@315
    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@318
    .line 3260
    :cond_2c
    const-wide/16 v6, -0x1

    #@31a
    return-wide v6

    #@31b
    .line 3261
    :cond_2d
    const/16 v4, 0xdd

    #@31d
    move/from16 v0, v30

    #@31f
    if-eq v0, v4, :cond_2e

    #@321
    .line 3262
    const/16 v4, 0xdc

    #@323
    move/from16 v0, v30

    #@325
    if-ne v0, v4, :cond_32

    #@327
    .line 3263
    :cond_2e
    if-eqz v23, :cond_30

    #@329
    .line 3264
    const/16 v4, 0xdd

    #@32b
    move/from16 v0, v30

    #@32d
    if-ne v0, v4, :cond_31

    #@32f
    const/16 v22, 0x1

    #@331
    .line 3268
    .local v22, "direction":I
    :goto_d
    move-object/from16 v0, p0

    #@333
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@335
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@338
    move-result-object v4

    #@339
    .line 3269
    const-string/jumbo v6, "screen_brightness_mode"

    #@33c
    .line 3270
    const/4 v7, 0x0

    #@33d
    .line 3271
    const/4 v8, -0x3

    #@33e
    .line 3267
    invoke-static {v4, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@341
    move-result v16

    #@342
    .line 3272
    .local v16, "auto":I
    if-eqz v16, :cond_2f

    #@344
    .line 3273
    move-object/from16 v0, p0

    #@346
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@348
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@34b
    move-result-object v4

    #@34c
    .line 3274
    const-string/jumbo v6, "screen_brightness_mode"

    #@34f
    .line 3275
    const/4 v7, 0x0

    #@350
    .line 3276
    const/4 v8, -0x3

    #@351
    .line 3273
    invoke-static {v4, v6, v7, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@354
    .line 3279
    :cond_2f
    move-object/from16 v0, p0

    #@356
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@358
    invoke-virtual {v4}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    #@35b
    move-result v35

    #@35c
    .line 3280
    .local v35, "min":I
    move-object/from16 v0, p0

    #@35e
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@360
    invoke-virtual {v4}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    #@363
    move-result v32

    #@364
    .line 3281
    .local v32, "max":I
    sub-int v4, v32, v35

    #@366
    add-int/lit8 v4, v4, 0xa

    #@368
    add-int/lit8 v4, v4, -0x1

    #@36a
    div-int/lit8 v4, v4, 0xa

    #@36c
    mul-int v45, v4, v22

    #@36e
    .line 3282
    .local v45, "step":I
    move-object/from16 v0, p0

    #@370
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@372
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@375
    move-result-object v4

    #@376
    .line 3283
    const-string/jumbo v6, "screen_brightness"

    #@379
    .line 3284
    move-object/from16 v0, p0

    #@37b
    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@37d
    invoke-virtual {v7}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    #@380
    move-result v7

    #@381
    .line 3285
    const/4 v8, -0x3

    #@382
    .line 3282
    invoke-static {v4, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@385
    move-result v17

    #@386
    .line 3286
    .local v17, "brightness":I
    add-int v17, v17, v45

    #@388
    .line 3288
    move/from16 v0, v32

    #@38a
    move/from16 v1, v17

    #@38c
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@38f
    move-result v17

    #@390
    .line 3289
    move/from16 v0, v35

    #@392
    move/from16 v1, v17

    #@394
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@397
    move-result v17

    #@398
    .line 3291
    move-object/from16 v0, p0

    #@39a
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@39c
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@39f
    move-result-object v4

    #@3a0
    .line 3292
    const-string/jumbo v6, "screen_brightness"

    #@3a3
    .line 3293
    const/4 v7, -0x3

    #@3a4
    .line 3291
    move/from16 v0, v17

    #@3a6
    invoke-static {v4, v6, v0, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@3a9
    .line 3294
    new-instance v4, Landroid/content/Intent;

    #@3ab
    const-string/jumbo v6, "android.intent.action.SHOW_BRIGHTNESS_DIALOG"

    #@3ae
    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@3b1
    .line 3295
    sget-object v6, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    #@3b3
    .line 3294
    move-object/from16 v0, p0

    #@3b5
    invoke-direct {v0, v4, v6}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@3b8
    .line 3297
    .end local v16    # "auto":I
    .end local v17    # "brightness":I
    .end local v22    # "direction":I
    .end local v32    # "max":I
    .end local v35    # "min":I
    .end local v45    # "step":I
    :cond_30
    const-wide/16 v6, -0x1

    #@3ba
    return-wide v6

    #@3bb
    .line 3264
    :cond_31
    const/16 v22, -0x1

    #@3bd
    .restart local v22    # "direction":I
    goto/16 :goto_d

    #@3bf
    .line 3298
    .end local v22    # "direction":I
    :cond_32
    const/16 v4, 0x18

    #@3c1
    move/from16 v0, v30

    #@3c3
    if-eq v0, v4, :cond_33

    #@3c5
    .line 3299
    const/16 v4, 0x19

    #@3c7
    move/from16 v0, v30

    #@3c9
    if-ne v0, v4, :cond_34

    #@3cb
    .line 3301
    :cond_33
    :goto_e
    move-object/from16 v0, p0

    #@3cd
    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    #@3cf
    if-eqz v4, :cond_1e

    #@3d1
    .line 3303
    move-object/from16 v0, p0

    #@3d3
    move-object/from16 v1, p2

    #@3d5
    invoke-direct {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchDirectAudioEvent(Landroid/view/KeyEvent;)V

    #@3d8
    .line 3304
    const-wide/16 v6, -0x1

    #@3da
    return-wide v6

    #@3db
    .line 3300
    :cond_34
    const/16 v4, 0xa4

    #@3dd
    move/from16 v0, v30

    #@3df
    if-ne v0, v4, :cond_1e

    #@3e1
    goto :goto_e

    #@3e2
    .line 3315
    .restart local v13    # "actionTriggered":Z
    :cond_35
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    #@3e5
    move-result v4

    #@3e6
    const/4 v6, 0x1

    #@3e7
    if-ne v4, v6, :cond_1f

    #@3e9
    .line 3316
    move-object/from16 v0, p0

    #@3eb
    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mMetaState:I

    #@3ed
    and-int/lit8 v14, v4, 0x32

    #@3ef
    .line 3317
    .local v14, "altOnMask":I
    move-object/from16 v0, p0

    #@3f1
    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mMetaState:I

    #@3f3
    const/high16 v6, 0x70000

    #@3f5
    and-int v33, v4, v6

    #@3f7
    .line 3320
    .local v33, "metaOnMask":I
    if-eqz v33, :cond_36

    #@3f9
    if-eqz v14, :cond_36

    #@3fb
    .line 3322
    move-object/from16 v0, p0

    #@3fd
    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mInitialMetaState:I

    #@3ff
    move-object/from16 v0, p0

    #@401
    iget v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mMetaState:I

    #@403
    or-int v7, v14, v33

    #@405
    xor-int/2addr v6, v7

    #@406
    if-ne v4, v6, :cond_36

    #@408
    .line 3324
    move-object/from16 v0, p0

    #@40a
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    #@40c
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    #@40f
    move-result v6

    #@410
    invoke-virtual {v4, v6}, Landroid/hardware/input/InputManagerInternal;->toggleCapsLock(I)V

    #@413
    .line 3325
    const/4 v13, 0x1

    #@414
    .line 3330
    :cond_36
    const/4 v4, 0x0

    #@415
    move-object/from16 v0, p0

    #@417
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    #@419
    goto/16 :goto_8

    #@41b
    .line 3340
    .end local v14    # "altOnMask":I
    .end local v33    # "metaOnMask":I
    :cond_37
    invoke-static/range {v30 .. v30}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    #@41e
    move-result v4

    #@41f
    if-eqz v4, :cond_3a

    #@421
    .line 3341
    if-eqz v23, :cond_39

    #@423
    .line 3342
    const/4 v4, 0x1

    #@424
    move-object/from16 v0, p0

    #@426
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    #@428
    .line 3346
    :cond_38
    :goto_f
    const-wide/16 v6, -0x1

    #@42a
    return-wide v6

    #@42b
    .line 3343
    :cond_39
    move-object/from16 v0, p0

    #@42d
    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    #@42f
    if-eqz v4, :cond_38

    #@431
    .line 3344
    const-string/jumbo v4, "android.intent.extra.ASSIST_INPUT_HINT_KEYBOARD"

    #@434
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    #@437
    move-result v6

    #@438
    move-object/from16 v0, p0

    #@43a
    invoke-direct {v0, v4, v6}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    #@43d
    goto :goto_f

    #@43e
    .line 3354
    :cond_3a
    move-object/from16 v0, p0

    #@440
    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    #@442
    if-eqz v4, :cond_3e

    #@444
    .line 3355
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    #@447
    move-result-object v29

    #@448
    .line 3356
    .local v29, "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual/range {v29 .. v30}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    #@44b
    move-result v4

    #@44c
    if-eqz v4, :cond_3e

    #@44e
    .line 3357
    const/4 v4, 0x1

    #@44f
    move-object/from16 v0, p0

    #@451
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    #@453
    .line 3358
    const/4 v4, 0x0

    #@454
    move-object/from16 v0, p0

    #@456
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    #@458
    .line 3359
    if-eqz v23, :cond_3b

    #@45a
    if-nez v38, :cond_3b

    #@45c
    if-eqz v31, :cond_3c

    #@45e
    .line 3376
    :cond_3b
    :goto_10
    const-wide/16 v6, -0x1

    #@460
    return-wide v6

    #@461
    .line 3360
    :cond_3c
    move-object/from16 v0, p0

    #@463
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutManager:Lcom/android/server/policy/ShortcutManager;

    #@465
    move-object/from16 v0, v29

    #@467
    move/from16 v1, v30

    #@469
    move/from16 v2, v34

    #@46b
    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/policy/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    #@46e
    move-result-object v41

    #@46f
    .line 3361
    .local v41, "shortcutIntent":Landroid/content/Intent;
    if-eqz v41, :cond_3d

    #@471
    .line 3362
    const/high16 v4, 0x10000000

    #@473
    move-object/from16 v0, v41

    #@475
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@478
    .line 3364
    :try_start_2
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@47a
    move-object/from16 v0, p0

    #@47c
    move-object/from16 v1, v41

    #@47e
    invoke-direct {v0, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@481
    .line 3365
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    #@484
    goto :goto_10

    #@485
    .line 3366
    :catch_1
    move-exception v25

    #@486
    .line 3367
    .local v25, "ex":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v4, "WindowManager"

    #@489
    new-instance v6, Ljava/lang/StringBuilder;

    #@48b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@48e
    const-string/jumbo v7, "Dropping shortcut key combination because the activity to which it is registered was not found: SEARCH+"

    #@491
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@494
    move-result-object v6

    #@495
    .line 3369
    invoke-static/range {v30 .. v30}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    #@498
    move-result-object v7

    #@499
    .line 3367
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49c
    move-result-object v6

    #@49d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a0
    move-result-object v6

    #@4a1
    move-object/from16 v0, v25

    #@4a3
    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4a6
    goto :goto_10

    #@4a7
    .line 3372
    .end local v25    # "ex":Landroid/content/ActivityNotFoundException;
    :cond_3d
    const-string/jumbo v4, "WindowManager"

    #@4aa
    new-instance v6, Ljava/lang/StringBuilder;

    #@4ac
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@4af
    const-string/jumbo v7, "Dropping unregistered shortcut key combination: SEARCH+"

    #@4b2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b5
    move-result-object v6

    #@4b6
    .line 3373
    invoke-static/range {v30 .. v30}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    #@4b9
    move-result-object v7

    #@4ba
    .line 3372
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4bd
    move-result-object v6

    #@4be
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c1
    move-result-object v6

    #@4c2
    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@4c5
    goto :goto_10

    #@4c6
    .line 3381
    .end local v29    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v41    # "shortcutIntent":Landroid/content/Intent;
    :cond_3e
    if-eqz v23, :cond_3f

    #@4c8
    if-nez v38, :cond_3f

    #@4ca
    if-eqz v31, :cond_43

    #@4cc
    .line 3404
    :cond_3f
    if-eqz v23, :cond_40

    #@4ce
    if-nez v38, :cond_40

    #@4d0
    if-eqz v31, :cond_44

    #@4d2
    .line 3422
    :cond_40
    if-eqz v23, :cond_46

    #@4d4
    if-nez v38, :cond_46

    #@4d6
    const/16 v4, 0x3d

    #@4d8
    move/from16 v0, v30

    #@4da
    if-ne v0, v4, :cond_46

    #@4dc
    .line 3423
    move-object/from16 v0, p0

    #@4de
    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    #@4e0
    if-nez v4, :cond_41

    #@4e2
    if-eqz v31, :cond_45

    #@4e4
    .line 3438
    :cond_41
    :goto_11
    if-eqz v23, :cond_48

    #@4e6
    if-nez v38, :cond_48

    #@4e8
    .line 3439
    const/16 v4, 0xcc

    #@4ea
    move/from16 v0, v30

    #@4ec
    if-eq v0, v4, :cond_42

    #@4ee
    .line 3440
    const/16 v4, 0x3e

    #@4f0
    move/from16 v0, v30

    #@4f2
    if-ne v0, v4, :cond_48

    #@4f4
    .line 3441
    const/high16 v4, 0x70000

    #@4f6
    and-int v4, v4, v34

    #@4f8
    if-eqz v4, :cond_48

    #@4fa
    .line 3442
    :cond_42
    move/from16 v0, v34

    #@4fc
    and-int/lit16 v4, v0, 0xc1

    #@4fe
    if-nez v4, :cond_47

    #@500
    const/16 v27, 0x1

    #@502
    .line 3443
    .local v27, "forwardDirection":Z
    :goto_12
    move-object/from16 v0, p0

    #@504
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@506
    move/from16 v0, v27

    #@508
    invoke-interface {v4, v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->switchInputMethod(Z)V

    #@50b
    .line 3444
    const-wide/16 v6, -0x1

    #@50d
    return-wide v6

    #@50e
    .line 3382
    .end local v27    # "forwardDirection":Z
    :cond_43
    const/high16 v4, 0x10000

    #@510
    and-int v4, v4, v34

    #@512
    if-eqz v4, :cond_3f

    #@514
    .line 3383
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    #@517
    move-result-object v29

    #@518
    .line 3384
    .restart local v29    # "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual/range {v29 .. v30}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    #@51b
    move-result v4

    #@51c
    if-eqz v4, :cond_3f

    #@51e
    .line 3385
    move-object/from16 v0, p0

    #@520
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutManager:Lcom/android/server/policy/ShortcutManager;

    #@522
    .line 3386
    const v6, -0x70001

    #@525
    and-int v6, v6, v34

    #@527
    .line 3385
    move-object/from16 v0, v29

    #@529
    move/from16 v1, v30

    #@52b
    invoke-virtual {v4, v0, v1, v6}, Lcom/android/server/policy/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    #@52e
    move-result-object v41

    #@52f
    .line 3388
    .restart local v41    # "shortcutIntent":Landroid/content/Intent;
    if-eqz v41, :cond_3f

    #@531
    .line 3389
    const/high16 v4, 0x10000000

    #@533
    move-object/from16 v0, v41

    #@535
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@538
    .line 3391
    :try_start_3
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@53a
    move-object/from16 v0, p0

    #@53c
    move-object/from16 v1, v41

    #@53e
    invoke-direct {v0, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@541
    .line 3392
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    #@544
    .line 3398
    :goto_13
    const-wide/16 v6, -0x1

    #@546
    return-wide v6

    #@547
    .line 3393
    :catch_2
    move-exception v25

    #@548
    .line 3394
    .restart local v25    # "ex":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v4, "WindowManager"

    #@54b
    new-instance v6, Ljava/lang/StringBuilder;

    #@54d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@550
    const-string/jumbo v7, "Dropping shortcut key combination because the activity to which it is registered was not found: META+"

    #@553
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@556
    move-result-object v6

    #@557
    .line 3396
    invoke-static/range {v30 .. v30}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    #@55a
    move-result-object v7

    #@55b
    .line 3394
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55e
    move-result-object v6

    #@55f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@562
    move-result-object v6

    #@563
    move-object/from16 v0, v25

    #@565
    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@568
    goto :goto_13

    #@569
    .line 3405
    .end local v25    # "ex":Landroid/content/ActivityNotFoundException;
    .end local v29    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v41    # "shortcutIntent":Landroid/content/Intent;
    :cond_44
    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    #@56b
    move/from16 v0, v30

    #@56d
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@570
    move-result-object v19

    #@571
    check-cast v19, Ljava/lang/String;

    #@573
    .line 3406
    .local v19, "category":Ljava/lang/String;
    if-eqz v19, :cond_40

    #@575
    .line 3407
    const-string/jumbo v4, "android.intent.action.MAIN"

    #@578
    move-object/from16 v0, v19

    #@57a
    invoke-static {v4, v0}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@57d
    move-result-object v5

    #@57e
    .line 3408
    .restart local v5    # "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    #@580
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@583
    .line 3410
    :try_start_4
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@585
    move-object/from16 v0, p0

    #@587
    invoke-direct {v0, v5, v4}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@58a
    .line 3411
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    #@58d
    .line 3417
    :goto_14
    const-wide/16 v6, -0x1

    #@58f
    return-wide v6

    #@590
    .line 3412
    :catch_3
    move-exception v25

    #@591
    .line 3413
    .restart local v25    # "ex":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v4, "WindowManager"

    #@594
    new-instance v6, Ljava/lang/StringBuilder;

    #@596
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@599
    const-string/jumbo v7, "Dropping application launch key because the activity to which it is registered was not found: keyCode="

    #@59c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59f
    move-result-object v6

    #@5a0
    move/from16 v0, v30

    #@5a2
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a5
    move-result-object v6

    #@5a6
    .line 3415
    const-string/jumbo v7, ", category="

    #@5a9
    .line 3413
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5ac
    move-result-object v6

    #@5ad
    move-object/from16 v0, v19

    #@5af
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b2
    move-result-object v6

    #@5b3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b6
    move-result-object v6

    #@5b7
    move-object/from16 v0, v25

    #@5b9
    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5bc
    goto :goto_14

    #@5bd
    .line 3423
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v19    # "category":Ljava/lang/String;
    .end local v25    # "ex":Landroid/content/ActivityNotFoundException;
    :cond_45
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    #@5c0
    move-result v4

    #@5c1
    if-eqz v4, :cond_41

    #@5c3
    .line 3424
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getModifiers()I

    #@5c6
    move-result v4

    #@5c7
    and-int/lit16 v0, v4, -0xc2

    #@5c9
    move/from16 v40, v0

    #@5cb
    .line 3425
    .local v40, "shiftlessModifiers":I
    const/4 v4, 0x2

    #@5cc
    move/from16 v0, v40

    #@5ce
    invoke-static {v0, v4}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    #@5d1
    move-result v4

    #@5d2
    if-eqz v4, :cond_41

    #@5d4
    .line 3426
    move/from16 v0, v40

    #@5d6
    move-object/from16 v1, p0

    #@5d8
    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    #@5da
    .line 3427
    const/4 v4, 0x1

    #@5db
    const/4 v6, 0x0

    #@5dc
    move-object/from16 v0, p0

    #@5de
    invoke-direct {v0, v4, v6}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(ZZ)V

    #@5e1
    .line 3428
    const-wide/16 v6, -0x1

    #@5e3
    return-wide v6

    #@5e4
    .line 3431
    .end local v40    # "shiftlessModifiers":I
    :cond_46
    if-nez v23, :cond_41

    #@5e6
    move-object/from16 v0, p0

    #@5e8
    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    #@5ea
    if-eqz v4, :cond_41

    #@5ec
    .line 3432
    move-object/from16 v0, p0

    #@5ee
    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    #@5f0
    and-int v4, v4, v34

    #@5f2
    if-nez v4, :cond_41

    #@5f4
    .line 3433
    const/4 v4, 0x0

    #@5f5
    move-object/from16 v0, p0

    #@5f7
    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    #@5f9
    .line 3434
    const/4 v4, 0x1

    #@5fa
    const/4 v6, 0x0

    #@5fb
    move-object/from16 v0, p0

    #@5fd
    invoke-direct {v0, v4, v6}, Lcom/android/server/policy/PhoneWindowManager;->hideRecentApps(ZZ)V

    #@600
    goto/16 :goto_11

    #@602
    .line 3442
    :cond_47
    const/16 v27, 0x0

    #@604
    .restart local v27    # "forwardDirection":Z
    goto/16 :goto_12

    #@606
    .line 3446
    .end local v27    # "forwardDirection":Z
    :cond_48
    move-object/from16 v0, p0

    #@608
    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    #@60a
    if-eqz v4, :cond_49

    #@60c
    if-eqz v23, :cond_4a

    #@60e
    .line 3453
    :cond_49
    invoke-static/range {v30 .. v30}, Lcom/android/server/policy/PhoneWindowManager;->isValidGlobalKey(I)Z

    #@611
    move-result v4

    #@612
    if-eqz v4, :cond_4c

    #@614
    .line 3454
    move-object/from16 v0, p0

    #@616
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    #@618
    move-object/from16 v0, p0

    #@61a
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@61c
    move/from16 v0, v30

    #@61e
    move-object/from16 v1, p2

    #@620
    invoke-virtual {v4, v6, v0, v1}, Lcom/android/server/policy/GlobalKeyManager;->handleGlobalKey(Landroid/content/Context;ILandroid/view/KeyEvent;)Z

    #@623
    move-result v4

    #@624
    .line 3453
    if-eqz v4, :cond_4c

    #@626
    .line 3455
    const-wide/16 v6, -0x1

    #@628
    return-wide v6

    #@629
    .line 3447
    :cond_4a
    const/16 v4, 0xcc

    #@62b
    move/from16 v0, v30

    #@62d
    if-eq v0, v4, :cond_4b

    #@62f
    .line 3448
    const/16 v4, 0x3e

    #@631
    move/from16 v0, v30

    #@633
    if-ne v0, v4, :cond_49

    #@635
    .line 3449
    :cond_4b
    const/4 v4, 0x0

    #@636
    move-object/from16 v0, p0

    #@638
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    #@63a
    .line 3450
    const-wide/16 v6, -0x1

    #@63c
    return-wide v6

    #@63d
    .line 3458
    :cond_4c
    if-eqz v23, :cond_52

    #@63f
    .line 3459
    move/from16 v0, v30

    #@641
    int-to-long v0, v0

    #@642
    move-wide/from16 v42, v0

    #@644
    .line 3460
    .local v42, "shortcutCode":J
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    #@647
    move-result v4

    #@648
    if-eqz v4, :cond_4d

    #@64a
    .line 3461
    const-wide v6, 0x100000000000L

    #@64f
    or-long v42, v42, v6

    #@651
    .line 3464
    :cond_4d
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    #@654
    move-result v4

    #@655
    if-eqz v4, :cond_4e

    #@657
    .line 3465
    const-wide v6, 0x200000000L

    #@65c
    or-long v42, v42, v6

    #@65e
    .line 3468
    :cond_4e
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    #@661
    move-result v4

    #@662
    if-eqz v4, :cond_4f

    #@664
    .line 3469
    const-wide v6, 0x100000000L

    #@669
    or-long v42, v42, v6

    #@66b
    .line 3472
    :cond_4f
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    #@66e
    move-result v4

    #@66f
    if-eqz v4, :cond_50

    #@671
    .line 3473
    const-wide/high16 v6, 0x1000000000000L

    #@673
    or-long v42, v42, v6

    #@675
    .line 3476
    :cond_50
    move-object/from16 v0, p0

    #@677
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    #@679
    move-wide/from16 v0, v42

    #@67b
    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@67e
    move-result-object v44

    #@67f
    check-cast v44, Lcom/android/internal/policy/IShortcutService;

    #@681
    .line 3477
    .local v44, "shortcutService":Lcom/android/internal/policy/IShortcutService;
    if-eqz v44, :cond_52

    #@683
    .line 3479
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    #@686
    move-result v4

    #@687
    if-eqz v4, :cond_51

    #@689
    .line 3480
    move-object/from16 v0, v44

    #@68b
    move-wide/from16 v1, v42

    #@68d
    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/IShortcutService;->notifyShortcutKeyPressed(J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    #@690
    .line 3485
    :cond_51
    :goto_15
    const-wide/16 v6, -0x1

    #@692
    return-wide v6

    #@693
    .line 3482
    :catch_4
    move-exception v24

    #@694
    .line 3483
    .restart local v24    # "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    #@696
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    #@698
    move-wide/from16 v0, v42

    #@69a
    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->delete(J)V

    #@69d
    goto :goto_15

    #@69e
    .line 3490
    .end local v24    # "e":Landroid/os/RemoteException;
    .end local v42    # "shortcutCode":J
    .end local v44    # "shortcutService":Lcom/android/internal/policy/IShortcutService;
    :cond_52
    const/high16 v4, 0x10000

    #@6a0
    and-int v4, v4, v34

    #@6a2
    if-eqz v4, :cond_53

    #@6a4
    .line 3491
    const-wide/16 v6, -0x1

    #@6a6
    return-wide v6

    #@6a7
    .line 3495
    :cond_53
    const-wide/16 v6, 0x0

    #@6a9
    return-wide v6

    #@6aa
    .line 3247
    .end local v13    # "actionTriggered":Z
    .restart local v21    # "dic":Landroid/os/IDeviceIdleController;
    :catch_5
    move-exception v24

    #@6ab
    .restart local v24    # "e":Landroid/os/RemoteException;
    goto/16 :goto_c
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 24
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    .line 5585
    move-object/from16 v0, p0

    #@2
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    #@4
    move/from16 v19, v0

    #@6
    if-nez v19, :cond_0

    #@8
    .line 5587
    const/16 v19, 0x0

    #@a
    return v19

    #@b
    .line 5590
    :cond_0
    const/high16 v19, 0x20000000

    #@d
    and-int v19, v19, p2

    #@f
    if-eqz v19, :cond_4

    #@11
    const/4 v10, 0x1

    #@12
    .line 5591
    .local v10, "interactive":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    #@15
    move-result v19

    #@16
    if-nez v19, :cond_5

    #@18
    const/4 v7, 0x1

    #@19
    .line 5592
    .local v7, "down":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    #@1c
    move-result v6

    #@1d
    .line 5593
    .local v6, "canceled":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@20
    move-result v13

    #@21
    .line 5595
    .local v13, "keyCode":I
    const/high16 v19, 0x1000000

    #@23
    and-int v19, v19, p2

    #@25
    if-eqz v19, :cond_6

    #@27
    const/4 v11, 0x1

    #@28
    .line 5601
    .local v11, "isInjected":Z
    :goto_2
    move-object/from16 v0, p0

    #@2a
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@2c
    move-object/from16 v19, v0

    #@2e
    if-nez v19, :cond_7

    #@30
    const/4 v14, 0x0

    #@31
    .line 5614
    :goto_3
    and-int/lit8 v19, p2, 0x1

    #@33
    if-nez v19, :cond_9

    #@35
    .line 5615
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isWakeKey()Z

    #@38
    move-result v12

    #@39
    .line 5616
    :goto_4
    if-nez v10, :cond_a

    #@3b
    if-eqz v11, :cond_1

    #@3d
    if-eqz v12, :cond_a

    #@3f
    .line 5631
    :cond_1
    if-nez v10, :cond_d

    #@41
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->shouldDispatchInputWhenNonInteractive(Landroid/view/KeyEvent;)Z

    #@44
    move-result v19

    #@45
    if-eqz v19, :cond_d

    #@47
    .line 5636
    const/16 v16, 0x1

    #@49
    .line 5638
    .local v16, "result":I
    const/16 v19, -0x1

    #@4b
    move/from16 v0, v19

    #@4d
    move-object/from16 v1, p0

    #@4f
    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    #@51
    .line 5654
    :cond_2
    :goto_5
    invoke-static {v13}, Lcom/android/server/policy/PhoneWindowManager;->isValidGlobalKey(I)Z

    #@54
    move-result v19

    #@55
    if-eqz v19, :cond_10

    #@57
    .line 5655
    move-object/from16 v0, p0

    #@59
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    #@5b
    move-object/from16 v19, v0

    #@5d
    move-object/from16 v0, v19

    #@5f
    move-object/from16 v1, p1

    #@61
    invoke-virtual {v0, v13, v1}, Lcom/android/server/policy/GlobalKeyManager;->shouldHandleGlobalKey(ILandroid/view/KeyEvent;)Z

    #@64
    move-result v19

    #@65
    .line 5654
    if-eqz v19, :cond_10

    #@67
    .line 5656
    if-eqz v12, :cond_3

    #@69
    .line 5657
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    #@6c
    move-result-wide v20

    #@6d
    move-object/from16 v0, p0

    #@6f
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    #@71
    move/from16 v19, v0

    #@73
    const-string/jumbo v22, "android.policy:KEY"

    #@76
    move-object/from16 v0, p0

    #@78
    move-wide/from16 v1, v20

    #@7a
    move/from16 v3, v19

    #@7c
    move-object/from16 v4, v22

    #@7e
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    #@81
    .line 5659
    :cond_3
    return v16

    #@82
    .line 5590
    .end local v6    # "canceled":Z
    .end local v7    # "down":Z
    .end local v10    # "interactive":Z
    .end local v11    # "isInjected":Z
    .end local v13    # "keyCode":I
    .end local v16    # "result":I
    :cond_4
    const/4 v10, 0x0

    #@83
    .restart local v10    # "interactive":Z
    goto :goto_0

    #@84
    .line 5591
    :cond_5
    const/4 v7, 0x0

    #@85
    .restart local v7    # "down":Z
    goto :goto_1

    #@86
    .line 5595
    .restart local v6    # "canceled":Z
    .restart local v13    # "keyCode":I
    :cond_6
    const/4 v11, 0x0

    #@87
    .restart local v11    # "isInjected":Z
    goto :goto_2

    #@88
    .line 5602
    :cond_7
    if-eqz v10, :cond_8

    #@8a
    .line 5603
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    #@8d
    move-result v14

    #@8e
    .local v14, "keyguardActive":Z
    goto :goto_3

    #@8f
    .line 5604
    .end local v14    # "keyguardActive":Z
    :cond_8
    move-object/from16 v0, p0

    #@91
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@93
    move-object/from16 v19, v0

    #@95
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    #@98
    move-result v14

    #@99
    .restart local v14    # "keyguardActive":Z
    goto :goto_3

    #@9a
    .line 5614
    .end local v14    # "keyguardActive":Z
    :cond_9
    const/4 v12, 0x1

    #@9b
    .local v12, "isWakeKey":Z
    goto :goto_4

    #@9c
    .line 5619
    .end local v12    # "isWakeKey":Z
    :cond_a
    const/16 v16, 0x1

    #@9e
    .line 5620
    .restart local v16    # "result":I
    const/4 v12, 0x0

    #@9f
    .line 5622
    .restart local v12    # "isWakeKey":Z
    if-eqz v10, :cond_2

    #@a1
    .line 5625
    move-object/from16 v0, p0

    #@a3
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    #@a5
    move/from16 v19, v0

    #@a7
    move/from16 v0, v19

    #@a9
    if-ne v13, v0, :cond_b

    #@ab
    if-eqz v7, :cond_c

    #@ad
    .line 5629
    :cond_b
    :goto_6
    const/16 v19, -0x1

    #@af
    move/from16 v0, v19

    #@b1
    move-object/from16 v1, p0

    #@b3
    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    #@b5
    goto :goto_5

    #@b6
    .line 5626
    :cond_c
    const/16 v16, 0x0

    #@b8
    goto :goto_6

    #@b9
    .line 5642
    .end local v12    # "isWakeKey":Z
    .end local v16    # "result":I
    :cond_d
    const/16 v16, 0x0

    #@bb
    .line 5643
    .restart local v16    # "result":I
    if-eqz v12, :cond_e

    #@bd
    if-eqz v7, :cond_f

    #@bf
    move-object/from16 v0, p0

    #@c1
    invoke-direct {v0, v13}, Lcom/android/server/policy/PhoneWindowManager;->isWakeKeyWhenScreenOff(I)Z

    #@c4
    move-result v19

    #@c5
    if-eqz v19, :cond_f

    #@c7
    .line 5647
    :cond_e
    :goto_7
    if-eqz v12, :cond_2

    #@c9
    if-eqz v7, :cond_2

    #@cb
    .line 5648
    move-object/from16 v0, p0

    #@cd
    iput v13, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    #@cf
    goto :goto_5

    #@d0
    .line 5644
    :cond_f
    const/4 v12, 0x0

    #@d1
    .restart local v12    # "isWakeKey":Z
    goto :goto_7

    #@d2
    .line 5662
    .end local v12    # "isWakeKey":Z
    :cond_10
    if-eqz v7, :cond_15

    #@d4
    .line 5663
    and-int/lit8 v19, p2, 0x2

    #@d6
    if-eqz v19, :cond_15

    #@d8
    .line 5664
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@db
    move-result v19

    #@dc
    if-nez v19, :cond_14

    #@de
    const/16 v18, 0x1

    #@e0
    .line 5667
    .local v18, "useHapticFeedback":Z
    :goto_8
    sparse-switch v13, :sswitch_data_0

    #@e3
    .line 5937
    :cond_11
    :goto_9
    if-eqz v18, :cond_12

    #@e5
    .line 5938
    const/16 v19, 0x0

    #@e7
    const/16 v20, 0x1

    #@e9
    const/16 v21, 0x0

    #@eb
    move-object/from16 v0, p0

    #@ed
    move-object/from16 v1, v19

    #@ef
    move/from16 v2, v20

    #@f1
    move/from16 v3, v21

    #@f3
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    #@f6
    .line 5941
    :cond_12
    if-eqz v12, :cond_13

    #@f8
    .line 5942
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    #@fb
    move-result-wide v20

    #@fc
    move-object/from16 v0, p0

    #@fe
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    #@100
    move/from16 v19, v0

    #@102
    const-string/jumbo v22, "android.policy:KEY"

    #@105
    move-object/from16 v0, p0

    #@107
    move-wide/from16 v1, v20

    #@109
    move/from16 v3, v19

    #@10b
    move-object/from16 v4, v22

    #@10d
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    #@110
    .line 5945
    :cond_13
    return v16

    #@111
    .line 5664
    .end local v18    # "useHapticFeedback":Z
    :cond_14
    const/16 v18, 0x0

    #@113
    .restart local v18    # "useHapticFeedback":Z
    goto :goto_8

    #@114
    .line 5662
    .end local v18    # "useHapticFeedback":Z
    :cond_15
    const/16 v18, 0x0

    #@116
    .restart local v18    # "useHapticFeedback":Z
    goto :goto_8

    #@117
    .line 5669
    :sswitch_0
    if-eqz v7, :cond_16

    #@119
    .line 5670
    const/16 v19, 0x0

    #@11b
    move/from16 v0, v19

    #@11d
    move-object/from16 v1, p0

    #@11f
    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    #@121
    .line 5671
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnBackBehavior()Z

    #@124
    move-result v19

    #@125
    if-eqz v19, :cond_11

    #@127
    .line 5672
    move-object/from16 v0, p0

    #@129
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@12b
    move-object/from16 v19, v0

    #@12d
    const/16 v20, 0x12

    #@12f
    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@132
    move-result-object v15

    #@133
    .line 5673
    .local v15, "msg":Landroid/os/Message;
    const/16 v19, 0x1

    #@135
    move/from16 v0, v19

    #@137
    invoke-virtual {v15, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    #@13a
    .line 5674
    move-object/from16 v0, p0

    #@13c
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@13e
    move-object/from16 v19, v0

    #@140
    .line 5675
    move-object/from16 v0, p0

    #@142
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@144
    move-object/from16 v20, v0

    #@146
    invoke-static/range {v20 .. v20}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@149
    move-result-object v20

    #@14a
    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    #@14d
    move-result-wide v20

    #@14e
    .line 5674
    move-object/from16 v0, v19

    #@150
    move-wide/from16 v1, v20

    #@152
    invoke-virtual {v0, v15, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@155
    goto :goto_9

    #@156
    .line 5678
    .end local v15    # "msg":Landroid/os/Message;
    :cond_16
    move-object/from16 v0, p0

    #@158
    iget-boolean v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    #@15a
    .line 5681
    .local v8, "handled":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingBackKeyAction()V

    #@15d
    .line 5684
    if-eqz v8, :cond_11

    #@15f
    .line 5685
    and-int/lit8 v16, v16, -0x2

    #@161
    goto :goto_9

    #@162
    .line 5694
    .end local v8    # "handled":Z
    :sswitch_1
    const/16 v19, 0x19

    #@164
    move/from16 v0, v19

    #@166
    if-ne v13, v0, :cond_1a

    #@168
    .line 5695
    if-eqz v7, :cond_19

    #@16a
    .line 5696
    if-eqz v10, :cond_17

    #@16c
    move-object/from16 v0, p0

    #@16e
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    #@170
    move/from16 v19, v0

    #@172
    if-eqz v19, :cond_18

    #@174
    .line 5721
    :cond_17
    :goto_a
    if-eqz v7, :cond_1d

    #@176
    .line 5722
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    #@179
    move-result-object v17

    #@17a
    .line 5723
    .local v17, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v17, :cond_1d

    #@17c
    .line 5724
    invoke-virtual/range {v17 .. v17}, Landroid/telecom/TelecomManager;->isRinging()Z

    #@17f
    move-result v19

    #@180
    if-eqz v19, :cond_1c

    #@182
    .line 5731
    const-string/jumbo v19, "WindowManager"

    #@185
    const-string/jumbo v20, "interceptKeyBeforeQueueing: VOLUME key-down while ringing: Silence ringer!"

    #@188
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@18b
    .line 5736
    invoke-virtual/range {v17 .. v17}, Landroid/telecom/TelecomManager;->silenceRinger()V

    #@18e
    .line 5740
    and-int/lit8 v16, v16, -0x2

    #@190
    .line 5741
    goto/16 :goto_9

    #@192
    .line 5697
    .end local v17    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    #@195
    move-result v19

    #@196
    move/from16 v0, v19

    #@198
    and-int/lit16 v0, v0, 0x400

    #@19a
    move/from16 v19, v0

    #@19c
    if-nez v19, :cond_17

    #@19e
    .line 5698
    const/16 v19, 0x1

    #@1a0
    move/from16 v0, v19

    #@1a2
    move-object/from16 v1, p0

    #@1a4
    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    #@1a6
    .line 5699
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    #@1a9
    move-result-wide v20

    #@1aa
    move-wide/from16 v0, v20

    #@1ac
    move-object/from16 v2, p0

    #@1ae
    iput-wide v0, v2, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    #@1b0
    .line 5700
    const/16 v19, 0x0

    #@1b2
    move/from16 v0, v19

    #@1b4
    move-object/from16 v1, p0

    #@1b6
    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    #@1b8
    .line 5701
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    #@1bb
    .line 5702
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptScreenshotChord()V

    #@1be
    goto :goto_a

    #@1bf
    .line 5705
    :cond_19
    const/16 v19, 0x0

    #@1c1
    move/from16 v0, v19

    #@1c3
    move-object/from16 v1, p0

    #@1c5
    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    #@1c7
    .line 5706
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    #@1ca
    goto :goto_a

    #@1cb
    .line 5708
    :cond_1a
    const/16 v19, 0x18

    #@1cd
    move/from16 v0, v19

    #@1cf
    if-ne v13, v0, :cond_17

    #@1d1
    .line 5709
    if-eqz v7, :cond_1b

    #@1d3
    .line 5710
    if-eqz v10, :cond_17

    #@1d5
    move-object/from16 v0, p0

    #@1d7
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    #@1d9
    move/from16 v19, v0

    #@1db
    if-nez v19, :cond_17

    #@1dd
    .line 5711
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    #@1e0
    move-result v19

    #@1e1
    move/from16 v0, v19

    #@1e3
    and-int/lit16 v0, v0, 0x400

    #@1e5
    move/from16 v19, v0

    #@1e7
    if-nez v19, :cond_17

    #@1e9
    .line 5712
    const/16 v19, 0x1

    #@1eb
    move/from16 v0, v19

    #@1ed
    move-object/from16 v1, p0

    #@1ef
    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    #@1f1
    .line 5713
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    #@1f4
    .line 5714
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    #@1f7
    goto/16 :goto_a

    #@1f9
    .line 5717
    :cond_1b
    const/16 v19, 0x0

    #@1fb
    move/from16 v0, v19

    #@1fd
    move-object/from16 v1, p0

    #@1ff
    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    #@201
    .line 5718
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    #@204
    goto/16 :goto_a

    #@206
    .line 5743
    .restart local v17    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_1c
    invoke-virtual/range {v17 .. v17}, Landroid/telecom/TelecomManager;->isInCall()Z

    #@209
    move-result v19

    #@20a
    if-eqz v19, :cond_1d

    #@20c
    .line 5744
    and-int/lit8 v19, v16, 0x1

    #@20e
    if-nez v19, :cond_1d

    #@210
    .line 5748
    move-object/from16 v0, p0

    #@212
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@214
    move-object/from16 v19, v0

    #@216
    invoke-static/range {v19 .. v19}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    #@219
    move-result-object v19

    #@21a
    .line 5749
    const/16 v20, 0x0

    #@21c
    .line 5748
    move-object/from16 v0, v19

    #@21e
    move-object/from16 v1, p1

    #@220
    move/from16 v2, v20

    #@222
    invoke-virtual {v0, v1, v2}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;Z)V

    #@225
    goto/16 :goto_9

    #@227
    .line 5754
    .end local v17    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_1d
    move-object/from16 v0, p0

    #@229
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    #@22b
    move/from16 v19, v0

    #@22d
    if-eqz v19, :cond_1e

    #@22f
    .line 5757
    or-int/lit8 v16, v16, 0x1

    #@231
    goto/16 :goto_9

    #@233
    .line 5758
    :cond_1e
    and-int/lit8 v19, v16, 0x1

    #@235
    if-nez v19, :cond_11

    #@237
    .line 5762
    move-object/from16 v0, p0

    #@239
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@23b
    move-object/from16 v19, v0

    #@23d
    invoke-static/range {v19 .. v19}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    #@240
    move-result-object v19

    #@241
    .line 5763
    const/16 v20, 0x1

    #@243
    .line 5762
    move-object/from16 v0, v19

    #@245
    move-object/from16 v1, p1

    #@247
    move/from16 v2, v20

    #@249
    invoke-virtual {v0, v1, v2}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;Z)V

    #@24c
    goto/16 :goto_9

    #@24e
    .line 5769
    :sswitch_2
    and-int/lit8 v16, v16, -0x2

    #@250
    .line 5770
    if-eqz v7, :cond_22

    #@252
    .line 5771
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    #@255
    move-result-object v17

    #@256
    .line 5772
    .restart local v17    # "telecomManager":Landroid/telecom/TelecomManager;
    const/4 v9, 0x0

    #@257
    .line 5773
    .local v9, "hungUp":Z
    if-eqz v17, :cond_1f

    #@259
    .line 5774
    invoke-virtual/range {v17 .. v17}, Landroid/telecom/TelecomManager;->endCall()Z

    #@25c
    move-result v9

    #@25d
    .line 5776
    .end local v9    # "hungUp":Z
    :cond_1f
    if-eqz v10, :cond_20

    #@25f
    if-eqz v9, :cond_21

    #@261
    .line 5781
    :cond_20
    const/16 v19, 0x1

    #@263
    move/from16 v0, v19

    #@265
    move-object/from16 v1, p0

    #@267
    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    #@269
    goto/16 :goto_9

    #@26b
    .line 5777
    :cond_21
    const/16 v19, 0x0

    #@26d
    move/from16 v0, v19

    #@26f
    move-object/from16 v1, p0

    #@271
    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    #@273
    .line 5778
    move-object/from16 v0, p0

    #@275
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@277
    move-object/from16 v19, v0

    #@279
    move-object/from16 v0, p0

    #@27b
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    #@27d
    move-object/from16 v20, v0

    #@27f
    .line 5779
    move-object/from16 v0, p0

    #@281
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@283
    move-object/from16 v21, v0

    #@285
    invoke-static/range {v21 .. v21}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@288
    move-result-object v21

    #@289
    invoke-virtual/range {v21 .. v21}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    #@28c
    move-result-wide v22

    #@28d
    .line 5778
    move-object/from16 v0, v19

    #@28f
    move-object/from16 v1, v20

    #@291
    move-wide/from16 v2, v22

    #@293
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@296
    goto/16 :goto_9

    #@298
    .line 5784
    .end local v17    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_22
    move-object/from16 v0, p0

    #@29a
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    #@29c
    move/from16 v19, v0

    #@29e
    if-nez v19, :cond_11

    #@2a0
    .line 5785
    move-object/from16 v0, p0

    #@2a2
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@2a4
    move-object/from16 v19, v0

    #@2a6
    move-object/from16 v0, p0

    #@2a8
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    #@2aa
    move-object/from16 v20, v0

    #@2ac
    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@2af
    .line 5786
    if-nez v6, :cond_11

    #@2b1
    .line 5787
    move-object/from16 v0, p0

    #@2b3
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    #@2b5
    move/from16 v19, v0

    #@2b7
    and-int/lit8 v19, v19, 0x1

    #@2b9
    if-eqz v19, :cond_23

    #@2bb
    .line 5789
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->goHome()Z

    #@2be
    move-result v19

    #@2bf
    if-nez v19, :cond_11

    #@2c1
    .line 5793
    :cond_23
    move-object/from16 v0, p0

    #@2c3
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    #@2c5
    move/from16 v19, v0

    #@2c7
    and-int/lit8 v19, v19, 0x2

    #@2c9
    if-eqz v19, :cond_11

    #@2cb
    .line 5795
    move-object/from16 v0, p0

    #@2cd
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@2cf
    move-object/from16 v19, v0

    #@2d1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    #@2d4
    move-result-wide v20

    #@2d5
    .line 5796
    const/16 v22, 0x4

    #@2d7
    const/16 v23, 0x0

    #@2d9
    .line 5795
    invoke-virtual/range {v19 .. v23}, Landroid/os/PowerManager;->goToSleep(JII)V

    #@2dc
    .line 5797
    const/4 v12, 0x0

    #@2dd
    .restart local v12    # "isWakeKey":Z
    goto/16 :goto_9

    #@2df
    .line 5806
    .end local v12    # "isWakeKey":Z
    :sswitch_3
    and-int/lit8 v16, v16, -0x2

    #@2e1
    .line 5807
    const/4 v12, 0x0

    #@2e2
    .line 5808
    .restart local v12    # "isWakeKey":Z
    if-eqz v7, :cond_24

    #@2e4
    .line 5809
    move-object/from16 v0, p0

    #@2e6
    move-object/from16 v1, p1

    #@2e8
    invoke-direct {v0, v1, v10}, Lcom/android/server/policy/PhoneWindowManager;->interceptPowerKeyDown(Landroid/view/KeyEvent;Z)V

    #@2eb
    goto/16 :goto_9

    #@2ed
    .line 5811
    :cond_24
    move-object/from16 v0, p0

    #@2ef
    move-object/from16 v1, p1

    #@2f1
    invoke-direct {v0, v1, v10, v6}, Lcom/android/server/policy/PhoneWindowManager;->interceptPowerKeyUp(Landroid/view/KeyEvent;ZZ)V

    #@2f4
    goto/16 :goto_9

    #@2f6
    .line 5823
    .end local v12    # "isWakeKey":Z
    :sswitch_4
    and-int/lit8 v16, v16, -0x2

    #@2f8
    .line 5824
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->interceptSystemNavigationKey(Landroid/view/KeyEvent;)V

    #@2fb
    goto/16 :goto_9

    #@2fd
    .line 5829
    :sswitch_5
    and-int/lit8 v16, v16, -0x2

    #@2ff
    .line 5830
    const/4 v12, 0x0

    #@300
    .line 5831
    .restart local v12    # "isWakeKey":Z
    move-object/from16 v0, p0

    #@302
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    #@304
    move-object/from16 v19, v0

    #@306
    invoke-virtual/range {v19 .. v19}, Landroid/os/PowerManager;->isInteractive()Z

    #@309
    move-result v19

    #@30a
    if-nez v19, :cond_25

    #@30c
    .line 5832
    const/16 v18, 0x0

    #@30e
    .line 5834
    :cond_25
    if-eqz v7, :cond_26

    #@310
    .line 5835
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    #@313
    move-result-wide v20

    #@314
    move-object/from16 v0, p0

    #@316
    move-wide/from16 v1, v20

    #@318
    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->sleepPress(J)V

    #@31b
    goto/16 :goto_9

    #@31d
    .line 5837
    :cond_26
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    #@320
    move-result-wide v20

    #@321
    move-object/from16 v0, p0

    #@323
    move-wide/from16 v1, v20

    #@325
    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->sleepRelease(J)V

    #@328
    goto/16 :goto_9

    #@32a
    .line 5843
    .end local v12    # "isWakeKey":Z
    :sswitch_6
    and-int/lit8 v16, v16, -0x2

    #@32c
    .line 5844
    const/4 v12, 0x0

    #@32d
    .line 5845
    .restart local v12    # "isWakeKey":Z
    if-nez v7, :cond_11

    #@32f
    .line 5846
    move-object/from16 v0, p0

    #@331
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    #@333
    move-object/from16 v19, v0

    #@335
    invoke-virtual/range {v19 .. v19}, Landroid/os/PowerManagerInternal;->setUserInactiveOverrideFromWindowManager()V

    #@338
    goto/16 :goto_9

    #@33a
    .line 5852
    .end local v12    # "isWakeKey":Z
    :sswitch_7
    and-int/lit8 v16, v16, -0x2

    #@33c
    .line 5853
    const/4 v12, 0x1

    #@33d
    .line 5854
    .restart local v12    # "isWakeKey":Z
    goto/16 :goto_9

    #@33f
    .line 5869
    .end local v12    # "isWakeKey":Z
    :sswitch_8
    move-object/from16 v0, p0

    #@341
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@343
    move-object/from16 v19, v0

    #@345
    invoke-static/range {v19 .. v19}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    #@348
    move-result-object v19

    #@349
    invoke-virtual/range {v19 .. v19}, Landroid/media/session/MediaSessionLegacyHelper;->isGlobalPriorityActive()Z

    #@34c
    move-result v19

    #@34d
    if-eqz v19, :cond_27

    #@34f
    .line 5872
    and-int/lit8 v16, v16, -0x2

    #@351
    .line 5874
    :cond_27
    and-int/lit8 v19, v16, 0x1

    #@353
    if-nez v19, :cond_11

    #@355
    .line 5880
    move-object/from16 v0, p0

    #@357
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    #@359
    move-object/from16 v19, v0

    #@35b
    invoke-virtual/range {v19 .. v19}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@35e
    .line 5881
    move-object/from16 v0, p0

    #@360
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@362
    move-object/from16 v19, v0

    #@364
    .line 5882
    new-instance v20, Landroid/view/KeyEvent;

    #@366
    move-object/from16 v0, v20

    #@368
    move-object/from16 v1, p1

    #@36a
    invoke-direct {v0, v1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    #@36d
    .line 5881
    const/16 v21, 0x3

    #@36f
    move-object/from16 v0, v19

    #@371
    move/from16 v1, v21

    #@373
    move-object/from16 v2, v20

    #@375
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@378
    move-result-object v15

    #@379
    .line 5883
    .restart local v15    # "msg":Landroid/os/Message;
    const/16 v19, 0x1

    #@37b
    move/from16 v0, v19

    #@37d
    invoke-virtual {v15, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    #@380
    .line 5884
    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    #@383
    goto/16 :goto_9

    #@385
    .line 5890
    .end local v15    # "msg":Landroid/os/Message;
    :sswitch_9
    if-eqz v7, :cond_11

    #@387
    .line 5891
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    #@38a
    move-result-object v17

    #@38b
    .line 5892
    .restart local v17    # "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v17, :cond_11

    #@38d
    .line 5893
    invoke-virtual/range {v17 .. v17}, Landroid/telecom/TelecomManager;->isRinging()Z

    #@390
    move-result v19

    #@391
    if-eqz v19, :cond_11

    #@393
    .line 5894
    const-string/jumbo v19, "WindowManager"

    #@396
    const-string/jumbo v20, "interceptKeyBeforeQueueing: CALL key-down while ringing: Answer the call!"

    #@399
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@39c
    .line 5896
    invoke-virtual/range {v17 .. v17}, Landroid/telecom/TelecomManager;->acceptRingingCall()V

    #@39f
    .line 5900
    and-int/lit8 v16, v16, -0x2

    #@3a1
    goto/16 :goto_9

    #@3a3
    .line 5911
    .end local v17    # "telecomManager":Landroid/telecom/TelecomManager;
    :sswitch_a
    and-int/lit8 v19, v16, 0x1

    #@3a5
    if-nez v19, :cond_11

    #@3a7
    if-nez v7, :cond_11

    #@3a9
    .line 5912
    move-object/from16 v0, p0

    #@3ab
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    #@3ad
    move-object/from16 v19, v0

    #@3af
    invoke-virtual/range {v19 .. v19}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@3b2
    .line 5913
    move-object/from16 v0, p0

    #@3b4
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@3b6
    move-object/from16 v20, v0

    #@3b8
    .line 5914
    if-eqz v14, :cond_28

    #@3ba
    const/16 v19, 0x1

    #@3bc
    .line 5913
    :goto_b
    const/16 v21, 0xc

    #@3be
    .line 5914
    const/16 v22, 0x0

    #@3c0
    .line 5913
    move-object/from16 v0, v20

    #@3c2
    move/from16 v1, v21

    #@3c4
    move/from16 v2, v19

    #@3c6
    move/from16 v3, v22

    #@3c8
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@3cb
    move-result-object v15

    #@3cc
    .line 5915
    .restart local v15    # "msg":Landroid/os/Message;
    const/16 v19, 0x1

    #@3ce
    move/from16 v0, v19

    #@3d0
    invoke-virtual {v15, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    #@3d3
    .line 5916
    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    #@3d6
    goto/16 :goto_9

    #@3d8
    .line 5914
    .end local v15    # "msg":Landroid/os/Message;
    :cond_28
    const/16 v19, 0x0

    #@3da
    goto :goto_b

    #@3db
    .line 5921
    :sswitch_b
    move-object/from16 v0, p0

    #@3dd
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressWindowBehavior:I

    #@3df
    move/from16 v19, v0

    #@3e1
    const/16 v20, 0x1

    #@3e3
    move/from16 v0, v19

    #@3e5
    move/from16 v1, v20

    #@3e7
    if-ne v0, v1, :cond_11

    #@3e9
    .line 5922
    move-object/from16 v0, p0

    #@3eb
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTvPictureInPictureVisible:Z

    #@3ed
    move/from16 v19, v0

    #@3ef
    if-eqz v19, :cond_11

    #@3f1
    .line 5927
    if-nez v7, :cond_29

    #@3f3
    .line 5928
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->showTvPictureInPictureMenu(Landroid/view/KeyEvent;)V

    #@3f6
    .line 5930
    :cond_29
    and-int/lit8 v16, v16, -0x2

    #@3f8
    goto/16 :goto_9

    #@3fa
    .line 5667
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_9
        0x6 -> :sswitch_2
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x1a -> :sswitch_3
        0x4f -> :sswitch_8
        0x55 -> :sswitch_8
        0x56 -> :sswitch_8
        0x57 -> :sswitch_8
        0x58 -> :sswitch_8
        0x59 -> :sswitch_8
        0x5a -> :sswitch_8
        0x5b -> :sswitch_8
        0x7e -> :sswitch_8
        0x7f -> :sswitch_8
        0x82 -> :sswitch_8
        0xa4 -> :sswitch_1
        0xab -> :sswitch_b
        0xde -> :sswitch_8
        0xdf -> :sswitch_5
        0xe0 -> :sswitch_7
        0xe7 -> :sswitch_a
        0x114 -> :sswitch_6
        0x118 -> :sswitch_4
        0x119 -> :sswitch_4
        0x11a -> :sswitch_4
        0x11b -> :sswitch_4
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
    .line 6019
    and-int/lit8 v0, p3, 0x1

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 6020
    div-long v0, p1, v6

    #@a
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotion:Z

    #@c
    .line 6021
    const-string/jumbo v3, "android.policy:MOTION"

    #@f
    .line 6020
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 6022
    return v4

    #@16
    .line 6026
    :cond_0
    const/4 v0, 0x0

    #@17
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->shouldDispatchInputWhenNonInteractive(Landroid/view/KeyEvent;)Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_1

    #@1d
    .line 6027
    const/4 v0, 0x1

    #@1e
    return v0

    #@1f
    .line 6033
    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTheaterModeEnabled()Z

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_2

    #@25
    and-int/lit8 v0, p3, 0x1

    #@27
    if-eqz v0, :cond_2

    #@29
    .line 6034
    div-long v0, p1, v6

    #@2b
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotionWhenNotDreaming:Z

    #@2d
    .line 6035
    const-string/jumbo v3, "android.policy:MOTION"

    #@30
    .line 6034
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    #@33
    .line 6038
    :cond_2
    return v4
.end method

.method public isDefaultOrientationForced()Z
    .locals 1

    #@0
    .prologue
    .line 1919
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
    .line 1397
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v1

    #@7
    const-string/jumbo v2, "device_provisioned"

    #@a
    .line 1396
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

.method public isDockSideAllowed(I)Z
    .locals 4
    .param p1, "dockSide"    # I

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v0, 0x1

    #@3
    .line 6646
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    #@5
    if-nez v2, :cond_2

    #@7
    .line 6647
    if-eq p1, v3, :cond_0

    #@9
    if-ne p1, v0, :cond_1

    #@b
    :cond_0
    :goto_0
    return v0

    #@c
    :cond_1
    const/4 v2, 0x3

    #@d
    if-eq p1, v2, :cond_0

    #@f
    move v0, v1

    #@10
    goto :goto_0

    #@11
    .line 6649
    :cond_2
    if-eq p1, v3, :cond_3

    #@13
    if-ne p1, v0, :cond_4

    #@15
    :cond_3
    :goto_1
    return v0

    #@16
    :cond_4
    move v0, v1

    #@17
    goto :goto_1
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
    .line 2548
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@4
    and-int/lit16 v2, v2, 0x400

    #@6
    if-nez v2, :cond_1

    #@8
    .line 2549
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 2550
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
    .line 2548
    if-nez v2, :cond_1

    #@1a
    .line 2551
    :cond_0
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@1c
    const/16 v3, 0x7ed

    #@1e
    if-ne v2, v3, :cond_2

    #@20
    .line 2548
    :cond_1
    :goto_0
    return v0

    #@21
    :cond_2
    move v0, v1

    #@22
    .line 2551
    goto :goto_0
.end method

.method public isKeyguardDrawnLw()Z
    .locals 2

    #@0
    .prologue
    .line 6594
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 6595
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 6594
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
    .line 2556
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
    .line 6543
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isKeyguardSecure(I)Z
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 6549
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 6550
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure(I)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public isKeyguardShowingOrOccluded()Z
    .locals 1

    #@0
    .prologue
    .line 6556
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

.method public isNavBarForcedShownLw(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 1
    .param p1, "windowState"    # Landroid/view/WindowManagerPolicy$WindowState;

    #@0
    .prologue
    .line 6639
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    #@2
    return v0
.end method

.method public isScreenOn()Z
    .locals 1

    #@0
    .prologue
    .line 6516
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
    .line 7782
    const/16 v1, 0x3e8

    #@3
    if-lt p1, v1, :cond_1

    #@5
    .line 7783
    const/16 v1, 0x7cf

    #@7
    if-gt p1, v1, :cond_1

    #@9
    .line 7784
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
    .line 7786
    :cond_1
    return v0
.end method

.method isUserSetupComplete()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1401
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v1

    #@7
    .line 1402
    const-string/jumbo v2, "user_setup_complete"

    #@a
    const/4 v3, -0x2

    #@b
    .line 1401
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
    .line 7431
    return-void
.end method

.method public keepScreenOnStoppedLw()V
    .locals 4

    #@0
    .prologue
    .line 7436
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 7437
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
    .line 7435
    :cond_0
    return-void
.end method

.method keyguardOn()Z
    .locals 1

    #@0
    .prologue
    .line 3014
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
    .line 3727
    invoke-virtual {p0, v0, v0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(ZZ)V

    #@4
    .line 3726
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
    .line 3735
    if-eqz p2, :cond_1

    #@3
    .line 3736
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 3738
    return-void

    #@a
    .line 3741
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
    .line 3744
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@18
    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$14;

    #@1a
    invoke-direct {v2, p0, p1}, Lcom/android/server/policy/PhoneWindowManager$14;-><init>(Lcom/android/server/policy/PhoneWindowManager;Z)V

    #@1d
    invoke-virtual {v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    #@20
    .line 3757
    return-void

    #@21
    .line 3763
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
    .line 3766
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mRecentsVisible:Z

    #@2a
    if-eqz v1, :cond_3

    #@2c
    .line 3768
    if-eqz p1, :cond_2

    #@2e
    .line 3769
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->awakenDreams()V

    #@31
    .line 3771
    :cond_2
    const/4 v1, 0x0

    #@32
    invoke-direct {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->hideRecentApps(ZZ)V

    #@35
    .line 3734
    :goto_1
    return-void

    #@36
    .line 3774
    :cond_3
    const-string/jumbo v1, "homekey"

    #@39
    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    #@3c
    .line 3775
    invoke-virtual {p0, v2, p1}, Lcom/android/server/policy/PhoneWindowManager;->startDockOrHome(ZZ)V

    #@3f
    goto :goto_1

    #@40
    .line 3764
    :catch_0
    move-exception v0

    #@41
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method launchVoiceAssistWithWakeLock(Z)V
    .locals 4
    .param p1, "keyguardActive"    # Z

    #@0
    .prologue
    .line 6168
    const-string/jumbo v3, "deviceidle"

    #@3
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v3

    #@7
    .line 6167
    invoke-static {v3}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    #@a
    move-result-object v0

    #@b
    .line 6169
    .local v0, "dic":Landroid/os/IDeviceIdleController;
    if-eqz v0, :cond_0

    #@d
    .line 6171
    :try_start_0
    const-string/jumbo v3, "voice-search"

    #@10
    invoke-interface {v0, v3}, Landroid/os/IDeviceIdleController;->exitIdle(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 6176
    :cond_0
    :goto_0
    new-instance v2, Landroid/content/Intent;

    #@15
    const-string/jumbo v3, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    #@18
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1b
    .line 6177
    .local v2, "voiceIntent":Landroid/content/Intent;
    const-string/jumbo v3, "android.speech.extras.EXTRA_SECURE"

    #@1e
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@21
    .line 6178
    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    #@23
    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@26
    .line 6179
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    #@28
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    #@2b
    .line 6166
    return-void

    #@2c
    .line 6172
    .end local v2    # "voiceIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    #@2d
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 29
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attached"    # Landroid/view/WindowManagerPolicy$WindowState;

    #@0
    .prologue
    .line 4401
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
    .line 4402
    :cond_1
    return-void

    #@17
    .line 4404
    :cond_2
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@1a
    move-result-object v16

    #@1b
    .line 4405
    .local v16, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDefaultDisplay()Z

    #@1e
    move-result v20

    #@1f
    .line 4406
    .local v20, "isDefaultDisplay":Z
    if-eqz v20, :cond_9

    #@21
    .line 4407
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
    .line 4408
    .local v21, "needsToOffsetInputMethodTarget":Z
    :goto_0
    if-eqz v21, :cond_3

    #@33
    .line 4410
    move-object/from16 v0, p0

    #@35
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    #@37
    move-object/from16 v0, p0

    #@39
    invoke-direct {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    #@3c
    .line 4413
    :cond_3
    move-object/from16 v0, p1

    #@3e
    move-object/from16 v1, v16

    #@40
    invoke-static {v0, v1}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    #@43
    move-result v4

    #@44
    .line 4414
    .local v4, "fl":I
    move-object/from16 v0, v16

    #@46
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@48
    move/from16 v23, v0

    #@4a
    .line 4415
    .local v23, "pfl":I
    move-object/from16 v0, v16

    #@4c
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@4e
    move/from16 v25, v0

    #@50
    .line 4416
    .local v25, "sim":I
    const/4 v2, 0x0

    #@51
    move-object/from16 v0, p1

    #@53
    invoke-static {v0, v2}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    #@56
    move-result v26

    #@57
    .line 4418
    .local v26, "sysUiFl":I
    sget-object v8, Lcom/android/server/policy/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    #@59
    .line 4419
    .local v8, "pf":Landroid/graphics/Rect;
    sget-object v9, Lcom/android/server/policy/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    #@5b
    .line 4420
    .local v9, "df":Landroid/graphics/Rect;
    sget-object v10, Lcom/android/server/policy/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    #@5d
    .line 4421
    .local v10, "of":Landroid/graphics/Rect;
    sget-object v11, Lcom/android/server/policy/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    #@5f
    .line 4422
    .local v11, "cf":Landroid/graphics/Rect;
    sget-object v12, Lcom/android/server/policy/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    #@61
    .line 4423
    .local v12, "vf":Landroid/graphics/Rect;
    sget-object v13, Lcom/android/server/policy/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    #@63
    .line 4424
    .local v13, "dcf":Landroid/graphics/Rect;
    sget-object v14, Lcom/android/server/policy/PhoneWindowManager;->mTmpStableFrame:Landroid/graphics/Rect;

    #@65
    .line 4425
    .local v14, "sf":Landroid/graphics/Rect;
    const/4 v15, 0x0

    #@66
    .line 4426
    .local v15, "osf":Landroid/graphics/Rect;
    invoke-virtual {v13}, Landroid/graphics/Rect;->setEmpty()V

    #@69
    .line 4428
    if-eqz v20, :cond_a

    #@6b
    move-object/from16 v0, p0

    #@6d
    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    #@6f
    if-eqz v2, :cond_a

    #@71
    .line 4429
    move-object/from16 v0, p0

    #@73
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@75
    if-eqz v2, :cond_a

    #@77
    move-object/from16 v0, p0

    #@79
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@7b
    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    #@7e
    move-result v17

    #@7f
    .line 4431
    :goto_1
    move/from16 v0, v25

    #@81
    and-int/lit16 v5, v0, 0xf0

    #@83
    .line 4433
    .local v5, "adjust":I
    if-eqz v20, :cond_b

    #@85
    .line 4434
    move-object/from16 v0, p0

    #@87
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    #@89
    move-object/from16 v0, p0

    #@8b
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    #@8d
    move-object/from16 v0, p0

    #@8f
    iget v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    #@91
    move-object/from16 v0, p0

    #@93
    iget v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    #@95
    invoke-virtual {v14, v2, v3, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    #@98
    .line 4439
    :goto_2
    if-nez v20, :cond_d

    #@9a
    .line 4440
    if-eqz p2, :cond_c

    #@9c
    .line 4443
    const/4 v7, 0x1

    #@9d
    move-object/from16 v2, p0

    #@9f
    move-object/from16 v3, p1

    #@a1
    move-object/from16 v6, p2

    #@a3
    invoke-virtual/range {v2 .. v12}, Lcom/android/server/policy/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@a6
    .line 4853
    :goto_3
    and-int/lit16 v2, v4, 0x200

    #@a8
    if-eqz v2, :cond_4

    #@aa
    move-object/from16 v0, v16

    #@ac
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@ae
    const/16 v3, 0x7da

    #@b0
    if-eq v2, v3, :cond_4

    #@b2
    .line 4854
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isInMultiWindowMode()Z

    #@b5
    move-result v2

    #@b6
    if-eqz v2, :cond_48

    #@b8
    .line 4867
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    #@ba
    move-object/from16 v1, v16

    #@bc
    invoke-direct {v0, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->shouldUseOutsets(Landroid/view/WindowManager$LayoutParams;I)Z

    #@bf
    move-result v28

    #@c0
    .line 4868
    .local v28, "useOutsets":Z
    if-eqz v20, :cond_5

    #@c2
    if-eqz v28, :cond_5

    #@c4
    .line 4869
    sget-object v15, Lcom/android/server/policy/PhoneWindowManager;->mTmpOutsetFrame:Landroid/graphics/Rect;

    #@c6
    .line 4870
    .local v15, "osf":Landroid/graphics/Rect;
    iget v2, v11, Landroid/graphics/Rect;->left:I

    #@c8
    iget v3, v11, Landroid/graphics/Rect;->top:I

    #@ca
    iget v6, v11, Landroid/graphics/Rect;->right:I

    #@cc
    iget v7, v11, Landroid/graphics/Rect;->bottom:I

    #@ce
    invoke-virtual {v15, v2, v3, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    #@d1
    .line 4871
    move-object/from16 v0, p0

    #@d3
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@d5
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@d8
    move-result-object v2

    #@d9
    invoke-static {v2}, Lcom/android/internal/util/ScreenShapeHelper;->getWindowOutsetBottomPx(Landroid/content/res/Resources;)I

    #@dc
    move-result v22

    #@dd
    .line 4872
    .local v22, "outset":I
    if-lez v22, :cond_5

    #@df
    .line 4873
    move-object/from16 v0, p0

    #@e1
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayRotation:I

    #@e3
    move/from16 v24, v0

    #@e5
    .line 4874
    .local v24, "rotation":I
    if-nez v24, :cond_49

    #@e7
    .line 4875
    iget v2, v15, Landroid/graphics/Rect;->bottom:I

    #@e9
    add-int v2, v2, v22

    #@eb
    iput v2, v15, Landroid/graphics/Rect;->bottom:I

    #@ed
    .end local v15    # "osf":Landroid/graphics/Rect;
    .end local v22    # "outset":I
    .end local v24    # "rotation":I
    :cond_5
    :goto_5
    move-object/from16 v7, p1

    #@ef
    .line 4899
    invoke-interface/range {v7 .. v15}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@f2
    .line 4903
    move-object/from16 v0, v16

    #@f4
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@f6
    const/16 v3, 0x7db

    #@f8
    if-ne v2, v3, :cond_6

    #@fa
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    #@fd
    move-result v2

    #@fe
    if-eqz v2, :cond_6

    #@100
    .line 4904
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDisplayedLw()Z

    #@103
    move-result v2

    #@104
    .line 4903
    if-eqz v2, :cond_6

    #@106
    .line 4904
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenInsetsPendingLw()Z

    #@109
    move-result v2

    #@10a
    if-eqz v2, :cond_4c

    #@10c
    .line 4908
    :cond_6
    :goto_6
    move-object/from16 v0, v16

    #@10e
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@110
    const/16 v3, 0x7ef

    #@112
    if-ne v2, v3, :cond_7

    #@114
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    #@117
    move-result v2

    #@118
    if-eqz v2, :cond_7

    #@11a
    .line 4909
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenInsetsPendingLw()Z

    #@11d
    move-result v2

    #@11e
    if-eqz v2, :cond_4d

    #@120
    .line 4398
    :cond_7
    :goto_7
    return-void

    #@121
    .line 4407
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
    .end local v23    # "pfl":I
    .end local v25    # "sim":I
    .end local v26    # "sysUiFl":I
    .end local v28    # "useOutsets":Z
    :cond_8
    const/16 v21, 0x0

    #@123
    goto/16 :goto_0

    #@125
    .line 4406
    :cond_9
    const/16 v21, 0x0

    #@127
    goto/16 :goto_0

    #@129
    .line 4428
    .restart local v4    # "fl":I
    .restart local v8    # "pf":Landroid/graphics/Rect;
    .restart local v9    # "df":Landroid/graphics/Rect;
    .restart local v10    # "of":Landroid/graphics/Rect;
    .restart local v11    # "cf":Landroid/graphics/Rect;
    .restart local v12    # "vf":Landroid/graphics/Rect;
    .restart local v13    # "dcf":Landroid/graphics/Rect;
    .restart local v14    # "sf":Landroid/graphics/Rect;
    .local v15, "osf":Landroid/graphics/Rect;
    .restart local v21    # "needsToOffsetInputMethodTarget":Z
    .restart local v23    # "pfl":I
    .restart local v25    # "sim":I
    .restart local v26    # "sysUiFl":I
    :cond_a
    const/16 v17, 0x0

    #@12b
    .local v17, "hasNavBar":Z
    goto/16 :goto_1

    #@12d
    .line 4436
    .end local v17    # "hasNavBar":Z
    .restart local v5    # "adjust":I
    :cond_b
    move-object/from16 v0, p0

    #@12f
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    #@131
    move-object/from16 v0, p0

    #@133
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    #@135
    move-object/from16 v0, p0

    #@137
    iget v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    #@139
    move-object/from16 v0, p0

    #@13b
    iget v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    #@13d
    invoke-virtual {v14, v2, v3, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    #@140
    goto/16 :goto_2

    #@142
    .line 4446
    :cond_c
    move-object/from16 v0, p0

    #@144
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    #@146
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@148
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@14a
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@14c
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@14e
    .line 4447
    move-object/from16 v0, p0

    #@150
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    #@152
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@154
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@156
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@158
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@15a
    .line 4449
    move-object/from16 v0, p0

    #@15c
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    #@15e
    move-object/from16 v0, p0

    #@160
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    #@162
    add-int/2addr v2, v3

    #@163
    .line 4448
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@165
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@167
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@169
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@16b
    .line 4451
    move-object/from16 v0, p0

    #@16d
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    #@16f
    move-object/from16 v0, p0

    #@171
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    #@173
    add-int/2addr v2, v3

    #@174
    .line 4450
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@176
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@178
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@17a
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@17c
    goto/16 :goto_3

    #@17e
    .line 4453
    :cond_d
    move-object/from16 v0, v16

    #@180
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@182
    const/16 v3, 0x7db

    #@184
    if-ne v2, v3, :cond_10

    #@186
    .line 4454
    move-object/from16 v0, p0

    #@188
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    #@18a
    iput v2, v12, Landroid/graphics/Rect;->left:I

    #@18c
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@18e
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@190
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@192
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@194
    .line 4455
    move-object/from16 v0, p0

    #@196
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    #@198
    iput v2, v12, Landroid/graphics/Rect;->top:I

    #@19a
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@19c
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@19e
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@1a0
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@1a2
    .line 4456
    move-object/from16 v0, p0

    #@1a4
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    #@1a6
    iput v2, v12, Landroid/graphics/Rect;->right:I

    #@1a8
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@1aa
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@1ac
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@1ae
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@1b0
    .line 4458
    move-object/from16 v0, p0

    #@1b2
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@1b4
    move-object/from16 v0, p0

    #@1b6
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    #@1b8
    add-int/2addr v2, v3

    #@1b9
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@1bb
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@1bd
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@1bf
    .line 4460
    move-object/from16 v0, p0

    #@1c1
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    #@1c3
    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    #@1c5
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@1c7
    .line 4461
    move-object/from16 v0, p0

    #@1c9
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@1cb
    if-eqz v2, :cond_e

    #@1cd
    move-object/from16 v0, p0

    #@1cf
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    #@1d1
    move-object/from16 v0, p0

    #@1d3
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@1d5
    if-ne v2, v3, :cond_e

    #@1d7
    move-object/from16 v0, p0

    #@1d9
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@1db
    move-object/from16 v0, p0

    #@1dd
    invoke-direct {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->canReceiveInput(Landroid/view/WindowManagerPolicy$WindowState;)Z

    #@1e0
    move-result v2

    #@1e1
    if-eqz v2, :cond_e

    #@1e3
    .line 4464
    move-object/from16 v0, p0

    #@1e5
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    #@1e7
    const/4 v3, 0x1

    #@1e8
    if-ne v2, v3, :cond_f

    #@1ea
    .line 4465
    move-object/from16 v0, p0

    #@1ec
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    #@1ee
    iput v2, v12, Landroid/graphics/Rect;->right:I

    #@1f0
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@1f2
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@1f4
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@1f6
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@1f8
    .line 4471
    :cond_e
    :goto_8
    const/16 v2, 0x50

    #@1fa
    move-object/from16 v0, v16

    #@1fc
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@1fe
    .line 4472
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    #@201
    move-result v2

    #@202
    move-object/from16 v0, p0

    #@204
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLayer:I

    #@206
    goto/16 :goto_3

    #@208
    .line 4466
    :cond_f
    move-object/from16 v0, p0

    #@20a
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    #@20c
    const/4 v3, 0x2

    #@20d
    if-ne v2, v3, :cond_e

    #@20f
    .line 4467
    move-object/from16 v0, p0

    #@211
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    #@213
    iput v2, v12, Landroid/graphics/Rect;->left:I

    #@215
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@217
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@219
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@21b
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@21d
    goto :goto_8

    #@21e
    .line 4473
    :cond_10
    move-object/from16 v0, v16

    #@220
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@222
    const/16 v3, 0x7ef

    #@224
    if-ne v2, v3, :cond_13

    #@226
    .line 4474
    move-object/from16 v0, p0

    #@228
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@22a
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@22c
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@22e
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@230
    .line 4475
    move-object/from16 v0, p0

    #@232
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@234
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@236
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@238
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@23a
    .line 4476
    move-object/from16 v0, p0

    #@23c
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@23e
    move-object/from16 v0, p0

    #@240
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    #@242
    add-int/2addr v2, v3

    #@243
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@245
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@247
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@249
    .line 4477
    move-object/from16 v0, p0

    #@24b
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@24d
    move-object/from16 v0, p0

    #@24f
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    #@251
    add-int/2addr v2, v3

    #@252
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@254
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@256
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@258
    .line 4478
    const/16 v2, 0x10

    #@25a
    if-eq v5, v2, :cond_11

    #@25c
    .line 4479
    move-object/from16 v0, p0

    #@25e
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    #@260
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@262
    .line 4480
    move-object/from16 v0, p0

    #@264
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    #@266
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@268
    .line 4481
    move-object/from16 v0, p0

    #@26a
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    #@26c
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@26e
    .line 4482
    move-object/from16 v0, p0

    #@270
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    #@272
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@274
    .line 4489
    :goto_9
    const/16 v2, 0x30

    #@276
    if-eq v5, v2, :cond_12

    #@278
    .line 4490
    move-object/from16 v0, p0

    #@27a
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    #@27c
    iput v2, v12, Landroid/graphics/Rect;->left:I

    #@27e
    .line 4491
    move-object/from16 v0, p0

    #@280
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    #@282
    iput v2, v12, Landroid/graphics/Rect;->top:I

    #@284
    .line 4492
    move-object/from16 v0, p0

    #@286
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    #@288
    iput v2, v12, Landroid/graphics/Rect;->right:I

    #@28a
    .line 4493
    move-object/from16 v0, p0

    #@28c
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    #@28e
    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    #@290
    goto/16 :goto_3

    #@292
    .line 4484
    :cond_11
    move-object/from16 v0, p0

    #@294
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    #@296
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@298
    .line 4485
    move-object/from16 v0, p0

    #@29a
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    #@29c
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@29e
    .line 4486
    move-object/from16 v0, p0

    #@2a0
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    #@2a2
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@2a4
    .line 4487
    move-object/from16 v0, p0

    #@2a6
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    #@2a8
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@2aa
    goto :goto_9

    #@2ab
    .line 4495
    :cond_12
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@2ae
    goto/16 :goto_3

    #@2b0
    .line 4497
    :cond_13
    move-object/from16 v0, v16

    #@2b2
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@2b4
    const/16 v3, 0x7dd

    #@2b6
    if-ne v2, v3, :cond_14

    #@2b8
    move-object/from16 v6, p0

    #@2ba
    move-object/from16 v7, p1

    #@2bc
    .line 4498
    invoke-direct/range {v6 .. v11}, Lcom/android/server/policy/PhoneWindowManager;->layoutWallpaper(Landroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@2bf
    goto/16 :goto_3

    #@2c1
    .line 4499
    :cond_14
    move-object/from16 v0, p0

    #@2c3
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@2c5
    move-object/from16 v0, p1

    #@2c7
    if-ne v0, v2, :cond_16

    #@2c9
    .line 4500
    move-object/from16 v0, p0

    #@2cb
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@2cd
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@2cf
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@2d1
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@2d3
    .line 4501
    move-object/from16 v0, p0

    #@2d5
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@2d7
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@2d9
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@2db
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@2dd
    .line 4502
    move-object/from16 v0, p0

    #@2df
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    #@2e1
    move-object/from16 v0, p0

    #@2e3
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@2e5
    add-int/2addr v2, v3

    #@2e6
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@2e8
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@2ea
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@2ec
    .line 4503
    move-object/from16 v0, p0

    #@2ee
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    #@2f0
    move-object/from16 v0, p0

    #@2f2
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@2f4
    add-int/2addr v2, v3

    #@2f5
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@2f7
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@2f9
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@2fb
    .line 4504
    move-object/from16 v0, p0

    #@2fd
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    #@2ff
    iput v2, v12, Landroid/graphics/Rect;->left:I

    #@301
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@303
    .line 4505
    move-object/from16 v0, p0

    #@305
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    #@307
    iput v2, v12, Landroid/graphics/Rect;->top:I

    #@309
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@30b
    .line 4506
    move-object/from16 v0, p0

    #@30d
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    #@30f
    iput v2, v12, Landroid/graphics/Rect;->right:I

    #@311
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@313
    .line 4507
    move-object/from16 v0, p0

    #@315
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    #@317
    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    #@319
    .line 4509
    const/16 v2, 0x10

    #@31b
    if-ne v5, v2, :cond_15

    #@31d
    .line 4510
    move-object/from16 v0, p0

    #@31f
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    #@321
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@323
    goto/16 :goto_3

    #@325
    .line 4512
    :cond_15
    move-object/from16 v0, p0

    #@327
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    #@329
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@32b
    .line 4513
    move-object/from16 v0, p0

    #@32d
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    #@32f
    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    #@331
    goto/16 :goto_3

    #@333
    .line 4518
    :cond_16
    move-object/from16 v0, p0

    #@335
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemLeft:I

    #@337
    iput v2, v13, Landroid/graphics/Rect;->left:I

    #@339
    .line 4519
    move-object/from16 v0, p0

    #@33b
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemTop:I

    #@33d
    iput v2, v13, Landroid/graphics/Rect;->top:I

    #@33f
    .line 4520
    move-object/from16 v0, p0

    #@341
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemRight:I

    #@343
    iput v2, v13, Landroid/graphics/Rect;->right:I

    #@345
    .line 4521
    move-object/from16 v0, p0

    #@347
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBottom:I

    #@349
    iput v2, v13, Landroid/graphics/Rect;->bottom:I

    #@34b
    .line 4522
    move-object/from16 v0, v16

    #@34d
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@34f
    and-int/lit16 v2, v2, 0x200

    #@351
    if-eqz v2, :cond_19

    #@353
    const/16 v18, 0x1

    #@355
    .line 4525
    .local v18, "inheritTranslucentDecor":Z
    :goto_a
    move-object/from16 v0, v16

    #@357
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@359
    const/4 v3, 0x1

    #@35a
    if-lt v2, v3, :cond_1b

    #@35c
    .line 4526
    move-object/from16 v0, v16

    #@35e
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@360
    const/16 v3, 0x63

    #@362
    if-gt v2, v3, :cond_1a

    #@364
    const/16 v19, 0x1

    #@366
    .line 4528
    .local v19, "isAppWindow":Z
    :goto_b
    move-object/from16 v0, p0

    #@368
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@36a
    move-object/from16 v0, p1

    #@36c
    if-ne v0, v2, :cond_17

    #@36e
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    #@371
    move-result v2

    #@372
    if-eqz v2, :cond_1c

    #@374
    :cond_17
    const/16 v27, 0x0

    #@376
    .line 4529
    .local v27, "topAtRest":Z
    :goto_c
    if-eqz v19, :cond_18

    #@378
    if-eqz v18, :cond_1d

    #@37a
    .line 4549
    :cond_18
    :goto_d
    const v2, 0x10100

    #@37d
    and-int/2addr v2, v4

    #@37e
    .line 4550
    const v3, 0x10100

    #@381
    .line 4549
    if-ne v2, v3, :cond_2b

    #@383
    .line 4557
    if-eqz p2, :cond_1f

    #@385
    .line 4560
    const/4 v7, 0x1

    #@386
    move-object/from16 v2, p0

    #@388
    move-object/from16 v3, p1

    #@38a
    move-object/from16 v6, p2

    #@38c
    invoke-virtual/range {v2 .. v12}, Lcom/android/server/policy/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@38f
    goto/16 :goto_3

    #@391
    .line 4522
    .end local v18    # "inheritTranslucentDecor":Z
    .end local v19    # "isAppWindow":Z
    .end local v27    # "topAtRest":Z
    :cond_19
    const/16 v18, 0x0

    #@393
    .restart local v18    # "inheritTranslucentDecor":Z
    goto :goto_a

    #@394
    .line 4526
    :cond_1a
    const/16 v19, 0x0

    #@396
    .restart local v19    # "isAppWindow":Z
    goto :goto_b

    #@397
    .line 4525
    .end local v19    # "isAppWindow":Z
    :cond_1b
    const/16 v19, 0x0

    #@399
    .restart local v19    # "isAppWindow":Z
    goto :goto_b

    #@39a
    .line 4528
    :cond_1c
    const/16 v27, 0x1

    #@39c
    .restart local v27    # "topAtRest":Z
    goto :goto_c

    #@39d
    .line 4529
    :cond_1d
    if-nez v27, :cond_18

    #@39f
    .line 4530
    and-int/lit8 v2, v26, 0x4

    #@3a1
    if-nez v2, :cond_1e

    #@3a3
    .line 4531
    and-int/lit16 v2, v4, 0x400

    #@3a5
    if-nez v2, :cond_1e

    #@3a7
    .line 4532
    const/high16 v2, 0x4000000

    #@3a9
    and-int/2addr v2, v4

    #@3aa
    if-nez v2, :cond_1e

    #@3ac
    .line 4533
    const/high16 v2, -0x80000000

    #@3ae
    and-int/2addr v2, v4

    #@3af
    if-nez v2, :cond_1e

    #@3b1
    .line 4535
    const/high16 v2, 0x20000

    #@3b3
    and-int v2, v2, v23

    #@3b5
    if-nez v2, :cond_1e

    #@3b7
    .line 4537
    move-object/from16 v0, p0

    #@3b9
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    #@3bb
    iput v2, v13, Landroid/graphics/Rect;->top:I

    #@3bd
    .line 4539
    :cond_1e
    const/high16 v2, 0x8000000

    #@3bf
    and-int/2addr v2, v4

    #@3c0
    if-nez v2, :cond_18

    #@3c2
    .line 4540
    and-int/lit8 v2, v26, 0x2

    #@3c4
    if-nez v2, :cond_18

    #@3c6
    .line 4541
    const/high16 v2, -0x80000000

    #@3c8
    and-int/2addr v2, v4

    #@3c9
    if-nez v2, :cond_18

    #@3cb
    .line 4544
    move-object/from16 v0, p0

    #@3cd
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    #@3cf
    iput v2, v13, Landroid/graphics/Rect;->bottom:I

    #@3d1
    .line 4545
    move-object/from16 v0, p0

    #@3d3
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    #@3d5
    iput v2, v13, Landroid/graphics/Rect;->right:I

    #@3d7
    goto :goto_d

    #@3d8
    .line 4562
    :cond_1f
    move-object/from16 v0, v16

    #@3da
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@3dc
    const/16 v3, 0x7de

    #@3de
    if-eq v2, v3, :cond_20

    #@3e0
    .line 4563
    move-object/from16 v0, v16

    #@3e2
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@3e4
    const/16 v3, 0x7e1

    #@3e6
    if-ne v2, v3, :cond_24

    #@3e8
    .line 4571
    :cond_20
    if-eqz v17, :cond_21

    #@3ea
    .line 4572
    move-object/from16 v0, p0

    #@3ec
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    #@3ee
    .line 4571
    :goto_e
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@3f0
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@3f2
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@3f4
    .line 4573
    move-object/from16 v0, p0

    #@3f6
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@3f8
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@3fa
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@3fc
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@3fe
    .line 4574
    if-eqz v17, :cond_22

    #@400
    .line 4575
    move-object/from16 v0, p0

    #@402
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    #@404
    move-object/from16 v0, p0

    #@406
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    #@408
    add-int/2addr v2, v3

    #@409
    .line 4574
    :goto_f
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@40b
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@40d
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@40f
    .line 4577
    if-eqz v17, :cond_23

    #@411
    .line 4578
    move-object/from16 v0, p0

    #@413
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    #@415
    move-object/from16 v0, p0

    #@417
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    #@419
    add-int/2addr v2, v3

    #@41a
    .line 4577
    :goto_10
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@41c
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@41e
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@420
    .line 4629
    :goto_11
    and-int/lit16 v2, v4, 0x400

    #@422
    if-nez v2, :cond_29

    #@424
    .line 4630
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVoiceInteraction()Z

    #@427
    move-result v2

    #@428
    if-eqz v2, :cond_27

    #@42a
    .line 4631
    move-object/from16 v0, p0

    #@42c
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    #@42e
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@430
    .line 4632
    move-object/from16 v0, p0

    #@432
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    #@434
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@436
    .line 4633
    move-object/from16 v0, p0

    #@438
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    #@43a
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@43c
    .line 4634
    move-object/from16 v0, p0

    #@43e
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    #@440
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@442
    .line 4658
    :goto_12
    move-object/from16 v0, p0

    #@444
    move/from16 v1, v26

    #@446
    invoke-direct {v0, v1, v4, v11}, Lcom/android/server/policy/PhoneWindowManager;->applyStableConstraints(IILandroid/graphics/Rect;)V

    #@449
    .line 4659
    const/16 v2, 0x30

    #@44b
    if-eq v5, v2, :cond_2a

    #@44d
    .line 4660
    move-object/from16 v0, p0

    #@44f
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    #@451
    iput v2, v12, Landroid/graphics/Rect;->left:I

    #@453
    .line 4661
    move-object/from16 v0, p0

    #@455
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    #@457
    iput v2, v12, Landroid/graphics/Rect;->top:I

    #@459
    .line 4662
    move-object/from16 v0, p0

    #@45b
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    #@45d
    iput v2, v12, Landroid/graphics/Rect;->right:I

    #@45f
    .line 4663
    move-object/from16 v0, p0

    #@461
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    #@463
    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    #@465
    goto/16 :goto_3

    #@467
    .line 4572
    :cond_21
    move-object/from16 v0, p0

    #@469
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@46b
    goto :goto_e

    #@46c
    .line 4576
    :cond_22
    move-object/from16 v0, p0

    #@46e
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@470
    move-object/from16 v0, p0

    #@472
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    #@474
    add-int/2addr v2, v3

    #@475
    goto :goto_f

    #@476
    .line 4579
    :cond_23
    move-object/from16 v0, p0

    #@478
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@47a
    move-object/from16 v0, p0

    #@47c
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    #@47e
    add-int/2addr v2, v3

    #@47f
    goto :goto_10

    #@480
    .line 4584
    :cond_24
    const/high16 v2, 0x2000000

    #@482
    and-int/2addr v2, v4

    #@483
    if-eqz v2, :cond_25

    #@485
    .line 4585
    move-object/from16 v0, v16

    #@487
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@489
    const/4 v3, 0x1

    #@48a
    if-lt v2, v3, :cond_25

    #@48c
    .line 4586
    move-object/from16 v0, v16

    #@48e
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@490
    const/16 v3, 0x7cf

    #@492
    if-gt v2, v3, :cond_25

    #@494
    .line 4589
    move-object/from16 v0, p0

    #@496
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    #@498
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@49a
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@49c
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@49e
    .line 4590
    move-object/from16 v0, p0

    #@4a0
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    #@4a2
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@4a4
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@4a6
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@4a8
    .line 4591
    move-object/from16 v0, p0

    #@4aa
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    #@4ac
    move-object/from16 v0, p0

    #@4ae
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    #@4b0
    add-int/2addr v2, v3

    #@4b1
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@4b3
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@4b5
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@4b7
    .line 4592
    move-object/from16 v0, p0

    #@4b9
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    #@4bb
    .line 4593
    move-object/from16 v0, p0

    #@4bd
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    #@4bf
    .line 4592
    add-int/2addr v2, v3

    #@4c0
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@4c2
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@4c4
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@4c6
    goto/16 :goto_11

    #@4c8
    .line 4594
    :cond_25
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    #@4cb
    move-result v2

    #@4cc
    if-eqz v2, :cond_26

    #@4ce
    .line 4595
    move/from16 v0, v26

    #@4d0
    and-int/lit16 v2, v0, 0x200

    #@4d2
    if-eqz v2, :cond_26

    #@4d4
    .line 4596
    move-object/from16 v0, v16

    #@4d6
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@4d8
    const/4 v3, 0x1

    #@4d9
    if-lt v2, v3, :cond_26

    #@4db
    .line 4597
    move-object/from16 v0, v16

    #@4dd
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@4df
    const/16 v3, 0x7cf

    #@4e1
    if-gt v2, v3, :cond_26

    #@4e3
    .line 4602
    move-object/from16 v0, p0

    #@4e5
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    #@4e7
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@4e9
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@4eb
    .line 4603
    move-object/from16 v0, p0

    #@4ed
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    #@4ef
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@4f1
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@4f3
    .line 4604
    move-object/from16 v0, p0

    #@4f5
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    #@4f7
    move-object/from16 v0, p0

    #@4f9
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    #@4fb
    add-int/2addr v2, v3

    #@4fc
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@4fe
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@500
    .line 4605
    move-object/from16 v0, p0

    #@502
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    #@504
    move-object/from16 v0, p0

    #@506
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    #@508
    add-int/2addr v2, v3

    #@509
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@50b
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@50d
    .line 4609
    move-object/from16 v0, p0

    #@50f
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@511
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@513
    .line 4610
    move-object/from16 v0, p0

    #@515
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@517
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@519
    .line 4611
    move-object/from16 v0, p0

    #@51b
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@51d
    move-object/from16 v0, p0

    #@51f
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    #@521
    add-int/2addr v2, v3

    #@522
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@524
    .line 4612
    move-object/from16 v0, p0

    #@526
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@528
    move-object/from16 v0, p0

    #@52a
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    #@52c
    add-int/2addr v2, v3

    #@52d
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@52f
    goto/16 :goto_11

    #@531
    .line 4614
    :cond_26
    move-object/from16 v0, p0

    #@533
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    #@535
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@537
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@539
    .line 4615
    move-object/from16 v0, p0

    #@53b
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    #@53d
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@53f
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@541
    .line 4616
    move-object/from16 v0, p0

    #@543
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    #@545
    .line 4617
    move-object/from16 v0, p0

    #@547
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    #@549
    .line 4616
    add-int/2addr v2, v3

    #@54a
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@54c
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@54e
    .line 4618
    move-object/from16 v0, p0

    #@550
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    #@552
    .line 4619
    move-object/from16 v0, p0

    #@554
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    #@556
    .line 4618
    add-int/2addr v2, v3

    #@557
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@559
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@55b
    .line 4623
    move-object/from16 v0, p0

    #@55d
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@55f
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@561
    .line 4624
    move-object/from16 v0, p0

    #@563
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@565
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@567
    .line 4625
    move-object/from16 v0, p0

    #@569
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@56b
    move-object/from16 v0, p0

    #@56d
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    #@56f
    add-int/2addr v2, v3

    #@570
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@572
    .line 4626
    move-object/from16 v0, p0

    #@574
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@576
    move-object/from16 v0, p0

    #@578
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    #@57a
    add-int/2addr v2, v3

    #@57b
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@57d
    goto/16 :goto_11

    #@57f
    .line 4636
    :cond_27
    const/16 v2, 0x10

    #@581
    if-eq v5, v2, :cond_28

    #@583
    .line 4637
    move-object/from16 v0, p0

    #@585
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    #@587
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@589
    .line 4638
    move-object/from16 v0, p0

    #@58b
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    #@58d
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@58f
    .line 4639
    move-object/from16 v0, p0

    #@591
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    #@593
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@595
    .line 4640
    move-object/from16 v0, p0

    #@597
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    #@599
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@59b
    goto/16 :goto_12

    #@59d
    .line 4642
    :cond_28
    move-object/from16 v0, p0

    #@59f
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    #@5a1
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@5a3
    .line 4643
    move-object/from16 v0, p0

    #@5a5
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    #@5a7
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@5a9
    .line 4644
    move-object/from16 v0, p0

    #@5ab
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    #@5ad
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@5af
    .line 4645
    move-object/from16 v0, p0

    #@5b1
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    #@5b3
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@5b5
    goto/16 :goto_12

    #@5b7
    .line 4653
    :cond_29
    move-object/from16 v0, p0

    #@5b9
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    #@5bb
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@5bd
    .line 4654
    move-object/from16 v0, p0

    #@5bf
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    #@5c1
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@5c3
    .line 4655
    move-object/from16 v0, p0

    #@5c5
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    #@5c7
    move-object/from16 v0, p0

    #@5c9
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    #@5cb
    add-int/2addr v2, v3

    #@5cc
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@5ce
    .line 4656
    move-object/from16 v0, p0

    #@5d0
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    #@5d2
    move-object/from16 v0, p0

    #@5d4
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    #@5d6
    add-int/2addr v2, v3

    #@5d7
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@5d9
    goto/16 :goto_12

    #@5db
    .line 4665
    :cond_2a
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@5de
    goto/16 :goto_3

    #@5e0
    .line 4668
    :cond_2b
    and-int/lit16 v2, v4, 0x100

    #@5e2
    if-nez v2, :cond_2c

    #@5e4
    move/from16 v0, v26

    #@5e6
    and-int/lit16 v2, v0, 0x600

    #@5e8
    if-eqz v2, :cond_3f

    #@5ea
    .line 4675
    :cond_2c
    move-object/from16 v0, v16

    #@5ec
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@5ee
    const/16 v3, 0x7de

    #@5f0
    if-eq v2, v3, :cond_2d

    #@5f2
    .line 4676
    move-object/from16 v0, v16

    #@5f4
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@5f6
    const/16 v3, 0x7e1

    #@5f8
    if-ne v2, v3, :cond_2e

    #@5fa
    .line 4678
    :cond_2d
    if-eqz v17, :cond_30

    #@5fc
    .line 4679
    move-object/from16 v0, p0

    #@5fe
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    #@600
    .line 4678
    :goto_13
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@602
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@604
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@606
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@608
    .line 4680
    move-object/from16 v0, p0

    #@60a
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@60c
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@60e
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@610
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@612
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@614
    .line 4681
    if-eqz v17, :cond_31

    #@616
    .line 4682
    move-object/from16 v0, p0

    #@618
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    #@61a
    move-object/from16 v0, p0

    #@61c
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    #@61e
    add-int/2addr v2, v3

    #@61f
    .line 4681
    :goto_14
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@621
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@623
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@625
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@627
    .line 4684
    if-eqz v17, :cond_32

    #@629
    .line 4685
    move-object/from16 v0, p0

    #@62b
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    #@62d
    move-object/from16 v0, p0

    #@62f
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    #@631
    add-int/2addr v2, v3

    #@632
    .line 4684
    :goto_15
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@634
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@636
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@638
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@63a
    .line 4780
    :goto_16
    move-object/from16 v0, p0

    #@63c
    move/from16 v1, v26

    #@63e
    invoke-direct {v0, v1, v4, v11}, Lcom/android/server/policy/PhoneWindowManager;->applyStableConstraints(IILandroid/graphics/Rect;)V

    #@641
    .line 4782
    const/16 v2, 0x30

    #@643
    if-eq v5, v2, :cond_3e

    #@645
    .line 4783
    move-object/from16 v0, p0

    #@647
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    #@649
    iput v2, v12, Landroid/graphics/Rect;->left:I

    #@64b
    .line 4784
    move-object/from16 v0, p0

    #@64d
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    #@64f
    iput v2, v12, Landroid/graphics/Rect;->top:I

    #@651
    .line 4785
    move-object/from16 v0, p0

    #@653
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    #@655
    iput v2, v12, Landroid/graphics/Rect;->right:I

    #@657
    .line 4786
    move-object/from16 v0, p0

    #@659
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    #@65b
    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    #@65d
    goto/16 :goto_3

    #@65f
    .line 4677
    :cond_2e
    move-object/from16 v0, v16

    #@661
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@663
    const/16 v3, 0x7e4

    #@665
    if-eq v2, v3, :cond_2d

    #@667
    .line 4690
    move-object/from16 v0, v16

    #@669
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@66b
    const/16 v3, 0x7e3

    #@66d
    if-eq v2, v3, :cond_2f

    #@66f
    .line 4691
    move-object/from16 v0, v16

    #@671
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@673
    const/16 v3, 0x7e8

    #@675
    if-ne v2, v3, :cond_33

    #@677
    .line 4693
    :cond_2f
    move-object/from16 v0, p0

    #@679
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@67b
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@67d
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@67f
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@681
    .line 4694
    move-object/from16 v0, p0

    #@683
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@685
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@687
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@689
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@68b
    .line 4695
    move-object/from16 v0, p0

    #@68d
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@68f
    .line 4696
    move-object/from16 v0, p0

    #@691
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    #@693
    .line 4695
    add-int/2addr v2, v3

    #@694
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@696
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@698
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@69a
    .line 4697
    move-object/from16 v0, p0

    #@69c
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@69e
    .line 4698
    move-object/from16 v0, p0

    #@6a0
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    #@6a2
    .line 4697
    add-int/2addr v2, v3

    #@6a3
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@6a5
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@6a7
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@6a9
    goto :goto_16

    #@6aa
    .line 4679
    :cond_30
    move-object/from16 v0, p0

    #@6ac
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@6ae
    goto/16 :goto_13

    #@6b0
    .line 4683
    :cond_31
    move-object/from16 v0, p0

    #@6b2
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@6b4
    move-object/from16 v0, p0

    #@6b6
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    #@6b8
    add-int/2addr v2, v3

    #@6b9
    goto/16 :goto_14

    #@6bb
    .line 4686
    :cond_32
    move-object/from16 v0, p0

    #@6bd
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@6bf
    move-object/from16 v0, p0

    #@6c1
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    #@6c3
    add-int/2addr v2, v3

    #@6c4
    goto/16 :goto_15

    #@6c6
    .line 4702
    :cond_33
    move-object/from16 v0, v16

    #@6c8
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@6ca
    const/16 v3, 0x7df

    #@6cc
    if-eq v2, v3, :cond_34

    #@6ce
    .line 4703
    move-object/from16 v0, v16

    #@6d0
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@6d2
    const/16 v3, 0x7e5

    #@6d4
    if-ne v2, v3, :cond_35

    #@6d6
    .line 4705
    :cond_34
    and-int/lit16 v2, v4, 0x400

    #@6d8
    if-eqz v2, :cond_36

    #@6da
    .line 4708
    move-object/from16 v0, p0

    #@6dc
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    #@6de
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@6e0
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@6e2
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@6e4
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@6e6
    .line 4709
    move-object/from16 v0, p0

    #@6e8
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    #@6ea
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@6ec
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@6ee
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@6f0
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@6f2
    .line 4710
    move-object/from16 v0, p0

    #@6f4
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    #@6f6
    .line 4711
    move-object/from16 v0, p0

    #@6f8
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    #@6fa
    .line 4710
    add-int/2addr v2, v3

    #@6fb
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@6fd
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@6ff
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@701
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@703
    .line 4712
    move-object/from16 v0, p0

    #@705
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    #@707
    .line 4713
    move-object/from16 v0, p0

    #@709
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    #@70b
    .line 4712
    add-int/2addr v2, v3

    #@70c
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@70e
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@710
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@712
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@714
    goto/16 :goto_16

    #@716
    .line 4704
    :cond_35
    move-object/from16 v0, v16

    #@718
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@71a
    const/16 v3, 0x7f4

    #@71c
    if-eq v2, v3, :cond_34

    #@71e
    .line 4714
    :cond_36
    move-object/from16 v0, v16

    #@720
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@722
    const/16 v3, 0x7e5

    #@724
    if-ne v2, v3, :cond_37

    #@726
    .line 4716
    move-object/from16 v0, p0

    #@728
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    #@72a
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@72c
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@72e
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@730
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@732
    .line 4717
    move-object/from16 v0, p0

    #@734
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    #@736
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@738
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@73a
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@73c
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@73e
    .line 4718
    move-object/from16 v0, p0

    #@740
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    #@742
    .line 4719
    move-object/from16 v0, p0

    #@744
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    #@746
    .line 4718
    add-int/2addr v2, v3

    #@747
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@749
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@74b
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@74d
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@74f
    .line 4720
    move-object/from16 v0, p0

    #@751
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    #@753
    .line 4721
    move-object/from16 v0, p0

    #@755
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    #@757
    .line 4720
    add-int/2addr v2, v3

    #@758
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@75a
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@75c
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@75e
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@760
    goto/16 :goto_16

    #@762
    .line 4722
    :cond_37
    const/high16 v2, 0x2000000

    #@764
    and-int/2addr v2, v4

    #@765
    if-eqz v2, :cond_38

    #@767
    .line 4723
    move-object/from16 v0, v16

    #@769
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@76b
    const/4 v3, 0x1

    #@76c
    if-lt v2, v3, :cond_38

    #@76e
    .line 4724
    move-object/from16 v0, v16

    #@770
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@772
    const/16 v3, 0x7cf

    #@774
    if-gt v2, v3, :cond_38

    #@776
    .line 4727
    move-object/from16 v0, p0

    #@778
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    #@77a
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@77c
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@77e
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@780
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@782
    .line 4728
    move-object/from16 v0, p0

    #@784
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    #@786
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@788
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@78a
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@78c
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@78e
    .line 4730
    move-object/from16 v0, p0

    #@790
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    #@792
    move-object/from16 v0, p0

    #@794
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    #@796
    add-int/2addr v2, v3

    #@797
    .line 4729
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@799
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@79b
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@79d
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@79f
    .line 4732
    move-object/from16 v0, p0

    #@7a1
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    #@7a3
    move-object/from16 v0, p0

    #@7a5
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    #@7a7
    add-int/2addr v2, v3

    #@7a8
    .line 4731
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@7aa
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@7ac
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@7ae
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@7b0
    goto/16 :goto_16

    #@7b2
    .line 4733
    :cond_38
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    #@7b5
    move-result v2

    #@7b6
    if-eqz v2, :cond_3b

    #@7b8
    .line 4734
    move/from16 v0, v26

    #@7ba
    and-int/lit16 v2, v0, 0x200

    #@7bc
    if-eqz v2, :cond_3b

    #@7be
    .line 4735
    move-object/from16 v0, v16

    #@7c0
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@7c2
    const/16 v3, 0x7d0

    #@7c4
    if-eq v2, v3, :cond_39

    #@7c6
    .line 4736
    move-object/from16 v0, v16

    #@7c8
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@7ca
    const/16 v3, 0x7d5

    #@7cc
    if-ne v2, v3, :cond_3a

    #@7ce
    .line 4748
    :cond_39
    move-object/from16 v0, p0

    #@7d0
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@7d2
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@7d4
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@7d6
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@7d8
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@7da
    .line 4749
    move-object/from16 v0, p0

    #@7dc
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@7de
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@7e0
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@7e2
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@7e4
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@7e6
    .line 4750
    move-object/from16 v0, p0

    #@7e8
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    #@7ea
    .line 4751
    move-object/from16 v0, p0

    #@7ec
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    #@7ee
    .line 4750
    add-int/2addr v2, v3

    #@7ef
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@7f1
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@7f3
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@7f5
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@7f7
    .line 4752
    move-object/from16 v0, p0

    #@7f9
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #@7fb
    .line 4753
    move-object/from16 v0, p0

    #@7fd
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    #@7ff
    .line 4752
    add-int/2addr v2, v3

    #@800
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@802
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@804
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@806
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@808
    goto/16 :goto_16

    #@80a
    .line 4737
    :cond_3a
    move-object/from16 v0, v16

    #@80c
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@80e
    const/16 v3, 0x7f2

    #@810
    if-eq v2, v3, :cond_39

    #@812
    .line 4738
    move-object/from16 v0, v16

    #@814
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@816
    const/16 v3, 0x7f1

    #@818
    if-eq v2, v3, :cond_39

    #@81a
    .line 4739
    move-object/from16 v0, v16

    #@81c
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@81e
    const/4 v3, 0x1

    #@81f
    if-lt v2, v3, :cond_3b

    #@821
    .line 4740
    move-object/from16 v0, v16

    #@823
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@825
    const/16 v3, 0x7cf

    #@827
    if-le v2, v3, :cond_39

    #@829
    .line 4754
    :cond_3b
    move/from16 v0, v26

    #@82b
    and-int/lit16 v2, v0, 0x400

    #@82d
    if-eqz v2, :cond_3d

    #@82f
    .line 4755
    move-object/from16 v0, p0

    #@831
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    #@833
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@835
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@837
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@839
    .line 4756
    move-object/from16 v0, p0

    #@83b
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    #@83d
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@83f
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@841
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@843
    .line 4757
    move-object/from16 v0, p0

    #@845
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    #@847
    move-object/from16 v0, p0

    #@849
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    #@84b
    add-int/2addr v2, v3

    #@84c
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@84e
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@850
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@852
    .line 4758
    move-object/from16 v0, p0

    #@854
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    #@856
    .line 4759
    move-object/from16 v0, p0

    #@858
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    #@85a
    .line 4758
    add-int/2addr v2, v3

    #@85b
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@85d
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@85f
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@861
    .line 4760
    const/16 v2, 0x10

    #@863
    if-eq v5, v2, :cond_3c

    #@865
    .line 4761
    move-object/from16 v0, p0

    #@867
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    #@869
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@86b
    .line 4762
    move-object/from16 v0, p0

    #@86d
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    #@86f
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@871
    .line 4763
    move-object/from16 v0, p0

    #@873
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    #@875
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@877
    .line 4764
    move-object/from16 v0, p0

    #@879
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    #@87b
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@87d
    goto/16 :goto_16

    #@87f
    .line 4766
    :cond_3c
    move-object/from16 v0, p0

    #@881
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    #@883
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@885
    .line 4767
    move-object/from16 v0, p0

    #@887
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    #@889
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@88b
    .line 4768
    move-object/from16 v0, p0

    #@88d
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    #@88f
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@891
    .line 4769
    move-object/from16 v0, p0

    #@893
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    #@895
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@897
    goto/16 :goto_16

    #@899
    .line 4772
    :cond_3d
    move-object/from16 v0, p0

    #@89b
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    #@89d
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@89f
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@8a1
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@8a3
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@8a5
    .line 4773
    move-object/from16 v0, p0

    #@8a7
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    #@8a9
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@8ab
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@8ad
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@8af
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@8b1
    .line 4774
    move-object/from16 v0, p0

    #@8b3
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    #@8b5
    .line 4775
    move-object/from16 v0, p0

    #@8b7
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    #@8b9
    .line 4774
    add-int/2addr v2, v3

    #@8ba
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@8bc
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@8be
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@8c0
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@8c2
    .line 4776
    move-object/from16 v0, p0

    #@8c4
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    #@8c6
    .line 4777
    move-object/from16 v0, p0

    #@8c8
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    #@8ca
    .line 4776
    add-int/2addr v2, v3

    #@8cb
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@8cd
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@8cf
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@8d1
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@8d3
    goto/16 :goto_16

    #@8d5
    .line 4788
    :cond_3e
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@8d8
    goto/16 :goto_3

    #@8da
    .line 4790
    :cond_3f
    if-eqz p2, :cond_40

    #@8dc
    .line 4795
    const/4 v7, 0x0

    #@8dd
    move-object/from16 v2, p0

    #@8df
    move-object/from16 v3, p1

    #@8e1
    move-object/from16 v6, p2

    #@8e3
    invoke-virtual/range {v2 .. v12}, Lcom/android/server/policy/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@8e6
    goto/16 :goto_3

    #@8e8
    .line 4801
    :cond_40
    move-object/from16 v0, v16

    #@8ea
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@8ec
    const/16 v3, 0x7de

    #@8ee
    if-eq v2, v3, :cond_41

    #@8f0
    move-object/from16 v0, v16

    #@8f2
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@8f4
    const/16 v3, 0x7e4

    #@8f6
    if-ne v2, v3, :cond_42

    #@8f8
    .line 4806
    :cond_41
    move-object/from16 v0, p0

    #@8fa
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    #@8fc
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@8fe
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@900
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@902
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@904
    .line 4807
    move-object/from16 v0, p0

    #@906
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    #@908
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@90a
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@90c
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@90e
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@910
    .line 4808
    move-object/from16 v0, p0

    #@912
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    #@914
    .line 4809
    move-object/from16 v0, p0

    #@916
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    #@918
    .line 4808
    add-int/2addr v2, v3

    #@919
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@91b
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@91d
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@91f
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@921
    .line 4810
    move-object/from16 v0, p0

    #@923
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    #@925
    .line 4811
    move-object/from16 v0, p0

    #@927
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    #@929
    .line 4810
    add-int/2addr v2, v3

    #@92a
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@92c
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@92e
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@930
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@932
    goto/16 :goto_3

    #@934
    .line 4812
    :cond_42
    move-object/from16 v0, v16

    #@936
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@938
    const/16 v3, 0x7d5

    #@93a
    if-eq v2, v3, :cond_43

    #@93c
    move-object/from16 v0, v16

    #@93e
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@940
    const/16 v3, 0x7d3

    #@942
    if-ne v2, v3, :cond_44

    #@944
    .line 4814
    :cond_43
    move-object/from16 v0, p0

    #@946
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    #@948
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@94a
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@94c
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@94e
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@950
    .line 4815
    move-object/from16 v0, p0

    #@952
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    #@954
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@956
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@958
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@95a
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@95c
    .line 4816
    move-object/from16 v0, p0

    #@95e
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    #@960
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@962
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@964
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@966
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@968
    .line 4817
    move-object/from16 v0, p0

    #@96a
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    #@96c
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@96e
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@970
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@972
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@974
    goto/16 :goto_3

    #@976
    .line 4819
    :cond_44
    move-object/from16 v0, p0

    #@978
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    #@97a
    iput v2, v8, Landroid/graphics/Rect;->left:I

    #@97c
    .line 4820
    move-object/from16 v0, p0

    #@97e
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    #@980
    iput v2, v8, Landroid/graphics/Rect;->top:I

    #@982
    .line 4821
    move-object/from16 v0, p0

    #@984
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    #@986
    iput v2, v8, Landroid/graphics/Rect;->right:I

    #@988
    .line 4822
    move-object/from16 v0, p0

    #@98a
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    #@98c
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    #@98e
    .line 4823
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVoiceInteraction()Z

    #@991
    move-result v2

    #@992
    if-eqz v2, :cond_45

    #@994
    .line 4824
    move-object/from16 v0, p0

    #@996
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    #@998
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@99a
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@99c
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@99e
    .line 4825
    move-object/from16 v0, p0

    #@9a0
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    #@9a2
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@9a4
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@9a6
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@9a8
    .line 4826
    move-object/from16 v0, p0

    #@9aa
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    #@9ac
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@9ae
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@9b0
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@9b2
    .line 4827
    move-object/from16 v0, p0

    #@9b4
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    #@9b6
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@9b8
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@9ba
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@9bc
    .line 4839
    :goto_17
    const/16 v2, 0x30

    #@9be
    if-eq v5, v2, :cond_47

    #@9c0
    .line 4840
    move-object/from16 v0, p0

    #@9c2
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    #@9c4
    iput v2, v12, Landroid/graphics/Rect;->left:I

    #@9c6
    .line 4841
    move-object/from16 v0, p0

    #@9c8
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    #@9ca
    iput v2, v12, Landroid/graphics/Rect;->top:I

    #@9cc
    .line 4842
    move-object/from16 v0, p0

    #@9ce
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    #@9d0
    iput v2, v12, Landroid/graphics/Rect;->right:I

    #@9d2
    .line 4843
    move-object/from16 v0, p0

    #@9d4
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    #@9d6
    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    #@9d8
    goto/16 :goto_3

    #@9da
    .line 4828
    :cond_45
    const/16 v2, 0x10

    #@9dc
    if-eq v5, v2, :cond_46

    #@9de
    .line 4829
    move-object/from16 v0, p0

    #@9e0
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    #@9e2
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@9e4
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@9e6
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@9e8
    .line 4830
    move-object/from16 v0, p0

    #@9ea
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    #@9ec
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@9ee
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@9f0
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@9f2
    .line 4831
    move-object/from16 v0, p0

    #@9f4
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    #@9f6
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@9f8
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@9fa
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@9fc
    .line 4832
    move-object/from16 v0, p0

    #@9fe
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    #@a00
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@a02
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@a04
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@a06
    goto :goto_17

    #@a07
    .line 4834
    :cond_46
    move-object/from16 v0, p0

    #@a09
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    #@a0b
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@a0d
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@a0f
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@a11
    .line 4835
    move-object/from16 v0, p0

    #@a13
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    #@a15
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@a17
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@a19
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@a1b
    .line 4836
    move-object/from16 v0, p0

    #@a1d
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    #@a1f
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@a21
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@a23
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@a25
    .line 4837
    move-object/from16 v0, p0

    #@a27
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    #@a29
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@a2b
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@a2d
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@a2f
    goto :goto_17

    #@a30
    .line 4845
    :cond_47
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@a33
    goto/16 :goto_3

    #@a35
    .line 4855
    .end local v18    # "inheritTranslucentDecor":Z
    .end local v19    # "isAppWindow":Z
    .end local v27    # "topAtRest":Z
    :cond_48
    const/16 v2, -0x2710

    #@a37
    iput v2, v9, Landroid/graphics/Rect;->top:I

    #@a39
    const/16 v2, -0x2710

    #@a3b
    iput v2, v9, Landroid/graphics/Rect;->left:I

    #@a3d
    .line 4856
    const/16 v2, 0x2710

    #@a3f
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    #@a41
    const/16 v2, 0x2710

    #@a43
    iput v2, v9, Landroid/graphics/Rect;->right:I

    #@a45
    .line 4857
    move-object/from16 v0, v16

    #@a47
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@a49
    const/16 v3, 0x7dd

    #@a4b
    if-eq v2, v3, :cond_4

    #@a4d
    .line 4858
    const/16 v2, -0x2710

    #@a4f
    iput v2, v12, Landroid/graphics/Rect;->top:I

    #@a51
    const/16 v2, -0x2710

    #@a53
    iput v2, v12, Landroid/graphics/Rect;->left:I

    #@a55
    const/16 v2, -0x2710

    #@a57
    iput v2, v11, Landroid/graphics/Rect;->top:I

    #@a59
    const/16 v2, -0x2710

    #@a5b
    iput v2, v11, Landroid/graphics/Rect;->left:I

    #@a5d
    const/16 v2, -0x2710

    #@a5f
    iput v2, v10, Landroid/graphics/Rect;->top:I

    #@a61
    const/16 v2, -0x2710

    #@a63
    iput v2, v10, Landroid/graphics/Rect;->left:I

    #@a65
    .line 4859
    const/16 v2, 0x2710

    #@a67
    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    #@a69
    const/16 v2, 0x2710

    #@a6b
    iput v2, v12, Landroid/graphics/Rect;->right:I

    #@a6d
    const/16 v2, 0x2710

    #@a6f
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    #@a71
    const/16 v2, 0x2710

    #@a73
    iput v2, v11, Landroid/graphics/Rect;->right:I

    #@a75
    const/16 v2, 0x2710

    #@a77
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    #@a79
    const/16 v2, 0x2710

    #@a7b
    iput v2, v10, Landroid/graphics/Rect;->right:I

    #@a7d
    goto/16 :goto_4

    #@a7f
    .line 4876
    .local v15, "osf":Landroid/graphics/Rect;
    .restart local v22    # "outset":I
    .restart local v24    # "rotation":I
    .restart local v28    # "useOutsets":Z
    :cond_49
    const/4 v2, 0x1

    #@a80
    move/from16 v0, v24

    #@a82
    if-ne v0, v2, :cond_4a

    #@a84
    .line 4877
    iget v2, v15, Landroid/graphics/Rect;->right:I

    #@a86
    add-int v2, v2, v22

    #@a88
    iput v2, v15, Landroid/graphics/Rect;->right:I

    #@a8a
    goto/16 :goto_5

    #@a8c
    .line 4878
    :cond_4a
    const/4 v2, 0x2

    #@a8d
    move/from16 v0, v24

    #@a8f
    if-ne v0, v2, :cond_4b

    #@a91
    .line 4879
    iget v2, v15, Landroid/graphics/Rect;->top:I

    #@a93
    sub-int v2, v2, v22

    #@a95
    iput v2, v15, Landroid/graphics/Rect;->top:I

    #@a97
    goto/16 :goto_5

    #@a99
    .line 4880
    :cond_4b
    const/4 v2, 0x3

    #@a9a
    move/from16 v0, v24

    #@a9c
    if-ne v0, v2, :cond_5

    #@a9e
    .line 4881
    iget v2, v15, Landroid/graphics/Rect;->left:I

    #@aa0
    sub-int v2, v2, v22

    #@aa2
    iput v2, v15, Landroid/graphics/Rect;->left:I

    #@aa4
    goto/16 :goto_5

    #@aa6
    .line 4905
    .end local v15    # "osf":Landroid/graphics/Rect;
    .end local v22    # "outset":I
    .end local v24    # "rotation":I
    :cond_4c
    const/4 v2, 0x0

    #@aa7
    const/4 v3, 0x0

    #@aa8
    move-object/from16 v0, p0

    #@aaa
    invoke-virtual {v0, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    #@aad
    .line 4906
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    #@ab0
    goto/16 :goto_6

    #@ab2
    .line 4910
    :cond_4d
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->offsetVoiceInputWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    #@ab5
    goto/16 :goto_7
.end method

.method public lockNow(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 7084
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v1, "android.permission.DEVICE_POWER"

    #@6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 7085
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@b
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@10
    .line 7086
    if-eqz p1, :cond_0

    #@12
    .line 7089
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    #@14
    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->setLockOptions(Landroid/os/Bundle;)V

    #@17
    .line 7091
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@19
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    #@1b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@1e
    .line 7083
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
    .line 941
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    #@4
    if-eqz v0, :cond_2

    #@6
    .line 942
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    #@8
    if-eq v0, v3, :cond_0

    #@a
    .line 943
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    #@c
    const/16 v1, 0xa

    #@e
    if-ne v0, v1, :cond_1

    #@10
    .line 948
    :cond_0
    return v2

    #@11
    .line 944
    :cond_1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    #@13
    const/4 v1, 0x7

    #@14
    if-eq v0, v1, :cond_0

    #@16
    .line 945
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    #@18
    const/4 v1, 0x6

    #@19
    if-eq v0, v1, :cond_0

    #@1b
    .line 951
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
    .line 957
    :cond_3
    return v2

    #@25
    .line 952
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    #@27
    if-eqz v0, :cond_5

    #@29
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    #@2b
    if-eq v0, v2, :cond_3

    #@2d
    .line 953
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    #@2f
    const/4 v1, 0x3

    #@30
    if-eq v0, v1, :cond_3

    #@32
    .line 954
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    #@34
    if-eq v0, v3, :cond_3

    #@36
    .line 959
    :cond_5
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    #@38
    if-ne v0, v2, :cond_6

    #@3a
    .line 968
    const/4 v0, 0x0

    #@3b
    return v0

    #@3c
    .line 970
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    #@3e
    return v0
.end method

.method public notifyActivityDrawnForKeyguardLw()V
    .locals 2

    #@0
    .prologue
    .line 6582
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 6583
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@6
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$19;

    #@8
    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$19;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@e
    .line 6581
    :cond_0
    return-void
.end method

.method public notifyCameraLensCoverSwitchChanged(JZ)V
    .locals 7
    .param p1, "whenNanos"    # J
    .param p3, "lensCovered"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 5421
    if-eqz p3, :cond_0

    #@3
    const/4 v2, 0x1

    #@4
    .line 5422
    .local v2, "lensCoverState":I
    :goto_0
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    #@6
    if-ne v3, v2, :cond_1

    #@8
    .line 5423
    return-void

    #@9
    .line 5421
    .end local v2    # "lensCoverState":I
    :cond_0
    const/4 v2, 0x0

    #@a
    .restart local v2    # "lensCoverState":I
    goto :goto_0

    #@b
    .line 5425
    :cond_1
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    #@d
    const/4 v4, 0x1

    #@e
    if-ne v3, v4, :cond_2

    #@10
    .line 5426
    if-nez v2, :cond_2

    #@12
    .line 5428
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@14
    if-nez v3, :cond_3

    #@16
    .line 5430
    .local v1, "keyguardActive":Z
    :goto_1
    if-eqz v1, :cond_4

    #@18
    .line 5431
    new-instance v0, Landroid/content/Intent;

    #@1a
    const-string/jumbo v3, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    #@1d
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@20
    .line 5435
    .local v0, "intent":Landroid/content/Intent;
    :goto_2
    const-wide/32 v4, 0xf4240

    #@23
    div-long v4, p1, v4

    #@25
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromCameraLens:Z

    #@27
    .line 5436
    const-string/jumbo v6, "android.policy:CAMERA_COVER"

    #@2a
    .line 5435
    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    #@2d
    .line 5437
    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    #@2f
    invoke-direct {p0, v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@32
    .line 5439
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "keyguardActive":Z
    :cond_2
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    #@34
    .line 5420
    return-void

    #@35
    .line 5429
    :cond_3
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@37
    invoke-virtual {v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    #@3a
    move-result v1

    #@3b
    goto :goto_1

    #@3c
    .line 5433
    .restart local v1    # "keyguardActive":Z
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
    .line 5402
    if-eqz p3, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    .line 5403
    .local v0, "newLidState":I
    :goto_0
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    #@5
    if-ne v0, v1, :cond_1

    #@7
    .line 5404
    return-void

    #@8
    .line 5402
    .end local v0    # "newLidState":I
    :cond_0
    const/4 v0, 0x0

    #@9
    .restart local v0    # "newLidState":I
    goto :goto_0

    #@a
    .line 5407
    :cond_1
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    #@c
    .line 5408
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->applyLidSwitchState()V

    #@f
    .line 5409
    const/4 v1, 0x1

    #@10
    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    #@13
    .line 5411
    if-eqz p3, :cond_3

    #@15
    .line 5412
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@18
    move-result-wide v2

    #@19
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromLidSwitch:Z

    #@1b
    .line 5413
    const-string/jumbo v4, "android.policy:LID"

    #@1e
    .line 5412
    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    #@21
    .line 5400
    :cond_2
    :goto_1
    return-void

    #@22
    .line 5414
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    #@24
    if-nez v1, :cond_2

    #@26
    .line 5415
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

.method public onConfigurationChanged()V
    .locals 6

    #@0
    .prologue
    .line 2321
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    .line 2324
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x1050019

    #@9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@c
    move-result v1

    #@d
    .line 2323
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    #@f
    .line 2327
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    #@11
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    #@13
    .line 2329
    const v3, 0x105001a

    #@16
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@19
    move-result v3

    #@1a
    .line 2328
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    #@1c
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    #@1e
    aput v3, v4, v5

    #@20
    .line 2327
    aput v3, v1, v2

    #@22
    .line 2330
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    #@24
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    #@26
    .line 2332
    const v3, 0x105001b

    #@29
    .line 2331
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@2c
    move-result v3

    #@2d
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    #@2f
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    #@31
    aput v3, v4, v5

    #@33
    .line 2330
    aput v3, v1, v2

    #@35
    .line 2335
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    #@37
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    #@39
    .line 2339
    const v3, 0x105001c

    #@3c
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@3f
    move-result v3

    #@40
    .line 2338
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    #@42
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    #@44
    aput v3, v4, v5

    #@46
    .line 2337
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    #@48
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    #@4a
    aput v3, v4, v5

    #@4c
    .line 2336
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    #@4e
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    #@50
    aput v3, v4, v5

    #@52
    .line 2335
    aput v3, v1, v2

    #@54
    .line 2320
    return-void
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .locals 9
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "effectId"    # I
    .param p3, "always"    # Z

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 7374
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    #@4
    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 7375
    return v5

    #@b
    .line 7377
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@d
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@10
    move-result-object v1

    #@11
    .line 7378
    const-string/jumbo v6, "haptic_feedback_enabled"

    #@14
    const/4 v8, -0x2

    #@15
    .line 7377
    invoke-static {v1, v6, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@18
    move-result v1

    #@19
    if-nez v1, :cond_2

    #@1b
    move v0, v7

    #@1c
    .line 7379
    .local v0, "hapticsDisabled":Z
    :goto_0
    if-eqz v0, :cond_1

    #@1e
    if-eqz p3, :cond_3

    #@20
    .line 7382
    :cond_1
    const/4 v4, 0x0

    #@21
    .line 7383
    .local v4, "pattern":[J
    sparse-switch p2, :sswitch_data_0

    #@24
    .line 7409
    return v5

    #@25
    .end local v0    # "hapticsDisabled":Z
    .end local v4    # "pattern":[J
    :cond_2
    move v0, v5

    #@26
    .line 7377
    goto :goto_0

    #@27
    .line 7380
    .restart local v0    # "hapticsDisabled":Z
    :cond_3
    return v5

    #@28
    .line 7385
    .restart local v4    # "pattern":[J
    :sswitch_0
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressVibePattern:[J

    #@2a
    .line 7413
    .local v4, "pattern":[J
    :goto_1
    if-eqz p1, :cond_4

    #@2c
    .line 7414
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningUid()I

    #@2f
    move-result v2

    #@30
    .line 7415
    .local v2, "owningUid":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    .line 7420
    .local v3, "owningPackage":Ljava/lang/String;
    :goto_2
    array-length v1, v4

    #@35
    if-ne v1, v7, :cond_5

    #@37
    .line 7422
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    #@39
    aget-wide v4, v4, v5

    #@3b
    .end local v4    # "pattern":[J
    sget-object v6, Lcom/android/server/policy/PhoneWindowManager;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    #@3d
    invoke-virtual/range {v1 .. v6}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;JLandroid/media/AudioAttributes;)V

    #@40
    .line 7427
    :goto_3
    return v7

    #@41
    .line 7388
    .end local v2    # "owningUid":I
    .end local v3    # "owningPackage":Ljava/lang/String;
    .local v4, "pattern":[J
    :sswitch_1
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mVirtualKeyVibePattern:[J

    #@43
    .local v4, "pattern":[J
    goto :goto_1

    #@44
    .line 7391
    .local v4, "pattern":[J
    :sswitch_2
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyboardTapVibePattern:[J

    #@46
    .local v4, "pattern":[J
    goto :goto_1

    #@47
    .line 7394
    .local v4, "pattern":[J
    :sswitch_3
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mClockTickVibePattern:[J

    #@49
    .local v4, "pattern":[J
    goto :goto_1

    #@4a
    .line 7397
    .local v4, "pattern":[J
    :sswitch_4
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mCalendarDateVibePattern:[J

    #@4c
    .local v4, "pattern":[J
    goto :goto_1

    #@4d
    .line 7400
    .local v4, "pattern":[J
    :sswitch_5
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    #@4f
    .local v4, "pattern":[J
    goto :goto_1

    #@50
    .line 7403
    .local v4, "pattern":[J
    :sswitch_6
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    #@52
    .local v4, "pattern":[J
    goto :goto_1

    #@53
    .line 7406
    .local v4, "pattern":[J
    :sswitch_7
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContextClickVibePattern:[J

    #@55
    .local v4, "pattern":[J
    goto :goto_1

    #@56
    .line 7417
    :cond_4
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@59
    move-result v2

    #@5a
    .line 7418
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
    .line 7425
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
    .line 7383
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
    .line 2744
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    #@3
    sparse-switch v0, :sswitch_data_0

    #@6
    .line 2785
    :goto_0
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 2746
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@a
    .line 2747
    const-string/jumbo v1, "android.permission.STATUS_BAR_SERVICE"

    #@d
    .line 2748
    const-string/jumbo v2, "PhoneWindowManager"

    #@10
    .line 2746
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@13
    .line 2749
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 2750
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@19
    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_0

    #@1f
    .line 2751
    return v3

    #@20
    .line 2754
    :cond_0
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@22
    .line 2755
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@24
    invoke-virtual {v0, p1}, Lcom/android/server/policy/StatusBarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    #@27
    goto :goto_0

    #@28
    .line 2758
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@2a
    .line 2759
    const-string/jumbo v1, "android.permission.STATUS_BAR_SERVICE"

    #@2d
    .line 2760
    const-string/jumbo v2, "PhoneWindowManager"

    #@30
    .line 2758
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@33
    .line 2761
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@35
    if-eqz v0, :cond_1

    #@37
    .line 2762
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@39
    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    #@3c
    move-result v0

    #@3d
    if-eqz v0, :cond_1

    #@3f
    .line 2763
    return v3

    #@40
    .line 2766
    :cond_1
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@42
    .line 2767
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@44
    invoke-virtual {v0, p1}, Lcom/android/server/policy/BarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    #@47
    goto :goto_0

    #@48
    .line 2774
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@4a
    .line 2775
    const-string/jumbo v1, "android.permission.STATUS_BAR_SERVICE"

    #@4d
    .line 2776
    const-string/jumbo v2, "PhoneWindowManager"

    #@50
    .line 2774
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@53
    goto :goto_0

    #@54
    .line 2779
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    #@56
    if-eqz v0, :cond_2

    #@58
    .line 2780
    return v3

    #@59
    .line 2782
    :cond_2
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    #@5b
    goto :goto_0

    #@5c
    .line 2744
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
    .line 2276
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@2
    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getLidState()I

    #@5
    move-result v0

    #@6
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    #@8
    .line 2275
    return-void
.end method

.method public registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    .locals 5
    .param p1, "shortcutCode"    # J
    .param p3, "shortcutService"    # Lcom/android/internal/policy/IShortcutService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3581
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 3582
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    #@5
    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/internal/policy/IShortcutService;

    #@b
    .line 3583
    .local v0, "service":Lcom/android/internal/policy/IShortcutService;
    if-eqz v0, :cond_0

    #@d
    invoke-interface {v0}, Lcom/android/internal/policy/IShortcutService;->asBinder()Landroid/os/IBinder;

    #@10
    move-result-object v1

    #@11
    invoke-interface {v1}, Landroid/os/IBinder;->pingBinder()Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 3584
    new-instance v1, Landroid/os/RemoteException;

    #@19
    const-string/jumbo v3, "Key already exists."

    #@1c
    invoke-direct {v1, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 3581
    .end local v0    # "service":Lcom/android/internal/policy/IShortcutService;
    :catchall_0
    move-exception v1

    #@21
    monitor-exit v2

    #@22
    throw v1

    #@23
    .line 3587
    .restart local v0    # "service":Lcom/android/internal/policy/IShortcutService;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    #@25
    invoke-virtual {v1, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    monitor-exit v2

    #@29
    .line 3580
    return-void
.end method

.method public removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    .locals 3
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "window"    # Landroid/view/View;

    #@0
    .prologue
    .line 2721
    if-eqz p2, :cond_0

    #@2
    .line 2722
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
    .line 2723
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0, p2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    #@10
    .line 2717
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
    .line 2791
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@3
    if-ne v0, p1, :cond_2

    #@5
    .line 2792
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@7
    .line 2793
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    #@9
    invoke-virtual {v0, v2}, Lcom/android/server/policy/StatusBarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    #@c
    .line 2794
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@e
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->showScrim()V

    #@11
    .line 2798
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@13
    if-ne v0, p1, :cond_1

    #@15
    .line 2799
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@17
    .line 2800
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    #@19
    invoke-virtual {v0, v2}, Lcom/android/server/policy/BarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    #@1c
    .line 2790
    :cond_1
    return-void

    #@1d
    .line 2795
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    #@1f
    if-ne v0, p1, :cond_0

    #@21
    .line 2796
    const-string/jumbo v0, "WindowManager"

    #@24
    const-string/jumbo v1, "Removing keyguard scrim"

    #@27
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 2797
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
    .line 6672
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceDefaultOrientation:Z

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 6673
    return v4

    #@b
    .line 6676
    :cond_0
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@d
    monitor-enter v5

    #@e
    .line 6677
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    #@10
    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->getProposedRotation()I

    #@13
    move-result v1

    #@14
    .line 6678
    .local v1, "sensorRotation":I
    if-gez v1, :cond_1

    #@16
    .line 6679
    move v1, p2

    #@17
    .line 6683
    :cond_1
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    #@19
    if-ne v2, v3, :cond_2

    #@1b
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidOpenRotation:I

    #@1d
    if-ltz v2, :cond_2

    #@1f
    .line 6685
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidOpenRotation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 6764
    .local v0, "preferredRotation":I
    :goto_0
    packed-switch p1, :pswitch_data_0

    #@24
    .line 6818
    :pswitch_0
    if-ltz v0, :cond_20

    #@26
    monitor-exit v5

    #@27
    .line 6819
    return v0

    #@28
    .line 6686
    .end local v0    # "preferredRotation":I
    :cond_2
    :try_start_1
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    #@2a
    if-ne v2, v7, :cond_5

    #@2c
    .line 6687
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    #@2e
    if-nez v2, :cond_3

    #@30
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockRotation:I

    #@32
    if-ltz v2, :cond_5

    #@34
    .line 6691
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    #@36
    if-eqz v2, :cond_4

    #@38
    .line 6692
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
    .line 6693
    .end local v0    # "preferredRotation":I
    :cond_5
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    #@3f
    if-eq v2, v3, :cond_6

    #@41
    .line 6694
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    #@43
    const/4 v6, 0x3

    #@44
    if-ne v2, v6, :cond_8

    #@46
    .line 6696
    :cond_6
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    #@48
    if-nez v2, :cond_7

    #@4a
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockRotation:I

    #@4c
    if-ltz v2, :cond_9

    #@4e
    .line 6700
    :cond_7
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    #@50
    if-eqz v2, :cond_a

    #@52
    .line 6701
    move v0, v1

    #@53
    .restart local v0    # "preferredRotation":I
    goto :goto_0

    #@54
    .line 6695
    .end local v0    # "preferredRotation":I
    :cond_8
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    #@56
    if-eq v2, v8, :cond_6

    #@58
    .line 6702
    :cond_9
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    #@5a
    if-eqz v2, :cond_b

    #@5c
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    #@5e
    if-eqz v2, :cond_b

    #@60
    .line 6705
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotation:I

    #@62
    .restart local v0    # "preferredRotation":I
    goto :goto_0

    #@63
    .line 6701
    .end local v0    # "preferredRotation":I
    :cond_a
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockRotation:I

    #@65
    .restart local v0    # "preferredRotation":I
    goto :goto_0

    #@66
    .line 6706
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
    .line 6707
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUndockedHdmiRotation:I

    #@70
    if-ltz v2, :cond_c

    #@72
    .line 6712
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUndockedHdmiRotation:I

    #@74
    .restart local v0    # "preferredRotation":I
    goto :goto_0

    #@75
    .line 6713
    .end local v0    # "preferredRotation":I
    :cond_c
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotationLock:Z

    #@77
    if-eqz v2, :cond_d

    #@79
    .line 6716
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotation:I

    #@7b
    .restart local v0    # "preferredRotation":I
    goto :goto_0

    #@7c
    .line 6717
    .end local v0    # "preferredRotation":I
    :cond_d
    const/16 v2, 0xe

    #@7e
    if-ne p1, v2, :cond_e

    #@80
    .line 6719
    move v0, p2

    #@81
    .restart local v0    # "preferredRotation":I
    goto :goto_0

    #@82
    .line 6720
    .end local v0    # "preferredRotation":I
    :cond_e
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    #@84
    if-nez v2, :cond_f

    #@86
    .line 6723
    const/4 v0, -0x1

    #@87
    .restart local v0    # "preferredRotation":I
    goto :goto_0

    #@88
    .line 6724
    .end local v0    # "preferredRotation":I
    :cond_f
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    #@8a
    if-nez v2, :cond_14

    #@8c
    .line 6725
    if-eq p1, v7, :cond_10

    #@8e
    .line 6726
    const/4 v2, -0x1

    #@8f
    if-ne p1, v2, :cond_13

    #@91
    .line 6736
    :cond_10
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    #@93
    if-gez v2, :cond_11

    #@95
    .line 6740
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@97
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@9a
    move-result-object v2

    #@9b
    .line 6741
    const v6, 0x1120035

    #@9e
    .line 6740
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
    .line 6743
    :cond_11
    if-ne v1, v7, :cond_12

    #@a9
    .line 6744
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    #@ab
    if-ne v2, v3, :cond_16

    #@ad
    .line 6747
    :cond_12
    move v0, v1

    #@ae
    .line 6746
    .restart local v0    # "preferredRotation":I
    goto/16 :goto_0

    #@b0
    .line 6727
    .end local v0    # "preferredRotation":I
    :cond_13
    const/16 v2, 0xb

    #@b2
    if-eq p1, v2, :cond_10

    #@b4
    .line 6728
    const/16 v2, 0xc

    #@b6
    if-eq p1, v2, :cond_10

    #@b8
    .line 6729
    const/16 v2, 0xd

    #@ba
    if-eq p1, v2, :cond_10

    #@bc
    .line 6730
    :cond_14
    if-eq p1, v8, :cond_10

    #@be
    .line 6731
    if-eq p1, v9, :cond_10

    #@c0
    .line 6732
    const/4 v2, 0x6

    #@c1
    if-eq p1, v2, :cond_10

    #@c3
    .line 6733
    const/4 v2, 0x7

    #@c4
    if-eq p1, v2, :cond_10

    #@c6
    .line 6751
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    #@c8
    if-ne v2, v3, :cond_17

    #@ca
    .line 6752
    const/4 v2, 0x5

    #@cb
    if-eq p1, v2, :cond_17

    #@cd
    .line 6757
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    #@cf
    .restart local v0    # "preferredRotation":I
    goto/16 :goto_0

    #@d1
    .end local v0    # "preferredRotation":I
    :cond_15
    move v2, v4

    #@d2
    .line 6741
    goto :goto_1

    #@d3
    .line 6745
    :cond_16
    if-eq p1, v9, :cond_12

    #@d5
    .line 6746
    const/16 v2, 0xd

    #@d7
    if-eq p1, v2, :cond_12

    #@d9
    .line 6749
    move v0, p2

    #@da
    .restart local v0    # "preferredRotation":I
    goto/16 :goto_0

    #@dc
    .line 6761
    .end local v0    # "preferredRotation":I
    :cond_17
    const/4 v0, -0x1

    #@dd
    .restart local v0    # "preferredRotation":I
    goto/16 :goto_0

    #@df
    .line 6767
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
    .line 6768
    return v0

    #@e7
    .line 6770
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
    .line 6774
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
    .line 6775
    return v0

    #@f3
    .line 6777
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
    .line 6781
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
    .line 6782
    return v0

    #@ff
    .line 6784
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
    .line 6788
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
    .line 6789
    return v0

    #@10b
    .line 6791
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
    .line 6796
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
    .line 6797
    return v0

    #@117
    .line 6799
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
    .line 6800
    return p2

    #@11f
    .line 6802
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
    .line 6807
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
    .line 6808
    return v0

    #@12b
    .line 6810
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
    .line 6811
    return p2

    #@133
    .line 6813
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
    .line 6821
    return v4

    #@139
    .line 6676
    .end local v0    # "preferredRotation":I
    .end local v1    # "sensorRotation":I
    :catchall_0
    move-exception v2

    #@13a
    monitor-exit v5

    #@13b
    throw v2

    #@13c
    .line 6764
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
    .line 6828
    packed-switch p1, :pswitch_data_0

    #@3
    .line 6840
    :pswitch_0
    const/4 v0, 0x1

    #@4
    return v0

    #@5
    .line 6832
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z

    #@8
    move-result v0

    #@9
    return v0

    #@a
    .line 6837
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 6828
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
    .line 6385
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateScreenOffSleepToken(Z)V

    #@4
    .line 6386
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 6387
    const/4 v0, 0x0

    #@8
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    #@a
    .line 6388
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    #@d
    .line 6389
    const/4 v0, 0x0

    #@e
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    #@10
    .line 6390
    const/4 v0, 0x0

    #@11
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    #@13
    .line 6391
    const/4 v0, 0x0

    #@14
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    #@16
    .line 6392
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    #@19
    .line 6394
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@1b
    if-eqz v0, :cond_0

    #@1d
    .line 6395
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@1f
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurnedOff()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    :cond_0
    monitor-exit v1

    #@23
    .line 6382
    return-void

    #@24
    .line 6386
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
    .line 6428
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 6429
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 6430
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@9
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurnedOn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v1

    #@d
    .line 6427
    return-void

    #@e
    .line 6428
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
    .line 6405
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateScreenOffSleepToken(Z)V

    #@4
    .line 6406
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 6407
    const/4 v0, 0x1

    #@8
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    #@a
    .line 6408
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    #@d
    .line 6409
    const/4 v0, 0x0

    #@e
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    #@10
    .line 6410
    const/4 v0, 0x0

    #@11
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    #@13
    .line 6411
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    #@15
    .line 6413
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@17
    if-eqz v0, :cond_0

    #@19
    .line 6414
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@1b
    const/4 v2, 0x6

    #@1c
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    #@1f
    .line 6415
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@21
    const-wide/16 v2, 0x3e8

    #@23
    const/4 v4, 0x6

    #@24
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    #@27
    .line 6416
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
    .line 6402
    return-void

    #@30
    .line 6420
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishKeyguardDrawn()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    goto :goto_0

    #@34
    .line 6406
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
    const/4 v6, 0x4

    #@1
    const/4 v5, 0x3

    #@2
    const/4 v2, 0x2

    #@3
    const/4 v4, 0x0

    #@4
    const/4 v3, 0x1

    #@5
    .line 2811
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@7
    if-ne p1, v1, :cond_6

    #@9
    .line 2812
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@c
    move-result-object v1

    #@d
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@f
    and-int/lit16 v1, v1, 0x400

    #@11
    if-eqz v1, :cond_1

    #@13
    const/4 v0, 0x1

    #@14
    .line 2813
    .local v0, "isKeyguard":Z
    :goto_0
    if-eq p2, v2, :cond_0

    #@16
    .line 2814
    if-ne p2, v6, :cond_3

    #@18
    .line 2815
    :cond_0
    if-eqz v0, :cond_2

    #@1a
    const/4 v1, -0x1

    #@1b
    :goto_1
    return v1

    #@1c
    .line 2812
    .end local v0    # "isKeyguard":Z
    :cond_1
    const/4 v0, 0x0

    #@1d
    .restart local v0    # "isKeyguard":Z
    goto :goto_0

    #@1e
    .line 2815
    :cond_2
    const v1, 0x10a002b

    #@21
    goto :goto_1

    #@22
    .line 2816
    :cond_3
    if-eq p2, v3, :cond_4

    #@24
    .line 2817
    if-ne p2, v5, :cond_15

    #@26
    .line 2818
    :cond_4
    if-eqz v0, :cond_5

    #@28
    const/4 v1, -0x1

    #@29
    :goto_2
    return v1

    #@2a
    :cond_5
    const v1, 0x10a002a

    #@2d
    goto :goto_2

    #@2e
    .line 2820
    .end local v0    # "isKeyguard":Z
    :cond_6
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@30
    if-ne p1, v1, :cond_14

    #@32
    .line 2821
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@35
    move-result-object v1

    #@36
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@38
    if-eqz v1, :cond_7

    #@3a
    .line 2822
    return v4

    #@3b
    .line 2825
    :cond_7
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    #@3d
    if-nez v1, :cond_c

    #@3f
    .line 2826
    if-eq p2, v2, :cond_8

    #@41
    .line 2827
    if-ne p2, v6, :cond_a

    #@43
    .line 2828
    :cond_8
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    #@46
    move-result v1

    #@47
    if-eqz v1, :cond_9

    #@49
    .line 2829
    const v1, 0x10a0025

    #@4c
    return v1

    #@4d
    .line 2831
    :cond_9
    const v1, 0x10a0024

    #@50
    return v1

    #@51
    .line 2833
    :cond_a
    if-eq p2, v3, :cond_b

    #@53
    .line 2834
    if-ne p2, v5, :cond_15

    #@55
    .line 2835
    :cond_b
    const v1, 0x10a0023

    #@58
    return v1

    #@59
    .line 2837
    :cond_c
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    #@5b
    if-ne v1, v3, :cond_10

    #@5d
    .line 2838
    if-eq p2, v2, :cond_d

    #@5f
    .line 2839
    if-ne p2, v6, :cond_e

    #@61
    .line 2840
    :cond_d
    const v1, 0x10a0029

    #@64
    return v1

    #@65
    .line 2841
    :cond_e
    if-eq p2, v3, :cond_f

    #@67
    .line 2842
    if-ne p2, v5, :cond_15

    #@69
    .line 2843
    :cond_f
    const v1, 0x10a0028

    #@6c
    return v1

    #@6d
    .line 2845
    :cond_10
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    #@6f
    if-ne v1, v2, :cond_15

    #@71
    .line 2846
    if-eq p2, v2, :cond_11

    #@73
    .line 2847
    if-ne p2, v6, :cond_12

    #@75
    .line 2848
    :cond_11
    const v1, 0x10a0027

    #@78
    return v1

    #@79
    .line 2849
    :cond_12
    if-eq p2, v3, :cond_13

    #@7b
    .line 2850
    if-ne p2, v5, :cond_15

    #@7d
    .line 2851
    :cond_13
    const v1, 0x10a0026

    #@80
    return v1

    #@81
    .line 2854
    :cond_14
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@84
    move-result-object v1

    #@85
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@87
    const/16 v2, 0x7f2

    #@89
    if-ne v1, v2, :cond_15

    #@8b
    .line 2855
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->selectDockedDividerAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I

    #@8e
    move-result v1

    #@8f
    return v1

    #@90
    .line 2858
    :cond_15
    const/4 v1, 0x5

    #@91
    if-ne p2, v1, :cond_16

    #@93
    .line 2859
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasAppShownWindows()Z

    #@96
    move-result v1

    #@97
    if-eqz v1, :cond_17

    #@99
    .line 2861
    const v1, 0x10a0011

    #@9c
    return v1

    #@9d
    .line 2863
    :cond_16
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@a0
    move-result-object v1

    #@a1
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@a3
    const/16 v2, 0x7e7

    #@a5
    if-ne v1, v2, :cond_17

    #@a7
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingLockscreen:Z

    #@a9
    if-eqz v1, :cond_17

    #@ab
    .line 2864
    if-ne p2, v3, :cond_17

    #@ad
    .line 2869
    const/4 v1, -0x1

    #@ae
    return v1

    #@af
    .line 2872
    :cond_17
    return v4
.end method

.method public selectRotationAnimationLw([I)V
    .locals 5
    .param p1, "anim"    # [I

    #@0
    .prologue
    const v4, 0x10a006c

    #@3
    const/4 v3, 0x1

    #@4
    const/4 v2, 0x0

    #@5
    .line 2911
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 2912
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@b
    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getRotationAnimationHint()I

    #@e
    move-result v0

    #@f
    .line 2913
    .local v0, "animationHint":I
    if-gez v0, :cond_0

    #@11
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 2914
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@17
    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@1a
    move-result-object v1

    #@1b
    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    #@1d
    .line 2916
    :cond_0
    packed-switch v0, :pswitch_data_0

    #@20
    .line 2928
    aput v2, p1, v3

    #@22
    aput v2, p1, v2

    #@24
    .line 2906
    .end local v0    # "animationHint":I
    :goto_0
    return-void

    #@25
    .line 2919
    .restart local v0    # "animationHint":I
    :pswitch_0
    const v1, 0x10a006e

    #@28
    aput v1, p1, v2

    #@2a
    .line 2920
    aput v4, p1, v3

    #@2c
    goto :goto_0

    #@2d
    .line 2923
    :pswitch_1
    const v1, 0x10a006d

    #@30
    aput v1, p1, v2

    #@32
    .line 2924
    aput v4, p1, v3

    #@34
    goto :goto_0

    #@35
    .line 2932
    .end local v0    # "animationHint":I
    :cond_1
    aput v2, p1, v3

    #@37
    aput v2, p1, v2

    #@39
    goto :goto_0

    #@3a
    .line 2916
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method sendCloseSystemWindows()V
    .locals 2

    #@0
    .prologue
    .line 6654
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    #@6
    .line 6653
    return-void
.end method

.method sendCloseSystemWindows(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 6658
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    #@5
    .line 6657
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
    .line 4312
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
    .line 4320
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
    .line 4321
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
    .line 4322
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
    .line 4323
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
    .line 4365
    .end local p9    # "cf":Landroid/graphics/Rect;
    :goto_0
    and-int/lit16 v0, p2, 0x100

    #@3a
    if-nez v0, :cond_0

    #@3c
    .line 4366
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    #@3f
    move-result-object p7

    #@40
    .line 4365
    .end local p7    # "df":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p6, p7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@43
    .line 4311
    return-void

    #@44
    .line 4331
    .restart local p7    # "df":Landroid/graphics/Rect;
    .restart local p9    # "cf":Landroid/graphics/Rect;
    :cond_1
    const/16 v0, 0x10

    #@46
    if-eq p3, v0, :cond_5

    #@48
    .line 4336
    const/high16 v0, 0x40000000    # 2.0f

    #@4a
    and-int/2addr v0, p2

    #@4b
    if-eqz v0, :cond_4

    #@4d
    .line 4337
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    #@50
    move-result-object v0

    #@51
    .line 4336
    :goto_1
    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@54
    .line 4358
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
    .line 4359
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
    .line 4360
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    #@69
    move-result-object v0

    #@6a
    invoke-virtual {p10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@6d
    goto :goto_0

    #@6e
    .line 4337
    .restart local p9    # "cf":Landroid/graphics/Rect;
    :cond_4
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getOverscanFrameLw()Landroid/graphics/Rect;

    #@71
    move-result-object v0

    #@72
    goto :goto_1

    #@73
    .line 4345
    :cond_5
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    #@76
    move-result-object v0

    #@77
    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@7a
    .line 4346
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->isVoiceInteraction()Z

    #@7d
    move-result v0

    #@7e
    if-eqz v0, :cond_9

    #@80
    .line 4347
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
    .line 4348
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
    .line 4349
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
    .line 4350
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
    .line 4351
    :cond_9
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    #@ac
    move-result v0

    #@ad
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLayer:I

    #@af
    if-ge v0, v1, :cond_2

    #@b1
    .line 4352
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
    .line 4353
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
    .line 4354
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
    .line 4355
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
    .line 4358
    goto/16 :goto_3
.end method

.method public setCurrentOrientationLw(I)V
    .locals 2
    .param p1, "newOrientation"    # I

    #@0
    .prologue
    .line 7334
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 7335
    :try_start_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    #@5
    if-eq p1, v0, :cond_0

    #@7
    .line 7336
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    #@9
    .line 7337
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v1

    #@d
    .line 7333
    return-void

    #@e
    .line 7334
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
    .line 7756
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    #@3
    .line 7757
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 7758
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@9
    invoke-virtual {v1, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setCurrentUser(I)V

    #@c
    .line 7760
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@f
    move-result-object v0

    #@10
    .line 7761
    .local v0, "statusBar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_1

    #@12
    .line 7762
    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setCurrentUser(I)V

    #@15
    .line 7764
    :cond_1
    invoke-virtual {p0, v2, v2}, Lcom/android/server/policy/PhoneWindowManager;->setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    #@18
    .line 7755
    return-void
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
    .line 1924
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1925
    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    #@8
    .line 1926
    iput p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    #@a
    .line 1927
    iput p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    #@c
    .line 1928
    iput p5, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    #@e
    .line 1923
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
    .line 5443
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    #@3
    if-eq v1, p1, :cond_0

    #@5
    .line 5444
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    #@7
    .line 5445
    invoke-virtual {p0, v2, v2}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(ZZ)V

    #@a
    .line 5446
    new-instance v0, Landroid/content/Intent;

    #@c
    const-string/jumbo v1, "android.intent.action.HDMI_PLUGGED"

    #@f
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@12
    .line 5447
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    #@14
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@17
    .line 5448
    const-string/jumbo v1, "state"

    #@1a
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@1d
    .line 5449
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@1f
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@21
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@24
    .line 5442
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public setInitialDisplaySize(Landroid/view/Display;III)V
    .locals 8
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "density"    # I

    #@0
    .prologue
    .line 1829
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
    .line 1830
    :cond_0
    return-void

    #@b
    .line 1832
    :cond_1
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    #@d
    .line 1834
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@f
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@12
    move-result-object v3

    #@13
    .line 1836
    .local v3, "res":Landroid/content/res/Resources;
    if-le p2, p3, :cond_4

    #@15
    .line 1837
    move v4, p3

    #@16
    .line 1838
    .local v4, "shortSize":I
    move v0, p2

    #@17
    .line 1839
    .local v0, "longSize":I
    const/4 v6, 0x0

    #@18
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    #@1a
    .line 1840
    const/4 v6, 0x2

    #@1b
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    #@1d
    .line 1841
    const v6, 0x1120036

    #@20
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@23
    move-result v6

    #@24
    if-eqz v6, :cond_3

    #@26
    .line 1842
    const/4 v6, 0x1

    #@27
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    #@29
    .line 1843
    const/4 v6, 0x3

    #@2a
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    #@2c
    .line 1863
    :goto_0
    mul-int/lit16 v6, v4, 0xa0

    #@2e
    div-int v5, v6, p4

    #@30
    .line 1864
    .local v5, "shortSizeDp":I
    mul-int/lit16 v6, v0, 0xa0

    #@32
    div-int v1, v6, p4

    #@34
    .line 1867
    .local v1, "longSizeDp":I
    if-eq p2, p3, :cond_6

    #@36
    const/16 v6, 0x258

    #@38
    if-ge v5, v6, :cond_6

    #@3a
    const/4 v6, 0x1

    #@3b
    :goto_1
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    #@3d
    .line 1869
    const v6, 0x1120068

    #@40
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@43
    move-result v6

    #@44
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    #@46
    .line 1873
    const-string/jumbo v6, "qemu.hw.mainkeys"

    #@49
    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@4c
    move-result-object v2

    #@4d
    .line 1874
    .local v2, "navBarOverride":Ljava/lang/String;
    const-string/jumbo v6, "1"

    #@50
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@53
    move-result v6

    #@54
    if-eqz v6, :cond_7

    #@56
    .line 1875
    const/4 v6, 0x0

    #@57
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    #@59
    .line 1882
    :cond_2
    :goto_2
    const-string/jumbo v6, "portrait"

    #@5c
    const-string/jumbo v7, "persist.demo.hdmirotation"

    #@5f
    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@62
    move-result-object v7

    #@63
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@66
    move-result v6

    #@67
    if-eqz v6, :cond_8

    #@69
    .line 1883
    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    #@6b
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotation:I

    #@6d
    .line 1887
    :goto_3
    const-string/jumbo v6, "persist.demo.hdmirotationlock"

    #@70
    const/4 v7, 0x0

    #@71
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@74
    move-result v6

    #@75
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    #@77
    .line 1891
    const-string/jumbo v6, "portrait"

    #@7a
    const-string/jumbo v7, "persist.demo.remoterotation"

    #@7d
    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@80
    move-result-object v7

    #@81
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@84
    move-result v6

    #@85
    if-eqz v6, :cond_9

    #@87
    .line 1892
    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    #@89
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotation:I

    #@8b
    .line 1897
    :goto_4
    const-string/jumbo v6, "persist.demo.rotationlock"

    #@8e
    const/4 v7, 0x0

    #@8f
    .line 1896
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@92
    move-result v6

    #@93
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotationLock:Z

    #@95
    .line 1901
    const/16 v6, 0x3c0

    #@97
    if-lt v1, v6, :cond_b

    #@99
    const/16 v6, 0x2d0

    #@9b
    if-lt v5, v6, :cond_b

    #@9d
    .line 1902
    const v6, 0x1120082

    #@a0
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@a3
    move-result v6

    #@a4
    .line 1901
    if-eqz v6, :cond_b

    #@a6
    .line 1906
    const-string/jumbo v6, "true"

    #@a9
    const-string/jumbo v7, "config.override_forced_orient"

    #@ac
    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@af
    move-result-object v7

    #@b0
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b3
    move-result v6

    #@b4
    if-eqz v6, :cond_a

    #@b6
    const/4 v6, 0x0

    #@b7
    .line 1901
    :goto_5
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceDefaultOrientation:Z

    #@b9
    .line 1826
    return-void

    #@ba
    .line 1845
    .end local v1    # "longSizeDp":I
    .end local v2    # "navBarOverride":Ljava/lang/String;
    .end local v5    # "shortSizeDp":I
    :cond_3
    const/4 v6, 0x3

    #@bb
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    #@bd
    .line 1846
    const/4 v6, 0x1

    #@be
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    #@c0
    goto/16 :goto_0

    #@c2
    .line 1849
    .end local v0    # "longSize":I
    .end local v4    # "shortSize":I
    :cond_4
    move v4, p2

    #@c3
    .line 1850
    .restart local v4    # "shortSize":I
    move v0, p3

    #@c4
    .line 1851
    .restart local v0    # "longSize":I
    const/4 v6, 0x0

    #@c5
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    #@c7
    .line 1852
    const/4 v6, 0x2

    #@c8
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    #@ca
    .line 1853
    const v6, 0x1120036

    #@cd
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@d0
    move-result v6

    #@d1
    if-eqz v6, :cond_5

    #@d3
    .line 1854
    const/4 v6, 0x3

    #@d4
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    #@d6
    .line 1855
    const/4 v6, 0x1

    #@d7
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    #@d9
    goto/16 :goto_0

    #@db
    .line 1857
    :cond_5
    const/4 v6, 0x1

    #@dc
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    #@de
    .line 1858
    const/4 v6, 0x3

    #@df
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    #@e1
    goto/16 :goto_0

    #@e3
    .line 1867
    .restart local v1    # "longSizeDp":I
    .restart local v5    # "shortSizeDp":I
    :cond_6
    const/4 v6, 0x0

    #@e4
    goto/16 :goto_1

    #@e6
    .line 1876
    .restart local v2    # "navBarOverride":Ljava/lang/String;
    :cond_7
    const-string/jumbo v6, "0"

    #@e9
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ec
    move-result v6

    #@ed
    if-eqz v6, :cond_2

    #@ef
    .line 1877
    const/4 v6, 0x1

    #@f0
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    #@f2
    goto/16 :goto_2

    #@f4
    .line 1885
    :cond_8
    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    #@f6
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotation:I

    #@f8
    goto/16 :goto_3

    #@fa
    .line 1894
    :cond_9
    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    #@fc
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotation:I

    #@fe
    goto :goto_4

    #@ff
    .line 1906
    :cond_a
    const/4 v6, 0x1

    #@100
    goto :goto_5

    #@101
    .line 1901
    :cond_b
    const/4 v6, 0x0

    #@102
    goto :goto_5
.end method

.method public setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0
    .param p1, "ime"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "target"    # Landroid/view/WindowManagerPolicy$WindowState;

    #@0
    .prologue
    .line 7745
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    #@2
    .line 7746
    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    #@4
    .line 7744
    return-void
.end method

.method public setRecentsVisibilityLw(Z)V
    .locals 0
    .param p1, "visible"    # Z

    #@0
    .prologue
    .line 3860
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mRecentsVisible:Z

    #@2
    .line 3859
    return-void
.end method

.method public setRotationLw(I)V
    .locals 1
    .param p1, "rotation"    # I

    #@0
    .prologue
    .line 6846
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->setCurrentRotation(I)V

    #@5
    .line 6845
    return-void
.end method

.method public setSafeMode(Z)V
    .locals 3
    .param p1, "safeMode"    # Z

    #@0
    .prologue
    .line 6890
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeMode:Z

    #@2
    .line 6891
    if-eqz p1, :cond_0

    #@4
    .line 6892
    const/16 v0, 0x2711

    #@6
    .line 6891
    :goto_0
    const/4 v1, 0x0

    #@7
    .line 6893
    const/4 v2, 0x1

    #@8
    .line 6891
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    #@b
    .line 6889
    return-void

    #@c
    .line 6893
    :cond_0
    const/16 v0, 0x2710

    #@e
    goto :goto_0
.end method

.method public setTvPipVisibilityLw(Z)V
    .locals 0
    .param p1, "visible"    # Z

    #@0
    .prologue
    .line 3865
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTvPictureInPictureVisible:Z

    #@2
    .line 3864
    return-void
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
    .line 6868
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v0

    #@8
    .line 6871
    .local v0, "res":Landroid/content/ContentResolver;
    if-ne p1, v2, :cond_0

    #@a
    .line 6873
    const-string/jumbo v1, "user_rotation"

    #@d
    .line 6872
    invoke-static {v0, v1, p2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@10
    .line 6877
    const-string/jumbo v1, "accelerometer_rotation"

    #@13
    .line 6878
    const/4 v2, 0x0

    #@14
    .line 6876
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@17
    .line 6867
    :goto_0
    return-void

    #@18
    .line 6882
    :cond_0
    const-string/jumbo v1, "accelerometer_rotation"

    #@1b
    .line 6881
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@1e
    goto :goto_0
.end method

.method public shouldRotateSeamlessly(II)Z
    .locals 5
    .param p1, "oldRotation"    # I
    .param p2, "newRotation"    # I

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    const/4 v4, 0x0

    #@2
    .line 7796
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    #@4
    if-eq p1, v2, :cond_0

    #@6
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    #@8
    if-ne p2, v2, :cond_1

    #@a
    .line 7797
    :cond_0
    return v4

    #@b
    .line 7799
    :cond_1
    sub-int v0, p2, p1

    #@d
    .line 7800
    .local v0, "delta":I
    if-gez v0, :cond_2

    #@f
    add-int/lit8 v0, v0, 0x4

    #@11
    .line 7805
    :cond_2
    if-ne v0, v3, :cond_3

    #@13
    .line 7806
    return v4

    #@14
    .line 7809
    :cond_3
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    #@16
    .line 7810
    .local v1, "w":Landroid/view/WindowManagerPolicy$WindowState;
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    #@18
    if-eq v1, v2, :cond_4

    #@1a
    .line 7811
    return v4

    #@1b
    .line 7818
    :cond_4
    if-eqz v1, :cond_5

    #@1d
    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_6

    #@23
    .line 7823
    :cond_5
    return v4

    #@24
    .line 7819
    :cond_6
    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@27
    move-result-object v2

    #@28
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    #@2a
    if-eq v2, v3, :cond_7

    #@2c
    .line 7820
    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@2f
    move-result-object v2

    #@30
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    #@32
    const/4 v3, 0x3

    #@33
    if-ne v2, v3, :cond_5

    #@35
    .line 7821
    :cond_7
    const/4 v2, 0x1

    #@36
    return v2
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "always"    # Z

    #@0
    .prologue
    .line 6974
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@2
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$21;

    #@4
    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/PhoneWindowManager$21;-><init>(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/CharSequence;)V

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 6973
    return-void
.end method

.method public showGlobalActions()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0xa

    #@2
    .line 1377
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@7
    .line 1378
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@c
    .line 1376
    return-void
.end method

.method showGlobalActionsInternal()V
    .locals 5

    #@0
    .prologue
    .line 1382
    const-string/jumbo v1, "globalactions"

    #@3
    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    #@6
    .line 1383
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    #@8
    if-nez v1, :cond_0

    #@a
    .line 1384
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
    .line 1386
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    #@18
    move-result v0

    #@19
    .line 1387
    .local v0, "keyguardShowing":Z
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    #@1b
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isDeviceProvisioned()Z

    #@1e
    move-result v2

    #@1f
    invoke-virtual {v1, v0, v2}, Lcom/android/server/policy/GlobalActions;->showDialog(ZZ)V

    #@22
    .line 1388
    if-eqz v0, :cond_1

    #@24
    .line 1391
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
    .line 1381
    :cond_1
    return-void
.end method

.method public showRecentApps(Z)V
    .locals 4
    .param p1, "fromHome"    # Z

    #@0
    .prologue
    const/16 v3, 0x9

    #@2
    const/4 v1, 0x0

    #@3
    .line 3692
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@5
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    #@8
    .line 3693
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@a
    if-eqz p1, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@14
    .line 3691
    return-void

    #@15
    :cond_0
    move v0, v1

    #@16
    .line 3693
    goto :goto_0
.end method

.method startDockOrHome(ZZ)V
    .locals 4
    .param p1, "fromHomeKey"    # Z
    .param p2, "awakenFromDreams"    # Z

    #@0
    .prologue
    .line 7248
    if-eqz p2, :cond_0

    #@2
    .line 7249
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->awakenDreams()V

    #@5
    .line 7252
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    #@8
    move-result-object v0

    #@9
    .line 7253
    .local v0, "dock":Landroid/content/Intent;
    if-eqz v0, :cond_2

    #@b
    .line 7255
    if-eqz p1, :cond_1

    #@d
    .line 7256
    :try_start_0
    const-string/jumbo v3, "android.intent.extra.FROM_HOME_KEY"

    #@10
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@13
    .line 7258
    :cond_1
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@15
    invoke-direct {p0, v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 7259
    return-void

    #@19
    .line 7260
    :catch_0
    move-exception v1

    #@1a
    .line 7266
    :cond_2
    if-eqz p1, :cond_3

    #@1c
    .line 7267
    new-instance v2, Landroid/content/Intent;

    #@1e
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    #@20
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@23
    .line 7268
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.extra.FROM_HOME_KEY"

    #@26
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@29
    .line 7273
    :goto_0
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@2b
    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@2e
    .line 7247
    return-void

    #@2f
    .line 7270
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
    .line 6601
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 6603
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@6
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->startKeyguardExitAnimation(JJ)V

    #@9
    .line 6600
    :cond_0
    return-void
.end method

.method public startedGoingToSleep(I)V
    .locals 1
    .param p1, "why"    # I

    #@0
    .prologue
    .line 6282
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraGestureTriggeredDuringGoingToSleep:Z

    #@3
    .line 6283
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoingToSleep:Z

    #@6
    .line 6284
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 6285
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@c
    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onStartedGoingToSleep(I)V

    #@f
    .line 6280
    :cond_0
    return-void
.end method

.method public startedWakingUp()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 6316
    const v0, 0x11170

    #@4
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    #@7
    .line 6323
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@9
    monitor-enter v1

    #@a
    .line 6324
    const/4 v0, 0x1

    #@b
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    #@d
    .line 6326
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    #@10
    .line 6327
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    #@13
    .line 6328
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    monitor-exit v1

    #@17
    .line 6331
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@19
    if-eqz v0, :cond_0

    #@1b
    .line 6332
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@1d
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onStartedWakingUp()V

    #@20
    .line 6315
    :cond_0
    return-void

    #@21
    .line 6323
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
    .line 2467
    packed-switch p1, :pswitch_data_0

    #@3
    .line 2480
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
    .line 2481
    const/4 v0, 0x0

    #@1e
    return v0

    #@1f
    .line 2470
    :pswitch_0
    const/4 v0, 0x1

    #@20
    return v0

    #@21
    .line 2472
    :pswitch_1
    const/4 v0, -0x2

    #@22
    return v0

    #@23
    .line 2474
    :pswitch_2
    const/4 v0, -0x1

    #@24
    return v0

    #@25
    .line 2476
    :pswitch_3
    const/4 v0, 0x2

    #@26
    return v0

    #@27
    .line 2478
    :pswitch_4
    const/4 v0, 0x3

    #@28
    return v0

    #@29
    .line 2467
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
    .line 6945
    const/4 v0, 0x0

    #@2
    .line 6946
    .local v0, "bindKeyguardNow":Z
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v2

    #@5
    .line 6949
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 6950
    const/4 v0, 0x1

    #@a
    :goto_0
    monitor-exit v2

    #@b
    .line 6957
    if-eqz v0, :cond_0

    #@d
    .line 6958
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@f
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@11
    invoke-virtual {v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->bindService(Landroid/content/Context;)V

    #@14
    .line 6959
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@16
    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onBootCompleted()V

    #@19
    .line 6961
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@1b
    monitor-enter v1

    #@1c
    .line 6962
    const/4 v2, 0x1

    #@1d
    :try_start_1
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1f
    monitor-exit v1

    #@20
    .line 6964
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->startedWakingUp()V

    #@23
    .line 6965
    invoke-virtual {p0, v3}, Lcom/android/server/policy/PhoneWindowManager;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    #@26
    .line 6966
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurnedOn()V

    #@29
    .line 6944
    return-void

    #@2a
    .line 6954
    :cond_1
    const/4 v1, 0x1

    #@2b
    :try_start_2
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeferBindKeyguard:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2d
    goto :goto_0

    #@2e
    .line 6946
    :catchall_0
    move-exception v1

    #@2f
    monitor-exit v2

    #@30
    throw v1

    #@31
    .line 6961
    :catchall_1
    move-exception v2

    #@32
    monitor-exit v1

    #@33
    throw v2
.end method

.method public systemReady()V
    .locals 4

    #@0
    .prologue
    .line 6911
    new-instance v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@2
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@4
    invoke-direct {v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;-><init>(Landroid/content/Context;)V

    #@7
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@9
    .line 6912
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@b
    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onSystemReady()V

    #@e
    .line 6914
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->readCameraLensCoverState()V

    #@11
    .line 6915
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateUiMode()V

    #@14
    .line 6917
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@16
    monitor-enter v2

    #@17
    .line 6918
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    #@1a
    .line 6919
    const/4 v1, 0x1

    #@1b
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    #@1d
    .line 6920
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@1f
    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$20;

    #@21
    invoke-direct {v3, p0}, Lcom/android/server/policy/PhoneWindowManager$20;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    #@24
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@27
    .line 6927
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeferBindKeyguard:Z

    #@29
    .line 6928
    .local v0, "bindKeyguardNow":Z
    if-eqz v0, :cond_0

    #@2b
    .line 6930
    const/4 v1, 0x0

    #@2c
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeferBindKeyguard:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    :cond_0
    monitor-exit v2

    #@2f
    .line 6934
    if-eqz v0, :cond_1

    #@31
    .line 6935
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@33
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@35
    invoke-virtual {v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->bindService(Landroid/content/Context;)V

    #@38
    .line 6936
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@3a
    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onBootCompleted()V

    #@3d
    .line 6938
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    #@3f
    invoke-virtual {v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->systemReady()V

    #@42
    .line 6939
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    #@44
    invoke-virtual {v1}, Lcom/android/server/policy/ImmersiveModeConfirmation;->systemReady()V

    #@47
    .line 6910
    return-void

    #@48
    .line 6917
    .end local v0    # "bindKeyguardNow":Z
    :catchall_0
    move-exception v1

    #@49
    monitor-exit v2

    #@4a
    throw v1
.end method

.method updateOrientationListenerLp()V
    .locals 2

    #@0
    .prologue
    .line 984
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    #@2
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->canDetectOrientation()Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 986
    return-void

    #@9
    .line 995
    :cond_0
    const/4 v0, 0x1

    #@a
    .line 998
    .local v0, "disable":Z
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    #@c
    if-eqz v1, :cond_1

    #@e
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 999
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    #@14
    .line 998
    if-eqz v1, :cond_1

    #@16
    .line 999
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    #@18
    .line 998
    if-eqz v1, :cond_1

    #@1a
    .line 1000
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->needSensorRunningLp()Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_1

    #@20
    .line 1001
    const/4 v0, 0x0

    #@21
    .line 1003
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    #@23
    if-nez v1, :cond_1

    #@25
    .line 1004
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    #@27
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->enable()V

    #@2a
    .line 1006
    const/4 v1, 0x1

    #@2b
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    #@2d
    .line 1011
    :cond_1
    if-eqz v0, :cond_2

    #@2f
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    #@31
    if-eqz v1, :cond_2

    #@33
    .line 1012
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    #@35
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->disable()V

    #@38
    .line 1014
    const/4 v1, 0x0

    #@39
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    #@3b
    .line 983
    :cond_2
    return-void
.end method

.method updateRotation(Z)V
    .locals 3
    .param p1, "alwaysSendConfiguration"    # Z

    #@0
    .prologue
    .line 7174
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    #@2
    const/4 v2, 0x0

    #@3
    invoke-interface {v1, p1, v2}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 7171
    :goto_0
    return-void

    #@7
    .line 7175
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
    .line 7183
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 7180
    :goto_0
    return-void

    #@6
    .line 7184
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
    .line 1933
    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v3

    #@8
    .line 1934
    .local v3, "resolver":Landroid/content/ContentResolver;
    const/4 v4, 0x0

    #@9
    .line 1935
    .local v4, "updateRotation":Z
    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    #@b
    monitor-enter v10

    #@c
    .line 1937
    :try_start_0
    const-string/jumbo v11, "end_button_behavior"

    #@f
    .line 1938
    const/4 v12, 0x2

    #@10
    .line 1939
    const/4 v13, -0x2

    #@11
    .line 1936
    invoke-static {v3, v11, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@14
    move-result v11

    #@15
    iput v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    #@17
    .line 1941
    const-string/jumbo v11, "incall_power_button_behavior"

    #@1a
    .line 1942
    const/4 v12, 0x1

    #@1b
    .line 1943
    const/4 v13, -0x2

    #@1c
    .line 1940
    invoke-static {v3, v11, v12, v13}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@1f
    move-result v11

    #@20
    iput v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    #@22
    .line 1947
    const-string/jumbo v11, "wake_gesture_enabled"

    #@25
    const/4 v12, 0x0

    #@26
    .line 1948
    const/4 v13, -0x2

    #@27
    .line 1946
    invoke-static {v3, v11, v12, v13}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@2a
    move-result v11

    #@2b
    if-eqz v11, :cond_8

    #@2d
    const/4 v7, 0x1

    #@2e
    .line 1949
    .local v7, "wakeGestureEnabledSetting":Z
    :goto_0
    iget-boolean v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    #@30
    if-eq v11, v7, :cond_0

    #@32
    .line 1950
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    #@34
    .line 1951
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    #@37
    .line 1956
    :cond_0
    const-string/jumbo v11, "user_rotation"

    #@3a
    const/4 v12, 0x0

    #@3b
    .line 1957
    const/4 v13, -0x2

    #@3c
    .line 1955
    invoke-static {v3, v11, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@3f
    move-result v5

    #@40
    .line 1958
    .local v5, "userRotation":I
    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    #@42
    if-eq v11, v5, :cond_1

    #@44
    .line 1959
    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    #@46
    .line 1960
    const/4 v4, 0x1

    #@47
    .line 1963
    :cond_1
    const-string/jumbo v11, "accelerometer_rotation"

    #@4a
    const/4 v12, 0x0

    #@4b
    const/4 v13, -0x2

    #@4c
    .line 1962
    invoke-static {v3, v11, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@4f
    move-result v11

    #@50
    if-eqz v11, :cond_9

    #@52
    .line 1964
    const/4 v6, 0x0

    #@53
    .line 1966
    .local v6, "userRotationMode":I
    :goto_1
    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    #@55
    if-eq v11, v6, :cond_2

    #@57
    .line 1967
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    #@59
    .line 1968
    const/4 v4, 0x1

    #@5a
    .line 1969
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    #@5d
    .line 1972
    :cond_2
    iget-boolean v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    #@5f
    if-eqz v11, :cond_4

    #@61
    .line 1974
    const-string/jumbo v11, "pointer_location"

    #@64
    const/4 v12, 0x0

    #@65
    const/4 v13, -0x2

    #@66
    .line 1973
    invoke-static {v3, v11, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@69
    move-result v2

    #@6a
    .line 1975
    .local v2, "pointerLocation":I
    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationMode:I

    #@6c
    if-eq v11, v2, :cond_4

    #@6e
    .line 1976
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationMode:I

    #@70
    .line 1977
    iget-object v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@72
    if-eqz v2, :cond_3

    #@74
    move v8, v9

    #@75
    :cond_3
    invoke-virtual {v11, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@78
    .line 1983
    .end local v2    # "pointerLocation":I
    :cond_4
    const-string/jumbo v8, "screen_off_timeout"

    #@7b
    const/4 v11, 0x0

    #@7c
    const/4 v12, -0x2

    #@7d
    .line 1982
    invoke-static {v3, v8, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@80
    move-result v8

    #@81
    iput v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    #@83
    .line 1985
    const-string/jumbo v8, "default_input_method"

    #@86
    const/4 v11, -0x2

    #@87
    .line 1984
    invoke-static {v3, v8, v11}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@8a
    move-result-object v1

    #@8b
    .line 1986
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
    .line 1987
    .local v0, "hasSoftInput":Z
    :goto_2
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    #@96
    if-eq v8, v0, :cond_5

    #@98
    .line 1988
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    #@9a
    .line 1989
    const/4 v4, 0x1

    #@9b
    .line 1991
    :cond_5
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    #@9d
    if-eqz v8, :cond_6

    #@9f
    .line 1992
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
    .line 1995
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@a9
    invoke-interface {v8}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    #@ac
    move-result-object v10

    #@ad
    monitor-enter v10

    #@ae
    .line 1996
    :try_start_1
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@b0
    invoke-static {v8}, Lcom/android/server/policy/PolicyControl;->reloadFromSetting(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@b3
    monitor-exit v10

    #@b4
    .line 1998
    if-eqz v4, :cond_7

    #@b6
    .line 1999
    invoke-virtual {p0, v9}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    #@b9
    .line 1932
    :cond_7
    return-void

    #@ba
    .line 1946
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
    .line 1965
    .restart local v5    # "userRotation":I
    :cond_9
    const/4 v6, 0x1

    #@be
    .restart local v6    # "userRotationMode":I
    goto :goto_1

    #@bf
    .line 1986
    .restart local v1    # "imId":Ljava/lang/String;
    :cond_a
    const/4 v0, 0x0

    #@c0
    .restart local v0    # "hasSoftInput":Z
    goto :goto_2

    #@c1
    .line 1935
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
    .line 1995
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
    .line 7161
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 7163
    const-string/jumbo v1, "uimode"

    #@7
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@a
    move-result-object v1

    #@b
    .line 7162
    invoke-static {v1}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    #@e
    move-result-object v1

    #@f
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    #@11
    .line 7166
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
    .line 7160
    :goto_0
    return-void

    #@1a
    .line 7167
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
    .line 7051
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    #@2
    monitor-enter v1

    #@3
    .line 7052
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 7054
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@9
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@e
    .line 7055
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
    .line 7039
    return-void

    #@1a
    .line 7051
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
    .line 2939
    packed-switch p1, :pswitch_data_0

    #@5
    .line 2950
    return v1

    #@6
    .line 2943
    :pswitch_0
    if-eqz p3, :cond_0

    #@8
    .line 2944
    return v2

    #@9
    .line 2946
    :cond_0
    const/4 v3, 0x2

    #@a
    new-array v0, v3, [I

    #@c
    .line 2947
    .local v0, "anim":[I
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->selectRotationAnimationLw([I)V

    #@f
    .line 2948
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
    .line 2939
    :pswitch_data_0
    .packed-switch 0x10a006d
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
    .line 2364
    const/4 v0, 0x1

    #@2
    if-lt p1, v0, :cond_0

    #@4
    const/16 v0, 0x63

    #@6
    if-gt p1, v0, :cond_0

    #@8
    .line 2365
    return v3

    #@9
    .line 2367
    :cond_0
    packed-switch p1, :pswitch_data_0

    #@c
    .line 2460
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
    .line 2461
    return v3

    #@27
    .line 2369
    :pswitch_1
    return v3

    #@28
    .line 2372
    :pswitch_2
    return v3

    #@29
    .line 2374
    :pswitch_3
    return v3

    #@2a
    .line 2376
    :pswitch_4
    return v3

    #@2b
    .line 2378
    :pswitch_5
    const/4 v0, 0x3

    #@2c
    return v0

    #@2d
    .line 2381
    :pswitch_6
    const/4 v0, 0x4

    #@2e
    return v0

    #@2f
    .line 2384
    :pswitch_7
    const/4 v0, 0x5

    #@30
    return v0

    #@31
    .line 2386
    :pswitch_8
    const/4 v0, 0x6

    #@32
    return v0

    #@33
    .line 2388
    :pswitch_9
    const/4 v0, 0x7

    #@34
    return v0

    #@35
    .line 2391
    :pswitch_a
    const/16 v0, 0x8

    #@37
    return v0

    #@38
    .line 2394
    :pswitch_b
    const/16 v0, 0x9

    #@3a
    return v0

    #@3b
    .line 2397
    :pswitch_c
    const/16 v0, 0xa

    #@3d
    return v0

    #@3e
    .line 2400
    :pswitch_d
    const/16 v0, 0xb

    #@40
    return v0

    #@41
    .line 2403
    :pswitch_e
    const/16 v0, 0xc

    #@43
    return v0

    #@44
    .line 2406
    :pswitch_f
    const/16 v0, 0xd

    #@46
    return v0

    #@47
    .line 2409
    :pswitch_10
    const/16 v0, 0xe

    #@49
    return v0

    #@4a
    .line 2411
    :pswitch_11
    const/16 v0, 0xf

    #@4c
    return v0

    #@4d
    .line 2413
    :pswitch_12
    const/16 v0, 0x10

    #@4f
    return v0

    #@50
    .line 2415
    :pswitch_13
    const/16 v0, 0x11

    #@52
    return v0

    #@53
    .line 2417
    :pswitch_14
    const/16 v0, 0x12

    #@55
    return v0

    #@56
    .line 2421
    :pswitch_15
    const/16 v0, 0x13

    #@58
    return v0

    #@59
    .line 2425
    :pswitch_16
    const/16 v0, 0x14

    #@5b
    return v0

    #@5c
    .line 2428
    :pswitch_17
    const/16 v0, 0x15

    #@5e
    return v0

    #@5f
    .line 2431
    :pswitch_18
    const/16 v0, 0x16

    #@61
    return v0

    #@62
    .line 2435
    :pswitch_19
    const/16 v0, 0x17

    #@64
    return v0

    #@65
    .line 2438
    :pswitch_1a
    const/16 v0, 0x18

    #@67
    return v0

    #@68
    .line 2441
    :pswitch_1b
    const/16 v0, 0x19

    #@6a
    return v0

    #@6b
    .line 2444
    :pswitch_1c
    const/16 v0, 0x1a

    #@6d
    return v0

    #@6e
    .line 2448
    :pswitch_1d
    const/16 v0, 0x1b

    #@70
    return v0

    #@71
    .line 2451
    :pswitch_1e
    const/16 v0, 0x1c

    #@73
    return v0

    #@74
    .line 2453
    :pswitch_1f
    const/16 v0, 0x1d

    #@76
    return v0

    #@77
    .line 2455
    :pswitch_20
    const/16 v0, 0x1e

    #@79
    return v0

    #@7a
    .line 2458
    :pswitch_21
    const/16 v0, 0x1f

    #@7c
    return v0

    #@7d
    .line 2367
    nop

    #@7e
    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_12
        :pswitch_6
        :pswitch_5
        :pswitch_d
        :pswitch_0
        :pswitch_a
        :pswitch_16
        :pswitch_b
        :pswitch_9
        :pswitch_14
        :pswitch_1a
        :pswitch_e
        :pswitch_f
        :pswitch_2
        :pswitch_13
        :pswitch_1f
        :pswitch_1d
        :pswitch_11
        :pswitch_21
        :pswitch_17
        :pswitch_15
        :pswitch_20
        :pswitch_8
        :pswitch_c
        :pswitch_18
        :pswitch_0
        :pswitch_1c
        :pswitch_1b
        :pswitch_0
        :pswitch_10
        :pswitch_1
        :pswitch_7
        :pswitch_1e
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_19
    .end packed-switch
.end method
